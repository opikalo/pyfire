package _-BL
{
   import fla.screens.mc_Dashboard;
   import _-7l._-Et;
   import flash.events.MouseEvent;
   import _-K2._-9x;
   import game._-AB;
   import _-72.*;
   import _-7l._-Ez;
   import _-Ku._-IL;
   
   public class _-BV extends mc_Dashboard
   {
      
      public function _-BV()
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var _-L2:Array;
      
      private var try:_-Et;
      
      private var _-FP:_-Et;
      
      private function _-9P(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(_loc3_ && (this)))
         {
            if(_-CE === _loc2_)
            {
               if(_loc4_)
               {
               }
            }
            else
            {
               switch(null)
               {
                  case _-Gq:
                     if(_loc4_)
                     {
                     }
                     this.try._-0h = _-9x.muteSound;
                     if(_loc4_)
                     {
                        break;
                     }
                     break;
               }
               return;
            }
            if(_loc4_)
            {
            }
         }
         if(!(_loc3_ && (this)))
         {
            if(_loc3_)
            {
            }
         }
         else if(_loc3_)
         {
         }
         
      }
      
      public function _-7W(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_ || (_loc2_))
         {
            this.skin._-Kr.gotoAndStop(100 - int(param1 * 100));
         }
      }
      
      public function _-9-(param1:Number) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            _-6W.text = "time: " + this._-42(param1);
         }
      }
      
      public function _-1m(param1:Number, param2:Number) : void
      {
         var _loc4_:* = false;
         if(!(_loc4_ && (param2)))
         {
            _-Kk.text = "Level " + param1 + " of " + param2;
         }
      }
      
      private function exitToMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            _-AB.instance._-CL();
         }
      }
      
      private function pauseGame() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            _-AB.instance.pauseGame();
         }
      }
      
      private function _-8z() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_ || (_loc2_))
         {
            _-AB.instance._-8z();
         }
      }
      
      private function _-GM() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (this)))
         {
            _-AB.instance._-IH();
         }
      }
      
      private function _-27() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (_loc1_)))
         {
            _-AB.instance._-J-();
         }
      }
      
      public function _-42(param1:Number) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function disassemble() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function set _-Bh(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            this._-7W(param1);
         }
      }
      
      public function get skin() : mc_Dashboard
      {
         return this;
      }
      
      public function restrict(param1:Number, param2:Number = 0, param3:Number = 1) : Number
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
