package _-07
{
   import fla.win.w_LevelComplete;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import _-9I._-E7;
   import _-7l._-Ez;
   import _-Ku._-IL;
   import each ._-60;
   
   public class else extends w_LevelComplete implements _-06
   {
      
      public function else(param1:Object, param2:_-Cf)
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!(_loc7_ && (param1)))
         {
            super();
            if(_loc6_ || (param2))
            {
               this._params = param1;
               if(!(_loc7_ && (param2)))
               {
                  this._-3t = param2;
                  if(_loc7_ && (this))
                  {
                  }
               }
               this.visible = false;
            }
            if(!_loc7_)
            {
               _loc3_.addListener(MouseEvent.CLICK,this._-9P);
               if(_loc6_)
               {
                  _-Ez._-9g(_loc3_);
                  if(!_loc7_)
                  {
                     if(this._params.btn1Function != null)
                     {
                        if(_loc7_ && (param2))
                        {
                        }
                     }
                     _loc4_ = new _-Ez(this.btn_2);
                     _loc4_.addListener(MouseEvent.CLICK,this._-9P);
                     if(!(_loc7_ && (param2)))
                     {
                        _-Ez._-9g(_loc4_);
                        if(!_loc7_)
                        {
                           if(this._params.btn2Function != null)
                           {
                              if(!_loc7_)
                              {
                                 _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                                 if(_loc7_ && (this))
                                 {
                                 }
                              }
                              tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                              tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                              tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                              if(_loc6_ || (param2))
                              {
                                 tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                                 if(!(_loc7_ && (param1)))
                                 {
                                    if(param1.stats != null)
                                    {
                                       if(_loc6_)
                                       {
                                       }
                                    }
                                    this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                                 }
                                 return;
                              }
                           }
                           else
                           {
                              _loc4_._-32(get ._-II,[get ._-82]);
                              if(_loc7_ && (_loc3_))
                              {
                              }
                           }
                        }
                        if(_loc6_ || (_loc3_))
                        {
                           _-Cq.text = "Level " + _loc5_.level + " complete!";
                           if(!(_loc7_ && (this)))
                           {
                              tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
                              if(_loc7_ && (this))
                              {
                              }
                              this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                              return;
                           }
                           tf_text2.text = "damage: " + _loc5_.damage + "%";
                           if(_loc7_)
                           {
                           }
                           this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                           return;
                        }
                        tf_text3.text = "level score: " + _loc5_.levelScore;
                        if(_loc6_)
                        {
                           tf_text4.text = "total score: " + _loc5_.totalScore;
                        }
                        this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                        return;
                     }
                     this._-L2 = [_loc3_,_loc4_];
                     _-Cq.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
                     tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     if(_loc6_ || (param2))
                     {
                        tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                        if(!(_loc7_ && (param1)))
                        {
                           if(param1.stats != null)
                           {
                              if(_loc6_)
                              {
                              }
                           }
                           this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                        }
                        return;
                     }
                     if(_loc6_ || (_loc3_))
                     {
                        _-Cq.text = "Level " + _loc5_.level + " complete!";
                        if(!(_loc7_ && (this)))
                        {
                           tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
                           if(_loc7_ && (this))
                           {
                           }
                           this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                           return;
                        }
                        tf_text2.text = "damage: " + _loc5_.damage + "%";
                        if(_loc7_)
                        {
                        }
                        this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                        return;
                     }
                     tf_text3.text = "level score: " + _loc5_.levelScore;
                     if(_loc6_)
                     {
                        tf_text4.text = "total score: " + _loc5_.totalScore;
                     }
                     this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                     return;
                  }
               }
            }
            _loc3_._-32(this._params.btn1Function,this._params.btn1Params);
            _loc4_ = new _-Ez(this.btn_2);
            _loc4_.addListener(MouseEvent.CLICK,this._-9P);
            if(!(_loc7_ && (param2)))
            {
               _-Ez._-9g(_loc4_);
               if(!_loc7_)
               {
                  if(this._params.btn2Function != null)
                  {
                     if(!_loc7_)
                     {
                        _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                        if(_loc7_ && (this))
                        {
                        }
                     }
                     tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     if(_loc6_ || (param2))
                     {
                        tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                        if(!(_loc7_ && (param1)))
                        {
                           if(param1.stats != null)
                           {
                              if(_loc6_)
                              {
                              }
                           }
                           this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                        }
                        return;
                     }
                  }
                  else
                  {
                     _loc4_._-32(get ._-II,[get ._-82]);
                     if(_loc7_ && (_loc3_))
                     {
                     }
                  }
               }
               if(_loc6_ || (_loc3_))
               {
                  _-Cq.text = "Level " + _loc5_.level + " complete!";
                  if(!(_loc7_ && (this)))
                  {
                     tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
                     if(_loc7_ && (this))
                     {
                     }
                     this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                     return;
                  }
                  tf_text2.text = "damage: " + _loc5_.damage + "%";
                  if(_loc7_)
                  {
                  }
                  this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                  return;
               }
               tf_text3.text = "level score: " + _loc5_.levelScore;
               if(_loc6_)
               {
                  tf_text4.text = "total score: " + _loc5_.totalScore;
               }
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               return;
            }
            this._-L2 = [_loc3_,_loc4_];
            _-Cq.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
            tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
            tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
            tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
            if(_loc6_ || (param2))
            {
               tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
               if(!(_loc7_ && (param1)))
               {
                  if(param1.stats != null)
                  {
                     if(_loc6_)
                     {
                     }
                  }
                  this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               }
               return;
            }
            if(_loc6_ || (_loc3_))
            {
               _-Cq.text = "Level " + _loc5_.level + " complete!";
               if(!(_loc7_ && (this)))
               {
                  tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
                  if(_loc7_ && (this))
                  {
                  }
                  this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                  return;
               }
               tf_text2.text = "damage: " + _loc5_.damage + "%";
               if(_loc7_)
               {
               }
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               return;
            }
            tf_text3.text = "level score: " + _loc5_.levelScore;
            if(_loc6_)
            {
               tf_text4.text = "total score: " + _loc5_.totalScore;
            }
            this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
            return;
         }
         this.alpha = 0;
         if(_loc6_ || (this))
         {
            this.visible = false;
         }
         if(!_loc7_)
         {
            _loc3_.addListener(MouseEvent.CLICK,this._-9P);
            if(_loc6_)
            {
               _-Ez._-9g(_loc3_);
               if(!_loc7_)
               {
                  if(this._params.btn1Function != null)
                  {
                     if(_loc7_ && (param2))
                     {
                     }
                  }
                  _loc4_ = new _-Ez(this.btn_2);
                  _loc4_.addListener(MouseEvent.CLICK,this._-9P);
                  if(!(_loc7_ && (param2)))
                  {
                     _-Ez._-9g(_loc4_);
                     if(!_loc7_)
                     {
                        if(this._params.btn2Function != null)
                        {
                           if(!_loc7_)
                           {
                              _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                              if(_loc7_ && (this))
                              {
                              }
                           }
                           tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                           tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                           tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                           if(_loc6_ || (param2))
                           {
                              tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                              if(!(_loc7_ && (param1)))
                              {
                                 if(param1.stats != null)
                                 {
                                    if(_loc6_)
                                    {
                                    }
                                 }
                                 this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                              }
                              return;
                           }
                        }
                        else
                        {
                           _loc4_._-32(get ._-II,[get ._-82]);
                           if(_loc7_ && (_loc3_))
                           {
                           }
                        }
                     }
                     if(_loc6_ || (_loc3_))
                     {
                        _-Cq.text = "Level " + _loc5_.level + " complete!";
                        if(!(_loc7_ && (this)))
                        {
                           tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
                           if(_loc7_ && (this))
                           {
                           }
                           this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                           return;
                        }
                        tf_text2.text = "damage: " + _loc5_.damage + "%";
                        if(_loc7_)
                        {
                        }
                        this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                        return;
                     }
                     tf_text3.text = "level score: " + _loc5_.levelScore;
                     if(_loc6_)
                     {
                        tf_text4.text = "total score: " + _loc5_.totalScore;
                     }
                     this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                     return;
                  }
                  this._-L2 = [_loc3_,_loc4_];
                  _-Cq.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
                  tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                  tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                  tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                  if(_loc6_ || (param2))
                  {
                     tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     if(!(_loc7_ && (param1)))
                     {
                        if(param1.stats != null)
                        {
                           if(_loc6_)
                           {
                           }
                        }
                        this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                     }
                     return;
                  }
                  if(_loc6_ || (_loc3_))
                  {
                     _-Cq.text = "Level " + _loc5_.level + " complete!";
                     if(!(_loc7_ && (this)))
                     {
                        tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
                        if(_loc7_ && (this))
                        {
                        }
                        this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                        return;
                     }
                     tf_text2.text = "damage: " + _loc5_.damage + "%";
                     if(_loc7_)
                     {
                     }
                     this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                     return;
                  }
                  tf_text3.text = "level score: " + _loc5_.levelScore;
                  if(_loc6_)
                  {
                     tf_text4.text = "total score: " + _loc5_.totalScore;
                  }
                  this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                  return;
               }
            }
         }
         _loc3_._-32(this._params.btn1Function,this._params.btn1Params);
         var _loc4_:_-Ez = new _-Ez(this.btn_2);
         _loc4_.addListener(MouseEvent.CLICK,this._-9P);
         if(!(_loc7_ && (param2)))
         {
            _-Ez._-9g(_loc4_);
            if(!_loc7_)
            {
               if(this._params.btn2Function != null)
               {
                  if(!_loc7_)
                  {
                     _loc4_._-32(this._params.btn2Function,this._params.btn2Params);
                     if(_loc7_ && (this))
                     {
                     }
                  }
                  tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                  tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                  tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                  if(_loc6_ || (param2))
                  {
                     tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
                     if(!(_loc7_ && (param1)))
                     {
                        if(param1.stats != null)
                        {
                           if(_loc6_)
                           {
                           }
                        }
                        this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                     }
                     return;
                  }
               }
               else
               {
                  _loc4_._-32(get ._-II,[get ._-82]);
                  if(_loc7_ && (_loc3_))
                  {
                  }
               }
            }
            if(_loc6_ || (_loc3_))
            {
               _-Cq.text = "Level " + _loc5_.level + " complete!";
               if(!(_loc7_ && (this)))
               {
                  tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
                  if(_loc7_ && (this))
                  {
                  }
                  this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
                  return;
               }
               tf_text2.text = "damage: " + _loc5_.damage + "%";
               if(_loc7_)
               {
               }
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               return;
            }
            tf_text3.text = "level score: " + _loc5_.levelScore;
            if(_loc6_)
            {
               tf_text4.text = "total score: " + _loc5_.totalScore;
            }
            this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
            return;
         }
         this._-L2 = [_loc3_,_loc4_];
         _-Cq.defaultTextFormat = _-IL.FORMAT_CONCV2C_30_CENTER;
         tf_text1.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
         tf_text2.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
         tf_text3.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
         if(_loc6_ || (param2))
         {
            tf_text4.defaultTextFormat = _-IL.FORMAT_CONCV2C_20_CENTER;
            if(!(_loc7_ && (param1)))
            {
               if(param1.stats != null)
               {
                  if(_loc6_)
                  {
                  }
               }
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
            }
            return;
         }
         if(_loc6_ || (_loc3_))
         {
            _-Cq.text = "Level " + _loc5_.level + " complete!";
            if(!(_loc7_ && (this)))
            {
               tf_text1.text = "time: " + _-60._-42(_loc5_.time / 1000);
               if(_loc7_ && (this))
               {
               }
               this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
               return;
            }
            tf_text2.text = "damage: " + _loc5_.damage + "%";
            if(_loc7_)
            {
            }
            this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
            return;
         }
         tf_text3.text = "level score: " + _loc5_.levelScore;
         if(_loc6_)
         {
            tf_text4.text = "total score: " + _loc5_.totalScore;
         }
         this._-3t._-8d.stage.addEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
      }
      
      private var _-L2:Array;
      
      private var _params:Object;
      
      private var _-3t:_-Cf;
      
      private function _-9P(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(param1.target != this.btn_2)
            {
               if(_loc3_)
               {
                  this._-3t._-7v(this);
               }
            }
         }
      }
      
      private function _-Aa(param1:KeyboardEvent) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            if(_loc2_ && (param1))
            {
            }
            if(param1.keyCode == 13)
            {
               if(_loc3_ || (this))
               {
                  this._-3t._-7v(this);
                  if(_loc2_ && (param1))
                  {
                  }
                  _-E7._-6Y();
               }
            }
            return;
         }
         (this._params.btn1Function as Function).apply(null,this._params.btn1Params);
         if(_loc3_ || (param1))
         {
            _-E7._-6Y();
         }
      }
      
      public function disassemble() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:_-Ez = null;
         if(_loc5_ || (_loc2_))
         {
            if(this.parent != null)
            {
               if(_loc5_)
               {
                  this.parent.removeChild(this);
               }
            }
         }
         for each(_loc1_ in this._-L2)
         {
            if(!(_loc4_ && (this)))
            {
               _loc1_.disassemble();
            }
         }
         if(_loc5_ || (_loc3_))
         {
            this._-3t._-8d.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this._-Aa);
         }
      }
   }
}
