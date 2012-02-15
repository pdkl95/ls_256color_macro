SRC=LS_COLORS.m4

TARGETS=LS_COLORS.dircolors \
        LS_COLORS.sh        \
        LS_COLORS.csh

all: $(TARGETS)
.PHONY: all clean

clean:
	rm -f $(TARGETS)

$(TARGETS): $(SRC)


%.dircolors: %.m4
	m4 $< > $@

%.sh: %.dircolors
	dircolors -b $< > $@

%.csh: %.dircolors
	dircolors -c $< > $@
