# base image - Python 3.10
FROM python:3.10-slim

# work folder in container
WORKDIR /app

# copy files to container
COPY . .

# upgrade pip and install dependencies from requirements.txt
# RUN apt-get update && apt-get install -y \
#     libpq-dev \
#     gcc \
#     && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# expose port for FastAPI application
EXPOSE 8000

# Command to run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
