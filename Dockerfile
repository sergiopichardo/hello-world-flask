FROM python:alpine

WORKDIR /app/

COPY . . 

RUN pip install --upgrade pip && \ 
    pip install --trusted-host pypi.python.org -r requirements.txt 

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD ["app.py"]