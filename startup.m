function startup
%% default matlab start up routine
    fprintf('Hello, John. Its nice to see you again. \n');
    fprintf('Ill go ahead and initialize some things for you.\n');

    %% shuffle random numbers
    fprintf('Shuffling random numbers... ');
    rng('shuffle');
    fprintf('Done.\n');
    
    %% add desired folders to matlab search path
    
    root = 'C:\Users\John\repos'; % paths to add
    
    % folders to add
    folders = { 'classio', ...
				'classy', ...
				'file', ...
				'funky', ...
				'vma',...
                'st7api',...
				};

    fprintf('\tAdding paths:\n');
    for ii = 1:length(folders)
        fname = fullfile(root,folders{ii});
        addpath(genpath(fname));
        fprintf('\t\t%s\n',fname);
    end
    fprintf('\tDone. Enjoy\n');
    
	%% change working directory to root
	cd(root);
end