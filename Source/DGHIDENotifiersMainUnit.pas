(**

  This module contains the basic code to register the wizard / expert / plug-in with the RAD Studio
  IDE for both packages and DLLs. It also is responsible for the ceration and destructions of the
  dockable notification window / log.

  @Author  David Hoyle
  @Version 1.0
  @Date    06 Jan 2017

**)
Unit DGHIDENotifiersMainUnit;

Interface

Uses
  ToolsAPI;

Procedure Register;
Function InitWizard(Const BorlandIDEServices: IBorlandIDEServices;
  RegisterProc: TWizardRegisterProc;
  Var Terminate: TWizardTerminateProc): Boolean; StdCall;

Exports
  InitWizard Name WizardEntryPoint;

Implementation

Uses
  DGHIDENotifiersWizard,
  DGHDockableIDENotificationsForm;

(**

  This method is required by the RAD Studio IDE in order to load the plugin as a package.

  @precon  None.
  @postcon Creates the plugin wizard.

**)
Procedure Register;

Begin
  RegisterPackageWizard(TDGHIDENotifiersWizard.Create);
End;

(**

  This method is requested by the RAD Studio IDE in order to load the plugin as a DLL wizard.

  @precon  None.
  @postcon Creates the plugin.

  @param   BorlandIDEServices as an IBorlandIDEServices as a constant
  @param   RegisterProc       as a TWizardRegisterProc
  @param   Terminate          as a TWizardTerminateProc as a reference
  @return  a Boolean

**)
Function InitWizard(Const BorlandIDEServices: IBorlandIDEServices;
  RegisterProc: TWizardRegisterProc;
  Var Terminate: TWizardTerminateProc): Boolean; StdCall;

Begin
  Result := BorlandIDEServices <> Nil;
  RegisterProc(TDGHIDENotifiersWizard.Create);
End;

(** Creates the dockable notification form on unit initialisation. **)
Initialization
  TfrmDockableIDENotifications.CreateDockableBrowser;
(** Destroys the dockable notification form on unit finalisation. **)
Finalization
  TfrmDockableIDENotifications.RemoveDockableBrowser;
End.
