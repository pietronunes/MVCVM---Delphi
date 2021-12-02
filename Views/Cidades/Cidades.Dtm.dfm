object DmCidades: TDmCidades
  OnCreate = DataModuleCreate
  Height = 201
  Width = 389
  PixelsPerInch = 96
  object FDCidades: TFDQuery
    CachedUpdates = True
    Left = 32
    Top = 16
  end
  object FDCidadesSchemaAdapter: TFDSchemaAdapter
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    Left = 144
    Top = 16
  end
end
