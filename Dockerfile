FROM 5hojib/aeon:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .


# Install pip3
RUN apt-get update && apt-get install -y python3-pip

# Install Python packages

RUN pip3 install --break-system-packages --ignore-installed --no-cache-dir -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
