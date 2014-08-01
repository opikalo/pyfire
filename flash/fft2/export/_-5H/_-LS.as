package _-5H
{
   import flash.display.Sprite;
   import _-Ip.SimpleGUI;
   import _-Q._-1A;
   import _-Q._-5W;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import by.blooddy.crypto.serialization.JSON;
   import game._-AB;
   
   public class _-LS extends Sprite
   {
      
      public function _-LS()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
            if(_loc2_)
            {
            }
            return;
         }
         this._-4D();
      }
      
      public var _-4H:SimpleGUI;
      
      protected function _-4D() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function  true(param1:_-1A, param2:Number) : void
      {
         var _loc7_:* = false;
         var _loc3_:_-5W = null;
         for each(_loc3_ in param1._-0L)
         {
            if(!_loc7_)
            {
               _loc3_.maxLateralImpulse = param2;
            }
         }
      }
      
      public function _-KN(param1:_-1A, param2:Number) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:_-5W = null;
         for each(_loc3_ in param1._-0L)
         {
            if(!(_loc6_ && (param1)))
            {
               _loc3_.skiddForceCoef = param2;
            }
         }
      }
      
      public function _-KM(param1:_-1A, param2:Number) : void
      {
         var _loc7_:* = false;
         var _loc3_:_-5W = null;
         for each(_loc3_ in param1._-0L)
         {
            if(_loc6_)
            {
               _loc3_.dragForceCoef = param2;
            }
         }
      }
      
      public function _-Ir() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (this)))
         {
            Clipboard.generalClipboard.clear();
            if(_loc1_ && (this))
            {
            }
            return;
         }
         Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT,by.blooddy.crypto.serialization.JSON.encode(this.world._-JB),false);
      }
      
      public function get world() : _-AB
      {
         return _-AB.instance;
      }
      
      public function get _-IB() : Number
      {
         return this.world.playerCar._-IB;
      }
      
      public function set _-IB(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
         {
            this.world.playerCar._-IB = param1;
         }
      }
      
      public function get _-6A() : Number
      {
         return this.world.playerCar._-6A;
      }
      
      public function set _-6A(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            this.world.playerCar._-6A = param1;
         }
      }
      
      public function get _-2d() : Number
      {
         return this.world.playerCar._-0L[0].maxLateralImpulse;
      }
      
      public function set _-2d(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            this. true(this.world.playerCar,param1);
         }
      }
      
      public function get _-5g() : Number
      {
         return this.world.playerCar._-5g;
      }
      
      public function set _-5g(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            this.world.playerCar._-5g = param1;
         }
      }
      
      public function get skiddForceCoef() : Number
      {
         return this.world.playerCar._-0L[0].skiddForceCoef * 100;
      }
      
      public function set skiddForceCoef(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
         {
            if(_loc2_ || (this))
            {
            }
            this._-KN(this.world.playerCar,param1);
         }
      }
      
      public function get dragForceCoef() : Number
      {
         return this.world.playerCar._-0L[0].dragForceCoef * 100;
      }
      
      public function set dragForceCoef(param1:Number) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (_loc3_))
         {
            if(_loc3_ && (_loc3_))
            {
            }
            this._-KM(this.world.playerCar,param1);
         }
      }
   }
}
