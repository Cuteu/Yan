label1={'1000','2000','3000','5000','10000'};
label2={'0.01','0.05','0.1'}
Z=[80.78,80.78,80.78,80.78,80.78;
84.05,80.78,75.90,81.78,81.78;
79.85,79.85,79.85,79.85,79.85];

hb=bar3(Z);
% renderCDataByHeight(hb, false);
% colorbar;
set(gca, 'xticklabel', label1);
set(gca, 'yticklabel', label2);
view([-30, 30])
for i = 1:size(Z,1)
for j = 1:size(Z,2)
text(j, i,Z(i,j)+5,  num2str(Z(i,j)));
end
end
 title('(1) alpha=1e-2','position',[3.5,1,-132]);
 %title( '(1) alpha=1e-3', 'positon',[23,-4]);    %#����
x1=xlabel('beta');        %#x�����
x2=ylabel('gamma');       % #y�����
x3=zlabel('ARI');        %#z�����
set(x1,'Rotation',30);    %#x��������ת
set(x2,'Rotation',-30);    %#y��������ת
% pause(1);
% renderCDataByHeight(hb, true);
% pause(1);
% renderCDataByHeight(hb, true);
% colormap spring;
% 
% function renderCDataByHeight(hb, interp)
% % hbΪbar3���ص���ά��״ͼ���,
% % ��hb�ĸ����Ӱ��߶���ȾCData���ԣ�
% % interpָ���Ƿ񽥱�(Ĭ��Ϊfalse)
% % interp==true:ÿ�����Ӵ��µ�����ɫ����
% % interp==false:ÿ������һ����ɫ
% % hb�о������������������,hb(j)Ϊ��j�����ݵľ��
% % if nargin == 1
% %     % interpĬ��ֵ
% %     interp=false;
% % end
% % if interp == true
% %     %ÿ�����Ӵ��µ�����ɫ����
% %     shading interp;
% %     for j = 1 : length(hb)
% %         % ��Zdata����ȥ���Cdata����
% %         zdata = get(hb(j), 'Zdata');
% %         set(hb(j), 'Cdata', zdata);
% %         % ���ñ�����ɫ
% %         set(hb, 'EdgeColor', [0.5 0.5 0.5]);
% %     end
% % else
%     % ÿ������һ����ɫ
%     for j = 1:length(hb)
%         % ����hb(j)��Cdata����
%         % ����CData��ֵcdata�����滻���ֵ
%         % cdata����ZData�Ļ������޸Ķ���
%         cdata = get(hb(j), 'ZData');
%         % cdata��������6������������
%         m = size(cdata,1)/6;
%         % ���cdata
%         for i = 1:m
%             % ����cdata��(i,j)���ݶ�Ӧ��6��
%             % ����6�е�ֵ�����(i,j)���ݵ�ֵ
%             vij = cdata((i-1)*6+2,2);%����cdata(ZData)�л��(i,j)���ݵ�ֵ
%             cdata((i-1)*6+1:(i-1)*6+6,:) = vij;%(i,j)���ݶ�Ӧ��6��������
%         end
%         set(hb(j), 'Cdata', cdata);%��cdata����Cdata����
%     end
% end
% % end