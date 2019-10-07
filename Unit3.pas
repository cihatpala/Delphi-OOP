unit Unit3;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    vizeNotu: TEdit;
    finalNotu: TEdit;
    Label2: TLabel;
    LabelOrt: TLabel;
    label4: TLabel;
    LabelDurum: TLabel;
    Label3: TLabel;
    labelHarf: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var vize,sonSinav:Integer;
var durum:Boolean;
var gecmeDerecesi:String;
begin
  FocusControl(vizeNotu);
try
  vize := StrToInt(vizeNotu.Text);
  sonSinav := StrToInt(finalNotu.Text);
  if ((vize<=100) and (vize>=0)) and ((sonSinav<=100) and (sonSinav>=0)) then
  begin
    LabelOrt.Caption := FloatToStr(GlobalGazi.notortalamasi(vize,sonSinav));
    labelHarf.Caption := GlobalGazi.ogrenciHarf(GlobalGazi.notortalamasi(vize,sonSinav),sonSinav);
      // durum := GlobalGazi.ogrenciDurumu(GlobalGazi.notortalamasi(vize,sonSinav));
    gecmeDerecesi := GlobalGazi.ogrenciDerece(GlobalGazi.ogrenciHarf(GlobalGazi.notortalamasi(vize,sonSinav),sonSinav));
    LabelDurum.Caption := gecmeDerecesi;
  end
  else
  begin
    ShowMessage('Lütfen notlara 0-100 aralýðýnda bir deðer giriniz.');
    FocusControl(vizeNotu);
  end;

except on E: Exception do
  ShowMessage('Lütfen notlara sadece sayý giriniz.');
end;




end;

end.

