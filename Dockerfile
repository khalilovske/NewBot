FROM python:3

WORKDIR /usr/src/app

ENV DB_HOST=localhost
ENV DB_USER=root
ENV DB_PASSWORD=password
ENV TELEGRAM_TOKEN= 




COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
CMD [ "python", "./start.py" ]