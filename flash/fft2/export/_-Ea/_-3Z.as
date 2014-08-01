package _-Ea
{
   public class _-3Z extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(!_loc2_)
      {
         _-G5 = "LoggedOut";
         if(_loc1_)
         {
            _-Id = "LoginShow";
            if(_loc1_)
            {
               _-GY = "LoginHide";
               _-I2 = "LoginShown";
               if(!_loc2_)
               {
                  _-8A = "ProfileShow";
                  _-Kb = "ProfileHide";
                  if(!(_loc2_ && (_-3Z)))
                  {
                     _-IO = "PropertySaved";
                  }
                  ERROR = "Error";
                  if(_loc1_ || (_loc2_))
                  {
                     IO_ERROR = "IOError";
                     _-Ag = "NoUser";
                     if(_loc1_ || (_loc1_))
                     {
                     }
                  }
                  _-3Z.addEventListener(_-3Z._-G5,function(param1:Object):void
                  {
                     _user_info = null;
                  });
                  return;
               }
               _user_info = null;
               if(!(_loc2_ && (_loc1_)))
               {
                  _-3Z.addEventListener(_-3Z._-L9,function(param1:Object):void
                  {
                     _user_info = param1;
                  });
               }
               _-3Z.addEventListener(_-3Z._-G5,function(param1:Object):void
               {
                  _user_info = null;
               });
               return;
            }
            _-J = "UserInfo";
            if(!_loc2_)
            {
               ERROR = "Error";
               if(_loc1_ || (_loc2_))
               {
                  IO_ERROR = "IOError";
                  _-Ag = "NoUser";
                  if(_loc1_ || (_loc1_))
                  {
                  }
                  _user_info = null;
                  if(_loc2_ && (_loc1_))
                  {
                  }
               }
               _-3Z.addEventListener(_-3Z._-G5,function(param1:Object):void
               {
                  _user_info = null;
               });
               return;
            }
            _-3Z.addEventListener(_-3Z._-L9,function(param1:Object):void
            {
               _user_info = param1;
            });
            _-3Z.addEventListener(_-3Z._-G5,function(param1:Object):void
            {
               _user_info = null;
            });
            return;
         }
         _-I1 = "PropertiesSize";
         _dispatcher = new _-IT();
         if(!_loc2_)
         {
            _user_info = null;
            if(!(_loc2_ && (_loc1_)))
            {
               _-3Z.addEventListener(_-3Z._-L9,function(param1:Object):void
               {
                  _user_info = param1;
               });
            }
         }
         _-3Z.addEventListener(_-3Z._-G5,function(param1:Object):void
         {
            _user_info = null;
         });
         return;
      }
      if(_loc1_ || (_-3Z))
      {
         _-Dj = "FriendsList";
         if(!_loc2_)
         {
            _-Hz = "ProfileData";
            if(_loc1_ || (_loc2_))
            {
               _-v = "GameplayData";
               if(!_loc2_)
               {
                  _-EY = "onCancel";
                  if(_loc1_ || (_loc2_))
                  {
                     _-GW = "onComplete";
                     if(!_loc2_)
                     {
                        _-J = "UserInfo";
                        if(_loc2_)
                        {
                        }
                        _-3Z.addEventListener(_-3Z._-L9,function(param1:Object):void
                        {
                           _user_info = param1;
                        });
                     }
                  }
                  _dispatcher = new _-IT();
                  if(!_loc2_)
                  {
                     _user_info = null;
                     if(!(_loc2_ && (_loc1_)))
                     {
                        _-3Z.addEventListener(_-3Z._-L9,function(param1:Object):void
                        {
                           _user_info = param1;
                        });
                     }
                  }
               }
               _-I1 = "PropertiesSize";
               _dispatcher = new _-IT();
               if(!_loc2_)
               {
                  _user_info = null;
                  if(!(_loc2_ && (_loc1_)))
                  {
                     _-3Z.addEventListener(_-3Z._-L9,function(param1:Object):void
                     {
                        _user_info = param1;
                     });
                  }
               }
            }
         }
         _-3Z.addEventListener(_-3Z._-G5,function(param1:Object):void
         {
            _user_info = null;
         });
         return;
      }
      if(_loc1_ || (_loc2_))
      {
         IO_ERROR = "IOError";
         _-Ag = "NoUser";
         if(_loc1_ || (_loc1_))
         {
            _-I1 = "PropertiesSize";
            _dispatcher = new _-IT();
            if(_loc2_)
            {
            }
         }
         _user_info = null;
         if(!(_loc2_ && (_loc1_)))
         {
            _-3Z.addEventListener(_-3Z._-L9,function(param1:Object):void
            {
               _user_info = param1;
            });
         }
      }
      _-3Z.addEventListener(_-3Z._-G5,function(param1:Object):void
      {
         _user_info = null;
      });
      }
      
      public function _-3Z()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (this)))
         {
            super();
         }
      }
      
      public static const _-L9:String = "LoggedIn";
      
      public static const _-G5:String = "LoggedOut";
      
      public static const _-Id:String = "LoginShow";
      
      public static const _-GY:String = "LoginHide";
      
      public static const _-I2:String = "LoginShown";
      
      public static const _-8A:String = "ProfileShow";
      
      public static const _-Kb:String = "ProfileHide";
      
      public static const _-IO:String = "PropertySaved";
      
      public static const _-Dd:String = "WidgetLoaded";
      
      public static const _-Dj:String = "FriendsList";
      
      public static const _-Hz:String = "ProfileData";
      
      public static const _-v:String = "GameplayData";
      
      public static const _-EY:String = "onCancel";
      
      public static const _-GW:String = "onComplete";
      
      public static const _-J:String = "UserInfo";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IOError";
      
      public static const _-Ag:String = "NoUser";
      
      public static const _-I1:String = "PropertiesSize";
      
      private static var _dispatcher:_-IT;
      
      public static var _user_info:Object = null;
      
      public static function _-2E() : String
      {
         return _-AH._-2E();
      }
      
      public static function _-IZ() : String
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            if(!_user_info)
            {
               if(_loc1_)
               {
                  return null;
               }
            }
         }
         return _user_info.api_url;
      }
      
      public static function _-28() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            if(!_user_info)
            {
               if(!(_loc1_ && (_loc2_)))
               {
                  return null;
               }
            }
         }
         return _user_info.api_token;
      }
      
      public static function _-7z(param1:Object = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            _-AH._-Kw();
            if(_loc3_ || (param1))
            {
               _-AH._-D-();
               if(_loc3_)
               {
               }
            }
            return;
         }
         _-AH.send("social_showLoginWidget",{"options":param1});
      }
      
      public static function _-0j() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            _-AH.send("social_hideLoginWidget");
         }
      }
      
      public static function requestLogin(param1:Object = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_-3Z)))
         {
            _-AH._-Kw();
            if(!(_loc3_ && (_loc2_)))
            {
               _-AH._-D-();
               if(_loc3_ && (param1))
               {
               }
            }
            return;
         }
         _-AH.send("social_requestLogin",param1);
      }
      
      public static function _-6i(param1:Object = null) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            _-AH._-Kw();
            if(_loc2_ && (_loc3_))
            {
            }
            _-AH.send("social_showProfile",param1);
            return;
         }
         _-AH._-Ct();
         if(!(_loc2_ && (_-3Z)))
         {
            _-AH.send("social_showProfile",param1);
         }
      }
      
      public static function _-ID(param1:Object) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            _-AH.send("social_saveUserProperties",param1);
         }
      }
      
      public static function _-2B(param1:Object = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            _-AH.send("social_getFriendsList",param1);
         }
      }
      
      public static function var(param1:Object = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
            _-AH._-Kw();
            if(_loc2_ && (param1))
            {
            }
            return;
         }
         _-AH._-D-();
         if(_loc3_)
         {
            _-AH.send("social_postToStream",param1);
         }
      }
      
      public static function  use(param1:Object = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_-3Z)))
         {
            _-AH._-Kw();
            if(!(_loc3_ && (_-3Z)))
            {
               _-AH._-D-();
               if(!(_loc3_ && (_-3Z)))
               {
                  _-AH.send("social_inviteFriends",param1);
               }
            }
         }
      }
      
      public static function _-HG(param1:Object = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_-3Z)))
         {
            _-AH._-Kw();
            if(!(_loc3_ && (_loc3_)))
            {
               _-AH._-D-();
               if(_loc3_ && (_-3Z))
               {
               }
            }
            return;
         }
         _-AH.send("social_requestFan",param1);
      }
      
      public static function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!_loc4_)
         {
            _dispatcher.addEventListener(param1,param2);
         }
      }
      
      public static function get _-4i() : Boolean
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc2_))
         {
         }
         return _user_info == null;
      }
      
      public static function _-KT(param1:String, param2:Object) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(_loc3_ && (param1)))
         {
            _dispatcher._-KT(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_ || (_loc3_))
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
   }
}
