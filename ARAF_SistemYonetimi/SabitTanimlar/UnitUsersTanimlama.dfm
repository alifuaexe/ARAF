﻿inherited FormUnitUsersTanimlama: TFormUnitUsersTanimlama
  Caption = 'Kullan'#305'c'#305' Tan'#305'mlama Ekran'#305
  ClientHeight = 398
  ClientWidth = 660
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 676
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 660
    Height = 341
    ExplicitWidth = 660
    ExplicitHeight = 341
    ClientRectBottom = 336
    ClientRectRight = 655
    inherited PageDetay: TcxTabSheet
      ExplicitWidth = 653
      ExplicitHeight = 311
      inherited Panel4: TPanel
        Width = 466
        Height = 311
        ExplicitWidth = 466
        ExplicitHeight = 311
        inherited Panel3: TPanel
          Width = 464
          ExplicitWidth = 464
          object cxLabel1: TcxLabel
            Left = 3
            Top = 25
            Caption = 'KEYID'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 3
            Top = 52
            Caption = 'Kullan'#305'c'#305' Ad'#305
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 3
            Top = 79
            Caption = 'Kullan'#305'c'#305' Ad'#305
            Transparent = True
          end
          object cxLabel6: TcxLabel
            Left = 3
            Top = 106
            Caption = 'Kullan'#305'c'#305' No'
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 3
            Top = 133
            Caption = 'Ad'#305
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 3
            Top = 160
            Caption = 'Soyad'#305
            Transparent = True
          end
          object edtKeyid: TcxTextEdit
            Left = 96
            Top = 24
            TabOrder = 6
            Width = 121
          end
          object edtKullniciAdi: TcxTextEdit
            Left = 96
            Top = 51
            TabOrder = 7
            Width = 121
          end
          object edtSifre: TcxTextEdit
            Left = 96
            Top = 78
            TabOrder = 8
            Width = 121
          end
          object edtKullNo: TcxTextEdit
            Left = 96
            Top = 105
            TabOrder = 9
            Width = 121
          end
          object edtAdi: TcxTextEdit
            Left = 96
            Top = 132
            TabOrder = 10
            Width = 121
          end
          object edtSoyadı: TcxTextEdit
            Left = 96
            Top = 159
            TabOrder = 11
            Width = 121
          end
        end
        inherited Panel5: TPanel
          Width = 464
          Height = 93
          ExplicitWidth = 464
          ExplicitHeight = 93
          inherited cxGrid1: TcxGrid
            Width = 462
            Height = 91
            ExplicitWidth = 462
            ExplicitHeight = 91
            inherited gridView: TcxGridDBTableView
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.NavigatorHints = True
              OptionsBehavior.PullFocusing = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
              OptionsView.ScrollBars = ssHorizontal
              OptionsView.ShowEditButtons = gsebAlways
              OptionsView.GroupRowStyle = grsOffice11
              OptionsView.ShowColumnFilterButtons = sfbAlways
              object gridViewKEYID: TcxGridDBColumn
                DataBinding.FieldName = 'KEYID'
                Width = 47
              end
              object gridViewKULLANICI_KODU: TcxGridDBColumn
                DataBinding.FieldName = 'KULLANICI_KODU'
                Width = 104
              end
              object gridViewKULLANICI_ADI: TcxGridDBColumn
                DataBinding.FieldName = 'KULLANICI_ADI'
                Width = 94
              end
              object gridViewKULLANICI_SOYADI: TcxGridDBColumn
                DataBinding.FieldName = 'KULLANICI_SOYADI'
                Width = 114
              end
              object gridViewKULLANICI_SIFRE: TcxGridDBColumn
                DataBinding.FieldName = 'KULLANICI_SIFRE'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.EchoMode = eemPassword
                Width = 105
              end
            end
          end
        end
        inherited cxSplitter2: TcxSplitter
          Width = 464
          ExplicitWidth = 464
        end
      end
      inherited cxSplitter1: TcxSplitter
        Height = 311
        ExplicitHeight = 311
      end
      inherited Panel2: TPanel
        Height = 311
        ExplicitHeight = 311
        inherited btnAra: TcxButton
          Top = 250
          ExplicitTop = 250
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 660
    ExplicitWidth = 660
    inherited GridPanel1: TGridPanel
      Width = 658
      ColumnCollection = <
        item
          Value = 25.024202101173890000
        end
        item
          Value = 25.032764840680120000
        end
        item
          Value = 24.961980390381530000
        end
        item
          Value = 24.981052667764470000
        end>
      ExplicitWidth = 658
      inherited BtnYeni: TcxButton
        Width = 164
        ExplicitWidth = 164
      end
      inherited BtnKaydet: TcxButton
        Left = 165
        Width = 164
        ExplicitLeft = 165
        ExplicitWidth = 164
      end
      inherited BtnDegistir: TcxButton
        Left = 329
        Width = 163
        ExplicitLeft = 329
        ExplicitWidth = 163
      end
      inherited BtnSil: TcxButton
        Left = 492
        Width = 165
        OnClick = BtnSilClick
        ExplicitLeft = 492
        ExplicitWidth = 165
      end
    end
  end
  inherited ADOQuery1: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from KULLANICI_BILGILERI')
    Left = 482
    Top = 132
    object ADOQuery1KEYID: TAutoIncField
      FieldName = 'KEYID'
      ReadOnly = True
    end
    object ADOQuery1KULLANICI_KODU: TWideStringField
      FieldName = 'KULLANICI_KODU'
      Size = 50
    end
    object ADOQuery1KULLANICI_ADI: TWideStringField
      FieldName = 'KULLANICI_ADI'
      Size = 50
    end
    object ADOQuery1KULLANICI_SOYADI: TWideStringField
      FieldName = 'KULLANICI_SOYADI'
      Size = 50
    end
    object ADOQuery1KULLANICI_SIFRE: TWideStringField
      FieldName = 'KULLANICI_SIFRE'
      Size = 50
    end
  end
  inherited DataSource1: TDataSource
    Left = 482
    Top = 180
  end
  object ADOQueryBirim: TADOQuery
    Connection = FormAnaMenu.ADOConnectionMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from BIRIM_TANIM')
    Left = 554
    Top = 140
    object ADOQueryBirimKEYID: TAutoIncField
      FieldName = 'KEYID'
      ReadOnly = True
    end
    object ADOQueryBirimBIRIM_ADI: TWideStringField
      FieldName = 'BIRIM_ADI'
      Size = 50
    end
  end
  object DataSourceBirim: TDataSource
    DataSet = ADOQueryBirim
    Left = 554
    Top = 188
  end
end