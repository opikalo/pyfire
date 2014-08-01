package _-BL
{
   import fla.screens.scr_Help;
   import _-7l._-Ez;
   import each ._-JM;
   import flash.display.InteractiveObject;
   import com.greensock.TweenMax;
   import com.greensock.easing.Cubic;
   import _-72.*;
   import com.greensock.TweenLite;
   
   public class _-Fx extends scr_Help
   {
      
      public function _-Fx(param1:String)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (_loc2_))
         {
            super();
            if(_loc3_ || (this))
            {
            }
            return;
         }
         this.screenName = param1;
         if(!(_loc2_ && (_loc3_)))
         {
            this.init();
         }
      }
      
      public var screenName:String;
      
      public var _-L2:Array;
      
      public var _-15:Array;
      
      private var _-JX:Boolean = false;
      
      private function init() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(_loc4_ || (this))
         {
            this._-2P();
            if(!(_loc3_ && (_loc2_)))
            {
               this._-L2 = new Array();
            }
         }
         var _loc1_:_-Ez = new _-Ez(_-Fu);
         if(_loc4_ || (_loc2_))
         {
            _loc1_._-32(get ._-II,[get ._-82]);
            if(!_loc3_)
            {
               _-Ez._-9g(_loc1_);
               if(_loc3_ && (this))
               {
               }
            }
            this._-L2.push(_loc1_);
         }
         _loc2_._-32(_-5B._-72,[break.SHOW_SCREEN,{"screenName":"main"}]);
         if(_loc4_ || (_loc3_))
         {
            _-Ez._-9g(_loc2_);
            if(_loc4_)
            {
               this._-L2.push(_loc2_);
               if(_loc4_)
               {
                  this._-15 = [_loc2_,_loc1_];
                  if(!(_loc3_ && (_loc2_)))
                  {
                     this.alpha = 0;
                  }
               }
               return;
            }
         }
         this.visible = false;
      }
      
      private function _-2P() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            addChildAt(_-JM._-W(bg,0,0,700,500),0);
            if(!(_loc2_ && (this)))
            {
               removeChild(bg);
               if(_loc1_)
               {
               }
            }
            return;
         }
         bg = null;
      }
      
      public function get isShown() : Boolean
      {
         return this._-JX;
      }
      
      public function set isShown(param1:Boolean) : void
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function hide() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            this.mouseEnabled = false;
            if(_loc2_)
            {
               this.mouseChildren = false;
               if(_loc1_ && (this))
               {
               }
               return;
            }
         }
         TweenMax.to(this,0.5,{
            "autoAlpha":0,
            "overwrite":1
         });
      }
      
      public function disassemble() : void
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
