FROM ubuntu

RUN apt-get update
RUN yes | apt-get install python3 pip unzip 
ADD fastapi_test.zip /root/home/fastapi_test.zip
RUN unzip /root/home/fastapi_test.zip
RUN cd /root/home/fastapi_test && pip install -r ./requirements.txt
CMD [uvicorn /root/home/fastapi_test/main:app --reload]