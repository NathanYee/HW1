#! /usr/bin/vvp
:ivl_version "10.1 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x5629339181a0 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x5629339392c0_0 .var "A", 0 0;
v0x562933939380_0 .net "AandB", 0 0, L_0x56293393a050;  1 drivers
v0x562933939450_0 .net "AorB", 0 0, L_0x562933939c80;  1 drivers
v0x562933939550_0 .var "B", 0 0;
v0x562933939620_0 .net "nA", 0 0, L_0x562933913200;  1 drivers
v0x5629339396c0_0 .net "nAandnB", 0 0, L_0x562933939bc0;  1 drivers
v0x562933939790_0 .net "nAornB", 0 0, L_0x562933939e30;  1 drivers
v0x562933939860_0 .net "nB", 0 0, L_0x562933913270;  1 drivers
v0x562933939930_0 .net "npAandB", 0 0, L_0x56293393a1e0;  1 drivers
v0x562933939a00_0 .net "npAorB", 0 0, L_0x562933939d70;  1 drivers
S_0x562933918d10 .scope module, "dut" "demorgan" 2 9, 3 1 0, S_0x5629339181a0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "nA"
    .port_info 3 /OUTPUT 1 "nB"
    .port_info 4 /OUTPUT 1 "nAandnB"
    .port_info 5 /OUTPUT 1 "AorB"
    .port_info 6 /OUTPUT 1 "npAorB"
    .port_info 7 /OUTPUT 1 "nAornB"
    .port_info 8 /OUTPUT 1 "AandB"
    .port_info 9 /OUTPUT 1 "npAandB"
L_0x562933913200 .functor NOT 1, v0x5629339392c0_0, C4<0>, C4<0>, C4<0>;
L_0x562933913270 .functor NOT 1, v0x562933939550_0, C4<0>, C4<0>, C4<0>;
L_0x562933939bc0 .functor AND 1, L_0x562933913200, L_0x562933913270, C4<1>, C4<1>;
L_0x562933939c80 .functor OR 1, v0x5629339392c0_0, v0x562933939550_0, C4<0>, C4<0>;
L_0x562933939d70 .functor NOT 1, L_0x562933939c80, C4<0>, C4<0>, C4<0>;
L_0x562933939e30 .functor OR 1, L_0x562933913200, L_0x562933913270, C4<0>, C4<0>;
L_0x56293393a050 .functor AND 1, v0x5629339392c0_0, v0x562933939550_0, C4<1>, C4<1>;
L_0x56293393a1e0 .functor NOT 1, L_0x56293393a050, C4<0>, C4<0>, C4<0>;
v0x562933918e90_0 .net "A", 0 0, v0x5629339392c0_0;  1 drivers
v0x562933938a30_0 .net "AandB", 0 0, L_0x56293393a050;  alias, 1 drivers
v0x562933938af0_0 .net "AorB", 0 0, L_0x562933939c80;  alias, 1 drivers
v0x562933938b90_0 .net "B", 0 0, v0x562933939550_0;  1 drivers
v0x562933938c50_0 .net "nA", 0 0, L_0x562933913200;  alias, 1 drivers
v0x562933938d60_0 .net "nAandnB", 0 0, L_0x562933939bc0;  alias, 1 drivers
v0x562933938e20_0 .net "nAornB", 0 0, L_0x562933939e30;  alias, 1 drivers
v0x562933938ee0_0 .net "nB", 0 0, L_0x562933913270;  alias, 1 drivers
v0x562933938fa0_0 .net "npAandB", 0 0, L_0x56293393a1e0;  alias, 1 drivers
v0x562933939060_0 .net "npAorB", 0 0, L_0x562933939d70;  alias, 1 drivers
    .scope S_0x5629339181a0;
T_0 ;
    %vpi_call 2 13 "$display", "| A B | ~A ~B | A+B | AB | ~A~B | ~(A+B) | ~A+~B | ~(AB) |" {0 0 0};
    %vpi_call 2 14 "$display", "|_____|_______|_____|____|______|________|_______|_______|" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x5629339392c0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x562933939550_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "| %b %b |  %b  %b |   %b |  %B |    %b |      %b |     %b |     %B |", v0x5629339392c0_0, v0x562933939550_0, v0x562933939620_0, v0x562933939860_0, v0x562933939450_0, v0x562933939380_0, v0x5629339396c0_0, v0x562933939a00_0, v0x562933939790_0, v0x562933939930_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x5629339392c0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x562933939550_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "| %b %b |  %b  %b |   %b |  %B |    %b |      %b |     %b |     %B |", v0x5629339392c0_0, v0x562933939550_0, v0x562933939620_0, v0x562933939860_0, v0x562933939450_0, v0x562933939380_0, v0x5629339396c0_0, v0x562933939a00_0, v0x562933939790_0, v0x562933939930_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x5629339392c0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x562933939550_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "| %b %b |  %b  %b |   %b |  %B |    %b |      %b |     %b |     %B |", v0x5629339392c0_0, v0x562933939550_0, v0x562933939620_0, v0x562933939860_0, v0x562933939450_0, v0x562933939380_0, v0x5629339396c0_0, v0x562933939a00_0, v0x562933939790_0, v0x562933939930_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x5629339392c0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x562933939550_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 22 "$display", "| %b %b |  %b  %b |   %b |  %B |    %b |      %b |     %b |     %B |", v0x5629339392c0_0, v0x562933939550_0, v0x562933939620_0, v0x562933939860_0, v0x562933939450_0, v0x562933939380_0, v0x5629339396c0_0, v0x562933939a00_0, v0x562933939790_0, v0x562933939930_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
