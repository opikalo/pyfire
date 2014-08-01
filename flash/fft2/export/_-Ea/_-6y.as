package _-Ea
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   
   public class _-6y extends Object
   {
      
      public function _-6y()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function onClose(param1:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static var _-Cz:Object;
      
      public static var _-JD:Object;
      
      private static var boardID:String;
      
      public static function _-b(param1:String) : void
      {
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
            _-AH._-Hj(param1,true);
            if(_loc3_)
            {
            }
            _-AH.send("scores_setBoardID",{"boardID":param1});
            return;
         }
         _-6y.boardID = param1;
         if(_loc3_)
         {
            _-AH.send("scores_setBoardID",{"boardID":param1});
         }
      }
      
      public static function _-K4(param1:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function  each() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc2_)))
         {
            _-AH.send("scores_closeLeaderboard");
         }
      }
      
      public static function _-8n(param1:Object, param2:Object = null) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(_loc3_ && (_-6y)))
         {
            _-AH.send("scores_getPlayerInfo",null,param1,param2);
         }
      }
      
      public static function _-8x(param1:Number, param2:String, param3:Object = null, param4:Object = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-AY(param1:Object, param2:Object = null) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(_loc3_ && (_-6y)))
         {
            _-AH.send("scores_requestList",null,param1,param2);
         }
      }
      
      public static function _-Ii(param1:Object) : Object
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
