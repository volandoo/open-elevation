#!/usr/bin/env bash

set -eu
wget https://srtm.csi.cgiar.org/wp-content/uploads/files/250m/SRTM_NE_250m_TIF.rar && \
wget https://srtm.csi.cgiar.org/wp-content/uploads/files/250m/SRTM_SE_250m_TIF.rar && \
wget https://srtm.csi.cgiar.org/wp-content/uploads/files/250m/SRTM_W_250m_TIF.rar && \
unrar e -o+ SRTM_NE_250m_TIF.rar && \
unrar e -o+ SRTM_SE_250m_TIF.rar && \
unrar e -o+ SRTM_W_250m_TIF.rar
