function scans = read_data(folder_path, format)
  files = dir(fullfile(folder_path, format));
  scans = cell(1, length(files));

  for i = 1:length(files)
      file = fullfile(files(i).folder, files(i).name)
     
      if format == "*.DCM"
         image = dicomread(file);
      end
      if format == "*.nii" || format =="*.nii.gz"
          image = niftiread(file);
      end

      scans{i} = rescale(image);
  end
end
 

% example usage: 
%images = read_data("/MATLAB Drive/medical_image_processing_and_analysis/datasets/ct_scans_samples", "*.DCM");

