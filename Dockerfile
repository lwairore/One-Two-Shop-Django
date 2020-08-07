FROM python:3.6

ENV DB_NAME: 'postgres'
ENV DB_USER: 'postgres'
ENV DB_HOST: 'one_two_shop_db'
ENV DB_PASSWORD: 'postgres'

RUN mkdir /one_two_shop
WORKDIR /one_two_shop

COPY requirements.txt /one_two_shop/

RUN pip install -r /one_two_shop/requirements.txt

ADD . /one_two_shop/

EXPOSE 8000
