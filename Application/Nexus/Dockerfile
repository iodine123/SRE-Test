FROM sonatype/nexus3:3.68.0

# Install Google Cloud Storage (GCS) blob store plugin
USER root
RUN mkdir -p /opt/sonatype/nexus/deploy && \
    curl -L -o /opt/sonatype/nexus/deploy/nexus-repository-google-cloud-blobstore-latest-bundle.kar \
    https://github.com/sonatype-nexus-community/nexus-repository-google-cloud/releases/latest/download/nexus-repository-google-cloud-blobstore-latest-bundle.kar

USER nexus