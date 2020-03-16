install.packages(c("rmarkdown",
                   "survival",
                   "splines",
                   "openxlsx",
                   "pbapply",
                   "locfdr"))

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install(c("TCGAbiolinks",
                       "SummarizedExperiment",
                       "edgeR"),update = FALSE)