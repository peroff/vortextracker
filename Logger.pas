{
This is part of Vortex Tracker II project

Version 2.0 and later
(c)2017-2021 Ivan Pirog, ivan.pirog@gmail.com
https://github.com/ivanpirog/vortextracker
}
unit Logger;

interface


type
  TLogger = class
    Opened: Boolean;
    LogFile: TextFile;
    constructor Create(FileName: String);
    destructor Destroy; override;
    procedure Add(Str: String);
  end;

implementation

constructor TLogger.Create(FileName: String);
begin
  if Opened then Exit;
  AssignFile(LogFile, FileName);
  Rewrite(LogFile);
  Opened := True;
end;

destructor TLogger.Destroy;
begin
  CloseFile(LogFile);
  inherited;
end;

procedure TLogger.Add(Str: String);
begin
  Writeln(LogFile, Str);
end;

end.
 