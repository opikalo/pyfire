package FireTrucksDriver_cars_dubl_fla
{
   import flash.display.MovieClip;
   
   public dynamic class fara_stop_3 extends MovieClip
   {
      
      public function fara_stop_3()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (this)))
         {
            super();
            if(!_loc2_)
            {
               addFrameScript(0,this.frame1,2,this.frame3,29,this.frame30);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            stop();
         }
      }
      
      function frame3() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc2_))
         {
            stop();
         }
      }
      
      function frame30() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc1_))
         {
            gotoAndPlay("blink");
         }
      }
   }
}
