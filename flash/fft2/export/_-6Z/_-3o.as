package _-6Z
{
   import flash.display.DisplayObject;
   import com.junkbyte.console.Cc;
   import com.junkbyte.console.KeyBind;
   import _-72._-5B;
   import _-72.break;
   
   public class _-3o extends Object
   {
      
      public function _-3o()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function init(param1:DisplayObject) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-8W() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (_-3o))
         {
            if(_loc2_)
            {
            }
            Cc.visible = Cc.visible;
         }
      }
      
      public static function get log() : Function
      {
         return Cc.log;
      }
      
      public static function get debugch() : Function
      {
         return Cc.debugch;
      }
      
      public static function get infoch() : Function
      {
         return Cc.infoch;
      }
      
      public static function startLevel(param1:String) : void
      {
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
            _-5B._-72(break.GAME_START,{
               "truckColor":0,
               "trailerColor":0,
               "levelIndex":int(param1),
               "sublevelIndex":0
            });
         }
      }
   }
}
