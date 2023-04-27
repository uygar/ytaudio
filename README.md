# Serverless video streamer (`yt-dlp`)

A serverless application that uses `youtube-dl` to quickly stream videos from media sites.

Deploy to Google Cloud Run:

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

Then visit your application with `?url=` parameter to download a video:

    https://<YOUR-APP-URL>/watch?v=jHjFxJVeCQs

Currently the maximum [response time limit](https://cloud.google.com/run/quotas) on Cloud Run
is 60 minutes, so that's how long you can download content for, and you
should set this explicitly on your app.

---

This project is not affiliated with Google. It's created
for demonstration purposes.
