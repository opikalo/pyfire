package com.greensock.plugins
{
   import flash.display.MovieClip;
   import com.greensock.TweenLite;
   
   public class FramePlugin extends TweenPlugin
   {
      
      public function FramePlugin()
      {
         super("frame,frameLabel,frameForward,frameBackward");
      }
      
      public static const API:Number = 2;
      
      protected var _target:MovieClip;
      
      public var frame:int;
      
      override public function setRatio(param1:Number) : void
      {
         super.setRatio(param1);
         _target.gotoAndStop(this.frame);
      }
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param1 is MovieClip) || (isNaN(param2)))
         {
            return false;
         }
         _target = param1 as MovieClip;
         this.frame = _target.currentFrame;
         _addTween(this,"frame",this.frame,param2,"frame",true);
         return true;
      }
   }
}
