package com.greensock.plugins
{
   import flash.media.SoundTransform;
   import com.greensock.*;
   
   public class VolumePlugin extends TweenPlugin
   {
      
      public function VolumePlugin()
      {
         super("volume");
      }
      
      public static const API:Number = 2;
      
      protected var _target:Object;
      
      protected var _st:SoundTransform;
      
      override public function setRatio(param1:Number) : void
      {
         super.setRatio(param1);
         _target.soundTransform = _st;
      }
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if((isNaN(param2)) || (param1.hasOwnProperty("volume")) || !param1.hasOwnProperty("soundTransform"))
         {
            return false;
         }
         _target = param1;
         _st = _target.soundTransform;
         _addTween(_st,"volume",_st.volume,param2,"volume");
         return true;
      }
   }
}
