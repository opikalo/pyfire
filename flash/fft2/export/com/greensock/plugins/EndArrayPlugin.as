package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class EndArrayPlugin extends TweenPlugin
   {
      
      public function EndArrayPlugin()
      {
         _info = [];
         super("endArray");
      }
      
      public static const API:Number = 2;
      
      override public function _roundProps(param1:Object, param2:Boolean = true) : void
      {
         if("endArray" in param1)
         {
            _round = param2;
         }
      }
      
      protected var _a:Array;
      
      public function _init(param1:Array, param2:Array) : void
      {
         _a = param1;
         var _loc3_:int = param2.length;
         var _loc4_:* = 0;
         while(--_loc3_ > -1)
         {
            if(!(param1[_loc3_] == param2[_loc3_]) && !(param1[_loc3_] == null))
            {
               _info[_loc4_++] = new ArrayTweenInfo(_loc3_,_a[_loc3_],param2[_loc3_] - _a[_loc3_]);
            }
         }
      }
      
      override public function setRatio(param1:Number) : void
      {
         var _loc3_:ArrayTweenInfo = null;
         var _loc4_:* = NaN;
         var _loc2_:int = _info.length;
         if(_round)
         {
            while(--_loc2_ > -1)
            {
               _loc3_ = _info[_loc2_];
               _a[_loc3_.i] = (_loc4_ = _loc3_.c * param1 + _loc3_.s) > 0?_loc4_ + 0.5 >> 0:_loc4_ - 0.5 >> 0;
            }
         }
         else
         {
            while(--_loc2_ > -1)
            {
               _loc3_ = _info[_loc2_];
               _a[_loc3_.i] = _loc3_.c * param1 + _loc3_.s;
            }
         }
      }
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param1 is Array) || !(param2 is Array))
         {
            return false;
         }
         _init(param1 as Array,param2);
         return true;
      }
      
      protected var _info:Array;
      
      protected var _round:Boolean;
   }
}
class ArrayTweenInfo extends Object
{
   
   function ArrayTweenInfo(param1:uint, param2:Number, param3:Number)
   {
      super();
      this.i = param1;
      this.s = param2;
      this.c = param3;
   }
   
   public var s:Number;
   
   public var i:uint;
   
   public var c:Number;
}
