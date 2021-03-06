Library DGHIDENotifiersXE;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

{$R 'DGHIDENotificationsSplashScreenIcons.res' '..\DGHIDENotificationsSplashScreenIcons.RC'}

uses
  SysUtils,
  Classes,
  DGHDockableIDENotificationsForm in '..\Source\DGHDockableIDENotificationsForm.pas' {frmDockableIDENotifications},
  DGHIDENotificationTypes in '..\Source\DGHIDENotificationTypes.pas',
  DGHIDENotifiersIDENotifications in '..\Source\DGHIDENotifiersIDENotifications.pas',
  DGHIDENotifiersVersionControlNotififications in '..\Source\DGHIDENotifiersVersionControlNotififications.pas',
  DGHIDENotifiersWizard in '..\Source\DGHIDENotifiersWizard.pas',
  DGHIDENotifiersMainUnit in '..\Source\DGHIDENotifiersMainUnit.pas',
  DGHIDENotifiersCompileNotifications in '..\Source\DGHIDENotifiersCompileNotifications.pas',
  DGHIDENotifiersMessageNotifications in '..\Source\DGHIDENotifiersMessageNotifications.pas',
  DGHIDENotifiersIDEInsightNotifications in '..\Source\DGHIDENotifiersIDEInsightNotifications.pas',
  DGHIDENotificationsAboutBox in '..\Source\DGHIDENotificationsAboutBox.pas',
  DGHIDENotificationsCommon in '..\Source\DGHIDENotificationsCommon.pas',
  DGHIDENotificationsSplashScreen in '..\Source\DGHIDENotificationsSplashScreen.pas',
  DGHIDENotifiersProjectStorageNotifications in '..\Source\DGHIDENotifiersProjectStorageNotifications.pas',
  DGHIDENotifiersEditorNotifications in '..\Source\DGHIDENotifiersEditorNotifications.pas',
  DGHIDENotifiersDebuggerNotifications in '..\Source\DGHIDENotifiersDebuggerNotifications.pas';

{$R *.res}


Begin

End.
