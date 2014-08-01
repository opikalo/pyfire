package logo_fla
{
   import flash.display.MovieClip;
   
   public dynamic class moto_6 extends MovieClip
   {
      
      public function moto_6()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
            if(_loc2_ && (this))
            {
            }
            return;
         }
         addFrameScript(185,this.frame186,199,this.frame200);
      }
      
      function frame186() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (_loc2_)))
         {
            gotoAndPlay("loading");
         }
      }
      
      function frame200() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            stop();
         }
      }
   }
}
