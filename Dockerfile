FROM rocker/r-ver:4.3.0

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libxml2-dev \
    libssl-dev \
    && apt-get clean

RUN R -e "install.packages('bibliometrix', dependencies=TRUE, repos='http://cran.rstudio.com/')"

WORKDIR /usr/local/src/app

EXPOSE 3838

CMD ["R", "-e", "bibliometrix::biblioshiny()"]