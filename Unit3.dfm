object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #214#287'renci Not Hesaplama'
  ClientHeight = 146
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 143
    Height = 24
    Caption = #9617#9617#9617#9617#9617#9617#9617#9617#9617#9617
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 17
    Width = 71
    Height = 13
    Caption = 'Not Ortalamas'#305
  end
  object LabelOrt: TLabel
    Left = 264
    Top = 17
    Width = 12
    Height = 13
    Caption = '00'
  end
  object label4: TLabel
    Left = 168
    Top = 75
    Width = 70
    Height = 13
    Caption = 'Ge'#231'me / Kalma'
  end
  object LabelDurum: TLabel
    Left = 264
    Top = 75
    Width = 12
    Height = 13
    Caption = '00'
  end
  object Label3: TLabel
    Left = 168
    Top = 45
    Width = 47
    Height = 13
    Caption = 'Harf Notu'
  end
  object labelHarf: TLabel
    Left = 264
    Top = 45
    Width = 12
    Height = 13
    Caption = '00'
  end
  object Button1: TButton
    Left = 44
    Top = 92
    Width = 75
    Height = 25
    Caption = 'HESAPLA'
    TabOrder = 0
    OnClick = Button1Click
  end
  object vizeNotu: TEdit
    Left = 22
    Top = 38
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Vize Notu'
  end
  object finalNotu: TEdit
    Left = 22
    Top = 65
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Final Notu'
  end
end
