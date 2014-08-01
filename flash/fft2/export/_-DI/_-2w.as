package _-DI
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.display.Bitmap;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.utils.getQualifiedClassName;
   
   public class _-2w extends Sprite
   {
      
      public function _-2w(param1:MovieClip, param2:Number = 1)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var _-EU:Vector.<_-8X>;
      
      public var currentFrame:uint;
      
      public var _-B0:Number;
      
      public var _-B:String;
      
      public var firstFrame:uint;
      
      public var _-8:uint;
      
      public var _-Fr:Object;
      
      public var isPlaying:Boolean = true;
      
      public var loop:Boolean = true;
      
      public var _-AA:String;
      
      public var _-IP:Number = 1;
      
      public var _-CQ:MovieClip;
      
      public var bitmap:Bitmap;
      
      public var scale:Number = 1;
      
      public function update() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-Ar(param1:String) : Boolean
      {
         return param1 in this._-Fr;
      }
      
      public function play(param1:int = 0, param2:String = "") : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function stop(param1:int = 0) : void
      {
         var _loc4_:* = true;
         if(_loc4_ || (param1))
         {
            if(param1)
            {
               if(_loc4_ || (_loc2_))
               {
                  this._-B0 = this.currentFrame = param1;
                  if(_loc4_ || (_loc3_))
                  {
                  }
               }
            }
            this.isPlaying = false;
         }
      }
      
      private function _-KI(param1:Vector.<_-8X>) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-DG(param1:DisplayObjectContainer) : _-8X
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function nextFrame(param1:MovieClip) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:DisplayObject = null;
         var _loc2_:* = 0;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc4_)
            {
               if(_loc3_ is MovieClip)
               {
                  if(_loc4_ || (this))
                  {
                     this.nextFrame(_loc3_ as MovieClip);
                     if(!(_loc4_ || (_loc3_)))
                     {
                        continue;
                     }
                  }
               }
            }
            _loc2_++;
         }
         if(_loc4_)
         {
            if(param1.currentFrame == param1.totalFrames)
            {
               if(_loc4_ || (_loc2_))
               {
                  param1.gotoAndStop(1);
                  if(_loc5_)
                  {
                  }
               }
            }
            else
            {
               param1.nextFrame();
            }
         }
      }
      
      public function disassemble() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            if(parent != null)
            {
               if(_loc2_)
               {
               }
               return;
            }
            this.stop();
            if(!(_loc1_ && (_loc2_)))
            {
               this._-CQ = null;
            }
            return;
         }
         parent.removeChild(this);
         if(_loc2_ || (this))
         {
            this.stop();
            if(_loc1_ && (_loc2_))
            {
            }
            return;
         }
         this._-CQ = null;
      }
   }
}
