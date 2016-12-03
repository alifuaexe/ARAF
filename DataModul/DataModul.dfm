object dmDataModul: TdmDataModul
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 855
  Top = 256
  Height = 283
  Width = 391
  object cnnCon: TADOConnection
    CommandTimeout = 60
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=1;Persist Security Info=True;User I' +
      'D=sa;Initial Catalog=SISTEMSILA;Data Source=ARAF\SQL2014;Use Pro' +
      'cedure for Prepare=1;Auto Translate=False;Packet Size=4096;Works' +
      'tation ID=USER-PC;Use Encryption for Data=False;Tag with column ' +
      'collation when possible=False'
    ConnectionTimeout = 60
    DefaultDatabase = 'SISTEMSILA'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 87
    Top = 25
  end
  object cnnSP: TADOConnection
    CommandTimeout = 60
    ConnectionString = 'FILE NAME=..\BIN\Sistem.udl;'
    ConnectionTimeout = 60
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 26
    Top = 26
  end
  object cnnSTG: TADOConnection
    CommandTimeout = 60
    ConnectionString = 'FILE NAME=..\BIN\BaglantiSTG.udl'
    ConnectionTimeout = 60
    LoginPrompt = False
    Provider = '..\BIN\BaglantiSTG.udl'
    Left = 128
    Top = 136
  end
  object cnnSTF: TADOConnection
    CommandTimeout = 60
    ConnectionString = 'FILE NAME=..\BIN\BaglantiSTF.udl;'
    ConnectionTimeout = 60
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 136
  end
  object cnnSTB: TADOConnection
    CommandTimeout = 60
    ConnectionString = 'FILE NAME=..\BIN\BaglantiSTB.udl;'
    ConnectionTimeout = 60
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 80
    Top = 136
  end
  object cnnERP: TADOConnection
    ConnectionString = 'FILE NAME=c:\MAS_PLUS\BIN\ERP.udl'
    LoginPrompt = False
    Provider = 'c:\MAS_PLUS\BIN\ERP.udl'
    Left = 152
    Top = 22
  end
  object Netsis: TADOConnection
    ConnectionString = 'FILE NAME=c:\MAS_PLUS\BIN\ERP.udl'
    LoginPrompt = False
    Provider = 'c:\MAS_PLUS\BIN\ERP.udl'
    Left = 225
    Top = 22
  end
end
