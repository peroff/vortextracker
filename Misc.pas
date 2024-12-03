unit Misc;

interface

uses
  SysUtils;

// Unicode-enabled checks whether a given character is contained within
// a set of chars
function CharInSet_(C: AnsiChar; const CharSet: TSysCharSet): Boolean; overload;
function CharInSet_(C: WideChar; const CharSet: TSysCharSet): Boolean; overload;

// Converts a single byte ANSI character code to the Char type. We need to use
// this in Unicode Delphi versions because chars from the top half of the
// ANSI table (#128..#255) have another, double-byte codes in Unicode and
// can't be directly casted to WideChar. E.g. AnsiChar(149) = WideChar(8226)
function AnsiChr(C: Byte): Char;

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

function AnsiChr(C: Byte): Char;
begin
  Result := {$IFDEF UNICODE}WideChar(AnsiChar(C)){$ELSE}Chr(C){$ENDIF};
end;

end.
