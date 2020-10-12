### Change Samples_name_ for each samples.
Samples_name_1=c("A5_CKO_D3")
Samples_name_2=c("WT_D3")

Samples_list=paste("/scratch/ys98038/YYAO/Bam_file/", Samples_name_1, "_", Samples_name_2, ".list",sep = "")
Samples_name_11=paste(Samples_name_1, "_1",sep = "")
Samples_name_12=paste(Samples_name_1, "_2",sep = "")
Samples_name_13=paste(Samples_name_1, "_3",sep = "")
Samples_name_14=paste(Samples_name_1, "_4",sep = "")
Samples_name_21=paste(Samples_name_2, "_1",sep = "")
Samples_name_22=paste(Samples_name_2, "_2",sep = "")
Samples_name_23=paste(Samples_name_2, "_3",sep = "")
Samples_name_24=paste(Samples_name_2, "_4",sep = "")

filenames <- read.table(Samples_list, stringsAsFactors=FALSE)[,1]
file.exists(filenames)
library("Rsamtools")
bamfiles <- BamFileList(filenames)
library("GenomicFeatures")
gtffile <- "genes.gtf"
txdb <- makeTxDbFromGFF(gtffile, format="gtf", organism="Mus musculus" )
ebg <- exonsBy(txdb, by="gene")
library("GenomicAlignments")
se <- summarizeOverlaps(features=ebg, reads=bamfiles,
                        mode="Union",
                        singleEnd=FALSE,
                        ignore.strand=FALSE,
                        fragments=TRUE )

countdata <- assay(se)
colnames(countdata) <- c(Samples_name_11,Samples_name_12,Samples_name_13,Samples_name_14,Samples_name_21,Samples_name_22,Samples_name_23,Samples_name_24)
#STAR_readcount_matrix_out=paste("/scratch/ys98038/YYAO/Results/", Samples_name_1, "_", Samples_name_2, "_STAR.readcount.matrix.unfiltered.txt",sep = "")
#write.table(countdata, file=STAR_readcount_matrix_out, quote=F, sep="\t")

sampleinfo <- data.frame(condition=c("M","M","M","M","W","W","W","W"))

colData(se) <- DataFrame(sampleinfo)
se$condition <- relevel(se$condition, "W")

library("DESeq2")
dds <- DESeqDataSet(se, design =~condition)
dds <- dds[ rowSums(counts(dds)) > 1, ]
dds <- DESeq(dds)
(res <- results(dds))

#upregulation and downregulation
summary(res)

res= subset(res, padj<0.05)
res <- res[order(res$padj),]
STAR_gene_diff_out=paste("/scratch/ys98038/YYAO/Results/", Samples_name_1, "_", Samples_name_2, "_STAR.gene.diff.DEseq2.txt",sep = "")
write.table(res,file=STAR_gene_diff_out, quote=F, sep="\t")

MAplot_out=paste("/scratch/ys98038/YYAO/Results/", Samples_name_1, "_", Samples_name_2, "_MAplot.pdf",sep = "")
pdf(MAplot_out)
DESeq2::plotMA(dds, ylim=c(-8,8),main="MA plot")
dev.off()

rld <- rlogTransformation(dds, blind=T)
vsd <- varianceStabilizingTransformation(dds, blind=T)
ddsClean <- replaceOutliersWithTrimmedMean(dds)
ddsClean <- DESeq(ddsClean)

resOrdered <- res[order(res$padj),]
select <- order(rowMeans(counts(ddsClean,normalized=T)), decreasing=T) [1:72]
my_palette <- colorRampPalette(c("blue",'black','yellow')) (n=72)

library("heatmap3")
heatmap_out=paste("/scratch/ys98038/YYAO/Results/", Samples_name_1, "_", Samples_name_2, "_heatmap.pdf",sep = "")
pdf(heatmap_out)
res<-results(dds)
resOrdered <- res[order(res$padj),]
select_genes<-rownames(subset(resOrdered, padj < 0.05))
rld <- rlogTransformation(dds, blind=T)
vsd <- varianceStabilizingTransformation(dds, blind=T)
heatmap3(assay(rld)[select_genes,],symm=F,cexRow=0.6,labRow=F)
dev.off()


##Vocano plot with "significant" genes labeled

res2<-results(dds)
res2 <- res2[order(res2$padj),]
res2data <- merge(as.data.frame(res2), as.data.frame(counts(dds,normalized =TRUE)), by = "row.names", sort = FALSE)
names(res2data)[1] <- 'gene'

volcanoplot <-function(res2data,lfcthresh=2, sigthresh=0.05, main="Volcano Plot",
                       legendpos="topleft", labelsig=TRUE, textcx=1){
  with(res2data, plot(log2FoldChange, -log10(pvalue), pch=20, main=main,xlim=c(-3,3.5),ylim=c(0,110)))
  with(subset(res2data, padj<sigthresh ), points(log2FoldChange, -log10(pvalue), pch=20, col="red"))
  with(subset(res2data, abs(log2FoldChange)>lfcthresh), points(log2FoldChange, -log10(pvalue), pch=20, col="orange"))
  with(subset(res2data, padj<sigthresh & abs(log2FoldChange)>lfcthresh), points(log2FoldChange, -log10(pvalue), pch=20, col="green"))
  if (labelsig) {
    require(calibrate)
    with(subset(res2data, padj<sigthresh & abs(log2FoldChange)>lfcthresh), textxy(log2FoldChange, -log10(pvalue), labs=gene, cex=textcx))
  }
  legend(legendpos, xjust=1, yjust=1, legend=c(paste("FDR<",sigthresh,sep=""), paste("|LogFC|>",lfcthresh,sep=""), "both"), pch=20, col=c("red","orange","green"))
}
Volcanoplot_out=paste("/scratch/ys98038/YYAO/Results/", Samples_name_1, "_", Samples_name_2, "_Volcanoplot.pdf",sep = "")
pdf(Volcanoplot_out)
volcanoplot(res2data, lfcthresh=1, sigthresh=0.05, textcx=.8)
dev.off()
