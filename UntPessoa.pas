unit UntPessoa;

interface

type
  TPessoa = class
  private
    FId: LongInt;
    FNome: String;
    FRegistro: String;
    FDataRegistro: String;
    procedure Setnome(const Value: String);
    procedure SetDataRegistro(const Value: string);
    procedure SetId(const Value: LongInt);
    procedure SetRegistro(const Value: string);
    { Private declarations }
  public
    { Public declarations }
     property id: LongInt read FId write SetId;
     property nome: string read FNome write SetNome;
     property registro: string read FRegistro write SetRegistro;
     property dataRegistro: string read FDataRegistro write SetDataRegistro;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetId(const Value: LongInt);
begin
  FId := Value;
end;

procedure TPessoa.Setnome(const Value: String);
begin
  FNome := Value;
end;

procedure TPessoa.SetRegistro(const Value: string);
begin
  FRegistro := Value;
end;

procedure TPessoa.SetDataRegistro(const Value: string);
begin
  FDataRegistro := Value;
end;

end.
