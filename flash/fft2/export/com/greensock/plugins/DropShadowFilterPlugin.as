package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import flash.filters.DropShadowFilter;
   
   public class DropShadowFilterPlugin extends FilterPlugin
   {
      
      public function DropShadowFilterPlugin()
      {
         super("dropShadowFilter");
      }
      
      public static const API:Number = 2;
      
      private static var _propNames:Array = ["distance","angle","color","alpha","blurX","blurY","strength","quality","inner","knockout","hideObject"];
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         return _initFilter(param1,param2,param3,DropShadowFilter,new DropShadowFilter(0,45,0,0,0,0,1,(param2.quality) || 2,param2.inner,param2.knockout,param2.hideObject),_propNames);
      }
   }
}
