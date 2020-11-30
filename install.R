install.packages(c("rmarkdown",
                   "survival",
                   "splines",
                   "openxlsx",
                   "pbapply",
                   "locfdr",
                   "survminer"))

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install(c("TCGAbiolinks",
                       "SummarizedExperiment",
                       "edgeR"),update = FALSE)