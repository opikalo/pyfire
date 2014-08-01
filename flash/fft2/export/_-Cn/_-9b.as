package _-Cn
{
   import fla.fx.mc_bloodSplat01;
   import _-DI._-2w;
   import game._-AB;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   
   public class _-9b extends Object
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(!_loc1_)
      {
         _-ER = [new mc_bloodSplat01()];
      }
      }
      
      public function _-9b()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            super();
            if(!(_loc1_ && (_loc1_)))
            {
               (_-ER[0] as Sprite).filters = [new GlowFilter(0,0.5,3,3,0.5,2,true)];
               if(_loc2_ || (this))
               {
               }
               return;
            }
            this.init();
            return;
         }
         this.skin = new _-2w(_-ER[0],0.7);
         if(_loc2_)
         {
            this.init();
         }
      }
      
      public static var _-ER:Array;
      
      public var skin:_-2w;
      
      private var _-I9 = 5000;
      
      public function init() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function update() : void
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
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get x() : Number
      {
         return this.skin.x;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (_loc3_))
         {
            this.skin.x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.skin.y;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this.skin.y = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.skin.rotation;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (param1))
         {
            this.skin.rotation = param1;
         }
      }
   }
}
