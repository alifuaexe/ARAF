inherited FormUniKullaniciGrupTanimlama: TFormUniKullaniciGrupTanimlama
  Caption = 'Kullan'#305'c'#305' Grup Tan'#305'mlama'
  ClientHeight = 438
  ClientWidth = 829
  FormStyle = fsMDIChild
  Visible = True
  OnShow = FormShow
  ExplicitWidth = 845
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 829
    Height = 381
    ExplicitLeft = 0
    ExplicitTop = 57
    ExplicitWidth = 660
    ExplicitHeight = 341
    ClientRectBottom = 376
    ClientRectRight = 824
    inherited PageDetay: TcxTabSheet
      ExplicitWidth = 653
      ExplicitHeight = 311
      inherited Panel4: TPanel
        Width = 635
        Height = 351
        ExplicitLeft = 187
        ExplicitTop = 0
        ExplicitWidth = 466
        ExplicitHeight = 311
        inherited Panel3: TPanel
          Width = 633
          Height = 80
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 633
          ExplicitHeight = 80
          object cxLabel1: TcxLabel
            Left = 3
            Top = 25
            Caption = 'ID'
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 3
            Top = 42
            Caption = 'Grup Ad'#305
            Transparent = True
          end
          object edtKeyid: TcxTextEdit
            Left = 96
            Top = 24
            TabOrder = 2
            Width = 121
          end
          object edtGrupAdi: TcxTextEdit
            Left = 96
            Top = 45
            TabOrder = 3
            Width = 273
          end
        end
        inherited Panel5: TPanel
          Top = 89
          Width = 633
          Height = 261
          ExplicitLeft = 1
          ExplicitTop = 217
          ExplicitWidth = 464
          ExplicitHeight = 93
          inherited cxGrid1: TcxGrid
            Width = 631
            Height = 259
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 462
            ExplicitHeight = 91
            inherited gridView: TcxGridDBTableView
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.IncSearch = True
              OptionsBehavior.NavigatorHints = True
              OptionsBehavior.PullFocusing = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
              OptionsView.ScrollBars = ssHorizontal
              OptionsView.ShowEditButtons = gsebAlways
              OptionsView.GroupRowStyle = grsOffice11
              OptionsView.Indicator = True
              OptionsView.ShowColumnFilterButtons = sfbAlways
              Preview.Visible = True
              object gridViewSYSUSER_GRUPID: TcxGridDBColumn
                DataBinding.FieldName = 'SYSUSER_GRUPID'
              end
              object gridViewSYSUSERGRP_NAME: TcxGridDBColumn
                DataBinding.FieldName = 'SYSUSERGRP_NAME'
              end
            end
          end
        end
        inherited cxSplitter2: TcxSplitter
          Top = 81
          Width = 633
          ExplicitWidth = 464
        end
      end
      inherited cxSplitter1: TcxSplitter
        Height = 351
        ExplicitLeft = 177
        ExplicitTop = 0
        ExplicitHeight = 311
      end
      inherited Panel2: TPanel
        Height = 351
        ExplicitHeight = 311
        inherited btnAra: TcxButton
          Top = 290
          ExplicitTop = 250
          ExplicitWidth = 175
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 829
    ExplicitWidth = 660
    inherited GridPanel1: TGridPanel
      Width = 827
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
      ExplicitHeight = 55
      inherited BtnYeni: TcxButton
        Width = 206
        ExplicitWidth = 164
        ExplicitHeight = 53
      end
      inherited BtnKaydet: TcxButton
        Left = 207
        Width = 206
        ExplicitLeft = 165
        ExplicitWidth = 164
        ExplicitHeight = 53
      end
      inherited BtnDegistir: TcxButton
        Left = 413
        Width = 205
        ExplicitLeft = 329
        ExplicitTop = 1
        ExplicitWidth = 163
        ExplicitHeight = 53
      end
      inherited BtnSil: TcxButton
        Left = 618
        Width = 208
        OnClick = BtnSilClick
        ExplicitLeft = 492
        ExplicitWidth = 165
        ExplicitHeight = 53
      end
    end
  end
  inherited ADOQuery1: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from SYSTEM_USER_GROUPS')
    Left = 482
    Top = 132
    object ADOQuery1SYSUSER_GRUPID: TAutoIncField
      FieldName = 'SYSUSER_GRUPID'
      ReadOnly = True
    end
    object ADOQuery1SYSUSERGRP_NAME: TWideStringField
      FieldName = 'SYSUSERGRP_NAME'
      Size = 50
    end
  end
  inherited DataSource1: TDataSource
    Left = 482
    Top = 180
  end
  object ADOQueryBirim: TADOQuery
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
