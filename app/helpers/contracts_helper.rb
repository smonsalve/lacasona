module ContractsHelper
  def is_active(bool)
    bool ? 'Activo' : 'Inactivo'
  end
end
