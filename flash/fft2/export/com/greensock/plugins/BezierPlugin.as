package com.greensock.plugins
{
   import com.greensock.TweenLite;
   
   public class BezierPlugin extends TweenPlugin
   {
      
      public function BezierPlugin()
      {
         _future = {};
         super("bezier");
         _overwriteProps.pop();
         _funcLookup = {};
      }
      
      public static function parseBeziers(param1:Object, param2:Boolean = false) : Object
      {
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Object = {};
         if(param2)
         {
            for(_loc6_ in param1)
            {
               _loc4_ = param1[_loc6_];
               _loc7_[_loc6_] = _loc5_ = [];
               if(_loc4_.length > 2)
               {
                  _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1] - (_loc4_[2] - _loc4_[0]) / 4,_loc4_[1]];
                  _loc3_ = 1;
                  while(_loc3_ < _loc4_.length - 1)
                  {
                     _loc5_[_loc5_.length] = [_loc4_[_loc3_],_loc4_[_loc3_] + (_loc4_[_loc3_] - _loc5_[_loc3_ - 1][1]),_loc4_[_loc3_ + 1]];
                     _loc3_++;
                  }
               }
               else
               {
                  _loc5_[_loc5_.length] = [_loc4_[0],(_loc4_[0] + _loc4_[1]) / 2,_loc4_[1]];
               }
            }
         }
         else
         {
            for(_loc6_ in param1)
            {
               _loc4_ = param1[_loc6_];
               _loc7_[_loc6_] = _loc5_ = [];
               if(_loc4_.length > 3)
               {
                  _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1],(_loc4_[1] + _loc4_[2]) / 2];
                  _loc3_ = 2;
                  while(_loc3_ < _loc4_.length - 2)
                  {
                     _loc5_[_loc5_.length] = [_loc5_[_loc3_ - 2][2],_loc4_[_loc3_],(_loc4_[_loc3_] + _loc4_[_loc3_ + 1]) / 2];
                     _loc3_ = _loc3_ + 1;
                  }
                  _loc5_[_loc5_.length] = [_loc5_[_loc5_.length - 1][2],_loc4_[_loc4_.length - 2],_loc4_[_loc4_.length - 1]];
               }
               else if(_loc4_.length == 3)
               {
                  _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1],_loc4_[2]];
               }
               else if(_loc4_.length == 2)
               {
                  _loc5_[_loc5_.length] = [_loc4_[0],(_loc4_[0] + _loc4_[1]) / 2,_loc4_[1]];
               }
               
               
            }
         }
         return _loc7_;
      }
      
      public static const API:Number = 2;
      
      protected static const _RAD2DEG:Number = 180 / Math.PI;
      
      override public function _roundProps(param1:Object, param2:Boolean = true) : void
      {
         var _loc3_:int = _overwriteProps.length;
         while(--_loc3_ > -1)
         {
            if("bezier" in param1 || "bezierThrough" in param1 || _overwriteProps[_loc3_] in param1)
            {
               _round = param2;
            }
         }
      }
      
      protected var _future:Object;
      
      protected var _orient:Boolean;
      
      override public function setRatio(param1:Number) : void
      {
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Object = null;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Array = null;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         var _loc15_:* = false;
         if(param1 == 1)
         {
            for(_loc3_ in _beziers)
            {
               _loc2_ = _beziers[_loc3_].length - 1;
               if(_funcLookup[_loc3_])
               {
                  _target[_loc3_](_beziers[_loc3_][_loc2_][2]);
               }
               else
               {
                  _target[_loc3_] = _beziers[_loc3_][_loc2_][2];
               }
            }
         }
         else
         {
            for(_loc3_ in _beziers)
            {
               trace(_loc3_);
               _loc6_ = _beziers[_loc3_].length;
               _loc2_ = param1 < 0?0:param1 >= 1?_loc6_ - 1:_loc6_ * param1 >> 0;
               _loc5_ = (param1 - _loc2_ * 1 / _loc6_) * _loc6_;
               _loc4_ = _beziers[_loc3_][_loc2_];
               _loc7_ = _loc4_[0] + _loc5_ * (2 * (1 - _loc5_) * (_loc4_[1] - _loc4_[0]) + _loc5_ * (_loc4_[2] - _loc4_[0]));
               if(_round)
               {
                  _loc7_ = _loc7_ > 0?_loc7_ + 0.5 >> 0:_loc7_ - 0.5 >> 0;
               }
               if(_funcLookup[_loc3_])
               {
                  _target[_loc3_](_loc7_);
               }
               else
               {
                  _target[_loc3_] = _loc7_;
               }
            }
         }
         if(_orient)
         {
            _loc2_ = _orientData.length;
            _loc9_ = {};
            while(_loc2_-- > 0)
            {
               _loc12_ = _orientData[_loc2_];
               _loc9_[_loc12_[0]] = _target[_loc12_[0]];
               _loc9_[_loc12_[1]] = _target[_loc12_[1]];
            }
            _loc14_ = _target;
            _loc15_ = _round;
            _target = _future;
            _round = false;
            _orient = false;
            _loc2_ = _orientData.length;
            while(_loc2_-- > 0)
            {
               _loc12_ = _orientData[_loc2_];
               this.setRatio(param1 + (_loc12_[4] || 0.01));
               _loc13_ = (_loc12_[3]) || (0);
               _loc10_ = _future[_loc12_[0]] - _loc9_[_loc12_[0]];
               _loc11_ = _future[_loc12_[1]] - _loc9_[_loc12_[1]];
               if(_funcLookup[_loc12_[2]])
               {
                  _loc14_[_loc12_[2]](Math.atan2(_loc11_,_loc10_) * _RAD2DEG + _loc13_);
               }
               else
               {
                  _loc14_[_loc12_[2]] = Math.atan2(_loc11_,_loc10_) * _RAD2DEG + _loc13_;
               }
            }
            _target = _loc14_;
            _round = _loc15_;
            _orient = true;
         }
      }
      
      override public function _onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param2 is Array))
         {
            return false;
         }
         _init(param3,param2 as Array,false);
         return true;
      }
      
      protected var _orientData:Array;
      
      protected var _round:Boolean;
      
      protected var _target:Object;
      
      protected var _beziers:Object;
      
      protected function _init(param1:TweenLite, param2:Array, param3:Boolean) : void
      {
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:* = NaN;
         var _loc10_:Object = null;
         _target = param1.target;
         var _loc4_:Object = param1.vars;
         if(_loc4_.orientToBezier == true)
         {
            _orientData = [["x","y","rotation",0,0.01]];
            _orient = true;
         }
         else if(_loc4_.orientToBezier is Array)
         {
            _orientData = _loc4_.orientToBezier;
            _orient = true;
         }
         
         var _loc5_:Object = {};
         _loc6_ = 0;
         while(_loc6_ < param2.length)
         {
            for(_loc7_ in param2[_loc6_])
            {
               _loc8_ = _funcLookup[_loc7_] = _target[_loc7_] is Function;
               _loc9_ = !_loc8_?_target[_loc7_]:_target[(_loc7_.indexOf("set")) || !("get" + _loc7_.substr(3) in _target)?_loc7_:"get" + _loc7_.substr(3)]();
               if(_loc5_[_loc7_] == null)
               {
                  _loc5_[_loc7_] = [_loc9_];
               }
               if(typeof param2[_loc6_][_loc7_] == "number")
               {
                  _loc5_[_loc7_].push(param2[_loc6_][_loc7_]);
               }
               else
               {
                  _loc5_[_loc7_].push(_loc9_ + Number(param2[_loc6_][_loc7_].split("=").join("")));
               }
            }
            _loc6_++;
         }
         for(_overwriteProps[_overwriteProps.length] in _loc5_)
         {
            if(_loc4_[_loc7_] != null)
            {
               if(typeof _loc4_[_loc7_] == "number")
               {
                  _loc5_[_loc7_].push(_loc4_[_loc7_]);
               }
               else
               {
                  _loc5_[_loc7_].push(_loc5_[_loc7_][0] + Number(_loc4_[_loc7_].split("=").join("")));
               }
               _loc10_ = {"_tempKill":true};
               _loc10_[_loc7_] = true;
               param1._kill(_loc10_,_target);
               delete _loc4_[_loc7_];
               true;
            }
         }
         _beziers = parseBeziers(_loc5_,param3);
      }
      
      protected var _funcLookup:Object;
      
      override public function _kill(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         for(_loc2_ in _beziers)
         {
            if(_loc2_ in param1)
            {
               delete _beziers[_loc2_];
               true;
               delete _funcLookup[_loc2_];
               true;
            }
         }
         return super._kill(param1);
      }
   }
}
