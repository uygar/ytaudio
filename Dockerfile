FROM golang:1.15-alpine
WORKDIR /src
COPY . .
RUN CGO_ENABLED=0 go build -tags netgo -o /app .

# vimagick/youtube-dl contains ffmpeg, youtube-dl.
FROM debian
RUN apt-get -qqy update && apt-get -qqy install curl ffmpeg python
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
        chmod a+rx /usr/local/bin/yt-dlp

COPY --from=0 /app /app
ENTRYPOINT ["/app"]
