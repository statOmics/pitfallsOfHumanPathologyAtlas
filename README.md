# Companion GitHub to "Pitfalls in observational omics studies re-analysis: a post-mortem of the human pathology atlas."

This GitHub page serves as a repository for reproducing all analyses and figures from the paper.

This GitHub page contains to main folder, BRCA and LIHC, to reproduce the analyses for the breast cancer and liver cancer case studies, respectively.

Both folders contain; 

1. A data folder, containing .xlsx files that were produced in the analysis, for instance,  to generate Tables S1-4
2. A figures folder, containing all figures that were use in the paper (main paper as well as supplementary materials).

In addition, the folders contain the scripts required to reproduce the analysis (in R markdown format). 

- Both the BRCA and LIHC folders contain a script to get the required data from the TCGA database ("getData") and to run our revisited workflow ("revisited").
- In addition, the BRCA folder contains a script to regenerated some of the results communiacted bu Uhlen et al. (2017) ("original") 
and a script to showcase the issues regarding this analysis ("original_problems").

Note that, in order to guarantee the reproducibility of our workflow, which requires the permanently changing TCGA database and R packages,
we have created the possibility to work with a local docker instance. 

To run docker locally, you should;

1. Install repo2docker
2. Call repo2docker; jupyter-repo2docker -source-repository-


