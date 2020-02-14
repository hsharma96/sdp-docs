FROM python:2.7

# install documentation dependencies
RUN pip install sphinx               \
                sphinx-autobuild==0.7.1     \
                sphinx-rtd-theme==0.4.3     \
                recommonmark==0.6.0      && \
    pip install -U git+https://github.com/sizmailov/sphinxcontrib-versioning@conditionally_run_setup_py

RUN git config --global user.email "fake" && \
    git config --global user.name "Docs Deployer"
        
# expectation is the container gets run with 
# docker run -v $(path to repo):/app
WORKDIR /app