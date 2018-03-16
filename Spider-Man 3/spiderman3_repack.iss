; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Spider-Man 3 Repack By Anonik"
#define MyAppVersion "1.5"
#define MyAppPublisher "Anonik"
#define MyAppURL "http://youtube.com/c/Anonik"
#define MyAppExeName "Spider-Man 3.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7575BA86-8FB4-4F42-B607-71FFD851C113}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=C:\Users\Nicholas Impieri\Desktop\Spider-Man 3 Repack By Anonik\license.txt
InfoBeforeFile=C:\Users\Nicholas Impieri\Desktop\Spider-Man 3 Repack By Anonik\1st.txt
InfoAfterFile=C:\Users\Nicholas Impieri\Desktop\Spider-Man 3 Repack By Anonik\2nd.txt
OutputDir=C:\Users\Nicholas Impieri\Desktop\Spider-Man 3 Repack By Anonik
OutputBaseFilename=Spider-Man 3 Repack By Anonik Setup
SetupIconFile=C:\Users\Nicholas Impieri\Desktop\Giochi\Snake Mobile\Resources\favicon (1).ico
Compression=lzma
SolidCompression=yes
DiskSpanning=True
WizardImageFile=C:\Users\Nicholas Impieri\Desktop\Spider-Man 3 Repack By Anonik\img\Spider-Man_3_Coverart.bmp
WizardSmallImageFile=C:\Users\Nicholas Impieri\Desktop\Spider-Man 3 Repack By Anonik\img\spiderman3.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Program Files (x86)\Activision\Spider-Man 3\Spider-Man 3.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Activision\Spider-Man 3\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent