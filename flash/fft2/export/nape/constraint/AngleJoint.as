package nape.constraint
{
   import zpp_nape.constraint.ZPP_AngleJoint;
   import zpp_nape.phys.ZPP_Body;
   import nape.phys.Body;
   import zpp_nape.space.ZPP_Space;
   import nape.space.Space;
   import nape.geom.MatMN;
   import nape.geom.Vec3;
   import flash._-2v;
   
   public class AngleJoint extends Constraint
   {
      
      public function AngleJoint(param1:Body, param2:Body, param3:Number, param4:Number)
      {
         if(_-2v._-7E)
         {
            return;
         }
         zpp_inner_zn = new ZPP_AngleJoint();
         zpp_inner = zpp_inner_zn;
         zpp_inner.outer = this;
         zpp_inner_zn.outer_zn = this;
         super();
         zpp_inner.immutable_midstep("Constraint::" + "body1");
         var _loc5_:ZPP_Body = param1 == null?null:param1.zpp_inner;
         if(_loc5_ != zpp_inner_zn.b1)
         {
            if(zpp_inner_zn.b1 != null)
            {
               if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
               {
                  false;
               }
               if(false)
               {
                  if(zpp_inner_zn.b1 != null)
                  {
                     zpp_inner_zn.b1.constraints.remove(zpp_inner);
                  }
               }
               if(zpp_inner.active)
               {
                  false;
               }
               if(false)
               {
                  zpp_inner_zn.b1.wake();
               }
            }
            zpp_inner_zn.b1 = _loc5_;
            if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(false)
            {
               if(_loc5_ != null)
               {
                  _loc5_.constraints.add(zpp_inner);
               }
            }
            if(zpp_inner.active)
            {
               false;
            }
            if(false)
            {
               zpp_inner.wake();
               if(_loc5_ != null)
               {
                  _loc5_.wake();
               }
            }
         }
         if(zpp_inner_zn.b1 == null)
         {
            null;
         }
         else
         {
            zpp_inner_zn.b1.outer;
         }
         zpp_inner.immutable_midstep("Constraint::" + "body2");
         _loc5_ = param2 == null?null:param2.zpp_inner;
         if(_loc5_ != zpp_inner_zn.b2)
         {
            if(zpp_inner_zn.b2 != null)
            {
               if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
               {
                  false;
               }
               if(false)
               {
                  if(zpp_inner_zn.b2 != null)
                  {
                     zpp_inner_zn.b2.constraints.remove(zpp_inner);
                  }
               }
               if(zpp_inner.active)
               {
                  false;
               }
               if(false)
               {
                  zpp_inner_zn.b2.wake();
               }
            }
            zpp_inner_zn.b2 = _loc5_;
            if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(false)
            {
               if(_loc5_ != null)
               {
                  _loc5_.constraints.add(zpp_inner);
               }
            }
            if(zpp_inner.active)
            {
               false;
            }
            if(false)
            {
               zpp_inner.wake();
               if(_loc5_ != null)
               {
                  _loc5_.wake();
               }
            }
         }
         if(zpp_inner_zn.b2 == null)
         {
            null;
         }
         else
         {
            zpp_inner_zn.b2.outer;
         }
         zpp_inner.immutable_midstep("AngleJoint::jointMin");
         if(zpp_inner_zn.jointMin != param3)
         {
            zpp_inner_zn.jointMin = param3;
            zpp_inner.wake();
         }
         zpp_inner_zn.jointMin;
         zpp_inner.immutable_midstep("AngleJoint::jointMax");
         if(zpp_inner_zn.jointMax != param4)
         {
            zpp_inner_zn.jointMax = param4;
            zpp_inner.wake();
         }
         zpp_inner_zn.jointMax;
      }
      
      public var zpp_inner_zn:ZPP_AngleJoint;
      
      override public function visitBodies(param1:Function) : void
      {
         if((zpp_inner_zn.b1 == null?null:zpp_inner_zn.b1.outer) != null)
         {
            param1(zpp_inner_zn.b1 == null?null:zpp_inner_zn.b1.outer);
         }
         if((zpp_inner_zn.b2 == null?null:zpp_inner_zn.b2.outer) != null)
         {
            false;
         }
         if(false)
         {
            param1(zpp_inner_zn.b2 == null?null:zpp_inner_zn.b2.outer);
         }
      }
      
      public function set ratio(param1:Number) : Number
      {
         zpp_inner.immutable_midstep("AngleJoint::ratio");
         if(zpp_inner_zn.ratio != param1)
         {
            zpp_inner_zn.ratio = param1;
            zpp_inner.wake();
         }
         return zpp_inner_zn.ratio;
      }
      
      public function set jointMin(param1:Number) : Number
      {
         zpp_inner.immutable_midstep("AngleJoint::jointMin");
         if(zpp_inner_zn.jointMin != param1)
         {
            zpp_inner_zn.jointMin = param1;
            zpp_inner.wake();
         }
         return zpp_inner_zn.jointMin;
      }
      
      public function set jointMax(param1:Number) : Number
      {
         zpp_inner.immutable_midstep("AngleJoint::jointMax");
         if(zpp_inner_zn.jointMax != param1)
         {
            zpp_inner_zn.jointMax = param1;
            zpp_inner.wake();
         }
         return zpp_inner_zn.jointMax;
      }
      
      public function set body2(param1:Body) : Body
      {
         zpp_inner.immutable_midstep("Constraint::" + "body2");
         var _loc2_:ZPP_Body = param1 == null?null:param1.zpp_inner;
         if(_loc2_ != zpp_inner_zn.b2)
         {
            if(zpp_inner_zn.b2 != null)
            {
               if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
               {
                  false;
               }
               if(false)
               {
                  if(zpp_inner_zn.b2 != null)
                  {
                     zpp_inner_zn.b2.constraints.remove(zpp_inner);
                  }
               }
               if(zpp_inner.active)
               {
                  false;
               }
               if(false)
               {
                  zpp_inner_zn.b2.wake();
               }
            }
            zpp_inner_zn.b2 = _loc2_;
            if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(false)
            {
               if(_loc2_ != null)
               {
                  _loc2_.constraints.add(zpp_inner);
               }
            }
            if(zpp_inner.active)
            {
               false;
            }
            if(false)
            {
               zpp_inner.wake();
               if(_loc2_ != null)
               {
                  _loc2_.wake();
               }
            }
         }
         return zpp_inner_zn.b2 == null?null:zpp_inner_zn.b2.outer;
      }
      
      public function set body1(param1:Body) : Body
      {
         zpp_inner.immutable_midstep("Constraint::" + "body1");
         var _loc2_:ZPP_Body = param1 == null?null:param1.zpp_inner;
         if(_loc2_ != zpp_inner_zn.b1)
         {
            if(zpp_inner_zn.b1 != null)
            {
               if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
               {
                  false;
               }
               if(false)
               {
                  if(zpp_inner_zn.b1 != null)
                  {
                     zpp_inner_zn.b1.constraints.remove(zpp_inner);
                  }
               }
               if(zpp_inner.active)
               {
                  false;
               }
               if(false)
               {
                  zpp_inner_zn.b1.wake();
               }
            }
            zpp_inner_zn.b1 = _loc2_;
            if((zpp_inner.space == null?null:zpp_inner.space.outer) != null)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(false)
            {
               if(_loc2_ != null)
               {
                  _loc2_.constraints.add(zpp_inner);
               }
            }
            if(zpp_inner.active)
            {
               false;
            }
            if(false)
            {
               zpp_inner.wake();
               if(_loc2_ != null)
               {
                  _loc2_.wake();
               }
            }
         }
         return zpp_inner_zn.b1 == null?null:zpp_inner_zn.b1.outer;
      }
      
      override public function impulse() : MatMN
      {
         var _loc1_:MatMN = new MatMN(1,1);
         _loc1_.zpp_inner.x[0 * _loc1_.zpp_inner.n] = zpp_inner_zn.jAcc + zpp_inner_zn.pjAcc;
         return _loc1_;
      }
      
      public function get slack() : Boolean
      {
         return zpp_inner_zn.slack;
      }
      
      public function get ratio() : Number
      {
         return zpp_inner_zn.ratio;
      }
      
      public function get jointMin() : Number
      {
         return zpp_inner_zn.jointMin;
      }
      
      public function get jointMax() : Number
      {
         return zpp_inner_zn.jointMax;
      }
      
      public function get body2() : Body
      {
         return zpp_inner_zn.b2 == null?null:zpp_inner_zn.b2.outer;
      }
      
      public function get body1() : Body
      {
         return zpp_inner_zn.b1 == null?null:zpp_inner_zn.b1.outer;
      }
      
      override public function bodyImpulse(param1:Body) : Vec3
      {
         if(!zpp_inner.active)
         {
            return Vec3.get(0,0,0);
         }
         return zpp_inner_zn.bodyImpulse(param1.zpp_inner);
      }
   }
}
