FROM python:3.11-slim

RUN apt-get update && apt-get install -y libgl1 libglib2.0-0

ENV HOME=/tmp
WORKDIR /face_blur_app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860", "--reload"]
