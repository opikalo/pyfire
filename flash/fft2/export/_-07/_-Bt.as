package _-07
{
   import fla.win.w_LevelMap1;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import _-9I._-E7;
   import flash.events.KeyboardEvent;
   import _-7l._-Ez;
   
   public class _-Bt extends w_LevelMap1 implements _-06
   {
      
      public function _-Bt(param1:Object, param2:_-Cf)
      {
         var _loc6_:* = false;
         if(_loc5_)
         {
            super();
            if(_loc5_)
            {
               this._params = param1;
               if(!_loc6_)
               {
                  this._-3t = param2;
                  if(_loc6_ && (param2))
                  {
                  }
               }
               this.alpha = 0;
               if(!_loc6_)
               {
                  this.visible = false;
               }
            }
         }
         var _loc3_:_-Ez = new _-Ez(this.btn_1);
         if(!(_loc6_ && (param1)))
         {
            _loc3_.addListener(MouseEvent.CLICK,this._-9P);
            if(_loc5_)
            {
            }
            if(this._params.btn1Function != null)
            {
               if(!_loc6_)
               {
                  _loc3_._-32(this._params.btn1Function,this._params.btn1Params);
               }
            }
            _loc4_.addListener(MouseEvent.CLICK,this._-9P);
            if(_loc5_ || (this))
            {
               _-Ez._-9g(_loc4_);
               _loc4_._-32(get ._-II,[get ._-82]);
               this._-L2 = [_loc3_,_loc4_];
               if(!_loc6_)
               {
                  this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                  if(this._params.carPos != null)
                  {
                     if(!(_loc6_ && (param1)))
                     {
                        _-Fp.mc_car.x = 360 * this._params.carPos.x / 2800;
                        _-Fp.mc_car.y = 360 * this._params.carPos.y / 2800;
                        if(_loc6_ && (param2))
                        {
                        }
                     }
                  }
                  if(this._params.parPos != null)
                  {
                     _-Fp.mc_par.x = 360 * this._params.parPos.x / 2800;
                  }
               }
               return;
            }
            _-Fp.mc_par.y = 360 * this._params.parPos.y / 2800;
            return;
         }
         _-Ez._-9g(_loc3_);
         if(!_loc6_)
         {
            if(this._params.btn1Function != null)
            {
               if(!_loc6_)
               {
                  _loc3_._-32(this._params.btn1Function,this._params.btn1Params);
               }
            }
         }
         _loc4_.addListener(MouseEvent.CLICK,this._-9P);
         if(_loc5_ || (this))
         {
            _-Ez._-9g(_loc4_);
            _loc4_._-32(get ._-II,[get ._-82]);
            this._-L2 = [_loc3_,_loc4_];
            if(!_loc6_)
            {
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               if(this._params.carPos != null)
               {
                  if(!(_loc6_ && (param1)))
                  {
                     _-Fp.mc_car.x = 360 * this._params.carPos.x / 2800;
                     _-Fp.mc_car.y = 360 * this._params.carPos.y / 2800;
                     if(_loc6_ && (param2))
                     {
                     }
                  }
               }
               if(this._params.parPos != null)
               {
                  _-Fp.mc_par.x = 360 * this._params.parPos.x / 2800;
               }
            }
            return;
         }
         _-Fp.mc_par.y = 360 * this._params.parPos.y / 2800;
      }
      
      private var _-L2:Array;
      
      private var _params:Object;
      
      private var _-3t:_-Cf;
      
      private function _-9P(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(param1.target != this.btn_2)
            {
               if(_loc3_ || (this))
               {
               }
            }
            return;
         }
         this._-3t._-7v(this);
      }
      
      private function _-DH(param1:Event) : void
      {
         var _loc3_:* = false;
         if(_loc2_)
         {
            if(_-E7._-Cw("M","SPACE","ENTER"))
            {
               if(_loc2_)
               {
                  this._-3t._-7v(this);
                  if(_loc2_ || (this))
                  {
                     (this._params.btn1Function as Function).apply(null,this._params.btn1Params);
                     if(_loc2_ || (_loc2_))
                     {
                     }
                  }
               }
               _-E7._-A9("M");
            }
         }
      }
      
      private function _-Aa(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this._-3t._-7v(this);
         (this._params.btn1Function as Function).apply(null,this._params.btn1Params);
         _-E7._-3u("M");
         if(!_loc2_)
         {
            if(param1.keyCode == 77)
            {
            }
            return;
         }
         _-E7._-KH[param1.keyCode] = false;
         if(!_loc2_)
         {
            _-E7._-9a[param1.keyCode] = true;
         }
      }
      
      public function disassemble() : void
      {
         var _loc5_:* = true;
         var _loc1_:_-Ez = null;
         if(_loc5_)
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
            if(_loc5_ || (_loc2_))
            {
               _loc1_.disassemble();
            }
         }
         if(_loc5_)
         {
            this.removeEventListener(Event.ENTER_FRAME,this._-DH);
            if(_loc5_ || (_loc3_))
            {
               this._-3t._-8d.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
            }
         }
      }
   }
}
