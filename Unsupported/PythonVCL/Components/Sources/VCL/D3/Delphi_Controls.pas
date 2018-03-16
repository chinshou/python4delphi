////
//  This file was generated by VCL Generator
//  Copyright 1998 - Morgan Martinet
//  29/06/1999 12:59:47
//  it subclasses all classes of the unit Controls
////

unit Delphi_Controls;

interface

uses
  Messages,
  Windows,
  Classes,
  Sysutils,
  Graphics,
  Menus,
  CommCtrl,
  Imm,
  Controls,
  PythonEngine,
  PyVarArg,
  PyRecords,
  PyDelphiAssoc;

type
  TPyDragObject = class( TDragObject )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyDragControlObject = class( TDragControlObject )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyControlCanvas = class( TControlCanvas )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyControl = class( TControl )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
    procedure EventWindowProc( var Message : TMessage );
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyWinControl = class( TWinControl )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyGraphicControl = class( TGraphicControl )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyCustomControl = class( TCustomControl )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyHintWindow = class( THintWindow )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyChangeLink = class( TChangeLink )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
    procedure EventOnChange( Sender : TObject );
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyCustomImageList = class( TCustomImageList )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;

  TPyImageList = class( TImageList )
  protected
    FAssoc : Integer;
  public
    destructor Destroy; override;
    procedure EventOnChange( Sender : TObject );
  published
    property __assoc__ : Integer read FAssoc write FAssoc;
  end;


implementation

Uses Py_Misc;

/////////// class TPyDragObject /////////////////////

destructor TPyDragObject.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyDragControlObject /////////////////////

destructor TPyDragControlObject.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyControlCanvas /////////////////////

destructor TPyControlCanvas.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyControl /////////////////////

destructor TPyControl.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

procedure TPyControl.EventWindowProc( var Message : TMessage );
var
  args, rslt : PPyObject;
  L : TList;
begin
  L := TList.Create;
  try
    L.Add( CreateVarArg( GetPythonEngine.Py_None ).GetSelf ); 
    rslt := ExecuteEvent( 'WindowProc', TDelphiAssoc(__assoc__), L, args );
    GetPythonEngine.Py_XDecRef( rslt );
    GetPythonEngine.Py_XDecRef( args );
  finally
    L.Free;
  end;
end;

/////////// class TPyWinControl /////////////////////

destructor TPyWinControl.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyGraphicControl /////////////////////

destructor TPyGraphicControl.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyCustomControl /////////////////////

destructor TPyCustomControl.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyHintWindow /////////////////////

destructor TPyHintWindow.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyChangeLink /////////////////////

destructor TPyChangeLink.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

procedure TPyChangeLink.EventOnChange( Sender : TObject );
var
  args, rslt : PPyObject;
  L : TList;
begin
  L := TList.Create;
  try
    L.Add( GetPythonObject( Sender, 'Controls', 'TChangeLink' ) ); 
    rslt := ExecuteEvent( 'OnChange', TDelphiAssoc(__assoc__), L, args );
    GetPythonEngine.Py_XDecRef( rslt );
    GetPythonEngine.Py_XDecRef( args );
  finally
    L.Free;
  end;
end;

/////////// class TPyCustomImageList /////////////////////

destructor TPyCustomImageList.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

/////////// class TPyImageList /////////////////////

destructor TPyImageList.Destroy;
begin
  ClearInterface( TDelphiAssoc(FAssoc) );
  FAssoc := 0;
  inherited;
end;

procedure TPyImageList.EventOnChange( Sender : TObject );
var
  args, rslt : PPyObject;
  L : TList;
begin
  L := TList.Create;
  try
    L.Add( GetPythonObject( Sender, 'Controls', 'TImageList' ) ); 
    rslt := ExecuteEvent( 'OnChange', TDelphiAssoc(__assoc__), L, args );
    GetPythonEngine.Py_XDecRef( rslt );
    GetPythonEngine.Py_XDecRef( args );
  finally
    L.Free;
  end;
end;


end.