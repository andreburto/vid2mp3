FROM linuxserver/ffmpeg:latest

WORKDIR /app

COPY ./vid2mp3.sh /app/vid2mp3.sh

ENV PIP_BREAK_SYSTEM_PACKAGES=1

RUN apt-get update && \
    apt-get install -y curl python3-full && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
    python3 -m pip install --upgrade pip && \
    python3 -m pip install -U pip hatchling wheel && \
    python3 -m pip install --force-reinstall "yt-dlp[default] @ https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz" && \
    python3 -m pip install -U "yt-dlp[default]" && \
    chmod a+x vid2mp3.sh

ENTRYPOINT ["/app/vid2mp3.sh"]
