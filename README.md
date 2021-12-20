# ml-docker
A docker container with the latest tensorflow, scikit-learn, and geopandas.

# Cloning and Building
`git clone git@github.com:colkassad/ml-docker.git`

`cd ml-docker`

`docker build -t mldocker .`

# Running
After building, run the following command to start up the docker container.

`docker run -it --rm -p 8888:8888 mldocker`

The link with authentication token for Jupyter Notebooks will be listed in the shell once the command executes succesfully (e.g. http://127.0.0.1:8888/?token=c671c19b7d69d73b1cc55f52aede419bba5d8aaeae7a4298)

If you want to work on notebooks that exist on your host machine, run the following which will mount your folder on the docker container:

`docker run -it --rm -v "<path to your jupyter notebooks>":/tf/notebooks -p 8888:8888 mldocker`

Replace `<path to your jupyter notebooks>` with the path to a relavent folder on your host machine.
