function varargout = finalproject(varargin)
% FINALPROJECT MATLAB code for finalproject.fig
%      FINALPROJECT, by itself, creates a new FINALPROJECT or raises the existing
%      singleton*.
%
%      H = FINALPROJECT returns the handle to a new FINALPROJECT or the handle to
%      the existing singleton*.
%
%      FINALPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALPROJECT.M with the given input arguments.
%
%      FINALPROJECT('Property','Value',...) creates a new FINALPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalproject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalproject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalproject

% Last Modified by GUIDE v2.5 24-May-2022 08:55:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalproject_OpeningFcn, ...
                   'gui_OutputFcn',  @finalproject_OutputFcn, ...
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


% --- Executes just before finalproject is made visible.
function finalproject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalproject (see VARARGIN)

% Choose default command line output for finalproject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalproject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finalproject_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in readbutton.
function readbutton_Callback(hObject, eventdata, handles)
% hObject    handle to readbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = readcell ('animerev2.csv','range','A2:F251');
set(handles.readtable, 'Data', data);


% --- Executes when entered data in editable cell(s) in readtable.
function readtable_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to readtable (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



function genre_Callback(hObject, eventdata, handles)
% hObject    handle to genre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of genre as text
%        str2double(get(hObject,'String')) returns contents of genre as a double


% --- Executes during object creation, after setting all properties.
function genre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to genre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function type_Callback(hObject, eventdata, handles)
% hObject    handle to type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of type as text
%        str2double(get(hObject,'String')) returns contents of type as a double


% --- Executes during object creation, after setting all properties.
function type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function episode_Callback(hObject, eventdata, handles)
% hObject    handle to episode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of episode as text
%        str2double(get(hObject,'String')) returns contents of episode as a double


% --- Executes during object creation, after setting all properties.
function episode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to episode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rating_Callback(hObject, eventdata, handles)
% hObject    handle to rating (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rating as text
%        str2double(get(hObject,'String')) returns contents of rating as a double


% --- Executes during object creation, after setting all properties.
function rating_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rating (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.episode,'String','');
set(handles.rating,'String','');


% --- Executes on button press in resultbutton.
function resultbutton_Callback(hObject, eventdata, handles)
% hObject    handle to resultbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('animerev2.csv');
opts.SelectedVariableNames = (5:6);
data = readmatrix('animerev2.csv', opts);
set(handles.resulttable, 'Data', data);


episode = str2double(get(handles.episode, 'String'));
rating = str2double(get(handles.rating, 'String'));

k = [1,1];

w = [episode rating];

[m n] = size(data);
R =zeros(m,n);
Y =zeros(m,n);

for j=1:n
    if k(j)==1
        R(:,j)=data(:,j)./max(data(:,j));
    else
        R(:,j)=min(data(:,j))./data(:,j);
    end
end

for i=1:m
    V(i)= sum(w.*R(i,:))
end;

Preferensi = transpose(V);

xlswrite('hasilAnime.xlsx', Preferensi, 'HasilPreferensi');
[ a, b, ReadHasil ] = xlsread('hasilAnime.xlsx', 'HasilPreferensi');
ReadData= readcell('animerev2.csv','range','A2:F251');
DataAkhir = [ ReadHasil, ReadData]

DataSorting = sortrows(DataAkhir, 'descend')

xlswrite('hasilAnime.xlsx', DataSorting, 'DataPreferensi');
[ a, b, ReadRanking ] = xlsread('hasilAnime.xlsx', 'DataPreferensi')
set(handles.resulttable,'Data',ReadRanking);
