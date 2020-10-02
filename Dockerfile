#FROM python:3.6.1-alpine
#2. WORKDIR /project
#3. ADD . /project
#4. RUN pip install -r requirements.txt
#5. CMD ["python","app.py"]

FROM python:3.6.1-alpine
WORKDIR /project
ADD . /project
RUN pip install --no-use-wheel --no-cache-dir h5py
RUN pip install --no-cache-dir -r requirements.txt
RUN apk --no-cache add curl
CMD ["python3","app.py"]