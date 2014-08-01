package _-BL
{
   import fla.screens.scr_Damaged;
   import _-7l._-Ez;
   import _-Ku._-IL;
   import each ._-JM;
   import flash.display.InteractiveObject;
   import com.greensock.TweenMax;
   import com.greensock.easing.Cubic;
   import _-72.*;
   import com.greensock.TweenLite;
   
   public class _-KK extends scr_Damaged
   {
      
      public function _-KK(param1:String)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_)
         {
            super();
            if(!(_loc2_ && (_loc3_)))
            {
               this.screenName = param1;
               if(_loc3_ || (this))
               {
               }
               return;
            }
         }
         this.init();
      }
      
      public var screenName:String;
      
      public var _-L2:Array;
      
      public var _-15:Array;
      
      public var score:int;
      
      private var _-JX:Boolean = false;
      
      private function init() : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(_loc6_ || (_loc1_))
         {
            this._-2P();
            if(_loc5_ && (_loc3_))
            {
            }
            _loc1_ = new _-Ez(_-T);
            if(!(_loc5_ && (this)))
            {
               _loc1_._-32(get ._-II,[get ._-HN]);
               if(!_loc5_)
               {
                  _-Ez._-9g(_loc1_);
                  if(_loc6_ || (this))
                  {
                  }
               }
               this._-L2.push(_loc1_);
            }
            _loc2_ = new _-Ez(_-2k);
            if(!(_loc5_ && (_loc2_)))
            {
               _loc2_._-32(_-5B._-72,[break.SHOW_SCREEN,{"screenName":"main"}]);
               if(_loc6_)
               {
                  _-Ez._-9g(_loc2_);
                  if(_loc6_ || (_loc3_))
                  {
                     this._-L2.push(_loc2_);
                  }
               }
            }
            _loc3_ = new _-Ez(_-5d);
            if(!(_loc5_ && (_loc2_)))
            {
               _loc3_._-32(this._-IE);
               if(!_loc5_)
               {
                  _-Ez._-9g(_loc3_);
                  if(_loc6_)
                  {
                  }
                  new _-Ez(_-4Y)._-32(get ._-II,[get ._-82]);
                  if(_loc6_ || (_loc2_))
                  {
                     _-Ez._-9g(_loc4_);
                     this._-L2.push(_loc4_);
                     if(_loc6_ || (this))
                     {
                        this._-15 = [_loc1_,_loc2_,_loc3_,_loc4_];
                        if(!_loc5_)
                        {
                           this.alpha = 0;
                           this.visible = false;
                           if(_loc5_)
                           {
                           }
                           this._-7y(0);
                        }
                        return;
                     }
                  }
                  _-F9.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
                  if(_loc6_)
                  {
                     this._-7y(0);
                  }
                  return;
               }
            }
            this._-L2.push(_loc3_);
            new _-Ez(_-4Y)._-32(get ._-II,[get ._-82]);
            if(_loc6_ || (_loc2_))
            {
               _-Ez._-9g(_loc4_);
               this._-L2.push(_loc4_);
               if(_loc6_ || (this))
               {
                  this._-15 = [_loc1_,_loc2_,_loc3_,_loc4_];
                  if(!_loc5_)
                  {
                     this.alpha = 0;
                     this.visible = false;
                     if(_loc5_)
                     {
                     }
                     this._-7y(0);
                  }
                  return;
               }
            }
            _-F9.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
            if(_loc6_)
            {
               this._-7y(0);
            }
            return;
         }
         this._-L2 = new Array();
         var _loc1_:_-Ez = new _-Ez(_-T);
         if(!(_loc5_ && (this)))
         {
            _loc1_._-32(get ._-II,[get ._-HN]);
            if(!_loc5_)
            {
               _-Ez._-9g(_loc1_);
               if(_loc6_ || (this))
               {
               }
            }
            this._-L2.push(_loc1_);
         }
         var _loc2_:_-Ez = new _-Ez(_-2k);
         if(!(_loc5_ && (_loc2_)))
         {
            _loc2_._-32(_-5B._-72,[break.SHOW_SCREEN,{"screenName":"main"}]);
            if(_loc6_)
            {
               _-Ez._-9g(_loc2_);
               if(_loc6_ || (_loc3_))
               {
                  this._-L2.push(_loc2_);
               }
            }
         }
         var _loc3_:_-Ez = new _-Ez(_-5d);
         if(!(_loc5_ && (_loc2_)))
         {
            _loc3_._-32(this._-IE);
            if(!_loc5_)
            {
               _-Ez._-9g(_loc3_);
               if(_loc6_)
               {
               }
               new _-Ez(_-4Y)._-32(get ._-II,[get ._-82]);
               if(_loc6_ || (_loc2_))
               {
                  _-Ez._-9g(_loc4_);
                  this._-L2.push(_loc4_);
                  if(_loc6_ || (this))
                  {
                     this._-15 = [_loc1_,_loc2_,_loc3_,_loc4_];
                     if(!_loc5_)
                     {
                        this.alpha = 0;
                        this.visible = false;
                        if(_loc5_)
                        {
                        }
                        this._-7y(0);
                     }
                     return;
                  }
               }
               _-F9.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
               if(_loc6_)
               {
                  this._-7y(0);
               }
               return;
            }
         }
         this._-L2.push(_loc3_);
         new _-Ez(_-4Y)._-32(get ._-II,[get ._-82]);
         if(_loc6_ || (_loc2_))
         {
            _-Ez._-9g(_loc4_);
            this._-L2.push(_loc4_);
            if(_loc6_ || (this))
            {
               this._-15 = [_loc1_,_loc2_,_loc3_,_loc4_];
               if(!_loc5_)
               {
                  this.alpha = 0;
                  this.visible = false;
                  if(_loc5_)
                  {
                  }
                  this._-7y(0);
               }
               return;
            }
         }
         _-F9.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
         if(_loc6_)
         {
            this._-7y(0);
         }
      }
      
      private function _-2P() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            addChildAt(_-JM._-W(bg,0,0,700,500),0);
            if(!_loc1_)
            {
               removeChild(bg);
               if(_loc2_)
               {
                  bg = null;
               }
            }
         }
      }
      
      public function _-IE() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            Main._-IE(this.score);
         }
      }
      
      public function _-7y(param1:int) : void
      {
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc2_)))
         {
            this.score = param1;
            if(_loc2_ && (_loc2_))
            {
            }
            return;
         }
         _-F9.text = "Total score: " + param1.toString();
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            this.mouseEnabled = false;
            if(!(_loc2_ && (this)))
            {
               this.mouseChildren = false;
               if(_loc2_)
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
