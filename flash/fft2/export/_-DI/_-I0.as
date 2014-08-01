package _-DI
{
   import flash.filters.GlowFilter;
   import flash.filters.ColorMatrixFilter;
   import fla.fx.mc_bloodSplat01;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class _-I0 extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-AW = new Object();
      }
      }
      
      public function _-I0()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (_loc2_))
         {
            super();
         }
      }
      
      public static var _-AW:Object;
      
      public static function _-BN() : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:GlowFilter = new GlowFilter(0,1,5,5,1.5,2);
         var _loc2_:GlowFilter = new GlowFilter(0,1,5,5,10.5,2);
         var _loc3_:Array = new Array();
         _loc3_ = _loc3_.concat([0,0,0,0,0]);
         _loc3_ = _loc3_.concat([0.5,0.5,1,0,0]);
         _loc3_ = _loc3_.concat([0,0,0,0,0]);
         _loc3_ = _loc3_.concat([0,0,0,1,0]);
         if(!(_loc5_ && (_loc2_)))
         {
            _-Fy(new mc_bloodSplat01(),0.7,[_loc2_]);
         }
      }
      
      public static function _-Fy(param1:MovieClip, param2:Number = 1, param3:Array = null) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Sprite = new Sprite();
         _loc4_.filters = param3;
         if(!(_loc6_ && (param1)))
         {
            _loc4_.addChild(param1);
            if(_loc5_)
            {
            }
            return;
         }
         new _-2w(param1 as MovieClip,1.5);
      }
   }
}
