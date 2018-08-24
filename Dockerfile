FROM nfcore/base
LABEL description="Docker image containing all requirements for nf-core/onemetagenome pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-onemetagenome-1.0dev/bin:$PATH