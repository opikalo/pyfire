package _-72
{
   import _-K9._-1p;
   
   public class break extends Object
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(_loc2_ || (break))
      {
         INIT = "INIT";
         if(_loc2_)
         {
            UPDATE_USER_INFO = "UPDATE_USER_INFO";
            if(_loc2_ || (break))
            {
               if(_loc1_ && (_loc2_))
               {
               }
               SITEBLOCK = _-1p._-IG(-940,382);
               if(!_loc1_)
               {
                  SHOW_SCREEN = "SHOW_SCREEN";
                  SHOW_ACHIEVEMENTS_WINDOW = "SHOW_ACHIEVEMENTS_WINDOW";
                  if(_loc2_ || (_loc2_))
                  {
                     GAME_START = "GAME_START";
                     if(!_loc1_)
                     {
                        GAME_EXIT = "GAME_EXIT";
                        if(!(_loc1_ && (break)))
                        {
                           GAME_END = "GAME_END";
                           GAME_OVER = "GAME_OVER";
                           GAME_PAUSE = "GAME_PAUSE";
                           if(_loc2_)
                           {
                              GAME_RESUME = "GAME_RESUME";
                              GAME_RESTART = "GAME_RESTART";
                           }
                        }
                        GAME_WIN = "GAME_WIN";
                        GAME_NEXT_LEVEL = "GAME_NEXT_LEVEL";
                     }
                     SHOW_PAUSE_WINDOW = "SHOW_PAUSE_WINDOW";
                     if(_loc2_ || (_loc1_))
                     {
                     }
                     HIDE_ALL_WINDOWS = "HIDE_ALL_WINDOWS";
                     SOUND_OPTIONS = "SOUND_OPTIONS";
                     return;
                  }
                  GAME_FINISH = "GAME_FINISH";
                  if(!_loc1_)
                  {
                     SHOW_CONFIRM_WINDOW = "SHOW_CONFIRM_WINDOW";
                     if(_loc2_ || (_loc1_))
                     {
                        SHOW_FAILED_WINDOW = "SHOW_FAILED_WINDOW";
                        if(_loc2_ || (break))
                        {
                        }
                        SHOW_MAP_WINDOW = "SHOW_MAP_WINDOW";
                     }
                     return;
                  }
                  SHOW_NEXT_CAR_WINDOW = "SHOW_NEXT_CAR_WINDOW";
                  if(_loc2_)
                  {
                     HIDE_ALL_WINDOWS = "HIDE_ALL_WINDOWS";
                     SOUND_OPTIONS = "SOUND_OPTIONS";
                  }
                  return;
               }
               SHOW_RUN_OVER_WATER_WINDOW = "SHOW_RUN_OVER_WATER_WINDOW";
            }
         }
         SHOW_RUN_OVER_WINDOW = "SHOW_RUN_OVER_WINDOW";
         if(!_loc1_)
         {
            SHOW_NEW_GAME_WINDOW = "SHOW_NEW_GAME_WINDOW";
            if(!(_loc1_ && (_loc1_)))
            {
               SHOW_MAP_WINDOW = "SHOW_MAP_WINDOW";
               SHOW_NEXT_CAR_WINDOW = "SHOW_NEXT_CAR_WINDOW";
               if(_loc2_)
               {
                  HIDE_ALL_WINDOWS = "HIDE_ALL_WINDOWS";
               }
            }
            return;
         }
         SOUND_OPTIONS = "SOUND_OPTIONS";
         return;
      }
      if(_loc2_ || (_loc1_))
      {
         SHOW_RUN_OVER_WATER_WINDOW = "SHOW_RUN_OVER_WATER_WINDOW";
         SHOW_RUN_OVER_WINDOW = "SHOW_RUN_OVER_WINDOW";
         if(!_loc1_)
         {
            SHOW_NEW_GAME_WINDOW = "SHOW_NEW_GAME_WINDOW";
            if(!(_loc1_ && (_loc1_)))
            {
               SHOW_MAP_WINDOW = "SHOW_MAP_WINDOW";
               SHOW_NEXT_CAR_WINDOW = "SHOW_NEXT_CAR_WINDOW";
               if(_loc2_)
               {
               }
            }
            return;
         }
         SOUND_OPTIONS = "SOUND_OPTIONS";
         return;
      }
      }
      
      public function break(param1:String, param2:*)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!_loc4_)
         {
            super();
            if(_loc4_ && (this))
            {
            }
            return;
         }
         this._type = param1;
         if(!_loc4_)
         {
            this._params = param2;
         }
      }
      
      public static const INIT:String = "INIT";
      
      public static const UPDATE_USER_INFO:String = "UPDATE_USER_INFO";
      
      public static const SITEBLOCK:String = "SITEBLOCK";
      
      public static const SHOW_SCREEN:String = "SHOW_SCREEN";
      
      public static const SHOW_ACHIEVEMENTS_WINDOW:String = "SHOW_ACHIEVEMENTS_WINDOW";
      
      public static const GAME_START:String = "GAME_START";
      
      public static const GAME_EXIT:String = "GAME_EXIT";
      
      public static const GAME_END:String = "GAME_END";
      
      public static const GAME_OVER:String = "GAME_OVER";
      
      public static const GAME_PAUSE:String = "GAME_PAUSE";
      
      public static const GAME_RESUME:String = "GAME_RESUME";
      
      public static const GAME_RESTART:String = "GAME_RESTART";
      
      public static const GAME_WIN:String = "GAME_WIN";
      
      public static const GAME_NEXT_LEVEL:String = "GAME_NEXT_LEVEL";
      
      public static const GAME_FINISH:String = "GAME_FINISH";
      
      public static const SHOW_CONFIRM_WINDOW:String = "SHOW_CONFIRM_WINDOW";
      
      public static const SHOW_FAILED_WINDOW:String = "SHOW_FAILED_WINDOW";
      
      public static const SHOW_LEVEL_COMPLETE_WINDOW:String = "SHOW_LEVEL_COMPLETE_WINDOW";
      
      public static const SHOW_PAUSE_WINDOW:String = "SHOW_PAUSE_WINDOW";
      
      public static const SHOW_RUN_OVER_WATER_WINDOW:String = "SHOW_RUN_OVER_WATER_WINDOW";
      
      public static const SHOW_RUN_OVER_WINDOW:String = "SHOW_RUN_OVER_WINDOW";
      
      public static const SHOW_NEW_GAME_WINDOW:String = "SHOW_NEW_GAME_WINDOW";
      
      public static const SHOW_MAP_WINDOW:String = "SHOW_MAP_WINDOW";
      
      public static const SHOW_NEXT_CAR_WINDOW:String = "SHOW_NEXT_CAR_WINDOW";
      
      public static const HIDE_ALL_WINDOWS:String = "HIDE_ALL_WINDOWS";
      
      public static const SOUND_OPTIONS:String = "SOUND_OPTIONS";
      
      private var _type:String;
      
      private var _params;
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get params() : *
      {
         return this._params;
      }
   }
}
