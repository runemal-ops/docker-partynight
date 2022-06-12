# syntax=docker/dockerfile:experimental
FROM python:3.9-slim as builder

WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN python -m venv /opt/venv
RUN python -m pip install --upgrade pip

# final stage
FROM python:3.9-slim

LABEL vendor=runemal-ops\
      com.runemal.is-beta= \
      com.runemal.is-production="" \
      com.runemal.version="0.0.1-beta" \
      com.runemal.release-date="2022-06-12"

COPY --from=builder /opt/venv /opt/venv

WORKDIR /app
ENV PATH="/opt/venv/bin:$PATH"
COPY . .
RUN pip install -r requirements.txt

CMD ["python","-m","flask","run","--host=0.0.0.0"]