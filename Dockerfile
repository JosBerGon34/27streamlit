FROM streamlit/streamlit:1.43.2

WORKDIR /app

# Copia el archivo requirements.txt desde la subcarpeta App
COPY App/requirements.txt ./

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el modelo .sav desde la subcarpeta App
COPY App/*.sav ./

# Copia el archivo .py desde la subcarpeta App
COPY App/*.py ./

# Expone el puerto 8501, que es el puerto predeterminado de Streamlit
EXPOSE 8501

# Ejecuta tu aplicación Streamlit
CMD ["streamlit", "run", "App\DiabSav.py"]