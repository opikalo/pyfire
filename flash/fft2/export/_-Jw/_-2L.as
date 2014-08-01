package _-Jw
{
   import flash.filters.GlowFilter;
   import _-Ku._-IL;
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import each ._-JM;
   import flash.display.Bitmap;
   import com.greensock.TweenLite;
   
   public class _-2L extends Object
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(!_loc1_)
      {
         _-2G = new GlowFilter(0);
      }
      }
      
      public function _-2L()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static var _-2G:GlowFilter;
      
      public var _-JZ:_-IL;
      
      public var skin:Sprite;
      
      private var _text:String;
      
      public function init(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:String = "", param5:uint = 16777215, param6:int = 10) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function show() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (_loc2_)))
         {
            this.skin.visible = true;
            if(!(_loc2_ && (this)))
            {
               this.skin.alpha = 0;
               if(_loc1_ || (this))
               {
               }
            }
            return;
         }
         TweenLite.to(this.skin,0.3,{
            "alpha":1,
            "overwrite":1
         });
      }
      
      public function hide() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            TweenLite.to(this.skin,1,{
               "alpha":0,
               "overwrite":1,
               "onComplete":this.disassemble,
               "y":this.skin.y - 50
            });
         }
      }
      
      public function get text() : String
      {
         return this._-JZ.text;
      }
      
      public function set text(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc3_)))
         {
            this._-JZ.text = param1;
         }
      }
      
      public function disassemble() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_ || (this))
         {
            if(this.skin.parent != null)
            {
               if(_loc1_)
               {
               }
            }
            return;
         }
         this.skin.parent.removeChild(this.skin);
      }
   }
}
