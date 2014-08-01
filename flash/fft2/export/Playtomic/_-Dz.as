package Playtomic
{
   public final class _-Dz extends Object
   {
      
      public function _-Dz()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static var _-KZ:String;
      
      private static var _-5:String;
      
      private static var _-4R:String;
      
      private static var _-L8:String;
      
      private static var _-Dm:String;
      
      static function _-4w(param1:String) : void
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc2_)))
         {
            if(_loc2_)
            {
            }
            _-KZ = _-C9._-7G("parse-");
            if(!_loc2_)
            {
               if(_loc3_ || (_-Dz))
               {
               }
               _-5 = _-C9._-7G("parse-save-");
               if(_loc3_)
               {
               }
               return;
            }
            if(_loc3_)
            {
            }
            _-L8 = _-C9._-7G("parse-load-");
            if(!(_loc2_ && (_-Dz)))
            {
               if(_loc2_ && (_loc3_))
               {
               }
               _-Dm = _-C9._-7G("parse-find-");
            }
            return;
         }
         if(_loc3_)
         {
         }
         _-4R = _-C9._-7G("parse-delete-");
         if(_loc3_ || (_loc3_))
         {
            if(_loc3_)
            {
            }
            _-L8 = _-C9._-7G("parse-load-");
            if(_loc2_ && (_-Dz))
            {
            }
            return;
         }
         if(_loc2_ && (_loc3_))
         {
         }
         _-Dm = _-C9._-7G("parse-find-");
      }
      
      public static function Save(param1:_-At, param2:Function = null) : void
      {
         var _loc4_:* = false;
         if(!_loc4_)
         {
            _-El._-2Z(_-KZ,_-5,_-75,param2,_-9F(param1));
         }
      }
      
      private static function _-75(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-JH(param1:_-At, param2:Function = null) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(_loc3_ && (_loc3_)))
         {
            _-El._-2Z(_-KZ,_-4R,_-Lp,param2,_-9F(param1));
         }
      }
      
      private static function _-Lp(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-2Z(param1:String, param2:String, param3:Function = null) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:_-At = new _-At();
         _loc4_._-CD = param1;
         if(_loc6_)
         {
            _loc4_._-2a = param2;
            if(!_loc5_)
            {
               _-El._-2Z(_-KZ,_-L8,_-Ak,param3,_-9F(_loc4_));
            }
         }
      }
      
      private static function _-Ak(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-9i(param1: else, param2:Function = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-53(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc6_:XMLList = null;
         var _loc7_:XML = null;
         var _loc8_:_-At = null;
         var _loc9_:XMLList = null;
         var _loc10_:XML = null;
         if(!(_loc15_ && (param2)))
         {
            if(param1 == null)
            {
               if(_loc16_ || (param2))
               {
                  return;
               }
            }
         }
         var _loc5_:Array = new Array();
         if(_loc16_ || (_-Dz))
         {
            if(param4._-B4)
            {
            }
            param1(_loc5_,param4);
            param2 = param2;
            return;
         }
         _loc6_ = param3["objects"];
         for each(_loc7_ in _loc6_.children())
         {
            _loc8_ = new _-At();
            _loc8_._-CD = _loc7_["id"];
            if(!_loc15_)
            {
               _loc8_._-Ay = _-1I(_loc7_["created"]);
               if(_loc15_ && (_-Dz))
               {
                  continue;
               }
            }
            _loc8_._-G3 = _-1I(_loc7_["updated"]);
            if(!(_loc15_ && (param1)))
            {
               if(_loc7_.contains("fields"))
               {
                  if(!(_loc15_ && (param3)))
                  {
                     _loc9_ = _loc7_["fields"];
                     if(_loc16_ || (param3))
                     {
                        if(_loc16_ || (param2))
                        {
                           for each(_loc10_ in _loc9_.children())
                           {
                              if(!_loc15_)
                              {
                                 _loc8_[_loc10_.name] = _loc10_.text();
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     continue;
                  }
               }
               _loc5_.push(_loc8_);
            }
         }
         param1(_loc5_,param4);
         var param2:Object = param2;
      }
      
      private static function _-9F(param1:_-At) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-1I(param1:String) : Date
      {
         var _loc2_:Array = param1.split(" ");
         var _loc3_:Array = (_loc2_[0] as String).split("/");
         var _loc4_:Array = (_loc2_[1] as String).split(":");
         var _loc5_:int = int(_loc3_[1]);
         var _loc7_:int = int(_loc3_[2]);
         var _loc8_:int = int(_loc4_[0]);
         var _loc9_:int = int(_loc4_[1]);
         var _loc10_:int = int(_loc4_[2]);
         return new Date(Date.UTC(_loc7_,_loc6_,_loc5_,_loc8_,_loc9_,_loc10_));
      }
   }
}
