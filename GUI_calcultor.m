function varargout = GUI_calcultor(varargin)
% GUI_CALCULTOR MATLAB code for GUI_calcultor.fig
%      GUI_CALCULTOR, by itself, creates a new GUI_CALCULTOR or raises the existing
%      singleton*.
%
%      H = GUI_CALCULTOR returns the handle to a new GUI_CALCULTOR or the handle to
%      the existing singleton*.
%
%      GUI_CALCULTOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_CALCULTOR.M with the given input arguments.
%
%      GUI_CALCULTOR('Property','Value',...) creates a new GUI_CALCULTOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_calcultor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_calcultor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_calcultor

% Last Modified by GUIDE v2.5 24-Feb-2021 17:07:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_calcultor_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_calcultor_OutputFcn, ...
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


% --- Executes just before GUI_calcultor is made visible.
function GUI_calcultor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_calcultor (see VARARGIN)

% Choose default command line output for GUI_calcultor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_calcultor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_calcultor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in bt1.


% --- Executes on button press in bt1.
function bt1_Callback(hObject, eventdata, handles)
% hObject    handle to bt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'1');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt2.
function bt2_Callback(hObject, eventdata, handles)
% hObject    handle to bt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'2');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt3.
function bt3_Callback(hObject, eventdata, handles)
% hObject    handle to bt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'3');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in btPlus.
function btPlus_Callback(hObject, eventdata, handles)
% hObject    handle to btPlus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'+');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt4.
function bt4_Callback(hObject, eventdata, handles)
% hObject    handle to bt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'4');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt5.
function bt5_Callback(hObject, eventdata, handles)
% hObject    handle to bt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'5');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt6.
function bt6_Callback(hObject, eventdata, handles)
% hObject    handle to bt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'6');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in btMinus.
function btMinus_Callback(hObject, eventdata, handles)
% hObject    handle to btMinus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'-');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt7.
function bt7_Callback(hObject, eventdata, handles)
% hObject    handle to bt7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'7');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt8.
function bt8_Callback(hObject, eventdata, handles)
% hObject    handle to bt8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'8');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt9.
function bt9_Callback(hObject, eventdata, handles)
% hObject    handle to bt9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'9');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in btMulti.
function btMulti_Callback(hObject, eventdata, handles)
% hObject    handle to btMulti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'*');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in bt0.
function bt0_Callback(hObject, eventdata, handles)
% hObject    handle to bt0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'0');
    set(handles.txtResult,'String',temp);

% --- Executes on button press in btClear.
function btClear_Callback(hObject, eventdata, handles)
% hObject    handle to btClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.txtResult,'String','');

% --- Executes on button press in btEqual.
function btEqual_Callback(hObject, eventdata, handles)
% hObject    handle to btEqual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    equation = get(handles.txtResult,'String');
    result = eval(equation);
    set(handles.txtResult,'String',result);
    
% --- Executes on button press in btDivi.
function btDivi_Callback(hObject, eventdata, handles)
% hObject    handle to btDivi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    temp = get(handles.txtResult,'String');
    temp = strcat(temp,'/');
    set(handles.txtResult,'String',temp);