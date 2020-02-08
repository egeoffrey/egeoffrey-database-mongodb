### EGEOFFREY ###

### define base image
ARG ARCHITECTURE
FROM $ARCHITECTURE/mongo

### expose the data folder into a static location
RUN mkdir -p /database/data && ln -s /data/db /database/data
VOLUME ["/database/data"]
