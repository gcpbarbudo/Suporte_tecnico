object formEBase: TformEBase
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Coletek TI | Espelhamento Base'
  ClientHeight = 368
  ClientWidth = 332
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TDEdit: TPanel
    Left = 0
    Top = 0
    Width = 332
    Height = 105
    Align = alTop
    Color = 16744448
    ParentBackground = False
    TabOrder = 0
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
      Height = 14
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
    object edtNome1: TEdit
      Left = 60
      Top = 16
      Width = 237
      Height = 21
      TabOrder = 0
      OnChange = edtNome1Change
    end
    object bLocalizar: TButton
      Left = 36
      Top = 414
      Width = 285
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
    end
    object edtNome2: TEdit
      Left = 60
      Top = 43
      Width = 237
      Height = 21
      TabOrder = 2
      OnChange = edtNome1Change
    end
    object Button1: TButton
      Left = 204
      Top = 70
      Width = 93
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 105
    Width = 332
    Height = 263
    Align = alClient
    DataSource = DM.dsEBase
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
