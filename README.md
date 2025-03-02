# vid2mp3

## About

[ffmpeg](https://www.ffmpeg.org/) + [yt-dlp](https://github.com/yt-dlp/yt-dlp) + [Docker](https://www.docker.com/) = this project. It's a quick way to grab and convert videos into audio files on a Windows system.

## Usage

1. Ensure that Docker is installed and running.
2. Clone this project locally.
3. Change to the project directory.
4. Use `docker compose build --no-cache` to create the image.
5. Run `docker compose run vid2mp3 [youtube url here]`.

## To Do

* Explore other options from yt-dlp.
* Look into authenticating for member video downloads.

## Update Log

* **2025-03-02:** Created the initial script to download YT videos to MP3s.
