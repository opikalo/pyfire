package _-07
{
   import fla.win.w_NewGame;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import _-9I._-E7;
   import _-7l._-Ez;
   
   public class _-KB extends w_NewGame implements _-06
   {
      
      public function _-KB(param1:Object, param2:_-Cf)
      {
         var _loc6_:* = true;
         if(_loc6_)
         {
            super();
            if(!_loc5_)
            {
               this._params = param1;
               if(_loc6_ || (this))
               {
               }
               this.visible = false;
               if(!(_loc5_ && (_loc3_)))
               {
                  _loc3_.addListener(MouseEvent.CLICK,this._-9P);
                  if(_loc5_ && (param2))
                  {
                  }
                  _loc4_ = new _-Ez(this.btn_2);
                  _loc4_.addListener(MouseEvent.CLICK,this._-9P);
                  if(_loc6_)
                  {
                     _-Ez._-9g(_loc4_);
                     if(!(_loc5_ && (param2)))
                     {
                        if(this._params.btn2Function != null)
                        {
                           if(_loc6_ || (this))
                           {
                              _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                              if(_loc6_)
                              {
                              }
                           }
                        }
                     }
                     this._-L2 = [_loc3_,_loc4_];
                     if(_loc5_)
                     {
                     }
                     return;
                  }
                  this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                  return;
               }
               _-Ez._-9g(_loc3_);
               if(_loc6_)
               {
                  if(this._params.btn1Function != null)
                  {
                     if(_loc6_ || (param2))
                     {
                        _loc3_._-32(this._params.btn1Function,this._params.btn1Params);
                     }
                  }
               }
               _loc4_ = new _-Ez(this.btn_2);
               _loc4_.addListener(MouseEvent.CLICK,this._-9P);
               if(_loc6_)
               {
                  _-Ez._-9g(_loc4_);
                  if(!(_loc5_ && (param2)))
                  {
                     if(this._params.btn2Function != null)
                     {
                        if(_loc6_ || (this))
                        {
                           _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                           if(_loc6_)
                           {
                           }
                        }
                     }
                  }
                  this._-L2 = [_loc3_,_loc4_];
                  if(_loc5_)
                  {
                  }
                  return;
               }
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               return;
            }
            this.alpha = 0;
            if(!_loc5_)
            {
               this.visible = false;
            }
            if(!(_loc5_ && (_loc3_)))
            {
               _loc3_.addListener(MouseEvent.CLICK,this._-9P);
               if(_loc5_ && (param2))
               {
               }
               _loc4_ = new _-Ez(this.btn_2);
               _loc4_.addListener(MouseEvent.CLICK,this._-9P);
               if(_loc6_)
               {
                  _-Ez._-9g(_loc4_);
                  if(!(_loc5_ && (param2)))
                  {
                     if(this._params.btn2Function != null)
                     {
                        if(_loc6_ || (this))
                        {
                           _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                           if(_loc6_)
                           {
                           }
                        }
                     }
                  }
                  this._-L2 = [_loc3_,_loc4_];
                  if(_loc5_)
                  {
                  }
                  return;
               }
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               return;
            }
            _-Ez._-9g(_loc3_);
            if(_loc6_)
            {
               if(this._params.btn1Function != null)
               {
                  if(_loc6_ || (param2))
                  {
                     _loc3_._-32(this._params.btn1Function,this._params.btn1Params);
                  }
               }
            }
            _loc4_ = new _-Ez(this.btn_2);
            _loc4_.addListener(MouseEvent.CLICK,this._-9P);
            if(_loc6_)
            {
               _-Ez._-9g(_loc4_);
               if(!(_loc5_ && (param2)))
               {
                  if(this._params.btn2Function != null)
                  {
                     if(_loc6_ || (this))
                     {
                        _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                        if(_loc6_)
                        {
                        }
                     }
                  }
               }
               this._-L2 = [_loc3_,_loc4_];
               if(_loc5_)
               {
               }
               return;
            }
            this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
            return;
         }
         this._-3t = param2;
         if(_loc6_ || (this))
         {
            this.alpha = 0;
            if(!_loc5_)
            {
               this.visible = false;
            }
         }
         if(!(_loc5_ && (_loc3_)))
         {
            _loc3_.addListener(MouseEvent.CLICK,this._-9P);
            if(_loc5_ && (param2))
            {
            }
            _loc4_ = new _-Ez(this.btn_2);
            _loc4_.addListener(MouseEvent.CLICK,this._-9P);
            if(_loc6_)
            {
               _-Ez._-9g(_loc4_);
               if(!(_loc5_ && (param2)))
               {
                  if(this._params.btn2Function != null)
                  {
                     if(_loc6_ || (this))
                     {
                        _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                        if(_loc6_)
                        {
                        }
                     }
                  }
               }
               this._-L2 = [_loc3_,_loc4_];
               if(_loc5_)
               {
               }
               return;
            }
            this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
            return;
         }
         _-Ez._-9g(_loc3_);
         if(_loc6_)
         {
            if(this._params.btn1Function != null)
            {
               if(_loc6_ || (param2))
               {
                  _loc3_._-32(this._params.btn1Function,this._params.btn1Params);
               }
            }
         }
         var _loc4_:_-Ez = new _-Ez(this.btn_2);
         _loc4_.addListener(MouseEvent.CLICK,this._-9P);
         if(_loc6_)
         {
            _-Ez._-9g(_loc4_);
            if(!(_loc5_ && (param2)))
            {
               if(this._params.btn2Function != null)
               {
                  if(_loc6_ || (this))
                  {
                     _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                     if(_loc6_)
                     {
                     }
                  }
               }
            }
            this._-L2 = [_loc3_,_loc4_];
            if(_loc5_)
            {
            }
            return;
         }
         this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
      }
      
      private var _-L2:Array;
      
      private var _params:Object;
      
      private var _-3t:_-Cf;
      
      private function _-9P(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!(_loc3_ && (this)))
         {
            this._-3t._-7v(this);
         }
      }
      
      private function _-Aa(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this._-3t._-7v(this);
            if(_loc2_ && (_loc2_))
            {
            }
            return;
         }
         (this._params.btn1Function as Function).apply(null,this._params.btn1Params);
         if(!(_loc2_ && (this)))
         {
            _-E7._-6Y();
         }
      }
      
      public function disassemble() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:_-Ez = null;
         if(!(_loc4_ && (_loc3_)))
         {
            if(this.parent != null)
            {
               if(!(_loc4_ && (_loc3_)))
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
         if(!(_loc4_ && (_loc2_)))
         {
            this._-3t._-8d.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
         }
      }
   }
}
