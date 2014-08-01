package _-Ip
{
   import flash.events.EventDispatcher;
   import com.bit101.components.Component;
   import flash.utils.Dictionary;
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import com.bit101.components.Label;
   import flash.display.Bitmap;
   import flash.system.System;
   import com.bit101.components.PushButton;
   import com.bit101.components.CheckBox;
   import flash.events.MouseEvent;
   import com.bit101.components.ComboBox;
   import flash.events.Event;
   import com.bit101.components.HUISlider;
   import com.bit101.components.NumericStepper;
   import com.bit101.components.ColorChooser;
   import flash.net.FileReference;
   import com.bit101.components.Style;
   import flash.display.BitmapData;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.events.ContextMenuEvent;
   import com.bit101.components.RangeSlider;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import flash.events.KeyboardEvent;
   
   public class SimpleGUI extends EventDispatcher
   {
      
      {
      var _loc1_:* = false;
      var _loc2_:* = true;
      if(_loc2_)
      {
         VERSION = 1.02;
         _-2s = 13;
         if(_loc2_)
         {
            _-DE = 8;
            _-Lk = 1;
            if(_loc2_ || (SimpleGUI))
            {
               _-Hh = 1;
               _-9B = 4;
               if(_loc1_)
               {
               }
            }
            _-LM = 1;
         }
      }
      }
      
      public function SimpleGUI(param1:DisplayObjectContainer, param2:String = null, param3:* = null)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this._-7b = new Vector.<Component>();
         if(_loc4_ || (this))
         {
            this._-95 = new Dictionary();
            this._-8b = new Sprite();
            if(!(_loc5_ && (param3)))
            {
               this._-5y = new Sprite();
               if(!_loc5_)
               {
                  this._-8l = new Label();
                  this._-Hg = new Label();
                  if(_loc4_ || (param1))
                  {
                     this._toggle = new Sprite();
                     if(_loc5_)
                     {
                     }
                     this._-Ic();
                     this._-LE();
                     this._-7F();
                     if(this._target.stage)
                     {
                        this.onAddedToStage(null);
                        this._target.addEventListener(Event.ADDED,this._-Kh);
                        if(param3)
                        {
                           this._-Ap = param3;
                           if(_loc4_ || (param2))
                           {
                           }
                           this.hide();
                           return;
                        }
                     }
                     else
                     {
                        this._target.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                        if(_loc4_ || (param2))
                        {
                           this._target.addEventListener(Event.ADDED,this._-Kh);
                           if(param3)
                           {
                              this._-Ap = param3;
                              if(_loc4_ || (param2))
                              {
                              }
                              this.hide();
                              return;
                           }
                        }
                     }
                     this._-0p(param2);
                  }
                  super();
                  this._target = param1;
                  if(!_loc5_)
                  {
                     this._toggle.x = _-LM;
                     if(_loc5_)
                     {
                     }
                     this._-0p(param2);
                  }
                  this._toggle.y = _-LM;
                  this._-5y.x = _-LM;
                  if(_loc4_ || (param3))
                  {
                  }
                  this.onAddedToStage(null);
                  this._target.addEventListener(Event.ADDED,this._-Kh);
                  if(param3)
                  {
                     this._-Ap = param3;
                     if(_loc4_ || (param2))
                     {
                     }
                     this.hide();
                     return;
                  }
                  this._-0p(param2);
               }
               this._-5y.y = _-LM;
               if(!(_loc5_ && (this)))
               {
                  this._-8b.x = _-LM;
                  if(_loc4_)
                  {
                     this._-8b.y = _-2s + _-LM * 2;
                     if(!(_loc5_ && (param2)))
                     {
                        this._-Ic();
                        this._-LE();
                        this._-7F();
                        if(this._target.stage)
                        {
                           this.onAddedToStage(null);
                        }
                        else
                        {
                           this._target.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                           if(_loc4_ || (param2))
                           {
                           }
                        }
                        this._-0p(param2);
                     }
                  }
                  this._target.addEventListener(Event.ADDED,this._-Kh);
                  if(param3)
                  {
                     this._-Ap = param3;
                     if(_loc4_ || (param2))
                     {
                     }
                     this.hide();
                     return;
                  }
                  this._-0p(param2);
               }
            }
            this._-Ga = new Bitmap();
            this._-8m = new Bitmap();
            super();
            this._target = param1;
            if(!_loc5_)
            {
               this._toggle.x = _-LM;
               if(_loc5_)
               {
               }
               this._-0p(param2);
            }
            this._toggle.y = _-LM;
            this._-5y.x = _-LM;
            if(_loc4_ || (param3))
            {
               this._-5y.y = _-LM;
               if(!(_loc5_ && (this)))
               {
                  this._-8b.x = _-LM;
                  if(_loc4_)
                  {
                     this._-8b.y = _-2s + _-LM * 2;
                     if(!(_loc5_ && (param2)))
                     {
                        this._-Ic();
                        this._-LE();
                        this._-7F();
                        if(!this._target.stage)
                        {
                           this._target.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                           if(_loc4_ || (param2))
                           {
                           }
                        }
                        this._-0p(param2);
                     }
                  }
                  this._target.addEventListener(Event.ADDED,this._-Kh);
                  if(param3)
                  {
                     this._-Ap = param3;
                     if(_loc4_ || (param2))
                     {
                     }
                     this.hide();
                     return;
                  }
                  this._-0p(param2);
               }
            }
            this.onAddedToStage(null);
            this._target.addEventListener(Event.ADDED,this._-Kh);
            if(param3)
            {
               this._-Ap = param3;
               if(_loc4_ || (param2))
               {
               }
               this.hide();
               return;
            }
            this._-0p(param2);
         }
         this._-Br();
         if(_loc4_ || (this))
         {
            this.hide();
         }
      }
      
      public static const VERSION:Number = 1.02;
      
      private static const _-2s:int = 13;
      
      private static const _-DE:int = 8;
      
      private static const _-Lk:int = 1;
      
      private static const _-Hh:int = 1;
      
      private static const _-9B:int = 4;
      
      private static const _-LM:int = 1;
      
      private var _-7b:Vector.<Component>;
      
      private var _-95:Dictionary;
      
      private var _-8b:Sprite;
      
      private var _target:DisplayObjectContainer;
      
      private var _active:Component;
      
      private var _stage:Stage;
      
      private var _-5y:Sprite;
      
      private var _-8l:Label;
      
      private var _-Hg:Label;
      
      private var _toggle:Sprite;
      
      private var _-Ga:Bitmap;
      
      private var _-8m:Bitmap;
      
      private var _tween:Number = 0.0;
      
      private var _width:Number = 0.0;
      
      private var _-Jp:String;
      
      private var _-3P:Sprite;
      
      private var _group:Sprite;
      
      private var _dirty:Boolean;
      
      private var _-1i:Boolean;
      
      private var _-D8:Boolean = true;
      
      public function show() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this._-8m.visible = false;
            if(!_loc2_)
            {
               this._target.addChild(this._-8b);
               if(!_loc2_)
               {
                  this._target.addChild(this._-5y);
                  if(_loc1_)
                  {
                  }
                  this._-1i = false;
               }
            }
            return;
         }
         this._target.addChild(this._toggle);
         if(_loc1_)
         {
            this._-1i = false;
         }
      }
      
      public function hide() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this._-8m.visible = true;
         if(_loc2_)
         {
            if(_loc1_)
            {
            }
            !this._-D8;
         }
         if(this._-D8)
         {
            this._target.removeChild(this._toggle);
         }
         if(this._target.contains(this._-8b))
         {
            if(_loc2_ || (_loc1_))
            {
               this._target.removeChild(this._-8b);
               if(_loc1_ && (_loc2_))
               {
               }
            }
            return;
         }
         if(this._target.contains(this._-5y))
         {
            this._target.removeChild(this._-5y);
            if(_loc2_)
            {
            }
            return;
         }
         this._-1i = true;
      }
      
      public function save() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-8w(param1:Class, param2:Object) : Component
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-0p(param1:String = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!(_loc2_ && (_loc2_)))
         {
            this._-3P = new Sprite();
            if(_loc3_ || (_loc2_))
            {
            }
            return;
         }
         this._-8b.addChild(this._-3P);
         if(_loc3_)
         {
            this._-Br(param1);
         }
      }
      
      public function _-Br(param1:String = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(_loc3_ && (_loc2_))
            {
            }
            if(this._group)
            {
               if(!(_loc3_ && (param1)))
               {
                  this._group.parent.removeChild(this._group);
               }
               this._-6P(param1.toUpperCase());
            }
            this._group = new Sprite();
            if(!_loc3_)
            {
               this._-3P.addChild(this._group);
               if(_loc2_ || (_loc3_))
               {
                  if(param1)
                  {
                     this._-6P(param1.toUpperCase());
                  }
               }
            }
         }
      }
      
      public function _-6P(param1:String) : void
      {
         var _loc3_:* = false;
         if(!(_loc3_ && (_loc3_)))
         {
            this._-8w(Label,{"text":param1.toUpperCase()});
         }
      }
      
      public function _-52(param1:String, param2:Object = null) : void
      {
         var _loc5_:* = true;
         var param2:Object = this._-4K(param1,param2);
         var _loc3_:Object = {};
         if(!(_loc4_ && (this)))
         {
            _loc3_.target = param1;
            if(!_loc4_)
            {
               this._-8w(CheckBox,this.merge(_loc3_,param2));
            }
         }
      }
      
      public function _-EP(param1:String, param2:Object = null) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var param2:Object = this._-4K(param1,param2);
         if(_loc5_)
         {
            _loc3_.label = param1;
            if(_loc5_ || (_loc3_))
            {
            }
            return;
         }
         this._-8w(PushButton,this.merge(_loc3_,param2));
      }
      
      public function _-Go(param1:String, param2:Number, param3:Number, param4:Object = null) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var param4:Object = this._-4K(param1,param4);
         var _loc5_:Object = {};
         _loc5_.target = param1;
         if(_loc7_ || (param3))
         {
            _loc5_.minimum = param2;
            if(_loc7_ || (this))
            {
               _loc5_.maximum = param3;
               if(_loc6_ && (param2))
               {
               }
            }
            this._-8w(HUISlider,this.merge(_loc5_,param4));
         }
      }
      
      public function _-4Z(param1:String, param2:String, param3:Number, param4:Number, param5:Object = null) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var param5:Object = this._-4K(_loc6_.join(" / "),param5);
         var _loc7_:Object = {};
         _loc7_.target = _loc6_;
         if(_loc8_ || (param3))
         {
            _loc7_.minimum = param3;
            if(_loc8_ || (param2))
            {
               _loc7_.maximum = param4;
               if(_loc8_ || (param3))
               {
               }
            }
            return;
         }
         this._-8w(SimpleGUI,this.merge(_loc7_,param5));
      }
      
      public function _-Gl(param1:String, param2:Number, param3:Number, param4:Object = null) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Object = {};
         _loc5_.target = param1;
         if(_loc6_ || (param3))
         {
            _loc5_.minimum = param2;
            if(_loc6_)
            {
            }
            return;
         }
         _loc5_.maximum = param3;
         if(_loc6_ || (param2))
         {
            this._-8w(NumericStepper,this.merge(_loc5_,param4));
         }
      }
      
      public function _-6G(param1:String, param2:Object = null) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var param2:Object = this._-4K(param1,param2);
         if(_loc4_ || (param1))
         {
            _loc3_.target = param1;
            if(!_loc5_)
            {
               _loc3_.usePopup = true;
               if(_loc4_ || (param2))
               {
               }
            }
            this._-8w(ColorChooser,this.merge(_loc3_,param2));
         }
      }
      
      public function _-Gg(param1:String, param2:Array, param3:Object = null) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var param3:Object = this._-4K(param1,param3);
         if(_loc7_ && (param3))
         {
         }
         var _loc5_:* = this._-14(param1);
         var _loc6_:Object = this._-1v(param1);
         if(!_loc7_)
         {
            _loc4_.target = param1;
            if(_loc7_ && (this))
            {
            }
            _loc4_.defaultLabel = _loc6_[_loc5_];
            if(_loc8_)
            {
               _loc4_.numVisibleItems = Math.min(param2.length,5);
               if(_loc8_ || (this))
               {
               }
               return;
            }
            this._-8w(SimpleGUI,this.merge(_loc4_,param3));
            return;
         }
         _loc4_.items = param2;
         if(_loc8_)
         {
            _loc4_.defaultLabel = _loc6_[_loc5_];
            if(_loc8_)
            {
               _loc4_.numVisibleItems = Math.min(param2.length,5);
               if(_loc8_ || (this))
               {
               }
            }
            this._-8w(SimpleGUI,this.merge(_loc4_,param3));
         }
      }
      
      public function _-43(param1:String, param2:FileReference, param3:Function, param4:Array = null, param5:Object = null) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var param5:Object = this._-4K(param1,param5);
         var _loc6_:Object = {};
         _loc6_.file = param2;
         if(_loc7_ || (param1))
         {
            _loc6_.label = param1;
            if(_loc7_ || (this))
            {
               _loc6_.width = 220;
               if(_loc8_)
               {
               }
               this._-8w(SimpleGUI,this.merge(_loc6_,param5));
               return;
            }
         }
         _loc6_.filter = param4;
         if(_loc7_)
         {
            _loc6_.onComplete = param3;
            if(_loc7_ || (param3))
            {
            }
            return;
         }
         this._-8w(SimpleGUI,this.merge(_loc6_,param5));
      }
      
      public function _-Jq(param1:String = "Save", param2:Object = null) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(_loc5_ || (param2))
         {
            this._-Br("Save Current Settings (S)");
         }
         var param2:Object = this._-4K(param1,param2);
         var _loc3_:Object = {};
         if(_loc5_ || (_loc3_))
         {
            _loc3_.label = param1;
         }
         var _loc4_:PushButton = this._-8w(PushButton,this.merge(_loc3_,param2)) as PushButton;
         _loc4_.addEventListener(MouseEvent.CLICK,this._-2K);
      }
      
      private function _-Ic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Style.PANEL = 3355443;
         if(_loc1_ || (_loc2_))
         {
            Style.BACKGROUND = 3355443;
            if(!(_loc2_ && (_loc1_)))
            {
               Style.INPUT_TEXT = 15658734;
               if(_loc1_ || (_loc1_))
               {
               }
               Style.DROPSHADOW = 0;
            }
            Style.LABEL_TEXT = 15658734;
            if(_loc1_)
            {
               Style.BUTTON_FACE = 5592405;
               if(!_loc2_)
               {
                  Style.DROPSHADOW = 0;
               }
            }
         }
      }
      
      private function _-LE() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-7F() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-A8(param1:Component = null) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!_loc4_)
         {
            if(param1)
            {
               if(!_loc4_)
               {
                  this._active = param1;
                  if(!_loc4_)
                  {
                     this.apply(param1,true);
                     if(_loc3_ || (param1))
                     {
                     }
                     return;
                  }
               }
               this.update();
               return;
            }
         }
         while(_loc2_ < this._-7b.length)
         {
            param1 = this._-7b[_loc2_];
            if(_loc3_ || (_loc2_))
            {
               this.apply(param1,false);
               if(_loc4_ && (_loc3_))
               {
                  continue;
               }
            }
            _loc2_++;
         }
         if(!(_loc4_ && (_loc3_)))
         {
            this.update();
         }
      }
      
      private function apply(param1:Component, param2:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function update() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function invalidate() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!(_loc1_ && (_loc1_)))
         {
            this._-8b.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(_loc2_)
            {
               this._dirty = true;
            }
         }
      }
      
      private function draw() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-4K(param1:String, param2:Object) : Object
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-1v(param1:String) : Object
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Array = param1.split(".");
         if(_loc6_ || (param1))
         {
            if(_loc3_.length == 1)
            {
               if(_loc6_ || (_loc3_))
               {
               }
            }
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length - 1)
            {
               if(!(_loc5_ && (_loc3_)))
               {
                  _loc4_++;
               }
            }
            return _loc2_;
         }
         return this._target;
      }
      
      private function _-14(param1:String) : String
      {
         return new RegExp("[_a-z0-9]+$","i").exec(param1)[0];
      }
      
      private function merge(param1:Object, param2:Object) : Object
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:String = null;
         var _loc3_:Object = this.clone(param2);
         for(_loc4_ in param1)
         {
            if(_loc7_)
            {
               if(!param2.hasOwnProperty(_loc4_))
               {
                  if(!(_loc7_ || (_loc3_)))
                  {
                     continue;
                  }
               }
               else
               {
                  continue;
               }
            }
            _loc3_[_loc4_] = param1[_loc4_];
         }
         return _loc3_;
      }
      
      private function clone(param1:Object) : Object
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Object = {};
         for(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
      
      private function _-Eo(param1:String) : String
      {
         return param1.replace(new RegExp("[_]+([a-zA-Z0-9]+)|([0-9]+)","g")," $1$2 ").replace(new RegExp("(?<=[a-z0-9])([A-Z])|(?<=[a-z])([0-9])","g")," $1$2").replace(new RegExp("^(\\w)|\\s+(\\w)|\\.+(\\w)","g"),this._-J4).replace(new RegExp("^\\s|\\s$|(?<=\\s)\\s+","g"),"");
      }
      
      private function _-J4(... rest) : String
      {
         return String(" " + rest[1] + rest[2] + rest[3]).toUpperCase();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this._stage = this._target.stage;
            if(_loc3_)
            {
            }
            this._target.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-K1);
            return;
         }
         this._target.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         if(_loc3_ || (this))
         {
            this._target.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-K1);
         }
      }
      
      private function _-Kh(param1:Event) : void
      {
         var _loc3_:* = true;
         if(_loc3_ || (param1))
         {
            if(!this._-1i)
            {
               if(!_loc2_)
               {
                  this.show();
               }
            }
         }
      }
      
      private function _-2K(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(_loc3_ || (this))
         {
            this.save();
         }
      }
      
      private function _-2T(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(this._-1i)
            {
               if(!(_loc2_ && (_loc2_)))
               {
                  this.show();
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               this.hide();
            }
            return;
         }
      }
      
      private function _-8u(param1:ContextMenuEvent) : void
      {
         var _loc3_:* = false;
         if(!_loc3_)
         {
            if(this._-1i)
            {
               if(_loc3_)
               {
               }
            }
            else
            {
               this.hide();
            }
            return;
         }
         this.show();
         if(_loc2_ || (param1))
         {
         }
      }
      
      private function _-A6(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!_loc3_)
         {
            this._-A8(param1.target as Component);
         }
      }
      
      private function _-Fg(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            this._-A8(param1.target as Component);
         }
      }
      
      private function _-Es(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc2_:Component = param1.target as Component;
         if(!_loc4_)
         {
            _loc2_.removeEventListener(Component.DRAW,this._-Es);
            if(_loc4_)
            {
            }
            return;
         }
         this.invalidate();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this._-8b.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            if(!_loc2_)
            {
               if(this._dirty)
               {
                  if(_loc2_ && (param1))
                  {
                  }
               }
               return;
            }
         }
         this._dirty = false;
         if(_loc3_ || (this))
         {
            this.draw();
         }
      }
      
      private function _-K1(param1:KeyboardEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function _-GP(param1:Event) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get _-ET() : Boolean
      {
         return this._-D8;
      }
      
      public function set _-ET(param1:Boolean) : void
      {
         var _loc3_:* = false;
         if(!(_loc3_ && (param1)))
         {
            this._-D8 = param1;
            if(!_loc3_)
            {
               if(this._-1i)
               {
                  if(_loc2_)
                  {
                  }
               }
            }
            this.hide();
         }
      }
      
      public function set message(param1:String) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get _-Ap() : *
      {
         return this._-Jp;
      }
      
      public function set _-Ap(param1:*) : void
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
import com.bit101.components.HRangeSlider;
import com.bit101.components.Label;

class HUIRangeSlider extends HRangeSlider
{
   
   function HUIRangeSlider()
   {
      this._label = new Label();
      super();
   }
   
   private var _label:Label;
   
   private var _offset:Number = 0.0;
   
   override protected function addChildren() : void
   {
      super.addChildren();
      this._label.y = -5;
      addChild(this._label);
   }
   
   override public function draw() : void
   {
      this._offset = x = this._label.width + 5;
      _width = Math.min(200 - this._offset,200);
      this._label.x = -this._offset;
      super.draw();
   }
   
   public function get label() : String
   {
      return this._label.text;
   }
   
   public function set label(param1:String) : void
   {
      this._label.text = param1;
      this._label.draw();
   }
}
import com.bit101.components.Component;
import com.bit101.components.Label;
import flash.net.FileReference;
import com.bit101.components.InputText;
import com.bit101.components.PushButton;
import flash.events.MouseEvent;
import flash.events.Event;

class FileChooser extends Component
{
   
   function FileChooser()
   {
      this.filter = [];
      this._label = new Label();
      this._filePath = new InputText();
      this._button = new PushButton();
      super();
   }
   
   public var filter:Array;
   
   public var onComplete:Function;
   
   private var _label:Label;
   
   private var _file:FileReference;
   
   private var _filePath:InputText;
   
   private var _button:PushButton;
   
   override protected function addChildren() : void
   {
      super.addChildren();
      this._button.x = 125;
      this._button.width = 75;
      this._button.label = "Browse";
      this._button.addEventListener(MouseEvent.CLICK,this.onButtonClicked);
      this._filePath.enabled = false;
      this._filePath.width = 120;
      this._filePath.height = this._button.height;
      this._button.y = this._filePath.y = 20;
      addChild(this._filePath);
      addChild(this._button);
      addChild(this._label);
   }
   
   private function onButtonClicked(param1:MouseEvent) : void
   {
      if(this._file)
      {
         this._file.browse(this.filter);
      }
   }
   
   private function onFileSelected(param1:Event) : void
   {
      this._filePath.text = this._file.name;
      this._file.addEventListener(Event.COMPLETE,this.onFileComplete);
      this._file.load();
   }
   
   private function onFileComplete(param1:Event) : void
   {
      if(this.onComplete != null)
      {
         this.onComplete();
      }
   }
   
   override public function set width(param1:Number) : void
   {
      super.width = param1;
      this._button.x = param1 - this._button.width;
      this._filePath.width = param1 - this._button.width - 5;
   }
   
   public function get label() : String
   {
      return this._label.text;
   }
   
   public function set label(param1:String) : void
   {
      this._label.text = param1;
   }
   
   public function get file() : FileReference
   {
      return this._file;
   }
   
   public function set file(param1:FileReference) : void
   {
      if(this._file)
      {
         this._file.removeEventListener(Event.SELECT,this.onFileSelected);
      }
      this._file = param1;
      this._file.addEventListener(Event.SELECT,this.onFileSelected);
      if(this._file.data)
      {
         this._filePath.text = this._file.name;
      }
   }
}
import com.bit101.components.ComboBox;

class StyledCombo extends ComboBox
{
   
   function StyledCombo()
   {
      super();
   }
   
   override protected function addChildren() : void
   {
      super.addChildren();
      _list.defaultColor = 3355443;
      _list.alternateColor = 4473924;
      _list.selectedColor = 1118481;
      _list.rolloverColor = 5592405;
   }
}
