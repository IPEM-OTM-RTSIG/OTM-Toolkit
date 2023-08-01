# Usage

## Basic 

* Download "OTMSIG.7z", and use 7-Zip to unzip the folder. Alternatively, download the entire repository and open the "OTMSIG" folder. 
* Place a DICOM-RT Plan file into the folder. 
* Run "OTMSIG.bat" and enter the original DICOM-RT file's name at the prompt. 
* The script will create 20 variations of this plan, in which all beams will have altered MU, Collimator angles, Leaf or Jaw positions as specified in the output filenames. 


## Intermediate 

More variations can be achieved by modifying the contents of the .bat file, or by running mangle.exe from the command line. The "mangle.py Detailed Instructions" document details what command line options are available, the format that they must be entered in, and some examples. 

Alternatively a user interface has been developed to provide the same functionality without using the command line, instructions for the use of this can be found in "mangle UI Detailed Instructions".

## Advanced

For even more control over the DICOM-RT file modification process, or if the pre-compiled executable isn't functional, the mangle.py python script is provided. This was developed with Python 3.1, and the package requirements are specified in requirements.txt. 