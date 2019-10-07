unit Unit2;

interface
type
Gazi = class
private
  { private declarations }

public
  RektorAdi : String;
  Function notortalamasi(vize:Integer;sonSinav:Integer):Real; //fonksiyon tanýmalama
  Function ogrenciDurumu(ortalama:Real):Boolean;
  Function ogrenciHarf(ortalama:Real;sonSinav:Integer):String;
  Function ogrenciDerece(harfNotu:String):String;
  { public declarations }

end;

var
  GlobalGazi: Gazi;
const harfler : array[0..8] of String = ('FF','FD','DD','DC','CC','CB','BB','BA','AA');
implementation

{ Gazi }

function Gazi.notortalamasi(vize:Integer; sonSinav: Integer): Real;
begin
   Result := vize*0.3 + sonSinav*0.7;
end;

function Gazi.ogrenciDerece(harfNotu: String): String;
begin
  if (harfNotu = 'FF') or (harfNotu = 'FD') then begin Result := 'KALDINIZ.'  end
  else if (harfNotu = 'DD') or (harfNotu = 'DC') then begin Result := 'ÞARTLI Geçtiniz.'  end
  else if (harfNotu = 'CC') or (harfNotu = 'CB') then begin Result := 'ORTA derecede geçtiniz.' end
  else if (harfNotu = 'BB') or (harfNotu = 'BA') then begin Result := 'ÝYÝ derecede geçtiniz.' end
  else begin Result := 'PEKÝYÝ derecede geçtiniz.' end;
end;

function Gazi.ogrenciDurumu(ortalama: Real): Boolean;
begin
if ortalama >50 then
   Result := True;
end;



function Gazi.ogrenciHarf(ortalama: Real;sonSinav:Integer): String;
begin
if sonSinav >=45 then
begin
    if ortalama<35 then  begin Result := harfler[0] end
    else if (ortalama >=35) and (ortalama <=40) then  begin Result := harfler[1] end
    else if (ortalama >40) and (ortalama <=45) then  begin Result := harfler[2] end
    else if (ortalama >45) and (ortalama <50) then  begin Result := harfler[3] end
    else if (ortalama >50) and (ortalama <=55) then  begin Result := harfler[4] end
    else if (ortalama >55) and (ortalama <=70) then  begin Result := harfler[5] end
    else if (ortalama >70) and (ortalama <=75) then  begin Result := harfler[6] end
    else if (ortalama >75) and (ortalama <=80) then  begin Result := harfler[7] end
    else if (ortalama >80) and (ortalama <=100) then  begin Result := harfler[8] end
end else
    begin
    Result := harfler[0]
    end;
    
end;

initialization
  GlobalGazi := Gazi.Create;
finalization
  GlobalGazi.Free;
end.
