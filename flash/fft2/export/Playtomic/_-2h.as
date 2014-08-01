package Playtomic
{
   public final class _-2h extends Object
   {
      
      public function _-2h()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc1_))
         {
            super();
         }
      }
      
      private static var _-KZ:String;
      
      private static var _-L8:String;
      
      private static var _-9N:String;
      
      static function _-4w(param1:String) : void
      {
         var _loc3_:* = true;
         if(_loc3_)
         {
            if(_loc2_)
            {
            }
            _-KZ = _-C9._-7G("gamevars-");
            if(_loc3_ || (param1))
            {
               if(_loc3_)
               {
               }
               _-L8 = _-C9._-7G("gamevars-load-");
               if(_loc2_)
               {
               }
            }
            if(_loc2_)
            {
            }
            _-9N = _-C9._-7G("gamevars-loadsingle-");
         }
      }
      
      public static function _-2Z(param1:Function) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            _-El._-2Z(_-KZ,_-L8,_-Ak,param1,null);
         }
      }
      
      public static function _-0E(param1:String, param2:Function) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Object = new Object();
         if(!(_loc4_ && (param2)))
         {
            _loc3_["name"] = param1;
            if(_loc4_ && (_-2h))
            {
            }
            return;
         }
         _-El._-2Z(_-KZ,_-9N,_-Ak,param2,_loc3_);
      }
      
      private static function _-Ak(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
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
