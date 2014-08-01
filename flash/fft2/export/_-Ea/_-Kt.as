package _-Ea
{
   public class _-Kt extends Object
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(_loc2_)
      {
         default = "StoreHide";
         _-C5 = "ItemOwned";
         if(!_loc1_)
         {
            _-DL = "ItemNew";
            if(!(_loc1_ && (_-Kt)))
            {
               _-GX = "StoreItems";
            }
         }
         addEventListener(_-3Z._-G5,function(param1:Object):void
         {
            _inventory = null;
         });
         return;
      }
      if(_loc2_ || (_loc1_))
      {
         _dispatcher = new _-IT();
         if(_loc1_)
         {
         }
         addEventListener(_-3Z._-G5,function(param1:Object):void
         {
            _inventory = null;
         });
         return;
      }
      addEventListener(_-3Z._-L9,function(param1:Object):void
      {
         _inventory = new _-Ab();
      });
      addEventListener(_-3Z._-G5,function(param1:Object):void
      {
         _inventory = null;
      });
      }
      
      public function _-Kt()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static const _-9k:String = "StoreShow";
      
      public static const default:String = "StoreHide";
      
      public static const _-C5:String = "ItemOwned";
      
      public static const _-DL:String = "ItemNew";
      
      public static const _-GX:String = "StoreItems";
      
      public static const ERROR:String = "Error";
      
      public static const IO_ERROR:String = "IOError";
      
      public static const _-Ag:String = "NoUser";
      
      public static var _inventory:_-Ab;
      
      private static var _dispatcher:_-IT;
      
      public static function get _-Fi() : _-Ab
      {
         return _inventory;
      }
      
      public static function _-2E() : String
      {
         return _-AH._-2E();
      }
      
      public static function _-83(param1:Object = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            _-AH._-Kw();
            if(_loc2_ || (_loc3_))
            {
            }
            _-AH.send("coins_showStore",{"options":param1},null,null);
            return;
         }
         _-AH._-D-();
         if(_loc2_ || (_loc3_))
         {
            _-AH.send("coins_showStore",{"options":param1},null,null);
         }
      }
      
      public static function _-Am(param1:Object = null) : void
      {
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
            if(!(_loc2_ && (_loc2_)))
            {
               if(!param1 || !!param1)
               {
                  if(_loc2_ && (_-Kt))
                  {
                  }
               }
               else
               {
                  _-AH._-Kw();
                  _-AH._-D-();
               }
               _-AH.send("coins_showItem",{"options":param1},null,null);
               return;
            }
            if(!(_loc2_ && (_loc2_)))
            {
               if(_loc2_ && (_loc2_))
               {
               }
               if(typeof param1.item == "string")
               {
                  if(_loc2_ && (_-Kt))
                  {
                  }
               }
               else
               {
                  _-AH._-Kw();
                  _-AH._-D-();
               }
               _-AH.send("coins_showItem",{"options":param1},null,null);
               return;
            }
            !param1;
            if(_loc2_ && (_loc2_))
            {
            }
            if(typeof param1.item == "string")
            {
               if(_loc2_ && (_-Kt))
               {
               }
            }
            else
            {
               _-AH._-Kw();
               _-AH._-D-();
            }
            _-AH.send("coins_showItem",{"options":param1},null,null);
            return;
         }
         if(_loc3_ || (_loc3_))
         {
            return;
         }
      }
      
      public static function _-G7(param1:Object = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc2_)))
         {
            if(_loc3_ || (_loc2_))
            {
               if(!(!param1 || !param1))
               {
                  _-AH._-Kw();
                  _-AH._-D-();
                  if(!(_loc2_ && (_loc3_)))
                  {
                     _-AH.send("coins_showVideo",{"options":param1},null,null);
                  }
                  return;
               }
            }
            if(_loc3_ || (_loc2_))
            {
               if(!_loc2_)
               {
                  if(_loc2_ && (_-Kt))
                  {
                  }
                  if(typeof param1.item == "string")
                  {
                  }
               }
               _-AH._-Kw();
               _-AH._-D-();
               if(!(_loc2_ && (_loc3_)))
               {
                  _-AH.send("coins_showVideo",{"options":param1},null,null);
               }
               return;
            }
            !param1;
            if(!_loc2_)
            {
               if(_loc2_ && (_-Kt))
               {
               }
               if(typeof param1.item == "string")
               {
               }
            }
            _-AH._-Kw();
            _-AH._-D-();
            if(!(_loc2_ && (_loc3_)))
            {
               _-AH.send("coins_showVideo",{"options":param1},null,null);
            }
            return;
         }
         if(!(_loc2_ && (_loc2_)))
         {
            return;
         }
      }
      
      public static function _-Ej() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (_loc2_))
         {
            _-AH.send("coins_getStoreItems");
         }
      }
      
      public static function use(param1:Object = null) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (_loc2_))
         {
            _-AH._-Kw();
            if(_loc2_ || (param1))
            {
               _-AH._-D-();
               if(_loc3_)
               {
               }
               return;
            }
         }
         _-AH.send("social_requestFunding",param1);
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(_loc3_)
         {
            _dispatcher._-KT(param1,param2);
         }
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc4_:* = true;
         if(!(_loc3_ && (_-Kt)))
         {
            _dispatcher.removeEventListener(param1,param2);
         }
      }
   }
}
