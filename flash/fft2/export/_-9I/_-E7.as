package _-9I
{
   import flash.geom.*;
   import flash.utils.*;
   import flash.events.*;
   import flash.display.*;
   
   public class _-E7 extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_ || (_-E7))
      {
         _-9f = "mouseUpOrLost";
         _-KC = new Point(-1000,-1000);
         _-Ij = false;
         _-Is = false;
         if(_loc2_ && (_-E7))
         {
         }
         _-KH = new Dictionary();
         if(_loc1_ || (_loc2_))
         {
            _-BA = new Dictionary();
            if(!_loc2_)
            {
               _-HH = false;
            }
         }
         return;
      }
      if(!(_loc2_ && (_loc1_)))
      {
         _-9a = new Dictionary();
         if(_loc2_)
         {
         }
         _-BA = new Dictionary();
         if(!_loc2_)
         {
            _-HH = false;
         }
         return;
      }
      if(_loc1_ || (_loc2_))
      {
         _-BA = new Dictionary();
         if(!_loc2_)
         {
            _-HH = false;
         }
      }
      }
      
      public function _-E7()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static const _-9f:String = "mouseUpOrLost";
      
      public static var _-KC:Point;
      
      public static var _-Ij:Boolean = false;
      
      public static var _-Is:Boolean = false;
      
      public static var _-LX:Boolean = false;
      
      public static var _-9a:Dictionary;
      
      public static var _-KH:Dictionary = new Dictionary();
      
      public static var _-BA:Dictionary;
      
      public static var stage:Stage;
      
      public static var _-HH:Boolean = false;
      
      public static function initialize(param1:Stage, param2:Boolean = true) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-8i(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (_loc2_))
         {
            if(!_-9a[param1.keyCode])
            {
               if(_loc2_ && (param1))
               {
               }
               _-9a[param1.keyCode] = true;
            }
            return;
         }
         _-KH[param1.keyCode] = true;
         if(!(_loc2_ && (param1)))
         {
            _-9a[param1.keyCode] = true;
         }
      }
      
      public static function _-IV(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            _-BA[param1.keyCode] = true;
            if(!_loc2_)
            {
               delete _-9a[param1.keyCode];
               true;
            }
         }
      }
      
      public static function handleEnterFrame(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            clear();
         }
      }
      
      public static function clear() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            _-BA = new Dictionary();
            if(_loc2_ || (_-E7))
            {
            }
            return;
         }
         _-KH = new Dictionary();
      }
      
      public static function _-6Y() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            _-BA = new Dictionary();
            if(_loc1_ && (_loc1_))
            {
            }
            _-9a = new Dictionary();
            return;
         }
         _-KH = new Dictionary();
         if(!_loc1_)
         {
            _-9a = new Dictionary();
         }
      }
      
      public static function _-Kn(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_-E7)))
         {
            if(Math.abs(param1.stageX) < 900000)
            {
               if(!(_loc3_ && (_-E7)))
               {
                  _-KC.x = param1.stageX < 0?0:param1.stageX > stage.stageWidth?stage.stageWidth:param1.stageX;
                  if(_loc3_ && (_loc3_))
                  {
                  }
                  _-Is = true;
               }
               return;
            }
            _-Ij = true;
            if(_loc2_)
            {
               _-Is = true;
            }
            return;
         }
         _-KC.y = param1.stageY < 0?0:param1.stageY > stage.stageHeight?stage.stageHeight:param1.stageY;
         if(!_loc3_)
         {
            _-Ij = true;
            if(_loc2_)
            {
               _-Is = true;
            }
         }
      }
      
      public static function _-Gm(param1:DisplayObject) : Point
      {
         return param1.globalToLocal(_-KC);
      }
      
      public static function _-JS(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (param1)))
         {
            _-LX = true;
            if(_loc2_ || (_-E7))
            {
            }
            return;
         }
         _-Kn(param1);
      }
      
      public static function _-5u(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            _-LX = false;
            if(_loc2_)
            {
               _-Kn(param1);
               if(_loc2_)
               {
                  stage.dispatchEvent(new Event(_-9f));
               }
            }
         }
      }
      
      public static function _-f(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         if(_loc3_ || (param1))
         {
            _-Kn(param1);
         }
      }
      
      public static function _-0Y(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc2_)))
         {
            _-LX = false;
            if(!(_loc3_ && (_-E7)))
            {
               stage.dispatchEvent(new Event(_-9f));
               if(_loc3_ && (_loc3_))
               {
               }
            }
            return;
         }
         _-Ij = false;
      }
      
      public static function _-Hv(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (param1))
         {
            _-LX = false;
            if(!_loc3_)
            {
               stage.dispatchEvent(new Event(_-9f));
               if(_loc2_ || (_loc3_))
               {
               }
            }
            _-Ij = false;
         }
      }
      
      public static function _-Kg(... rest) : Boolean
      {
         return _-4t(_-9a,rest);
      }
      
      public static function _-4G(... rest) : Boolean
      {
         return _-4t(_-BA,rest);
      }
      
      public static function _-Cw(... rest) : Boolean
      {
         return _-4t(_-KH,rest);
      }
      
      public static function _-4t(param1:Dictionary, param2:Array) : Boolean
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         loop0:
         while(true)
         {
            while(_loc3_ < param2.length)
            {
               if(param1[_-9u[param2[_loc3_]]])
               {
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        return true;
                     }
                     return true;
                  }
                  continue loop0;
               }
               if(_loc4_ || (_-E7))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
               }
               if(!(_loc5_ && (param1)))
               {
                  continue loop0;
               }
               break;
            }
            return false;
         }
      }
      
      public static function _-3u(... rest) : void
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc2_)))
         {
            _-GS(rest);
            if(!_loc2_)
            {
               _-70(rest);
               if(_loc3_ || (_loc2_))
               {
               }
            }
            _-A9(rest);
         }
      }
      
      public static function _-GS(... rest) : void
      {
         var _loc4_:* = true;
         var _loc2_:uint = 0;
         loop0:
         while(true)
         {
            while(_loc2_ < rest.length)
            {
               if(_-KH[_-9u[rest[_loc2_]]])
               {
                  if(!_loc3_)
                  {
                     delete _-KH[_-9u[rest[_loc2_]]];
                     true;
                     if(_loc3_)
                     {
                        break;
                     }
                     break;
                  }
                  break;
                  break;
               }
               if(!(_loc3_ && (_loc2_)))
               {
                  if(_loc4_)
                  {
                     _loc2_++;
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     break;
                  }
               }
               continue;
               if(_loc2_ >= rest.length)
               {
                  break;
               }
               break;
            }
            return;
         }
      }
      
      public static function _-70(... rest) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-A9(... rest) : void
      {
         var _loc4_:* = true;
         loop0:
         while(true)
         {
            while(_loc2_ < rest.length)
            {
               if(_-BA[_-9u[rest[_loc2_]]])
               {
                  if(!(_loc3_ && (_loc3_)))
                  {
                     delete _-BA[_-9u[rest[_loc2_]]];
                     true;
                     if(_loc3_ && (rest))
                     {
                        break;
                     }
                     break;
                  }
                  break;
                  break;
               }
               if(_loc4_)
               {
                  if(!_loc3_)
                  {
                     _loc2_++;
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     break;
                  }
               }
               continue;
               if(_loc2_ >= rest.length)
               {
                  break;
               }
               break;
            }
            return;
         }
      }
      
      public static function _-Kf() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Stage = null;
         if(_loc3_)
         {
            if(_-HH)
            {
            }
            return;
         }
         _loc1_ = stage;
         if(_loc3_ || (_-E7))
         {
            _loc1_.removeEventListener(Event.ENTER_FRAME,handleEnterFrame);
            if(_loc3_)
            {
               _loc1_.removeEventListener(KeyboardEvent.KEY_DOWN,_-8i);
               _loc1_.removeEventListener(KeyboardEvent.KEY_UP,_-IV);
            }
            _loc1_.removeEventListener(MouseEvent.MOUSE_DOWN,_-JS);
            if(!_loc2_)
            {
               _loc1_.removeEventListener(MouseEvent.MOUSE_MOVE,_-f);
               if(_loc3_ || (_loc1_))
               {
                  _loc1_.removeEventListener(Event.MOUSE_LEAVE,_-0Y);
                  if(!(_loc2_ && (_loc1_)))
                  {
                     _loc1_.removeEventListener(Event.DEACTIVATE,_-Hv);
                     if(_loc2_)
                     {
                     }
                  }
                  _-HH = false;
               }
            }
            return;
         }
         _loc1_.removeEventListener(MouseEvent.MOUSE_UP,_-5u);
         _loc1_.removeEventListener(MouseEvent.MOUSE_DOWN,_-JS);
         if(!_loc2_)
         {
            _loc1_.removeEventListener(MouseEvent.MOUSE_MOVE,_-f);
            if(_loc3_ || (_loc1_))
            {
               _loc1_.removeEventListener(Event.MOUSE_LEAVE,_-0Y);
               if(!(_loc2_ && (_loc1_)))
               {
                  _loc1_.removeEventListener(Event.DEACTIVATE,_-Hv);
                  if(_loc2_)
                  {
                  }
               }
               _-HH = false;
            }
         }
      }
   }
}
