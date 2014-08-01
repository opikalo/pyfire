package _-Q
{
   import fla.carSkins.skin_FireCar01;
   import fla.carSkins.skin_FireCar02;
   import fla.carSkins.skin_FireCar03;
   import fla.carSkins.skin_FireCar04;
   import fla.carSkins.skin_FireCar05;
   import flash.display.Sprite;
   import nape.phys.Body;
   import nape.space.Space;
   
   public class _-78 extends _-1A
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-ER = [skin_FireCar01,skin_FireCar02,skin_FireCar03,skin_FireCar04,skin_FireCar05];
      }
      }
      
      public function _-78(param1:Sprite = null, param2:Sprite = null, param3:Body = null, param4:Space = null, param5:Number = 30, param6:Number = 100, param7:_-5a = null)
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         if(!_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6);
            if(!(_loc9_ && (param3)))
            {
               if(param7 != null)
               {
                  if(_loc8_ || (param1))
                  {
                     this._-k = param7;
                     if(_loc8_)
                     {
                     }
                  }
               }
            }
            this._-k.throw(this);
         }
      }
      
      public static var _-ER:Array;
      
      public var _-k:_-5a;
      
      override public function update(param1:Number = 0, param2:Number = 0) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function disassemble() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
