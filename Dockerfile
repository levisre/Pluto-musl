FROM alpine:latest

RUN apk add --no-cache g++ cmake python3 ninja-build musl-dev z3-dev binutils git samurai

WORKDIR /home/build

#RUN git clone https://github.com/bluesadi/Pluto.git --depth=1
COPY Pluto /home/build/Pluto

WORKDIR /home/build/Pluto

RUN mkdir -p build

RUN cmake -G Ninja -S . -B build -DCMAKE_C_COMPILER="gcc" -DCMAKE_CXX_COMPILER="g++" -DCMAKE_INSTALL_PREFIX="install" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-D_LARGEFILE64_SOURCE" 
RUN ninja -j`nproc` -C build install


