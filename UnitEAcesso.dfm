object formEAcesso: TformEAcesso
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Coletek TI | Comparador de Acesso'
  ClientHeight = 362
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TDEdit: TPanel
    Left = 0
    Top = 0
    Width = 375
    Height = 105
    Align = alTop
    Color = 16744448
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 369
    object Label1: TLabel
      Left = 11
      Top = 46
      Width = 43
      Height = 14
      Caption = 'Nome 2'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Nome: TLabel
      Left = 11
      Top = 19
      Width = 43
      Height = 24
      Caption = 'Nome 1'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 29
      Top = 72
      Width = 25
      Height = 14
      Caption = 'Base'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = 14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edtNome: TEdit
      Left = 60
      Top = 16
      Width = 285
      Height = 21
      TabOrder = 0
    end
    object bLocalizar: TButton
      Left = 36
      Top = 414
      Width = 285
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 60
      Top = 43
      Width = 285
      Height = 21
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 60
      Top = 70
      Width = 93
      Height = 21
      TabOrder = 3
      Text = 'ComboBox1'
      Items.Strings = (
        'ORACLC'
        'ORALMK'
        'ORAPTK'
        'ORAPMI'
        'ORAPMD'
        'ORASTR'
        'ORACSC'
        'ORASTG'
        'ORAOLT'
        'ORALMF')
    end
    object Button1: TButton
      Left = 252
      Top = 70
      Width = 93
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 375
    Height = 257
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BASE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Width = 63
        Visible = True
      end>
  end
end
