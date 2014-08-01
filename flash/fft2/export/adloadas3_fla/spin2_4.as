package adloadas3_fla
{
   import flash.display.MovieClip;
   
   public dynamic class spin2_4 extends MovieClip
   {
      
      public function spin2_4()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (this)))
         {
            super();
            if(_loc1_)
            {
               addFrameScript(0,this.frame1,1,this.frame2);
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (_loc1_)))
         {
            this.rotation = this.rotation + 8;
         }
      }
      
      function frame2() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            this.rotation = this.rotation + 8;
         }
      }
   }
}
