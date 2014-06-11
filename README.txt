Design & Verification of 8x8 Time Space Crossbar Switch with 8b10b SerDes
Sameer Ghewari, Sanket Borhade
ECE 571, Spring 2014

Step 1-
To compile for puresim-
make puresim

OR
To compile/synthesize for veloce-
make velcoe

Step 2-
To run all test cases after compile
make launch

OR

To run a specific test case, copy one of the following commands

	vsim -c -novopt -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=no_contention +DEBUG=0 +ERROR=1
	vsim -c -novopt -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=half_contention +DEBUG=0 +ERROR=0
	vsim -c -novopt -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=no_valid_packets +DEBUG=0 +ERROR=0
	vsim -c -novopt -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=only_one_valid +DEBUG=0 +ERROR=0
	vsim -c -novopt -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=message +DEBUG=0 +ERROR=0
	vsim -c -novopt -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=random_packets +DEBUG=0 +ERROR=0

Step 3- Additional Features
Debug Level (+DEBUG)
0 - No display information
1 - Received data shown
2 - Sent & Received data shown
3 - Sent, Recevied and Exepected data shown 

Error Level (+ERROR)
Introduces parity error randomly in the packets
0 - No parity error, operate normally
1 - Introduce parity error randomly, would return a few failed test cases 

Step 4- Coverage Information 
This must be launched in puresim mode 
Follow Step 1 and compile for puresim mode
The type-
vopt top -o top_coverage +cover

Then use one of the following-

To run a specific test case, copy one of the following commands

	vsim -c -coverage -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=no_contention +DEBUG=0 +ERROR=1
	vsim -c -coverage -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=half_contention +DEBUG=0 +ERROR=0
	vsim -c -coverage -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=no_valid_packets +DEBUG=0 +ERROR=0
	vsim -c -coverage -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=only_one_valid +DEBUG=0 +ERROR=0
	vsim -c -coverage -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=message +DEBUG=0 +ERROR=0
	vsim -c -coverage -do "run -all" top xbar_hvl TbxSvManager +TESTCASE=random_packets +DEBUG=0 +ERROR=0