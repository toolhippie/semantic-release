FROM webhippie/alpine:latest
ENTRYPOINT [""]

# renovate: datasource=npm depName=conventional-changelog-conventionalcommits
ENV CONVENTIONAL_CHANGELOG_VERSION=4.6.3

# renovate: datasource=npm depName=semantic-release
ENV SEMANTIC_RELEASE_VERSION=19.0.2

# renovate: datasource=npm depName=@semantic-release/github
ENV SEMANTIC_RELEASE_GITHUB_VERSION=8.0.2

# renovate: datasource=npm depName=@semantic-release/gitlab
ENV SEMANTIC_RELEASE_GITLAB_VERSION=8.0.1

# renovate: datasource=npm depName=@semantic-release/changelog
ENV SEMANTIC_RELEASE_CHANGELOG_VERSION=6.0.1

# renovate: datasource=npm depName=@semantic-release/commit-analyzer
ENV SEMANTIC_RELEASE_COMMIT_ANALYZER_VERSION=9.0.2

# renovate: datasource=npm depName=@semantic-release/git
ENV SEMANTIC_RELEASE_GIT_VERSION=10.0.1

RUN apk update && \
  apk upgrade && \
  apk add nodejs yarn git && \
  yarn global add \
    conventional-changelog-conventionalcommits@${CONVENTIONAL_CHANGELOG_VERSION} \
    semantic-release@${SEMANTIC_RELEASE_VERSION} \
    @semantic-release/github@${SEMANTIC_RELEASE_GITHUB_VERSION} \
    @semantic-release/gitlab@${SEMANTIC_RELEASE_GITLAB_VERSION} \
    @semantic-release/changelog@${SEMANTIC_RELEASE_CHANGELOG_VERSION} \
    @semantic-release/commit-analyzer@${SEMANTIC_RELEASE_COMMIT_ANALYZER_VERSION} \
    @semantic-release/git@${SEMANTIC_RELEASE_GIT_VERSION} && \
  rm -rf /var/cache/apk/*
