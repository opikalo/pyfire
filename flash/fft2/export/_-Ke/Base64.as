package _-Ke
{
   import flash.utils.ByteArray;
   
   public class Base64 extends Object
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(!_loc1_)
      {
         _-6u = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
         if(_loc2_)
         {
            version = "1.1.0";
         }
      }
      }
      
      public function Base64()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
         }
         throw new Error("Base64 class is static container only");
      }
      
      private static const _-6u:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
      
      public static const version:String = "1.1.0";
      
      public static function encode(param1:String) : String
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ByteArray = new ByteArray();
         if(_loc4_ || (Base64))
         {
            _loc2_.writeUTFBytes(param1);
         }
         return _-GB(_loc2_);
      }
      
      public static function _-GB(param1:ByteArray) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = _-LF(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function _-LF(param1:String) : ByteArray
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
