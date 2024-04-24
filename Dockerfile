# docker build -t throwaway-file-server .
# docker run --rm -d -p 5000:5000 --mount type=bind,source="$(pwd)"/src/files,destination=/usr/src/app/files --name devtest --rm throwaway-file-server
FROM python:3.12.3
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY src/ /usr/src/app
CMD python main.py
