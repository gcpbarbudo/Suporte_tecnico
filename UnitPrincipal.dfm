object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Suporte TI | Coletek'
  ClientHeight = 194
  ClientWidth = 269
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
    Width = 269
    Height = 194
    Align = alClient
    Color = 16744448
    ParentBackground = False
    TabOrder = 0
    object btBaseUsuario: TBitBtn
      Left = 15
      Top = 15
      Width = 116
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Chamados'
      TabOrder = 0
      OnClick = btBaseUsuarioClick
    end
    object btEspelhoAcesso: TBitBtn
      Left = 140
      Top = 128
      Width = 116
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Espelhamento Base'
      TabOrder = 1
      OnClick = btEspelhoAcessoClick
    end
    object btEspelhoBase: TBitBtn
      Left = 140
      Top = 72
      Width = 116
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Espelhamento Acesso'
      TabOrder = 2
      OnClick = btEspelhoBaseClick
    end
    object btLogEmail: TBitBtn
      Left = 15
      Top = 72
      Width = 116
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Log Email'
      TabOrder = 3
      OnClick = btLogEmailClick
    end
    object btSair: TBitBtn
      Left = 15
      Top = 128
      Width = 116
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btSairClick
    end
    object btVerifBase: TBitBtn
      Left = 140
      Top = 15
      Width = 116
      Height = 49
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Verifica'#231#227'o Base'
      TabOrder = 5
      OnClick = btVerifBaseClick
    end
  end
end
