package zpp_nape.geom
{
   import nape.geom.Vec2;
   import nape.geom.GeomPolyList;
   import zpp_nape.util.Array2;
   import nape.geom.GeomPoly;
   
   public class ZPP_MarchingSquares extends Object
   {
      
      public function ZPP_MarchingSquares()
      {
      }
      
      public static var me:ZPP_MarchingSquares;
      
      public static function run(param1:Function, param2:Number, param3:Number, param4:Number, param5:Number, param6:Vec2, param7:int, param8:Boolean, param9:GeomPolyList) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static var look_march:Array;
      
      public function ylerp(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Function, param7:int) : Number
      {
         var _loc9_:* = NaN;
         var _loc8_:Number = lerp(param1,param2,param4,param5);
         while(true)
         {
            param7--;
            if(param7 != 0)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc9_ = param6(param3,_loc8_);
            if(_loc9_ == 0)
            {
               break;
            }
            if(param4 * _loc9_ < 0)
            {
               param2 = _loc8_;
               param5 = _loc9_;
            }
            else
            {
               param1 = _loc8_;
               param4 = _loc9_;
            }
            _loc8_ = lerp(param1,param2,param4,param5);
         }
         return _loc8_;
      }
      
      public function xlerp(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Function, param7:int) : Number
      {
         var _loc9_:* = NaN;
         var _loc8_:Number = lerp(param1,param2,param4,param5);
         while(true)
         {
            param7--;
            if(param7 != 0)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc9_ = param6(_loc8_,param3);
            if(_loc9_ == 0)
            {
               break;
            }
            if(param4 * _loc9_ < 0)
            {
               param2 = _loc8_;
               param5 = _loc9_;
            }
            else
            {
               param1 = _loc8_;
               param4 = _loc9_;
            }
            _loc8_ = lerp(param1,param2,param4,param5);
         }
         return _loc8_;
      }
      
      public function output(param1:GeomPolyList, param2:ZPP_GeomVert) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function marchSquare(param1:Function, param2:Array2, param3:Array2, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:int, param10:Boolean, param11:Boolean, param12:Boolean, param13:Boolean, param14:int) : ZPP_MarchPair
      {
         var _loc20_:* = null as ZPP_MarchPair;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:* = 0;
         var _loc24_:* = null as ZPP_GeomVert;
         var _loc25_:* = null as ZPP_GeomVert;
         var _loc26_:* = null as ZPP_GeomVert;
         var _loc27_:* = false;
         var _loc28_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:Number = param2.get(param8,param9);
         if(_loc16_ < 0)
         {
            _loc15_ = _loc15_ | 8;
         }
         var _loc17_:Number = param2.get(param8 + 1,param9);
         if(_loc17_ < 0)
         {
            _loc15_ = _loc15_ | 4;
         }
         var _loc18_:Number = param2.get(param8 + 1,param9 + 1);
         if(_loc18_ < 0)
         {
            _loc15_ = _loc15_ | 2;
         }
         var _loc19_:Number = param2.get(param8,param9 + 1);
         if(_loc19_ < 0)
         {
            _loc15_ = _loc15_ | 1;
         }
         if(_loc15_ == 0)
         {
            return null;
         }
         if(ZPP_MarchPair.zpp_pool == null)
         {
            _loc20_ = new ZPP_MarchPair();
         }
         else
         {
            _loc20_ = ZPP_MarchPair.zpp_pool;
            ZPP_MarchPair.zpp_pool = _loc20_.next;
            _loc20_.next = null;
         }
         _loc20_.alloc();
         if(_loc15_ != 10)
         {
            false;
         }
         if(false)
         {
            _loc21_ = ZPP_MarchingSquares.look_march[_loc15_];
            _loc20_.okey1 = _loc21_;
            _loc22_ = 0;
            while(_loc22_ < 8)
            {
               _loc22_++;
               _loc23_ = _loc22_;
               if((_loc21_ & 1 << _loc23_) != 0)
               {
                  _loc24_ = null;
                  if(_loc23_ == 0)
                  {
                     _loc24_ = ZPP_GeomVert.get(param4,param5);
                     if(!param10)
                     {
                        true;
                     }
                     if(true)
                     {
                        _loc24_.forced = true;
                     }
                  }
                  else if(_loc23_ == 2)
                  {
                     _loc24_ = ZPP_GeomVert.get(param6,param5);
                     if(!param12)
                     {
                        true;
                     }
                     if(true)
                     {
                        _loc24_.forced = true;
                     }
                  }
                  else if(_loc23_ == 4)
                  {
                     _loc24_ = ZPP_GeomVert.get(param6,param7);
                     if(!param12)
                     {
                        true;
                     }
                     if(true)
                     {
                        _loc24_.forced = true;
                     }
                  }
                  else if(_loc23_ == 6)
                  {
                     _loc24_ = ZPP_GeomVert.get(param4,param7);
                     if(!param10)
                     {
                        true;
                     }
                     if(true)
                     {
                        _loc24_.forced = true;
                     }
                  }
                  else if(_loc23_ == 1)
                  {
                     _loc24_ = param3.get(param8,param9 << 1);
                     if(_loc24_ == null)
                     {
                        _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                        param3.set(param8,param9 << 1,_loc24_);
                     }
                     else
                     {
                        _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                     }
                     if(param11)
                     {
                        _loc24_.forced = true;
                     }
                     if(_loc24_.x != param4)
                     {
                        true;
                     }
                     if(true)
                     {
                        if(_loc24_.x == param4)
                        {
                           false;
                        }
                        if(!false)
                        {
                           true;
                           if(_loc24_.x == param6)
                           {
                              false;
                           }
                        }
                        if(true)
                        {
                           _loc21_ = _loc21_ ^ 2;
                        }
                     }
                  }
                  else if(_loc23_ == 5)
                  {
                     _loc24_ = param3.get(param8,(param9 << 1) + 2);
                     if(_loc24_ == null)
                     {
                        _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                        param3.set(param8,(param9 << 1) + 2,_loc24_);
                     }
                     else
                     {
                        _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                     }
                     if(param13)
                     {
                        _loc24_.forced = true;
                     }
                     if(_loc24_.x != param4)
                     {
                        true;
                     }
                     if(true)
                     {
                        if(_loc24_.x == param4)
                        {
                           false;
                        }
                        if(!false)
                        {
                           true;
                           if(_loc24_.x == param6)
                           {
                              false;
                           }
                        }
                        if(true)
                        {
                           _loc21_ = _loc21_ ^ 32;
                        }
                     }
                  }
                  else if(_loc23_ == 3)
                  {
                     _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                     if(_loc24_ == null)
                     {
                        _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                        param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                     }
                     else
                     {
                        _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                     }
                     if(param12)
                     {
                        _loc24_.forced = true;
                     }
                     if(_loc24_.y != param5)
                     {
                        true;
                     }
                     if(true)
                     {
                        if(_loc24_.y == param5)
                        {
                           false;
                        }
                        if(!false)
                        {
                           true;
                           if(_loc24_.y == param7)
                           {
                              false;
                           }
                        }
                        if(true)
                        {
                           _loc21_ = _loc21_ ^ 8;
                        }
                     }
                  }
                  else
                  {
                     _loc24_ = param3.get(param8,(param9 << 1) + 1);
                     if(_loc24_ == null)
                     {
                        _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                        param3.set(param8,(param9 << 1) + 1,_loc24_);
                     }
                     else
                     {
                        _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                     }
                     if(param10)
                     {
                        _loc24_.forced = true;
                     }
                     if(_loc24_.y != param5)
                     {
                        true;
                     }
                     if(true)
                     {
                        if(_loc24_.y == param5)
                        {
                           false;
                        }
                        if(!false)
                        {
                           true;
                           if(_loc24_.y == param7)
                           {
                              false;
                           }
                        }
                        if(true)
                        {
                           _loc21_ = _loc21_ ^ 128;
                        }
                     }
                  }
                  
                  
                  
                  
                  
                  
                  _loc25_ = _loc24_;
                  if(_loc20_.p1 == null)
                  {
                     _loc26_ = _loc25_;
                     _loc25_.next = _loc26_;
                     _loc26_ = _loc26_;
                     _loc25_.prev = _loc26_;
                     _loc20_.p1 = _loc26_;
                  }
                  else
                  {
                     _loc25_.prev = _loc20_.p1;
                     _loc25_.next = _loc20_.p1.next;
                     _loc20_.p1.next.prev = _loc25_;
                     _loc20_.p1.next = _loc25_;
                  }
                  _loc20_.p1 = _loc25_;
               }
            }
            _loc20_.p1 = _loc20_.p1.next;
            _loc20_.key1 = _loc21_;
            if(_loc21_ != 1)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(!true)
            {
               true;
            }
            if(true)
            {
               _loc21_ = 0;
               _loc20_.key1 = 0;
               _loc20_.p1 = null;
            }
            if(_loc21_ == 0)
            {
               _loc20_ = null;
            }
            else
            {
               _loc20_.pr = _loc20_.p1;
               _loc20_.okeyr = _loc20_.okey1;
               _loc20_.keyr = _loc20_.key1;
            }
         }
         else
         {
            _loc27_ = (param1(0.5 * (param4 + param6),0.5 * (param5 + param7))) < 0;
            if(_loc15_ == 10)
            {
               if(_loc27_)
               {
                  _loc21_ = 187;
                  _loc20_.okey1 = _loc21_;
                  _loc22_ = 0;
                  while(_loc22_ < 8)
                  {
                     _loc22_++;
                     _loc23_ = _loc22_;
                     if((_loc21_ & 1 << _loc23_) != 0)
                     {
                        _loc24_ = null;
                        if(_loc23_ == 0)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param5);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 2)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param5);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 4)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param7);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 6)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param7);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 1)
                        {
                           _loc24_ = param3.get(param8,param9 << 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                              param3.set(param8,param9 << 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param11)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 2;
                              }
                           }
                        }
                        else if(_loc23_ == 5)
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 2);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                              param3.set(param8,(param9 << 1) + 2,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param13)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 32;
                              }
                           }
                        }
                        else if(_loc23_ == 3)
                        {
                           _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                              param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param12)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 8;
                              }
                           }
                        }
                        else
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                              param3.set(param8,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param10)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 128;
                              }
                           }
                        }
                        
                        
                        
                        
                        
                        
                        _loc25_ = _loc24_;
                        if(_loc20_.p1 == null)
                        {
                           _loc26_ = _loc25_;
                           _loc25_.next = _loc26_;
                           _loc26_ = _loc26_;
                           _loc25_.prev = _loc26_;
                           _loc20_.p1 = _loc26_;
                        }
                        else
                        {
                           _loc25_.prev = _loc20_.p1;
                           _loc25_.next = _loc20_.p1.next;
                           _loc20_.p1.next.prev = _loc25_;
                           _loc20_.p1.next = _loc25_;
                        }
                        _loc20_.p1 = _loc25_;
                     }
                  }
                  _loc20_.p1 = _loc20_.p1.next;
                  _loc20_.key1 = _loc21_;
                  if(_loc21_ != 1)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(true)
                  {
                     _loc21_ = 0;
                     _loc20_.key1 = 0;
                     _loc20_.p1 = null;
                  }
                  if(_loc21_ == 0)
                  {
                     _loc20_ = null;
                  }
                  else
                  {
                     _loc20_.pr = _loc20_.p1;
                     _loc20_.okeyr = _loc20_.okey1;
                     _loc20_.keyr = _loc20_.key1;
                  }
               }
               else
               {
                  _loc21_ = 131;
                  _loc20_.okey1 = _loc21_;
                  _loc22_ = 0;
                  while(_loc22_ < 8)
                  {
                     _loc22_++;
                     _loc23_ = _loc22_;
                     if((_loc21_ & 1 << _loc23_) != 0)
                     {
                        _loc24_ = null;
                        if(_loc23_ == 0)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param5);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 2)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param5);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 4)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param7);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 6)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param7);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc23_ == 1)
                        {
                           _loc24_ = param3.get(param8,param9 << 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                              param3.set(param8,param9 << 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param11)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 2;
                              }
                           }
                        }
                        else if(_loc23_ == 5)
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 2);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                              param3.set(param8,(param9 << 1) + 2,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param13)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 32;
                              }
                           }
                        }
                        else if(_loc23_ == 3)
                        {
                           _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                              param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param12)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 8;
                              }
                           }
                        }
                        else
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                              param3.set(param8,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param10)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc21_ = _loc21_ ^ 128;
                              }
                           }
                        }
                        
                        
                        
                        
                        
                        
                        _loc25_ = _loc24_;
                        if(_loc20_.p1 == null)
                        {
                           _loc26_ = _loc25_;
                           _loc25_.next = _loc26_;
                           _loc26_ = _loc26_;
                           _loc25_.prev = _loc26_;
                           _loc20_.p1 = _loc26_;
                        }
                        else
                        {
                           _loc25_.prev = _loc20_.p1;
                           _loc25_.next = _loc20_.p1.next;
                           _loc20_.p1.next.prev = _loc25_;
                           _loc20_.p1.next = _loc25_;
                        }
                        _loc20_.p1 = _loc25_;
                     }
                  }
                  _loc20_.p1 = _loc20_.p1.next;
                  _loc20_.key1 = _loc21_;
                  if(_loc21_ != 1)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(true)
                  {
                     _loc21_ = 0;
                     _loc20_.key1 = 0;
                     _loc20_.p1 = null;
                  }
                  if(_loc21_ != 0)
                  {
                     _loc22_ = 56;
                     _loc20_.okey2 = _loc22_;
                     _loc23_ = 0;
                     while(_loc23_ < 8)
                     {
                        _loc23_++;
                        _loc28_ = _loc23_;
                        if((_loc22_ & 1 << _loc28_) != 0)
                        {
                           _loc24_ = null;
                           if(_loc28_ == 0)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,param5);
                              if(!param10)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 2)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,param5);
                              if(!param12)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 4)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,param7);
                              if(!param12)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 6)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,param7);
                              if(!param10)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 1)
                           {
                              _loc24_ = param3.get(param8,param9 << 1);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                                 param3.set(param8,param9 << 1,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param11)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.x != param4)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.x == param4)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.x == param6)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 2;
                                 }
                              }
                           }
                           else if(_loc28_ == 5)
                           {
                              _loc24_ = param3.get(param8,(param9 << 1) + 2);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                                 param3.set(param8,(param9 << 1) + 2,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param13)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.x != param4)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.x == param4)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.x == param6)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 32;
                                 }
                              }
                           }
                           else if(_loc28_ == 3)
                           {
                              _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                                 param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param12)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.y != param5)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.y == param5)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.y == param7)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 8;
                                 }
                              }
                           }
                           else
                           {
                              _loc24_ = param3.get(param8,(param9 << 1) + 1);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                                 param3.set(param8,(param9 << 1) + 1,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param10)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.y != param5)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.y == param5)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.y == param7)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 128;
                                 }
                              }
                           }
                           
                           
                           
                           
                           
                           
                           _loc25_ = _loc24_;
                           if(_loc20_.p2 == null)
                           {
                              _loc26_ = _loc25_;
                              _loc25_.next = _loc26_;
                              _loc26_ = _loc26_;
                              _loc25_.prev = _loc26_;
                              _loc20_.p2 = _loc26_;
                           }
                           else
                           {
                              _loc25_.prev = _loc20_.p2;
                              _loc25_.next = _loc20_.p2.next;
                              _loc20_.p2.next.prev = _loc25_;
                              _loc20_.p2.next = _loc25_;
                           }
                           _loc20_.p2 = _loc25_;
                        }
                     }
                     _loc20_.p2 = _loc20_.p2.next;
                     _loc20_.key2 = _loc22_;
                     if(_loc22_ != 1)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(true)
                     {
                        _loc22_ = 0;
                        _loc20_.key2 = 0;
                        _loc20_.p2 = null;
                     }
                     if(_loc22_ == 0)
                     {
                        _loc20_.pr = _loc20_.p1;
                        _loc20_.okeyr = _loc20_.okey1;
                        _loc20_.keyr = _loc20_.key1;
                     }
                     else
                     {
                        _loc20_.pr = _loc20_.p2;
                        _loc20_.okeyr = _loc20_.okey2;
                        _loc20_.keyr = _loc20_.key2;
                     }
                  }
                  else
                  {
                     _loc22_ = 56;
                     _loc20_.okey1 = _loc22_;
                     _loc23_ = 0;
                     while(_loc23_ < 8)
                     {
                        _loc23_++;
                        _loc28_ = _loc23_;
                        if((_loc22_ & 1 << _loc28_) != 0)
                        {
                           _loc24_ = null;
                           if(_loc28_ == 0)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,param5);
                              if(!param10)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 2)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,param5);
                              if(!param12)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 4)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,param7);
                              if(!param12)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 6)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,param7);
                              if(!param10)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 _loc24_.forced = true;
                              }
                           }
                           else if(_loc28_ == 1)
                           {
                              _loc24_ = param3.get(param8,param9 << 1);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                                 param3.set(param8,param9 << 1,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param11)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.x != param4)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.x == param4)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.x == param6)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 2;
                                 }
                              }
                           }
                           else if(_loc28_ == 5)
                           {
                              _loc24_ = param3.get(param8,(param9 << 1) + 2);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                                 param3.set(param8,(param9 << 1) + 2,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param13)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.x != param4)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.x == param4)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.x == param6)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 32;
                                 }
                              }
                           }
                           else if(_loc28_ == 3)
                           {
                              _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                                 param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param12)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.y != param5)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.y == param5)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.y == param7)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 8;
                                 }
                              }
                           }
                           else
                           {
                              _loc24_ = param3.get(param8,(param9 << 1) + 1);
                              if(_loc24_ == null)
                              {
                                 _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                                 param3.set(param8,(param9 << 1) + 1,_loc24_);
                              }
                              else
                              {
                                 _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                              }
                              if(param10)
                              {
                                 _loc24_.forced = true;
                              }
                              if(_loc24_.y != param5)
                              {
                                 true;
                              }
                              if(true)
                              {
                                 if(_loc24_.y == param5)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc24_.y == param7)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc22_ = _loc22_ ^ 128;
                                 }
                              }
                           }
                           
                           
                           
                           
                           
                           
                           _loc25_ = _loc24_;
                           if(_loc20_.p1 == null)
                           {
                              _loc26_ = _loc25_;
                              _loc25_.next = _loc26_;
                              _loc26_ = _loc26_;
                              _loc25_.prev = _loc26_;
                              _loc20_.p1 = _loc26_;
                           }
                           else
                           {
                              _loc25_.prev = _loc20_.p1;
                              _loc25_.next = _loc20_.p1.next;
                              _loc20_.p1.next.prev = _loc25_;
                              _loc20_.p1.next = _loc25_;
                           }
                           _loc20_.p1 = _loc25_;
                        }
                     }
                     _loc20_.p1 = _loc20_.p1.next;
                     _loc20_.key1 = _loc22_;
                     if(_loc22_ != 1)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(!true)
                     {
                        true;
                     }
                     if(true)
                     {
                        _loc22_ = 0;
                        _loc20_.key1 = 0;
                        _loc20_.p1 = null;
                     }
                     if(_loc22_ == 0)
                     {
                        _loc20_ = null;
                     }
                     else
                     {
                        _loc20_.pr = _loc20_.p1;
                        _loc20_.okeyr = _loc20_.okey1;
                        _loc20_.keyr = _loc20_.key1;
                     }
                  }
               }
            }
            else if(_loc27_)
            {
               _loc21_ = 238;
               _loc20_.okey1 = _loc21_;
               _loc22_ = 0;
               while(_loc22_ < 8)
               {
                  _loc22_++;
                  _loc23_ = _loc22_;
                  if((_loc21_ & 1 << _loc23_) != 0)
                  {
                     _loc24_ = null;
                     if(_loc23_ == 0)
                     {
                        _loc24_ = ZPP_GeomVert.get(param4,param5);
                        if(!param10)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 2)
                     {
                        _loc24_ = ZPP_GeomVert.get(param6,param5);
                        if(!param12)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 4)
                     {
                        _loc24_ = ZPP_GeomVert.get(param6,param7);
                        if(!param12)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 6)
                     {
                        _loc24_ = ZPP_GeomVert.get(param4,param7);
                        if(!param10)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 1)
                     {
                        _loc24_ = param3.get(param8,param9 << 1);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                           param3.set(param8,param9 << 1,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param11)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.x != param4)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.x == param4)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.x == param6)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 2;
                           }
                        }
                     }
                     else if(_loc23_ == 5)
                     {
                        _loc24_ = param3.get(param8,(param9 << 1) + 2);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                           param3.set(param8,(param9 << 1) + 2,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param13)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.x != param4)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.x == param4)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.x == param6)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 32;
                           }
                        }
                     }
                     else if(_loc23_ == 3)
                     {
                        _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                           param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param12)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.y != param5)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.y == param5)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.y == param7)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 8;
                           }
                        }
                     }
                     else
                     {
                        _loc24_ = param3.get(param8,(param9 << 1) + 1);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                           param3.set(param8,(param9 << 1) + 1,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param10)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.y != param5)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.y == param5)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.y == param7)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 128;
                           }
                        }
                     }
                     
                     
                     
                     
                     
                     
                     _loc25_ = _loc24_;
                     if(_loc20_.p1 == null)
                     {
                        _loc26_ = _loc25_;
                        _loc25_.next = _loc26_;
                        _loc26_ = _loc26_;
                        _loc25_.prev = _loc26_;
                        _loc20_.p1 = _loc26_;
                     }
                     else
                     {
                        _loc25_.prev = _loc20_.p1;
                        _loc25_.next = _loc20_.p1.next;
                        _loc20_.p1.next.prev = _loc25_;
                        _loc20_.p1.next = _loc25_;
                     }
                     _loc20_.p1 = _loc25_;
                  }
               }
               _loc20_.p1 = _loc20_.p1.next;
               _loc20_.key1 = _loc21_;
               if(_loc21_ != 1)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(true)
               {
                  _loc21_ = 0;
                  _loc20_.key1 = 0;
                  _loc20_.p1 = null;
               }
               if(_loc21_ == 0)
               {
                  _loc20_ = null;
               }
               else
               {
                  _loc20_.pr = _loc20_.p1;
                  _loc20_.okeyr = _loc20_.okey1;
                  _loc20_.keyr = _loc20_.key1;
               }
            }
            else
            {
               _loc21_ = 224;
               _loc20_.okey1 = _loc21_;
               _loc22_ = 0;
               while(_loc22_ < 8)
               {
                  _loc22_++;
                  _loc23_ = _loc22_;
                  if((_loc21_ & 1 << _loc23_) != 0)
                  {
                     _loc24_ = null;
                     if(_loc23_ == 0)
                     {
                        _loc24_ = ZPP_GeomVert.get(param4,param5);
                        if(!param10)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 2)
                     {
                        _loc24_ = ZPP_GeomVert.get(param6,param5);
                        if(!param12)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 4)
                     {
                        _loc24_ = ZPP_GeomVert.get(param6,param7);
                        if(!param12)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 6)
                     {
                        _loc24_ = ZPP_GeomVert.get(param4,param7);
                        if(!param10)
                        {
                           true;
                        }
                        if(true)
                        {
                           _loc24_.forced = true;
                        }
                     }
                     else if(_loc23_ == 1)
                     {
                        _loc24_ = param3.get(param8,param9 << 1);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                           param3.set(param8,param9 << 1,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param11)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.x != param4)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.x == param4)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.x == param6)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 2;
                           }
                        }
                     }
                     else if(_loc23_ == 5)
                     {
                        _loc24_ = param3.get(param8,(param9 << 1) + 2);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                           param3.set(param8,(param9 << 1) + 2,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param13)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.x != param4)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.x == param4)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.x == param6)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 32;
                           }
                        }
                     }
                     else if(_loc23_ == 3)
                     {
                        _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                           param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param12)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.y != param5)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.y == param5)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.y == param7)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 8;
                           }
                        }
                     }
                     else
                     {
                        _loc24_ = param3.get(param8,(param9 << 1) + 1);
                        if(_loc24_ == null)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                           param3.set(param8,(param9 << 1) + 1,_loc24_);
                        }
                        else
                        {
                           _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                        }
                        if(param10)
                        {
                           _loc24_.forced = true;
                        }
                        if(_loc24_.y != param5)
                        {
                           true;
                        }
                        if(true)
                        {
                           if(_loc24_.y == param5)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc24_.y == param7)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc21_ = _loc21_ ^ 128;
                           }
                        }
                     }
                     
                     
                     
                     
                     
                     
                     _loc25_ = _loc24_;
                     if(_loc20_.p1 == null)
                     {
                        _loc26_ = _loc25_;
                        _loc25_.next = _loc26_;
                        _loc26_ = _loc26_;
                        _loc25_.prev = _loc26_;
                        _loc20_.p1 = _loc26_;
                     }
                     else
                     {
                        _loc25_.prev = _loc20_.p1;
                        _loc25_.next = _loc20_.p1.next;
                        _loc20_.p1.next.prev = _loc25_;
                        _loc20_.p1.next = _loc25_;
                     }
                     _loc20_.p1 = _loc25_;
                  }
               }
               _loc20_.p1 = _loc20_.p1.next;
               _loc20_.key1 = _loc21_;
               if(_loc21_ != 1)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(!true)
               {
                  true;
               }
               if(true)
               {
                  _loc21_ = 0;
                  _loc20_.key1 = 0;
                  _loc20_.p1 = null;
               }
               if(_loc21_ != 0)
               {
                  _loc22_ = 14;
                  _loc20_.okey2 = _loc22_;
                  _loc23_ = 0;
                  while(_loc23_ < 8)
                  {
                     _loc23_++;
                     _loc28_ = _loc23_;
                     if((_loc22_ & 1 << _loc28_) != 0)
                     {
                        _loc24_ = null;
                        if(_loc28_ == 0)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param5);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 2)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param5);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 4)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param7);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 6)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param7);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 1)
                        {
                           _loc24_ = param3.get(param8,param9 << 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                              param3.set(param8,param9 << 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param11)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 2;
                              }
                           }
                        }
                        else if(_loc28_ == 5)
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 2);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                              param3.set(param8,(param9 << 1) + 2,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param13)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 32;
                              }
                           }
                        }
                        else if(_loc28_ == 3)
                        {
                           _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                              param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param12)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 8;
                              }
                           }
                        }
                        else
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                              param3.set(param8,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param10)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 128;
                              }
                           }
                        }
                        
                        
                        
                        
                        
                        
                        _loc25_ = _loc24_;
                        if(_loc20_.p2 == null)
                        {
                           _loc26_ = _loc25_;
                           _loc25_.next = _loc26_;
                           _loc26_ = _loc26_;
                           _loc25_.prev = _loc26_;
                           _loc20_.p2 = _loc26_;
                        }
                        else
                        {
                           _loc25_.prev = _loc20_.p2;
                           _loc25_.next = _loc20_.p2.next;
                           _loc20_.p2.next.prev = _loc25_;
                           _loc20_.p2.next = _loc25_;
                        }
                        _loc20_.p2 = _loc25_;
                     }
                  }
                  _loc20_.p2 = _loc20_.p2.next;
                  _loc20_.key2 = _loc22_;
                  if(_loc22_ != 1)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(true)
                  {
                     _loc22_ = 0;
                     _loc20_.key2 = 0;
                     _loc20_.p2 = null;
                  }
                  if(_loc22_ == 0)
                  {
                     _loc20_.pr = _loc20_.p1;
                     _loc20_.okeyr = _loc20_.okey1;
                     _loc20_.keyr = _loc20_.key1;
                  }
                  else
                  {
                     _loc20_.pr = _loc20_.p2;
                     _loc20_.okeyr = _loc20_.okey2;
                     _loc20_.keyr = _loc20_.key2;
                  }
               }
               else
               {
                  _loc22_ = 14;
                  _loc20_.okey1 = _loc22_;
                  _loc23_ = 0;
                  while(_loc23_ < 8)
                  {
                     _loc23_++;
                     _loc28_ = _loc23_;
                     if((_loc22_ & 1 << _loc28_) != 0)
                     {
                        _loc24_ = null;
                        if(_loc28_ == 0)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param5);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 2)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param5);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 4)
                        {
                           _loc24_ = ZPP_GeomVert.get(param6,param7);
                           if(!param12)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 6)
                        {
                           _loc24_ = ZPP_GeomVert.get(param4,param7);
                           if(!param10)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc24_.forced = true;
                           }
                        }
                        else if(_loc28_ == 1)
                        {
                           _loc24_ = param3.get(param8,param9 << 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param5,_loc16_,_loc17_,param1,param14),param5);
                              param3.set(param8,param9 << 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param11)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 2;
                              }
                           }
                        }
                        else if(_loc28_ == 5)
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 2);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(xlerp(param4,param6,param7,_loc19_,_loc18_,param1,param14),param7);
                              param3.set(param8,(param9 << 1) + 2,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param13)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.x != param4)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.x == param4)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.x == param6)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 32;
                              }
                           }
                        }
                        else if(_loc28_ == 3)
                        {
                           _loc24_ = param3.get(param8 + 1,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param6,ylerp(param5,param7,param6,_loc17_,_loc18_,param1,param14));
                              param3.set(param8 + 1,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param12)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 8;
                              }
                           }
                        }
                        else
                        {
                           _loc24_ = param3.get(param8,(param9 << 1) + 1);
                           if(_loc24_ == null)
                           {
                              _loc24_ = ZPP_GeomVert.get(param4,ylerp(param5,param7,param4,_loc16_,_loc19_,param1,param14));
                              param3.set(param8,(param9 << 1) + 1,_loc24_);
                           }
                           else
                           {
                              _loc24_ = ZPP_GeomVert.get(_loc24_.x,_loc24_.y);
                           }
                           if(param10)
                           {
                              _loc24_.forced = true;
                           }
                           if(_loc24_.y != param5)
                           {
                              true;
                           }
                           if(true)
                           {
                              if(_loc24_.y == param5)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc24_.y == param7)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc22_ = _loc22_ ^ 128;
                              }
                           }
                        }
                        
                        
                        
                        
                        
                        
                        _loc25_ = _loc24_;
                        if(_loc20_.p1 == null)
                        {
                           _loc26_ = _loc25_;
                           _loc25_.next = _loc26_;
                           _loc26_ = _loc26_;
                           _loc25_.prev = _loc26_;
                           _loc20_.p1 = _loc26_;
                        }
                        else
                        {
                           _loc25_.prev = _loc20_.p1;
                           _loc25_.next = _loc20_.p1.next;
                           _loc20_.p1.next.prev = _loc25_;
                           _loc20_.p1.next = _loc25_;
                        }
                        _loc20_.p1 = _loc25_;
                     }
                  }
                  _loc20_.p1 = _loc20_.p1.next;
                  _loc20_.key1 = _loc22_;
                  if(_loc22_ != 1)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(!true)
                  {
                     true;
                  }
                  if(true)
                  {
                     _loc22_ = 0;
                     _loc20_.key1 = 0;
                     _loc20_.p1 = null;
                  }
                  if(_loc22_ == 0)
                  {
                     _loc20_ = null;
                  }
                  else
                  {
                     _loc20_.pr = _loc20_.p1;
                     _loc20_.okeyr = _loc20_.okey1;
                     _loc20_.keyr = _loc20_.key1;
                  }
               }
            }
            
         }
         return _loc20_;
      }
      
      public function linkup(param1:ZPP_GeomVert, param2:int) : ZPP_GeomVert
      {
         return param1;
      }
      
      public function linkright(param1:ZPP_GeomVert, param2:int) : ZPP_GeomVert
      {
         var _loc3_:* = param2 & 7;
         if(_loc3_ == 0)
         {
            return param1;
         }
         if(_loc3_ == 3)
         {
            return param1.next.next;
         }
         return param1.next;
      }
      
      public function linkleft(param1:ZPP_GeomVert, param2:int) : ZPP_GeomVert
      {
         return (param2 & 1) == 0?param1.prev:param1;
      }
      
      public function linkdown(param1:ZPP_GeomVert, param2:int) : ZPP_GeomVert
      {
         return (param2 & 128) == 0?param1.prev:param1.prev.prev;
      }
      
      public function lerp(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(param3 == 0)
         {
            return param1;
         }
         if(param4 == 0)
         {
            return param2;
         }
         _loc5_ = param3 - param4;
         _loc6_ = _loc5_ * _loc5_ < 1.0E-8?0.5:param3 / _loc5_;
         if(_loc6_ < 0)
         {
            _loc6_ = 0;
         }
         else if(_loc6_ > 1)
         {
            _loc6_ = 1;
         }
         
         return param1 + _loc6_ * (param2 - param1);
      }
      
      public function combUp(param1:int) : Boolean
      {
         var _loc2_:* = param1 & 7;
         return comb(_loc2_);
      }
      
      public function combUD_virtual(param1:ZPP_MarchPair, param2:ZPP_MarchPair) : void
      {
         if(param1.p2 != null)
         {
            false;
         }
         var _loc3_:ZPP_GeomVert = false?param1.p2:param1.p1;
         if(param2.p2 != null)
         {
            false;
         }
         var _loc4_:ZPP_GeomVert = false?param2.p2:param2.p1;
         var _loc5_:ZPP_GeomVert = param1.pd;
         var _loc6_:ZPP_GeomVert = linkup(_loc4_,_loc4_ == param2.p2?param2.key2:param2.key1);
         var _loc7_:ZPP_GeomVert = _loc5_.prev;
         var _loc8_:ZPP_GeomVert = _loc6_.next;
         var _loc9_:* = true;
         _loc8_.forced = _loc9_;
         _loc9_ = _loc9_;
         _loc7_.forced = _loc9_;
         _loc9_ = _loc9_;
         _loc6_.forced = _loc9_;
         _loc5_.forced = _loc9_;
      }
      
      public function combUD(param1:ZPP_MarchPair, param2:ZPP_MarchPair) : void
      {
         if(param1.p2 != null)
         {
            false;
         }
         var _loc3_:ZPP_GeomVert = false?param1.p2:param1.p1;
         if(param2.p2 != null)
         {
            false;
         }
         var _loc4_:ZPP_GeomVert = false?param2.p2:param2.p1;
         var _loc5_:ZPP_GeomVert = param1.pd;
         var _loc6_:ZPP_GeomVert = linkup(_loc4_,_loc4_ == param2.p2?param2.okey2:param2.okey1);
         var _loc7_:ZPP_GeomVert = _loc5_.prev;
         var _loc8_:ZPP_GeomVert = _loc6_.next;
         _loc6_.next = _loc5_.next;
         _loc5_.next.prev = _loc6_;
         var _loc9_:ZPP_GeomVert = _loc5_;
         _loc9_.free();
         _loc9_.next = ZPP_GeomVert.zpp_pool;
         ZPP_GeomVert.zpp_pool = _loc9_;
         _loc8_.prev = _loc7_.prev;
         _loc7_.prev.next = _loc8_;
         if(_loc7_ == param1.p1)
         {
            param1.p1 = _loc8_;
         }
         _loc9_ = _loc7_;
         _loc9_.free();
         _loc9_.next = ZPP_GeomVert.zpp_pool;
         ZPP_GeomVert.zpp_pool = _loc9_;
      }
      
      public function combRight(param1:int) : Boolean
      {
         var _loc2_:* = (param1 & 28) >> 2;
         return comb(_loc2_);
      }
      
      public function combLeft(param1:int) : Boolean
      {
         var _loc2_:* = param1 & 1 | (param1 & 192) >> 5;
         return comb(_loc2_);
      }
      
      public function combLR(param1:ZPP_MarchPair, param2:ZPP_MarchPair) : void
      {
         var _loc7_:* = null as ZPP_GeomVert;
         var _loc3_:ZPP_GeomVert = linkright(param1.pr,param1.okeyr);
         var _loc4_:ZPP_GeomVert = linkleft(param2.p1,param2.okey1);
         var _loc5_:ZPP_GeomVert = _loc3_.next;
         var _loc6_:ZPP_GeomVert = _loc4_.prev;
         if((param1.keyr & 4) != 0)
         {
            if(param2.pr == param2.p1)
            {
               param2.pr = _loc3_.prev;
            }
            param2.p1 = _loc3_.prev;
            _loc3_.prev.next = _loc4_.next;
            _loc4_.next.prev = _loc3_.prev;
            _loc7_ = _loc3_;
            _loc7_.free();
            _loc7_.next = ZPP_GeomVert.zpp_pool;
            ZPP_GeomVert.zpp_pool = _loc7_;
         }
         else
         {
            _loc3_.next = _loc4_.next;
            _loc4_.next.prev = _loc3_;
         }
         _loc7_ = _loc4_;
         _loc7_.free();
         _loc7_.next = ZPP_GeomVert.zpp_pool;
         ZPP_GeomVert.zpp_pool = _loc7_;
         if((param1.keyr & 16) != 0)
         {
            param2.pd = _loc5_.next;
            _loc5_.next.prev = _loc6_.prev;
            _loc6_.prev.next = _loc5_.next;
            _loc7_ = _loc5_;
            _loc7_.free();
            _loc7_.next = ZPP_GeomVert.zpp_pool;
            ZPP_GeomVert.zpp_pool = _loc7_;
         }
         else
         {
            _loc5_.prev = _loc6_.prev;
            _loc6_.prev.next = _loc5_;
         }
         _loc7_ = _loc6_;
         _loc7_.free();
         _loc7_.next = ZPP_GeomVert.zpp_pool;
         ZPP_GeomVert.zpp_pool = _loc7_;
      }
      
      public function combDown(param1:int) : Boolean
      {
         var _loc2_:* = (param1 & 112) >> 4;
         return comb(_loc2_);
      }
      
      public function comb(param1:int) : Boolean
      {
         var _loc2_:* = 0;
         if((param1 & 1) != 0)
         {
            _loc2_++;
         }
         if((param1 & 2) != 0)
         {
            _loc2_++;
         }
         if((param1 & 4) != 0)
         {
            _loc2_++;
         }
         return _loc2_ >= 2;
      }
   }
}
