object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Manipula'#231#227'o de objetos no View'
  ClientHeight = 106
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GbProgresso: TGroupBox
    Left = 0
    Top = 0
    Width = 548
    Height = 106
    Align = alClient
    Caption = 'Progresso'
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 105
    object PbMain: TGauge
      Left = 2
      Top = 15
      Width = 544
      Height = 26
      Align = alTop
      MaxValue = 1000
      Progress = 0
      ExplicitLeft = 64
      ExplicitTop = 9
      ExplicitWidth = 100
    end
    object BtnIniciar: TBitBtn
      Left = 232
      Top = 65
      Width = 75
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 0
      OnClick = BtnIniciarClick
    end
  end
end
