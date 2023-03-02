unit UntFormulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntPessoa, Vcl.StdCtrls,
  System.Generics.Collections, Data.DB, MemDS, DBAccess, Ora, Vcl.Grids,
  Vcl.DBGrids, OraCall, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;




type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BtnSalvar: TButton;
    Label3: TLabel;
    BtnNovo: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    BtnEditar: TButton;
    BtnCancelar: TButton;
    procedure BtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    procedure Adicionar;
    { Private declarations }
    procedure habilitar(opcao: Boolean);
  public
    { Public declarations }
    Pessoas: TList<tPessoa>;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit1;


{ TForm1 }

procedure TForm1.BtnNovoClick(Sender: TObject);
begin
  DMSistema.OraQuery1.Insert;
  habilitar(true);
end;

procedure TForm1.BtnCancelarClick(Sender: TObject);
begin
    DMSistema.OraQuery1.Cancel;
      habilitar(false);
end;

procedure TForm1.BtnEditarClick(Sender: TObject);
begin
    DMSistema.OraQuery1.Edit;
      habilitar(true);
end;

procedure TForm1.BtnSalvarClick(Sender: TObject);
var i: TPessoa;
begin
   //for I in pessoas do
   //ShowMessage(i.nome);
     Adicionar;
       habilitar(false);
     
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  habilitar(false);
  
end;

procedure TForm1.habilitar(opcao: Boolean);
begin
  BtnNovo.Enabled := not opcao;
  BtnEditar.Enabled := not opcao;
  BtnCancelar.Enabled := opcao;
  BtnSalvar.Enabled := opcao;

  DBGrid1.Enabled := not opcao;
end;

procedure TForm1.Adicionar;
begin

  DMSistema.OraQuery1.ApplyUpdates;

end;


end.
