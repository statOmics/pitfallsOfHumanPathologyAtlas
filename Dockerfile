FROM rocker/binder:3.6.0

## Copies your repo files into the Docker Container
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}

## Become normal user again
USER ${NB_USER}

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

# Since the default user is root, $HOME is actually / at this point
#ADD .Renviron /.Renviron # this line was required to increase RAM memory if running script on Rstudio server, 
# but throws an error after mac update. Will resolve later. 
