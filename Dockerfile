# Usa a imagem oficial do Python
FROM python:3.11-slim

# Define a pasta de trabalho dentro do container
WORKDIR /app

# Instala dependências do sistema para o PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev gcc

# Copia o arquivo de requisitos e instala as bibliotecas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o resto do código do seu PC para dentro do container
COPY . .

# Expõe a porta 8000 para o navegador
EXPOSE 8000
