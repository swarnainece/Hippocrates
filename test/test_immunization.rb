require 'minitest/autorun'
require 'Immunization'

class ImmunizationTest < Minitest::Test
  
  
  #Positive testing  
    def test_true
        
        assert_equal(true ,Immunization.CheckImmunizationAge(4))
    end
    
    
    # negetive testing
    
    def test_false
        
        assert_equal(false ,Immunization.CheckImmunizationAge(16))
    end
    


end