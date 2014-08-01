package Playtomic
{
   public class _-0k extends Object
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(_loc2_ || (_loc1_))
      {
         _-KP[2] = "Invalid game credentials. Make sure you use your SWFID and GUID from the `API` section in the dashboard.";
         _-KP[3] = "Request timed out.";
         if(!_loc1_)
         {
            _-KP[4] = "Invalid request.";
            if(!_loc1_)
            {
               _-KP[100] = "GeoIP API has been disabled. This may occur if your game is faulty or overwhelming the Playtomic servers.";
               _-KP[200] = "Leaderboard API has been disabled. This may occur if your game is faulty or overwhelming the Playtomic servers.";
               _-KP[201] = "The source URL or name weren\'t provided when saving a score. Make sure the player specifies a name and the game is initialized before anything else using the code in the `Set your game up` section.";
               if(_loc2_)
               {
                  _-KP[202] = "Invalid auth key. You should not see this normally, players might if they tamper with your game.";
                  if(!_loc1_)
                  {
                     _-KP[203] = "No Facebook user id on a score specified as a Facebook submission.";
                     if(!(_loc1_ && (_loc1_)))
                     {
                        _-KP[204] = "Table name wasn\'t specified for creating a private leaderboard.";
                        if(_loc2_ || (_loc2_))
                        {
                           _-KP[205] = "Permalink structure wasn\'t specified: http://website.com/game/whatever?leaderboard=";
                           _-KP[206] = "Leaderboard id wasn\'t provided loading a private leaderboard.";
                           _-KP[207] = "Invalid leaderboard id was provided for a private leaderboard.";
                           if(!_loc1_)
                           {
                              _-KP[208] = "Player is banned from submitting scores in your game.";
                              if(_loc2_)
                              {
                                 _-KP[209] = "Score was not the player\'s best score.  You can notify the player, or circumvent this by pecifying \'allowduplicates\' to be true in your save options.";
                                 _-KP[300] = "GameVars API has been disabled. This may occur if your game is faulty or overwhelming the Playtomic servers.";
                                 if(_loc2_ || (_loc1_))
                                 {
                                    _-KP[400] = "Level sharing API has been disabled. This may occur if your game is faulty or overwhelming the Playtomic servers.";
                                    if(_loc2_ || (_loc2_))
                                    {
                                       _-KP[401] = "Invalid rating value (must be 1 - 10).";
                                       _-KP[402] = "Player has already rated that level.";
                                       _-KP[403] = "The level name wasn\'t provided when saving a level.";
                                       if(_loc2_ || (_loc1_))
                                       {
                                       }
                                    }
                                 }
                                 _-KP[6021] = "Parse\'s servers had an error.";
                                 if(_loc2_ || (_loc2_))
                                 {
                                    _-KP[602101] = "Object not found.  Make sure you include the classname and objectid and that they are correct.";
                                    if(_loc2_ || (_loc1_))
                                    {
                                    }
                                 }
                                 _-KP[602108] = "Command unavailable.";
                                 return;
                              }
                              _-KP[406] = "The level already exists. This is determined via a hash of the game id, level name, player ip address and name, and source url.";
                              if(_loc1_)
                              {
                              }
                           }
                           _-KP[602106] = "Invalid pointer.";
                           if(_loc1_)
                           {
                           }
                           return;
                        }
                        _-KP[602103] = "Invalid classname.";
                     }
                     _-KP[602104] = "Missing objectid.";
                     if(!(_loc1_ && (_-0k)))
                     {
                        _-KP[602105] = "Invalid key name.";
                     }
                     _-KP[602106] = "Invalid pointer.";
                     if(_loc1_)
                     {
                     }
                     return;
                  }
                  _-KP[600] = "You have not configured your Parse.com database.  Sign up at Parse and then enter your API credentials in your Playtomic dashboard.";
                  if(_loc2_)
                  {
                     _-KP[601] = "No response was returned from Parse.  If you experience this a lot let us know exactly what you\'re doing so we can sort out a fix for it.";
                     _-KP[6021] = "Parse\'s servers had an error.";
                     if(_loc2_ || (_loc2_))
                     {
                        _-KP[602101] = "Object not found.  Make sure you include the classname and objectid and that they are correct.";
                        if(_loc2_ || (_loc1_))
                        {
                        }
                     }
                     _-KP[602108] = "Command unavailable.";
                     return;
                  }
               }
               _-KP[602107] = "Invalid JSON.";
               _-KP[602108] = "Command unavailable.";
               return;
            }
            _-KP[404] = "Invalid image auth. You should not see this normally, players might if they tamper with your game.";
            if(_loc2_)
            {
               _-KP[405] = "Invalid image auth (again). You should not see this normally, players might if they tamper with your game.";
               if(!_loc1_)
               {
                  _-KP[406] = "The level already exists. This is determined via a hash of the game id, level name, player ip address and name, and source url.";
                  if(_loc1_)
                  {
                  }
                  _-KP[602106] = "Invalid pointer.";
                  if(!_loc1_)
                  {
                     _-KP[602107] = "Invalid JSON.";
                     _-KP[602108] = "Command unavailable.";
                  }
                  return;
               }
               _-KP[602101] = "Object not found.  Make sure you include the classname and objectid and that they are correct.";
               if(_loc2_ || (_loc1_))
               {
               }
               _-KP[602107] = "Invalid JSON.";
               _-KP[602108] = "Command unavailable.";
               return;
            }
            _-KP[601] = "No response was returned from Parse.  If you experience this a lot let us know exactly what you\'re doing so we can sort out a fix for it.";
            _-KP[6021] = "Parse\'s servers had an error.";
            if(_loc2_ || (_loc2_))
            {
               _-KP[602101] = "Object not found.  Make sure you include the classname and objectid and that they are correct.";
               if(_loc2_ || (_loc1_))
               {
               }
               _-KP[602107] = "Invalid JSON.";
            }
            _-KP[602108] = "Command unavailable.";
            return;
         }
         _-KP[602102] = "Invalid query.  If you think you\'re doing it right let us know what you\'re doing and we\'ll look into it.";
         if(_loc2_)
         {
            _-KP[602103] = "Invalid classname.";
            _-KP[602104] = "Missing objectid.";
            if(!(_loc1_ && (_-0k)))
            {
               _-KP[602105] = "Invalid key name.";
            }
            _-KP[602106] = "Invalid pointer.";
            if(!_loc1_)
            {
               _-KP[602107] = "Invalid JSON.";
            }
            return;
         }
         _-KP[602108] = "Command unavailable.";
         return;
      }
      if(_loc2_)
      {
         _-KP[601] = "No response was returned from Parse.  If you experience this a lot let us know exactly what you\'re doing so we can sort out a fix for it.";
         _-KP[6021] = "Parse\'s servers had an error.";
         if(_loc2_ || (_loc2_))
         {
            _-KP[602101] = "Object not found.  Make sure you include the classname and objectid and that they are correct.";
            if(_loc2_ || (_loc1_))
            {
               _-KP[602102] = "Invalid query.  If you think you\'re doing it right let us know what you\'re doing and we\'ll look into it.";
               if(_loc2_)
               {
                  _-KP[602103] = "Invalid classname.";
                  _-KP[602104] = "Missing objectid.";
                  if(!(_loc1_ && (_-0k)))
                  {
                     _-KP[602105] = "Invalid key name.";
                  }
                  _-KP[602106] = "Invalid pointer.";
                  if(_loc1_)
                  {
                  }
                  return;
               }
            }
         }
         _-KP[602108] = "Command unavailable.";
         return;
      }
      }
      
      public function _-0k(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this._-B4 = param1 == 1;
               if(_loc4_ || (_loc3_))
               {
                  this._-KJ = param2;
               }
            }
         }
      }
      
      private static const _-KP:Object = new Object();
      
      public var _-B4:Boolean = false;
      
      public var _-KJ:int = 0;
      
      public function get _-1a() : String
      {
         return _-KP[this._-KJ];
      }
      
      public function toString() : String
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
