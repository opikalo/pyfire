package _-E4
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import each ._-JM;
   import nape.phys.Body;
   import nape.phys.BodyType;
   import nape.callbacks.CbType;
   import nape.dynamics.InteractionFilter;
   import nape.phys.Material;
   import _-D2._-9J;
   import _-D2._-B-;
   import _-Q._-1A;
   import flash.display.DisplayObjectContainer;
   import game._-AB;
   import nape.space.Space;
   
   public class _-3m extends Object
   {
      
      public function _-3m()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public var _-y:Array;
      
      public var _-B6:int = 4;
      
      private var _-DD:int = 0;
      
      public var _-4u:Sprite;
      
      public function init(param1:String = "") : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sprite = null;
         _loc2_ = this._-4u["topLayer"];
         if(_loc5_ || (this))
         {
            if(_loc2_ != null)
            {
               if(_loc5_ || (this))
               {
               }
               if(_loc5_)
               {
                  this.world.topLayer.addChild(_loc3_);
               }
            }
            _loc2_ = this._-4u["bottomLayer"];
            if(!_loc4_)
            {
               if(_loc2_ != null)
               {
                  if(!_loc4_)
                  {
                     _loc2_.parent.removeChild(_loc2_);
                     if(_loc5_)
                     {
                     }
                  }
                  return;
               }
               this.initMode(param1);
               return;
            }
            if(_loc5_)
            {
               this.world.bottomLayer.addChild(_loc3_);
            }
            this.initMode(param1);
            return;
         }
         _loc2_.parent.removeChild(_loc2_);
         if(_loc5_)
         {
            this.world.topLayer.addChild(_loc3_);
         }
         _loc2_ = this._-4u["bottomLayer"];
         if(!_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  _loc2_.parent.removeChild(_loc2_);
                  if(_loc5_)
                  {
                  }
               }
               return;
            }
            this.initMode(param1);
            return;
         }
         if(_loc5_)
         {
            this.world.bottomLayer.addChild(_loc3_);
         }
         this.initMode(param1);
      }
      
      public function initMode(param1:String) : void
      {
      }
      
      public function initPlayerCars() : void
      {
      }
      
      public function _-0H(param1:String, param2:BodyType = null, param3:CbType = null, param4:InteractionFilter = null, param5:Material = null) : Body
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-5r(param1:String) : void
      {
         var _loc4_:* = true;
         var _loc2_:Body = _-9J._-64(param1.split(" "),_-B-._-Cc,Material.sand());
         if(!(_loc3_ && (this)))
         {
            _loc2_.space = this.world.space;
            if(!_loc3_)
            {
               _loc2_.type = BodyType.STATIC;
               if(_loc3_)
               {
               }
            }
            return;
         }
         _loc2_.cbTypes.add(_-B-._-K);
      }
      
      public function addCar(param1:Object) : _-1A
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-Ht(param1:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function _-FM(param1:DisplayObjectContainer) : Array
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = [];
         while(true)
         {
            while(true)
            {
               if(_loc3_ < param1.numChildren)
               {
                  _loc2_.push(param1.getChildAt(_loc3_));
                  if(!(_loc5_ && (_loc2_)))
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && (param1)))
                        {
                           _loc3_++;
                           if(_loc4_ || (_loc3_))
                           {
                              break;
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
                     break;
                  }
               }
               return _loc2_;
            }
         }
      }
      
      public function update() : void
      {
      }
      
      public function disassemble() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_loc2_)
         {
            this._-4u = null;
            if(_loc2_)
            {
            }
            return;
         }
         this.world._-46(this);
      }
      
      public function if() : Array
      {
         return this._-C4;
      }
      
      public function get world() : _-AB
      {
         return _-AB.instance;
      }
      
      public function get space() : Space
      {
         return _-AB.instance.space;
      }
      
      public function get _-C4() : Array
      {
         return this._-y;
      }
      
      public function set _-C4(param1:Array) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(_loc2_)
         {
            this._-y = param1;
         }
      }
      
      public function get _-EJ() : int
      {
         return this._-B6;
      }
      
      public function get _-5J() : int
      {
         return this._-DD;
      }
      
      public function set _-5J(param1:int) : void
      {
         var _loc3_:* = true;
         if(!_loc2_)
         {
            this._-DD = param1;
         }
      }
   }
}
