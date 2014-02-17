class Tremlinha < ActiveRecord::Base
  belongs_to :locomotiva
  belongs_to :linha
end
