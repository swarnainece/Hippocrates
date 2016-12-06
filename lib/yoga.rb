class Yoga
  
  attr_reader :yoganame
  
  def initialize(yoganame)
    
      @yoganame = yoganame  
         
  end
  
  
  
  
  def Method
     
         return @method
  end
  
  

   def Benefits
   
       return @benefits
   end
   
   def Rounds
      
        0 # No of Rounds
   end
    
    def Time
        
          0 # In Minutes
    end 

end
#*****************Composite**************************************

class CompositeYoga < Yoga

  def initialize(yoganame)
    super(yoganame)
    @sub_yogas = []
  end

  def <<(yoga)
    @sub_yogas << yoga
  end

  def [](index)
    @sub_yogas[index]
  end

  def []=(index, new_value)
    @sub_yogas[index] = new_value
  end

  def size
    @sub_yogas.size
  end

  def remove_sub_yoga(yoga)
    @sub_yogas.delete(yoga)
  end
  
  

  def Time
    time=0.0
    @sub_yogas.each { |yoga| time += yoga.Time}
    time
  end
end

#***************************CHANDRABHEDAN**************************************

class CHANDRABHEDAN < Yoga

  def initialize
    super('CHANDRABHEDAN')
  end
  
  
  def Method
       
      @method = "1.Sit in a meditative pose or in a comfortable position on the floor 
                 2.Keep your back straight and shoulders relaxed 
                 3.Close your right nostril with right hand thumb 
                 4.Inhale from the left nostril 
                 5.Close the left nostril with the right hand index and middle fingers
                 6.Exhale from the right nostril."
       
      return @method
  end
  
  
  def Benefits
         
        @benefits = "1.Chandrabhedan cools the body and cures heartburn"
         
        return @benefits
    end

  def Rounds
    
      20 # No of Rounds
  end
  
  def Time
      
        2 # In Minutes
  end
end
#****************************************SURYABHEDAN**************************************

class SURYABHEDAN < Yoga

  def initialize
    super('SURYABHEDAN')
  end
  
  
  def Method
       
      @method = "1.Sit in a meditative pose or in a comfortable posture 
                 2.Close your left nostril with your index and middle finger of the right hand. 
                 3.Inhaling from your right nostril 
                 4.Close the right nostril with your right hand thumb 
                 5.Exhale through the left nostril."
                 
       
      return @method
  end
  
  
  def Benefits
         
        @benefits = "1.Increases body heat and energy levels
                     2.Improves digestion 
                     3.Purifies blood
                     4.Delays ageing"
         
        return @benefits
    end

  def Rounds
    
      10 # No of Rounds
  end
  
  def Time
      
        1 # In Minutes
  end
end

#*************************************************ANULOM-VILOM**************

class ANULOMVILOM < Yoga

  def initialize
    super('ANULOMVILOM')
  end
  
  
  def Method
       
      @method = "1.Sit in a comfortable balanced meditative pose
                 2.Use the right hand thumb to close your right nostril.
                 3.Inhaling from your right nostril 
                 4.Close your left nostril with your right hand's index and middle fingers
                 5.Exhale from the right nostril
                 6.Do the reverse: inhale with the right nostril
                 7.Close your right nostril with your right hand thumb.
                 8.Exhale with the left nostril"
                 
       
      return @method
  end
  
  
  def Benefits
         
        @benefits = "1.Balancing body temperature
                     2.Relieving stress 
                     3.Cleansing the nadis in your body
                     4.Improving blood circulation
                     5.Promoting longevity."
         
        return @benefits
    end

  def Rounds
    
      15 # No of Rounds
  end
  
  def Time
      
        1.5 # In Minutes
  end
end
#*******************************************BHASTRIKA************************************8

class BHASTRIKA < Yoga

  def initialize
    super('BHASTRIKA')
  end
  
  
  def Method
       
      @method = "1.Sit in a comfortable balanced meditative pose
                 2.Use the right hand thumb to close your right nostril.
                 3.Inhaling from your right nostril 
                 4.Close your left nostril with your right hand's index and middle fingers
                 5.Exhale from the right nostril
                 6.Do the reverse: inhale with the right nostril
                 7.Close your right nostril with your right hand thumb.
                 8.Exhale with the left nostril"
                 
       
      return @method
  end
  
  
  def Benefits
         
        @benefits = "1.Balancing body temperature
                     2.Relieving stress 
                     3.Cleansing the nadis in your body
                     4.Improving blood circulation
                     5.Promoting longevity."
         
        return @benefits
    end

  def Rounds
    
      15 # No of Rounds
  end
  
  def Time
      
        1.5 # In Minutes
  end
end

#****************************UJJAYI*************************************************


class UJJAYI < Yoga

  def initialize
    super('UJJAYI')
  end
  
  
  def Method
       
      @method = "1.Sit erect in a comfortable posture.
                 2.Inhale slowly and deeply through both nostrils
                 3.Hold your breath for as long as possible. 
                 4.Exhale slowly with a whispering sound, contracting the air passage."
  
      return @method
  end
  
  
  def Benefits
         
        @benefits = "1.Strengthens the vocal cord
                     2.Stimulates the thyroid gland
                     3.Improves blood circulation
                     4.Eases diseases of the lungs, chest and throat"
                     
         
        return @benefits
    end

  def Rounds
    
      3 # No of Rounds
  end
  
  def Time
      
        1 # In Minutes
  end
end

#*****************************************SHEETALI************************************


class SHEETALI < Yoga

  def initialize
    super('SHEETALI')
  end
  
  
  def Method
       
      @method = "1.Sit in a comfortable position.
                 2.Close your eyes and relax your whole body with normal breathing
                 3.Put the tongue on the lower lip and try to roll the tongue.
                 4.Inhale deeply from the mouth.
                 5.Retain your breath for as long as possible
                 6.Close the mouth slowly and exhale through the nose."
  
      return @method
  end
  
  
  def Benefits
         
        @benefits = "1.Cools the body
                     2.Cures acidity and hypertension
                     3.Relieves indigestion and disorders of the bile.
                     4.Improves health of eyes and skin
                     5.Cures tonsillitis"

        return @benefits
    end

  def Rounds
    
      2 # No of Rounds
  end
  
  def Time
      
        0.8 # In Minutes
  end
end

#*************************************SHEETKARI*************************************************


class SHEETKARI < Yoga

  def initialize
    super('SHEETKARI')
  end
  
  
  def Method
       
      @method = " 1.Sit in a meditative pose or in a comfortable posture on the floor
                  2.Keep the back straight and shoulders relaxed
                  3.Place hands on the knees, fingers relaxed and eyes closed
                  4.Join lower and upper teeth
                  5.Fix front portion of the tongue against the front teeth and the rest of the tongue on the palate
                  6.Separate the lips and inhale from the mouth making a chilling sound
                  7.Retain your breath for as long as possible
                  8.Exhale through both nostrils"
  
      return @method
  end
  
  
  def Benefits
         
        @benefits = "1.Sheetkari pranayama cools the body and keeps teeth and gums healthy."

        return @benefits
    end

  def Rounds
    
      3 # No of Rounds
  end
  
  def Time
      
        1 # In Minutes
  end
end
#*********************************BHRAMARI********************************

class BHRAMARI < Yoga

  def initialize
    super('BHRAMARI')
  end
  
  
  def Method
       
      @method = " 1.Sit in a meditative pose or in a comfortable position on the floor.
                  2.Keep your back straight, shoulders muscles relaxed and eyes closed.
                  3.Close both your ears with the index fingers of both hands.
                  4.Raise your elbows to the level of your shoulders.
                  5.Inhale deeply.
                  6.Retain your breath for as long as possible.
                  7.Exhale slowly making a buzzing sound like that of a bee."
  
      return @method
  end
  
  
  def Benefits
         
        @benefits = "   1.Calms the body
                        2.Relieves stress
                        3.Makes the voice pleasant and melodious
                        4.Strengthens vocal cords
                        5.Cures diseases of the throat
                        6.Increases concentration."

        return @benefits
    end

  def Rounds
    
      5# No of Rounds
  end
  
  def Time
      
        2.5 # In Minutes
  end
end


#*******************************Morning******************************************


class MorningYoga < CompositeYoga
  
      def initialize
          super ('Do Morning Yoga')
          self << SURYABHEDAN.new
          self << CHANDRABHEDAN.new
          self << ANULOMVILOM.new
      end
end

#******************************************************************************


