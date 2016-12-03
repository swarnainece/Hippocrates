class InfantsController < ApplicationController
    
    
    def   dose                               #InfantDoseOfParacetamol
        # :Enter Two Numbers
        #that the user enters Weight // gm of Paracetamol //  To Calculate the dose
    
       
        @enter_name = params[:name]
        @enter_age = params[:age]
       
        @enter_weight = params[:weight_number]
        @enter_strength = params[:strength_number]
        
        oDose = InfantDoseOfParacetamol.new(@enter_name , @enter_age , @enter_weight.to_i , @enter_strength.to_i )
        @dose = oDose.details
        
       # @dose = InfantDoseOfParacetamol.details(@enter_weight.to_i ,@enter_strength.to_i )
        
        
        
        # recall that the method returns a boolean value,
        # we can directly return it or return a customized message
        #if @dose >  0 
            
            
          #@dose = " The correct Dose is --> " + @dose
           
           
           
         #else
             
           #@dose = "Incorrect Dose"
           
        #end
        
    end
end
        
        
        
        
  