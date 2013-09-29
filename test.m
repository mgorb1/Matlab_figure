Tit=0;

set(0,'DefaultAxesFontSize',14,'DefaultAxesFontName','Times New Roman');
set(0,'DefaultTextFontSize',14,'DefaultTextFontName','Times New Roman'); 

T=-50:0.1:50;

X=T;

Dva_phi_0_5=-(3.9530974.*10.^(-16)).*T.^9+(1.4041484.*10.^(-13)).*T.^8-(1.0898644.*10.^(-12)).*T.^7-(5.1081173.*10.^(-10)).*T.^6+(5.9485822.*10.^(-9)).*T.^5+(5.0566462.*10.^(-7)).*T.^4-(4.5034849.*10.^(-6)).*T.^3-(2.8238204.*10.^(-4)).*T.^2+0.005667.*T+3.3414155;

Y3 = 3.280106061 + 0.009339512432 .* X - 4.433333333E-005 .* pow(X,2) - 3.646406371E-006 .* pow(X,3);
% 
Y4 = 3.38245641 + 0.009339512432 .* X - 0.0003997164918 .* pow(X,2) - 3.646406371E-006 .* pow(X,3) + 1.421532634E-007 .* pow(X,4);
    % 
Y5 = 3.38245641 + 0.001417373543 .* X - 0.0003997164918 .* pow(X,2) + 9.510992133E-006 .* pow(X,3) + 1.421532634E-007 .* pow(X,4) - 4.154967949E-009 .* pow(X,5);
% 
Y7 = 3.31370168654875 + 0.00595091727879961 .* X + 0.00013943513323278 .* pow(X,2) - 6.41431561085968E-006 .* pow(X,3) - 4.52288618652589E-007 .* pow(X,4) + 9.25453431372545E-009 .* pow(X,5) + 1.57562908496732E-010 .* pow(X,6) - 3.11292016806722E-012 .* pow(X,7);

A=[3.3439,2.7435,3.0694,3.1478,3.331,3.2622,3.4365,3.3373,3.3921,3.2743,3.2555];
B=-50:10:50;

subgraphic(B,T,A,Y3,Y4,Y5,Y7,Dva_phi_0_5,Tit,'��������','{\itT}, \circC','2\theta_{0,5}, ����.',4);

Dva_theta_0_5= (7.6308973.*10.^(-15)).*T.^9+(6.6634033.*10.^(-14)).*T.^8-(3.7647652.*10.^(-11)).*T.^7-(3.0006525.*10.^(-10)).*T.^6+(5.7501794.*10.^(-8)).*T.^5+(4.3462823.*10.^(-7)).*T.^4-(2.8443516.*10.^(-5)).*T.^3-(2.8884209.*10.^(-4)).*T.^2+0.0014012.*T+4.4133898;

A=[4.3462,4.3163,4.3285,4.4197,4.3801,4.4344,4.362,4.3001,4.3249,4.2284,4.2978];

Y3 = 4.375599301 - 0.001529801865 .* X - 3.574475524E-005 .* pow(X,2) + 4.193473193E-007 .* pow(X,3);

Y4 = 4.407705594 - 0.001529801865 .* X - 0.0001472249417 .* pow(X,2) + 4.193473193E-007 .* pow(X,3) + 4.459207459E-008 .* pow(X,4);

Y5 = 4.407705594 - 0.002033968531 * X - 0.0001472249417 * pow(X,2) + 1.256687063E-006 * pow(X,3) + 4.459207459E-008 * pow(X,4) - 2.644230769E-010 * pow(X,5);

Y7 = 4.40023821472645 - 0.00407955772169006 .* X - 8.86682394076514E-005 .* pow(X,2) + 8.44237650829563E-006 .* pow(X,3) - 1.99696455505276E-008 .* pow(X,4) - 6.31495098039216E-009 .* pow(X,5) + 1.71127450980391E-011 .* pow(X,6) + 1.4045868347339E-012 .* pow(X,7);

%subgraphic(B,T,A,Y3,Y4,Y5,Y7,Dva_theta_0_5,Tit,'��������','{\itT}, \circC','2{\phi}_{0,5}, ����.',3);
%subgraphic(B,T,A,Y3,Y4,Y5,Y7,Dva_theta_0_5,Tit,'��������','{\itT}, \circC','2{\fontname{Greek}f}_{0,5}, ����.',3);
subgraphic(B,T,A,Y3,Y4,Y5,Y7,Dva_theta_0_5,Tit,'��������','{\itT}, \circC','2{\fontname{Greek}j}_{0,5}, ����.',3);
