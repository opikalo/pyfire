package _-07
{
   import flash.display.InteractiveObject;
   import _-72.*;
   import com.greensock.TweenLite;
   import flash.geom.Rectangle;
   import flash.display.Sprite;
   import com.greensock.plugins.TweenPlugin;
   import com.greensock.plugins.AutoAlphaPlugin;
   
   public class _-Cf extends Object implements _-4W
   {
      
      public function _-Cf(param1:Rectangle, param2:Sprite)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_ || (param2))
         {
            super();
            if(!(_loc3_ && (param1)))
            {
               _-5B.getInstance()._-H5(this);
            }
            TweenPlugin.activate([AutoAlphaPlugin]);
            if(_loc3_ && (param2))
            {
            }
            this._-2F = param2;
            if(_loc4_)
            {
               this._-4l = new Array();
            }
            return;
         }
         this._-5C = param1;
         this._-2F = param2;
         if(_loc4_)
         {
            this._-4l = new Array();
         }
      }
      
      public static function _-Iu(param1:*, param2:Function = null, param3:Array = null) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!_loc4_)
         {
            if(param1 is InteractiveObject)
            {
               if(_loc4_)
               {
               }
               TweenLite.from(param1,0.3,{
                  "autoAlpha":1,
                  "y":-300,
                  "onComplete":param2,
                  "onCompleteParams":param3
               });
               return;
            }
            param1.visible = true;
            if(!(_loc4_ && (_-Cf)))
            {
               param1.alpha = 1;
               if(!_loc4_)
               {
                  TweenLite.from(param1,0.3,{
                     "autoAlpha":1,
                     "y":-300,
                     "onComplete":param2,
                     "onCompleteParams":param3
                  });
               }
            }
            return;
         }
         (param1 as InteractiveObject).mouseEnabled = true;
         if(_loc5_ || (param1))
         {
            param1.visible = true;
            if(!(_loc4_ && (_-Cf)))
            {
               param1.alpha = 1;
               if(!_loc4_)
               {
                  TweenLite.from(param1,0.3,{
                     "autoAlpha":1,
                     "y":-300,
                     "onComplete":param2,
                     "onCompleteParams":param3
                  });
               }
            }
         }
      }
      
      public static function _-9O(param1:*, param2:Function = null, param3:Array = null) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!(_loc4_ && (param3)))
         {
            if(param1 is InteractiveObject)
            {
               if(_loc5_ || (param2))
               {
                  (param1 as InteractiveObject).mouseEnabled = false;
                  if(_loc5_ || (param2))
                  {
                  }
               }
            }
            TweenLite.to(param1,0.3,{
               "autoAlpha":1,
               "y":-500,
               "onComplete":param2,
               "onCompleteParams":param3
            });
         }
      }
      
      public var _-5C:Rectangle;
      
      private var _-2F:Sprite;
      
      private var _-A-:_-3l;
      
      private var _-4l:Array;
      
      public function _-Hr(param1:Rectangle, param2:Boolean = false) : _-3l
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(_loc5_ || (_loc3_))
         {
            if(param2)
            {
               if(_loc4_ && (param2))
               {
               }
               if(_loc5_)
               {
               }
               _loc3_.y = -_loc3_.height;
               if(_loc4_)
               {
               }
               return _loc3_;
            }
            this._-2F.addChild(_loc3_);
            return _loc3_;
         }
         if(_loc4_)
         {
         }
         _loc3_.x = -_loc3_.width;
         if(_loc5_ || (this))
         {
            if(_loc5_)
            {
            }
            _loc3_.y = -_loc3_.height;
            if(!_loc4_)
            {
               this._-2F.addChild(_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function _-4k(param1:*, param2:Rectangle = null) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-7v(param1:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function clear() : void
      {
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this._-4l.length)
         {
            this._-7v(this._-4l[_loc1_]);
            if(_loc2_)
            {
               _loc1_++;
               if(!(_loc3_ && (this)))
               {
                  continue;
               }
               break;
            }
            break;
         }
      }
      
      public function get _-8d() : Sprite
      {
         return this._-2F;
      }
      
      public function get _-93() : Array
      {
         return this._-4l;
      }
      
      public function observerNotify(param1:break) : void
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
