function startup
    fprintf('Hello, John. Its nice to see you again. \n');
    fprintf('Ill go ahead and initialize some things for you.\n');
    
    % default for plots (print helper)
    set(groot,'defaultFigurePaperPositionMode','auto');
    
    % paths to add
    root = 'C:\Users\John\repos';
    folders = {  'classio', ...
				'classy', ...
				'file', ...
				'funky', ...
				'vma',...
				};
	
	% add paths
    fprintf('\tAdding paths:\n');
    for ii = 1:length(folders)
        fname = fullfile(root,folders{ii});
        addpath(genpath(fname));
        fprintf('\t\t%s\n',fname);
    end
    fprintf('\tDone. Enjoy\n');
    
	% change working directory to root
	cd(root);
end