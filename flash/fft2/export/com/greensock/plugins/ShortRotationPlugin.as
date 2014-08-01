package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class ShortRotationPlugin extends TweenPlugin
   {
      
      public function ShortRotationPlugin()
      {
         super("shortRotation");
         _overwriteProps.pop();
      }
      
      public static const API:Number = 2;
      
      public function _initRotation(param1:Object, param2:String, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         var _loc6_:Number = param5?Math.PI * 2:360;
         var _loc7_:* = (param4 - param3) % _loc6_;
         if(_loc7_ != _loc7_ % (_loc6_ / 2))
         {
            _loc7_ = _loc7_ < 0?_loc7_ + _loc6_:_loc7_ - _loc6_;
         }
         _addTween(param1,param2,param3,param3 + _loc7_,param2);
         _overwriteProps[_overwriteProps.length] = param2;
      }
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc5_:* = NaN;
         var _loc6_:String = null;
         if(typeof param2 == "number")
         {
            return false;
         }
         var _loc4_:Boolean = Boolean(param2.useRadians == true);
         for(_loc6_ in param2)
         {
            if(_loc6_ != "useRadians")
            {
               _loc5_ = param1[_loc6_] is Function?_loc9_[(_loc6_.indexOf("set")) || !("get" + _loc6_.substr(3) in param1)?_loc6_:"get" + _loc6_.substr(3)]():param1[_loc6_];
               _initRotation(param1,_loc6_,_loc5_,typeof param2[_loc6_] == "number"?Number(param2[_loc6_]):_loc5_ + Number(param2[_loc6_].split("=").join("")),_loc4_);
            }
         }
         return true;
      }
   }
}
