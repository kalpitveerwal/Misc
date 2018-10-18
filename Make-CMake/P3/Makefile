all: main.o depend.o
	g++ main.o depend.o -o main
main.o: main.cpp
	g++ -c main.cpp
depend.o: depend.cpp 
	g++ -c depend.cpp
.PHONY: skiprebuild
skiprebuild:
	touch *.cpp *.h
.PHONY: skiprebuildh
skiprebuildh:
	touch -r depend.o depend.h
	touch -d "$(date -R -r depend.h") + 2 minutes ago" depend.h
