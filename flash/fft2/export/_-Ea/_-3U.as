package _-Ea
{
   public class _-3U extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_ || (_-3U))
      {
         _-F5 = "AchievementReceived";
         if(_loc1_)
         {
            _-1u = "GameAchievements";
            ERROR = "Error";
            IO_ERROR = "IOError";
         }
         _-6q = "ALIGN_R";
         _-Hq = "ALIGN_BL";
         if(!(_loc2_ && (_loc1_)))
         {
            _-1q = "ALIGN_B";
            _-98 = "ALIGN_BR";
            _-EF = "ShortForm";
            if(_loc1_)
            {
               _-1r = "LongForm";
            }
            return;
         }
         _-0d = "NoForm";
         if(_loc1_)
         {
            _dispatcher = new _-IT();
         }
         return;
      }
      if(!_loc2_)
      {
         _-JO = "ALIGN_TL";
         _-3Y = "ALIGN_T";
         _-7X = "ALIGN_TR";
         if(!(_loc2_ && (_loc2_)))
         {
            _-LJ = "ALIGN_L";
            _-8Y = "ALIGN_C";
            if(_loc2_)
            {
            }
            _-1q = "ALIGN_B";
            _-98 = "ALIGN_BR";
            _-EF = "ShortForm";
            if(_loc1_)
            {
            }
            return;
         }
         _-1r = "LongForm";
         _-0d = "NoForm";
         if(_loc1_)
         {
            _dispatcher = new _-IT();
         }
         return;
      }
      if(!(_loc2_ && (_loc1_)))
      {
         _-1q = "ALIGN_B";
         _-98 = "ALIGN_BR";
         _-EF = "ShortForm";
         if(_loc1_)
         {
            _-1r = "LongForm";
         }
         return;
      }
      if(_loc1_)
      {
         _dispatcher = new _-IT();
      }
      }
      
      public function _-3U()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static const _-H4:String = "AchievementOwned";
      
      public static const _-F5:String = "AchievementReceived";
      
      public static const _-1u:String = "GameAchievements";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IOError";
      
      public static const _-Bb:String = "IOPending";
      
      public static const _-JO:String = "ALIGN_TL";
      
      public static const _-3Y:String = "ALIGN_T";
      
      public static const _-7X:String = "ALIGN_TR";
      
      public static const _-LJ:String = "ALIGN_L";
      
      public static const _-8Y:String = "ALIGN_C";
      
      public static const _-6q:String = "ALIGN_R";
      
      public static const _-Hq:String = "ALIGN_BL";
      
      public static const _-1q:String = "ALIGN_B";
      
      public static const _-98:String = "ALIGN_BR";
      
      public static const _-EF:String = "ShortForm";
      
      public static const _-1r:String = "LongForm";
      
      public static const _-0d:String = "NoForm";
      
      private static var _-Kp:Number;
      
      private static var _-Fs:Number;
      
      private static var _dispatcher:_-IT;
      
      public static function _-2E() : String
      {
         return _-AH._-2E();
      }
      
      public static function _-t(param1:Object = null) : void
      {
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
         {
            _-AH.send("events_getAchievements",param1);
         }
      }
      
      public static function _-J9(param1:Object) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_-3U)))
         {
            _-AH.send("events_unlockAchievement",param1);
         }
      }
      
      public static function _-Gk(param1:String) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            _-AH.send("events_beginSession",{"achievementID":param1},null,null);
         }
      }
      
      public static function _-3f(param1:Object = null) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            _-AH._-Kw();
            if(_loc3_)
            {
               _-AH._-Ct();
               if(_loc3_ || (param1))
               {
               }
               return;
            }
         }
         _-AH.send("events_showAwards",param1);
      }
      
      public static function set(param1:Object) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (param1))
         {
            _-AH._-Kw();
            if(!(_loc3_ && (_loc2_)))
            {
               _-AH._-D-();
               if(_loc2_)
               {
               }
            }
            _-AH.send("events_setNotifications",param1,null,null);
         }
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_)
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function _-KT(param1:String, param2:Object) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!_loc3_)
         {
            _dispatcher._-KT(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(_loc3_ || (param1))
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
      
      public static function _-3X(param1:String = "gameplay") : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (_loc3_))
         {
            _-AH.send("events_setRoundID",{"tag":String(param1)},null,null);
         }
      }
      
      public static function _-LV() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            _-AH.send("events_clearRoundID",null,null,null);
         }
      }
      
      public static function _-9M(param1:String, param2:* = null) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!_loc3_)
         {
            _-AH.send("events_trackEvent",{
               "tag":param1,
               "value":param2
            },null,null);
         }
      }
   }
}
