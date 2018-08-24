function varargout = ICONverter(varargin)
% TEXTHEADER MATLAB code for textHeader.fig
%      TEXTHEADER, by itself, creates a new TEXTHEADER or raises the existing
%      singleton*.
%
%      H = TEXTHEADER returns the handle to a new TEXTHEADER or the handle to
%      the existing singleton*.
%
%      TEXTHEADER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEXTHEADER.M with the given input arguments.
%
%      TEXTHEADER('Property','Value',...) creates a new TEXTHEADER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ICONverter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ICONverter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help textHeader

% Last Modified by GUIDE v2.5 17-Dec-2014 13:09:33

%Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ICONverter_OpeningFcn, ...
                   'gui_OutputFcn',  @ICONverter_OutputFcn, ...
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


% --- Executes just before textHeader is made visible.
function ICONverter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to textHeader (see VARARGIN)

% Choose default command line output for textHeader
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes textHeader wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ICONverter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in buttonShowData.
function buttonShowData_Callback(hObject, eventdata, handles)
% hObject    handle to buttonShowData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

m1 = '';
set(handles.textAnimation,'String',m1);
 dataSelected = (get(handles.dataList,'String'));
 dataSelected = dataSelected{get(handles.dataList,'Value')};
 ICONverterData(dataSelected);
 visualizeData();



% --- Executes on selection change in dataList.
function dataList_Callback(hObject, eventdata, handles)
% hObject    handle to dataList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dataList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dataList
% contents = cellstr(get(hObject,'String'));
% a = contents{get(hObject,'Value')};
% disp(a);



% --- Executes during object creation, after setting all properties.
function dataList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dataList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in geometricList.
function geometricList_Callback(hObject, eventdata, handles)
% hObject    handle to geometricList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns geometricList contents as cell array
%        contents{get(hObject,'Value')} returns selected item from geometricList


% --- Executes during object creation, after setting all properties.
function geometricList_CreateFcn(hObject, eventdata, handles)
% hObject    handle to geometricList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonGeo.
function buttonGeo_Callback(hObject, eventdata, handles)
% hObject    handle to buttonGeo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
m1 = '';
set(handles.textAnimation,'String',m1);

 dataSelected = (get(handles.geometricList,'String'));
 dataSelected = dataSelected{get(handles.geometricList,'Value')};
 if strcmp(dataSelected,'vertices')==1
     cla;
     visualizeVertices();
     hold off;
 end
 if strcmp(dataSelected,'triangles')==1
     cla;
     visualizeCells();
     hold off;
 end
 if strcmp(dataSelected,'icosahedrons')==1
    cla;
    visualizeIcosa();
    hold off;
 end
 if strcmp(dataSelected,'pentagons')==1
    cla;
    visualizePentagons();
    hold off;
 end
  if strcmp(dataSelected,'pentagons on icosahedrons')==1
     cla;
     visualizeIcosa();
     hold on;
     visualizePentagons();
     hold off;
 end


% --- Executes on selection change in listOfGeoToAnimate.
function listOfGeoToAnimate_Callback(hObject, eventdata, handles)
% hObject    handle to listOfGeoToAnimate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listOfGeoToAnimate contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listOfGeoToAnimate


% --- Executes during object creation, after setting all properties.
function listOfGeoToAnimate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listOfGeoToAnimate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listOfDiamondsToAnimate.
function listOfDiamondsToAnimate_Callback(hObject, eventdata, handles)
% hObject    handle to listOfDiamondsToAnimate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listOfDiamondsToAnimate contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listOfDiamondsToAnimate


% --- Executes during object creation, after setting all properties.
function listOfDiamondsToAnimate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listOfDiamondsToAnimate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonAnimate.
function buttonAnimate_Callback(hObject, eventdata, handles)
% hObject    handle to buttonAnimate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
diamondSelected = (get(handles.listOfDiamondsToAnimate,'String'));
diamondSelected = diamondSelected{get(handles.listOfDiamondsToAnimate,'Value')};

geoSelected = (get(handles.listOfGeoToAnimate,'String'));
geoSelected = geoSelected{get(handles.listOfGeoToAnimate,'Value')};

if strcmp(diamondSelected,'ALL')~=1
    choiceOfDiamonds = str2double(diamondSelected);
else
    choiceOfDiamonds = 0;
end
choiceOfGeometric = geoSelected;
m1 = 'Please wait until animation is finished.....';
set(handles.textAnimation,'String',m1);
visualizeAnimate(choiceOfGeometric, choiceOfDiamonds);
m1 = 'Animation finished';
set(handles.textAnimation,'String',m1);


% --- Executes on button press in buttonReset.
function buttonReset_Callback(hObject, eventdata, handles)
% hObject    handle to buttonReset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
m1 = '';
set(handles.textAnimation,'String',m1);


% --- Executes on button press in buttonICONverter.
function buttonICONverter_Callback(hObject, eventdata, handles)
% hObject    handle to buttonICONverter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

ICONverterVertices();





function textShow_Callback(hObject, eventdata, handles)
% hObject    handle to textShow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textShow as text
%        str2double(get(hObject,'String')) returns contents of textShow as a double


% --- Executes during object creation, after setting all properties.
function textShow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textShow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function textAnimation_Callback(hObject, eventdata, handles)
% hObject    handle to textAnimation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textAnimation as text
%        str2double(get(hObject,'String')) returns contents of textAnimation as a double


% --- Executes during object creation, after setting all properties.
function textAnimation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textAnimation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonConfigure.
function buttonConfigure_Callback(hObject, eventdata, handles)
% hObject    handle to buttonConfigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ICONverterIndex();


% --- Executes on selection change in listLevel.
function listLevel_Callback(hObject, eventdata, handles)
% hObject    handle to listLevel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listLevel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listLevel


% --- Executes during object creation, after setting all properties.
function listLevel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listLevel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonVertices.
function buttonVertices_Callback(hObject, eventdata, handles)
% hObject    handle to buttonVertices (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
levelSelected = (get(handles.listLevel,'String'));
levelSelected = levelSelected{get(handles.listLevel,'Value')};
cla;
if strcmp(levelSelected,'33x33')
    visualizeVertices();
elseif strcmp(levelSelected,'17x17')
    visualizeVerticesLevel(1);
elseif strcmp(levelSelected,'9x9')
    visualizeVerticesLevel(2);
elseif strcmp(levelSelected,'5x5')
    visualizeVerticesLevel(3);
elseif strcmp(levelSelected,'3x3')
    visualizeVerticesLevel(4);
else
    visualizeVerticesLevel(5);
 end
