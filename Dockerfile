ARG MINIFORGE_VERSION=26.1.1-2
ARG UBUNTU_VERSION=24.04
ARG CONDA_ENV_PATH=/opt/conda/envs/openms-thirdparty

FROM condaforge/miniforge3:${MINIFORGE_VERSION} AS builder

ARG CONDA_ENV_PATH

# Use conda to install tools and dependencies into the configured environment path
ARG OPENMS_THIRDPARTY_VERSION=3.5.0
ARG XTANDEM_VERSION=15.12.15.2

RUN mamba create -qy -p ${CONDA_ENV_PATH} \
    -c bioconda \
    -c conda-forge \
    openms-thirdparty==${OPENMS_THIRDPARTY_VERSION} \
    xtandem==${XTANDEM_VERSION} && \
    ln -s ${CONDA_ENV_PATH}/bin/xtandem ${CONDA_ENV_PATH}/bin/tandem.exe && \
    mamba clean -afy

# Deploy the target tools into a base image
FROM ubuntu:${UBUNTU_VERSION} AS final

ARG CONDA_ENV_PATH

COPY --from=builder ${CONDA_ENV_PATH} ${CONDA_ENV_PATH}

ENV CONDA_ENV_PATH="${CONDA_ENV_PATH}" \
    OPENMS_DATA_PATH="${CONDA_ENV_PATH}/share/OpenMS" \
    PATH="${CONDA_ENV_PATH}/bin:${PATH}"

# Add a new user/group called bldocker
RUN groupadd -g 500001 bldocker && \
    useradd -r -u 500001 -g bldocker bldocker

# Change the default user to bldocker from root
USER bldocker

LABEL   maintainer="Chenghao Zhu <czhu@sbpdiscovery.org>" \
        org.opencontainers.image.source=https://github.com/TheBoutrosLab/docker-OpenMS-thirdparty
