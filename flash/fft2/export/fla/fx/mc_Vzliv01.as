package fla.fx
{
   import flash.display.MovieClip;
   
   public dynamic class mc_Vzliv01 extends MovieClip
   {
      
      public function mc_Vzliv01()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (this))
         {
            super();
            if(!_loc1_)
            {
               addFrameScript(14,this.frame15);
            }
         }
      }
      
      function frame15() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            if(this.parent != null)
            {
               if(_loc1_ || (_loc1_))
               {
               }
            }
            return;
         }
         this.parent.removeChild(this);
      }
   }
}
