all: main
.PHONY: all

ifeq ($(RAYLIB),)
$(error RAYLIB variable is not set)
endif

# C Preprocessor flags. NOT C++ flags (that'd be CXXFLAGS)
CPPFLAGS += -I$(RAYLIB)/src
LDFLAGS += -L$(RAYLIB)/src -lraylib -ldl -lpthread

# Build raylib if it isn't built
$(RAYLIB)/src/libraylib.a:
	cd $(RAYLIB)/src && make PLATFORM=PLATFORM_DESKTOP

main: main.cpp $(RAYLIB)/src/libraylib.a
	g++ $(CPPFLAGS) main.cpp $(LDFLAGS) -o main

