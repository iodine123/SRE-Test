FROM sonatype/nexus3:3.83.0

# Install Google Cloud Storage (GCS) blob store plugin
USER root
RUN mkdir -p /opt/sonatype/nexus/deploy && \
    curl -L -o /opt/sonatype/nexus/deploy/nexus-repository-google-cloud-blobstore-latest-bundle.kar \
    https://repository.sonatype.org/service/local/repositories/releases/content/org/sonatype/nexus/plugins/nexus-blobstore-google-cloud/0.61.0/nexus-blobstore-google-cloud-0.61.0.kar

USER nexus