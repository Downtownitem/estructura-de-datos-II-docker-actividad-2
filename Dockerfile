FROM docker:latest

RUN apk add --no-cache git
WORKDIR /app
RUN git clone https://github.com/Downtownitem/estructura-de-datos-II-codigos.git

WORKDIR /app/estructura-de-datos-II-codigos

CMD ["sh", "-c", "docker build -q -t imagen-interna . > /dev/null 2>&1 && docker run imagen-interna"]
