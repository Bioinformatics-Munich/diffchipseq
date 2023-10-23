# A: Thomas Walzthoeni, 2023

# Update timeout for downloads
options(timeout=300)

# D: Install R packages
if (!requireNamespace("BiocManager"))  {install.packages("BiocManager")}

# R packages
list.of.packages <- c("devtools","here", "ggplot2", "dplyr", "bibtex", "kableExtra", "DT")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)>0) install.packages(new.packages, repos="https://packagemanager.rstudio.com/cran/2023-02-24")

# Bioconductor packages
list.of.packages.bc <- c("csaw","DiffBind","rtracklayer",
                         "GenomicRanges", "Rsamtools",
                         "DESeq2", "edgeR", "kableExtra", 
                         "TxDb.Hsapiens.UCSC.hg38.knownGene", "BSgenome.Hsapiens.UCSC.hg38",
                         "BiocStyle","biomaRt", "org.Hs.eg.db", "TxDb.Mmusculus.UCSC.mm10.knownGene",
                         "BSgenome.Mmusculus.UCSC.mm10", "biomaRt", "rGREAT")
new.packages.bc <- list.of.packages.bc[!(list.of.packages.bc %in% installed.packages()[,"Package"])]
if(length(new.packages.bc)>0) BiocManager::install(new.packages.bc)
