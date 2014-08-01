package Playtomic
{
   import flash.utils.ByteArray;
   import flash.display.BitmapData;
   
   final class _-C9 extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(!(_loc2_ && (_loc2_)))
      {
         _-6u = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         if(!(_loc2_ && (_loc2_)))
         {
            for  = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,62,-1,-1,-1,63,52,53,54,55,56,57,58,59,60,61,-1,-1,-1,-1,-1,-1,-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,-1,-1,-1,-1,-1,-1,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,-1,-1,-1,-1,-1];
            if(_loc2_)
            {
            }
            _-g = "0123456789abcdef";
            return;
         }
      }
      if(!(_loc2_ && (_loc2_)))
      {
         _-g = "0123456789abcdef";
      }
      }
      
      function _-C9()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static const _-6u:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      static function Base64(param1:ByteArray) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static const for :Array;
      
      static function Base64Decode(param1:String) : ByteArray
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      static function _-CF(param1:BitmapData) : ByteArray
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static var _-8a:Array;
      
      private static var _-JJ:Boolean = false;
      
      private static function _-6I(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static var _-g:String = "0123456789abcdef";
      
      private static function _-w(param1:Number, param2:Number) : Number
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(_loc5_ || (_-C9))
         {
            if(_loc6_)
            {
            }
         }
         if(_loc5_ || (param2))
         {
         }
         var _loc4_:* = param1;
         if(_loc5_)
         {
         }
         return _loc4_ << 1;
      }
      
      private static function _-Ls(param1:Number, param2:Number) : Number
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!_loc6_)
         {
            if(_loc6_ && (param2))
            {
            }
         }
         var _loc3_:* = param1;
         if(_loc5_ || (param1))
         {
         }
         var _loc4_:* = param1;
         if(_loc5_)
         {
         }
         return _loc4_ << 1;
      }
      
      private static function _-5K(param1:Number, param2:Number) : Number
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!(_loc6_ && (_-C9)))
         {
            if(_loc6_ && (param2))
            {
            }
         }
         if(_loc5_ || (param1))
         {
         }
         var _loc4_:* = param1;
         if(_loc5_)
         {
         }
         return _loc4_ << 1;
      }
      
      private static function _-09(param1:Number, param2:Number) : Number
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-s(param1:Number) : String
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc2_:* = "";
         if(!(_loc4_ && (_loc3_)))
         {
            _loc3_ = 0;
         }
         while(_loc3_ <= 3)
         {
            if(!(_loc4_ && (_loc3_)))
            {
               if(_loc4_ && (_loc2_))
               {
               }
               if(_loc4_ && (param1))
               {
               }
               if(!(_loc4_ && (param1)))
               {
                  _loc2_ = _loc2_ + (_-g.charAt(param1 >> _loc3_ * 8) + _-g.charAt(param1 >> _loc3_ * 8 & 15));
                  if(!_loc4_)
                  {
                     _loc3_++;
                     if(!_loc4_)
                     {
                        continue;
                     }
                     break;
                  }
                  break;
                  break;
               }
               if(_loc4_ && (param1))
               {
               }
            }
            return _loc2_;
            break;
         }
         return _loc2_;
      }
      
      private static function _-DO(param1:String) : Array
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         if(_loc7_ || (param1))
         {
         }
         var _loc2_:* = (param1.length + 8 >> 6) + 1;
         var _loc3_:Array = new Array(_loc2_ * 16);
         if(_loc7_)
         {
            _loc4_ = 0;
         }
         loop0:
         while(_loc7_ || (_-C9))
         {
            if(_loc7_ || (_loc3_))
            {
            }
            if(_loc4_ >= _loc2_)
            {
               if(_loc7_)
               {
                  if(!_loc6_)
                  {
                     _loc4_ = 0;
                     if(_loc7_ || (_loc2_))
                     {
                     }
                     _loc3_[_loc4_ >> 2] = _loc3_[_loc4_ >> 2] | 128 << (param1.length * 8 + _loc4_) % 4 * 8;
                     break;
                  }
                  break;
                  break;
               }
               if(_loc7_)
               {
               }
            }
            else
            {
               _loc3_[_loc4_] = 0;
               if(!_loc6_)
               {
                  _loc4_++;
                  if(_loc7_ || (param1))
                  {
                     continue;
                  }
               }
            }
            while(true)
            {
               if(!(_loc6_ && (_loc2_)))
               {
                  if(_loc4_ >= param1.length)
                  {
                     if(_loc7_)
                     {
                        _loc3_[_loc4_ >> 2] = _loc3_[_loc4_ >> 2] | 128 << (param1.length * 8 + _loc4_) % 4 * 8;
                     }
                     break loop0;
                  }
                  _loc3_[_loc4_ >> 2] = _loc3_[_loc4_ >> 2] | param1.charCodeAt(_loc4_) << (param1.length * 8 + _loc4_) % 4 * 8;
                  _loc4_++;
                  continue;
               }
               break loop0;
               if(!(_loc6_ && (_loc2_)))
               {
                  break loop0;
               }
               break loop0;
            }
            break;
         }
         var _loc5_:* = _loc4_;
         if(!_loc6_)
         {
            _loc3_[_loc2_ * 16 - 2] = _loc5_ & 255;
            if(_loc6_)
            {
            }
            _loc3_[_loc2_ * 16 - 2] = _loc3_[_loc2_ * 16 - 2] | (_loc5_ >>> 24 & 255) << 24;
            return _loc3_;
         }
         _loc3_[_loc2_ * 16 - 2] = _loc3_[_loc2_ * 16 - 2] | (_loc5_ >>> 8 & 255) << 8;
         if(_loc7_)
         {
            _loc3_[_loc2_ * 16 - 2] = _loc3_[_loc2_ * 16 - 2] | (_loc5_ >>> 16 & 255) << 16;
            if(_loc7_ || (_loc3_))
            {
            }
            return _loc3_;
         }
         _loc3_[_loc2_ * 16 - 2] = _loc3_[_loc2_ * 16 - 2] | (_loc5_ >>> 24 & 255) << 24;
         return _loc3_;
      }
      
      private static function _-1g(param1:Number, param2:Number) : Number
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(_loc3_)
         {
         }
         return param1 << param2;
      }
      
      private static function catch(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Number
      {
         return _-09(_-1g(_-09(_-09(param2,param1),_-09(param4,param6)),param5),param3);
      }
      
      private static function _-C6(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return catch(_-w(_-5K(param2,param3),_-5K(~param2,param4)),param1,param2,param5,param6,param7);
      }
      
      private static function _-50(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return catch(_-w(_-5K(param2,param4),_-5K(param3,~param4)),param1,param2,param5,param6,param7);
      }
      
      private static function const(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return catch(_-Ls(_-Ls(param2,param3),param4),param1,param2,param5,param6,param7);
      }
      
      private static function in(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : Number
      {
         return catch(_-Ls(param3,_-w(param2,~param4)),param1,param2,param5,param6,param7);
      }
      
      static function _-7G(param1:String) : String
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
   }
}
