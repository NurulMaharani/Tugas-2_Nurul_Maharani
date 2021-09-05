function varargout = Gui1(varargin)
% GUI1 MATLAB code for Gui1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gui1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gui1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gui1

% Last Modified by GUIDE v2.5 03-Sep-2021 20:30:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gui1_OpeningFcn, ...
                   'gui_OutputFcn',  @Gui1_OutputFcn, ...
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


% --- Executes just before Gui1 is made visible.
function Gui1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gui1 (see VARARGIN)

% Choose default command line output for Gui1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gui1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Gui1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in tmblGambar.
function tmblGambar_Callback(hObject, eventdata, handles)
% hObject    handle to tmblGambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1)
a = imread('Rani.jpg');
imshow(a)

% --- Executes on button press in tmblcitraContras.
function tmblcitraContras_Callback(hObject, eventdata, handles)
% hObject    handle to tmblcitraContras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('Rani.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tCon = 75;
I_con = I_greyKom + tCon;
axes(handles.axes5)
imshow(I_con)

% --- Executes on button press in tmblcitraBrightnes.
function tmblcitraBrightnes_Callback(hObject, eventdata, handles)
% hObject    handle to tmblcitraBrightnes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('Rani.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tBrig = 150;
I_brig = I_greyKom+tBrig;
axes(handles.axes4)
imshow(I_brig)

% --- Executes on button press in tmblcitraBiner.
function tmblcitraBiner_Callback(hObject, eventdata, handles)
% hObject    handle to tmblcitraBiner (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
a = imread('Rani.jpg');
I_bw = im2bw(a,0.5);
axes(handles.axes3)
imshow(I_bw)

% --- Executes on button press in tmblcitraKeabuan.
function tmblcitraKeabuan_Callback(hObject, eventdata, handles)
% hObject    handle to tmblcitraKeabuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread('Rani.jpg');
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
axes(handles.axes2)
imshow(I_greyKom)


% --- Executes on button press in tmblKeluar.
function tmblKeluar_Callback(hObject, eventdata, handles)
% hObject    handle to tmblKeluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)
