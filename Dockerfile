FROM python:3.6

RUN mkdir /one_two_shop
WORKDIR /one_two_shop

COPY requirements.txt /one_two_shop/

RUN pip install -r /one_two_shop/requirements.txt

ADD . /one_two_shop/

EXPOSE 8000
