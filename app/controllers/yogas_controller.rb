require 'yoga'




class YogasController < ApplicationController
    
    
    
    
    
      def Output
          
          
          if params[:yoga][:CHANDRABHEDAN].to_s.length > 0 then
             composite = CompositeYoga.new('CHANDRABHEDAN')
             composite << CHANDRABHEDAN.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end
          
          if params[:yoga][:SURYABHEDAN].to_s.length > 0 then
             composite = CompositeYoga.new('SURYABHEDAN')
             composite << SURYABHEDAN.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end 
          
           if params[:yoga][:ANULOMVILOM].to_s.length > 0 then
             composite = CompositeYoga.new('ANULOMVILOM')
             composite << ANULOMVILOM.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end
          
          if params[:yoga][:BHASTRIKA].to_s.length > 0 then
             composite = CompositeYoga.new('BHASTRIKA')
             composite << BHASTRIKA.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end
          
           if params[:yoga][:UJJAYI].to_s.length > 0 then
             composite = CompositeYoga.new('UJJAYI')
             composite << UJJAYI.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end
          
          if params[:yoga][:SHEETALI].to_s.length > 0 then
             composite = CompositeYoga.new('SHEETALI')
             composite << SHEETALI.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end
          
           if params[:yoga][:SHEETKARI].to_s.length > 0 then
             composite = CompositeYoga.new('SHEETKARI')
             composite << SHEETKARI.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end
          
          
        if params[:yoga][:BHRAMARI].to_s.length > 0 then
             composite = CompositeYoga.new('BHRAMARI')
             composite << BHRAMARI.new
             @Time = composite[0].Time
             @Method = composite[0].Method
             @Benefit = composite[0].Benefits
             @Rounds = composite[0].Rounds
             
          end
  
      end
 end
 