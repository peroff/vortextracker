{
This is part of Vortex Tracker II project

(c)2000-2009 S.V.Bulba
Author: Sergey Bulba, vorobey@mail.khstu.ru
Support page: http://bulba.untergrund.net/

Version 2.0 and later
(c)2017-2019 Ivan Pirog, ivan.pirog@gmail.com
}

unit About;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, SysUtils,
  ComCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    line1: TGroupBox;
    line2: TGroupBox;
    Memo1: TMemo;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}

uses Main;

{$INCLUDE buildts.inc}

procedure TAboutBox.FormCreate(Sender: TObject);
var
  i: integer;
begin
  Version.Caption := HalfVersString + BuildArch;
  for i := 0 to Memo1.Lines.Count-1 do begin
    Memo1.Lines[i] := StringReplace(Memo1.Lines[i], '%datetime%', buildts, []);
  end;
end;

end.
