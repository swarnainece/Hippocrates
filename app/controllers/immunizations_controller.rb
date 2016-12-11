
require 'Immunization'

class ImmunizationsController < ApplicationController
    
    
      def Output
          
          @name = params[:name]
          @weight = params[:weight_number]
          @age = params[:age]
          
          @output = Immunization.ImmunizationVaccines(@age.to_i)
          
      end
end
