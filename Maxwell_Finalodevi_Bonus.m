clear
clc
#Grup Adi:Maxwell
#Grup Uyeleri: Mert Kaan ÇUKADAR,Zeynep SEYMAN,Mert TIDIN,Hayati TOZLU
rand("seed",219)
%R1,R3 ve Rx icin 10 ile 30 araliginda rastgele tam sayi atanmasi.
R3=13;
R1=0;
R2=0;

Rx=14;
Vs=30;
%Fonksiyon parametreleri ve fonksiyon tanimlanir.
function f=VG(R1,R2,R3,Rx,Vs)
  f=((R2/(R1+R2))-(Rx/(R3+Rx)))*Vs;
endfunction

%Elde edilen degerler icin matrixler tanýmlanýr.
matrix_vg1=[];
matrix_R2=[];
matrix_R1=[];
a=10:1:50;
b=randi([10 50],[1 41]);
%R1 ve R2 degerleri ile VG degeri matrislere atanir.
for i=1:41
   
     R1=a(1,i);
  R2=b(1,i);
 d=VG(R1,R2,R3,Rx,Vs);
  matrix_vg1=[matrix_vg1, d];
  matrix_R2=[matrix_R2,R2];
   matrix_R1=[matrix_R1,R1];
     


  
endfor

%Olusturulan matrixler ayni boyutlarda eslenir.
[zz]=meshgrid(matrix_vg1);
[xx yy]=meshgrid(matrix_R1,matrix_R2);





%3 boyutlu cizim yapilir.
mesh(xx,yy,zz)
%iyi seyirler