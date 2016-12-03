inherited FormUnitUrunTipTanimlama: TFormUnitUrunTipTanimlama
  Caption = #220'r'#252'n Tipi Tan'#305'mlama'
  ClientHeight = 583
  ClientWidth = 889
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 905
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 889
    Height = 526
    ExplicitWidth = 889
    ExplicitHeight = 526
    ClientRectBottom = 521
    ClientRectRight = 884
    inherited PageDetay: TcxTabSheet
      ExplicitWidth = 882
      ExplicitHeight = 496
      inherited Panel4: TPanel
        Width = 695
        Height = 496
        ExplicitWidth = 695
        ExplicitHeight = 496
        inherited Panel3: TPanel
          Width = 693
          ExplicitWidth = 693
          object cxLabel1: TcxLabel
            Left = 3
            Top = 25
            Caption = 'KEYID'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 3
            Top = 52
            Caption = 'Tip Kodu'
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 3
            Top = 75
            Caption = 'Tip Adi'
            Transparent = True
          end
          object edtKeyid: TcxTextEdit
            Left = 96
            Top = 24
            TabOrder = 3
            Width = 121
          end
          object edtUruntipKodu: TcxTextEdit
            Left = 96
            Top = 51
            TabOrder = 4
            Width = 121
          end
          object edtUruntipAdi: TcxTextEdit
            Left = 96
            Top = 78
            TabOrder = 5
            Width = 273
          end
        end
        inherited Panel5: TPanel
          Width = 693
          Height = 278
          ExplicitWidth = 693
          ExplicitHeight = 278
          inherited cxGrid1: TcxGrid
            Width = 691
            Height = 276
            ExplicitWidth = 691
            ExplicitHeight = 276
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
              object gridViewITEM_GRP_ID: TcxGridDBColumn
                DataBinding.FieldName = 'ITEM_GRP_ID'
              end
              object gridViewITEM_GRP_CODE: TcxGridDBColumn
                DataBinding.FieldName = 'ITEM_GRP_CODE'
                Width = 84
              end
              object gridViewITEM_GRP_NAME: TcxGridDBColumn
                DataBinding.FieldName = 'ITEM_GRP_NAME'
                Width = 148
              end
            end
          end
        end
        inherited cxSplitter2: TcxSplitter
          Width = 693
          ExplicitWidth = 693
        end
      end
      inherited cxSplitter1: TcxSplitter
        Height = 496
        ExplicitHeight = 496
      end
      inherited Panel2: TPanel
        Height = 496
        ExplicitHeight = 496
        inherited btnAra: TcxButton
          Top = 435
          ExplicitTop = 435
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 889
    ExplicitWidth = 889
    inherited GridPanel1: TGridPanel
      Width = 887
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
      ExplicitWidth = 887
      inherited BtnYeni: TcxButton
        Width = 221
        ExplicitWidth = 221
      end
      inherited BtnKaydet: TcxButton
        Left = 222
        Width = 221
        ExplicitLeft = 222
        ExplicitWidth = 221
      end
      inherited BtnDegistir: TcxButton
        Left = 443
        Width = 220
        ExplicitLeft = 443
        ExplicitWidth = 220
      end
      inherited BtnSil: TcxButton
        Left = 663
        Width = 223
        OnClick = BtnSilClick
        ExplicitLeft = 663
        ExplicitWidth = 223
      end
    end
  end
  inherited ADOQuery1: TADOQuery
    Active = True
    CursorType = ctStatic
    SQL.Strings = (
      'select * from ITEM_GROUP')
    Left = 482
    Top = 132
    object ADOQuery1ITEM_GRP_ID: TAutoIncField
      FieldName = 'ITEM_GRP_ID'
      ReadOnly = True
    end
    object ADOQuery1ITEM_GRP_CODE: TWideStringField
      FieldName = 'ITEM_GRP_CODE'
      Size = 50
    end
    object ADOQuery1ITEM_GRP_NAME: TWideStringField
      FieldName = 'ITEM_GRP_NAME'
      Size = 50
    end
  end
  inherited DataSource1: TDataSource
    Left = 474
    Top = 188
  end
end
