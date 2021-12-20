
FROM tensorflow/tensorflow:latest-gpu-jupyter

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
    
#Install geopandas
RUN python3 -m pip install geopandas

#Install sklearn
RUN python3 -m pip install -U scikit-learn

WORKDIR /tf
EXPOSE 8888

RUN python3 -m ipykernel.kernelspec

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]