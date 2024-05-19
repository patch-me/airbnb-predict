FROM jupyter/datascience-notebook:latest
# Install in the default python3 environment
# install scikit-learn pytorch numpy seaborn pandas matplotlib plotly tensorflow
RUN pip install \
    'scikit-learn' \
    'numpy' \
    'seaborn' \
    'pandas' \
    'matplotlib' \
    'plotly' \
    'tensorflow' \
    'torch' \
    && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"