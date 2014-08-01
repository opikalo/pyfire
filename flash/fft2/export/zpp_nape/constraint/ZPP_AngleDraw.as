package zpp_nape.constraint
{
   import nape.util.Debug;
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_Vec2;
   
   public class ZPP_AngleDraw extends Object
   {
      
      public function ZPP_AngleDraw()
      {
      }
      
      public static function indicator(param1:Debug, param2:Vec2, param3:Number, param4:Number, param5:int) : void
      {
         var _loc6_:Vec2 = Vec2.get(Math.cos(param3),Math.sin(param3));
         param1.drawFilledCircle(param2.add(_loc6_.mul(param4,true),true),2,param5);
         _loc6_.dispose();
      }
      
      public static var maxarc:Number;
      
      public static function drawSpiralSpring(param1:Debug, param2:Vec2, param3:Number, param4:Number, param5:Number, param6:Number, param7:int, param8:int = 4) : void
      {
         var _loc9_:* = NaN;
         var _loc15_:* = 0;
         var _loc23_:* = null as ZPP_Vec2;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = null as Vec2;
         if(param3 > param4)
         {
            _loc9_ = param3;
            param3 = param4;
            param4 = _loc9_;
            _loc9_ = param5;
            param5 = param6;
            param6 = _loc9_;
         }
         if(param3 == param4)
         {
            return;
         }
         _loc9_ = param6 - param5;
         var _loc10_:Number = param4 - param3;
         var _loc12_:Number = 2 * Math.PI * _loc9_ / _loc10_;
         var _loc11_:Number = _loc12_ < 0?-_loc12_:_loc12_;
         var _loc14_:int = Math.ceil(_loc10_ / ZPP_AngleDraw.maxarc * 3);
         _loc15_ = 4 * param8;
         var _loc13_:int = _loc14_ > _loc15_?_loc14_:_loc15_;
         _loc12_ = _loc9_ / _loc13_;
         var _loc16_:Number = _loc10_ / _loc13_;
         var _loc17_:Number = 1 / _loc13_;
         var _loc18_:Number = Math.cos(param3);
         var _loc19_:Number = Math.sin(param3);
         var _loc21_:Number = param5 + _loc9_ * 0;
         var _loc20_:Number = _loc21_ + 0.75 * _loc11_ * (Math.sin(2 * param8 * Math.PI * 0));
         _loc23_ = param2.zpp_inner;
         if(_loc23_._validate != null)
         {
            _loc23_._validate();
         }
         _loc23_ = param2.zpp_inner;
         if(_loc23_._validate != null)
         {
            _loc23_._validate();
         }
         var _loc22_:Vec2 = Vec2.get(param2.zpp_inner.x + _loc20_ * _loc18_,param2.zpp_inner.y + _loc20_ * _loc19_);
         _loc21_ = _loc9_ + 1.5 * param8 * _loc11_ * Math.PI * (Math.cos(2 * param8 * Math.PI * 0));
         var _loc24_:Number = _loc21_ * _loc18_ - _loc20_ * _loc10_ * _loc19_;
         var _loc25_:Number = _loc21_ * _loc19_ + _loc20_ * _loc10_ * _loc18_;
         var _loc26_:Vec2 = Vec2.get();
         var _loc27_:Vec2 = Vec2.get();
         _loc14_ = 0;
         while(_loc14_ < _loc13_)
         {
            _loc14_++;
            _loc15_ = _loc14_;
            _loc28_ = param3 + _loc16_;
            _loc29_ = Math.cos(_loc28_);
            _loc30_ = Math.sin(_loc28_);
            _loc32_ = param5 + _loc9_ * (_loc15_ + 1) * _loc17_;
            _loc31_ = _loc32_ + 0.75 * _loc11_ * (Math.sin(2 * param8 * Math.PI * (_loc15_ + 1) * _loc17_));
            _loc23_ = param2.zpp_inner;
            if(_loc23_._validate != null)
            {
               _loc23_._validate();
            }
            _loc32_ = param2.zpp_inner.x + _loc31_ * _loc29_;
            _loc23_ = param2.zpp_inner;
            if(_loc23_._validate != null)
            {
               _loc23_._validate();
            }
            _loc33_ = param2.zpp_inner.y + _loc31_ * _loc30_;
            _loc23_ = _loc26_.zpp_inner;
            if(_loc23_._validate != null)
            {
               _loc23_._validate();
            }
            if(_loc26_.zpp_inner.x == _loc32_)
            {
               false;
               _loc23_ = _loc26_.zpp_inner;
               if(_loc23_._validate != null)
               {
                  _loc23_._validate();
               }
            }
            if(!false)
            {
               _loc26_.zpp_inner.x = _loc32_;
               _loc26_.zpp_inner.y = _loc33_;
               _loc23_ = _loc26_.zpp_inner;
               if(_loc23_._invalidate != null)
               {
                  _loc23_._invalidate(_loc23_);
               }
            }
            _loc26_;
            _loc32_ = _loc9_ + 1.5 * param8 * _loc11_ * Math.PI * (Math.cos(2 * param8 * Math.PI * (_loc15_ + 1) * _loc17_));
            _loc33_ = _loc32_ * _loc29_ - _loc31_ * _loc10_ * _loc30_;
            _loc34_ = _loc32_ * _loc30_ + _loc31_ * _loc10_ * _loc29_;
            _loc35_ = _loc24_ * _loc34_ - _loc25_ * _loc33_;
            if(_loc35_ * _loc35_ >= 1.0E-8)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(true)
            {
               param1.drawLine(_loc22_,_loc26_,param7);
            }
            else
            {
               _loc23_ = _loc26_.zpp_inner;
               if(_loc23_._validate != null)
               {
                  _loc23_._validate();
               }
               _loc23_ = _loc22_.zpp_inner;
               if(_loc23_._validate != null)
               {
                  _loc23_._validate();
               }
               _loc23_ = _loc22_.zpp_inner;
               if(_loc23_._validate != null)
               {
                  _loc23_._validate();
               }
               _loc23_ = _loc26_.zpp_inner;
               if(_loc23_._validate != null)
               {
                  _loc23_._validate();
               }
               _loc36_ = ((_loc26_.zpp_inner.x - _loc22_.zpp_inner.x) * _loc34_ + (_loc22_.zpp_inner.y - _loc26_.zpp_inner.y) * _loc33_) / _loc35_;
               if(_loc36_ <= 0)
               {
                  param1.drawLine(_loc22_,_loc26_,param7);
               }
               else
               {
                  _loc23_ = _loc22_.zpp_inner;
                  if(_loc23_._validate != null)
                  {
                     _loc23_._validate();
                  }
                  _loc37_ = _loc22_.zpp_inner.x + _loc24_ * _loc36_;
                  _loc23_ = _loc27_.zpp_inner;
                  if(_loc23_._validate != null)
                  {
                     _loc23_._validate();
                  }
                  if(_loc27_.zpp_inner.x != _loc37_)
                  {
                     _loc27_.zpp_inner.x = _loc37_;
                     _loc23_ = _loc27_.zpp_inner;
                     if(_loc23_._invalidate != null)
                     {
                        _loc23_._invalidate(_loc23_);
                     }
                  }
                  _loc23_ = _loc27_.zpp_inner;
                  if(_loc23_._validate != null)
                  {
                     _loc23_._validate();
                  }
                  _loc27_.zpp_inner.x;
                  _loc23_ = _loc22_.zpp_inner;
                  if(_loc23_._validate != null)
                  {
                     _loc23_._validate();
                  }
                  _loc37_ = _loc22_.zpp_inner.y + _loc25_ * _loc36_;
                  _loc23_ = _loc27_.zpp_inner;
                  if(_loc23_._validate != null)
                  {
                     _loc23_._validate();
                  }
                  if(_loc27_.zpp_inner.y != _loc37_)
                  {
                     _loc27_.zpp_inner.y = _loc37_;
                     _loc23_ = _loc27_.zpp_inner;
                     if(_loc23_._invalidate != null)
                     {
                        _loc23_._invalidate(_loc23_);
                     }
                  }
                  _loc23_ = _loc27_.zpp_inner;
                  if(_loc23_._validate != null)
                  {
                     _loc23_._validate();
                  }
                  _loc27_.zpp_inner.y;
                  param1.drawCurve(_loc22_,_loc27_,_loc26_,param7);
               }
            }
            param3 = _loc28_;
            _loc18_ = _loc29_;
            _loc19_ = _loc30_;
            _loc24_ = _loc33_;
            _loc25_ = _loc34_;
            _loc23_ = _loc26_.zpp_inner;
            if(_loc23_._validate != null)
            {
               _loc23_._validate();
            }
            _loc36_ = _loc26_.zpp_inner.x;
            _loc23_ = _loc26_.zpp_inner;
            if(_loc23_._validate != null)
            {
               _loc23_._validate();
            }
            _loc37_ = _loc26_.zpp_inner.y;
            _loc23_ = _loc22_.zpp_inner;
            if(_loc23_._validate != null)
            {
               _loc23_._validate();
            }
            if(_loc22_.zpp_inner.x == _loc36_)
            {
               false;
               _loc23_ = _loc22_.zpp_inner;
               if(_loc23_._validate != null)
               {
                  _loc23_._validate();
               }
            }
            if(!false)
            {
               _loc22_.zpp_inner.x = _loc36_;
               _loc22_.zpp_inner.y = _loc37_;
               _loc23_ = _loc22_.zpp_inner;
               if(_loc23_._invalidate != null)
               {
                  _loc23_._invalidate(_loc23_);
               }
            }
            _loc38_ = _loc22_;
            if(_loc26_.zpp_inner.weak)
            {
               _loc26_.dispose();
               true;
            }
            else
            {
               false;
            }
            _loc38_;
         }
         _loc22_.dispose();
         _loc26_.dispose();
         _loc27_.dispose();
      }
      
      public static function drawSpiral(param1:Debug, param2:Vec2, param3:Number, param4:Number, param5:Number, param6:Number, param7:int) : void
      {
         var _loc8_:* = NaN;
         var _loc16_:* = null as ZPP_Vec2;
         var _loc22_:* = 0;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = NaN;
         var _loc32_:* = null as Vec2;
         if(param3 > param4)
         {
            _loc8_ = param3;
            param3 = param4;
            param4 = _loc8_;
            _loc8_ = param5;
            param5 = param6;
            param6 = _loc8_;
         }
         if(param3 == param4)
         {
            return;
         }
         _loc8_ = param6 - param5;
         var _loc9_:Number = param4 - param3;
         var _loc10_:int = Math.ceil(_loc9_ / ZPP_AngleDraw.maxarc);
         var _loc11_:Number = _loc8_ / _loc10_;
         var _loc12_:Number = _loc9_ / _loc10_;
         var _loc13_:Number = Math.cos(param3);
         var _loc14_:Number = Math.sin(param3);
         _loc16_ = param2.zpp_inner;
         if(_loc16_._validate != null)
         {
            _loc16_._validate();
         }
         _loc16_ = param2.zpp_inner;
         if(_loc16_._validate != null)
         {
            _loc16_._validate();
         }
         var _loc15_:Vec2 = Vec2.get(param2.zpp_inner.x + param5 * _loc13_,param2.zpp_inner.y + param5 * _loc14_);
         var _loc17_:Number = _loc8_ * _loc13_ - param5 * _loc9_ * _loc14_;
         var _loc18_:Number = _loc8_ * _loc14_ + param5 * _loc9_ * _loc13_;
         var _loc19_:Vec2 = Vec2.get();
         var _loc20_:Vec2 = Vec2.get();
         var _loc21_:* = 0;
         while(_loc21_ < _loc10_)
         {
            _loc21_++;
            _loc22_ = _loc21_;
            _loc23_ = param5 + _loc11_;
            _loc24_ = param3 + _loc12_;
            _loc25_ = Math.cos(_loc24_);
            _loc26_ = Math.sin(_loc24_);
            _loc16_ = param2.zpp_inner;
            if(_loc16_._validate != null)
            {
               _loc16_._validate();
            }
            _loc27_ = param2.zpp_inner.x + _loc23_ * _loc25_;
            _loc16_ = param2.zpp_inner;
            if(_loc16_._validate != null)
            {
               _loc16_._validate();
            }
            _loc28_ = param2.zpp_inner.y + _loc23_ * _loc26_;
            _loc16_ = _loc19_.zpp_inner;
            if(_loc16_._validate != null)
            {
               _loc16_._validate();
            }
            if(_loc19_.zpp_inner.x == _loc27_)
            {
               false;
               _loc16_ = _loc19_.zpp_inner;
               if(_loc16_._validate != null)
               {
                  _loc16_._validate();
               }
            }
            if(!false)
            {
               _loc19_.zpp_inner.x = _loc27_;
               _loc19_.zpp_inner.y = _loc28_;
               _loc16_ = _loc19_.zpp_inner;
               if(_loc16_._invalidate != null)
               {
                  _loc16_._invalidate(_loc16_);
               }
            }
            _loc19_;
            _loc27_ = _loc8_ * _loc25_ - _loc23_ * _loc9_ * _loc26_;
            _loc28_ = _loc8_ * _loc26_ + _loc23_ * _loc9_ * _loc25_;
            _loc29_ = _loc17_ * _loc28_ - _loc18_ * _loc27_;
            if(_loc29_ * _loc29_ < 1.0E-8)
            {
               param1.drawLine(_loc15_,_loc19_,param7);
            }
            else
            {
               _loc16_ = _loc19_.zpp_inner;
               if(_loc16_._validate != null)
               {
                  _loc16_._validate();
               }
               _loc16_ = _loc15_.zpp_inner;
               if(_loc16_._validate != null)
               {
                  _loc16_._validate();
               }
               _loc16_ = _loc15_.zpp_inner;
               if(_loc16_._validate != null)
               {
                  _loc16_._validate();
               }
               _loc16_ = _loc19_.zpp_inner;
               if(_loc16_._validate != null)
               {
                  _loc16_._validate();
               }
               _loc30_ = ((_loc19_.zpp_inner.x - _loc15_.zpp_inner.x) * _loc28_ + (_loc15_.zpp_inner.y - _loc19_.zpp_inner.y) * _loc27_) / _loc29_;
               if(_loc30_ <= 0)
               {
                  param1.drawLine(_loc15_,_loc19_,param7);
               }
               else
               {
                  _loc16_ = _loc15_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc31_ = _loc15_.zpp_inner.x + _loc17_ * _loc30_;
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  if(_loc20_.zpp_inner.x != _loc31_)
                  {
                     _loc20_.zpp_inner.x = _loc31_;
                     _loc16_ = _loc20_.zpp_inner;
                     if(_loc16_._invalidate != null)
                     {
                        _loc16_._invalidate(_loc16_);
                     }
                  }
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc20_.zpp_inner.x;
                  _loc16_ = _loc15_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc31_ = _loc15_.zpp_inner.y + _loc18_ * _loc30_;
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  if(_loc20_.zpp_inner.y != _loc31_)
                  {
                     _loc20_.zpp_inner.y = _loc31_;
                     _loc16_ = _loc20_.zpp_inner;
                     if(_loc16_._invalidate != null)
                     {
                        _loc16_._invalidate(_loc16_);
                     }
                  }
                  _loc16_ = _loc20_.zpp_inner;
                  if(_loc16_._validate != null)
                  {
                     _loc16_._validate();
                  }
                  _loc20_.zpp_inner.y;
                  param1.drawCurve(_loc15_,_loc20_,_loc19_,param7);
               }
            }
            param5 = _loc23_;
            param3 = _loc24_;
            _loc13_ = _loc25_;
            _loc14_ = _loc26_;
            _loc17_ = _loc27_;
            _loc18_ = _loc28_;
            _loc16_ = _loc19_.zpp_inner;
            if(_loc16_._validate != null)
            {
               _loc16_._validate();
            }
            _loc30_ = _loc19_.zpp_inner.x;
            _loc16_ = _loc19_.zpp_inner;
            if(_loc16_._validate != null)
            {
               _loc16_._validate();
            }
            _loc31_ = _loc19_.zpp_inner.y;
            _loc16_ = _loc15_.zpp_inner;
            if(_loc16_._validate != null)
            {
               _loc16_._validate();
            }
            if(_loc15_.zpp_inner.x == _loc30_)
            {
               false;
               _loc16_ = _loc15_.zpp_inner;
               if(_loc16_._validate != null)
               {
                  _loc16_._validate();
               }
            }
            if(!false)
            {
               _loc15_.zpp_inner.x = _loc30_;
               _loc15_.zpp_inner.y = _loc31_;
               _loc16_ = _loc15_.zpp_inner;
               if(_loc16_._invalidate != null)
               {
                  _loc16_._invalidate(_loc16_);
               }
            }
            _loc32_ = _loc15_;
            if(_loc19_.zpp_inner.weak)
            {
               _loc19_.dispose();
               true;
            }
            else
            {
               false;
            }
            _loc32_;
         }
         _loc15_.dispose();
         _loc19_.dispose();
         _loc20_.dispose();
      }
   }
}
