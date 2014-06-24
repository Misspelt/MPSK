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

% Last Modified by GUIDE v2.5 24-Jun-2014 15:25:24

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
    set(hObject,'BackgroundColor',[.9 .9 .9]);
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

function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to SygWy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function bledy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SygAWGN (see GCBO)
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
handles.SNR=get(hObject,'Value');
guidata(hObject,handles);

SNR=get(hObject,'Value');
poz=['Poziom SNR: ', int2str(floor(SNR)), 'dB'];
set(handles.Poziom,'String', poz);
guidata(hObject,handles);


% -----------------------------Wymiar M-----------------------------------%
function M_Callback(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M as text
%        str2double(get(hObject,'String')) returns contents of M as a double
global M;
global poz;
handles.Mo=get(hObject,'String');
guidata(hObject,handles);

M = get(hObject,'String');
guidata(hObject, handles);
M=str2double(get(hObject,'String'));


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
handles.Ilsoc=get(hObject,'Value');
Dlugosc=get(hObject,'String');
Dlugosc=str2num(Dlugosc);
guidata(hObject,handles);

SNR=get(hObject,'Value');
poz=['Ilosc bitow: ', int2str(Dlugosc)];
set(handles.IloscB,'String', poz);

%-------------------------------Reset-------------------------------------%
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in SygAWGN future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc;
 
global Signal;
guidata(hObject, handles);
 
Signal = [];
set(handles.Dane,'String','');
set(handles.IloscB,'String','Ilosc bitów: 9');
set(handles.Sygnal,'String','');
set(handles.Dlugosc,'String','9');
set(handles.M,'String','8');
set(handles.f,'String','10');
set(handles.fs,'String','1000');
set(handles.SNR,'Value',100);
set(handles.Poziom,'String','Poziom SNR: 100 dB');

cla(handles.SygWej);
cla(handles.SygMod);
cla(handles.SygAWGN);
cla(handles.SygWy);

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
global bledy;
global BERR;


guidata(hObject, handles);

%-----------------Generowanie sygnalu wejsciowego-------------------------%
we=[];
for k=1:Dlugosc
    if Signal(k)==0
        we=[we zeros(1,fs*f)];
    else
        we=[we ones(1,fs*f)];
    end
end

plot(handles.SygWej, we);
axis(handles.SygWej, [0 length(we) -0.5 1.5]);
set(get(handles.SygWej,'XLabel'),'String','Czas [s]')
set(get(handles.SygWej,'YLabel'),'String','Stan bitu')

%-----------------Przejscie sygnalu przez kanal modulatora----------------%
%---------------------------------PSKmod----------------------------------%
ylength=Dlugosc*fs/log2(M);
[y,z1]=PSKmod(Signal,M,f,fs);
t = 0: 1/fs : Dlugosc/log2(M)-1/fs;
plot(handles.SygMod, t, y);
axis(handles.SygMod, [0 length(ylength) -1.5 1.5]);
set(get(handles.SygMod,'XLabel'),'String','Czas przesylu jednego bitu[s]')
set(get(handles.SygMod,'YLabel'),'String','Amplituda sygnalu')

%-----------Przejscie zmodulowanego sygnalu przez kanal AWGN--------------%
%-------------------------------AWGNadd-----------------------------------%
y=AWGNadd(y,SNR,fs);
plot(handles.SygAWGN, t, y);
axis(handles.SygAWGN, [0 length(ylength) -1.5 1.5]);
set(get(handles.SygAWGN,'XLabel'),'String','Czas przesylu jednego bitu[s]')
set(get(handles.SygAWGN,'YLabel'),'String','Amplituda sygnalu')
%------------Demodulacja sygnalu zmodulowanego z szumem bialym------------%
%-------------------------------PSKdemod----------------------------------%

[y,z2]=PSKdemod(y,M,f,fs);

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

set(handles.PER,'String', zal);
guidata(hObject,handles);


t = 0: 1 : Dlugosc;
wy=[];
for l=1:length(y)
    if y(l)==0
        wy=[wy zeros(1,fs*f)];
    else
        wy=[wy ones(1,fs*f)];
    end
end

plot(handles.SygWy, wy);
axis(handles.SygWy, [0 length(wy) -0.5 1.5]);
set(get(handles.SygWy,'XLabel'),'String','Czas [s]')
set(get(handles.SygWy,'YLabel'),'String','Stan bitu')   


%--------------------------------BER--------------------------------------

BER=erfc(sqrt(SNR)*sin(pi.* (1/8)));

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


% --- Executes during object creation, after setting all properties.
function Error_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Error (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
