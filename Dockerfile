# Use uma imagem base do Python
FROM python:3.10-slim

# Defina o diretório de trabalho no container
WORKDIR /app

# Copie os arquivos da aplicação para o container
COPY . .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Exponha a porta usada pelo Flask
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]