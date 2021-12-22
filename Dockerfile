
FROM tensorflow/tensorflow:latest-jupyter

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
    
# Install geopandas
RUN python3 -m pip install geopandas

# Install sklearn
RUN python3 -m pip install -U scikit-learn

# Install PyTorch (CPU version)
RUN python3 -m pip install torch==1.10.1+cpu torchvision==0.11.2+cpu torchaudio==0.10.1+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html

WORKDIR /tf
EXPOSE 8888

RUN python3 -m ipykernel.kernelspec

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]