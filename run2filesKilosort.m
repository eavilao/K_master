% Function to run 2 files to use with Kilosort 
function run2filesKilosort
tic
%% File 1
fname1 = input('What''s the name of the first file ? --> ','s' );
path1 = input('What''s the location of the first file? --> ','s' );
%% File 2 
% fname2 = input('What''s the name of the second file? --> ','s' );
% path2 = input('What''s the location of the second file? --> ','s');
% %%
% fname3 = input('What''s the name of the third file? --> ','s' );
% path3 = input('What''s the location of the third file? -->','s');
% fname4 = input('What''s the name of the fourth file? --> ','s' );
% path4 = input('What''s the location of the fourth file? -->','s');
% fname5 = input('What''s the name of the fifth file? --> ','s' );
% path5= input('What''s the location of the fifth file? -->','s');
%%
%First file 
cd(path1) % Change directory where the file is. 
MakeDatFile(fname1); % Make dat file
SpikeSort(fname1,1); % Run spike sorting

% Second file 
% cd(path2) %Change to directory of second file
% MakeDatFile(fname2); %Run spike sorting
% SpikeSort(fname2,1); %Run spike sorting
% 
% % %Third file 
% cd(path3) %Change to directory of second file
% MakeDatFile(fname3); %Run spike sorting
% SpikeSort(fname3,1); %Run spike sorting
% 
% % %Fourth file 
% cd(path4) %Change to directory of second file
% MakeDatFile (fname4); %Run spike sorting
% SpikeSort (fname4,1); %Run spike sorting
% 
% %Fifth file 
% cd(path5) %Change to directory of second file
% MakeDatFile(fname5); %Run spike sorting
% SpikeSort(fname5,1); %Run spike sorting

toc
disp ('            Done!') 
end 