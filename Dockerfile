FROM ghcr.io/dockhippie/alpine:3.20
ENTRYPOINT [""]

# renovate: datasource=npm depName=conventional-changelog-conventionalcommits
ENV CONVENTIONAL_CHANGELOG_VERSION=8.0.0

# renovate: datasource=npm depName=semantic-release
ENV SEMANTIC_RELEASE_VERSION=24.2.1

# renovate: datasource=npm depName=@semantic-release/github
ENV SEMANTIC_RELEASE_GITHUB_VERSION=11.0.1

# renovate: datasource=npm depName=@semantic-release/gitlab
ENV SEMANTIC_RELEASE_GITLAB_VERSION=13.2.4

# renovate: datasource=npm depName=@semantic-release/changelog
ENV SEMANTIC_RELEASE_CHANGELOG_VERSION=6.0.3

# renovate: datasource=npm depName=@semantic-release/commit-analyzer
ENV SEMANTIC_RELEASE_COMMIT_ANALYZER_VERSION=13.0.1

# renovate: datasource=npm depName=@semantic-release/git
ENV SEMANTIC_RELEASE_GIT_VERSION=10.0.1

# renovate: datasource=npm depName=@semantic-release/exec
ENV SEMANTIC_RELEASE_EXEC_VERSION=7.0.2

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
    @semantic-release/git@${SEMANTIC_RELEASE_GIT_VERSION} \
    @semantic-release/exec@${SEMANTIC_RELEASE_EXEC_VERSION} && \
  rm -rf /var/cache/apk/*
