FROM python:3.8.5-slim
WORKDIR /workingdir

COPY requirements.txt /workingdir
RUN pip install -r requirements.txt
COPY . /workingdir

EXPOSE 5000
RUN echo "testing"
CMD ["python", "app.py"]
