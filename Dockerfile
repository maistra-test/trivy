FROM alpine:3.19.1
RUN apk --no-cache add ca-certificates git
RUN apk upgrade && rm /var/cache/apk/*
COPY trivy /usr/local/bin/trivy
COPY contrib/*.tpl contrib/
ENTRYPOINT ["trivy"]
