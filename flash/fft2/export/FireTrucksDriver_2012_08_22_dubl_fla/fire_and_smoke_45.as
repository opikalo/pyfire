package FireTrucksDriver_2012_08_22_dubl_fla
{
   import flash.display.MovieClip;
   
   public dynamic class fire_and_smoke_45 extends MovieClip
   {
      
      public function fire_and_smoke_45()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            super();
            if(_loc1_)
            {
            }
            return;
         }
         addFrameScript(0,this.frame1);
      }
      
      public var m1:MovieClip;
      
      public var m2:MovieClip;
      
      public var m3:MovieClip;
      
      public var _-EL:uint;
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            this._-EL = Math.round(60 * Math.random());
            if(!_loc1_)
            {
               this.m1.gotoAndPlay(this._-EL);
               if(_loc2_)
               {
                  this.m2.gotoAndPlay(this._-EL);
                  if(_loc2_)
                  {
                  }
                  return;
               }
            }
         }
         this.m3.gotoAndPlay(this._-EL);
      }
   }
}
