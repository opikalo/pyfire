package
{
   import flash.display.Sprite;
   import _-72.*;
   import _-Ea._-6y;
   import _-07._-Cf;
   import _-BL._-HD;
   import _-BL._-Fx;
   import _-BL.HelpScreen2;
   import _-BL._-9w;
   import _-BL._-KK;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import _-6Z._-3o;
   import _-K2._-9x;
   import fla.snd.MusMenu;
   import game._-AB;
   import com.junkbyte.console.Cc;
   import fla.snd.MusGameplay;
   import game._-GV;
   import flash._-2v;
   
   public class Main extends Sprite implements _-4W
   {
      
      public function Main()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc2_)))
         {
            this._-GT = new Array();
            if(!_loc1_)
            {
               super();
               _-Jb = this;
               if(!(_loc1_ && (_loc1_)))
               {
                  new _-2v();
                  if(_loc2_)
                  {
                     _-5B.getInstance()._-H5(this);
                     if(_loc1_)
                     {
                     }
                     this.init();
                  }
                  if(stage)
                  {
                     this.init();
                  }
                  else
                  {
                     addEventListener(Event.ADDED_TO_STAGE,this.init);
                  }
               }
            }
            return;
         }
      }
      
      public static var _-Jb:Main;
      
      public static function _-AS() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function _-IE(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function onDisplay() : void
      {
      }
      
      public static function onClose() : void
      {
      }
      
      public var _-GT:Array;
      
      public var _-Ll:_-Cf;
      
      public var _-5Z:_-HD;
      
      public var function:_-Fx;
      
      public var _-AE:HelpScreen2;
      
      public var _-7m:_-9w;
      
      public var _-DU:_-KK;
      
      private function init(param1:Event = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         this._-Ll = new _-Cf(new Rectangle(0,0,get ._-Cl,get ._-B3),this);
         this.stage.tabChildren = false;
         if(get ._-Lh)
         {
            if(!_loc2_)
            {
               _-3o.init(this);
               if(_loc2_ && (this))
               {
               }
               this._-GT = [this._-5Z,this.function,this._-7m,this._-DU,this._-AE];
               if(_loc3_ || (this))
               {
                  this._-5Z.isShown = true;
                  _-9x._-0A(MusMenu);
                  if(_loc2_)
                  {
                  }
                  return;
               }
               _-9x.state = "menu";
               return;
            }
            addChild(this._-7m);
            this._-DU = new _-KK("gameOver");
            if(!_loc2_)
            {
               addChild(this._-DU);
               if(_loc3_)
               {
                  this._-GT = [this._-5Z,this.function,this._-7m,this._-DU,this._-AE];
                  if(_loc3_ || (this))
                  {
                     this._-5Z.isShown = true;
                  }
                  _-9x.state = "menu";
                  return;
               }
            }
            _-9x._-0A(MusMenu);
            if(!_loc2_)
            {
               _-9x.state = "menu";
            }
            return;
         }
         this._-5Z = new _-HD("main");
         if(!_loc2_)
         {
            addChild(this._-5Z);
            this.function = new _-Fx("help");
            addChild(this.function);
            this._-AE = new HelpScreen2("help2");
            if(_loc3_)
            {
               addChild(this._-AE);
               this._-7m = new _-9w("congrat");
               if(_loc3_ || (this))
               {
                  addChild(this._-7m);
                  this._-DU = new _-KK("gameOver");
                  if(_loc2_)
                  {
                  }
                  _-9x._-0A(MusMenu);
                  if(!_loc2_)
                  {
                     _-9x.state = "menu";
                  }
                  return;
               }
            }
            addChild(this._-DU);
            if(_loc3_)
            {
            }
            _-9x._-0A(MusMenu);
            if(!_loc2_)
            {
               _-9x.state = "menu";
            }
            return;
         }
         this._-GT = [this._-5Z,this.function,this._-7m,this._-DU,this._-AE];
         if(_loc3_ || (this))
         {
            this._-5Z.isShown = true;
            _-9x._-0A(MusMenu);
            if(_loc2_)
            {
            }
            return;
         }
         _-9x.state = "menu";
      }
      
      private function startLevel(param1:Object) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-3r(param1:String) : void
      {
         var _loc6_:* = false;
         var _loc2_:* = undefined;
         for each(_loc2_ in this._-GT)
         {
            if(_loc5_)
            {
               if(_loc2_.screenName == param1)
               {
                  if(!(_loc6_ && (this)))
                  {
                     addChild(_loc2_);
                     if(!_loc6_)
                     {
                        _loc2_.isShown = true;
                        if(!_loc5_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        continue;
                     }
                  }
                  else
                  {
                     continue;
                  }
               }
               else
               {
                  _loc2_.isShown = false;
                  continue;
               }
            }
         }
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
