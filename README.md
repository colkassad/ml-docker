# ml-docker
A docker container with the latest tensorflow, pytorch, scikit-learn, and geopandas. This docker container is based on the tensorflow "latest-jupyter" image. You can modify the Dockerfile to change this if you require a different image, such as one with GPU support. See https://www.tensorflow.org/install/docker for available image tags.

# Cloning and Building
`git clone git@github.com:colkassad/ml-docker.git`

`cd ml-docker`

`docker build -t mldocker .`

# Running
After building, run the following command to start up the docker container.

`docker run -it --rm -p 8888:8888 mldocker`

The link with authentication token for Jupyter Notebooks will be listed in the shell once the command executes succesfully.

If you want to work on notebooks that exist on your host machine, run the following which will mount your folder on the docker container:

`docker run -it --rm -v "<path to your jupyter notebooks>":/tf/notebooks -p 8888:8888 mldocker`

Replace `<path to your jupyter notebooks>` with the path to a relavent folder on your host machine. The Jupyter Notebooks landing page will now have your folder listed.
