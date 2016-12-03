inherited FormReceteKarti: TFormReceteKarti
  Caption = 'Re'#231'ete Giri'#351'i Ekran'#305
  ClientHeight = 577
  ClientWidth = 1014
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 1030
  ExplicitHeight = 616
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 5
    Top = 374
    Width = 29
    Height = 13
    Caption = 'Miktar'
  end
  inherited dxRibbon1: TdxRibbon
    Width = 1014
    ExplicitWidth = 1014
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited dxRibbonBackstageView1: TdxRibbonBackstageView
    Left = 8
    Top = 174
    Buttons = <
      item
      end
      item
      end>
    ExplicitLeft = 8
    ExplicitTop = 174
    inherited dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet
      inherited cxLabel1: TcxLabel
        Style.IsFontAssigned = True
      end
    end
  end
  inherited DurumBar: TdxRibbonStatusBar
    Top = 554
    Width = 1014
    ExplicitTop = 554
    ExplicitWidth = 1014
  end
  inherited cxPageControl1: TcxPageControl
    Width = 1014
    Height = 399
    ExplicitTop = 131
    ExplicitWidth = 1014
    ExplicitHeight = 423
    ClientRectBottom = 394
    ClientRectRight = 1009
    inherited PageDetay: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 25
      ExplicitWidth = 1007
      ExplicitHeight = 369
      object Label1: TLabel
        Left = 3
        Top = 41
        Width = 10
        Height = 13
        Caption = 'Id'
      end
      object Label2: TLabel
        Left = 3
        Top = 68
        Width = 48
        Height = 13
        Caption = 'Stok Kodu'
      end
      object Label3: TLabel
        Left = 3
        Top = 100
        Width = 39
        Height = 13
        Caption = 'Stok Ad'#305
      end
      object Label4: TLabel
        Left = 3
        Top = 132
        Width = 61
        Height = 13
        Caption = 'Re'#231'ete Kodu'
      end
      object Label5: TLabel
        Left = 3
        Top = 164
        Width = 52
        Height = 13
        Caption = 'Re'#231'ete Ad'#305
      end
      object Label6: TLabel
        Left = 3
        Top = 228
        Width = 29
        Height = 13
        Caption = 'Miktar'
      end
      object Label8: TLabel
        Left = 3
        Top = 194
        Width = 18
        Height = 13
        Caption = 'S'#305'ra'
      end
      object edtID: TcxTextEdit
        Left = 79
        Top = 38
        TabOrder = 0
        Width = 121
      end
      object edtStokKodu: TcxButtonEdit
        Left = 79
        Top = 65
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end
          item
            Caption = 'Sil'
            Kind = bkText
          end>
        Properties.OnButtonClick = edtUrunKoduPropertiesButtonClick
        TabOrder = 1
        Width = 273
      end
      object edtStokAdi: TcxButtonEdit
        Left = 79
        Top = 97
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end
          item
            Caption = 'Sil'
            Kind = bkText
          end>
        Properties.OnButtonClick = edtStokAdiPropertiesButtonClick
        TabOrder = 2
        Width = 273
      end
      object edtReceteKodu: TcxButtonEdit
        Left = 79
        Top = 129
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end
          item
            Caption = 'Sil'
            Kind = bkText
          end>
        Properties.OnButtonClick = edtReceteKoduPropertiesButtonClick
        TabOrder = 3
        Width = 273
      end
      object edtReceteAdi: TcxButtonEdit
        Left = 79
        Top = 161
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end
          item
            Caption = 'Sil'
            Kind = bkText
          end>
        Properties.OnButtonClick = edtReceteAdiPropertiesButtonClick
        TabOrder = 4
        Width = 273
      end
      object edtMiktar: TcxCurrencyEdit
        Left = 79
        Top = 225
        Properties.DisplayFormat = ',0.00;-,0.00'
        TabOrder = 5
        Width = 121
      end
      object edtSira: TcxCurrencyEdit
        Left = 79
        Top = 188
        Properties.AssignedValues.DisplayFormat = True
        Properties.DecimalPlaces = 0
        TabOrder = 6
        Width = 121
      end
    end
    inherited PageListe: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 25
      ExplicitWidth = 1007
      ExplicitHeight = 393
      inherited cxGrid2: TcxGrid
        Width = 814
        Height = 369
        ExplicitLeft = 193
        ExplicitTop = 0
        ExplicitWidth = 814
        ExplicitHeight = 393
        inherited cxGridDBTableView: TcxGridDBTableView
          DataController.DataSource = dsList
          DataController.DetailKeyFieldNames = 'ITEM_ID'
          DataController.OnDetailHasChildren = cxGridDBTableViewDataControllerDetailHasChildren
          FilterRow.Visible = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.BestFitMaxRecordCount = 10
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.Indicator = True
          OptionsView.ShowColumnFilterButtons = sfbAlways
          object cxGrid1DBTableView1ITEM_ID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'ITEM_ID'
          end
          object cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn
            Caption = 'STOK KODU'
            DataBinding.FieldName = 'ITEM_CODE'
          end
          object cxGrid1DBTableView1ITEM_NAME: TcxGridDBColumn
            Caption = 'STOK ADI'
            DataBinding.FieldName = 'ITEM_NAME'
          end
          object cxGrid1DBTableView1UNIT: TcxGridDBColumn
            Caption = 'B'#304'R'#304'M'
            DataBinding.FieldName = 'UNIT'
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            Caption = 'DURUM'
            DataBinding.FieldName = 'STATUS'
          end
          object cxGrid1DBTableView1TYPE: TcxGridDBColumn
            Caption = 'T'#304'P'#304
            DataBinding.FieldName = 'TYPE'
          end
          object cxGrid1DBTableView1ERP_ID: TcxGridDBColumn
            DataBinding.FieldName = 'ERP_ID'
          end
        end
        object cxGrid2DBTableViewReceteKirilim1: TcxGridDBTableView [1]
          OnDblClick = cxGrid2DBTableViewReceteKirilim1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.OnDetailFirst = cxGrid2DBTableViewReceteKirilim1DataControllerDataModeControllerDetailFirst
          DataController.DataSource = DataSource1
          DataController.DetailKeyFieldNames = 'ITEM_ID'
          DataController.KeyFieldNames = 'ITEM_ID'
          DataController.MasterKeyFieldNames = 'ITEM_ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxGrid2DBTableViewReceteKirilim1ITEM_TREE_ID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'ITEM_TREE_ID'
          end
          object cxGrid2DBTableViewReceteKirilim1MATERIAL_CODE: TcxGridDBColumn
            Caption = 'RE'#199'ETE KODU'
            DataBinding.FieldName = 'MATERIAL_CODE'
          end
          object cxGrid2DBTableViewReceteKirilim1MATERIAL_NAME: TcxGridDBColumn
            Caption = 'RE'#199'ETE ADI'
            DataBinding.FieldName = 'MATERIAL_NAME'
          end
          object cxGrid2DBTableViewReceteKirilim1ORDER: TcxGridDBColumn
            Caption = 'SIRA'
            DataBinding.FieldName = 'ORDER'
          end
          object cxGrid2DBTableViewReceteKirilim1AMOUNT: TcxGridDBColumn
            Caption = 'M'#304'KTAR'
            DataBinding.FieldName = 'AMOUNT'
          end
        end
        object cxGrid2DBTableViewReceteKirilim2: TcxGridDBTableView [2]
          OnDblClick = cxGrid2DBTableViewReceteKirilim2DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.Indicator = True
          object cxGrid2DBTableViewReceteKirilim2ITEM_TREE_ID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'ITEM_TREE_ID'
          end
          object cxGrid2DBTableViewReceteKirilim2MATERIAL_CODE: TcxGridDBColumn
            Caption = 'RE'#199'ETE KODU'
            DataBinding.FieldName = 'MATERIAL_CODE'
          end
          object cxGrid2DBTableViewReceteKirilim2MATERIAL_NAME: TcxGridDBColumn
            Caption = 'RE'#199'ETE ADI'
            DataBinding.FieldName = 'MATERIAL_NAME'
          end
          object cxGrid2DBTableViewReceteKirilim2ORDER: TcxGridDBColumn
            Caption = 'SIRA'
            DataBinding.FieldName = 'ORDER'
          end
          object cxGrid2DBTableViewReceteKirilim2AMOUNT: TcxGridDBColumn
            Caption = 'M'#304'KTAR'
            DataBinding.FieldName = 'AMOUNT'
          end
        end
        inherited cxGridLevel1: TcxGridLevel
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableViewReceteKirilim1
            object cxGrid2Level2: TcxGridLevel
              GridView = cxGrid2DBTableViewReceteKirilim2
            end
          end
        end
      end
      inherited Panel1: TPanel
        Height = 369
        ExplicitHeight = 393
        object Label9: TLabel [0]
          Left = 16
          Top = 21
          Width = 48
          Height = 13
          Caption = 'Stok Kodu'
        end
        object Label10: TLabel [1]
          Left = 16
          Top = 69
          Width = 39
          Height = 13
          Caption = 'Stok Ad'#305
        end
        inherited cxSplitter1: TcxSplitter
          Height = 340
          ExplicitHeight = 364
        end
        object edtAraStokKodu: TcxTextEdit [3]
          Left = 16
          Top = 40
          TabOrder = 1
          Width = 121
        end
        object edtAraStokAdi: TcxTextEdit [4]
          Left = 16
          Top = 88
          TabOrder = 2
          Width = 121
        end
        inherited btnAra: TcxButton
          Top = 341
          TabOrder = 3
          OnClick = btnAraClick
          ExplicitTop = 365
        end
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar3: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientWidth = 56
      FloatClientHeight = 216
    end
  end
  inherited qryList: TADOQuery
    Active = True
    CursorType = ctStatic
    AfterScroll = qryListAfterScroll
    SQL.Strings = (
      'select top 500 * from ITEMS  where 1=1'
      '')
    Left = 816
    Top = 232
    object qryListITEM_ID: TAutoIncField
      FieldName = 'ITEM_ID'
      ReadOnly = True
    end
    object qryListITEM_CODE: TWideStringField
      FieldName = 'ITEM_CODE'
      Size = 50
    end
    object qryListITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object qryListUNIT: TWideMemoField
      FieldName = 'UNIT'
      BlobType = ftWideMemo
    end
    object qryListSTATUS: TFloatField
      FieldName = 'STATUS'
    end
    object qryListTYPE: TWideStringField
      FieldName = 'TYPE'
      Size = 50
    end
    object qryListERP_ID: TIntegerField
      FieldName = 'ERP_ID'
    end
  end
  inherited dsList: TDataSource
    Left = 856
    Top = 240
  end
  object qryReceteKirilim1: TADOQuery
    Connection = FormArafSistemYonetimi.ADOBaglanti
    CursorType = ctStatic
    AfterScroll = qryReceteKirilim1AfterScroll
    DataSource = dsList
    Parameters = <
      item
        Name = 'ITEM_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ARF_W_ITEM_TREE'
      'where ITEM_ID=:ITEM_ID')
    Left = 816
    Top = 296
    object qryReceteKirilim1ITEM_TREE_ID: TIntegerField
      FieldName = 'ITEM_TREE_ID'
    end
    object qryReceteKirilim1ITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object qryReceteKirilim1ITEM_CODE: TWideStringField
      FieldName = 'ITEM_CODE'
      Size = 50
    end
    object qryReceteKirilim1ITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object qryReceteKirilim1MATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object qryReceteKirilim1MATERIAL_CODE: TWideStringField
      FieldName = 'MATERIAL_CODE'
      Size = 50
    end
    object qryReceteKirilim1MATERIAL_NAME: TWideStringField
      FieldName = 'MATERIAL_NAME'
      Size = 50
    end
    object qryReceteKirilim1ORDER: TIntegerField
      FieldName = 'ORDER'
    end
    object qryReceteKirilim1AMOUNT: TFMTBCDField
      FieldName = 'AMOUNT'
      Precision = 18
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = qryReceteKirilim1
    Left = 856
    Top = 296
  end
  object qryReceteKirilim2: TADOQuery
    Connection = FormArafSistemYonetimi.ADOBaglanti
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ARF_W_ITEM_TREE'
      ' WHERE '
      '')
    Left = 816
    Top = 360
    object qryReceteKirilim2ITEM_TREE_ID: TIntegerField
      FieldName = 'ITEM_TREE_ID'
    end
    object qryReceteKirilim2ITEM_ID: TIntegerField
      FieldName = 'ITEM_ID'
    end
    object qryReceteKirilim2ITEM_CODE: TWideStringField
      FieldName = 'ITEM_CODE'
      Size = 50
    end
    object qryReceteKirilim2ITEM_NAME: TWideStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object qryReceteKirilim2MATERIAL_ID: TIntegerField
      FieldName = 'MATERIAL_ID'
    end
    object qryReceteKirilim2MATERIAL_CODE: TWideStringField
      FieldName = 'MATERIAL_CODE'
      Size = 50
    end
    object qryReceteKirilim2MATERIAL_NAME: TWideStringField
      FieldName = 'MATERIAL_NAME'
      Size = 50
    end
    object qryReceteKirilim2ORDER: TIntegerField
      FieldName = 'ORDER'
    end
    object qryReceteKirilim2AMOUNT: TFMTBCDField
      FieldName = 'AMOUNT'
      Precision = 18
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = qryReceteKirilim2
    Left = 856
    Top = 360
  end
end
