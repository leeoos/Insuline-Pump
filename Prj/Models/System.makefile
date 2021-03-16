# Makefile generated by OpenModelica
# Platform: linux64

# Simulations use -O3 by default
CC=clang
CXX=clang++
LINK=clang -shared
EXEEXT=
DLLEXT=.so
CFLAGS_BASED_ON_INIT_FILE=
# define OMC_CFLAGS_OPTIMIZATION env variable to your desired optimization level to override this
OMC_CFLAGS_OPTIMIZATION=-Os
DEBUG_FLAGS=$(OMC_CFLAGS_OPTIMIZATION)
CFLAGS=$(CFLAGS_BASED_ON_INIT_FILE) $(DEBUG_FLAGS) -fPIC -falign-functions -mfpmath=sse -fno-dollars-in-identifiers ${MODELICAUSERCFLAGS}   
CPPFLAGS= -I"/usr/bin/../include/omc/c" -I. -DOPENMODELICA_XML_FROM_FILE_AT_RUNTIME -DOMC_MODEL_PREFIX=System -DOMC_NUM_MIXED_SYSTEMS=0 -DOMC_NUM_LINEAR_SYSTEMS=0 -DOMC_NUM_NONLINEAR_SYSTEMS=0 -DOMC_NDELAY_EXPRESSIONS=0 -DOMC_NVAR_STRING=0
# define OMC_LDFLAGS_LINK_TYPE env variable to "static" to override this
OMC_LDFLAGS_LINK_TYPE=dynamic
RUNTIME_LIBS= -Wl,--no-as-needed -Wl,--disable-new-dtags -lSimulationRuntimeC -llapack -lblas -lm -lm -lomcgc -lpthread -rdynamic -Wl,--no-undefined
LDFLAGS=-L"/usr/bin/../lib/x86_64-linux-gnu/omc" -L"/usr/bin/../lib" -Wl,-rpath,"/usr/bin/../lib/x86_64-linux-gnu/omc" -Wl,-rpath,"/usr/bin/../lib"   $(RUNTIME_LIBS) 
DIREXTRA=-L"/home/leeoos/Projects/Modelica/Insulin-Pump/Prj/Models"
MAINFILE=System.c
MAINOBJ=System.o
CFILES=System_functions.c System_records.c \
System_01exo.c System_02nls.c System_03lsy.c System_04set.c System_05evt.c System_06inz.c System_07dly.c \
System_08bnd.c System_09alg.c System_10asr.c System_11mix.c System_12jac.c System_13opt.c System_14lnz.c \
System_15syn.c System_16dae.c System_17inl.c 

OFILES=$(CFILES:.c=.o)
GENERATEDFILES=$(MAINFILE) System.makefile System_literals.h System_functions.h $(CFILES)

.PHONY: omc_main_target clean bundle

# This is to make sure that System_*.c are always compiled.
.PHONY: $(CFILES)

omc_main_target: $(MAINOBJ) System_functions.h System_literals.h $(OFILES)
	$(CC) -I. -o System$(EXEEXT) $(MAINOBJ) $(OFILES) $(CPPFLAGS) $(DIREXTRA)   $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)
clean:
	@rm -f System_records.o $(MAINOBJ)

bundle:
	@tar -cvf System_Files.tar $(GENERATEDFILES)