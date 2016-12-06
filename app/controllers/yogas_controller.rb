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
      
      
      
      def  Composite
       
       
          if params[:yoga][:MorningYoga].to_s.length > 0 then
             composite = CompositeYoga.new('MorningYoga')
             composite << MorningYoga.new
             @TotalTime = composite[0].Time
   
          end
          
          
       
          if params[:yoga][:AfterNoonYoga].to_s.length > 0 then
             composite = CompositeYoga.new('Noon Yoga')
             composite << AfterNoonYoga.new
             @TotalTime = composite[0].Time
   
          end
          
          
        if params[:yoga][:EveningYoga].to_s.length > 0 then
             composite = CompositeYoga.new('Evening Yoga')
             composite << EveningYoga.new
             @TotalTime = composite[0].Time
   
        end   
        
        
        if params[:yoga][:TotalYogaTime].to_s.length > 0 then
             composite = CompositeYoga.new('Total Yoga Time')
             composite << TotalYogaTime.new
             @TotalTime = composite[0].Time
   
        end 
        
        
        
      end

     
end
 