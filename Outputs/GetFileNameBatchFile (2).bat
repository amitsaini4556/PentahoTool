 @echo off
   ECHO This an example of a batch file calling the repository_export.kjb
   cd ..
   cd ..
   D:
   cd data-integration
   
   call kitchen.bat /file:D:\Projects\DataIntegrationProjects\Outputs\GetFileNameRunBatchFile.kjb /level:Basic
   
   if errorlevel 1 goto error
   echo Export finished successfull.
   goto finished
   
   :error
   echo ERROR: An error occured during repository export.
   :finished
   REM Allow the user to read the message when testing, so having a pause
   pause