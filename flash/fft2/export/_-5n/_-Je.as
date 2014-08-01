package _-5n
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Matrix;
   import flash.display.IBitmapDrawable;
   import flash.geom.Rectangle;
   
   public class _-Je extends Object
   {
      
      public function _-Je(param1:int, param2:int, param3:Boolean = true, param4:uint = 0)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!(_loc6_ && (param3)))
         {
            super();
            this.w = param1;
            if(_loc5_ || (param3))
            {
               this.h = param2;
               if(_loc5_ || (param2))
               {
                  this.transparent = param3;
                  this._-BE = param4;
                  if(_loc6_)
                  {
                  }
               }
               this.bitmap = new Bitmap(this.bitmapData);
            }
            return;
         }
         this.bitmapData = new BitmapData(param1,param2,param3,param4);
         if(_loc5_)
         {
            this.bitmap = new Bitmap(this.bitmapData);
         }
      }
      
      public var bitmap:Bitmap;
      
      public var bitmapData:BitmapData;
      
      public var w:int;
      
      public var h:int;
      
      public var transparent:Boolean;
      
      public var _-BE:uint;
      
      public function _-1L(param1:BitmapData, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(_loc5_)
         {
            this.bitmapData.merge(param1,param1.rect,new Point(param2,param3),1,1,1,1);
         }
      }
      
      private var matrix:Matrix;
      
      public function package(param1:IBitmapDrawable, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(_loc5_ || (param2))
         {
            this.matrix = new Matrix();
            if(_loc5_)
            {
               this.matrix.rotate(param4);
               this.matrix.a = 1;
               this.matrix.d = 1;
            }
         }
         this.matrix.translate(param2,param3);
         if(_loc5_ || (param2))
         {
            this.bitmapData.draw(param1,this.matrix,null,null,null,false);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            this.bitmap.bitmapData.fillRect(new Rectangle(0,0,this.w,this.h),this._-BE);
         }
      }
   }
}
