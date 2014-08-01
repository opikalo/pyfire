package com.greensock.plugins
{
   import flash.geom.ColorTransform;
   import flash.geom.Transform;
   import flash.display.*;
   import com.greensock.*;
   import com.greensock.core.*;
   
   public class TintPlugin extends TweenPlugin
   {
      
      public function TintPlugin()
      {
         super("tint,colorTransform,removeTint");
      }
      
      protected static var _props:Array = ["redMultiplier","greenMultiplier","blueMultiplier","alphaMultiplier","redOffset","greenOffset","blueOffset","alphaOffset"];
      
      public static const API:Number = 2;
      
      protected var _ct:ColorTransform;
      
      protected var _transform:Transform;
      
      override public function setRatio(param1:Number) : void
      {
         super.setRatio(param1);
         _transform.colorTransform = _ct;
      }
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param1 is DisplayObject))
         {
            return false;
         }
         var _loc4_:ColorTransform = new ColorTransform();
         if(!(param2 == null) && !(param3.vars.removeTint == true))
         {
            _loc4_.color = uint(param2);
         }
         _transform = DisplayObject(param1).transform;
         _ct = _transform.colorTransform;
         _loc4_.alphaMultiplier = _ct.alphaMultiplier;
         _loc4_.alphaOffset = _ct.alphaOffset;
         _init(_ct,_loc4_);
         return true;
      }
      
      public function _init(param1:ColorTransform, param2:ColorTransform) : void
      {
         var _loc4_:String = null;
         _ct = param1;
         var _loc3_:int = _props.length;
         while(--_loc3_ > -1)
         {
            _loc4_ = _props[_loc3_];
            if(param1[_loc4_] != param2[_loc4_])
            {
               _addTween(param1,_loc4_,param1[_loc4_],param2[_loc4_],"tint");
            }
         }
      }
   }
}
