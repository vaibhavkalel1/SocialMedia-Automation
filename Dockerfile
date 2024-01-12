FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /Social-Network-master

COPY requirements.txt /Social-Network-master/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /Social-Network-master/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]