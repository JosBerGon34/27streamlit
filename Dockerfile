FROM streamlit/streamlit:1.43.2

WORKDIR /app

# Copia el archivo requirements.txt a la raíz del directorio de trabajo
COPY requirements.txt ./

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el modelo .sav a la raíz del directorio de trabajo
COPY *.sav ./

# Copia el archivo .py a la raíz del directorio de trabajo
COPY *.py ./

# Expone el puerto 8501, que es el puerto predeterminado de Streamlit
EXPOSE 8501

# Ejecuta tu aplicación Streamlit
CMD ["streamlit", "run", "DiabSav.py"]