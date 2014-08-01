package com.bit101.components
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Matrix;
   import flash.display.BlendMode;
   import flash.display.Graphics;
   import flash.display.GradientType;
   import flash.display.SpreadMethod;
   import flash.display.InterpolationMethod;
   import flash.display.DisplayObjectContainer;
   
   public class ColorChooser extends Component
   {
      
      public function ColorChooser(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0, param4:uint = 16711680, param5:Function = null)
      {
         this._defaultModelColors = [16711680,16776960,65280,65535,255,16711935,16711680,16777215,0];
         this._oldColorChoice = this._value;
         this._tmpColorChoice = this._value;
         this._oldColorChoice = this._tmpColorChoice = this._value = param4;
         super(param1,param2,param3);
         if(param5 != null)
         {
            addEventListener(Event.CHANGE,param5);
         }
      }
      
      public static const TOP:String = "top";
      
      public static const BOTTOM:String = "bottom";
      
      protected var _colors:BitmapData;
      
      protected var _colorsContainer:Sprite;
      
      protected var _defaultModelColors:Array;
      
      protected var _input:InputText;
      
      protected var _model:DisplayObject;
      
      protected var _oldColorChoice:uint;
      
      protected var _popupAlign:String = "bottom";
      
      protected var _stage:Stage;
      
      protected var _swatch:Sprite;
      
      protected var _tmpColorChoice:uint;
      
      protected var _usePopup:Boolean = false;
      
      protected var _value:uint = 16711680;
      
      override protected function init() : void
      {
         super.init();
         _width = 65;
         _height = 15;
         this.value = this._value;
      }
      
      override protected function addChildren() : void
      {
         this._input = new InputText();
         this._input.width = 45;
         this._input.restrict = "0123456789ABCDEFabcdef";
         this._input.maxChars = 6;
         addChild(this._input);
         this._input.addEventListener(Event.CHANGE,this.onChange);
         this._swatch = new Sprite();
         this._swatch.x = 50;
         this._swatch.filters = [getShadow(2,true)];
         addChild(this._swatch);
         this._colorsContainer = new Sprite();
         this._colorsContainer.addEventListener(Event.ADDED_TO_STAGE,this.onColorsAddedToStage);
         this._colorsContainer.addEventListener(Event.REMOVED_FROM_STAGE,this.onColorsRemovedFromStage);
         this._model = this.getDefaultModel();
         this.drawColors(this._model);
      }
      
      override public function draw() : void
      {
         super.draw();
         this._swatch.graphics.clear();
         this._swatch.graphics.beginFill(this._value);
         this._swatch.graphics.drawRect(0,0,16,16);
         this._swatch.graphics.endFill();
      }
      
      protected function onChange(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this._value = parseInt("0x" + this._input.text,16);
         this._input.text = this._input.text.toUpperCase();
         this._oldColorChoice = this.value;
         invalidate();
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set value(param1:uint) : void
      {
         var _loc2_:String = param1.toString(16).toUpperCase();
         while(_loc2_.length < 6)
         {
            _loc2_ = "0" + _loc2_;
         }
         this._input.text = _loc2_;
         this._value = parseInt("0x" + this._input.text,16);
         invalidate();
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      public function get model() : DisplayObject
      {
         return this._model;
      }
      
      public function set model(param1:DisplayObject) : void
      {
         this._model = param1;
         if(this._model != null)
         {
            this.drawColors(this._model);
            if(!this.usePopup)
            {
               this.usePopup = true;
            }
         }
         else
         {
            this._model = this.getDefaultModel();
            this.drawColors(this._model);
            this.usePopup = false;
         }
      }
      
      protected function drawColors(param1:DisplayObject) : void
      {
         this._colors = new BitmapData(param1.width,param1.height);
         this._colors.draw(param1);
         while(this._colorsContainer.numChildren)
         {
            this._colorsContainer.removeChildAt(0);
         }
         this._colorsContainer.addChild(new Bitmap(this._colors));
         this.placeColors();
      }
      
      public function get popupAlign() : String
      {
         return this._popupAlign;
      }
      
      public function set popupAlign(param1:String) : void
      {
         this._popupAlign = param1;
         this.placeColors();
      }
      
      public function get usePopup() : Boolean
      {
         return this._usePopup;
      }
      
      public function set usePopup(param1:Boolean) : void
      {
         this._usePopup = param1;
         this._swatch.buttonMode = true;
         this._colorsContainer.buttonMode = true;
         this._colorsContainer.addEventListener(MouseEvent.MOUSE_MOVE,this.browseColorChoice);
         this._colorsContainer.addEventListener(MouseEvent.MOUSE_OUT,this.backToColorChoice);
         this._colorsContainer.addEventListener(MouseEvent.CLICK,this.setColorChoice);
         this._swatch.addEventListener(MouseEvent.CLICK,this.onSwatchClick);
         if(!this._usePopup)
         {
            this._swatch.buttonMode = false;
            this._colorsContainer.buttonMode = false;
            this._colorsContainer.removeEventListener(MouseEvent.MOUSE_MOVE,this.browseColorChoice);
            this._colorsContainer.removeEventListener(MouseEvent.MOUSE_OUT,this.backToColorChoice);
            this._colorsContainer.removeEventListener(MouseEvent.CLICK,this.setColorChoice);
            this._swatch.removeEventListener(MouseEvent.CLICK,this.onSwatchClick);
         }
      }
      
      protected function onColorsRemovedFromStage(param1:Event) : void
      {
         this._stage.removeEventListener(MouseEvent.CLICK,this.onStageClick);
      }
      
      protected function onColorsAddedToStage(param1:Event) : void
      {
         this._stage = stage;
         this._stage.addEventListener(MouseEvent.CLICK,this.onStageClick);
      }
      
      protected function onStageClick(param1:MouseEvent) : void
      {
         this.displayColors();
      }
      
      protected function onSwatchClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this.displayColors();
      }
      
      protected function backToColorChoice(param1:MouseEvent) : void
      {
         this.value = this._oldColorChoice;
      }
      
      protected function setColorChoice(param1:MouseEvent) : void
      {
         this.value = this._colors.getPixel(this._colorsContainer.mouseX,this._colorsContainer.mouseY);
         this._oldColorChoice = this.value;
         dispatchEvent(new Event(Event.CHANGE));
         this.displayColors();
      }
      
      protected function browseColorChoice(param1:MouseEvent) : void
      {
         this._tmpColorChoice = this._colors.getPixel(this._colorsContainer.mouseX,this._colorsContainer.mouseY);
         this.value = this._tmpColorChoice;
      }
      
      protected function displayColors() : void
      {
         this.placeColors();
         if(this._colorsContainer.parent)
         {
            this._colorsContainer.parent.removeChild(this._colorsContainer);
         }
         else
         {
            stage.addChild(this._colorsContainer);
         }
      }
      
      protected function placeColors() : void
      {
         var _loc1_:Point = new Point(x,y);
         if(parent)
         {
            _loc1_ = parent.localToGlobal(_loc1_);
         }
         switch(this._popupAlign)
         {
            case TOP:
               this._colorsContainer.x = _loc1_.x;
               this._colorsContainer.y = _loc1_.y - this._colorsContainer.height - 4;
               break;
            case BOTTOM:
               this._colorsContainer.x = _loc1_.x;
               this._colorsContainer.y = _loc1_.y + 22;
               break;
            default:
               this._colorsContainer.x = _loc1_.x;
               this._colorsContainer.y = _loc1_.y + 22;
         }
      }
      
      protected function getDefaultModel() : Sprite
      {
         var _loc11_:String = null;
         var _loc12_:Matrix = null;
         var _loc1_:Number = 100;
         var _loc2_:Number = 100;
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_);
         var _loc4_:Sprite = this.getGradientSprite(_loc1_,_loc2_,this._defaultModelColors);
         _loc3_.draw(_loc4_);
         var _loc5_:Array = [BlendMode.MULTIPLY,BlendMode.ADD];
         var _loc6_:int = _loc5_.length;
         var _loc7_:Sprite = this.getGradientSprite(_loc2_ / _loc6_,_loc1_,[16777215,0]);
         var _loc8_:* = 0;
         while(_loc8_ < _loc6_)
         {
            _loc11_ = _loc5_[_loc8_];
            _loc12_ = new Matrix();
            _loc12_.rotate(-Math.PI / 2);
            _loc12_.translate(0,_loc2_ / _loc6_ * _loc8_ + _loc2_ / _loc6_);
            _loc3_.draw(_loc7_,_loc12_,null,_loc11_);
            _loc8_++;
         }
         var _loc9_:Sprite = new Sprite();
         var _loc10_:Bitmap = new Bitmap(_loc3_);
         _loc9_.addChild(_loc10_);
         return _loc9_;
      }
      
      protected function getGradientSprite(param1:Number, param2:Number, param3:Array) : Sprite
      {
         var _loc4_:Sprite = new Sprite();
         var _loc5_:Graphics = _loc4_.graphics;
         var _loc6_:int = param3.length;
         var _loc7_:Array = [];
         var _loc8_:Array = [];
         var _loc9_:Matrix = new Matrix();
         _loc9_.createGradientBox(param1,param2,0,0,0);
         var _loc10_:* = 0;
         while(_loc10_ < _loc6_)
         {
            _loc7_.push(1);
            _loc8_.push(0 + 255 / (_loc6_ - 1) * _loc10_);
            _loc10_++;
         }
         _loc5_.beginGradientFill(GradientType.LINEAR,param3,_loc7_,_loc8_,_loc9_,SpreadMethod.PAD,InterpolationMethod.RGB);
         _loc5_.drawRect(0,0,param1,param2);
         _loc5_.endFill();
         return _loc4_;
      }
   }
}
