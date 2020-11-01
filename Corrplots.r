#http://www.sthda.com/english/wiki/correlation-matrix-a-quick-start-guide-to-analyze-format-and-visualize-a-correlation-matrix-using-r-software
library(dplyr)
Samples_1=read.csv("/Users/yelab/YYAO/Correlation/File/GSM1269913_Microglia1.csv",header=T, as.is=T,sep = ",")
Samples_2=read.csv("/Users/yelab/YYAO/Correlation/File/GSM1269914_Microglia2.csv",header=T, as.is=T,sep = ",")
Samples_3=read.csv("/Users/yelab/YYAO/Correlation/File/GSM4217272_WT_MCAO_microglia_1_S1.csv",header=T, as.is=T,sep = ",")
Samples_4=read.csv("/Users/yelab/YYAO/Correlation/File/GSM4217273_WT_MCAO_microglia_2_S15.csv",header=T, as.is=T,sep = ",")
Samples_5=read.csv("/Users/yelab/YYAO/Correlation/File/GSM4217274_WT_MCAO_microglia_3_S10.csv",header=T, as.is=T,sep = ",")

Samples_67=read.csv("/Users/yelab/YYAO/Results_Yitang.20201012/Count matrix/1vs5.ctr_WT_D3_STAR.readcount.matrix.unfiltered.txt",header=T, as.is=T,sep = "\t")

Samples_89=read.csv("/Users/yelab/YYAO/Ye/DE_analysis_for_YaoYao/DE1vs5/YYao_batch1.readcount.matrix.entrez.1vs5.txt",header=T, as.is=T,sep = "\t")


# Install the package if you have not installed by running this command: 
#BiocManager::install("EnsDb.Hsapiens.v79")
#library(EnsDb.Hsapiens.v79)
#BiocManager::install("EnsDb.Mmusculus.v79")
# library(EnsDb.Mmusculus.v79)

# # 1. Convert from ensembl.gene to gene.symbol
# #ensembl.genes <- c("ENSG00000150676", "ENSG00000099308", "ENSG00000142676", "ENSG00000180776", "ENSG00000108848", "ENSG00000277370", "ENSG00000103811", "ENSG00000101473")
# #geneIDs1 <- ensembldb::select(EnsDb.Hsapiens.v79, keys= ensembl.genes, keytype = "GENEID", columns = c("SYMBOL","GENEID"))
# geneIDs1 <- ensembldb::select(EnsDb.Mmusculus.v79, keys= Samples_3$id, keytype = "GENEID", columns = c("SYMBOL","GENEID"))
# colnames(geneIDs1)[colnames(geneIDs1)=="GENEID"] <- "id"
# Samples_3_new1<- geneIDs1 %>% inner_join(Samples_3, by= "id")
# geneIDs2 <- ensembldb::select(EnsDb.Mmusculus.v79, keys= Samples_4$id, keytype = "GENEID", columns = c("SYMBOL","GENEID"))
# colnames(geneIDs2)[colnames(geneIDs2)=="GENEID"] <- "id"
# Samples_4_new1<- geneIDs2 %>% inner_join(Samples_4, by= "id")
# geneIDs3 <- ensembldb::select(EnsDb.Mmusculus.v79, keys= Samples_5$id, keytype = "GENEID", columns = c("SYMBOL","GENEID"))
# colnames(geneIDs3)[colnames(geneIDs3)=="GENEID"] <- "id"
# Samples_5_new1<- geneIDs3 %>% inner_join(Samples_5, by= "id")
# 

library(biomaRt)
ensembl <- useMart("ensembl", dataset="mmusculus_gene_ensembl")
geneIDs8=getBM(attributes = c("ensembl_gene_id", "external_gene_name","entrezgene_id"), 
      filters = "entrezgene_id", 
      values = Samples_89$entrezID, 
      mart = ensembl)
colnames(geneIDs8)[colnames(geneIDs8)=="entrezgene_id"] <- "entrezID"
Samples_89_new1<- geneIDs8 %>% inner_join(Samples_89, by= "entrezID")
colnames(Samples_89_new1)[colnames(Samples_89_new1)=="external_gene_name"] <- "gene.symbol"


geneIDs13=getBM(attributes = c("ensembl_gene_id", "external_gene_name"), 
               filters = "ensembl_gene_id", 
               values = Samples_3$id, 
               mart = ensembl)
colnames(geneIDs13)[colnames(geneIDs13)=="ensembl_gene_id"] <- "id"
Samples_3_new1<- geneIDs13 %>% inner_join(Samples_3, by= "id")

geneIDs14=getBM(attributes = c("ensembl_gene_id", "external_gene_name"), 
                filters = "ensembl_gene_id", 
                values = Samples_4$id, 
                mart = ensembl)
colnames(geneIDs14)[colnames(geneIDs14)=="ensembl_gene_id"] <- "id"
Samples_4_new1<- geneIDs14 %>% inner_join(Samples_4, by= "id")

geneIDs15=getBM(attributes = c("ensembl_gene_id", "external_gene_name"), 
                filters = "ensembl_gene_id", 
                values = Samples_5$id, 
                mart = ensembl)
colnames(geneIDs15)[colnames(geneIDs15)=="ensembl_gene_id"] <- "id"
Samples_5_new1<- geneIDs15 %>% inner_join(Samples_5, by= "id")


# # 2. Convert from gene.symbol to ensembl.gene
# geneSymbols <-  c('DDX26B','CCDC83',  'MAST3', 'RPL11', 'ZDHHC20',  'LUC7L3',  'SNORD49A',  'CTSH', 'ACOT8')
# geneIDs2 <- ensembldb::select(EnsDb.Hsapiens.v79, keys= geneSymbols, keytype = "SYMBOL", columns = c("SYMBOL","GENEID"))

# library('biomaRt')
# mart <- useDataset("hsapiens_gene_ensembl", useMart("ensembl"))
# genes <- Samples_3$id
# #df<-df[,-4]
# G_list <- getBM(filters= "ensembl_peptide_id", attributes= c("ensembl_peptide_id","hgnc_symbol"),values=genes,mart= mart)
# merge(df,G_list,by.x="id",by.y="ensembl_peptide_id")

colnames(Samples_1)[colnames(Samples_1)=="MGL1"] <- "GSM1269913"
colnames(Samples_2)[colnames(Samples_2)=="MGL2"] <- "GSM1269914"
colnames(Samples_3_new1)[colnames(Samples_3_new1)=="count"] <- "GSM4217272"
colnames(Samples_4_new1)[colnames(Samples_4_new1)=="count"] <- "GSM4217273"
colnames(Samples_5_new1)[colnames(Samples_5_new1)=="count"] <- "GSM4217274"

Samples_3_new=Samples_3_new1%>%dplyr::select(external_gene_name,GSM4217272)
Samples_4_new=Samples_4_new1%>%dplyr::select(external_gene_name,GSM4217273)
Samples_5_new=Samples_5_new1%>%dplyr::select(external_gene_name,GSM4217274)

final_samples2<- Samples_3_new %>% full_join(Samples_4_new, by= "external_gene_name")
final_samples2<- final_samples2 %>% full_join(Samples_5_new, by= "external_gene_name")
colnames(final_samples2)[colnames(final_samples2)=="external_gene_name"] <- "gene.symbol"

final_samples1<- Samples_1 %>% full_join(Samples_2, by= "gene.symbol")

Samples_1 %>% full_join(Samples_2, by= "gene.symbol")

final_sample<- final_samples1 %>% full_join(final_samples2, by= "gene.symbol")

colnames(Samples_67)[colnames(Samples_67)=="WT_D3_1"] <- "wt_D3_1"
colnames(Samples_67)[colnames(Samples_67)=="WT_D3_2"] <- "wt_D3_2"
colnames(Samples_67)[colnames(Samples_67)=="WT_D3_3"] <- "wt_D3_3"
colnames(Samples_67)[colnames(Samples_67)=="WT_D3_4"] <- "wt_D3_4"

final_samples<- final_sample %>% full_join(Samples_67, by= "gene.symbol")


final_samples1<- final_sample %>% full_join(Samples_89_new1, by= "gene.symbol")

final_samples2<- Samples_89_new1 %>% full_join(Samples_67, by= "gene.symbol")

final_samples_matrix=data.matrix(final_samples[2:length(final_samples)])
# final_samples_matrix=final_samples_matrix%>%dplyr::select(GSM1269913,GSM1269914,ctr_1, ctr_2,ctr_3, ctr_4,GSM4217272,GSM4217273,GSM4217274,WT_D3_1,WT_D3_2,WT_D3_3,WT_D3_4)
final_samples1=final_samples1%>%dplyr::select(GSM1269913,GSM1269914,Ctr_1, Ctr_2,Ctr_3, Ctr_4,GSM4217272,GSM4217273,GSM4217274,WT_D3_1,WT_D3_2,WT_D3_3,WT_D3_4)

final_samples_matrix1=data.matrix(final_samples1)


final_samples2=final_samples2%>%dplyr::select(ctr_1, ctr_2,ctr_3, ctr_4,Ctr_1, Ctr_2,Ctr_3, Ctr_4,wt_D3_1,wt_D3_2,wt_D3_3,wt_D3_4,WT_D3_1,WT_D3_2,WT_D3_3,WT_D3_4)

final_samples_matrix2=data.matrix(final_samples2)

#final_samples_cor=cor(final_samples_matrix, method = c("pearson", "kendall", "spearman"))
#cor(x, method = "pearson", use = "complete.obs")
final_samples_cor=cor(final_samples_matrix, method = c("pearson"), use = "complete.obs")
#final_samples_cor=final_samples_cor%>%dplyr::select(GSM1269913,GSM1269914,ctr_1, ctr_2,ctr_3, ctr_4,GSM4217272,GSM4217273,GSM4217274,WT_D3_1,WT_D3_2,WT_D3_3,WT_D3_4)

final_samples_cor1=cor(final_samples_matrix1, method = c("pearson"), use = "complete.obs")

final_samples_cor2=cor(final_samples_matrix2, method = c("pearson"), use = "complete.obs")

final_samples_count=final_samples%>%dplyr::select(GSM1269913,GSM1269914,ctr_1, ctr_2,ctr_3, ctr_4,GSM4217272,GSM4217273,GSM4217274,wt_D3_1,wt_D3_2,wt_D3_3,wt_D3_4)

final_samples_count1=final_samples1%>%dplyr::select(GSM1269913,GSM1269914,Ctr_1, Ctr_2,Ctr_3, Ctr_4,GSM4217272,GSM4217273,GSM4217274,WT_D3_1,WT_D3_2,WT_D3_3,WT_D3_4)

final_samples_count2=final_samples2%>%dplyr::select(ctr_1, ctr_2,ctr_3, ctr_4,Ctr_1, Ctr_2,Ctr_3, Ctr_4,wt_D3_1,wt_D3_2,wt_D3_3,wt_D3_4,WT_D3_1,WT_D3_2,WT_D3_3,WT_D3_4)

#install.packages("Hmisc")
library("Hmisc")
final_samples_rcorr=rcorr(final_samples_matrix, type = c("pearson"))
final_samples_rcorr
final_samples_rcorr1=rcorr(final_samples_matrix1, type = c("pearson"))

final_samples_rcorr2=rcorr(final_samples_matrix2, type = c("pearson"))

flattenCorrMatrix <- function(cormat, pmat) {
  ut <- upper.tri(cormat)
  data.frame(
    row = rownames(cormat)[row(cormat)[ut]],
    column = rownames(cormat)[col(cormat)[ut]],
    cor  =(cormat)[ut],
    p = pmat[ut]
  )
}

flattenCorrMatrix(final_samples_rcorr$r, final_samples_rcorr$P)

#install.packages("correlation")
#library(correlation)
#correlation::correlation(final_samples_count,include_factors = TRUE, method = "auto")

#install.packages("corrplot")
library(corrplot)
corrplot(final_samples_cor, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)

corrplot(final_samples_cor,
         method = "number",
         type = "upper" # show only upper side
)

corrplot2 <- function(data,
                      method = "pearson",
                      sig.level = 0.05,
                      order = "original",
                      diag = FALSE,
                      type = "upper",
                      tl.srt = 90,
                      number.font = 1,
                      number.cex = 1,
                      mar = c(0, 0, 0, 0)) {
  library(corrplot)
  data_incomplete <- data
  data <- data[complete.cases(data), ]
  mat <- cor(data, method = method)
  cor.mtest <- function(mat, method) {
    mat <- as.matrix(mat)
    n <- ncol(mat)
    p.mat <- matrix(NA, n, n)
    diag(p.mat) <- 0
    for (i in 1:(n - 1)) {
      for (j in (i + 1):n) {
        tmp <- cor.test(mat[, i], mat[, j], method = method)
        p.mat[i, j] <- p.mat[j, i] <- tmp$p.value
      }
    }
    colnames(p.mat) <- rownames(p.mat) <- colnames(mat)
    p.mat
  }
  p.mat <- cor.mtest(data, method = method)
  col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
  corrplot(mat,
           method = "color", col = col(200), number.font = number.font,
           mar = mar, number.cex = number.cex,
           type = type, order = order,
           addCoef.col = "black", # add correlation coefficient
           tl.col = "black", tl.srt = tl.srt, # rotation of text labels
           # combine with significance level
           p.mat = p.mat, sig.level = sig.level, insig = "blank",
           # hide correlation coefficients on the diagonal
           diag = diag
  )
}

corrplot2(
  data = final_samples_count,
  method = "pearson",
  sig.level = 0.05,
  order = "original",
  diag = FALSE,
  type = "upper",
  tl.srt = 75
)

#install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")
chart.Correlation(final_samples_count, histogram=TRUE, pch=19)

#final_samples[final_samples$MGL2==max(final_samples$MGL2),]

############## Kaixiong
library(corrplot)
corrplot(final_samples_cor1, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)

corrplot(final_samples_cor1,
         method = "number",
         type = "upper" # show only upper side
)

corrplot2(
  data = final_samples_count1,
  method = "pearson",
  sig.level = 0.05,
  order = "original",
  diag = FALSE,
  type = "upper",
  tl.srt = 75
)

#install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")
chart.Correlation(final_samples_count1, histogram=TRUE, pch=19)

#final_samples[final_samples$MGL2==max(final_samples$MGL2),]


############## Yitang & Kaixiong
library(corrplot)
corrplot(final_samples_cor2, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)

corrplot(final_samples_cor2,
         method = "number",
         type = "upper" # show only upper side
)

corrplot2(
  data = final_samples_count2,
  method = "pearson",
  sig.level = 0.05,
  order = "original",
  diag = FALSE,
  type = "upper",
  tl.srt = 75
)

#install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")
chart.Correlation(final_samples_count2, histogram=TRUE, pch=19)

#final_samples[final_samples$MGL2==max(final_samples$MGL2),]

