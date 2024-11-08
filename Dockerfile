
# Usa una imagen base de Python
FROM python:3.13

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de la app y el archivo de requisitos
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Comando para iniciar la aplicación FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]