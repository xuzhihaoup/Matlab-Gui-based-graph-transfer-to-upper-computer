%此工程模板为用户代码动态代码编译工程模板
%用户只需要在userprogram进行代码编写
%或者将其他自己的程序在该函数中调用
%该函数为主函数
function userprogram(hObject,handles)
%不可更改函数名
%以下为灰度示例代码
newimg_size=size(handles.img);
if numel(newimg_size)>2
  handles.img = rgb2gray(handles.img);
  guidata(hObject,handles);
end
axes(handles.image2);
cla reset;
imshow(handles.img);
update_image(hObject,handles,2);
update_image(hObject,handles,3);
%以下为软件界面功能函数
%用户可调用
function  update_image(hObject,handles,n)
  if     n ==1
      oldimg_size=size(handles.oldimg);
      axes(handles.image3); 
      cla reset ; 
   if numel(oldimg_size)>2
      r=handles.oldimg(:,:,1);
      g=handles.oldimg(:,:,2);
      b=handles.oldimg(:,:,3);
      x=size(r); 
      x=(1:x(1,2));
      r=r(1,:); 
      g=g(1,:); 
      b=b(1,:);
      axes(handles.image3); 
      cla reset;
      plot(x,r,'r');
      hold on
      plot(x,g,'g');
      plot(x,b,'b'); 
      set(gca,'xtick',-inf:inf:inf);
      title('鍘熷浘RGB');
      hold off;
     else
        k=handles.oldimg(:,:,1);
        x=size(k);
        x=(1:x(1,2));
        k=k(1,:);
        axes(handles.image3);
        cla reset;
        plot(x,k,'k');
        set(gca,'xtick',-inf:inf:inf);
        title('鍘熷浘RGB');
   end   
  elseif n ==2
   axes(handles.image4); 
      cla reset ;
      imhist(handles.img);
      title('鐏板害鐩存柟鍥');
      
  elseif n ==3  
      newimg_size=size(handles.img);
      axes(handles.image5); 
      cla reset ; 
   if numel(newimg_size)>2
      r=handles.img(:,:,1);
      g=handles.img(:,:,2);
      b=handles.img(:,:,3);
      x=size(r); 
      x=(1:x(1,2));
      r=r(1,:); 
      g=g(1,:); 
      b=b(1,:);
      axes(handles.image5); 
      cla reset;
      plot(x,r,'r');
      hold on
      plot(x,g,'g');
      plot(x,b,'b'); 
      set(gca,'xtick',-inf:inf:inf);
      title('鏁堟灉RGB');
      hold off;
     else
        k=handles.img(:,:,1);
        x=size(k);
        x=(1:x(1,2));
        k=k(1,:);
        axes(handles.image5);
        cla reset;
        plot(x,k,'k');
        set(gca,'xtick',-inf:inf:inf);
        title('鏁堟灉RGB');
   end   
  end
