package Playtomic
{
   import flash.net.URLLoader;
   import _-K9._-1p;
   import flash.utils.Timer;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   final class _-El extends URLLoader
   {
      
      function _-El()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this._-5E = new URLRequest();
         if(_loc1_)
         {
            super();
            addEventListener("ioError",_-8C);
            if(_loc1_)
            {
               addEventListener("networkError",_-8C);
               addEventListener("verifyError",_-8C);
               if(_loc1_)
               {
                  addEventListener("diskError",_-8C);
                  if(_loc2_)
                  {
                  }
               }
               addEventListener("complete",_-Le);
            }
            addEventListener("securityError",_-8C);
            addEventListener("httpStatus",_-An);
            if(!_loc2_)
            {
               addEventListener("complete",_-Le);
            }
         }
      }
      
      private static var _-6m:Vector.<_-El>;
      
      private static var _-7S:Vector.<_-El>;
      
      private static var _-G1:String;
      
      private static var _-HP:String;
      
      private static var _-11:String;
      
      public static function _-4w() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-4r(param1:Function, param2:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-BU(param1:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-GO(param1:Object) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-2Z(param1:String, param2:String, param3:Function, param4:Function, param5:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-AL(param1:String) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-4p(param1:String, param2:String, param3:Array) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-JF(param1:Event) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-Le(param1:Event) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:_-El = param1.target as _-El;
         if(!(_loc7_ && (_-El)))
         {
            if(_loc2_.do)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
            else
            {
               _loc2_.do = true;
               if(_loc2_.complete == null)
               {
                  if(!(_loc7_ && (_-El)))
                  {
                     return;
                  }
               }
               return;
            }
         }
         if(_loc2_.do)
         {
            if(_loc6_)
            {
               _loc2_.complete(true);
            }
            return;
         }
         var _loc3_:XML = XML(_loc2_.data);
         var _loc5_:int = parseInt(_loc3_["errorcode"]);
         if(_loc6_ || (param1))
         {
            _loc2_.complete(_loc2_.callback,_loc2_._-0b,_loc3_,new _-0k(_loc4_,_loc5_));
         }
      }
      
      private static function _-8C(param1:Event) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-An(param1:Event) : void
      {
      }
      
      private static function _-2c(param1:_-El) : void
      {
         var _loc3_:* = false;
         if(!(_loc3_ && (param1)))
         {
            if(!param1.do)
            {
               if(_loc2_ || (_-El))
               {
                  param1.do = true;
                  if(_loc2_ || (_loc2_))
                  {
                  }
                  return;
               }
               param1.close();
               if(_loc2_)
               {
               }
               return;
            }
         }
         _-6m.push(param1);
      }
      
      private var _-5E:URLRequest;
      
      private var complete:Function;
      
      private var callback:Function;
      
      private var do:Boolean;
      
      private var _-Bc:Boolean;
      
      private var _-0b:Object;
      
      private var time:int;
   }
}
