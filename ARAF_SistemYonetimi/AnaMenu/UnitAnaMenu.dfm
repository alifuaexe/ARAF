object FormAnaMenu: TFormAnaMenu
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'FormAnaMenu'
  ClientHeight = 679
  ClientWidth = 1120
  Color = 14211247
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 0
    Width = 225
    Height = 679
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    ViewReal = 17
    ViewStyle.ColorSchemeName = 'Blue'
    object dxNavBarGroupSabitTanimlamalar: TdxNavBarGroup
      Caption = 'Sabit Tan'#305'mlamalar'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBar1ItemKullaniciGrubuTanimlama
        end
        item
          Item = dxNavBar1ItemUsersTanimla
        end
        item
          Item = dxNavBarBirimTanimlama
        end
        item
          Item = dxNavBar1ItemReceteTanimlama
        end
        item
          Item = dxNavBar1ItemOperasyonTanimlama
        end
        item
          Item = dxNavBar1ItemIsmerkeziTanimlama
        end
        item
          Item = dxNavBar1ItemIsmerkeziGrubuTanimlama
        end>
    end
    object dxNavBar1GroupStok: TdxNavBarGroup
      Caption = 'Stok'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBarUrunTanimlama
        end
        item
          Item = dxNavBarUrunTipTanimlama
        end
        item
          Item = dxNavBar1ItemStokOperasyonIliskilendirme
        end>
    end
    object dxNavBar1GroupHareketler: TdxNavBarGroup
      Caption = 'Hareketler'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBarUrunGirisi
        end
        item
          Item = dxNavBarUrunCikisi
        end>
    end
    object dxNavBar1GroupPlanlama: TdxNavBarGroup
      Caption = 'Planlama'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBar1ItemIsemriOlusturma
        end>
    end
    object dxNavBar1GroupUretimKaydi: TdxNavBarGroup
      Caption = #220'retim Kayd'#305
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBar1ItemUretimKaydi
        end>
    end
    object dxNavBarUrunTanimlama: TdxNavBarItem
      Tag = 1
      Caption = 'Stok Tan'#305'mlama'
      Hint = 'TFormUrunTanimlama'
      OnClick = dxNavBarUrunTanimlamaClick
    end
    object dxNavBarUrunGirisi: TdxNavBarItem
      Tag = 1
      Caption = 'Stok Giri'#351'i'
      Hint = 'TFormUrunGiris'
      OnClick = dxNavBarUrunGirisiClick
    end
    object dxNavBarUrunCikisi: TdxNavBarItem
      Tag = 2
      Caption = 'Stok '#199#305'k'#305#351#305
      Hint = 'TFormUnitUrunCikis'
      OnClick = dxNavBarUrunGirisiClick
    end
    object dxNavBarUrunTipTanimlama: TdxNavBarItem
      Caption = 'Stok Tipi Tan'#305'mlama'
      Hint = 'TFormUnitUrunTipTanimlama'
      OnClick = dxNavBarUrunGirisiClick
    end
    object dxNavBarBirimTanimlama: TdxNavBarItem
      Caption = 'Birim Tan'#305'mlama'
      Hint = 'TFormUnitBirimTanimlama'
      OnClick = dxNavBarUrunGirisiClick
    end
    object dxNavBar1ItemUsersTanimla: TdxNavBarItem
      Caption = 'Kullan'#305'c'#305' Tan'#305'mlama'
      Hint = 'TFormUnitKullaniciTanimlama'
      OnClick = dxNavBar1ItemUsersTanimlaClick
    end
    object dxNavBar1ItemReceteTanimlama: TdxNavBarItem
      Caption = 'Re'#231'ete Tan'#305'mlama '
      Hint = 'TFormUnitReceteTanimlama'
      OnClick = dxNavBar1ItemReceteTanimlamaClick
    end
    object dxNavBar1ItemKullaniciGrubuTanimlama: TdxNavBarItem
      Caption = 'Kullan'#305'c'#305' Grubu Tan'#305'mlama'
      Hint = 'TFormUniKullaniciGrupTanimlama'
      OnClick = dxNavBar1ItemKullaniciGrubuTanimlamaClick
    end
    object dxNavBar1ItemOperasyonTanimlama: TdxNavBarItem
      Caption = 'Operasyon Tan'#305'mlama'
      Hint = 'TFormUnitOperasyonTanimlama'
      OnClick = dxNavBar1ItemOperasyonTanimlamaClick
    end
    object dxNavBar1ItemIsmerkeziTanimlama: TdxNavBarItem
      Caption = #304#351' Merkezi Tan'#305'mlama'
      Hint = 'TFormUnitIsmerkeziTanimlama'
      OnClick = dxNavBar1ItemIsmerkeziTanimlamaClick
    end
    object dxNavBar1ItemIsmerkeziGrubuTanimlama: TdxNavBarItem
      Caption = #304#351' Merkezi Grubu Tan'#305'mlama'
      Hint = 'TFormUnitIsmerkeziGrubuTanimlama'
      OnClick = dxNavBar1ItemIsmerkeziGrubuTanimlamaClick
    end
    object dxNavBar1ItemStokOperasyonIliskilendirme: TdxNavBarItem
      Caption = 'Stok Operasyon '#304'li'#351'kilendirme'
      Hint = 'TFormUnitStokOperasyon'
      OnClick = dxNavBar1ItemStokOperasyonIliskilendirmeClick
    end
    object dxNavBar1ItemIsemriOlusturma: TdxNavBarItem
      Caption = #304#351' Emri Olu'#351'turma'
      Hint = 'TFormUnitIsEmriOlusturma'
      OnClick = dxNavBar1ItemIsemriOlusturmaClick
    end
    object dxNavBar1ItemUretimKaydi: TdxNavBarItem
      Caption = #220'retim Kayd'#305
      Hint = 'TfmGunSonu'
      OnClick = dxNavBar1ItemUretimKaydiClick
    end
  end
  object ADOConnectionMain: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=0811!!bzc;Persist Security Info=Tru' +
      'e;User ID=sa;Initial Catalog=ARAF;Data Source=192.168.1.197'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 264
    Top = 176
  end
  object IdEncoderMIME1: TIdEncoderMIME
    FillChar = '#'
    Left = 560
    Top = 24
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '#'
    Left = 648
    Top = 24
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 456
    Top = 16
  end
  object dxTabbedMDIManager1: TdxTabbedMDIManager
    Active = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.SkinName = 'DevExpressDarkStyle'
    TabProperties.CloseButtonMode = cbmActiveAndHoverTabs
    TabProperties.CloseTabWithMiddleClick = True
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.Style = 11
    Left = 336
    Top = 16
  end
  object ElasticForm1: TElasticForm
    DesignScreenWidth = 1936
    DesignScreenHeight = 1056
    DesignPixelsPerInch = 96
    DesignFormWidth = 1136
    DesignFormHeight = 718
    DesignFormClientWidth = 1120
    DesignFormClientHeight = 679
    DesignFormLeft = 0
    DesignFormTop = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Version = 1000.000000000000000000
    Left = 256
    Top = 8
  end
end