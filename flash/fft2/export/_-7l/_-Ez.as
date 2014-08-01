package _-7l
{
   import flash.display.InteractiveObject;
   import _-Ku._-IL;
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _-Ez extends Object
   {
      
      {
      var _loc1_:* = true;
      var _loc2_:* = false;
      if(_loc1_)
      {
         _-L5 = "press";
         if(_loc2_ && (_loc2_))
         {
         }
         _-0s = "out";
         return;
      }
      if(!(_loc2_ && (_-Ez)))
      {
         _-GN = "over";
         if(_loc2_)
         {
         }
         return;
      }
      }
      
      public function _-Ez(param1:InteractiveObject = null, param2:Object = null)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:TextField = null;
         this._data = new Object();
         this._-6f = [];
         super();
         if(param1 != null)
         {
            this._-55 = param1;
            if(_loc5_ || (_loc3_))
            {
               if(this._-55 is Sprite)
               {
                  (this._-55 as Sprite).buttonMode = true;
               }
               if(param2 != null)
               {
                  if(_loc5_ || (param1))
                  {
                  }
                  _loc3_ = param1["tf_label"] as TextField;
                  if(!(_loc4_ && (param2)))
                  {
                     if(param2.label != null)
                     {
                        if(!_loc4_)
                        {
                           _loc3_.text = param2.label;
                        }
                     }
                  }
               }
            }
            if(param1["tf_label"] != null)
            {
               if(!_loc4_)
               {
                  if(param2.textFormat != null)
                  {
                  }
               }
               _loc3_ = param1["tf_label"] as TextField;
               if(!(_loc4_ && (param2)))
               {
                  if(param2.label != null)
                  {
                     if(!_loc4_)
                     {
                        _loc3_.text = param2.label;
                     }
                  }
               }
            }
         }
      }
      
      public static var _-L5:String = "press";
      
      public static var _-4T:String = "over";
      
      public static var _-GN:String = "over";
      
      public static var _-0s:String = "out";
      
      public static function _-B9(param1:InteractiveObject, param2:Object = null, param3:Function = null, param4:Array = null) : _-Ez
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(_loc7_ || (param2))
         {
            _-9g(_loc5_);
            if(!_loc6_)
            {
               if(param3 != null)
               {
                  if(_loc7_)
                  {
                     _loc5_._-32(param3,param4);
                  }
               }
            }
         }
         return _loc5_;
      }
      
      public static function _-6P(param1:_-Ez, param2:String) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:_-IL = _-IL._-7p(param2,"TrebuchetMS",15915008,18,"center",true);
         if(!_loc5_)
         {
            _loc3_.width = _loc3_.textWidth;
         }
         var _loc4_:Sprite = param1.displayObject as Sprite;
         if(!_loc5_)
         {
            if(_loc5_ && (param1))
            {
            }
            _loc3_.x = _loc4_.width / 2;
            if(_loc5_ && (_-Ez))
            {
            }
            return;
         }
         _loc4_.addChild(_loc3_);
      }
      
      public static function _-9g(param1:_-Ez, param2:* = null, param3:* = null, param4:* = null) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:MovieClip = param1.displayObject as MovieClip;
         _loc5_.mouseChildren = false;
         if(_loc6_ || (param1))
         {
            _loc5_.stop();
            if(_loc6_ || (param1))
            {
               param1.addListener(MouseEvent.ROLL_OVER,_-0F);
               if(_loc6_)
               {
               }
               param1.addListener(MouseEvent.ROLL_OUT,_-0F);
               return;
            }
            param1.addListener(MouseEvent.MOUSE_DOWN,_-0F);
            if(_loc6_ || (param1))
            {
            }
            return;
         }
         param1.addListener(MouseEvent.MOUSE_UP,_-0F);
         if(!_loc7_)
         {
            param1.addListener(MouseEvent.ROLL_OUT,_-0F);
         }
      }
      
      public static function _-0F(param1:MouseEvent) : void
      {
         var _loc5_:* = false;
         if(_loc4_)
         {
            if(MouseEvent.MOUSE_DOWN === _loc3_)
            {
               if(!_loc5_)
               {
                  if(_loc5_)
                  {
                  }
               }
               if(_loc5_)
               {
               }
            }
            else
            {
               if(MouseEvent.MOUSE_UP === _loc3_)
               {
                  if(_loc4_ || (param1))
                  {
                  }
               }
               else if(MouseEvent.ROLL_OVER === _loc3_)
               {
                  if(_loc4_)
                  {
                     if(_loc5_ && (_loc2_))
                     {
                     }
                  }
                  if(_loc4_)
                  {
                  }
               }
               else
               {
                  switch(null)
                  {
                     case MouseEvent.ROLL_OUT:
                        _loc2_.gotoAndStop(_-L5);
                        if(!(_loc5_ && (_loc2_)))
                        {
                           break;
                        }
                        break;
                  }
                  return;
               }
               
               if(_loc4_)
               {
               }
            }
            if(MouseEvent.MOUSE_DOWN === _loc3_)
            {
            }
         }
         if(_loc5_)
         {
         }
      }
      
      public var _data:Object;
      
      private var _-BQ:Boolean = false;
      
      private var _selected:Boolean = false;
      
      private var _enabled:Boolean = true;
      
      private var _-55:InteractiveObject;
      
      private var _-6f:Array;
      
      public function _-Lc(param1:Array) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function removeListeners(param1:Array) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            this._-5w(param1[_loc2_][0],param1[_loc2_][1]);
            if(_loc3_)
            {
               _loc2_++;
               if(!_loc4_)
               {
                  continue;
               }
               break;
            }
            break;
         }
      }
      
      public function addListener(param1:String, param2:Function) : void
      {
         var _loc4_:* = false;
         if(_loc3_)
         {
            this._-55.addEventListener(param1,param2);
            if(_loc3_ || (param2))
            {
               this._-6f.push([param1,param2]);
            }
         }
      }
      
      public function _-5w(param1:String, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!(_loc4_ && (this)))
         {
            this._-55.removeEventListener(param1,param2);
         }
      }
      
      public function _-4m(param1:Array) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            this._-55.removeEventListener(param1[_loc2_][0],param1[_loc2_][1]);
            if(!_loc3_)
            {
               _loc2_++;
               if(_loc4_)
               {
                  continue;
               }
               break;
            }
         }
      }
      
      public function _-Bx(param1:Array) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            this._-55.addEventListener(param1[_loc2_][0],param1[_loc2_][1]);
            if(!(_loc3_ && (this)))
            {
               _loc2_++;
               if(_loc4_)
               {
                  continue;
               }
               break;
            }
         }
      }
      
      public function _-32(param1:Function, param2:Array = null) : void
      {
         var _loc4_:* = false;
         if(!(_loc4_ && (param2)))
         {
            this._data.onClickFunction = param1;
            if(_loc3_)
            {
               this._data.onClickParams = param2;
               if(_loc4_ && (_loc3_))
               {
               }
            }
            if(param1 != null)
            {
               if(_loc3_)
               {
               }
            }
            return;
         }
         this.addListener(MouseEvent.CLICK,this._-9P);
      }
      
      private function _-9P(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            this._data.onClickFunction.apply(null,this._data.onClickParams);
         }
      }
      
      public function get displayObject() : InteractiveObject
      {
         return this._-55;
      }
      
      public function set displayObject(param1:InteractiveObject) : void
      {
         var _loc3_:* = false;
         if(_loc2_ || (_loc3_))
         {
            this._-55 = param1;
         }
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(this._selected != param1)
            {
               if(_loc3_ || (param1))
               {
                  this._selected = param1;
               }
            }
         }
      }
      
      public function get _-Dq() : Array
      {
         return this._-6f;
      }
      
      public function disassemble() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (this)))
         {
            this.removeListeners(this._-6f);
            if(!_loc1_)
            {
               if(this._-55.parent != null)
               {
                  if(!(_loc1_ && (_loc1_)))
                  {
                     this._-55.parent.removeChild(this.displayObject);
                  }
               }
            }
         }
      }
   }
}
