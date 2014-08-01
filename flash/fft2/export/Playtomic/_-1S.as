package Playtomic
{
   import flash.external.ExternalInterface;
   
   public final class _-1s extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(!_loc2_)
      {
         _-r = "today";
         if(!_loc2_)
         {
            LAST7DAYS = "last7days";
            if(!(_loc2_ && (_-1s)))
            {
               LAST30DAYS = "last30days";
               if(_loc1_)
               {
                  _-9C = "alltime";
                  if(_loc1_ || (_-1s))
                  {
                  }
               }
            }
            return;
         }
      }
      }
      
      public function _-1s()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static const _-r:String = "today";
      
      public static const LAST7DAYS:String = "last7days";
      
      public static const LAST30DAYS:String = "last30days";
      
      public static const _-9C:String = "alltime";
      
      public static const _-5X:String = "newest";
      
      private static var _-KZ:String;
      
      private static var _-G2:String;
      
      private static var _-h:String;
      
      private static var _-Gz:String;
      
      private static var _-5:String;
      
      private static var _-9K:String;
      
      static function _-4w(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
         }
         _-KZ = _-C9._-7G("leaderboards-");
         if(!(_loc2_ && (_loc3_)))
         {
            if(_loc2_ && (_loc3_))
            {
            }
            _-G2 = _-C9._-7G("leaderboards-createprivateleaderboard-");
            if(_loc2_ && (_loc3_))
            {
            }
            _-h = _-C9._-7G("leaderboards-loadprivateleaderboard-");
            if(_loc2_)
            {
            }
            _-Gz = _-C9._-7G("leaderboards-saveandlist-");
            if(_loc3_ || (_loc3_))
            {
            }
            _-5 = _-C9._-7G("leaderboards-save-");
            if(_loc3_ || (_-1s))
            {
               if(_loc2_ && (_loc2_))
               {
               }
               _-9K = _-C9._-7G("leaderboards-list-");
            }
         }
      }
      
      public static function _-EG(param1:String, param2:String, param3:Function = null, param4:Boolean = true) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         new Object()["table"] = param1;
         if(_loc6_)
         {
            _loc5_["highest"] = param4?"y":"n";
            if(!(_loc7_ && (param1)))
            {
               _loc5_["permalink"] = param2;
               if(_loc7_)
               {
               }
            }
            return;
         }
         _-El._-2Z(_-KZ,_-G2,_-2j,param3,_loc5_);
      }
      
      private static function _-2j(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(_loc7_ || (param1))
         {
            if(param1 == null)
            {
               if(_loc6_ && (param1))
               {
               }
            }
            if(!_loc6_)
            {
               if(param4._-B4)
               {
                  if(_loc7_ || (param1))
                  {
                  }
                  param2 = param2;
                  return;
               }
               param1(_loc5_,param4);
               param2 = param2;
               return;
            }
            param1(_loc5_,param4);
            param2 = param2;
            return;
         }
      }
      
      public static function _-4c(param1:String, param2:Function = null) : void
      {
         var _loc5_:* = false;
         var _loc3_:Object = new Object();
         if(_loc4_ || (_loc3_))
         {
            _loc3_["tableid"] = param1;
            if(_loc5_)
            {
            }
            return;
         }
         _-El._-2Z(_-KZ,_-h,_-9G,param2,_loc3_);
      }
      
      private static function _-9G(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!_loc6_)
         {
            if(param1 == null)
            {
               if(_loc7_ || (param1))
               {
               }
            }
            _loc5_ = null;
            if(_loc7_ || (param1))
            {
               if(param4._-B4)
               {
                  if(!_loc6_)
                  {
                     _loc5_ = new _-1S(param3["tableid"],param3["name"],param3["bitly"],param3["permalink"],param3["highest"] == "true",param3["realname"]);
                  }
               }
               param1(_loc5_,param4);
            }
            param2 = param2;
            return;
         }
      }
      
      public static function _-AG() : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-CK(param1:_-1o, param2:String, param3:Function = null, param4:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function extends(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function Save(param1:_-1o, param2:String, param3:Function = null, param4:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-75(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(_loc5_ || (_-1s))
         {
            if(param1 == null)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var param3:XML = param3;
         var param2:Object = param2;
         if(!_loc6_)
         {
            param1(param4);
         }
      }
      
      public static function List(param1:String, param2:Function, param3:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-JE(param1:Function, param2:Object, param3:XML = null, param4:_-0k = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-Jf(param1:XML, param2:_-0k, param3:Function) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
