class UsuarioSession
include ActiveModel::Validations
include ActiveModel::Conversion
extend ActiveModel::Translation
attr_accessor :login, :senha
validates_presence_of :login, :senha
def persisted?
false
end
end