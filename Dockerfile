FROM walwe/archlinux-cuda

# Install dependencies
RUN pacman -Sy --noconfirm python \
                           python-numpy \
                           python-pip && \
    pacman -Scc --noconfirm

RUN pip --no-cache-dir install pycuda

ADD speedtest.py /opt/speedtest/speedtest.py
WORKDIR /opt/speedtest
CMD python speedtest.py
