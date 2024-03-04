FROM python

WORKDIR /users/bxdda/myImage
COPY . .

RUN apt-get update
RUN pip install mysql-connector-python
CMD ["python", "./a3.py"]
