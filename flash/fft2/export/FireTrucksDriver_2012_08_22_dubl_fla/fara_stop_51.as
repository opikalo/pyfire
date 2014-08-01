package FireTrucksDriver_2012_08_22_dubl_fla
{
   import flash.display.MovieClip;
   
   public dynamic class fara_stop_51 extends MovieClip
   {
      
      public function fara_stop_51()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            super();
            if(_loc1_)
            {
            }
            return;
         }
         addFrameScript(0,this.frame1,2,this.frame3,29,this.frame30);
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc1_))
         {
            stop();
         }
      }
      
      function frame3() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            stop();
         }
      }
      
      function frame30() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (this)))
         {
            gotoAndPlay("blink");
         }
      }
   }
}
