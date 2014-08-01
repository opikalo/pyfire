package each 
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.display.Bitmap;
   import flash.display.PixelSnapping;
   import flash.geom.Matrix;
   import flash.display.Sprite;
   import _-7e._-5U;
   
   public class _-JM extends Object
   {
      
      public function _-JM()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function _-1V(param1:DisplayObject, param2:Rectangle = null) : BitmapData
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(_loc4_ || (_-JM))
         {
            if(param2 == null)
            {
            }
            if(!(_loc5_ && (param2)))
            {
               _loc3_.draw(param1,null,null,null,param2);
            }
            return _loc3_;
         }
         var param2:Rectangle = param1.getBounds(param1);
         if(!(_loc5_ && (param2)))
         {
            _loc3_.draw(param1,null,null,null,param2);
         }
         return _loc3_;
      }
      
      public static function _-13(param1:DisplayObject, param2:Rectangle = null) : Bitmap
      {
         return new Bitmap(_-1V(param1,param2));
      }
      
      public static function _-12(param1:DisplayObject) : Bitmap
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!_loc4_)
         {
            if(param1.parent != null)
            {
               if(_loc3_)
               {
                  _loc2_.x = param1.x;
                  if(_loc3_ || (_loc2_))
                  {
                     _loc2_.y = param1.y;
                     if(_loc4_)
                     {
                     }
                  }
               }
            }
            return _loc2_;
         }
         param1.parent.addChild(_loc2_);
         return _loc2_;
      }
      
      public static function _-EA(param1:Number, param2:Number, param3:Number, param4:Number, param5:DisplayObject) : Bitmap
      {
         var _loc6_:Rectangle = new Rectangle(0,0,param3,param4);
         var _loc7_:Bitmap = new Bitmap(new BitmapData(param3,param4,true,0),PixelSnapping.ALWAYS,true);
         _loc7_.bitmapData.draw(param5,new Matrix(1,0,0,1,-param1,-param2),null,null,_loc6_,true);
         return _loc7_;
      }
      
      public static function _-W(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 1, param7:String = "always", param8:Boolean = true) : Bitmap
      {
         var _loc9_:Rectangle = new Rectangle(0,0,param4,param5);
         var _loc10_:* = new Bitmap(new BitmapData(param4 * param6,param5 * param6,true,0),param7,param8);
         new Bitmap(new BitmapData(param4 * param6,param5 * param6,true,0),param7,param8).bitmapData.draw(param1,new Matrix(param6,0,0,param6,-param2 * param6,-param3 * param6),null,null,_loc9_,true);
         return _loc10_;
      }
      
      public static function _-Jg(param1:DisplayObject, param2:Array, param3:Array, param4:Array) : Bitmap
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc5_:Number = param1.x;
         var _loc6_:Number = param1.y;
         var _loc7_:Object = param1.parent;
         var _loc8_:Sprite = new Sprite();
         var _loc9_:_-5U = new _-5U(param1.width,param1.height,param2,param3,param4);
         if(!_loc13_)
         {
            _loc8_.addChild(_loc9_);
            if(!(_loc13_ && (param2)))
            {
               _loc8_.addChild(param1);
               if(!_loc13_)
               {
                  param1.x = param1.y = 0;
                  if(_loc13_ && (param3))
                  {
                  }
               }
            }
            _loc10_ = _-13(_loc8_);
            if(_loc12_ || (param2))
            {
               if(_loc7_ != null)
               {
                  if(!_loc13_)
                  {
                     _loc10_.x = _loc5_;
                     if(!_loc13_)
                     {
                        _loc10_.y = _loc6_;
                        if(_loc13_)
                        {
                        }
                     }
                  }
               }
               return _loc10_;
            }
            _loc7_.addChild(_loc10_);
            return _loc10_;
         }
         _loc9_.mask = param1;
         var _loc10_:Bitmap = _-13(_loc8_);
         if(_loc12_ || (param2))
         {
            if(_loc7_ != null)
            {
               if(!_loc13_)
               {
                  _loc10_.x = _loc5_;
                  if(!_loc13_)
                  {
                     _loc10_.y = _loc6_;
                     if(_loc13_)
                     {
                     }
                  }
               }
            }
            return _loc10_;
         }
         _loc7_.addChild(_loc10_);
         return _loc10_;
      }
      
      public static function drawLine(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:uint = 16711680, param7:Number = 1) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         if(_loc9_ || (_-JM))
         {
            param5.graphics.lineStyle(param7,param6,1);
            if(_loc9_ || (_-JM))
            {
               param5.graphics.moveTo(param1,param2);
               if(_loc9_ || (param3))
               {
                  param5.graphics.lineTo(param3,param4);
               }
            }
         }
      }
      
      public static function drawCircle(param1:Number, param2:Number, param3:Number, param4:Sprite, param5:uint = 16711680, param6:Number = 1) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(!_loc7_)
         {
            param4.graphics.lineStyle(param6,param5,1);
            if(_loc8_)
            {
            }
            return;
         }
         param4.graphics.drawCircle(param1,param2,param3);
      }
   }
}
