package Playtomic
{
   import flash.system.Capabilities;
   
   final class _-4d extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-L0 = 0;
         if(!(_loc2_ && (_loc1_)))
         {
            _-6l = "0123456789abcdef";
         }
      }
      }
      
      function _-4d()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static var _-L0:Number = 0;
      
      private static const _-6l:String = "0123456789abcdef";
      
      public static function Create() : String
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.getTime();
         if(_loc8_)
         {
         }
         _-L0 = _-L0 + 1;
         return _-9S(_-LO(true (_loc5_),_loc5_.length * 8));
      }
      
      private static function _-LO(param1:Array, param2:Number) : Array
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function sha1_ft(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function sha1_kt(param1:Number) : Number
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-DY(param1:Number, param2:Number) : Number
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-1g(param1:Number, param2:Number) : Number
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_)
         {
         }
         return param1 << param2;
      }
      
      private static function true (param1:String) : Array
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(_loc5_)
         {
         }
         if(_loc6_ || (_-4d))
         {
         }
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            while(_loc4_ < param1.length * 8)
            {
               _loc2_[_loc4_ >> 5] = _loc2_[_loc4_ >> 5] | (param1.charCodeAt(_loc4_ / 8) & _loc3_) << 24 - _loc4_ % 32;
               if(_loc6_ || (param1))
               {
                  if(_loc6_ || (_loc3_))
                  {
                     if(!(_loc6_ || (param1)))
                     {
                        continue;
                     }
                  }
                  _loc4_ = _loc4_;
                  if(!(_loc5_ && (param1)))
                  {
                     continue loop0;
                  }
                  break;
               }
               break;
            }
            return _loc2_;
         }
      }
      
      private static function _-9S(param1:Array) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
