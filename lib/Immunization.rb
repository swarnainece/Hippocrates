
class Immunization

        def self.ImmunizationVaccines(age)
        
             @age = age
        
              if         @age == 1
        
                         return "BCG/Tuberculosis Vaccine"
        
              elsif      @age >= 2 and   @age < 4
        
                         return " 1)Diphtheria
                                  2) PCV(Pneumococcal Conjugate Vaccine)"
        
        
        
              elsif     @age >= 4 and   @age < 6
        
                        return "1)Tetanus 
                                2)Men C(Meningococcal C)"
        
        
              elsif     @age >= 6 and  @age < 12
        
                        return "1)Whooping Cough (Pertussis)
                                2)Hib(Haemophilus influenzae B)
                                3)Polio(Inactivated poliomyelitis)
                                4)Hepatitis B "
        
              elsif       @age == 12
        
                          return "MMR (Measles Mumps Rubella)"
        
        
              elsif      @age == 13
        
                         return " 1)Men C (Meningococcal C)
                                  2)Hib(Haemophilus Influenzae B)"
        
              else       @age > 13
          
                         return "Enter a value less than 13"
         
               end
        end

        def self.CheckImmunizationAge(age)
          
            @age = age
            
            if  @age < 13 
                
                return true  
                
            else
                return false
       
            end
        end

end