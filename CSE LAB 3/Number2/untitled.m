%% Reduce Block Diagram
% Variables
G1_num=[1];
G1_den=[1 0 0];

G2_num=[1];
G2_den=[1 1];

G3_num=[1];
G3_den=[1 0];

G4_num=[1];
G4_den=[2 0];

H1_num=[1];
H1_den=[1 0];

H2_num=[1];
H2_den=[1 -1];

H3_num=[1];
H3_den=[1 -2];



%% Convertion to Transfer Function

G1_tf=tf(G1_num,G1_den)
G2_tf=tf(G2_num,G2_den)
G3_tf=tf(G3_num,G3_den)
G4_tf=tf(G4_num,G4_den)
H1_tf=tf(H1_num,H1_den)
H2_tf=tf(H2_num,H2_den)
H2_tf=tf(H2_num,H2_den)
H3_tf=tf(H3_num,H3_den)


%% Operations     

tfnum = G1_tf*G3_tf*(G2_tf+G2_num);

tfden = (1 + G2_tf*H2_tf + G1_tf*G2_tf*H1_tf)*(1 + G3_tf*H3_tf);
Tf_final = tfnum/tfden

%% Coefficient Convertion
Tf_num_final=[1 1 -5 -5 4 4 0 0 0 0];
Tf_den_final=[1 0 -2 0 2 -1 -2 2 1 -1 0 0 0];




