function varargout = telgui(varargin)
% TELGUI MATLAB code for telgui.fig
%      TELGUI, by itself, creates a new TELGUI or raises the existing
%      singleton*.
%
%      H = TELGUI returns the handle to a new TELGUI or the handle to
%      the existing singleton*.
%
%      TELGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TELGUI.M with the given input arguments.
%
%      TELGUI('Property','Value',...) creates a new TELGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before telgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to telgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help telgui

% Last Modified by GUIDE v2.5 08-Oct-2017 17:33:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @telgui_OpeningFcn, ...
                   'gui_OutputFcn',  @telgui_OutputFcn, ...
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


% --- Executes just before telgui is made visible.
function telgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to telgui (see VARARGIN)

% Choose default command line output for telgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes telgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = telgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.5346,0.9273,'1',handles);



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.5346,1.0247,'2',handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.5346,1.1328,'3',handles);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.5906,0.9273,'4',handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.5906,1.0247,'5',handles);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.5906,1.1328,'6',handles);


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.6535,0.9273,'7',handles);


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.6535,1.0247,'8',handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.6535,1.1328,'9',handles);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=[1:1000];  
num=get(handles.edit1,'string');  
l=length(num);  
n11=strrep(num,num,num(1:l-1)); %去掉末尾号码在面板上的显示 
d11=sin(0.7217*n)+sin(0.9273*n);  
set(handles.edit1,'string',n11);  
global NUM  
L=length(NUM);  
NUM=NUM(1:L-1100); %删除末尾号码在拨号音信号中的存储 
playblocking(audioplayer(d11,8192)); % 产生拨号音



% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
waveCreate(0.7217,1.0247,'0',handles);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global NUM  
playblocking(audioplayer(NUM,8192));  
L=length(NUM);  
n=L/1100;  
number='';  
for i=1:n  
    j=(i-1)*1100+1;  
    d=NUM(j:j+999); % 截取出每个数字  
    f=fft(d,2048); % 以 N=2048 作 FFT 变换  
    a=abs(f);  
    p=a.*a/10000; % 计算功率谱  
    num(1)=find(p(1:250)==max(p(1:250))); % 找行频  
    num(2)=300+find(p(300:380)==max(p(300:380))); % 找列频  
    if (num(1) < 180) 
        row=1; % 确定行数  
    elseif (num(1) < 200) 
        row=2;
    elseif (num(1) < 220) 
        row=3;  
    else
        row=4;
    end  
    if (num(2) < 320) 
        column=1; % 确定列数  
    elseif (num(2) < 340) 
        column=2;  
    else
        column=3;
    end  
    z=[row,column]; % 确定数字  
    if(z==[4,2]) 
        tel=0;  
    elseif z==[1,1] 
        tel=1;  
    elseif z==[1,2] 
        tel=2;  
    elseif z==[1,3] 
        tel=3;  
    elseif z==[2,1] 
        tel=4;  
    elseif z==[2,2] 
        tel=5;  
    elseif z==[2,3] 
        tel=6;  
    elseif z==[3,1] 
        tel=7;  
    elseif z==[3,2] 
        tel=8;  
    elseif z==[3,3] 
        tel=9;  
    end
    % t保存已被按下的一串数字
    t(i)=tel;  
    c=strcat(number,int2str(tel));  
    number=c;  
    i=i+1;  
end  
numofkey=str2double(number);
global contact
global numofcontact
for i=1:numofcontact
    if numofkey==contact(i).tel
        set(handles.text2,'string',strcat('正在呼叫',contact(i).name));
    end
end



% --------自定义函数---------%
function waveCreate(raw,col,str,handles)
n=[1:1000]; % 每个数字 1000 个采样点表示  
d0=sin(raw*n)+sin(col*n); % 对应行频列频叠加  
figure(1)
X=fft(d0,8192); 
plot(abs(X)); 
set(gcf,'Position',[200,300,420,350]) 
axis([0,1800,0,600]);
n0=strcat(get(handles.edit1,'string'),str); % 获取数字号码  
set(handles.edit1,'string',n0); % 显示号码  
space=zeros(1,100); %100 个 0 模拟静音信号  
global NUM  
phone=[NUM,d0];  
NUM=[phone,space]; % 存储连续的拨号音信号  
playblocking(audioplayer(d0,8192)); % 产生拨号音


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% 初始化NUM
global NUM
NUM=0;
global numofcontact
numofcontact=2;
% 号码预存储
global contact
contact(1).name='香农';
contact(1).tel=1234;
contact(2).name='傅里叶';
contact(2).tel=12345;



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% -----保存联系人信息-------%
global numofcontact
numofcontact=numofcontact+1;
global contact
name=get(handles.edit2,'string');
telnum=get(handles.edit3,'string');
if isempty(name)||isempty(telnum)
    msgbox('非法保存','错误','error');
else
    contact(numofcontact).name=name;
    contact(numofcontact).tel=str2double(telnum);
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% -------清空编辑框---------%
set(handles.edit2,'string','');
set(handles.edit3,'string','');

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------根据号码查询人名以及人名查号码--------%
global numofcontact
global contact
name=get(handles.edit2,'string');
telnum=get(handles.edit3,'string');
flag=0;
for i=1:numofcontact
    if (~isempty(name)&&~isempty(telnum))||(isempty(name)&&isempty(telnum))
        flag=2;
        break;
    end
    if isempty(name)
        if(contact(i).tel==str2double(telnum))
            set(handles.edit2,'string',contact(i).name);
            flag=1;
            break;
        end
    elseif(strcmpi(contact(i).name,name))
        set(handles.edit3,'string',int2str(contact(i).tel));
        flag=1;
        break;
    end
end
if flag==2
    msgbox('非法查询','错误','error');
end
if flag==0
    if isempty(name)
        set(handles.edit2,'string','未储存此联系人');
    else
        set(handles.edit3,'string','无此人号码');
    end
end