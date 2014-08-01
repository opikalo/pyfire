package Playtomic
{
   import flash.net.SharedObject;
   import flash.utils.Timer;
   import flash.display.LoaderInfo;
   import flash.system.Security;
   import _-K9._-1p;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   
   public final class Log extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-7w = false;
         if(!_loc2_)
         {
            _-7S = true;
            if(!_loc2_)
            {
               _-G = 0;
               _-31 = "";
               _-JG = new Timer(1000);
               if(_loc2_)
               {
               }
            }
         }
         _-Li = {};
         if(!(_loc2_ && (_loc2_)))
         {
            _-04 = {};
            _-GD = 0;
         }
         return;
      }
      if(!(_loc2_ && (_loc2_)))
      {
         _-1D = new Array();
         if(!_loc2_)
         {
            _-9R = new Array();
            if(_loc1_)
            {
               _-9r = new Array();
               if(_loc1_)
               {
                  _-J3 = new Array();
                  _-Al = new Array();
                  if(_loc1_)
                  {
                  }
                  _-Li = {};
                  if(!(_loc2_ && (_loc2_)))
                  {
                     _-04 = {};
                  }
               }
               _-GD = 0;
            }
            _-DS = false;
            _-4P = false;
            if(_loc1_ || (Log))
            {
               _-Li = {};
               if(_loc2_ && (_loc2_))
               {
               }
            }
            _-04 = {};
            _-GD = 0;
         }
      }
      }
      
      public function Log()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (this))
         {
            super();
         }
      }
      
      private static var _-7w:Boolean = false;
      
      private static var _-7S:Boolean = true;
      
      static var _-G:int = 0;
      
      static var _-31:String = "";
      
      static var _-9n:String;
      
      static var _-9U:String;
      
      private static var _-LC:SharedObject;
      
      static var _-C1:static;
      
      private static const _-JG:Timer;
      
      private static var _-HY:int = 0;
      
      private static var Plays:int = 0;
      
      private static var _-Ks:Boolean = false;
      
      private static var _-1D:Array;
      
      private static var _-9R:Array;
      
      private static var _-9r:Array;
      
      private static var _-J3:Array;
      
      private static var _-Al:Array;
      
      static var _-DS:Boolean = false;
      
      static var _-4P:Boolean = false;
      
      static var _-Li:Object;
      
      static var _-04:Object;
      
      static var _-GD:int = 0;
      
      public static function _-5p() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (Log))
         {
            _-DS = true;
         }
      }
      
      public static function _-Hn(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            _-El._-BU(param1);
         }
      }
      
      public static function _-5Y(param1:int = 0, param2:String = "", param3:String = "", param4:LoaderInfo = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-EV(param1:String = "", param2:String = "", param3:String = "") : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-1y() : void
      {
         var _loc3_:* = true;
         var _loc1_:String = null;
         if(!_loc2_)
         {
            if(!_-Li.session)
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     if(!(_loc2_ && (_loc1_)))
                     {
                        _loc1_ = _-7k("session");
                     }
                  }
                  if(_-7k("session") != "")
                  {
                     _-Li.session = _loc1_;
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     _-Li.session = _-C9._-7G(_-4d.Create() + _-4d.Create());
                     if(!_loc2_)
                     {
                        _-9X("session",_-Li.session);
                     }
                  }
                  return;
               }
               _-Li.referredby = _-7k("referredby");
               return;
            }
            if(_-Li.invitedby)
            {
            }
            if(!_-Li.referredby)
            {
               _-Li.referredby = _-7k("referredby");
            }
            return;
         }
         _-Li.invitedby = _-7k("invitedby");
         if(_loc3_ || (_loc3_))
         {
            if(!_-Li.referredby)
            {
               _-Li.referredby = _-7k("referredby");
            }
         }
      }
      
      private static function _-5Q(param1:Object, param2:String = null) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(param2 != null)
         {
            _-Li.locationbefore = _-Li.location;
            _-Li.location = param2;
            if(_loc6_)
            {
            }
            _-Li.params = param1;
            _-GO();
            return;
         }
         _-Li.timebefore = _-Li.time;
         if(_loc6_)
         {
            _-Li.time = _-GD;
            if(!(_loc5_ && (param1)))
            {
               if(_loc6_ || (_loc3_))
               {
                  _-Li.eventnum++;
               }
               if(!_loc5_)
               {
                  _-Li.params = param1;
               }
            }
            return;
         }
         _-GO();
      }
      
      private static function _-8U(param1:Object, param2:String, param3:Array) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-E-(param1:Object, param2:String, param3:Array) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:String = null;
         for(_loc5_ in param1)
         {
            if(_loc8_ || (param3))
            {
               _loc4_[_loc5_] = param1[_loc5_];
            }
         }
         if(!_loc9_)
         {
            _loc4_.invitations = param3;
            if(_loc8_ || (param1))
            {
               _loc4_.total = param3.length;
               if(!_loc9_)
               {
                  _-Li.invitation = true;
                  if(_loc9_)
                  {
                  }
               }
            }
            delete _-Li.invitation;
            true;
            return;
         }
         _-5Q(_loc4_,param2);
         if(_loc8_ || (param2))
         {
            delete _-Li.invitation;
            true;
         }
      }
      
      private static function _-GO() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:String = null;
         for(_loc1_ in _-04)
         {
            if(!_loc4_)
            {
               _-Li.params[_loc1_] = _-04[_loc1_];
            }
         }
         if(!(_loc4_ && (_loc1_)))
         {
            _-El._-GO(_-Li);
         }
      }
      
      static function _-24() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc3_ && (_loc2_))
         {
         }
         var _loc1_:* = _-LB("views");
         if(_loc2_)
         {
            _loc1_++;
            if(_loc3_ && (_loc2_))
            {
            }
            return;
         }
         _-Gv("views",_loc1_);
      }
      
      static function _-33() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!_loc3_)
         {
            if(_loc4_)
            {
            }
            if(_loc4_)
            {
               Plays = _loc2_;
            }
         }
      }
      
      public static function _-8e() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_-7w)
         {
            if(!_loc1_)
            {
               return;
            }
         }
         else
         {
            _-9r = new Array();
         }
         _-J3 = new Array();
         if(!_loc1_)
         {
            _-Al = new Array();
            if(_loc1_ && (_loc2_))
            {
            }
            return;
         }
         if(_loc2_)
         {
         }
         _-7a("p/",true);
      }
      
      private static function _-BF(param1:TimerEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function CustomMetric(param1:String, param2:String = null, param3:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-81(param1:String, param2:*, param3:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-Gi(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function LevelAverageMetric(param1:String, param2:*, param3:int, param4:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      static function _-1G(param1:String, param2:String, param3:String, param4:int, param5:int, param6:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-3h(param1:String, param2:String, param3:int, param4:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      static function _-0f(param1:String, param2:String, param3:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      static function _-IR(param1:String) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            if(!_-7w)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
            if(_loc2_ || (param1))
            {
            }
            _-7a("pls/");
         }
      }
      
      static function _-1h(param1:String) : void
      {
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
            if(!_-7w)
            {
               if(_loc3_ || (Log))
               {
                  return;
               }
            }
            if(_loc2_)
            {
            }
            _-7a("plw/");
         }
      }
      
      static function _-2H(param1:String) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(!_-7w)
            {
               if(_loc2_)
               {
               }
            }
            if(_loc3_)
            {
            }
            _-7a("plq/");
            return;
         }
      }
      
      static function true(param1:String) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(!_-7w)
            {
               if(!(_loc2_ && (_loc2_)))
               {
                  return;
               }
            }
            return;
         }
         if(_loc2_)
         {
         }
         _-7a("plf/");
      }
      
      static function _-19(param1:String) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(!_-7w)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            if(_loc2_ && (_loc2_))
            {
            }
            _-7a("plr/");
         }
      }
      
      public static function _-C7() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (_loc1_))
         {
            _-Ks = true;
         }
      }
      
      public static function _-Fn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc1_))
         {
            if(!_-7w)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
            _-Ks = false;
            if(_loc1_)
            {
            }
            return;
         }
         _-C1._-Cr(_-1D);
      }
      
      public static function _-7h() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-7a(param1:String, param2:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function Clean(param1:String) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function _-LB(param1:String) : int
      {
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
         {
            if(_-LC.data[param1] == undefined)
            {
               if(!_loc3_)
               {
                  return 0;
               }
            }
         }
         return int(_-LC.data[param1]);
      }
      
      private static function _-7k(param1:String) : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(_-LC.data[param1] == undefined)
            {
               if(_loc3_)
               {
                  return "";
               }
            }
         }
         return _-LC.data[param1];
      }
      
      private static function _-Gv(param1:String, param2:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(_loc4_)
         {
            _-LC.data[param1] = param2.toString();
         }
         try
         {
            _-LC.flush();
         }
         catch(s:Error)
         {
         }
      }
      
      private static function _-9X(param1:String, param2:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(_loc5_)
         {
            _-LC.data[param1] = param2.toString();
         }
         try
         {
            _-LC.flush();
         }
         catch(s:Error)
         {
         }
      }
      
      private static function null (param1:String) : String
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
