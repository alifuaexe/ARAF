inherited FormUnitOperasyonTanimlama: TFormUnitOperasyonTanimlama
  Caption = 'Operasyon Tan'#305'mlama Ekran'#305
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
      ExplicitLeft = 2
      ExplicitTop = 25
      ExplicitWidth = 653
      ExplicitHeight = 311
      inherited Panel4: TPanel
        Width = 466
        Height = 311
        ExplicitWidth = 466
        ExplicitHeight = 311
        inherited Panel3: TPanel
          Width = 464
          Height = 106
          ExplicitWidth = 464
          ExplicitHeight = 106
          object Label1: TLabel
            Left = 5
            Top = 19
            Width = 11
            Height = 13
            Caption = 'ID'
          end
          object Label2: TLabel
            Left = 5
            Top = 43
            Width = 80
            Height = 13
            Caption = 'Operasyon Kodu'
          end
          object Label3: TLabel
            Left = 5
            Top = 67
            Width = 71
            Height = 13
            Caption = 'Operasyon Ad'#305
          end
        end
        inherited Panel5: TPanel
          Top = 115
          Width = 464
          Height = 195
          ExplicitTop = 115
          ExplicitWidth = 464
          ExplicitHeight = 195
          inherited cxGrid1: TcxGrid
            Width = 462
            Height = 193
            ExplicitWidth = 462
            ExplicitHeight = 193
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
              object gridViewOP_ID: TcxGridDBColumn
                Caption = 'Id'
                DataBinding.FieldName = 'OP_ID'
                Width = 49
              end
              object gridViewOP_CODE: TcxGridDBColumn
                Caption = 'Kodu'
                DataBinding.FieldName = 'OP_CODE'
                Width = 66
              end
              object gridViewOP_NAME: TcxGridDBColumn
                Caption = 'Ad'#305
                DataBinding.FieldName = 'OP_NAME'
                Width = 66
              end
            end
          end
        end
        inherited cxSplitter2: TcxSplitter
          Top = 107
          Width = 464
          ExplicitTop = 107
          ExplicitWidth = 464
        end
      end
      inherited cxSplitter1: TcxSplitter
        Height = 311
        ExplicitHeight = 311
      end
      inherited Panel2: TPanel
        Height = 311
        TabOrder = 4
        ExplicitHeight = 311
        inherited btnAra: TcxButton
          Top = 250
          OnClick = btnAraClick
          ExplicitTop = 250
        end
        object edtOperasyonKoduAra: TcxTextEdit
          Left = 1
          Top = 44
          TabOrder = 1
          OnKeyDown = edtOperasyonKoduAraKeyDown
          Width = 170
        end
        object cxLabel3: TcxLabel
          Left = 1
          Top = 21
          Caption = 'Operasyon Kodu'
          Transparent = True
        end
      end
      object edtKeyid: TcxTextEdit
        Left = 296
        Top = 17
        TabOrder = 2
        Width = 121
      end
      object edtOperasyonKodu: TcxTextEdit
        Left = 296
        Top = 41
        TabOrder = 3
        Width = 233
      end
      object edtOperasyonAdi: TcxTextEdit
        Left = 296
        Top = 65
        TabOrder = 5
        Width = 233
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
      inherited BtnKaydet: TcxButton
        ExplicitLeft = 165
        ExplicitTop = 1
        ExplicitWidth = 164
        ExplicitHeight = 53
      end
      inherited BtnDegistir: TcxButton
        ExplicitLeft = 329
        ExplicitTop = 1
        ExplicitWidth = 163
        ExplicitHeight = 53
      end
      inherited BtnSil: TcxButton
        OnClick = BtnSilClick
        ExplicitLeft = 492
        ExplicitTop = 1
        ExplicitWidth = 165
        ExplicitHeight = 53
      end
      inherited BtnYeni: TcxButton
        ExplicitLeft = 1
        ExplicitWidth = 164
        ExplicitHeight = 53
      end
    end
  end
  inherited ADOQuery1: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from OPERATIONS')
    Left = 554
    Top = 92
    object ADOQuery1OP_ID: TAutoIncField
      FieldName = 'OP_ID'
      ReadOnly = True
    end
    object ADOQuery1OP_CODE: TWideStringField
      FieldName = 'OP_CODE'
      Size = 50
    end
    object ADOQuery1OP_NAME: TWideStringField
      FieldName = 'OP_NAME'
      Size = 50
    end
  end
  inherited DataSource1: TDataSource
    Left = 618
    Top = 92
  end
end
