package logo_fla
{
   import flash.display.MovieClip;
   
   public dynamic class cur_2 extends MovieClip
   {
      
      public function cur_2()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (this))
         {
            super();
            if(_loc2_)
            {
            }
            return;
         }
         addFrameScript(190,this.frame191,199,this.frame200);
      }
      
      function frame191() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            gotoAndPlay("loading");
         }
      }
      
      function frame200() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            stop();
         }
      }
   }
}
