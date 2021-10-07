FROM python:3.10.0-bullseye

WORKDIR /usr/src/app

COPY productpage.py /usr/src/app/productpage.py
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8083

CMD [ "python", "/usr/src/app/productpage.py", "8083"]