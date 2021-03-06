unit Configs.Encrypt;

interface

type

  TConfigEncrypt = record
  private
    function GetSecret: string;
  public
    property Secret: string read GetSecret;
  end;

implementation

uses
  System.SysUtils;

{ TConfigEncrypt }

function TConfigEncrypt.GetSecret: string;
begin
  Result := GetEnvironmentVariable('ENCRYPT_SECRET');
end;

end.
