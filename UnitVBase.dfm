object formVBase: TformVBase
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Coletek TI | Verifica'#231#227'o de Base'
  ClientHeight = 341
  ClientWidth = 333
  Color = clBtnFace
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
    Width = 333
    Height = 89
    Align = alTop
    Color = 16744448
    ParentBackground = False
    TabOrder = 0
    object Nome: TLabel
      Left = 11
      Top = 22
      Width = 32
      Height = 14
      Caption = 'Nome'
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
      Left = 49
      Top = 20
      Width = 259
      Height = 21
      TabOrder = 0
      OnClick = edtNomeClick
    end
    object bLocalizar: TButton
      Left = 11
      Top = 47
      Width = 297
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = bLocalizarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 333
    Height = 252
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 331
      Height = 250
      Align = alClient
      DataSource = DM.dsVBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
          Width = 216
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Visible = True
        end>
    end
  end
end
