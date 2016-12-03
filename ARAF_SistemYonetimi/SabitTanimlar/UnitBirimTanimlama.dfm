inherited FormUnitBirimTanimlama: TFormUnitBirimTanimlama
  Caption = 'Birim Tan'#305'mlama Ekran'#305
  ClientHeight = 413
  ClientWidth = 692
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 708
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl1: TcxPageControl
    Width = 692
    Height = 356
    ExplicitWidth = 660
    ExplicitHeight = 341
    ClientRectBottom = 351
    ClientRectRight = 687
    inherited PageDetay: TcxTabSheet
      ExplicitWidth = 653
      ExplicitHeight = 311
      inherited Panel4: TPanel
        Width = 498
        Height = 326
        ExplicitWidth = 466
        ExplicitHeight = 311
        inherited Panel3: TPanel
          Width = 496
          Height = 104
          ExplicitWidth = 464
          ExplicitHeight = 104
          object cxLabel1: TcxLabel
            Left = 5
            Top = 17
            Caption = 'KEYID'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 5
            Top = 40
            Caption = 'Birim Ad'#305
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 5
            Top = 71
            Caption = 'A'#231#305'klama'
            Transparent = True
          end
        end
        inherited Panel5: TPanel
          Top = 113
          Width = 496
          Height = 212
          ExplicitWidth = 464
          ExplicitHeight = 197
          inherited cxGrid1: TcxGrid
            Width = 494
            Height = 210
            ExplicitWidth = 462
            ExplicitHeight = 195
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
              object gridViewUNIT_ID: TcxGridDBColumn
                DataBinding.FieldName = 'UNIT_ID'
              end
              object gridViewUNIT_NAME: TcxGridDBColumn
                DataBinding.FieldName = 'UNIT_NAME'
              end
              object gridViewEXPLANATION: TcxGridDBColumn
                DataBinding.FieldName = 'EXPLANATION'
              end
            end
          end
        end
        inherited cxSplitter2: TcxSplitter
          Top = 105
          Width = 496
          ExplicitTop = 105
          ExplicitWidth = 464
        end
      end
      inherited cxSplitter1: TcxSplitter
        Height = 326
        ExplicitHeight = 311
      end
      inherited Panel2: TPanel
        Height = 326
        TabOrder = 4
        ExplicitHeight = 311
        inherited btnAra: TcxButton
          Top = 265
          OnClick = btnAraClick
          ExplicitTop = 250
        end
        object edtBirimAdiAra: TcxTextEdit
          Left = 1
          Top = 44
          TabOrder = 1
          OnKeyDown = edtBirimAdiAraKeyDown
          Width = 170
        end
        object cxLabel3: TcxLabel
          Left = 1
          Top = 21
          Caption = 'Birim Ad'#305
          Transparent = True
        end
      end
      object edtKeyid: TcxTextEdit
        Left = 296
        Top = 17
        TabOrder = 2
        Width = 121
      end
      object edtBirimAdi: TcxTextEdit
        Left = 296
        Top = 44
        TabOrder = 3
        Width = 121
      end
      object edtAciklama: TcxTextEdit
        Left = 296
        Top = 71
        TabOrder = 5
        Width = 233
      end
    end
  end
  inherited Panel1: TPanel
    Width = 692
    ExplicitWidth = 660
    inherited GridPanel1: TGridPanel
      Width = 690
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
        Width = 172
        ExplicitWidth = 164
      end
      inherited BtnKaydet: TcxButton
        Left = 173
        Width = 172
        ExplicitLeft = 165
        ExplicitWidth = 164
      end
      inherited BtnDegistir: TcxButton
        Left = 345
        Width = 171
        ExplicitLeft = 329
        ExplicitWidth = 163
      end
      inherited BtnSil: TcxButton
        Left = 516
        Width = 173
        OnClick = BtnSilClick
        ExplicitLeft = 492
        ExplicitWidth = 165
      end
    end
  end
  inherited ADOQuery1: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from UNIT_DEFINITION')
    Left = 346
    Top = 212
    object ADOQuery1UNIT_ID: TAutoIncField
      FieldName = 'UNIT_ID'
      ReadOnly = True
    end
    object ADOQuery1UNIT_NAME: TWideStringField
      FieldName = 'UNIT_NAME'
      Size = 10
    end
    object ADOQuery1EXPLANATION: TWideStringField
      FieldName = 'EXPLANATION'
      Size = 50
    end
  end
  inherited DataSource1: TDataSource
    Left = 442
    Top = 220
  end
end
