function varargout = test1(varargin)
% TEST1 MATLAB code for test1.fig
%      TEST1, by itself, creates a new TEST1 or raises the existing
%      singleton*.
%
%      H = TEST1 returns the handle to a new TEST1 or the handle to
%      the existing singleton*.
%
%      TEST1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST1.M with the given input arguments.
%
%      TEST1('Property','Value',...) creates a new TEST1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test1

% Last Modified by GUIDE v2.5 26-Jan-2022 19:39:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test1_OpeningFcn, ...
                   'gui_OutputFcn',  @test1_OutputFcn, ...
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


% --- Executes just before test1 is made visible.
function test1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test1 (see VARARGIN)

% Choose default command line output for test1
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = uigetfile({'*.jpg';'*.png';'*.tif'});
a = imread(a);
axes(handles.axes6);
imshow(a);

%axes(handles.axes4);
%Red = a(:,:,1);
%Green = a(:,:,2);
%Blue = a(:,:,3);

%Get histValues for each channel
%[yRed, x] = imhist(Red);
%[yGreen, x] = imhist(Green);
%[yBlue, x] = imhist(Blue);

%Plot them together in one plot
%plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');


setappdata(0,'input',a)
set(handles.axes1,'Visible','on');
set(handles.axes2,'Visible','on');
set(handles.axes6,'Visible','on');


% --- Executes on button press in pushbutton3.


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'input');
a = rgb2gray(a);
axes(handles.axes6);
imshow(a);
axes(handles.axes4);
imhist(a);
setappdata(0,'input',a)







% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image = getappdata(0,'output');
imwrite(image,'./img/image1.tif');


% --- Executes on button press in pushbutton13.

function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'input');
imwrite(a,'./img/image1.tif');
imageinfo('./img/image1.tif');
%f = msgbox(info);
%disp(info)

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'noisy');
imwrite(a,'./img/image1.tif');
imageinfo('./img/image1.tif');
%f = msgbox(info);
%disp(info)

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'output');
imwrite(a,'./img/image1.tif');
imageinfo('./img/image1.tif');
%f = msgbox(info);
%disp(info)





% --- Executes on selection change in popupmenu1.


% --- Executes during object creation, after setting all properties.




function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu2_Callback(hObject, eventdata, handles)

function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function popupmenu4_Callback(hObject, eventdata, handles)

function popupmenu4_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img = getappdata(0,'input');

sizeVal = get(handles.edit3,'String');

menuType = get(handles.popupmenu4,'value');
if(menuType==2)
    nn = imresize(img,str2double(sizeVal),'nearest'); %shrinking by 30%
    bl = imresize(img,str2double(sizeVal),'bilinear'); 
    bc = imresize(img,str2double(sizeVal),'bicubic'); 
    figure,
    subplot(2,2,1), imshow(img), title('Original Image');
    subplot(2,2,2), imshow(nn), title('Nearest');
    subplot(2,2,3), imshow(bl), title('Bilenear');
    subplot(2,2,4), imshow(bc), title('Bicubic');
elseif(menuType==1)
    noisy = getappdata(0,'noisy');
    Kmedian = medfilt2(noisy);
    GaussianFilter = imgaussfilt(noisy,2);
    init_mask_size = 3;
    max_mask_size = 7;
    adap_med_image = adap_med_filter(noisy,init_mask_size,max_mask_size);
    figure,
    subplot(2,2,1), imshow(noisy), title('Original Image');
    subplot(2,2,2), imshow(Kmedian), title('(Spatial Domain)Kmedian');
    subplot(2,2,3), imshow(GaussianFilter), title('(Spatial Domain)Gaussian Filter');
    subplot(2,2,4), imshow(adap_med_image), title('(Frequqency Domain)Adaptive filter');
end


% --- Executes on selection change in listbox5.


% --- Executes on selection change in listbox6.
function listbox6_Callback(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox6


% --- Executes during object creation, after setting all properties.
function listbox6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
menuType = get(handles.listbox6,'value');
if(menuType==3)
    b = getappdata(0,'noisy');
    GaussianFilter = imgaussfilt(b,2);
    axes(handles.axes2);
    imshow(GaussianFilter);
    axes(handles.axes5);
    imhist(GaussianFilter);
    set(handles.text11,'String','Gaussian Filter');
    setappdata(0,'output',GaussianFilter)
elseif(menuType==4)
    b = getappdata(0,'noisy');
    Kmedian = medfilt2(b);
    axes(handles.axes2);
    imshow(Kmedian);
    axes(handles.axes5);
    imhist(Kmedian);
    set(handles.text11,'String','Median Filter');
    setappdata(0,'output',Kmedian)
elseif(menuType==5)
    b = getappdata(0,'input');
    w4 = fspecial('laplacian',0);
    f4=imfilter(b,w4,'replicate');
    img4=b-f4;
    axes(handles.axes2);
    imshow(img4);
    set(handles.text11,'String','Laplacian');
    setappdata(0,'output',img4)
elseif(menuType==6)
    b = getappdata(0,'noisy');
    r = medfilt2(b(:, :, 1), [3 3]);
    g = medfilt2(b(:, :, 2), [3 3]);
    b = medfilt2(b(:, :, 3), [3 3]);
    Kmedian = cat(3, r, g, b);
    axes(handles.axes2);
    imshow(Kmedian);
    set(handles.text11,'String','KMedian for RGB');
    setappdata(0,'output',Kmedian)
elseif(menuType==8)
    set(handles.text6,'Visible','on');
    a = uigetfile('.jpg');
    a = imread(a); 
    b = getappdata(0,'input');
    histMatch = imhistmatch(b,a);
    axes(handles.axes2);
    imshow(histMatch);
    set(handles.text11,'String','Histogram Match');
    setappdata(0,'output',histMatch)
elseif(menuType==9)
    img = getappdata(0,'input');
    image = histeq(img);
    axes(handles.axes2);
    imshow(image);    
    axes(handles.axes5);
    imhist(image);
    set(handles.text11,'String','Histogram Equalization');
    setappdata(0,'output',image)    
elseif(menuType==15)
    b = getappdata(0,'input');
    BW1 = edge(b,'sobel');
    axes(handles.axes2);
    imshow(BW1);
    axes(handles.axes5);
    imhist(BW1);
    set(handles.text11,'String','Sobel');
    setappdata(0,'output',BW1)
elseif(menuType==13)
    sizeVal = get(handles.edit3,'String');
    img = getappdata(0,'input');
    nn = imresize(img,str2double(sizeVal),'nearest'); 
    axes(handles.axes2);
    imshow(nn);
    setappdata(0,'output',nn)
    axes(handles.axes5);
    imhist(nn);
    set(handles.text11,'String','Nearest');
elseif(menuType==11) 
    sizeVal = get(handles.edit3,'String');
    img = getappdata(0,'input');
    bl = imresize(img,str2double(sizeVal),'bilinear');
    axes(handles.axes2);
    imshow(bl);
    setappdata(0,'output',b1)
    axes(handles.axes5);
    imhist(b1);
    set(handles.text11,'String','Bilinear');
elseif(menuType==12)
    sizeVal = get(handles.edit3,'String');
    img = getappdata(0,'input');
    bc = imresize(img,str2double(sizeVal),'bicubic'); 
    axes(handles.axes2);
    imshow(bc);    
    setappdata(0,'output',bc)
    axes(handles.axes5);
    imhist(bc);
    set(handles.text11,'String','Bicubic');
elseif(menuType==18)
    image = getappdata(0,'noisy');
    init_mask_size = 3;
    max_mask_size = 7;
    adap_med_image = adap_med_filter(image,init_mask_size,max_mask_size);
    axes(handles.axes2);
    imshow(adap_med_image,[]);
    set(handles.text11,'String','Adaptive Median Filter');
    setappdata(0,'output',adap_med_image)
elseif(menuType==19)
    image = getappdata(0,'input');
    PQ = paddedsize(size(image));
    H1 = notch('btw', PQ(1), PQ(2), 10, 50, 100);
    H2 = notch('btw', PQ(1), PQ(2), 10, 1, 400);
    H3 = notch('btw', PQ(1), PQ(2), 10, 620, 100);
    H4 = notch('btw', PQ(1), PQ(2), 10, 22, 414);
    H5 = notch('btw', PQ(1), PQ(2), 10, 592, 414);
    H6 = notch('btw', PQ(1), PQ(2), 10, 1, 114); 
    F=fft2(double(image),PQ(1),PQ(2));
    FS_image = F.*H1.*H2.*H3.*H4.*H5.*H6;
    F_image=real(ifft2(FS_image)); 
    F_image=F_image(1:size(image,1), 1:size(image,2));
    axes(handles.axes2);
    imshow(F_image,[]);
    set(handles.text11,'String','Notch Filter');
    setappdata(0,'output',F_image)
else
    f = msgbox('Choose Option');
end


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = getappdata(0,'input');

noiseType = get(handles.popupmenu2,'value');
if(noiseType==2)
    noiseType = 'gaussian' ;
elseif(noiseType==1)
    noiseType = 'salt & pepper' ;
end


noiseVal = get(handles.edit2,'String');
a = imnoise(a,noiseType,str2double(noiseVal));
axes(handles.axes1);
imshow(a);
if size(a,3)==3
   % axes(handles.axes4);
   % Red = a(:,:,1);
   % Green = a(:,:,2);
   % Blue = a(:,:,3);

    %Get histValues for each channel
   % [yRed, x] = imhist(Red);
   % [yGreen, x] = imhist(Green);
   % [yBlue, x] = imhist(Blue);

    %Plot them together in one plot
   % plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');    
else
    axes(handles.axes7);
    imhist(a);
end
set(handles.text10,'String',noiseType);
setappdata(0,'noisy',a)



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
