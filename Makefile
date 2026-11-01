clean:
	rm ./sim/*.vcd ./sim/*.o

simulate:
	iverilog ./sim/tb_*.v ./src/m*.v -o ./sim/simulation.o
	vvp -q ./sim/simulation.o
	mv dump.vcd ./sim/
	gtkwave ./sim/dump.vcd
