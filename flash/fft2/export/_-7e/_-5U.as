package _-7e
{
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class _-5U extends Sprite
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-AN = [16777215,0];
         if(_loc1_)
         {
            _-Gs = [1,1];
            if(!_loc2_)
            {
               _-6M = [0,255];
            }
         }
      }
      }
      
      public function _-5U(param1:Number, param2:Number, param3:Array = null, param4:Array = null, param5:Array = null, param6:String = "linear", param7:String = "pad")
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static const _-AN:Array;
      
      private static const _-Gs:Array;
      
      public static const _-6M:Array;
      
      public static function _-JU(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number, param6:Array, param7:Array, param8:Array, param9:Number = 1.5707963267948966, param10:Number = 25, param11:Number = 0, param12:String = "linear", param13:String = "pad") : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc14_:Matrix = _-G6(param4,param5,param9,param10,param11);
         if(!(_loc15_ && (_-5U)))
         {
            param1.graphics.beginGradientFill(param12,param6,param7,param8,_loc14_,param13);
            if(!(_loc15_ && (param2)))
            {
               param1.graphics.drawRect(param2,param3,param4,param5);
            }
         }
      }
      
      public static function _-7r(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Array, param8:Array, param9:Array, param10:Number = 1.5707963267948966, param11:Number = 25, param12:Number = 0, param13:String = "linear", param14:String = "pad") : void
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc15_:Matrix = _-G6(param4,param5,param10,param11,param12);
         if(!_loc16_)
         {
            param1.graphics.beginGradientFill(param13,param7,param8,param9,_loc15_,param14);
            if(_loc16_ && (param2))
            {
            }
            return;
         }
         param1.graphics.drawRoundRect(param2,param3,param4,param5,param6,param6);
      }
      
      public static function _-G6(param1:Number, param2:Number, param3:Number = 1.5707963267948966, param4:Number = 25, param5:Number = 0) : Matrix
      {
         var _loc6_:Matrix = new Matrix();
         _loc6_.createGradientBox(param1,param2,param3,param4,param5);
         return _loc6_;
      }
      
      public var _width:Number;
      
      public var _height:Number;
      
      public var _-8D:String;
      
      public var _-7d:Array;
      
      public var _-4L:Array;
      
      public var _-L7:Array;
      
      public var _-G0:Matrix;
      
      public var _-ED:String = "pad";
      
      public function update() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc2_)))
         {
            graphics.clear();
            if(_loc2_ || (_loc1_))
            {
               graphics.beginGradientFill(this._-8D,this._-7d,this._-4L,this._-L7,this._-G0,this._-ED);
               if(_loc2_)
               {
               }
            }
            return;
         }
         graphics.drawRect(0,0,this._width,this._height);
      }
      
      public function _-BJ(param1:Number, param2:Number) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         if(_loc9_)
         {
            this._width = param1;
            if(_loc9_)
            {
               this._height = param2;
            }
         }
         if(_loc8_)
         {
         }
         var _loc3_:* = param1;
         if(_loc8_)
         {
         }
         var _loc4_:* = param2;
         if(_loc9_ || (param2))
         {
         }
         var _loc5_:* = Math.PI / 2;
         var _loc6_:Number = 25;
         if(_loc9_ || (param2))
         {
            this._-G0.createGradientBox(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
            if(_loc9_)
            {
            }
            return;
         }
         this.update();
      }
   }
}
