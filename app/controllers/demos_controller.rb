class DemosController < ApplicationController
  def breed
    @breeds = %w['chow' 'sheperd' 'heeler' 'rotwiller'
               'labrador' 'pit_bull' 'akita'  'foxhound']
  end
end
