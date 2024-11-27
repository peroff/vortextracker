unit Misc;

interface

uses
  SysUtils;

function CharInSet_(C: AnsiChar; const CharSet: TSysCharSet): Boolean; overload;
function CharInSet_(C: WideChar; const CharSet: TSysCharSet): Boolean; overload;

implementation

function CharInSet_(C: AnsiChar; const CharSet: TSysCharSet): Boolean;
begin
{$IFDEF UNICODE}
  Result := CharInSet(C, CharSet);
{$ELSE}
  Result := C in CharSet;
{$ENDIF}
end;

function CharInSet_(C: WideChar; const CharSet: TSysCharSet): Boolean;
begin
{$IFDEF UNICODE}
  Result := CharInSet(C, CharSet);
{$ELSE}
  Result := (C < #$0100) and (AnsiChar(C) in CharSet);
{$ENDIF}
end;

end.
