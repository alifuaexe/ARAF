inherited FormUniKullaniciGrupTanimlama: TFormUniKullaniciGrupTanimlama
  Caption = 'Kullan'#305'c'#305' Grup Tan'#305'mlama'
  ClientHeight = 438
  ClientWidth = 829
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 845
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 829
    Height = 381
    ExplicitWidth = 829
    ExplicitHeight = 381
    ClientRectBottom = 376
    ClientRectRight = 824
    inherited PageDetay: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 25
      ExplicitWidth = 822
      ExplicitHeight = 351
      inherited Panel4: TPanel
        Width = 635
        Height = 351
        ExplicitWidth = 635
        ExplicitHeight = 351
        inherited Panel3: TPanel
          Width = 633
          Height = 80
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
          ExplicitTop = 89
          ExplicitWidth = 633
          ExplicitHeight = 261
          inherited cxGrid1: TcxGrid
            Width = 631
            Height = 259
            ExplicitWidth = 631
            ExplicitHeight = 259
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
              object gridViewSYSUSER_GRUPID: TcxGridDBColumn
                Caption = 'Grup Id'
                DataBinding.FieldName = 'SYSUSER_GRUPID'
              end
              object gridViewSYSUSERGRP_NAME: TcxGridDBColumn
                Caption = 'Grup '#304'smi'
                DataBinding.FieldName = 'SYSUSERGRP_NAME'
              end
            end
          end
        end
        inherited cxSplitter2: TcxSplitter
          Top = 81
          Width = 633
          ExplicitTop = 81
          ExplicitWidth = 633
        end
      end
      inherited cxSplitter1: TcxSplitter
        Height = 351
        ExplicitHeight = 351
      end
      inherited Panel2: TPanel
        Height = 351
        ExplicitHeight = 351
        inherited btnAra: TcxButton
          Top = 290
          ExplicitTop = 290
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 829
    ExplicitWidth = 829
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
      ExplicitWidth = 827
      inherited BtnKaydet: TcxButton
        ExplicitLeft = 207
        ExplicitTop = 1
        ExplicitWidth = 206
        ExplicitHeight = 53
      end
      inherited BtnDegistir: TcxButton
        ExplicitLeft = 413
        ExplicitTop = 1
        ExplicitWidth = 205
        ExplicitHeight = 53
      end
      inherited BtnSil: TcxButton
        OnClick = BtnSilClick
        ExplicitLeft = 618
        ExplicitTop = 1
        ExplicitWidth = 208
        ExplicitHeight = 53
      end
      inherited BtnYeni: TcxButton
        ExplicitLeft = 1
        ExplicitWidth = 206
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
