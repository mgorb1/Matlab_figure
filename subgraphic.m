function result=subgraphic(X1,X2,Y1,Y2,Y3,Y4,Y5,Y6,Tit,TL,XL,YL,PL)

figure('Units', 'normalized', 'OuterPosition', [0 0 1 1]);


plot(X1,Y1,'o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor',[.49 1 .63],'MarkerSize',5);
if Tit 
    title(TL);
end
hold on;

plot(X2,Y2,':k','LineWidth',3);

plot(X2,Y3,':b','LineWidth',3);

plot(X2,Y4,'-.','Color',[.1 .7 .7],'LineWidth',3);

plot(X2,Y5,'--','Color',[.1 .4 .1],'LineWidth',3);

plot(X2,Y6,'r','LineWidth',3);

legend('исходные данные','полином 3-й степени','полином 4-й степени','полином 5-й степени','полином 7-й степени','полином 9-й степени', PL);

BX=get(gca,'XTick');
BY=get(gca,'YTick');

xlabel(XL,'Position',[BX(size(BX,2)) BY(1)])
ylabel(YL,'Rotation',0,'Position',[BX(1) BY(size(BY,2))])

XA=get(gca,'XTickLabel');%

for i=1:size(XA,1)
    z=rem(i,2);
    if z==0;
        if XA(i,1)~='0' && XA(i,2)~=0
            XA(i,:)=char(0);
        end
    end
    
end
XA(size(XA,1),:)=char(0);
set(gca,'XTickLabel',XA);

YA=get(gca,'YTickLabel');%

for i=1:size(YA,1)
    z=strfind(YA(i,:),'.');
    YA(i,z)=',';
    clear z;
    z=rem(i,2);
    if z~=0; 
        YA(i,:)=char(0);
    end
    
end
YA(size(YA,1),:)=char(0);
set(gca,'YTickLabel',YA);

grid on;


result=1;