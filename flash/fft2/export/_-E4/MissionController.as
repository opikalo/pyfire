package _-E4
{
   import game._-AB;
   import fla.misc.mc_parkingPointer5;
   import each ._-AK;
   import com.junkbyte.console.Cc;
   import flash.display.MovieClip;
   import com.greensock.TweenLite;
   import each ._-60;
   
   public class MissionController extends Object
   {
      
      public function MissionController(param1:Object = null)
      {
         var _loc3_:* = true;
         if(_loc2_)
         {
         }
         this._-01 = {"levelList":[{
            "x":1927,
            "rotation":80,
            "y":440,
            "type":2,
            "number":0
         }]};
         if(_loc3_ || (param1))
         {
            this._-0v = new mc_parkingPointer5();
            super();
            this.world = _-AB.instance;
            if(param1 != null)
            {
               if(_loc2_ && (param1))
               {
               }
               return;
            }
            this.levelList = this._-01.levelList;
            return;
         }
         this._-01 = param1;
         this.levelList = this._-01.levelList;
      }
      
      public var world:_-AB;
      
      public var _-01:Object;
      
      public var levelList:Array;
      
      public var _-AT:Array;
      
      public var _-Dx:_-BX;
      
      public var levelIndex:int = 0;
      
      public var _-F1:int = 0;
      
      public var _-0v:mc_parkingPointer5;
      
      public function initLevel(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function initMission(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(_loc3_)
         {
            Cc.logch("MissionController","initMission",param1);
            if(_loc4_ && (_loc2_))
            {
            }
            _loc2_ = this._-AT[this._-F1];
            Cc.logch("MissionController","missionInfo.type",_loc2_.type);
            if(_loc3_ || (param1))
            {
               this.world.changeCar(_loc2_.type);
               this._-Dx = new _-BX(this.world.playerCarList[_loc2_.type],_loc2_);
               if(!_loc4_)
               {
                  this._-0v.x = _loc2_.x;
                  if(!_loc4_)
                  {
                     if(_loc4_)
                     {
                     }
                     this._-0v.rotation = _loc2_.rotation;
                     this._-0v.gotoAndStop(_loc2_.type + 1);
                  }
               }
               this._-0v.y = _loc2_.y;
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     this._-0v.rotation = _loc2_.rotation;
                  }
                  this._-0v.gotoAndStop(_loc2_.type + 1);
               }
            }
            this.world.bottomLayer.addChild(this._-0v);
            return;
         }
         this._-F1 = param1;
         var _loc2_:Object = this._-AT[this._-F1];
         Cc.logch("MissionController","missionInfo.type",_loc2_.type);
         if(_loc3_ || (param1))
         {
            this.world.changeCar(_loc2_.type);
            this._-Dx = new _-BX(this.world.playerCarList[_loc2_.type],_loc2_);
            if(!_loc4_)
            {
               this._-0v.x = _loc2_.x;
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                  }
                  this._-0v.rotation = _loc2_.rotation;
                  this._-0v.gotoAndStop(_loc2_.type + 1);
               }
            }
            this._-0v.y = _loc2_.y;
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  this._-0v.rotation = _loc2_.rotation;
               }
               this._-0v.gotoAndStop(_loc2_.type + 1);
            }
         }
         this.world.bottomLayer.addChild(this._-0v);
      }
      
      public function update() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function disassemble() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(_loc1_)
         {
            this.world = null;
         }
      }
   }
}
