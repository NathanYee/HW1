run: hw1.t 
	./hw1.t
hw1.t: hw1.v hw1.t.v
	iverilog -o hw1.t hw1.t.v
