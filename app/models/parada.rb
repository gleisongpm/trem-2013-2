class Parada < ActiveRecord::Base
  belongs_to :linha
  belongs_to :estacao
end
