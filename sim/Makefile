sim:
	echo $$RANDOM > random.txt
	iverilog -g2012 -o sim.o  ./tb_ecc.sv ../src/ecc_10to15.v ../src/ecc_23to29.v ../src/ecc_38to45.v ../src/ecc_92to100.v ../src/ecc_185to194.v
	vvp sim.o

wave:
	gtkwave *.vcd

clean:
	rm -rf *.o *.vcd random.txt