package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   
   public class RoundPropsPlugin extends TweenPlugin
   {
      
      public function RoundPropsPlugin()
      {
         super("roundProps",-1);
         _overwriteProps.pop();
      }
      
      public static const API:Number = 2;
      
      public function _add(param1:Object, param2:String, param3:Number, param4:Number) : void
      {
         _addTween(param1,param2,param3,param3 + param4,param2,true);
         _overwriteProps[_overwriteProps.length] = param2;
      }
      
      protected var _tween:TweenLite;
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _tween = param3;
         return true;
      }
      
      public function _onInitAllProps() : Boolean
      {
         var _loc4_:String = null;
         var _loc5_:PropTween = null;
         var _loc6_:PropTween = null;
         var _loc1_:Array = _tween.vars.roundProps is Array?_tween.vars.roundProps:_tween.vars.roundProps.split(",");
         var _loc2_:int = _loc1_.length;
         var _loc3_:Object = {};
         while(--_loc2_ > -1)
         {
            _loc3_[_loc1_[_loc2_]] = 1;
         }
         _loc2_ = _loc1_.length;
         while(--_loc2_ > -1)
         {
            _loc4_ = _loc1_[_loc2_];
            _loc5_ = _tween._firstPT;
            while(_loc5_)
            {
               _loc6_ = _loc5_._next;
               if(_loc5_.pg)
               {
                  _loc5_.t._roundProps(_loc3_,true);
               }
               else if(_loc5_.n == _loc4_)
               {
                  _add(_loc5_.t,_loc4_,_loc5_.s,_loc5_.c);
                  if(_loc5_._next)
                  {
                     _loc5_._next._prev = _loc5_._prev;
                  }
                  if(_loc5_._prev)
                  {
                     _loc5_._prev._next = _loc5_._next;
                  }
                  else if(_tween._firstPT == _loc5_)
                  {
                     _tween._firstPT = _loc5_._next;
                  }
                  
                  _loc5_._next = _loc5_._prev = null;
                  _tween._propLookup[_loc4_] = this;
               }
               
               _loc5_ = _loc5_._next;
            }
         }
         return false;
      }
   }
}
