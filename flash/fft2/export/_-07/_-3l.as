package _-07
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.events.Event;
   import com.greensock.TweenLite;
   
   public class _-3l extends Sprite
   {
      
      public function _-3l(param1:Rectangle, param2:uint = 0, param3:Number = 0.5)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         if(_loc5_ || (param1))
         {
            this._-2W = param1;
            if(!_loc4_)
            {
               this._color = param2;
               if(!(_loc4_ && (this)))
               {
                  this._-6J = param3;
               }
               return;
            }
            graphics.drawRect(0,0,this._-2W.width,this._-2W.height);
            if(_loc5_ || (this))
            {
               if(stage)
               {
                  this.init();
                  if(_loc5_)
                  {
                  }
               }
               else
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.init);
               }
               return;
            }
            return;
         }
         graphics.clear();
         graphics.beginFill(this._color,this._-6J);
         if(_loc5_ || (param3))
         {
            graphics.drawRect(0,0,this._-2W.width,this._-2W.height);
            if(_loc5_ || (this))
            {
               if(!stage)
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.init);
               }
               return;
            }
            return;
         }
         this.init();
         if(_loc5_)
         {
         }
      }
      
      private var _-2W:Rectangle;
      
      private var _color:uint;
      
      private var _-6J:Number;
      
      private function init(param1:Event = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.init);
            if(_loc2_ || (this))
            {
               this.show();
            }
         }
      }
      
      public function show(param1:Function = null, param2:Array = null) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(_loc3_ || (param2))
         {
            this.mouseEnabled = true;
            if(_loc3_ || (param2))
            {
               TweenLite.to(this,0.5,{
                  "autoAlpha":1,
                  "onComplete":param1,
                  "onCompleteParams":param2
               });
            }
         }
      }
      
      public function hide(param1:Function = null, param2:Array = null) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!_loc4_)
         {
            this.mouseEnabled = false;
            if(_loc3_ || (param2))
            {
               TweenLite.to(this,0.5,{
                  "autoAlpha":0,
                  "onComplete":param1,
                  "onCompleteParams":param2
               });
            }
         }
      }
      
      public function disassemble() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (this)))
         {
            if(this.parent != null)
            {
               if(_loc2_ && (this))
               {
               }
            }
            return;
         }
         this.parent.removeChild(this);
      }
   }
}
