inherited FormConnectionSettings: TFormConnectionSettings
  Caption = 'Ba'#287'lant'#305' Bilgileri'
  ClientHeight = 154
  ClientWidth = 347
  OldCreateOrder = True
  ExplicitWidth = 363
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox [0]
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Ba'#287'lant'#305' Bilgileri'
    TabOrder = 3
    Height = 161
    Width = 347
    object Label5: TLabel
      Left = 16
      Top = 26
      Width = 53
      Height = 13
      Caption = 'Sunucu Ad'#305
    end
    object Label6: TLabel
      Left = 16
      Top = 80
      Width = 55
      Height = 13
      Caption = 'Kullan'#305'c'#305' Ad'#305
    end
    object Label7: TLabel
      Left = 16
      Top = 53
      Width = 66
      Height = 13
      Caption = 'Veritaban'#305' Ad'#305
    end
    object Label1: TLabel
      Left = 16
      Top = 107
      Width = 29
      Height = 13
      Caption = #350'ifresi'
    end
    object cxTextEditServerName: TcxTextEdit
      Left = 94
      Top = 22
      TabOrder = 0
      Width = 250
    end
    object cxTextEditUserName: TcxTextEdit
      Left = 94
      Top = 76
      TabOrder = 2
      Width = 250
    end
    object cxTextEditDBName: TcxTextEdit
      Left = 94
      Top = 49
      TabOrder = 1
      Width = 250
    end
    object cxTextEditPassword: TcxTextEdit
      Left = 94
      Top = 103
      TabOrder = 3
      Width = 250
    end
  end
  object cxButtonSave: TcxButton [1]
    Left = 199
    Top = 130
    Width = 69
    Height = 25
    Anchors = [akRight]
    Caption = 'Kaydet'
    TabOrder = 4
    OnClick = cxButtonSaveClick
  end
  object cxButtonCancel: TcxButton [2]
    Left = 274
    Top = 130
    Width = 69
    Height = 25
    Anchors = [akRight]
    Caption = 'Vazge'#231
    TabOrder = 2
    OnClick = cxButtonCancelClick
  end
  inherited cxPageControl1: TcxPageControl
    Top = 218
    Width = 347
    Height = 3
    ExplicitTop = 218
    ExplicitWidth = 347
    ExplicitHeight = 3
    ClientRectBottom = 5
    ClientRectRight = 347
    ClientRectTop = 5
    inherited PageDetay: TcxTabSheet
      inherited Panel4: TPanel
        Width = 160
        Height = 0
        inherited Panel3: TPanel
          Width = 158
        end
        inherited Panel5: TPanel
          Width = 158
          inherited cxGrid1: TcxGrid
            ExplicitWidth = 156
          end
        end
        inherited cxSplitter2: TcxSplitter
          Width = 158
        end
      end
      inherited cxSplitter1: TcxSplitter
        Height = 0
      end
      inherited Panel2: TPanel
        Height = 0
      end
    end
  end
  inherited Panel1: TPanel
    Top = 161
    Width = 347
    ExplicitTop = 161
    ExplicitWidth = 347
    inherited GridPanel1: TGridPanel
      Width = 345
      ExplicitWidth = 345
      inherited BtnKaydet: TcxButton
        ExplicitLeft = 69
        ExplicitWidth = 68
      end
      inherited BtnDegistir: TcxButton
        ExplicitLeft = 137
        ExplicitWidth = 68
      end
      inherited BtnSil: TcxButton
        ExplicitLeft = 205
        ExplicitWidth = 68
      end
      inherited BtnYeni: TcxButton
        ExplicitWidth = 68
      end
    end
  end
  object IdEncoderMIME1: TIdEncoderMIME [6]
    FillChar = '='
    Left = 40
    Top = 136
  end
  object IdDecoderMIME1: TIdDecoderMIME [7]
    FillChar = '='
    Left = 136
    Top = 144
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
