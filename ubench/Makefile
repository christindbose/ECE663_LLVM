GENCODE_SM70 ?= --cuda-gpu-arch=sm_70

CPPSRC = ../../graph_parser/util.cpp ../../graph_parser/parse.cpp
CUSRC =
BASEEXE = BFSvE
# CUDA source files (compiled with cudacc)
EXECUTABLE = ../../bin/$(BASEEXE)
CUSRC += bfs.cu
OPTS = -O3
CUOPTS = $(GENCODE_SM70)
INC = -I$(NVIDIA_COMPUTE_SDK_LOCATION)/../4.2/C/common/inc -I$(CUDA_INSTALL_PATH)/include
LIBS = -L$(CUDA_INSTALL_PATH)/lib64 -L$(NVIDIA_COMPUTE_SDK_LOCATION)/../4.2/C/lib -lcudart -ldl -lrt -pthread


OBJS = $(notdir $(CPPSRC:.cpp=.o))

all: 
	clang++ -O0 -fvisibility=hidden -flto -fwhole-program-vtables -c -emit-llvm  virfunc.cpp -o virfunc.bc clang++  $(NVOPTS) $(OPTS) $(CUOPTS) $(CUSRC)  $(INC) -o $(EXECUTABLE) $(LIBS)

debug: 
	clang++ -v -save-temps $(NVOPTS) $(OPTS) $(CUOPTS) $(CUSRC)  $(INC) -o $(EXECUTABLE) $(LIBS)


$(OBJS):
	g++ -c $(CPPSRC) $(OPTS)

clean:
	rm -f *.o *.cu.cpp $(EXECUTABLE)

cleanup:
	rm -f *.cu.cpp
	rm -f *.fatbin
	rm -f *.cui
	rm -f *.s
	rm -f *.c
	rm -f *.gpu
	rm -f *.cubin
	rm -f *.o
	rm -f *.bc
	rm -f *.cpp
	rm -f *.out
