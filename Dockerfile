FROM dustynv/l4t-pytorch:r36.2.0

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app




# Install pip deps
COPY requirements.txt .
RUN pip3 install --extra-index-url https://pypi.org/simple/ --ignore-installed --no-cache-dir -r requirements.txt

# Copy app code
COPY app/ /app/

EXPOSE 5001

CMD ["python3", "app.py"]
