ARG AWSCLI_VERSION=latest
ARG KUBECTL_VERSION

FROM amazon/aws-cli:${AWSCLI_VERSION}

LABEL awscli_version="${AWSCLI_VERSION}" \
      kubectl_version="${KUBECTL_VERSION}" \
      description="kubectl and aws-cli Docker Image" \
      maintainer="Anton Trifonov <rin@pdffiller.team>"

RUN \
     curl -L https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl > /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl

ENTRYPOINT ["/usr/local/bin/kubectl"]
CMD ["help"]
