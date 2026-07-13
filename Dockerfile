FROM python:3.6-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install coverage==4.4.1
COPY . .
ENV FLASK_APP=flasky.py
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]