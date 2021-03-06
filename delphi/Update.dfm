object frmUpdate: TfrmUpdate
  Left = 0
  Top = 0
  Caption = 'Update Database'
  ClientHeight = 380
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    609
    380)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 150
    Width = 45
    Height = 13
    Caption = 'New Files'
  end
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 30
    Height = 13
    Caption = 'Folder'
  end
  object Label3: TLabel
    Left = 8
    Top = 359
    Width = 243
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Use control to multi-select and right click to options'
  end
  object Button1: TButton
    Left = 8
    Top = 49
    Width = 81
    Height = 25
    Caption = 'Start Update'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 80
    Width = 593
    Height = 63
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 172
    Width = 593
    Height = 185
    Ctl3D = False
    DataSource = DataSource1
    DefaultDrawing = False
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'File'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Title'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Artist'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Album'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Year'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Track'
        Visible = True
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 100
    Top = 49
    Width = 501
    Height = 25
    Step = 1
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 8
    Top = 22
    Width = 313
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object CheckBox1: TCheckBox
    Left = 332
    Top = 24
    Width = 77
    Height = 17
    Caption = 'Recursive'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object Button2: TButton
    Left = 59
    Top = 145
    Width = 81
    Height = 25
    Caption = 'Add Files'
    TabOrder = 6
    OnClick = Button2Click
  end
  object qryOptions: TZReadOnlyQuery
    Connection = frmMain.ZConnection1
    SQL.Strings = (
      'select * from options')
    Params = <>
    Left = 152
    Top = 87
    object qryOptionsid: TIntegerField
      FieldName = 'id'
    end
    object qryOptionsstart_path: TStringField
      FieldName = 'start_path'
      Size = 400
    end
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'File'
        DataType = ftString
        Size = 400
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Artist'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Album'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Year'
        DataType = ftInteger
      end
      item
        Name = 'Track'
        DataType = ftInteger
      end
      item
        Name = 'ArtistOk'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = ClientDataSet1BeforePost
    Left = 152
    Top = 189
    Data = {
      AE0000009619E0BD010000001800000007000000000003000000AE000446696C
      650200490000000100055749445448020002009001055469746C650100490000
      0001000557494454480200020032000641727469737401004900000001000557
      4944544802000200320005416C62756D01004900000001000557494454480200
      020032000459656172040001000000000005547261636B040001000000000008
      4172746973744F6B02000300000000000000}
    object ClientDataSet1File: TStringField
      FieldName = 'File'
      Size = 400
    end
    object ClientDataSet1Title: TStringField
      FieldName = 'Title'
      Size = 50
    end
    object ClientDataSet1Artist: TStringField
      FieldName = 'Artist'
      Size = 50
    end
    object ClientDataSet1Album: TStringField
      FieldName = 'Album'
      Size = 50
    end
    object ClientDataSet1Year: TIntegerField
      FieldName = 'Year'
    end
    object ClientDataSet1Track: TIntegerField
      FieldName = 'Track'
    end
    object ClientDataSet1ArtistOk: TBooleanField
      FieldName = 'ArtistOk'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 152
    Top = 241
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 241
    object S1: TMenuItem
      Caption = 'Same Artist and Album'
      OnClick = S1Click
    end
    object rytogettitle1: TMenuItem
      Caption = 'Try to get title from file name'
      OnClick = rytogettitle1Click
    end
  end
  object cdsFiles: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'path'
        DataType = ftString
        Size = 400
      end>
    IndexDefs = <
      item
        Name = 'cdsFilesIndex1'
        Fields = 'path'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'cdsFilesIndex1'
    Params = <>
    ProviderName = 'dspFiles'
    StoreDefs = True
    Left = 396
    Top = 284
    object cdsFilespath: TStringField
      FieldName = 'path'
      Size = 400
    end
  end
  object dspFiles: TDataSetProvider
    DataSet = qryFiles
    Left = 396
    Top = 236
  end
  object qryFiles: TZReadOnlyQuery
    Connection = frmMain.ZConnection1
    SQL.Strings = (
      'select path from file order by path')
    Params = <>
    Left = 396
    Top = 188
  end
  object qryFileUpd: TZQuery
    Connection = frmMain.ZConnection1
    SQL.Strings = (
      'select * from file where id = 0')
    Params = <>
    Left = 460
    Top = 188
    object qryFileUpdid: TIntegerField
      FieldName = 'id'
    end
    object qryFileUpdpath: TStringField
      FieldName = 'path'
      Size = 400
    end
    object qryFileUpdtitle: TStringField
      FieldName = 'title'
      Size = 50
    end
    object qryFileUpdid_artist: TIntegerField
      FieldName = 'id_artist'
    end
    object qryFileUpdalbum: TStringField
      FieldName = 'album'
      Size = 50
    end
    object qryFileUpdyear: TIntegerField
      FieldName = 'year'
    end
    object qryFileUpdtrack: TIntegerField
      FieldName = 'track'
    end
  end
  object dspFileUpd: TDataSetProvider
    DataSet = qryFileUpd
    Left = 460
    Top = 236
  end
  object cdsFileUpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFileUpd'
    Left = 460
    Top = 284
  end
end
