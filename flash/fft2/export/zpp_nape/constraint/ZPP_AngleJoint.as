package zpp_nape.constraint
{
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.util.ZPP_Flags;
   import flash._-2v;
   import nape.constraint.AngleJoint;
   import zpp_nape.space.ZPP_Component;
   import nape.util.Debug;
   import nape.phys.Body;
   import zpp_nape.space.ZPP_Space;
   import nape.space.Space;
   import nape.geom.Vec2;
   import nape.constraint.Constraint;
   import nape.geom.Vec3;
   
   public class ZPP_AngleJoint extends ZPP_Constraint
   {
      
      public function ZPP_AngleJoint()
      {
         if(_-2v._-7E)
         {
            return;
         }
         super();
         ratio = 1;
         jAcc = 0;
         jMax = 1.79E308;
         stepped = false;
      }
      
      override public function warmStart() : void
      {
         if(!slack)
         {
            b1.angvel = b1.angvel - scale * b1.iinertia * jAcc;
            b2.angvel = b2.angvel + ratio * scale * b2.iinertia * jAcc;
         }
         pjAcc = jAcc;
      }
      
      override public function wake_connected() : void
      {
         if(b1 != null)
         {
            false;
         }
         if(false)
         {
            b1.wake();
         }
         if(b2 != null)
         {
            false;
         }
         if(false)
         {
            b2.wake();
         }
      }
      
      override public function validate() : void
      {
         if(b1 != null)
         {
            true;
         }
         if(true)
         {
            _-2v._-G9 = new Error();
            throw "Error: AngleJoint cannot be simulated null bodies";
         }
         else if(b1 == b2)
         {
            _-2v._-G9 = new Error();
            throw "Error: AngleJoint cannot be simulated with body1 == body2";
         }
         else
         {
            if(b1.space == space)
            {
               true;
            }
            if(true)
            {
               _-2v._-G9 = new Error();
               throw "Error: Constraints must have each body within the same space to which the constraint has been assigned";
            }
            else if(jointMin > jointMax)
            {
               _-2v._-G9 = new Error();
               throw "Error: AngleJoint must have jointMin <= jointMax";
            }
            else
            {
               if(b1.type != ZPP_Flags.id_BodyType_DYNAMIC)
               {
                  false;
               }
               if(false)
               {
                  _-2v._-G9 = new Error();
                  throw "Error: Constraints cannot have both bodies non-dynamic";
               }
               else
               {
                  return;
               }
            }
            
         }
         
      }
      
      public var stepped:Boolean;
      
      public var slack:Boolean;
      
      public var scale:Number;
      
      public var ratio:Number;
      
      override public function preStep(param1:Number) : Boolean
      {
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(pre_dt == -1.0)
         {
            pre_dt = param1;
         }
         var _loc2_:Number = param1 / pre_dt;
         pre_dt = param1;
         stepped = true;
         equal = jointMin == jointMax;
         _loc4_ = ratio * b2.rot - b1.rot;
         if(equal)
         {
            _loc4_ = _loc4_ - jointMax;
            slack = false;
            scale = 1.0;
         }
         else if(_loc4_ < jointMin)
         {
            _loc4_ = jointMin - _loc4_;
            scale = -1.0;
            slack = false;
         }
         else if(_loc4_ > jointMax)
         {
            _loc4_ = _loc4_ - jointMax;
            scale = 1.0;
            slack = false;
         }
         else
         {
            scale = 0.0;
            _loc4_ = 0;
            slack = true;
         }
         
         
         var _loc3_:Number = _loc4_;
         if(!slack)
         {
            kMass = b1.sinertia + ratio * ratio * b2.sinertia;
            if(kMass != 0)
            {
               kMass = 1 / kMass;
            }
            else
            {
               jAcc = 0;
            }
            if(!stiff)
            {
               if(breakUnderError)
               {
                  false;
               }
               if(false)
               {
                  return true;
               }
               _loc5_ = 2 * Math.PI * frequency;
               gamma = 1 / (_loc5_ * param1 * (2 * damping + _loc5_ * param1));
               _loc6_ = 1 / (1 + gamma);
               _loc4_ = _loc5_ * _loc5_ * gamma;
               gamma = gamma * _loc6_;
               kMass = kMass * _loc6_;
               bias = -_loc3_ * param1 * _loc4_;
               if(bias < -maxError)
               {
                  bias = -maxError;
               }
               else if(bias > maxError)
               {
                  bias = maxError;
               }
               
            }
            else
            {
               bias = 0;
               gamma = 0;
            }
            jAcc = jAcc * _loc2_;
            jMax = maxForce * param1;
         }
         return false;
      }
      
      public var pjAcc:Number;
      
      override public function pair_exists(param1:int, param2:int) : Boolean
      {
         if(b1.id == param1)
         {
            false;
         }
         if(!false)
         {
            true;
            if(b1.id == param2)
            {
               false;
            }
         }
         return true;
      }
      
      public var outer_zn:AngleJoint;
      
      public var kMass:Number;
      
      public var jointMin:Number;
      
      public var jointMax:Number;
      
      public var jMax:Number;
      
      public var jAcc:Number;
      
      override public function inactiveBodies() : void
      {
         if(b1 != null)
         {
            b1.constraints.remove(this);
         }
         if(b2 != b1)
         {
            if(b2 != null)
            {
               b2.constraints.remove(this);
            }
         }
      }
      
      public var gamma:Number;
      
      override public function forest() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var equal:Boolean;
      
      override public function draw(param1:Debug) : void
      {
         var _loc5_:* = null as Body;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc2_:AngleJoint = outer_zn;
         var _loc3_:* = 10;
         var _loc4_:Number = 5 / Math.PI / 2;
         _loc5_ = _loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer;
         if((_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer) != (_loc5_.zpp_inner.space == null?null:_loc5_.zpp_inner.space.outer).zpp_inner.__static)
         {
            _loc6_ = _loc2_.zpp_inner_zn.ratio * (_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot - jointMin;
            _loc7_ = _loc2_.zpp_inner_zn.ratio * (_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot - jointMax;
            if(_loc6_ > _loc7_)
            {
               _loc8_ = _loc6_;
               _loc6_ = _loc7_;
               _loc7_ = _loc8_;
            }
            if((_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot > _loc6_)
            {
               _loc9_ = (_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot;
               _loc10_ = _loc7_;
               _loc8_ = _loc9_ < _loc10_?_loc9_:_loc10_;
               _loc5_ = _loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer;
               if(_loc5_.zpp_inner.wrap_pos == null)
               {
                  _loc5_.zpp_inner.setupPosition();
               }
               ZPP_AngleDraw.drawSpiral(param1,_loc5_.zpp_inner.wrap_pos,_loc6_,_loc8_,_loc3_ + (_loc6_ - _loc6_) * _loc4_,_loc3_ + (_loc8_ - _loc6_) * _loc4_,16776960);
            }
            else
            {
               if(!stiff)
               {
                  false;
               }
               if(false)
               {
                  _loc5_ = _loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer;
                  if(_loc5_.zpp_inner.wrap_pos == null)
                  {
                     _loc5_.zpp_inner.setupPosition();
                  }
                  ZPP_AngleDraw.drawSpiralSpring(param1,_loc5_.zpp_inner.wrap_pos,(_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot,_loc6_,_loc3_ + ((_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot - _loc6_) * _loc4_,_loc3_ + (_loc6_ - _loc6_) * _loc4_,16776960);
               }
            }
            if((_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot < _loc7_)
            {
               _loc9_ = (_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot;
               _loc10_ = _loc6_;
               _loc8_ = _loc9_ > _loc10_?_loc9_:_loc10_;
               _loc5_ = _loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer;
               if(_loc5_.zpp_inner.wrap_pos == null)
               {
                  _loc5_.zpp_inner.setupPosition();
               }
               ZPP_AngleDraw.drawSpiral(param1,_loc5_.zpp_inner.wrap_pos,_loc8_,_loc7_,_loc3_ + (_loc8_ - _loc6_) * _loc4_,_loc3_ + (_loc7_ - _loc6_) * _loc4_,65535);
            }
            else
            {
               if(!stiff)
               {
                  false;
               }
               if(false)
               {
                  _loc5_ = _loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer;
                  if(_loc5_.zpp_inner.wrap_pos == null)
                  {
                     _loc5_.zpp_inner.setupPosition();
                  }
                  ZPP_AngleDraw.drawSpiralSpring(param1,_loc5_.zpp_inner.wrap_pos,(_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot,_loc7_,_loc3_ + ((_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot - _loc6_) * _loc4_,_loc3_ + (_loc7_ - _loc6_) * _loc4_,65535);
               }
            }
            _loc5_ = _loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer;
            if(_loc5_.zpp_inner.wrap_pos == null)
            {
               _loc5_.zpp_inner.setupPosition();
            }
            ZPP_AngleDraw.indicator(param1,_loc5_.zpp_inner.wrap_pos,(_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot,_loc3_ + ((_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot - _loc6_) * _loc4_,255);
         }
         _loc5_ = _loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer;
         if((_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer) != (_loc5_.zpp_inner.space == null?null:_loc5_.zpp_inner.space.outer).zpp_inner.__static)
         {
            _loc6_ = (jointMin + (_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot) / _loc2_.zpp_inner_zn.ratio;
            _loc7_ = (jointMax + (_loc2_.zpp_inner_zn.b1 == null?null:_loc2_.zpp_inner_zn.b1.outer).zpp_inner.rot) / _loc2_.zpp_inner_zn.ratio;
            if(_loc6_ > _loc7_)
            {
               _loc8_ = _loc6_;
               _loc6_ = _loc7_;
               _loc7_ = _loc8_;
            }
            if((_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot > _loc6_)
            {
               _loc9_ = (_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot;
               _loc10_ = _loc7_;
               _loc8_ = _loc9_ < _loc10_?_loc9_:_loc10_;
               _loc5_ = _loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer;
               if(_loc5_.zpp_inner.wrap_pos == null)
               {
                  _loc5_.zpp_inner.setupPosition();
               }
               ZPP_AngleDraw.drawSpiral(param1,_loc5_.zpp_inner.wrap_pos,_loc6_,_loc8_,_loc3_ + (_loc6_ - _loc6_) * _loc4_,_loc3_ + (_loc8_ - _loc6_) * _loc4_,16776960);
            }
            else
            {
               if(!stiff)
               {
                  false;
               }
               if(false)
               {
                  _loc5_ = _loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer;
                  if(_loc5_.zpp_inner.wrap_pos == null)
                  {
                     _loc5_.zpp_inner.setupPosition();
                  }
                  ZPP_AngleDraw.drawSpiralSpring(param1,_loc5_.zpp_inner.wrap_pos,(_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot,_loc6_,_loc3_ + ((_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot - _loc6_) * _loc4_,_loc3_ + (_loc6_ - _loc6_) * _loc4_,16776960);
               }
            }
            if((_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot < _loc7_)
            {
               _loc9_ = (_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot;
               _loc10_ = _loc6_;
               _loc8_ = _loc9_ > _loc10_?_loc9_:_loc10_;
               _loc5_ = _loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer;
               if(_loc5_.zpp_inner.wrap_pos == null)
               {
                  _loc5_.zpp_inner.setupPosition();
               }
               ZPP_AngleDraw.drawSpiral(param1,_loc5_.zpp_inner.wrap_pos,_loc8_,_loc7_,_loc3_ + (_loc8_ - _loc6_) * _loc4_,_loc3_ + (_loc7_ - _loc6_) * _loc4_,65535);
            }
            else
            {
               if(!stiff)
               {
                  false;
               }
               if(false)
               {
                  _loc5_ = _loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer;
                  if(_loc5_.zpp_inner.wrap_pos == null)
                  {
                     _loc5_.zpp_inner.setupPosition();
                  }
                  ZPP_AngleDraw.drawSpiralSpring(param1,_loc5_.zpp_inner.wrap_pos,(_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot,_loc7_,_loc3_ + ((_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot - _loc6_) * _loc4_,_loc3_ + (_loc7_ - _loc6_) * _loc4_,65535);
               }
            }
            _loc5_ = _loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer;
            if(_loc5_.zpp_inner.wrap_pos == null)
            {
               _loc5_.zpp_inner.setupPosition();
            }
            ZPP_AngleDraw.indicator(param1,_loc5_.zpp_inner.wrap_pos,(_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot,_loc3_ + ((_loc2_.zpp_inner_zn.b2 == null?null:_loc2_.zpp_inner_zn.b2.outer).zpp_inner.rot - _loc6_) * _loc4_,16711680);
         }
      }
      
      override public function destroy() : void
      {
         b1.constraints.remove(this);
         if(b2 != b1)
         {
            b2.constraints.remove(this);
         }
      }
      
      override public function copy(param1:Array = undefined, param2:Array = undefined) : Constraint
      {
         var _loc4_:* = null as Body;
         var _loc5_:* = 0;
         var _loc6_:* = null as ZPP_CopyHelper;
         var ret:AngleJoint = new AngleJoint(null,null,jointMin,jointMax);
         var _loc3_:Number = ratio;
         ret.zpp_inner.immutable_midstep("AngleJoint::ratio");
         if(ret.zpp_inner_zn.ratio != _loc3_)
         {
            ret.zpp_inner_zn.ratio = _loc3_;
            ret.zpp_inner.wake();
         }
         ret.zpp_inner_zn.ratio;
         copyto(ret);
         if(param1 != null)
         {
            false;
         }
         if(false)
         {
            _loc4_ = null;
            _loc5_ = 0;
            while(_loc5_ < (param1.length))
            {
               _loc6_ = param1[_loc5_];
               _loc5_++;
               if(_loc6_.id == b1.id)
               {
                  _loc4_ = _loc6_.bc;
                  break;
               }
            }
            if(_loc4_ != null)
            {
               ret.zpp_inner_zn.b1 = _loc4_.zpp_inner;
            }
            else
            {
               param2.push(ZPP_CopyHelper.todo(b1.id,function(param1:Body):void
               {
                  ret.zpp_inner_zn.b1 = param1.zpp_inner;
               }));
            }
         }
         if(param1 != null)
         {
            false;
         }
         if(false)
         {
            _loc4_ = null;
            _loc5_ = 0;
            while(_loc5_ < (param1.length))
            {
               _loc6_ = param1[_loc5_];
               _loc5_++;
               if(_loc6_.id == b2.id)
               {
                  _loc4_ = _loc6_.bc;
                  break;
               }
            }
            if(_loc4_ != null)
            {
               ret.zpp_inner_zn.b2 = _loc4_.zpp_inner;
            }
            else
            {
               param2.push(ZPP_CopyHelper.todo(b2.id,function(param1:Body):void
               {
                  ret.zpp_inner_zn.b2 = param1.zpp_inner;
               }));
            }
         }
         return ret;
      }
      
      override public function clearcache() : void
      {
         jAcc = 0;
         pjAcc = 0;
         pre_dt = -1.0;
      }
      
      public function bodyImpulse(param1:ZPP_Body) : Vec3
      {
         if(stepped)
         {
            if(param1 == b1)
            {
               return Vec3.get(0,0,-scale * (jAcc + pjAcc));
            }
            return Vec3.get(0,0,ratio * scale * (jAcc + pjAcc));
         }
         return Vec3.get(0,0,0);
      }
      
      public var bias:Number;
      
      public var b2:ZPP_Body;
      
      public var b1:ZPP_Body;
      
      override public function applyImpulseVel() : Boolean
      {
         if(slack)
         {
            return false;
         }
         var _loc1_:Number = scale * (ratio * (b2.angvel + b2.kinangvel) - b1.angvel - b1.kinangvel);
         var _loc2_:Number = kMass * (bias - _loc1_) - jAcc * gamma;
         var _loc3_:Number = jAcc;
         jAcc = jAcc + _loc2_;
         if(breakUnderForce)
         {
            if(jAcc <= jMax)
            {
               true;
            }
            if(true)
            {
               return true;
            }
            if(!equal)
            {
               false;
            }
            if(false)
            {
               jAcc = 0;
            }
         }
         else if(!stiff)
         {
            if(equal)
            {
               if(jAcc < -jMax)
               {
                  jAcc = -jMax;
               }
               else if(jAcc > jMax)
               {
                  jAcc = jMax;
               }
               
            }
            else if(jAcc > 0)
            {
               jAcc = 0;
            }
            else if(jAcc < -jMax)
            {
               jAcc = -jMax;
            }
            
            
         }
         else
         {
            if(!equal)
            {
               false;
            }
            if(false)
            {
               jAcc = 0;
            }
         }
         
         _loc2_ = jAcc - _loc3_;
         b1.angvel = b1.angvel - scale * b1.iinertia * _loc2_;
         b2.angvel = b2.angvel + ratio * scale * b2.iinertia * _loc2_;
         return false;
      }
      
      override public function applyImpulsePos() : Boolean
      {
         var _loc2_:* = NaN;
         var _loc3_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         _loc4_ = ratio * b2.rot - b1.rot;
         if(equal)
         {
            _loc4_ = _loc4_ - jointMax;
            _loc3_ = false;
            scale = 1.0;
         }
         else if(_loc4_ < jointMin)
         {
            _loc4_ = jointMin - _loc4_;
            scale = -1.0;
            _loc3_ = false;
         }
         else if(_loc4_ > jointMax)
         {
            _loc4_ = _loc4_ - jointMax;
            scale = 1.0;
            _loc3_ = false;
         }
         else
         {
            scale = 0.0;
            _loc4_ = 0;
            _loc3_ = true;
         }
         
         
         var _loc1_:Number = _loc4_;
         if(!_loc3_)
         {
            if(breakUnderError)
            {
               false;
            }
            if(false)
            {
               return true;
            }
            _loc1_ = _loc1_ * 0.5;
            _loc2_ = -_loc1_ * kMass;
            if(!equal)
            {
               true;
            }
            if(true)
            {
               _loc5_ = b1;
               _loc4_ = -scale * _loc2_ * b1.iinertia;
               _loc5_.rot = _loc5_.rot + _loc4_;
               if(_loc4_ * _loc4_ > 1.0E-4)
               {
                  _loc5_.axisx = Math.sin(_loc5_.rot);
                  _loc5_.axisy = Math.cos(_loc5_.rot);
                  null;
               }
               else
               {
                  _loc6_ = _loc4_ * _loc4_;
                  _loc7_ = 1 - 0.5 * _loc6_;
                  _loc8_ = 1 - _loc6_ * _loc6_ / 8;
                  _loc9_ = (_loc7_ * _loc5_.axisx + _loc4_ * _loc5_.axisy) * _loc8_;
                  _loc5_.axisy = (_loc7_ * _loc5_.axisy - _loc4_ * _loc5_.axisx) * _loc8_;
                  _loc5_.axisx = _loc9_;
               }
               _loc5_ = b2;
               _loc4_ = ratio * scale * _loc2_ * b2.iinertia;
               _loc5_.rot = _loc5_.rot + _loc4_;
               if(_loc4_ * _loc4_ > 1.0E-4)
               {
                  _loc5_.axisx = Math.sin(_loc5_.rot);
                  _loc5_.axisy = Math.cos(_loc5_.rot);
                  null;
               }
               else
               {
                  _loc6_ = _loc4_ * _loc4_;
                  _loc7_ = 1 - 0.5 * _loc6_;
                  _loc8_ = 1 - _loc6_ * _loc6_ / 8;
                  _loc9_ = (_loc7_ * _loc5_.axisx + _loc4_ * _loc5_.axisy) * _loc8_;
                  _loc5_.axisy = (_loc7_ * _loc5_.axisy - _loc4_ * _loc5_.axisx) * _loc8_;
                  _loc5_.axisx = _loc9_;
               }
            }
         }
         return false;
      }
      
      override public function activeBodies() : void
      {
         if(b1 != null)
         {
            b1.constraints.add(this);
         }
         if(b2 != b1)
         {
            if(b2 != null)
            {
               b2.constraints.add(this);
            }
         }
      }
   }
}
