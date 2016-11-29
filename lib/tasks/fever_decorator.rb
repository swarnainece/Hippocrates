class BasicFever
  
  def initialize(fees,temperature)
    @fees = fees
    @symptoms = "Temp >> 99F"
    @temperature = temperature
    @description = "Fever"
  end
  
  # getter method
  def fees
    return @fees
  end
  
  def details
      return @description + "With" + @temperature +"Ferenheit" + " Having " + @symptoms + ":Basic Doctor Fees is of #{@fees}"
  end  
end


#******************************Fever Decorator****************************

class SymptomDecorator
  
  def initialize(fever)
    @fever = fever
    @extra_fees = 200
    @symptom = "Normal Temperature"
    
  end

    # override the fees method to include the fees of the consulting a specialist
   def fees
     return  @extra_fees +  @fever.fees
   end
  
  # override the details method to include the description of the extra feature
  def details
      return @symptom + " And " + @fever.details
  end
  
end

#**********************************Continious Fever*************************************
  class ContinuousFever < SymptomDecorator
     
     def initialize(fever)
       
       super(fever)
       @fever = fever 
       @extra_fees = 100
       @symptom = " Temperature does not fluctuate more than 1 degree Celsius in 24 hours"
       @description = "lobar pneumonia, typhoid, urinary tract infection, infective endocarditis, brucellosis, typhus"
       
     end

      def details   
          return @symptom + " So The " + "Probable Causes may be::-->-->" + @description  +  " Ferver Details"  + @fever.details
      end
  end
  
#*****************************Remittent Fever***********************************************

 class RemittentFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 200
      @symptom = "Fever Fluctuates more than 2 degree Celsius in 24 hours."
      @description = "typhoid infection and  infective endocarditis"
      
    end

     def details   
         return @symptom + "So The "+ "Probable Causes may be::-->-->" + @description + "Fever Details" + @fever.details
     end
 end
  
#********************************Intermittent Fever*******************************************************  
 
 class IntermittentFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 300
      @symptom = "temperature is present for some hours in a day and remains to normal for the remaining hours."
      @description = "malaria, kala-azar, pyemia, septicemia"
      
    end

     def details   
         return  "The Symptom is-->" + @symptom + "||" + "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->"  + @fever.details
     end
 end
 
#**********************Septic Fever********************
   
 class SepticFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 300
      @symptom = "temperature variation is very large and exceeds 5 degree Celsius with cut in body"
      @description = "septicemia"
      
    end

     def details   
         return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
     end
 end
  
  
 #****************************PelEbstein *************************************
  
  
 class PelEbsteinFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 200
      @symptom = "temperature variation is very large and exceeds 5 degree Celsius"
      @description = "patient experiences fevers which cyclically increase then decrease over an average period of one or two weeks known as Pel Ebstein Fever"
      
    end

     def details   
         return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
     end
 end
 
 #********************************Low Grade Fever*******************************
  
 class LowGradeFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "temperature present in evening only but doesnot exceed 100F"
      @description = " tuberculosis."
      
    end

          def details   
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
          end
 end
#************************************Ladder fever*****************************************************
 
 class LadderFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "temperature continiously inscreasing over a period of time with no indication of Remmission"
      @description = "Typhoid."
      
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
 end
 
 #************************************Relapsing Fever**************************************************
 
 class RelapsingFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "Relapsing of fever after a certain interval"
      @description = "Borrelia infections."
      
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
 end

 #**********************************Tertian fever****************************************
 
 
 class TertianFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "Fever occurs once in 3 days"
      @description = "Malaria."
       
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
 end
 
 #**********************************Inverse fever**************************
 
 class InverseFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "Fever proliferates in morning rather than evening"
      @description = "miliary tuberculosis.."
       
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
 end
 #****************************************Night Sweats**********************************************
 
 
 class NightSweatFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "Fever With sweat at night"
      @description = "Tuberculosis, leukemias, autoimmune disorders"
       
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
 end 
 
#**************************************RashFever***************************
 
 class RashFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "Fever With Rash on Skin"
      @description =  "Chicken pox or Small pox or Measles or Rubella or Typhus or Allergy"
       
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
 end 
 
 #***************************************ThroatPain**********************************************
 
class ThroatPainFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 400
      @symptom = "Fever With Pain in throat"
      @description =  "Diphtheria or Infectious mononucleosis or Agranulocytosis or Moniliasis or Vincent’s angima"
       
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
end 
 
 #***********************************HyperPyrexia*********************************************************
 
class HyperPyrexiaFever < SymptomDecorator
    
    def initialize(fever)
      
      super(fever)
      @fever = fever 
      @extra_fees = 100
      @symptom = "Fever With Temperature more than 105 degrees"
      @description =  "Tetanus or Malaria or Septicemia or  Heat Stroke or Encephalitis or Pontine hemorrhage"
       
    end

     def details 
         
              return "The Symptom is-->" +  @symptom + "||"+ "Probable Causes may be::-->-->" + @description + "||" + "Fever Details-->" + @fever.details
              
     end
end 