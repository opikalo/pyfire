package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class BezierThroughPlugin extends BezierPlugin
   {
      
      public function BezierThroughPlugin()
      {
         super();
         _propName = "bezierThrough";
      }
      
      public static const API:Number = 2;
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param2 is Array))
         {
            return false;
         }
         _init(param3,param2 as Array,true);
         return true;
      }
   }
}
