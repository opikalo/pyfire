package fla.fx
{
   import flash.display.MovieClip;
   
   public dynamic class SparkAnim extends MovieClip
   {
      
      public function SparkAnim()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc2_)))
         {
            super();
            if(_loc2_ || (_loc2_))
            {
               addFrameScript(14,this.frame15);
            }
         }
      }
      
      function frame15() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            if(this.parent != null)
            {
               if(_loc2_ || (this))
               {
               }
            }
            return;
         }
         this.parent.removeChild(this);
      }
   }
}
