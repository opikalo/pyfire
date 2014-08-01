package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class VisiblePlugin extends TweenPlugin
   {
      
      public function VisiblePlugin()
      {
         super("visible");
      }
      
      public static const API:Number = 2;
      
      override public function setRatio(param1:Number) : void
      {
         _target.visible = (param1 == 1 || param1 == 0) && _tween._time / _tween._duration == _progress?_visible:_initVal;
      }
      
      protected var _progress:int;
      
      protected var _target:Object;
      
      protected var _initVal:Boolean;
      
      protected var _visible:Boolean;
      
      protected var _tween:TweenLite;
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _tween = param3;
         _progress = _tween.vars.runBackwards?0:1;
         _initVal = _target.visible;
         _visible = Boolean(param2);
         return true;
      }
   }
}
