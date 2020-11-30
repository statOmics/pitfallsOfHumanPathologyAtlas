# Companion GitHub to "Pitfalls in re-analysis of observational omics studies: a post-mortem of the human pathology atlas."

This GitHub page serves as a repository for reproducing all analyses and figures from our paper, Pitfalls in re-analysis of observational omics studies: a post-mortem of the human pathology atlas, that is available on bioRxiv: https://www.biorxiv.org/content/10.1101/2020.03.16.994038v2.

This GitHub page contains two main folders, BRCA and LIHC, to reproduce the analyses for the breast cancer and liver cancer case studies, respectively.

### Content of the repository

Both folders contain;

1. A data folder, containing .xlsx files that were produced in the analysis, for instance, to generate Tables S1-4
2. A figures folder, containing all figures that were displayed in the main paper and in the supplementary materials.

In addition, the folders contain the scripts required to reproduce the analysis (in R markdown format) More specifically;

3. Both the BRCA and LIHC folders contain a script to get the required data from the TCGA database ("getData") and to run our revisited workflow ("revisited").
4. In addition, the BRCA folder contains a script to regenerated some of the results communicated by Uhlen et al. ("original")
and a script to showcase the issues regarding this analysis ("original_problems"). To run these scripts, getData.Rmd should be run first.

### Workflow reproducibility

Note that, in order to guarantee the reproducibility of our workflow, which requires the permanently changing TCGA database and R packages,
we have provided a docker instance, which we used to generate all results for our paper. As such, the entire workflow remains reproducible at the snapshot date 2019-10-06. 

To run docker locally, you should;

1. Install repo2docker (https://repo2docker.readthedocs.io)
2. Launch repo2docker through the command line:
```
jupyter-repo2docker https://github.com/statOmics/pitfallsOfHumanPathologyAtlas
```
Note that this step may take a while (±30 minutes) as an entirely new R instance is build for the snapshot date 2019-10-06.
3. Click the link that appears in the command line
4. In the top right corner of the jupyter localhost, click new < Rstudio
5. The scripts can be run in the new Rstudio session

### Issues and comments

Please use https://github.com/statOmics/pitfallsOfHumanPathologyAtlas/issues to submit issues regarding reproducing our workflow and your comments.
