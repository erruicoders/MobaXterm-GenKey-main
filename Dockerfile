ARG  CODE_VERSION=latest

FROM python:3.6-slim

LABEL errui="<https://mobaxterm.errui.top/>"

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]
