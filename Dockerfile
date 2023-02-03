# app/Dockerfile

#Obtener requerimientos de imagen creada previamente
#Esto reduce el tiempo que toma hacer una build
FROM jmdeleonpi/reqs:v2

WORKDIR /app

#Environment variable que apunta al montaje de persistencia
ENV IMG_VOL /mnt/negatives/
COPY main.py /app/main.py

#Levantar servicio por medio de Streamlit
ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]