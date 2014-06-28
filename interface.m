function varargout = interface(varargin)
% INTERFACE MATLAB code for interface.fig
%      INTERFACE, by itself, creates SygAWGN new INTERFACE or raises the existing
%      singleton*.
%
%      H = INTERFACE returns the handle to SygAWGN new INTERFACE or the handle to
%      the existing singleton*.
%
%      INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACE.M with the given input arguments.
%
%      INTERFACE('Property','Value',...) creates SygAWGN new INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interface

% Last Modified by GUIDE v2.5 28-Jun-2014 13:30:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interface_OpeningFcn, ...
                   'gui_OutputFcn',  @interface_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before interface is made visible.
function interface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interface (see VARARGIN)

% Choose default command line output for interface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





%-------------------------------------------------------------------------%
%----------------------------Create functions-----------------------------%
%-------------------------------------------------------------------------%



function SNR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SNR (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have SygAWGN light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Dlugosc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dlugosc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have SygAWGN white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have SygAWGN white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Dane_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dane (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have SygAWGN white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Reset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SygWy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function SygWej_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SygWy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function SygMod_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SygMod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function SygAWGN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SygAWGN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function SygWy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SygWy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function bledy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SygAWGN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function iwo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iwo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to SygWy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




%-------------------------------------------------------------------------%
%----------------------------Callback functions---------------------------%
%-------------------------------------------------------------------------%



%-------------------------Signal to Noise Ratio---------------------------%
function SNR_Callback(hObject, eventdata, handles)
% hObject    handle to IloscB (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IloscB as text
%        str2double(get(hObject,'String')) returns contents of IloscB as SygAWGN double
global SNR;
handles.SNRo=get(hObject,'String');
guidata(hObject,handles);

SNR=str2double(get(hObject,'String'));


% -----------------------------Wymiar M-----------------------------------%
function M_Callback(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M as text
%        str2double(get(hObject,'String')) returns contents of M as a double
global M;
handles.Mo=get(hObject,'String');
guidata(hObject, handles);
M=str2double(get(hObject,'String'));
k=log2(M);

if (mod(k,1)~=0)
    set(handles.error,'String','ERROR! Niepoprawna wartosciwosc modulacji.');
else
        set(handles.error,'String','');
end



%------------------Czestotliwosc sygnalu modulujacego---------------------%
function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double

global f;
handles.fo=get(hObject,'String');
guidata(hObject,handles);
f=get(hObject,'String');
guidata(hObject, handles);
f=str2num(get(hObject,'String'));


%---------------------Czestotliwosc próbkowania---------------------------%
function fs_Callback(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fs as text
%        str2double(get(hObject,'String')) returns contents of fs as a double

global fs;
handles.fso=get(hObject,'String');
guidata(hObject,handles);
fs=get(hObject,'String');
guidata(hObject,handles);
fs=str2num(get(hObject,'String'));


%---------Losowe generowanie sygnalu przy okreslonej ilosci bitów --------%
function Generuj_Callback(hObject, eventdata, handles)
% hObject    handle to Generuj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Signal;
global Dlugosc;

Signal = round(rand(1,Dlugosc));
poz = int2str(Signal);
set(handles.Sygnal,'String',poz);
poz2='';
set(handles.Dane,'String',poz);


%-----------------------Reczne wprowadzanie danych------------------------%
function Dane_Callback(hObject, ~, handles)
% hObject    handle to IloscB (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IloscB as text
%        str2double(get(hObject,'String')) returns contents of IloscB as SygAWGN double
global Dlugosc;
global Signal;

Signal=get(hObject,'String');
get(hObject,'Value');

Signal=Signal-'0';

Dlugosc=length(Signal);
poz2=['Ilosc bitów: ', int2str(Dlugosc)];
set(handles.IloscB,'String',poz2);
poz=int2str(Signal);
set(handles.Sygnal,'String',poz);


%----------------Wyswietlenie dlugosc bitów sygnalu wejsciowego-------------%
function Dlugosc_Callback(hObject, eventdata, handles)
% hObject    handle to IloscB (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IloscB as text
%        str2double(get(hObject,'String')) returns contents of IloscB as SygAWGN double
global Dlugosc;
global M;



handles.Ilosco=get(hObject,'Value');
Dlugosc=get(hObject,'String');
Dlugosc=str2num(Dlugosc);
guidata(hObject,handles);

k=log2(M);

Dlugosc2=Dlugosc./k;
if (mod(Dlugosc2,1)~=0)
    set(handles.error,'String','ERROR! Podana ilosc bitow nie jest podzielna przez log2(M).');
else
    
     set(handles.error,'String','');
     poz=['Ilosc bitow: ', int2str(Dlugosc)];
     set(handles.IloscB,'String', poz);
end


%-------------------------------Reset-------------------------------------%
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
 
global Signal;
guidata(hObject, handles);
Signal =[];
set(handles.Dane,'String','');
set(handles.Sygnal,'String','');
set(handles.Dlugosc,'String','');
set(handles.M,'String','');
set(handles.f,'String','');
set(handles.fs,'String','');

cla(handles.SygWej);
cla(handles.SygMod);
cla(handles.SygAWGN);
cla(handles.SygWy);




function iwo_Callback(hObject, eventdata, handles)
% hObject    handle to iwo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global iwo;
global Signal;
handles.iwoo=get(hObject,'String');
guidata(hObject,handles);
iwo=get(hObject,'String');
guidata(hObject, handles);
iwo=str2num(get(hObject,'String'));

if(iwo<1)
    if(iwo<=1/fs)
        iwo=1;
    end
else
    if(iwo>length(Signal))
        iwo=length(Signal); 
    end
end    

% -----------------------------Start--------------------------------------%
function Start_Callback(hObject, eventdata, handles)
% hObject    handle to Start (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Signal;
global f;
global fs;
global Dlugosc;
global M;
global SNR;
global BERR;
global iwo;
    
guidata(hObject, handles);

if (SNR==[])
    set(handles.error,'String','ERROR!brak SNR.');
else
        set(handles.error,'String','');
end
%-----------------Generowanie sygnalu wejsciowego-------------------------%

if Dlugosc<50
    plot(handles.SygWej, Signal, '.');
    axis(handles.SygWej, [0 Dlugosc -0.5 1.5]);
else
    plot(handles.SygWej, Signal(1:50)   , '.');
    axis(handles.SygWej, [0 32 -0.5 1.5]);
end

 set(get(handles.SygWej,'XLabel'),'String','Czas')
 set(get(handles.SygWej,'YLabel'),'String','Stan bitu')

%-----------------Przejscie sygnalu przez kanal modulatora----------------%
%---------------------------------PSKmod----------------------------------%
[y,z1]=PSKmod(Signal,M,f,fs);
t = 0: 1/fs : Dlugosc/log2(M)-1/fs;

minx=0;
maxx=iwo;
miny=0.5*min(y(1:iwo*fs))-abs(min(y(1:iwo*fs)));
maxy=0.5*max(y(1:iwo*fs))+abs(max(y(1:iwo*fs)));

plot(handles.SygMod, t(1:iwo*fs), y(1:iwo*fs));
axis(handles.SygMod,  [ minx maxx miny maxy]);
set(get(handles.SygMod,'XLabel'),'String','Czas przesylu jednego bitu[s]')
set(get(handles.SygMod,'YLabel'),'String','Amplituda sygnalu')

%-----------Przejscie zmodulowanego sygnalu przez kanal AWGN--------------%
%-------------------------------AWGNadd-----------------------------------%
y=AWGNadd(y,SNR);


minx=0;
maxx=iwo;
miny=min( y(1:iwo*fs))-abs(min( y(1:iwo*fs))*0.2);
maxy=max( y(1:iwo*fs))+abs(max( y(1:iwo*fs))*0.2);

plot(handles.SygAWGN, t(1:iwo*fs), y(1:iwo*fs));
axis(handles.SygAWGN, [ minx maxx miny maxy]);
set(get(handles.SygAWGN,'XLabel'),'String','Czas przesylu jednego bitu[s]')
set(get(handles.SygAWGN,'YLabel'),'String','Amplituda sygnalu')
%------------Demodulacja sygnalu zmodulowanego z szumem bialym------------%
%-------------------------------PSKdemod----------------------------------%
[y,z2]=PSKdemod(y,M,f,fs);

if length(y)<50
    plot(handles.SygWy, y, '.');
    axis(handles.SygWy, [0 length(y) -0.5 1.5]);
else
    plot(handles.SygWy, y(1:50)   , '.');
    axis(handles.SygWy, [0 50 -0.5 1.5]);
end
set(get(handles.SygWy,'XLabel'),'String','Czas')
set(get(handles.SygWy,'YLabel'),'String','Stan bitu')   
%-------------------------------------------------------------------------%
%---------------------------------SER-------------------------------------%
z=z1-z2;
counter=0;
for i=1:length(z)
    if(z(i)~=0)
        counter=counter+1;
    end
end

set(handles.bledy,'String', counter);
guidata(hObject,handles);

zal = counter./length(z)*100;
zal= round(zal);

set(handles.SER,'String', zal);
guidata(hObject,handles);
%-------------------------------------------------------------------------%
%----------------------------------BER------------------------------------%
BER=erfc(sqrt(SNR*log2(M))*sin(pi.* (1/M)));
%BER=erfc(sqrt(2*SNR*log2(M))*sin(pi.* (1/M)));
    
BERR=100*BER;
BERR=round(BERR);

set(handles.prob,'String', BERR);
guidata(hObject,handles);






function Error_Callback(hObject, eventdata, handles)
% hObject    handle to Error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Error as text
%        str2double(get(hObject,'String')) returns contents of Error as a double


function error_Callback(hObject, eventdata, handles)
% hObject    handle to error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error as text
%        str2double(get(hObject,'String')) returns contents of error as a double



% --- Executes on button press in SNRBER.
function SNRBER_Callback(hObject, eventdata, handles)
% hObject    handle to SNRBER (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%-------------------------------------------------------------------------%
%-------------------------Zaleznosc BER or SNR----------------------------%
global M;
global Signal;
global f;
global fs;

%WSZYSTKO MUSI BYC ZAINICJALZIOWACNEEEEEEEEE

snrRangeStart=-5;
snrRangeEnd=25;
snrV=snrRangeStart:0.1:snrRangeEnd;
practicalBER=ber2snr( Signal, M, f, fs, snrV);%potrzebne db, punktowy zwrot funkcji
zpracticalBER=zber2snr( Signal, M, f, snrV);%potrzebne db, zespolony zwrot funkcji
snrV = 10.^(snrV / 10); %db na normlane
theoreticalBER=erfc(sqrt(snrV)*sin(pi.* (1/M)));%potrzebne normlane
snrV=10*log10(snrV);  %normlane na db

minx=min(snrV)-abs(min(snrV)*0.2);
maxx=max(snrV)+max(snrV)*0.2;
bermin=[min(practicalBER) min(theoreticalBER) min(zpracticalBER)];
bermax=[max(practicalBER) max(theoreticalBER) max(zpracticalBER)];
miny=10^-3;%min(bermin)-abs(min(bermin)*0.1);
maxy=max(bermax)+abs(max(bermax)*0.1);

semilogy(handles.Zal2, snrV,theoreticalBER,'b',snrV,practicalBER,'r',snrV,zpracticalBER,'g');
axis(handles.Zal2, [ minx maxx miny maxy]);
legend(handles.Zal2,'teoria','próbkowana','zespolona',3);
set(get(handles.Zal2,'XLabel'),'String','SNR')
set(get(handles.Zal2,'YLabel'),'String','BER')  

% http://www.embedded.com/print/4017668 %

% --- Executes on button press in START2.
function START2_Callback(hObject, eventdata, handles)
% hObject    handle to START2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Signal;
global f;
global fs;
global Dlugosc;
global M;
global SNR;
global BERR;
global iwo;
    
guidata(hObject, handles);

if (SNR==[])
    set(handles.error,'String','ERROR!brak SNR.');
else
        set(handles.error,'String','');
end
%-----------------Generowanie sygnalu wejsciowego-------------------------%

if Dlugosc<50
    plot(handles.SygWej, Signal, '.');
    axis(handles.SygWej, [0 Dlugosc -0.5 1.5]);
else
    plot(handles.SygWej, Signal(1:50)   , '.');
    axis(handles.SygWej, [0 32 -0.5 1.5]);
end

 set(get(handles.SygWej,'XLabel'),'String','Czas')
 set(get(handles.SygWej,'YLabel'),'String','Stan bitu')

%-----------------Przejscie sygnalu przez kanal modulatora----------------%
%---------------------------------PSKmod----------------------------------%
[y,z1]=zPSKmod(Signal,M,f);
t = 0: 1/fs : Dlugosc/log2(M)-1/fs;

fazy=angle(y);
zmodulowany=zeros(1,length(y)*fs);
tb = 0: 1/fs : 1-1/fs;%czas przesy?u 1 bitu

for i=1:length(y)
    zmodulowany((i-1)*fs+1 : i*fs)= sin(2*pi*f*tb+fazy(i));
end

minx=0;
maxx=iwo;
miny=0.5*min(zmodulowany(1:iwo*fs))-abs(min(zmodulowany(1:iwo*fs)));
maxy=0.5*max(zmodulowany(1:iwo*fs))+abs(max(zmodulowany(1:iwo*fs)));

plot(handles.SygMod, t(1:iwo*fs), zmodulowany(1:iwo*fs));
axis(handles.SygMod,  [ minx maxx miny maxy]);
set(get(handles.SygMod,'XLabel'),'String','Czas przesylu jednego bitu[s]')
set(get(handles.SygMod,'YLabel'),'String','Amplituda sygnalu')

%-----------Przejscie zmodulowanego sygnalu przez kanal AWGN--------------%
%-------------------------------AWGNadd-----------------------------------%
y=AWGNadd(y,SNR);

fazy=angle(y);
zmodulowanyA=zeros(1,length(y)*fs);

for i=1:length(y)
    zmodulowanyA((i-1)*fs+1 : i*fs)=sin(2*pi*f*tb+fazy(i));
end

minx=0;
maxx=iwo;
miny=min( zmodulowanyA(1:iwo*fs))-abs(min( zmodulowanyA(1:iwo*fs))*0.2);
maxy=max( zmodulowanyA(1:iwo*fs))+abs(max( zmodulowanyA(1:iwo*fs))*0.2);

plot(handles.SygAWGN, t(1:iwo*fs), zmodulowanyA(1:iwo*fs));
axis(handles.SygAWGN, [ minx maxx miny maxy]);
set(get(handles.SygAWGN,'XLabel'),'String','Czas przesylu jednego bitu[s]')
set(get(handles.SygAWGN,'YLabel'),'String','Amplituda sygnalu')
%------------Demodulacja sygnalu zmodulowanego z szumem bialym------------%
%-------------------------------PSKdemod----------------------------------%
[y,z2]=zPSKdemod(y,M);

if length(y)<50
    plot(handles.SygWy, y, '.');
    axis(handles.SygWy, [0 length(y) -0.5 1.5]);
else
    plot(handles.SygWy, y(1:50)   , '.');
    axis(handles.SygWy, [0 50 -0.5 1.5]);
end
set(get(handles.SygWy,'XLabel'),'String','Czas')
set(get(handles.SygWy,'YLabel'),'String','Stan bitu')   
%-------------------------------------------------------------------------%
%---------------------------------SER-------------------------------------%
z=z1-z2;
counter=0;  
for i=1:length(z)
    if(z(i)~=0)
        counter=counter+1;
    end
end

set(handles.bledy,'String', counter);
guidata(hObject,handles);

zal = counter./length(z)*100;
zal= round(zal);

set(handles.SER,'String', zal);
guidata(hObject,handles);
%-------------------------------------------------------------------------%
%----------------------------------BER------------------------------------%
BER=erfc(sqrt(SNR*log2(M))*sin(pi.* (1/M)));
%BER=erfc(sqrt(2*SNR*log2(M))*sin(pi.* (1/M)));
    
BERR=100*BER;
BERR=round(BERR);

set(handles.prob,'String', BERR);
guidata(hObject,handles);
