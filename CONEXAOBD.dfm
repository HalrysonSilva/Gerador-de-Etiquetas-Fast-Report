object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 703
  Width = 1030
  object ConDados: TUniConnection
    ProviderName = 'SQL Server'
    Port = 1433
    Database = 'Servsic'
    Username = 'sa'
    Server = '.\delphi'
    ConnectDialog = UniConnectDialog1
    LoginPrompt = False
    Left = 24
    Top = 24
    EncryptedPassword = 'CEFFCDFFCCFF'
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 24
    Top = 144
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 16
    Top = 208
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 24
    Top = 80
  end
  object DSQRYSELECIONAPRODUTO: TDataSource
    DataSet = QRYSELECIONAPRODUTOS
    Left = 32
    Top = 472
  end
  object QRYSELECIONAPRODUTOS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      
        'SELECT CODINTERNO, PRODUTO, QUANTIDADE, PRECOVENDA, UNIDADE, PRP' +
        'RAZO '
      'FROM TABEST1 '
      'WHERE CODIGO LIKE :Codigo '
      '   OR CODINTERNO LIKE :CodInterno '
      '   OR PRODUTO LIKE :Produto')
    Left = 160
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CodInterno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Produto'
        Value = nil
      end>
  end
  object QRYADCIONAPRODUTO: TUniQuery
    Connection = ConDados
    Left = 152
    Top = 96
  end
  object DSQRYADCIONAPRODUTO: TDataSource
    DataSet = QRYADCIONAPRODUTO
    Left = 48
    Top = 400
  end
  object QRYULTIMOCONTROLE: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      
        'SELECT CODINTERNO, PRODUTO, QUANTIDADE, PRECOVENDA, UNIDADE, PRP' +
        'RAZO '
      'FROM TABEST1 '
      'WHERE CODIGO LIKE :Codigo '
      '   OR CODINTERNO LIKE :CodInterno '
      '   OR PRODUTO LIKE :Produto')
    Left = 152
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CodInterno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Produto'
        Value = nil
      end>
  end
  object DSdbtabetiq: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = True
    FieldAliases.Strings = (
      'Controle=Controle'
      'Codigo=Codigo'
      'CodInterno=CodInterno'
      'Produto=Produto'
      'PrecoVenda=PrecoVenda'
      'Quantidade=Quantidade'
      'OBS=OBS'
      'local=local'
      'LkItem=LkItem'
      'Tamanho=Tamanho'
      'Cor=Cor'
      'Preco2=Preco2'
      'Preco3=Preco3'
      'Preco4=Preco4'
      'IdEmpresa=IdEmpresa'
      'Empresa=Empresa'
      'Data=Data'
      'LkUsuario=LkUsuario'
      'Usuario=Usuario')
    DataSet = QRYTABETIQ
    BCDToCurrency = False
    Left = 312
    Top = 24
  end
  object QRYTABETIQ: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT * FROM TABETIQ')
    Left = 152
    Top = 224
  end
  object ETIQBOBINA80X30MM: TfrxReport
    Version = '6.4.13'
    DataSet = DSdbtabetiq
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45784.674392708300000000
    ReportOptions.LastChange = 45826.431271111110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 24
    Datasets = <
      item
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 77.000000000000000000
      PaperHeight = 28.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      MirrorMargins = True
      BinOtherPages = 1
      Frame.Typ = []
      MirrorMode = []
      object frxDBDataset1CodInterno: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 128.504020000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'CodInterno'
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."CodInterno"]')
      end
      object frxDBDataset1PrecoVenda1: TfrxMemoView
        IndexTag = 1
        Align = baLeft
        AllowVectorExport = True
        Left = 101.000000000000000000
        Top = 26.456710000000000000
        Width = 158.740260000000000000
        Height = 41.574830000000000000
        DataField = 'PrecoVenda'
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        DisplayFormat.DecimalSeparator = ','
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[frxDBDataset1."PrecoVenda"]')
        ParentFont = False
      end
      object frxDBDataset1Produto: TfrxMemoView
        IndexTag = 1
        Align = baLeft
        AllowVectorExport = True
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        DataField = 'Produto'
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Produto"]')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        Align = baLeft
        AllowVectorExport = True
        Top = 30.236240000000000000
        Width = 101.000000000000000000
        Height = 45.354360000000000000
        BarType = bcCodeCodabar
        DataField = 'CodInterno'
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
      end
    end
  end
  object ETIQ2PRECO105x30mm: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45784.674392708300000000
    ReportOptions.LastChange = 45784.674392708300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 88
    Datasets = <
      item
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 105.000000000000000000
      PaperHeight = 30.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 377.953000000000000000
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Produto1: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'Produto'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Produto"]')
          ParentFont = False
        end
        object frxDBDataset1PrecoVenda: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          DataField = 'PrecoVenda'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PrecoVenda"]')
          ParentFont = False
        end
        object frxDBDataset1Preco2: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          DataField = 'Preco2'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Preco2"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 60.472480000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dinheiro / Pix')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cart'#227'o')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Align = baRight
          AllowVectorExport = True
          Left = 276.953000000000000000
          Top = 26.456710000000000000
          Width = 101.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCodeCodabar
          DataField = 'CodInterno'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
        end
      end
    end
  end
  object QRYLIMPATABETIQ: TUniQuery
    Connection = ConDados
    Left = 152
    Top = 296
  end
  object ETIQPRUNICO105X30mm: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45784.674392708300000000
    ReportOptions.LastChange = 45817.360754293980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 144
    Datasets = <
      item
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 30.000000000000000000
      PaperSize = 256
      LeftMargin = 2.500000000000000000
      RightMargin = 2.500000000000000000
      TopMargin = 2.500000000000000000
      BottomMargin = 2.500000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 359.055350000000000000
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Produto1: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'Produto'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Produto"]')
          ParentFont = False
        end
        object BarCode1: TfrxBarCodeView
          Align = baLeft
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 26.456710000000000000
          Width = 101.000000000000000000
          Height = 45.354360000000000000
          BarType = bcCodeCodabar
          DataField = 'CodInterno'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
        end
        object frxDBDataset1PrecoVenda: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 181.417440000000000000
          Height = 45.354360000000000000
          DataField = 'PrecoVenda'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PrecoVenda"]')
          ParentFont = False
        end
      end
    end
  end
  object ETIQ3CL30X20mm: TfrxReport
    Version = '6.4.13'
    DataSet = DSdbtabetiq
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45784.674392708300000000
    ReportOptions.LastChange = 45846.526487743100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 208
    Datasets = <
      item
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 30.000000000000000000
      PaperHeight = 20.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      RightMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      MirrorMargins = True
      ColumnWidth = 30.800000000000000000
      BinOtherPages = 1
      Frame.Typ = []
      MirrorMode = []
      object frxDBDataset1CodInterno: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 128.504020000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataField = 'CodInterno'
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."CodInterno"]')
      end
      object frxDBDataset1Produto: TfrxMemoView
        IndexTag = 1
        Align = baLeft
        AllowVectorExport = True
        Width = 113.385900000000000000
        Height = 7.559060000000000000
        DataField = 'Produto'
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -5
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Produto"]')
        ParentFont = False
      end
      object frxDBDataset1PrecoVenda: TfrxMemoView
        IndexTag = 1
        Align = baWidth
        AllowVectorExport = True
        Top = 11.338590000000000000
        Width = 105.826840000000000000
        Height = 26.456710000000000000
        DataField = 'PrecoVenda'
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset1."PrecoVenda"]')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        Align = baWidth
        AllowVectorExport = True
        Top = 37.795300000000000000
        Width = 101.000000000000000000
        Height = 30.236240000000000000
        BarType = bcCodeCodabar
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -5
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45784.674392708300000000
    ReportOptions.LastChange = 45882.448191006940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 272
    Datasets = <
      item
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -7
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 8.000000000000000000
      RightMargin = 8.000000000000000000
      TopMargin = 16.000000000000000000
      MirrorMargins = True
      Columns = 3
      ColumnWidth = 67.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '67'
        '133,90')
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 253.228510000000000000
        AllowSplit = True
        Columns = 3
        ColumnWidth = 250.582677165354000000
        ColumnGap = 1.889763779527560000
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 96.000000000000000000
        Top = 41.574830000000000000
        Width = 253.228510000000000000
        Columns = 3
        ColumnWidth = 258.897637795276000000
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object BarCode2: TfrxBarCodeView
          Align = baLeft
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 101.000000000000000000
          Height = 37.795300000000000000
          BarType = bcCodeCodabar
          DataField = 'CodInterno'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 26.456710000000000000
          Width = 93.354391000000000000
          Height = 37.795300000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CALCE BEM'
            'MAGAZINE')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 60.472480000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'PrecoVenda'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PrecoVenda"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Clipped = False
          DataField = 'Produto'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Produto"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 60.472480000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pre'#231'o:')
          ParentFont = False
        end
      end
    end
  end
  object ETIQ7CL26X15mm: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45784.674392708300000000
    ReportOptions.LastChange = 45876.647694074080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 336
    Datasets = <
      item
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 8.000000000000000000
      RightMargin = 8.000000000000000000
      TopMargin = 16.000000000000000000
      MirrorMargins = True
      Columns = 7
      ColumnWidth = 28.600000000000000000
      ColumnPositions.Strings = (
        '0'
        '28,60'
        '57,10'
        '85,70'
        '114,20'
        '142,80'
        '171,30')
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 108.094558000000000000
        AllowSplit = True
        Columns = 7
        ColumnWidth = 105.070866141732000000
        ColumnGap = 1.889763779527560000
        DataSet = DSdbtabetiq
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pre'#231'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          DataField = 'PrecoVenda'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PrecoVenda"]')
          ParentFont = False
        end
        object frxDBDataset1CodInterno: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DataField = 'CodInterno'
          DataSet = DSdbtabetiq
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CodInterno"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'COD:')
          ParentFont = False
        end
      end
    end
  end
end
