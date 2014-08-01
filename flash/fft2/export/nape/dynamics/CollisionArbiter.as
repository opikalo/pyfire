package nape.dynamics
{
   import nape.geom.Vec3;
   import nape.phys.Body;
   import zpp_nape.geom.ZPP_Vec3;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_Vec2;
   import flash._-2v;
   
   public class CollisionArbiter extends Arbiter
   {
      
      public function CollisionArbiter()
      {
         if(_-2v._-7E)
         {
            return;
         }
         super();
      }
      
      override public function totalImpulse(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc7_:* = null as Vec3;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as ZPP_Vec3;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:ZPP_ColArbiter = zpp_inner.colarb;
         if(param2)
         {
            true;
         }
         if(true)
         {
            _loc7_ = _loc6_.oc1.wrapper().totalImpulse(param1);
            _loc8_ = 1;
            _loc9_ = _loc8_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_ = _loc3_ + _loc7_.zpp_inner.x * _loc9_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc4_ = _loc4_ + _loc7_.zpp_inner.y * _loc9_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc5_ = _loc5_ + _loc7_.zpp_inner.z * _loc8_;
            _loc7_.dispose();
         }
         if(_loc6_.hc2)
         {
            if(param2)
            {
               true;
            }
            if(true)
            {
               _loc7_ = _loc6_.oc2.wrapper().totalImpulse(param1);
               _loc8_ = 1;
               _loc9_ = _loc8_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc3_ = _loc3_ + _loc7_.zpp_inner.x * _loc9_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc4_ = _loc4_ + _loc7_.zpp_inner.y * _loc9_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc5_ = _loc5_ + _loc7_.zpp_inner.z * _loc8_;
               _loc7_.dispose();
            }
         }
         return Vec3.get(_loc3_,_loc4_,_loc5_);
      }
      
      public function tangentImpulse(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc7_:* = null as Vec3;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as ZPP_Vec3;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:ZPP_ColArbiter = zpp_inner.colarb;
         if(param2)
         {
            true;
         }
         if(true)
         {
            _loc7_ = _loc6_.oc1.wrapper().tangentImpulse(param1);
            _loc8_ = 1;
            _loc9_ = _loc8_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_ = _loc3_ + _loc7_.zpp_inner.x * _loc9_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc4_ = _loc4_ + _loc7_.zpp_inner.y * _loc9_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc5_ = _loc5_ + _loc7_.zpp_inner.z * _loc8_;
            _loc7_.dispose();
         }
         if(_loc6_.hc2)
         {
            if(param2)
            {
               true;
            }
            if(true)
            {
               _loc7_ = _loc6_.oc2.wrapper().tangentImpulse(param1);
               _loc8_ = 1;
               _loc9_ = _loc8_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc3_ = _loc3_ + _loc7_.zpp_inner.x * _loc9_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc4_ = _loc4_ + _loc7_.zpp_inner.y * _loc9_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc5_ = _loc5_ + _loc7_.zpp_inner.z * _loc8_;
               _loc7_.dispose();
            }
         }
         return Vec3.get(_loc3_,_loc4_,_loc5_);
      }
      
      public function set radius(param1:Number) : Number
      {
         zpp_inner.colarb.radius = param1;
         return zpp_inner.colarb.radius;
      }
      
      public function set normal(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         if(zpp_inner.colarb.wrap_normal == null)
         {
            zpp_inner.colarb.getnormal();
         }
         var _loc2_:Vec2 = zpp_inner.colarb.wrap_normal;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc4_:Number = param1.zpp_inner.x;
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         var _loc6_:Number = param1.zpp_inner.y;
         _loc5_ = _loc2_.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         if(_loc2_.zpp_inner.x == _loc4_)
         {
            false;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
         }
         if(!false)
         {
            _loc2_.zpp_inner.x = _loc4_;
            _loc2_.zpp_inner.y = _loc6_;
            _loc5_ = _loc2_.zpp_inner;
            if(_loc5_._invalidate != null)
            {
               _loc5_._invalidate(_loc5_);
            }
         }
         var _loc3_:Vec2 = _loc2_;
         if(param1.zpp_inner.weak)
         {
            param1.dispose();
            true;
         }
         else
         {
            false;
         }
         _loc3_;
         if(zpp_inner.colarb.wrap_normal == null)
         {
            zpp_inner.colarb.getnormal();
         }
         return zpp_inner.colarb.wrap_normal;
      }
      
      public function rollingImpulse(param1:Body = undefined, param2:Boolean = false) : Number
      {
         var _loc3_:ZPP_ColArbiter = zpp_inner.colarb;
         if(param2)
         {
            true;
         }
         if(true)
         {
            return _loc3_.oc1.wrapper().rollingImpulse(param1);
         }
         return 0.0;
      }
      
      public function normalImpulse(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc7_:* = null as Vec3;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null as ZPP_Vec3;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:ZPP_ColArbiter = zpp_inner.colarb;
         if(param2)
         {
            true;
         }
         if(true)
         {
            _loc7_ = _loc6_.oc1.wrapper().normalImpulse(param1);
            _loc8_ = 1;
            _loc9_ = _loc8_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_ = _loc3_ + _loc7_.zpp_inner.x * _loc9_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc4_ = _loc4_ + _loc7_.zpp_inner.y * _loc9_;
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc5_ = _loc5_ + _loc7_.zpp_inner.z * _loc8_;
            _loc7_.dispose();
         }
         if(_loc6_.hc2)
         {
            if(param2)
            {
               true;
            }
            if(true)
            {
               _loc7_ = _loc6_.oc2.wrapper().normalImpulse(param1);
               _loc8_ = 1;
               _loc9_ = _loc8_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc3_ = _loc3_ + _loc7_.zpp_inner.x * _loc9_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc4_ = _loc4_ + _loc7_.zpp_inner.y * _loc9_;
               _loc10_ = _loc7_.zpp_inner;
               if(_loc10_._validate != null)
               {
                  _loc10_._validate();
               }
               _loc5_ = _loc5_ + _loc7_.zpp_inner.z * _loc8_;
               _loc7_.dispose();
            }
         }
         return Vec3.get(_loc3_,_loc4_,_loc5_);
      }
      
      public function get staticFriction() : Number
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.colarb;
         if(_loc1_.invalidated)
         {
            _loc1_.invalidated = false;
            if(_loc1_.s1.material.elasticity > -1.79E308)
            {
               true;
            }
            if(true)
            {
               _loc1_.restitution = 0;
            }
            else
            {
               if(_loc1_.s1.material.elasticity < 1.79E308)
               {
                  true;
               }
               if(true)
               {
                  _loc1_.restitution = 1;
               }
               else
               {
                  _loc1_.restitution = (_loc1_.s1.material.elasticity + _loc1_.s2.material.elasticity) / 2;
               }
            }
            if(_loc1_.restitution < 0)
            {
               _loc1_.restitution = 0;
            }
            if(_loc1_.restitution > 1)
            {
               _loc1_.restitution = 1;
            }
            _loc2_ = _loc1_.s1.material.dynamicFriction * _loc1_.s2.material.dynamicFriction;
            if(_loc2_ != 0.0)
            {
               _loc3_ = op_lf32(0) /*Alchemy*/;
            }
            if(_loc2_ == 0.0)
            {
               _loc1_.dyn_fric = 0.0;
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
            else
            {
               op_sf32(0,_loc2_) /*Alchemy*/.dyn_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
         }
         if(_loc1_.invalidated)
         {
            return _loc1_.stat_fric;
         }
         return _loc1_.stat_fric;
      }
      
      public function get rollingFriction() : Number
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.colarb;
         if(_loc1_.invalidated)
         {
            _loc1_.invalidated = false;
            if(_loc1_.s1.material.elasticity > -1.79E308)
            {
               true;
            }
            if(true)
            {
               _loc1_.restitution = 0;
            }
            else
            {
               if(_loc1_.s1.material.elasticity < 1.79E308)
               {
                  true;
               }
               if(true)
               {
                  _loc1_.restitution = 1;
               }
               else
               {
                  _loc1_.restitution = (_loc1_.s1.material.elasticity + _loc1_.s2.material.elasticity) / 2;
               }
            }
            if(_loc1_.restitution < 0)
            {
               _loc1_.restitution = 0;
            }
            if(_loc1_.restitution > 1)
            {
               _loc1_.restitution = 1;
            }
            _loc2_ = _loc1_.s1.material.dynamicFriction * _loc1_.s2.material.dynamicFriction;
            if(_loc2_ != 0.0)
            {
               _loc3_ = op_lf32(0) /*Alchemy*/;
            }
            if(_loc2_ == 0.0)
            {
               _loc1_.dyn_fric = 0.0;
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
            else
            {
               op_sf32(0,_loc2_) /*Alchemy*/.dyn_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
         }
         if(_loc1_.invalidated)
         {
            return _loc1_.rfric;
         }
         return _loc1_.rfric;
      }
      
      public function get restitution() : Number
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.colarb;
         if(_loc1_.invalidated)
         {
            _loc1_.invalidated = false;
            if(_loc1_.s1.material.elasticity > -1.79E308)
            {
               true;
            }
            if(true)
            {
               _loc1_.restitution = 0;
            }
            else
            {
               if(_loc1_.s1.material.elasticity < 1.79E308)
               {
                  true;
               }
               if(true)
               {
                  _loc1_.restitution = 1;
               }
               else
               {
                  _loc1_.restitution = (_loc1_.s1.material.elasticity + _loc1_.s2.material.elasticity) / 2;
               }
            }
            if(_loc1_.restitution < 0)
            {
               _loc1_.restitution = 0;
            }
            if(_loc1_.restitution > 1)
            {
               _loc1_.restitution = 1;
            }
            _loc2_ = _loc1_.s1.material.dynamicFriction * _loc1_.s2.material.dynamicFriction;
            if(_loc2_ != 0.0)
            {
               _loc3_ = op_lf32(0) /*Alchemy*/;
            }
            if(_loc2_ == 0.0)
            {
               _loc1_.dyn_fric = 0.0;
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
            else
            {
               op_sf32(0,_loc2_) /*Alchemy*/.dyn_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
         }
         if(_loc1_.invalidated)
         {
            return _loc1_.restitution;
         }
         return _loc1_.restitution;
      }
      
      public function get radius() : Number
      {
         return zpp_inner.colarb.radius;
      }
      
      public function get normal() : Vec2
      {
         if(zpp_inner.colarb.wrap_normal == null)
         {
            zpp_inner.colarb.getnormal();
         }
         return zpp_inner.colarb.wrap_normal;
      }
      
      public function get dynamicFriction() : Number
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc1_:ZPP_ColArbiter = zpp_inner.colarb;
         if(_loc1_.invalidated)
         {
            _loc1_.invalidated = false;
            if(_loc1_.s1.material.elasticity > -1.79E308)
            {
               true;
            }
            if(true)
            {
               _loc1_.restitution = 0;
            }
            else
            {
               if(_loc1_.s1.material.elasticity < 1.79E308)
               {
                  true;
               }
               if(true)
               {
                  _loc1_.restitution = 1;
               }
               else
               {
                  _loc1_.restitution = (_loc1_.s1.material.elasticity + _loc1_.s2.material.elasticity) / 2;
               }
            }
            if(_loc1_.restitution < 0)
            {
               _loc1_.restitution = 0;
            }
            if(_loc1_.restitution > 1)
            {
               _loc1_.restitution = 1;
            }
            _loc2_ = _loc1_.s1.material.dynamicFriction * _loc1_.s2.material.dynamicFriction;
            if(_loc2_ != 0.0)
            {
               _loc3_ = op_lf32(0) /*Alchemy*/;
            }
            if(_loc2_ == 0.0)
            {
               _loc1_.dyn_fric = 0.0;
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
            else
            {
               op_sf32(0,_loc2_) /*Alchemy*/.dyn_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
               _loc2_ = _loc1_.s1.material.staticFriction * _loc1_.s2.material.staticFriction;
               if(_loc2_ != 0.0)
               {
                  _loc3_ = op_lf32(0) /*Alchemy*/;
               }
               if(_loc2_ == 0.0)
               {
                  _loc1_.stat_fric = 0.0;
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
               else
               {
                  op_sf32(0,_loc2_) /*Alchemy*/.stat_fric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  _loc2_ = _loc1_.s1.material.rollingFriction * _loc1_.s2.material.rollingFriction;
                  if(_loc2_ != 0.0)
                  {
                     _loc3_ = op_lf32(0) /*Alchemy*/;
                  }
                  if(_loc2_ == 0.0)
                  {
                     _loc1_.rfric = 0.0;
                  }
                  else
                  {
                     op_sf32(0,_loc2_) /*Alchemy*/.rfric = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc3_ * (1.5 - 0.5 * _loc2_ * _loc3_ * _loc3_));
                  }
               }
            }
         }
         if(_loc1_.invalidated)
         {
            return _loc1_.dyn_fric;
         }
         return _loc1_.dyn_fric;
      }
      
      public function get contacts() : ContactList
      {
         if(zpp_inner.colarb.wrap_contacts == null)
         {
            zpp_inner.colarb.setupcontacts();
         }
         return zpp_inner.colarb.wrap_contacts;
      }
   }
}
