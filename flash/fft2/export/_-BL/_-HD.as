package _-BL
{
   import fla.screens.scr_MainMenu;
   import _-7l._-Et;
   import _-7l._-Ez;
   import _-Ku._-IL;
   import flash.events.MouseEvent;
   import _-K2._-9x;
   import each ._-JM;
   import each ._-Io;
   import com.junkbyte.console.Cc;
   import game._-GV;
   import _-3J._-Km;
   import flash.display.InteractiveObject;
   import com.greensock.TweenMax;
   import com.greensock.easing.Cubic;
   import _-72.*;
   import com.greensock.TweenLite;
   
   public class _-HD extends scr_MainMenu
   {
      
      public function _-HD(param1:String)
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this.screenName = param1;
               if(_loc3_ || (this))
               {
                  this.init();
               }
            }
         }
      }
      
      public var screenName:String;
      
      public var _-L2:Array;
      
      public var _-15:Array;
      
      private var _-JX:Boolean = false;
      
      private var try:_-Et;
      
      private var _-FP:_-Et;
      
      private function init() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-2P() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!_loc1_)
         {
            addChildAt(_-JM._-W(bg,0,0,700,500),0);
            if(_loc2_)
            {
            }
            return;
         }
         removeChild(bg);
         if(_loc2_ || (_loc1_))
         {
            bg = null;
         }
      }
      
      var _-5v:Object;
      
      private function _-5m() : void
      {
         var _loc3_:* = true;
         var _loc1_:Object = _-Io._-8T(get ._-2r);
         if(!_loc2_)
         {
            this._-5v = _loc1_;
            if(_loc3_)
            {
               Cc.debugch("SharedObject",this._-5v);
               if(_loc2_ && (_loc1_))
               {
               }
               _-5B._-72(break.SHOW_NEW_GAME_WINDOW,{
                  "btn1Function":this._-9e,
                  "btn1Params":[_loc1_],
                  "btn2Function":this._-L1
               });
               if(_loc3_ || (_loc1_))
               {
               }
               return;
            }
         }
         if(_loc1_ != undefined)
         {
            if(_loc3_)
            {
               _-5B._-72(break.SHOW_NEW_GAME_WINDOW,{
                  "btn1Function":this._-9e,
                  "btn1Params":[_loc1_],
                  "btn2Function":this._-L1
               });
               if(_loc3_ || (_loc1_))
               {
               }
            }
         }
         else
         {
            this._-L1();
         }
      }
      
      private function _-L1() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!(_loc2_ && (_loc1_)))
         {
            _-Io.save(get ._-2r,null);
            if(_loc1_ || (_loc1_))
            {
            }
            return;
         }
         _-5B._-72(break.GAME_START,_-GV.userData);
      }
      
      private function _-9e(param1:Object) : void
      {
         var _loc3_:* = false;
         if(!(_loc3_ && (param1)))
         {
            _-GV.userData = new _-Km(param1);
            if(!(_loc3_ && (param1)))
            {
               _-5B._-72(break.GAME_START,_-GV.userData);
            }
         }
      }
      
      private function _-9P(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(_loc3_ && (_loc3_)))
         {
            if(_-CE === _loc2_)
            {
               if(_loc3_ && (_loc3_))
               {
               }
            }
            else
            {
               switch(null)
               {
                  case _-Gq:
                     if(_loc3_)
                     {
                     }
                     this.try._-0h = _-9x.muteSound;
                     if(_loc4_)
                     {
                        return;
                     }
                     break;
                  default:
                     return;
               }
               return;
            }
            if(_loc3_)
            {
            }
         }
         if(!(_loc3_ && (_loc3_)))
         {
            if(_loc4_ || (_loc3_))
            {
            }
         }
         else if(_loc4_ || (_loc3_))
         {
         }
         
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
            if(_loc2_ && (this))
            {
            }
            TweenMax.to(this,0.5,{
               "autoAlpha":0,
               "overwrite":1
            });
            return;
         }
         this.mouseChildren = false;
         if(!_loc2_)
         {
            TweenMax.to(this,0.5,{
               "autoAlpha":0,
               "overwrite":1
            });
         }
      }
      
      public function disassemble() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:_-Ez = null;
         if(!_loc4_)
         {
            if(this.parent != null)
            {
               if(!_loc4_)
               {
                  this.parent.removeChild(this);
               }
            }
         }
         for each(_loc1_ in this._-L2)
         {
            if(!_loc4_)
            {
               _loc1_.disassemble();
            }
         }
      }
   }
}
