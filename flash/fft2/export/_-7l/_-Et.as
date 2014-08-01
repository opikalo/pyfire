package _-7l
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.display.InteractiveObject;
   
   public class _-Et extends _-Ez
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(_loc2_)
      {
         _-L5 = "press";
         if(!_loc1_)
         {
            _-4T = "over";
            if(_loc1_)
            {
            }
         }
         _-GN = "over";
         if(_loc2_ || (_loc1_))
         {
            _-0s = "out";
         }
      }
      }
      
      public function _-Et(param1:InteractiveObject = null, param2:Object = null)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc3_ && (param1))
            {
            }
            return;
         }
         this._-0h = true;
      }
      
      public static var _-L5:String = "press";
      
      public static var _-4T:String = "over";
      
      public static var _-GN:String = "over";
      
      public static var _-0s:String = "out";
      
      public static function _-3L(param1:_-Ez, param2:* = null, param3:* = null, param4:* = null) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc5_.mouseChildren = false;
         _loc5_.stop();
         if(!_loc7_)
         {
            param1._-5w(MouseEvent.ROLL_OVER,_-3s);
            if(!_loc7_)
            {
               param1._-5w(MouseEvent.MOUSE_DOWN,_-3s);
               param1._-5w(MouseEvent.MOUSE_UP,_-3s);
               if(_loc6_)
               {
                  param1._-5w(MouseEvent.ROLL_OUT,_-3s);
                  if(!_loc7_)
                  {
                     param1.addListener(MouseEvent.ROLL_OVER,_-BR);
                     if(_loc7_)
                     {
                     }
                  }
                  param1.addListener(MouseEvent.ROLL_OUT,_-BR);
               }
            }
            param1.addListener(MouseEvent.MOUSE_DOWN,_-BR);
            param1.addListener(MouseEvent.MOUSE_UP,_-BR);
            if(_loc6_)
            {
               param1.addListener(MouseEvent.ROLL_OUT,_-BR);
            }
         }
      }
      
      public static function _-BR(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(_loc4_)
         {
            if(MouseEvent.MOUSE_DOWN === _loc3_)
            {
               if(!(_loc4_ || (param1)))
               {
                  if(_loc5_)
                  {
                  }
               }
               if(_loc4_ || (param1))
               {
               }
            }
            else if(MouseEvent.MOUSE_UP === _loc3_)
            {
               if(!_loc5_)
               {
                  if(_loc4_ || (_loc2_))
                  {
                  }
               }
               else if(_loc5_)
               {
               }
               
            }
            else
            {
               if(MouseEvent.ROLL_OVER === _loc3_)
               {
                  if(!_loc5_)
                  {
                     if(_loc5_)
                     {
                     }
                  }
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  switch(null)
                  {
                     case MouseEvent.ROLL_OUT:
                        _loc2_.gotoAndStop("on_" + _-L5);
                        if(_loc4_)
                        {
                           return;
                        }
                        break;
                     default:
                        return;
                  }
                  return;
               }
               if(_loc5_)
               {
               }
            }
            
            if(MouseEvent.MOUSE_DOWN === _loc3_)
            {
            }
         }
         if(_loc4_ || (param1))
         {
         }
      }
      
      public static function _-Fz(param1:_-Ez, param2:* = null, param3:* = null, param4:* = null) : void
      {
         var _loc7_:* = false;
         var _loc5_:MovieClip = param1.displayObject as MovieClip;
         _loc5_.mouseChildren = false;
         _loc5_.stop();
         if(!(_loc7_ && (param1)))
         {
            param1._-5w(MouseEvent.ROLL_OVER,_-BR);
            param1._-5w(MouseEvent.MOUSE_DOWN,_-BR);
            param1._-5w(MouseEvent.MOUSE_UP,_-BR);
            param1._-5w(MouseEvent.ROLL_OUT,_-BR);
            if(_loc6_)
            {
               param1.addListener(MouseEvent.ROLL_OVER,_-3s);
            }
            param1.addListener(MouseEvent.MOUSE_DOWN,_-3s);
            if(_loc6_ || (param1))
            {
            }
            param1.addListener(MouseEvent.ROLL_OUT,_-3s);
            return;
         }
         param1.addListener(MouseEvent.MOUSE_UP,_-3s);
         if(!(_loc7_ && (_-Et)))
         {
            param1.addListener(MouseEvent.ROLL_OUT,_-3s);
         }
      }
      
      public static function _-3s(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(!_loc4_)
         {
            if(MouseEvent.MOUSE_DOWN === _loc3_)
            {
               if(!_loc4_)
               {
                  if(_loc5_)
                  {
                  }
               }
               else if(_loc4_ && (_-Et))
               {
               }
               
            }
            else
            {
               if(MouseEvent.MOUSE_UP === _loc3_)
               {
                  if(_loc5_ || (_loc2_))
                  {
                     if(_loc5_ || (_loc3_))
                     {
                     }
                  }
                  else if(_loc4_ && (_-Et))
                  {
                  }
                  
               }
               else if(MouseEvent.ROLL_OVER === _loc3_)
               {
                  if(!(_loc4_ && (_loc2_)))
                  {
                     if(_loc4_ && (_-Et))
                     {
                     }
                  }
                  if(_loc4_ && (_loc2_))
                  {
                  }
               }
               else
               {
                  switch(null)
                  {
                     case MouseEvent.ROLL_OUT:
                        _loc2_.gotoAndStop("off_" + _-L5);
                        if(_loc5_)
                        {
                        }
                        return;
                     default:
                        return;
                  }
                  return;
               }
               
               if(MouseEvent.MOUSE_UP === _loc3_)
               {
               }
            }
            if(MouseEvent.MOUSE_DOWN === _loc3_)
            {
            }
         }
         if(_loc4_)
         {
         }
      }
      
      private var _-Bf:Boolean = true;
      
      public function get _-0h() : Boolean
      {
         return this._-Bf;
      }
      
      public function set _-0h(param1:Boolean) : void
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
