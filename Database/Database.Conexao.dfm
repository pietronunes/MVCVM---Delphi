object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 219
  Width = 399
  PixelsPerInch = 96
  object DBConexao: TFDConnection
    Params.Strings = (
      'Database=projeto_delphi_teste'
      'User_Name=postgres'
      'Password=postgres'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 'C:\Users\supor\Desktop\Projeto MVCVM'
    Left = 152
    Top = 32
  end
end
