include("p2b_1.jl")
include("p2b_2.jl")
include("p2b_3.jl")
include("p2b_4.jl")
include("p2b_5.jl")
include("p2b_6.jl")
include("p2b_7.jl")
include("p2b_8.jl")
include("p2b_9.jl")
include("p2b_10.jl")
include("p2b_11.jl")
include("p2b_12.jl")
include("p2b_13.jl")
include("p2b_14.jl")
include("p2b_15.jl")
include("p2b_16.jl")
include("p2b_17.jl")
include("problem2a.jl")
include("2b_parameters_annie.jl")

T_new=[T_1; T_2; T_3; T_4; T_5; T_6; T_7; T_8; T_9; T_10; T_11; T_12; T_13; T_14; T_15; T_16; T_17]

#phase1
X_new_1=[X0_1; X0_2; X0_3; X0_4; X0_5; X0_6; X0_7; X0_8; X0_9; X0_10; X0_11; X0_12; X0_13; X0_14; X0_15; X0_16; X0_17]
X_ori_1=[X0;X0;X0;X0;X0;X0;X0;X0;X0;X0;X0;X0;X0;X0;X0;X0;X0]
h=[1.1*RNAP_elon-RNAP_elon;
 1.1*rib_elon-rib_elon;
 1.1*Kx-Kx;
 1.1*KL-KL;
 1.1*WI1-WI1;
 1.1*W12-W12;
 1.1*W13-W13;
 1.1*W23-W23;
 1.1*Lx1-Lx1;
 1.1*Lx2-Lx2;
 1.1*Lx3-Lx3;
 1.1*mRNA_half-mRNA_half;
 1.1*protein_half-protein_half;
 1.1*Gp-Gp;
 1.1*con_RNAP-con_RNAP;
 1.1*con_rib-con_rib;
 1.1*miu-miu;]
X_change_1=X_new_1-X_ori_1
sensitivity_1=X_change_1/2*h
printlm("sensitivity_1")

#phase2
X_new_2=[X1_1; X1_2; X1_3; X1_4; X1_5; X1_6; X1_7; X1_8; X1_9; X1_10; X1_11; X1_12; X1_13; X1_14; X1_15; X1_16; X1_17]
X_ori_2=[X1;X1;X1;X1;X1;X1;X1;X1;X1;X1;X1;X1;X1;X1;X1;X1;X1]

X_change_2=X_new_2-X_ori_2
sensitivity_2=X_change_2/2*h
printlm("sensitivity_2")
