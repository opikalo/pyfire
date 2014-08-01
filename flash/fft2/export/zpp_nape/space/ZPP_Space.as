package zpp_nape.space
{
   import nape.constraint.ConstraintList;
   import nape.phys.BodyList;
   import nape.callbacks.ListenerList;
   import nape.geom.Vec2;
   import nape.phys.CompoundList;
   import nape.dynamics.ArbiterList;
   import zpp_nape.dynamics.ZPP_FluidArbiter;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.constraint.ZPP_Constraint;
   import zpp_nape.util.ZNPNode_ZPP_FluidArbiter;
   import zpp_nape.util.ZPP_Flags;
   import zpp_nape.util.ZNPNode_ZPP_ColArbiter;
   import zpp_nape.util.ZNPNode_ZPP_Constraint;
   import zpp_nape.util.ZNPList_ZPP_Constraint;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_Arbiter;
   import zpp_nape.dynamics.ZPP_Arbiter;
   import zpp_nape.util.ZNPList_ZPP_ColArbiter;
   import zpp_nape.util.ZNPList_ZPP_FluidArbiter;
   import zpp_nape.util.ZNPList_ZPP_SensorArbiter;
   import zpp_nape.dynamics.ZPP_SensorArbiter;
   import zpp_nape.util.ZNPNode_ZPP_SensorArbiter;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZNPNode_ZPP_Component;
   import zpp_nape.phys.ZPP_Compound;
   import zpp_nape.util.ZNPNode_ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_Compound;
   import zpp_nape.util.ZPP_Set_ZPP_CbSet;
   import zpp_nape.callbacks.ZPP_CbSet;
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.util.ZNPNode_ZPP_BodyListener;
   import zpp_nape.callbacks.ZPP_BodyListener;
   import zpp_nape.callbacks.ZPP_Callback;
   import zpp_nape.util.ZNPNode_ZPP_ConstraintListener;
   import zpp_nape.callbacks.ZPP_ConstraintListener;
   import zpp_nape.util.ZNPList_ZPP_Body;
   import zpp_nape.phys.ZPP_Interactor;
   import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
   import zpp_nape.callbacks.ZPP_CbSetPair;
   import zpp_nape.util.ZNPList_ZPP_CbSetPair;
   import zpp_nape.util.ZNPNode_ZPP_CbSetPair;
   import zpp_nape.callbacks.ZPP_InteractionListener;
   import zpp_nape.callbacks.ZPP_OptionType;
   import zpp_nape.util.ZNPList_ZPP_CbType;
   import nape.callbacks.BodyCallback;
   import nape.callbacks.ConstraintCallback;
   import nape.callbacks.InteractionCallback;
   import zpp_nape.callbacks.ZPP_Listener;
   import zpp_nape.util.ZNPList_ZPP_Arbiter;
   import nape.shape.ShapeList;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import nape.geom.AABB;
   import zpp_nape.util.ZNPNode_ZPP_Interactor;
   import zpp_nape.util.ZNPNode_ZPP_CallbackSet;
   import zpp_nape.util.ZNPList_ZPP_CallbackSet;
   import nape.geom.RayResultList;
   import nape.geom.Ray;
   import nape.dynamics.InteractionFilter;
   import nape.geom.RayResult;
   import zpp_nape.util.ZNPList_ZPP_Interactor;
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.dynamics.ZPP_IContact;
   import zpp_nape.util.ZNPList_ZPP_InteractionListener;
   import nape.callbacks.PreCallback;
   import nape.space.Space;
   import zpp_nape.dynamics.ZPP_InteractionGroup;
   import nape.callbacks.PreFlag;
   import zpp_nape.geom.ZPP_Collide;
   import flash._-2v;
   import nape.callbacks.Listener;
   import zpp_nape.util.ZNPList_ZPP_Listener;
   import zpp_nape.util.ZNPList_ZPP_Compound;
   import zpp_nape.util.ZNPList_ZPP_Component;
   import nape.constraint.Constraint;
   import nape.phys.Compound;
   import zpp_nape.util.ZNPNode_ZPP_Listener;
   import nape.phys.Body;
   import nape.space.Broadphase;
   import zpp_nape.ZPP_ID;
   import zpp_nape.util.ZPP_BodyList;
   import zpp_nape.util.ZPP_CompoundList;
   import zpp_nape.util.ZPP_ConstraintList;
   import zpp_nape.util.ZPP_ListenerList;
   
   public class ZPP_Space extends Object
   {
      
      public function ZPP_Space(param1:ZPP_Vec2 = undefined, param2:Broadphase = undefined)
      {
         if(_-2v._-7E)
         {
            return;
         }
         global_lin_drag = 0.015;
         global_ang_drag = 0.015;
         precb = new PreCallback();
         precb.zpp_inner = new ZPP_Callback();
         id = ZPP_ID.Space();
         sortcontacts = true;
         pre_dt = 0.0;
         if(param2 != null)
         {
            true;
            if(ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.Broadphase_DYNAMIC_AABB_TREE = new Broadphase();
               ZPP_Flags.internal = false;
            }
         }
         if(true)
         {
            bphase = new ZPP_DynAABBPhase(this);
         }
         else
         {
            if(ZPP_Flags.Broadphase_SWEEP_AND_PRUNE == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.Broadphase_SWEEP_AND_PRUNE = new Broadphase();
               ZPP_Flags.internal = false;
            }
            if(param2 == ZPP_Flags.Broadphase_SWEEP_AND_PRUNE)
            {
               bphase = new ZPP_SweepPhase(this);
            }
         }
         time = 0.0;
         var _loc3_:ZPP_Space = this;
         if(param1 != null)
         {
            gravityx = param1.x;
            gravityy = param1.y;
         }
         else
         {
            gravityx = 0;
            gravityy = 0;
         }
         bodies = new ZNPList_ZPP_Body();
         wrap_bodies = ZPP_BodyList.get(bodies);
         wrap_bodies.zpp_inner.adder = bodies_adder;
         wrap_bodies.zpp_inner.subber = bodies_subber;
         compounds = new ZNPList_ZPP_Compound();
         wrap_compounds = ZPP_CompoundList.get(compounds);
         wrap_compounds.zpp_inner.adder = compounds_adder;
         wrap_compounds.zpp_inner.subber = compounds_subber;
         kinematics = new ZNPList_ZPP_Body();
         c_arbiters_true = new ZNPList_ZPP_ColArbiter();
         c_arbiters_false = new ZNPList_ZPP_ColArbiter();
         f_arbiters = new ZNPList_ZPP_FluidArbiter();
         s_arbiters = new ZNPList_ZPP_SensorArbiter();
         islands = new ZPP_Island();
         live = new ZNPList_ZPP_Body();
         wrap_live = ZPP_BodyList.get(live,true);
         staticsleep = new ZNPList_ZPP_Body();
         constraints = new ZNPList_ZPP_Constraint();
         wrap_constraints = ZPP_ConstraintList.get(constraints);
         wrap_constraints.zpp_inner.adder = constraints_adder;
         wrap_constraints.zpp_inner.subber = constraints_subber;
         live_constraints = new ZNPList_ZPP_Constraint();
         wrap_livecon = ZPP_ConstraintList.get(live_constraints,true);
         __static = ZPP_Body.__static();
         __static.zpp_inner.space = this;
         callbacks = new ZPP_Callback();
         midstep = false;
         listeners = new ZNPList_ZPP_Listener();
         wrap_listeners = ZPP_ListenerList.get(listeners);
         wrap_listeners.zpp_inner.adder = listeners_adder;
         wrap_listeners.zpp_inner.subber = listeners_subber;
         callbackset_list = new ZPP_CallbackSet();
         mrca1 = new ZNPList_ZPP_Interactor();
         mrca2 = new ZNPList_ZPP_Interactor();
         prelisteners = new ZNPList_ZPP_InteractionListener();
         cbsets = new ZPP_CbSetManager(this);
      }
      
      public var wrap_livecon:ConstraintList;
      
      public var wrap_live:BodyList;
      
      public var wrap_listeners:ListenerList;
      
      public var wrap_gravity:Vec2;
      
      public var wrap_constraints:ConstraintList;
      
      public var wrap_compounds:CompoundList;
      
      public var wrap_bodies:BodyList;
      
      public var wrap_arbiters:ArbiterList;
      
      public function warmStart() : void
      {
         var _loc2_:* = null as ZPP_FluidArbiter;
         var _loc3_:* = NaN;
         var _loc6_:* = null as ZPP_ColArbiter;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc10_:* = null as ZPP_Constraint;
         var _loc1_:ZNPNode_ZPP_FluidArbiter = f_arbiters.head;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.elt;
            if(_loc2_.active)
            {
               false;
            }
            if(false)
            {
               _loc3_ = _loc2_.b1.imass;
               _loc2_.b1.velx = _loc2_.b1.velx - _loc2_.dampx * _loc3_;
               _loc2_.b1.vely = _loc2_.b1.vely - _loc2_.dampy * _loc3_;
               _loc3_ = _loc2_.b2.imass;
               _loc2_.b2.velx = _loc2_.b2.velx + _loc2_.dampx * _loc3_;
               _loc2_.b2.vely = _loc2_.b2.vely + _loc2_.dampy * _loc3_;
               _loc2_.b1.angvel = _loc2_.b1.angvel - _loc2_.b1.iinertia * (_loc2_.dampy * _loc2_.r1x - _loc2_.dampx * _loc2_.r1y);
               _loc2_.b2.angvel = _loc2_.b2.angvel + _loc2_.b2.iinertia * (_loc2_.dampy * _loc2_.r2x - _loc2_.dampx * _loc2_.r2y);
               _loc2_.b1.angvel = _loc2_.b1.angvel - _loc2_.adamp * _loc2_.b1.iinertia;
               _loc2_.b2.angvel = _loc2_.b2.angvel + _loc2_.adamp * _loc2_.b2.iinertia;
               _loc2_.pdampx = _loc2_.dampx;
               _loc2_.pdampy = _loc2_.dampy;
               _loc2_.padamp = _loc2_.adamp;
            }
            _loc1_ = _loc1_.next;
         }
         var _loc4_:ZNPNode_ZPP_ColArbiter = c_arbiters_false.head;
         var _loc5_:* = true;
         if(_loc4_ == null)
         {
            _loc4_ = c_arbiters_true.head;
            _loc5_ = false;
         }
         while(_loc4_ != null)
         {
            _loc6_ = _loc4_.elt;
            if(_loc6_.active)
            {
               false;
            }
            if(false)
            {
               _loc3_ = _loc6_.nx * _loc6_.c1.jnAcc - _loc6_.ny * _loc6_.c1.jtAcc;
               _loc7_ = _loc6_.ny * _loc6_.c1.jnAcc + _loc6_.nx * _loc6_.c1.jtAcc;
               _loc8_ = _loc6_.b1.imass;
               _loc6_.b1.velx = _loc6_.b1.velx - _loc3_ * _loc8_;
               _loc6_.b1.vely = _loc6_.b1.vely - _loc7_ * _loc8_;
               _loc6_.b1.angvel = _loc6_.b1.angvel - _loc6_.b1.iinertia * (_loc7_ * _loc6_.c1.r1x - _loc3_ * _loc6_.c1.r1y);
               _loc8_ = _loc6_.b2.imass;
               _loc6_.b2.velx = _loc6_.b2.velx + _loc3_ * _loc8_;
               _loc6_.b2.vely = _loc6_.b2.vely + _loc7_ * _loc8_;
               _loc6_.b2.angvel = _loc6_.b2.angvel + _loc6_.b2.iinertia * (_loc7_ * _loc6_.c1.r2x - _loc3_ * _loc6_.c1.r2y);
               if(_loc6_.hc2)
               {
                  _loc3_ = _loc6_.nx * _loc6_.c2.jnAcc - _loc6_.ny * _loc6_.c2.jtAcc;
                  _loc7_ = _loc6_.ny * _loc6_.c2.jnAcc + _loc6_.nx * _loc6_.c2.jtAcc;
                  _loc8_ = _loc6_.b1.imass;
                  _loc6_.b1.velx = _loc6_.b1.velx - _loc3_ * _loc8_;
                  _loc6_.b1.vely = _loc6_.b1.vely - _loc7_ * _loc8_;
                  _loc6_.b1.angvel = _loc6_.b1.angvel - _loc6_.b1.iinertia * (_loc7_ * _loc6_.c2.r1x - _loc3_ * _loc6_.c2.r1y);
                  _loc8_ = _loc6_.b2.imass;
                  _loc6_.b2.velx = _loc6_.b2.velx + _loc3_ * _loc8_;
                  _loc6_.b2.vely = _loc6_.b2.vely + _loc7_ * _loc8_;
                  _loc6_.b2.angvel = _loc6_.b2.angvel + _loc6_.b2.iinertia * (_loc7_ * _loc6_.c2.r2x - _loc3_ * _loc6_.c2.r2y);
               }
               _loc6_.b2.angvel = _loc6_.b2.angvel + _loc6_.jrAcc * _loc6_.b2.iinertia;
               _loc6_.b1.angvel = _loc6_.b1.angvel - _loc6_.jrAcc * _loc6_.b1.iinertia;
               _loc6_.oc1.pjnAcc = _loc6_.c1.jnAcc;
               _loc6_.oc1.pjtAcc = _loc6_.c1.jtAcc;
               if(_loc6_.hc2)
               {
                  _loc6_.oc2.pjnAcc = _loc6_.c2.jnAcc;
                  _loc6_.oc2.pjtAcc = _loc6_.c2.jtAcc;
               }
               _loc6_.pjrAcc = _loc6_.jrAcc;
            }
            _loc4_ = _loc4_.next;
            if(_loc5_)
            {
               false;
            }
            if(false)
            {
               _loc4_ = c_arbiters_true.head;
               _loc5_ = false;
            }
         }
         var _loc9_:ZNPNode_ZPP_Constraint = live_constraints.head;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.elt;
            _loc10_.warmStart();
            _loc9_ = _loc9_.next;
         }
      }
      
      public function wake_constraint(param1:ZPP_Constraint, param2:Boolean = false) : Boolean
      {
         var _loc3_:* = null as ZNPList_ZPP_Constraint;
         var _loc4_:* = null as ZNPNode_ZPP_Constraint;
         var _loc5_:* = null as ZNPNode_ZPP_Constraint;
         if(param1.active)
         {
            param1.component.waket = stamp + (midstep?0:1);
            if(param1.component.sleeping)
            {
               if(param1.component.island == null)
               {
                  param1.component.sleeping = false;
                  _loc3_ = live_constraints;
                  if(ZNPNode_ZPP_Constraint.zpp_pool == null)
                  {
                     _loc5_ = new ZNPNode_ZPP_Constraint();
                  }
                  else
                  {
                     _loc5_ = ZNPNode_ZPP_Constraint.zpp_pool;
                     ZNPNode_ZPP_Constraint.zpp_pool = _loc5_.next;
                     _loc5_.next = null;
                  }
                  null;
                  _loc5_.elt = param1;
                  _loc4_ = _loc5_;
                  _loc4_.next = _loc3_.head;
                  _loc3_.head = _loc4_;
                  _loc3_.modified = true;
                  _loc3_.length = _loc3_.length + 1;
                  param1;
                  param1.wake_connected();
                  if(!param2)
                  {
                     constraintCbWake(param1);
                  }
               }
               else
               {
                  wakeIsland(param1.component.island);
               }
               return true;
            }
            return false;
         }
         return false;
      }
      
      public function wakeIsland(param1:ZPP_Island) : void
      {
         var _loc2_:* = null as ZPP_Component;
         var _loc3_:* = null as ZPP_Body;
         var _loc4_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc5_:* = null as ZPP_Arbiter;
         var _loc6_:* = null as ZPP_ColArbiter;
         var _loc7_:* = null as ZNPList_ZPP_ColArbiter;
         var _loc8_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc9_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc10_:* = null as ZNPList_ZPP_FluidArbiter;
         var _loc11_:* = null as ZPP_FluidArbiter;
         var _loc12_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc13_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc14_:* = null as ZNPList_ZPP_SensorArbiter;
         var _loc15_:* = null as ZPP_SensorArbiter;
         var _loc16_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc17_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc18_:* = null as ZNPNode_ZPP_Shape;
         var _loc19_:* = null as ZPP_Shape;
         var _loc20_:* = null as ZPP_Constraint;
         var _loc21_:* = null as ZNPList_ZPP_Constraint;
         var _loc22_:* = null as ZNPNode_ZPP_Constraint;
         var _loc23_:* = null as ZNPNode_ZPP_Constraint;
         while(param1.comps.head != null)
         {
            _loc2_ = param1.comps.pop_unsafe();
            _loc2_.waket = stamp + (midstep?0:1);
            if(_loc2_.isBody)
            {
               _loc3_ = _loc2_.body;
               live.add(_loc3_);
               _loc4_ = _loc3_.arbiters.head;
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_.elt;
                  if(_loc5_.sleeping)
                  {
                     _loc5_.sleeping = false;
                     _loc5_.up_stamp = _loc5_.up_stamp + (stamp - _loc5_.sleep_stamp);
                     if(_loc5_.type == ZPP_Arbiter.COL)
                     {
                        _loc6_ = _loc5_.colarb;
                        if(_loc6_.stat)
                        {
                           _loc7_ = c_arbiters_true;
                           if(ZNPNode_ZPP_ColArbiter.zpp_pool == null)
                           {
                              _loc9_ = new ZNPNode_ZPP_ColArbiter();
                           }
                           else
                           {
                              _loc9_ = ZNPNode_ZPP_ColArbiter.zpp_pool;
                              ZNPNode_ZPP_ColArbiter.zpp_pool = _loc9_.next;
                              _loc9_.next = null;
                           }
                           null;
                           _loc9_.elt = _loc6_;
                           _loc8_ = _loc9_;
                           _loc8_.next = _loc7_.head;
                           _loc7_.head = _loc8_;
                           _loc7_.modified = true;
                           _loc7_.length = _loc7_.length + 1;
                           _loc6_;
                        }
                        else
                        {
                           _loc7_ = c_arbiters_false;
                           if(ZNPNode_ZPP_ColArbiter.zpp_pool == null)
                           {
                              _loc9_ = new ZNPNode_ZPP_ColArbiter();
                           }
                           else
                           {
                              _loc9_ = ZNPNode_ZPP_ColArbiter.zpp_pool;
                              ZNPNode_ZPP_ColArbiter.zpp_pool = _loc9_.next;
                              _loc9_.next = null;
                           }
                           null;
                           _loc9_.elt = _loc6_;
                           _loc8_ = _loc9_;
                           _loc8_.next = _loc7_.head;
                           _loc7_.head = _loc8_;
                           _loc7_.modified = true;
                           _loc7_.length = _loc7_.length + 1;
                           _loc6_;
                        }
                     }
                     else if(_loc5_.type == ZPP_Arbiter.FLUID)
                     {
                        _loc10_ = f_arbiters;
                        _loc11_ = _loc5_.fluidarb;
                        if(ZNPNode_ZPP_FluidArbiter.zpp_pool == null)
                        {
                           _loc13_ = new ZNPNode_ZPP_FluidArbiter();
                        }
                        else
                        {
                           _loc13_ = ZNPNode_ZPP_FluidArbiter.zpp_pool;
                           ZNPNode_ZPP_FluidArbiter.zpp_pool = _loc13_.next;
                           _loc13_.next = null;
                        }
                        null;
                        _loc13_.elt = _loc11_;
                        _loc12_ = _loc13_;
                        _loc12_.next = _loc10_.head;
                        _loc10_.head = _loc12_;
                        _loc10_.modified = true;
                        _loc10_.length = _loc10_.length + 1;
                        _loc11_;
                     }
                     else
                     {
                        _loc14_ = s_arbiters;
                        _loc15_ = _loc5_.sensorarb;
                        if(ZNPNode_ZPP_SensorArbiter.zpp_pool == null)
                        {
                           _loc17_ = new ZNPNode_ZPP_SensorArbiter();
                        }
                        else
                        {
                           _loc17_ = ZNPNode_ZPP_SensorArbiter.zpp_pool;
                           ZNPNode_ZPP_SensorArbiter.zpp_pool = _loc17_.next;
                           _loc17_.next = null;
                        }
                        null;
                        _loc17_.elt = _loc15_;
                        _loc16_ = _loc17_;
                        _loc16_.next = _loc14_.head;
                        _loc14_.head = _loc16_;
                        _loc14_.modified = true;
                        _loc14_.length = _loc14_.length + 1;
                        _loc15_;
                     }
                     
                  }
                  _loc4_ = _loc4_.next;
               }
               bodyCbWake(_loc3_);
               _loc2_.sleeping = false;
               _loc2_.island = null;
               _loc2_.parent = _loc2_;
               _loc2_.rank = 0;
               if(!bphase.is_sweep)
               {
                  false;
               }
               if(false)
               {
                  _loc18_ = _loc3_.shapes.head;
                  while(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.elt;
                     if(_loc19_.node != null)
                     {
                        bphase.sync(_loc19_);
                     }
                     _loc18_ = _loc18_.next;
                  }
               }
            }
            else
            {
               _loc20_ = _loc2_.constraint;
               _loc21_ = live_constraints;
               if(ZNPNode_ZPP_Constraint.zpp_pool == null)
               {
                  _loc23_ = new ZNPNode_ZPP_Constraint();
               }
               else
               {
                  _loc23_ = ZNPNode_ZPP_Constraint.zpp_pool;
                  ZNPNode_ZPP_Constraint.zpp_pool = _loc23_.next;
                  _loc23_.next = null;
               }
               null;
               _loc23_.elt = _loc20_;
               _loc22_ = _loc23_;
               _loc22_.next = _loc21_.head;
               _loc21_.head = _loc22_;
               _loc21_.modified = true;
               _loc21_.length = _loc21_.length + 1;
               _loc20_;
               constraintCbWake(_loc20_);
               _loc2_.sleeping = false;
               _loc2_.island = null;
               _loc2_.parent = _loc2_;
               _loc2_.rank = 0;
            }
         }
         var _loc24_:ZPP_Island = param1;
         _loc24_.next = ZPP_Island.zpp_pool;
         ZPP_Island.zpp_pool = _loc24_;
      }
      
      public function wakeCompound(param1:ZPP_Compound) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc4_:* = null as ZPP_Body;
         var _loc6_:* = null as ZPP_Constraint;
         var _loc8_:* = null as ZPP_Compound;
         var _loc2_:ZNPNode_ZPP_Body = param1.bodies.head;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.elt;
            _loc4_ = _loc3_;
            if(!_loc4_.world)
            {
               _loc4_.component.waket = stamp + (midstep?0:1);
               if(_loc4_.component.sleeping)
               {
                  really_wake(_loc4_,false);
               }
            }
            _loc2_ = _loc2_.next;
         }
         var _loc5_:ZNPNode_ZPP_Constraint = param1.constraints.head;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.elt;
            wake_constraint(_loc6_);
            _loc5_ = _loc5_.next;
         }
         var _loc7_:ZNPNode_ZPP_Compound = param1.compounds.head;
         while(_loc7_ != null)
         {
            _loc8_ = _loc7_.elt;
            wakeCompound(_loc8_);
            _loc7_ = _loc7_.next;
         }
      }
      
      public function validation() : void
      {
         var _loc2_:* = null as ZPP_Set_ZPP_CbSet;
         var _loc3_:* = null as ZPP_CbSet;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Shape;
         var _loc7_:* = null as ZPP_Shape;
         var _loc8_:* = null as ZPP_Circle;
         var _loc9_:* = null as ZPP_Polygon;
         var _loc10_:* = NaN;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Vec2;
         var _loc14_:* = null as ZPP_Vec2;
         var _loc15_:* = NaN;
         var _loc16_:* = null as ZPP_Vec2;
         var _loc17_:* = null as ZPP_Body;
         var _loc18_:* = null as ZPP_AABB;
         var _loc19_:* = null as ZPP_AABB;
         var _loc20_:* = null as ZNPNode_ZPP_Edge;
         var _loc21_:* = null as ZPP_Edge;
         var _loc22_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc23_:* = null as ZPP_BodyListener;
         var _loc24_:* = null as ZPP_Callback;
         var _loc26_:* = null as ZPP_Constraint;
         var _loc27_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc28_:* = null as ZPP_ConstraintListener;
         var _loc1_:ZPP_CbSetManager = cbsets;
         if(!_loc1_.cbsets.empty())
         {
            _loc2_ = _loc1_.cbsets.parent;
            while(_loc2_.prev != null)
            {
               _loc2_ = _loc2_.prev;
            }
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.data;
               _loc3_.validate();
               if(_loc2_.next != null)
               {
                  _loc2_ = _loc2_.next;
                  while(_loc2_.prev != null)
                  {
                     _loc2_ = _loc2_.prev;
                  }
               }
               else
               {
                  while(true)
                  {
                     if(_loc2_.parent != null)
                     {
                        false;
                     }
                     if(!false)
                     {
                        break;
                     }
                     _loc2_ = _loc2_.parent;
                  }
                  _loc2_ = _loc2_.parent;
               }
            }
         }
         var _loc4_:ZNPNode_ZPP_Body = live.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            _loc5_.validate_mass();
            _loc5_.validate_inertia();
            if(_loc5_.zip_aabb)
            {
               _loc5_.zip_aabb = false;
               _loc5_.aabb.minx = 1.79E308;
               _loc5_.aabb.miny = 1.79E308;
               _loc5_.aabb.maxx = -1.79E308;
               _loc5_.aabb.maxy = -1.79E308;
               _loc6_ = _loc5_.shapes.head;
               while(_loc6_ != null)
               {
                  _loc7_ = _loc6_.elt;
                  if(_loc7_.zip_aabb)
                  {
                     if(_loc7_.body != null)
                     {
                        _loc7_.zip_aabb = false;
                        if(_loc7_.type == ZPP_Flags.id_ShapeType_CIRCLE)
                        {
                           _loc8_ = _loc7_.circle;
                           if(_loc8_.zip_worldCOM)
                           {
                              if(_loc8_.body != null)
                              {
                                 _loc8_.zip_worldCOM = false;
                                 if(_loc8_.zip_localCOM)
                                 {
                                    _loc8_.zip_localCOM = false;
                                    if(_loc8_.type == ZPP_Flags.id_ShapeType_POLYGON)
                                    {
                                       _loc9_ = _loc8_.polygon;
                                       if(_loc9_.lverts.next.next == null)
                                       {
                                          _loc9_.localCOMx = _loc9_.lverts.next.x;
                                          _loc9_.localCOMy = _loc9_.lverts.next.y;
                                          null;
                                       }
                                       else if(_loc9_.lverts.next.next.next == null)
                                       {
                                          _loc9_.localCOMx = _loc9_.lverts.next.x;
                                          _loc9_.localCOMy = _loc9_.lverts.next.y;
                                          _loc10_ = 1.0;
                                          _loc9_.localCOMx = _loc9_.localCOMx + _loc9_.lverts.next.next.x * _loc10_;
                                          _loc9_.localCOMy = _loc9_.localCOMy + _loc9_.lverts.next.next.y * _loc10_;
                                          _loc10_ = 0.5;
                                          _loc9_.localCOMx = _loc9_.localCOMx * _loc10_;
                                          _loc9_.localCOMy = _loc9_.localCOMy * _loc10_;
                                       }
                                       else
                                       {
                                          _loc9_.localCOMx = 0;
                                          _loc9_.localCOMy = 0;
                                          _loc10_ = 0.0;
                                          _loc11_ = _loc9_.lverts.next;
                                          _loc12_ = _loc11_;
                                          _loc11_ = _loc11_.next;
                                          _loc13_ = _loc11_;
                                          _loc11_ = _loc11_.next;
                                          while(_loc11_ != null)
                                          {
                                             _loc14_ = _loc11_;
                                             _loc10_ = _loc10_ + _loc13_.x * (_loc14_.y - _loc12_.y);
                                             _loc15_ = _loc14_.y * _loc13_.x - _loc14_.x * _loc13_.y;
                                             _loc9_.localCOMx = _loc9_.localCOMx + (_loc13_.x + _loc14_.x) * _loc15_;
                                             _loc9_.localCOMy = _loc9_.localCOMy + (_loc13_.y + _loc14_.y) * _loc15_;
                                             _loc12_ = _loc13_;
                                             _loc13_ = _loc14_;
                                             _loc11_ = _loc11_.next;
                                          }
                                          _loc11_ = _loc9_.lverts.next;
                                          _loc14_ = _loc11_;
                                          _loc10_ = _loc10_ + _loc13_.x * (_loc14_.y - _loc12_.y);
                                          _loc15_ = _loc14_.y * _loc13_.x - _loc14_.x * _loc13_.y;
                                          _loc9_.localCOMx = _loc9_.localCOMx + (_loc13_.x + _loc14_.x) * _loc15_;
                                          _loc9_.localCOMy = _loc9_.localCOMy + (_loc13_.y + _loc14_.y) * _loc15_;
                                          _loc12_ = _loc13_;
                                          _loc13_ = _loc14_;
                                          _loc11_ = _loc11_.next;
                                          _loc16_ = _loc11_;
                                          _loc10_ = _loc10_ + _loc13_.x * (_loc16_.y - _loc12_.y);
                                          _loc15_ = _loc16_.y * _loc13_.x - _loc16_.x * _loc13_.y;
                                          _loc9_.localCOMx = _loc9_.localCOMx + (_loc13_.x + _loc16_.x) * _loc15_;
                                          _loc9_.localCOMy = _loc9_.localCOMy + (_loc13_.y + _loc16_.y) * _loc15_;
                                          _loc10_ = 1 / (3 * _loc10_);
                                          _loc15_ = _loc10_;
                                          _loc9_.localCOMx = _loc9_.localCOMx * _loc15_;
                                          _loc9_.localCOMy = _loc9_.localCOMy * _loc15_;
                                       }
                                       
                                    }
                                    if(_loc8_.wrap_localCOM != null)
                                    {
                                       _loc8_.wrap_localCOM.zpp_inner.x = _loc8_.localCOMx;
                                       _loc8_.wrap_localCOM.zpp_inner.y = _loc8_.localCOMy;
                                    }
                                 }
                                 _loc17_ = _loc8_.body;
                                 if(_loc17_.zip_axis)
                                 {
                                    _loc17_.zip_axis = false;
                                    _loc17_.axisx = Math.sin(_loc17_.rot);
                                    _loc17_.axisy = Math.cos(_loc17_.rot);
                                    null;
                                 }
                                 _loc8_.worldCOMx = _loc8_.body.posx + (_loc8_.body.axisy * _loc8_.localCOMx - _loc8_.body.axisx * _loc8_.localCOMy);
                                 _loc8_.worldCOMy = _loc8_.body.posy + (_loc8_.localCOMx * _loc8_.body.axisx + _loc8_.localCOMy * _loc8_.body.axisy);
                                 if(_loc8_.wrap_worldCOM != null)
                                 {
                                    _loc8_.wrap_worldCOM.zpp_inner.x = _loc8_.worldCOMx;
                                    _loc8_.wrap_worldCOM.zpp_inner.y = _loc8_.worldCOMy;
                                 }
                              }
                           }
                           _loc10_ = _loc8_.radius;
                           _loc15_ = _loc8_.radius;
                           _loc8_.aabb.minx = _loc8_.worldCOMx - _loc10_;
                           _loc8_.aabb.miny = _loc8_.worldCOMy - _loc15_;
                           _loc8_.aabb.maxx = _loc8_.worldCOMx + _loc10_;
                           _loc8_.aabb.maxy = _loc8_.worldCOMy + _loc15_;
                        }
                        else
                        {
                           _loc9_ = _loc7_.polygon;
                           if(_loc9_.zip_gverts)
                           {
                              if(_loc9_.body != null)
                              {
                                 _loc9_.zip_gverts = false;
                                 _loc9_.validate_lverts();
                                 _loc17_ = _loc9_.body;
                                 if(_loc17_.zip_axis)
                                 {
                                    _loc17_.zip_axis = false;
                                    _loc17_.axisx = Math.sin(_loc17_.rot);
                                    _loc17_.axisy = Math.cos(_loc17_.rot);
                                    null;
                                 }
                                 _loc11_ = _loc9_.lverts.next;
                                 _loc12_ = _loc9_.gverts.next;
                                 while(_loc12_ != null)
                                 {
                                    _loc13_ = _loc12_;
                                    _loc14_ = _loc11_;
                                    _loc11_ = _loc11_.next;
                                    _loc13_.x = _loc9_.body.posx + (_loc9_.body.axisy * _loc14_.x - _loc9_.body.axisx * _loc14_.y);
                                    _loc13_.y = _loc9_.body.posy + (_loc14_.x * _loc9_.body.axisx + _loc14_.y * _loc9_.body.axisy);
                                    _loc12_ = _loc12_.next;
                                 }
                              }
                           }
                           _loc11_ = _loc9_.gverts.next;
                           _loc9_.aabb.minx = _loc11_.x;
                           _loc9_.aabb.miny = _loc11_.y;
                           _loc9_.aabb.maxx = _loc11_.x;
                           _loc9_.aabb.maxy = _loc11_.y;
                           _loc12_ = _loc9_.gverts.next.next;
                           while(_loc12_ != null)
                           {
                              _loc13_ = _loc12_;
                              if(_loc13_.x < _loc9_.aabb.minx)
                              {
                                 _loc9_.aabb.minx = _loc13_.x;
                              }
                              if(_loc13_.x > _loc9_.aabb.maxx)
                              {
                                 _loc9_.aabb.maxx = _loc13_.x;
                              }
                              if(_loc13_.y < _loc9_.aabb.miny)
                              {
                                 _loc9_.aabb.miny = _loc13_.y;
                              }
                              if(_loc13_.y > _loc9_.aabb.maxy)
                              {
                                 _loc9_.aabb.maxy = _loc13_.y;
                              }
                              _loc12_ = _loc12_.next;
                           }
                        }
                     }
                  }
                  _loc18_ = _loc5_.aabb;
                  _loc19_ = _loc7_.aabb;
                  if(_loc19_.minx < _loc18_.minx)
                  {
                     _loc18_.minx = _loc19_.minx;
                  }
                  if(_loc19_.maxx > _loc18_.maxx)
                  {
                     _loc18_.maxx = _loc19_.maxx;
                  }
                  if(_loc19_.miny < _loc18_.miny)
                  {
                     _loc18_.miny = _loc19_.miny;
                  }
                  if(_loc19_.maxy > _loc18_.maxy)
                  {
                     _loc18_.maxy = _loc19_.maxy;
                  }
                  _loc6_ = _loc6_.next;
               }
            }
            _loc5_.validate_gravMass();
            _loc5_.validate_worldCOM();
            if(_loc5_.zip_axis)
            {
               _loc5_.zip_axis = false;
               _loc5_.axisx = Math.sin(_loc5_.rot);
               _loc5_.axisy = Math.cos(_loc5_.rot);
               null;
            }
            _loc6_ = _loc5_.shapes.head;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.elt;
               if(_loc7_.type == ZPP_Flags.id_ShapeType_POLYGON)
               {
                  _loc9_ = _loc7_.polygon;
                  if(_loc9_.zip_gaxi)
                  {
                     if(_loc9_.body != null)
                     {
                        _loc9_.zip_gaxi = false;
                        _loc9_.validate_laxi();
                        _loc17_ = _loc9_.body;
                        if(_loc17_.zip_axis)
                        {
                           _loc17_.zip_axis = false;
                           _loc17_.axisx = Math.sin(_loc17_.rot);
                           _loc17_.axisy = Math.cos(_loc17_.rot);
                           null;
                        }
                        _loc20_ = _loc9_.edges.head;
                        _loc11_ = _loc9_.gverts.next;
                        _loc12_ = _loc11_;
                        _loc11_ = _loc11_.next;
                        while(_loc11_ != null)
                        {
                           _loc13_ = _loc11_;
                           _loc21_ = _loc20_.elt;
                           _loc20_ = _loc20_.next;
                           _loc21_.gp0 = _loc12_;
                           _loc21_.gp1 = _loc13_;
                           _loc21_.gnormx = _loc9_.body.axisy * _loc21_.lnormx - _loc9_.body.axisx * _loc21_.lnormy;
                           _loc21_.gnormy = _loc21_.lnormx * _loc9_.body.axisx + _loc21_.lnormy * _loc9_.body.axisy;
                           _loc21_.gprojection = (_loc9_.body.posx * _loc21_.gnormx + _loc9_.body.posy * _loc21_.gnormy) + _loc21_.lprojection;
                           if(_loc21_.wrap_gnorm != null)
                           {
                              _loc21_.wrap_gnorm.zpp_inner.x = _loc21_.gnormx;
                              _loc21_.wrap_gnorm.zpp_inner.y = _loc21_.gnormy;
                           }
                           _loc21_.tp0 = _loc21_.gp0.y * _loc21_.gnormx - _loc21_.gp0.x * _loc21_.gnormy;
                           _loc21_.tp1 = _loc21_.gp1.y * _loc21_.gnormx - _loc21_.gp1.x * _loc21_.gnormy;
                           _loc12_ = _loc13_;
                           _loc11_ = _loc11_.next;
                        }
                        _loc13_ = _loc9_.gverts.next;
                        _loc21_ = _loc20_.elt;
                        _loc20_ = _loc20_.next;
                        _loc21_.gp0 = _loc12_;
                        _loc21_.gp1 = _loc13_;
                        _loc21_.gnormx = _loc9_.body.axisy * _loc21_.lnormx - _loc9_.body.axisx * _loc21_.lnormy;
                        _loc21_.gnormy = _loc21_.lnormx * _loc9_.body.axisx + _loc21_.lnormy * _loc9_.body.axisy;
                        _loc21_.gprojection = (_loc9_.body.posx * _loc21_.gnormx + _loc9_.body.posy * _loc21_.gnormy) + _loc21_.lprojection;
                        if(_loc21_.wrap_gnorm != null)
                        {
                           _loc21_.wrap_gnorm.zpp_inner.x = _loc21_.gnormx;
                           _loc21_.wrap_gnorm.zpp_inner.y = _loc21_.gnormy;
                        }
                        _loc21_.tp0 = _loc21_.gp0.y * _loc21_.gnormx - _loc21_.gp0.x * _loc21_.gnormy;
                        _loc21_.tp1 = _loc21_.gp1.y * _loc21_.gnormx - _loc21_.gp1.x * _loc21_.gnormy;
                     }
                  }
               }
               _loc6_ = _loc6_.next;
            }
            if(_loc5_.component.woken)
            {
               false;
            }
            if(false)
            {
               _loc22_ = _loc5_.cbSet.bodylisteners.head;
               while(_loc22_ != null)
               {
                  _loc23_ = _loc22_.elt;
                  if(_loc23_.event != ZPP_Flags.id_CbEvent_WAKE)
                  {
                     _loc22_ = _loc22_.next;
                  }
                  else
                  {
                     _loc24_ = push_callback(_loc23_);
                     _loc24_.event = ZPP_Flags.id_CbEvent_WAKE;
                     _loc24_.body = _loc5_;
                     _loc22_ = _loc22_.next;
                  }
               }
            }
            _loc5_.component.woken = false;
            if(!bphase.is_sweep)
            {
               _loc6_ = _loc5_.shapes.head;
               while(_loc6_ != null)
               {
                  _loc7_ = _loc6_.elt;
                  bphase.sync(_loc7_);
                  _loc6_ = _loc6_.next;
               }
            }
            _loc4_ = _loc4_.next;
         }
         _loc4_ = kinematics.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            _loc5_.validate_mass();
            _loc5_.validate_inertia();
            if(_loc5_.zip_aabb)
            {
               _loc5_.zip_aabb = false;
               _loc5_.aabb.minx = 1.79E308;
               _loc5_.aabb.miny = 1.79E308;
               _loc5_.aabb.maxx = -1.79E308;
               _loc5_.aabb.maxy = -1.79E308;
               _loc6_ = _loc5_.shapes.head;
               while(_loc6_ != null)
               {
                  _loc7_ = _loc6_.elt;
                  if(_loc7_.zip_aabb)
                  {
                     if(_loc7_.body != null)
                     {
                        _loc7_.zip_aabb = false;
                        if(_loc7_.type == ZPP_Flags.id_ShapeType_CIRCLE)
                        {
                           _loc8_ = _loc7_.circle;
                           if(_loc8_.zip_worldCOM)
                           {
                              if(_loc8_.body != null)
                              {
                                 _loc8_.zip_worldCOM = false;
                                 if(_loc8_.zip_localCOM)
                                 {
                                    _loc8_.zip_localCOM = false;
                                    if(_loc8_.type == ZPP_Flags.id_ShapeType_POLYGON)
                                    {
                                       _loc9_ = _loc8_.polygon;
                                       if(_loc9_.lverts.next.next == null)
                                       {
                                          _loc9_.localCOMx = _loc9_.lverts.next.x;
                                          _loc9_.localCOMy = _loc9_.lverts.next.y;
                                          null;
                                       }
                                       else if(_loc9_.lverts.next.next.next == null)
                                       {
                                          _loc9_.localCOMx = _loc9_.lverts.next.x;
                                          _loc9_.localCOMy = _loc9_.lverts.next.y;
                                          _loc10_ = 1.0;
                                          _loc9_.localCOMx = _loc9_.localCOMx + _loc9_.lverts.next.next.x * _loc10_;
                                          _loc9_.localCOMy = _loc9_.localCOMy + _loc9_.lverts.next.next.y * _loc10_;
                                          _loc10_ = 0.5;
                                          _loc9_.localCOMx = _loc9_.localCOMx * _loc10_;
                                          _loc9_.localCOMy = _loc9_.localCOMy * _loc10_;
                                       }
                                       else
                                       {
                                          _loc9_.localCOMx = 0;
                                          _loc9_.localCOMy = 0;
                                          _loc10_ = 0.0;
                                          _loc11_ = _loc9_.lverts.next;
                                          _loc12_ = _loc11_;
                                          _loc11_ = _loc11_.next;
                                          _loc13_ = _loc11_;
                                          _loc11_ = _loc11_.next;
                                          while(_loc11_ != null)
                                          {
                                             _loc14_ = _loc11_;
                                             _loc10_ = _loc10_ + _loc13_.x * (_loc14_.y - _loc12_.y);
                                             _loc15_ = _loc14_.y * _loc13_.x - _loc14_.x * _loc13_.y;
                                             _loc9_.localCOMx = _loc9_.localCOMx + (_loc13_.x + _loc14_.x) * _loc15_;
                                             _loc9_.localCOMy = _loc9_.localCOMy + (_loc13_.y + _loc14_.y) * _loc15_;
                                             _loc12_ = _loc13_;
                                             _loc13_ = _loc14_;
                                             _loc11_ = _loc11_.next;
                                          }
                                          _loc11_ = _loc9_.lverts.next;
                                          _loc14_ = _loc11_;
                                          _loc10_ = _loc10_ + _loc13_.x * (_loc14_.y - _loc12_.y);
                                          _loc15_ = _loc14_.y * _loc13_.x - _loc14_.x * _loc13_.y;
                                          _loc9_.localCOMx = _loc9_.localCOMx + (_loc13_.x + _loc14_.x) * _loc15_;
                                          _loc9_.localCOMy = _loc9_.localCOMy + (_loc13_.y + _loc14_.y) * _loc15_;
                                          _loc12_ = _loc13_;
                                          _loc13_ = _loc14_;
                                          _loc11_ = _loc11_.next;
                                          _loc16_ = _loc11_;
                                          _loc10_ = _loc10_ + _loc13_.x * (_loc16_.y - _loc12_.y);
                                          _loc15_ = _loc16_.y * _loc13_.x - _loc16_.x * _loc13_.y;
                                          _loc9_.localCOMx = _loc9_.localCOMx + (_loc13_.x + _loc16_.x) * _loc15_;
                                          _loc9_.localCOMy = _loc9_.localCOMy + (_loc13_.y + _loc16_.y) * _loc15_;
                                          _loc10_ = 1 / (3 * _loc10_);
                                          _loc15_ = _loc10_;
                                          _loc9_.localCOMx = _loc9_.localCOMx * _loc15_;
                                          _loc9_.localCOMy = _loc9_.localCOMy * _loc15_;
                                       }
                                       
                                    }
                                    if(_loc8_.wrap_localCOM != null)
                                    {
                                       _loc8_.wrap_localCOM.zpp_inner.x = _loc8_.localCOMx;
                                       _loc8_.wrap_localCOM.zpp_inner.y = _loc8_.localCOMy;
                                    }
                                 }
                                 _loc17_ = _loc8_.body;
                                 if(_loc17_.zip_axis)
                                 {
                                    _loc17_.zip_axis = false;
                                    _loc17_.axisx = Math.sin(_loc17_.rot);
                                    _loc17_.axisy = Math.cos(_loc17_.rot);
                                    null;
                                 }
                                 _loc8_.worldCOMx = _loc8_.body.posx + (_loc8_.body.axisy * _loc8_.localCOMx - _loc8_.body.axisx * _loc8_.localCOMy);
                                 _loc8_.worldCOMy = _loc8_.body.posy + (_loc8_.localCOMx * _loc8_.body.axisx + _loc8_.localCOMy * _loc8_.body.axisy);
                                 if(_loc8_.wrap_worldCOM != null)
                                 {
                                    _loc8_.wrap_worldCOM.zpp_inner.x = _loc8_.worldCOMx;
                                    _loc8_.wrap_worldCOM.zpp_inner.y = _loc8_.worldCOMy;
                                 }
                              }
                           }
                           _loc10_ = _loc8_.radius;
                           _loc15_ = _loc8_.radius;
                           _loc8_.aabb.minx = _loc8_.worldCOMx - _loc10_;
                           _loc8_.aabb.miny = _loc8_.worldCOMy - _loc15_;
                           _loc8_.aabb.maxx = _loc8_.worldCOMx + _loc10_;
                           _loc8_.aabb.maxy = _loc8_.worldCOMy + _loc15_;
                        }
                        else
                        {
                           _loc9_ = _loc7_.polygon;
                           if(_loc9_.zip_gverts)
                           {
                              if(_loc9_.body != null)
                              {
                                 _loc9_.zip_gverts = false;
                                 _loc9_.validate_lverts();
                                 _loc17_ = _loc9_.body;
                                 if(_loc17_.zip_axis)
                                 {
                                    _loc17_.zip_axis = false;
                                    _loc17_.axisx = Math.sin(_loc17_.rot);
                                    _loc17_.axisy = Math.cos(_loc17_.rot);
                                    null;
                                 }
                                 _loc11_ = _loc9_.lverts.next;
                                 _loc12_ = _loc9_.gverts.next;
                                 while(_loc12_ != null)
                                 {
                                    _loc13_ = _loc12_;
                                    _loc14_ = _loc11_;
                                    _loc11_ = _loc11_.next;
                                    _loc13_.x = _loc9_.body.posx + (_loc9_.body.axisy * _loc14_.x - _loc9_.body.axisx * _loc14_.y);
                                    _loc13_.y = _loc9_.body.posy + (_loc14_.x * _loc9_.body.axisx + _loc14_.y * _loc9_.body.axisy);
                                    _loc12_ = _loc12_.next;
                                 }
                              }
                           }
                           _loc11_ = _loc9_.gverts.next;
                           _loc9_.aabb.minx = _loc11_.x;
                           _loc9_.aabb.miny = _loc11_.y;
                           _loc9_.aabb.maxx = _loc11_.x;
                           _loc9_.aabb.maxy = _loc11_.y;
                           _loc12_ = _loc9_.gverts.next.next;
                           while(_loc12_ != null)
                           {
                              _loc13_ = _loc12_;
                              if(_loc13_.x < _loc9_.aabb.minx)
                              {
                                 _loc9_.aabb.minx = _loc13_.x;
                              }
                              if(_loc13_.x > _loc9_.aabb.maxx)
                              {
                                 _loc9_.aabb.maxx = _loc13_.x;
                              }
                              if(_loc13_.y < _loc9_.aabb.miny)
                              {
                                 _loc9_.aabb.miny = _loc13_.y;
                              }
                              if(_loc13_.y > _loc9_.aabb.maxy)
                              {
                                 _loc9_.aabb.maxy = _loc13_.y;
                              }
                              _loc12_ = _loc12_.next;
                           }
                        }
                     }
                  }
                  _loc18_ = _loc5_.aabb;
                  _loc19_ = _loc7_.aabb;
                  if(_loc19_.minx < _loc18_.minx)
                  {
                     _loc18_.minx = _loc19_.minx;
                  }
                  if(_loc19_.maxx > _loc18_.maxx)
                  {
                     _loc18_.maxx = _loc19_.maxx;
                  }
                  if(_loc19_.miny < _loc18_.miny)
                  {
                     _loc18_.miny = _loc19_.miny;
                  }
                  if(_loc19_.maxy > _loc18_.maxy)
                  {
                     _loc18_.maxy = _loc19_.maxy;
                  }
                  _loc6_ = _loc6_.next;
               }
            }
            _loc5_.validate_gravMass();
            _loc5_.validate_worldCOM();
            if(_loc5_.zip_axis)
            {
               _loc5_.zip_axis = false;
               _loc5_.axisx = Math.sin(_loc5_.rot);
               _loc5_.axisy = Math.cos(_loc5_.rot);
               null;
            }
            _loc6_ = _loc5_.shapes.head;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.elt;
               if(_loc7_.type == ZPP_Flags.id_ShapeType_POLYGON)
               {
                  _loc9_ = _loc7_.polygon;
                  if(_loc9_.zip_gaxi)
                  {
                     if(_loc9_.body != null)
                     {
                        _loc9_.zip_gaxi = false;
                        _loc9_.validate_laxi();
                        _loc17_ = _loc9_.body;
                        if(_loc17_.zip_axis)
                        {
                           _loc17_.zip_axis = false;
                           _loc17_.axisx = Math.sin(_loc17_.rot);
                           _loc17_.axisy = Math.cos(_loc17_.rot);
                           null;
                        }
                        _loc20_ = _loc9_.edges.head;
                        _loc11_ = _loc9_.gverts.next;
                        _loc12_ = _loc11_;
                        _loc11_ = _loc11_.next;
                        while(_loc11_ != null)
                        {
                           _loc13_ = _loc11_;
                           _loc21_ = _loc20_.elt;
                           _loc20_ = _loc20_.next;
                           _loc21_.gp0 = _loc12_;
                           _loc21_.gp1 = _loc13_;
                           _loc21_.gnormx = _loc9_.body.axisy * _loc21_.lnormx - _loc9_.body.axisx * _loc21_.lnormy;
                           _loc21_.gnormy = _loc21_.lnormx * _loc9_.body.axisx + _loc21_.lnormy * _loc9_.body.axisy;
                           _loc21_.gprojection = (_loc9_.body.posx * _loc21_.gnormx + _loc9_.body.posy * _loc21_.gnormy) + _loc21_.lprojection;
                           if(_loc21_.wrap_gnorm != null)
                           {
                              _loc21_.wrap_gnorm.zpp_inner.x = _loc21_.gnormx;
                              _loc21_.wrap_gnorm.zpp_inner.y = _loc21_.gnormy;
                           }
                           _loc21_.tp0 = _loc21_.gp0.y * _loc21_.gnormx - _loc21_.gp0.x * _loc21_.gnormy;
                           _loc21_.tp1 = _loc21_.gp1.y * _loc21_.gnormx - _loc21_.gp1.x * _loc21_.gnormy;
                           _loc12_ = _loc13_;
                           _loc11_ = _loc11_.next;
                        }
                        _loc13_ = _loc9_.gverts.next;
                        _loc21_ = _loc20_.elt;
                        _loc20_ = _loc20_.next;
                        _loc21_.gp0 = _loc12_;
                        _loc21_.gp1 = _loc13_;
                        _loc21_.gnormx = _loc9_.body.axisy * _loc21_.lnormx - _loc9_.body.axisx * _loc21_.lnormy;
                        _loc21_.gnormy = _loc21_.lnormx * _loc9_.body.axisx + _loc21_.lnormy * _loc9_.body.axisy;
                        _loc21_.gprojection = (_loc9_.body.posx * _loc21_.gnormx + _loc9_.body.posy * _loc21_.gnormy) + _loc21_.lprojection;
                        if(_loc21_.wrap_gnorm != null)
                        {
                           _loc21_.wrap_gnorm.zpp_inner.x = _loc21_.gnormx;
                           _loc21_.wrap_gnorm.zpp_inner.y = _loc21_.gnormy;
                        }
                        _loc21_.tp0 = _loc21_.gp0.y * _loc21_.gnormx - _loc21_.gp0.x * _loc21_.gnormy;
                        _loc21_.tp1 = _loc21_.gp1.y * _loc21_.gnormx - _loc21_.gp1.x * _loc21_.gnormy;
                     }
                  }
               }
               _loc6_ = _loc6_.next;
            }
            if(!bphase.is_sweep)
            {
               _loc6_ = _loc5_.shapes.head;
               while(_loc6_ != null)
               {
                  _loc7_ = _loc6_.elt;
                  bphase.sync(_loc7_);
                  _loc6_ = _loc6_.next;
               }
            }
            _loc4_ = _loc4_.next;
         }
         var _loc25_:ZNPNode_ZPP_Constraint = live_constraints.head;
         while(_loc25_ != null)
         {
            _loc26_ = _loc25_.elt;
            if(_loc26_.active)
            {
               if(_loc26_.component.woken)
               {
                  false;
               }
               if(false)
               {
                  _loc27_ = _loc26_.cbSet.conlisteners.head;
                  while(_loc27_ != null)
                  {
                     _loc28_ = _loc27_.elt;
                     if(_loc28_.event != ZPP_Flags.id_CbEvent_WAKE)
                     {
                        _loc27_ = _loc27_.next;
                     }
                     else
                     {
                        _loc24_ = push_callback(_loc28_);
                        _loc24_.event = ZPP_Flags.id_CbEvent_WAKE;
                        _loc24_.constraint = _loc26_;
                        _loc27_ = _loc27_.next;
                     }
                  }
               }
               _loc26_.component.woken = false;
            }
            _loc25_ = _loc25_.next;
         }
      }
      
      public var userData;
      
      public function updateVel(param1:Number) : void
      {
         var _loc4_:* = null as ZPP_Body;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc2_:ZNPNode_ZPP_Body = null;
         var _loc3_:ZNPNode_ZPP_Body = live.head;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.elt;
            _loc5_ = _loc4_.gravMass;
            _loc4_.forcex = _loc4_.forcex + gravityx * _loc5_;
            _loc4_.forcey = _loc4_.forcey + gravityy * _loc5_;
            _loc5_ = -global_lin_drag * _loc4_.mass;
            _loc4_.forcex = _loc4_.forcex + _loc4_.velx * _loc5_;
            _loc4_.forcey = _loc4_.forcey + _loc4_.vely * _loc5_;
            if(_loc4_.smass != 0.0)
            {
               _loc5_ = param1 * _loc4_.imass;
               _loc4_.velx = _loc4_.velx + _loc4_.forcex * _loc5_;
               _loc4_.vely = _loc4_.vely + _loc4_.forcey * _loc5_;
            }
            _loc4_.forcex = 0;
            _loc4_.forcey = 0;
            if(_loc4_.sinertia != 0.0)
            {
               _loc5_ = _loc4_.worldCOMx - _loc4_.posx;
               _loc6_ = _loc4_.worldCOMy - _loc4_.posy;
               _loc4_.torque = _loc4_.torque + (gravityy * _loc5_ - gravityx * _loc6_) * _loc4_.gravMass;
               _loc4_.torque = _loc4_.torque - _loc4_.angvel * global_ang_drag * _loc4_.inertia;
               _loc4_.angvel = _loc4_.angvel + _loc4_.torque * param1 * _loc4_.iinertia;
            }
            _loc4_.torque = 0;
            _loc2_ = _loc3_;
            _loc3_ = _loc3_.next;
         }
      }
      
      public function updatePos(param1:Number) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:ZNPNode_ZPP_Body = live.head;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.elt;
            _loc4_ = param1;
            _loc3_.posx = _loc3_.posx + _loc3_.velx * _loc4_;
            _loc3_.posy = _loc3_.posy + _loc3_.vely * _loc4_;
            if(_loc3_.angvel != 0)
            {
               _loc4_ = _loc3_.angvel * param1;
               _loc3_.rot = _loc3_.rot + _loc4_;
               if(_loc4_ * _loc4_ > 1.0E-4)
               {
                  _loc3_.axisx = Math.sin(_loc3_.rot);
                  _loc3_.axisy = Math.cos(_loc3_.rot);
                  null;
               }
               else
               {
                  _loc5_ = _loc4_ * _loc4_;
                  _loc6_ = 1 - 0.5 * _loc5_;
                  _loc7_ = 1 - _loc5_ * _loc5_ / 8;
                  _loc8_ = (_loc6_ * _loc3_.axisx + _loc4_ * _loc3_.axisy) * _loc7_;
                  _loc3_.axisy = (_loc6_ * _loc3_.axisy - _loc4_ * _loc3_.axisx) * _loc7_;
                  _loc3_.axisx = _loc8_;
               }
            }
            _loc2_ = _loc2_.next;
         }
         _loc2_ = kinematics.head;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.elt;
            _loc4_ = param1;
            _loc3_.posx = _loc3_.posx + _loc3_.velx * _loc4_;
            _loc3_.posy = _loc3_.posy + _loc3_.vely * _loc4_;
            if(_loc3_.angvel != 0)
            {
               _loc4_ = _loc3_.angvel * param1;
               _loc3_.rot = _loc3_.rot + _loc4_;
               if(_loc4_ * _loc4_ > 1.0E-4)
               {
                  _loc3_.axisx = Math.sin(_loc3_.rot);
                  _loc3_.axisy = Math.cos(_loc3_.rot);
                  null;
               }
               else
               {
                  _loc5_ = _loc4_ * _loc4_;
                  _loc6_ = 1 - 0.5 * _loc5_;
                  _loc7_ = 1 - _loc5_ * _loc5_ / 8;
                  _loc8_ = (_loc6_ * _loc3_.axisx + _loc4_ * _loc3_.axisy) * _loc7_;
                  _loc3_.axisy = (_loc6_ * _loc3_.axisy - _loc4_ * _loc3_.axisx) * _loc7_;
                  _loc3_.axisx = _loc8_;
               }
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function transmitType(param1:ZPP_Body, param2:int) : void
      {
         var _loc3_:ZPP_Body = param1;
         if(!_loc3_.world)
         {
            _loc3_.component.waket = stamp + (midstep?0:1);
            if(_loc3_.component.sleeping)
            {
               really_wake(_loc3_,false);
            }
         }
         if(param1.type == ZPP_Flags.id_BodyType_DYNAMIC)
         {
            live.remove(param1);
         }
         else if(param1.type == ZPP_Flags.id_BodyType_KINEMATIC)
         {
            kinematics.remove(param1);
            staticsleep.remove(param1);
         }
         else if(param1.type == ZPP_Flags.id_BodyType_STATIC)
         {
            staticsleep.remove(param1);
         }
         
         
         param1.type = param2;
         if(param1.type == ZPP_Flags.id_BodyType_KINEMATIC)
         {
            kinematics.add(param1);
         }
         if(param1.type == ZPP_Flags.id_BodyType_STATIC)
         {
            static_validation(param1);
         }
         param1.component.sleeping = true;
         _loc3_ = param1;
         if(!_loc3_.world)
         {
            _loc3_.component.waket = stamp + (midstep?0:1);
            if(_loc3_.component.sleeping)
            {
               really_wake(_loc3_,true);
            }
         }
      }
      
      public var time:Number;
      
      public function step(param1:Number, param2:int, param3:int) : void
      {
         var _loc7_:* = null as ZNPList_ZPP_ColArbiter;
         var _loc8_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc9_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc10_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc11_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc12_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc18_:* = null as ZPP_Body;
         var _loc19_:* = false;
         var _loc20_:* = false;
         var _loc21_:* = false;
         var _loc22_:* = null as ZNPNode_ZPP_Shape;
         var _loc23_:* = null as ZPP_Shape;
         var _loc25_:* = null as ZNPList_ZPP_Body;
         var _loc26_:* = null as ZNPNode_ZPP_Body;
         var _loc27_:* = null as ZNPNode_ZPP_Body;
         var _loc28_:* = null as ZNPNode_ZPP_Body;
         var _loc31_:* = null as ZPP_CallbackSet;
         var _loc32_:* = null as ZPP_CallbackSet;
         var _loc33_:* = null as ZPP_CallbackSet;
         var _loc34_:* = null as ZPP_CallbackSet;
         var _loc35_:* = null as ZPP_Interactor;
         var _loc36_:* = null as ZPP_CbSet;
         var _loc37_:* = null as ZPP_CbSet;
         var _loc38_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc39_:* = null as ZPP_CbSetPair;
         var _loc40_:* = null as ZNPList_ZPP_CbSetPair;
         var _loc41_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc42_:* = null as ZPP_CbSetPair;
         var _loc43_:* = null as ZPP_InteractionListener;
         var _loc44_:* = null as ZPP_Callback;
         var _loc45_:* = null as ZPP_Interactor;
         var _loc46_:* = null as ZPP_OptionType;
         var _loc47_:* = null as ZNPList_ZPP_CbType;
         var _loc48_:* = null as ZPP_BodyListener;
         var _loc49_:* = null as ZPP_ConstraintListener;
         var _loc50_:* = null as ZPP_Callback;
         var _loc4_:ZPP_Space = this;
         time = time + param1;
         pre_dt = param1;
         midstep = true;
         var _loc5_:* = param2 >> 1;
         var _loc6_:* = param2 - _loc5_;
         stamp = stamp + 1;
         validation();
         bphase.broadphase();
         doForests(param1);
         prestep(param1);
         if(sortcontacts)
         {
            _loc7_ = c_arbiters_false;
            if(_loc7_.head != null)
            {
               false;
            }
            if(false)
            {
               _loc8_ = _loc7_.head;
               _loc9_ = null;
               _loc10_ = null;
               _loc11_ = null;
               _loc12_ = null;
               _loc13_ = 1;
               do
               {
                  _loc14_ = 0;
                  _loc10_ = _loc8_;
                  _loc8_ = null;
                  _loc9_ = _loc8_;
                  while(_loc10_ != null)
                  {
                     _loc14_++;
                     _loc11_ = _loc10_;
                     _loc15_ = 0;
                     _loc16_ = _loc13_;
                     while(true)
                     {
                        if(_loc11_ != null)
                        {
                           false;
                        }
                        if(!false)
                        {
                           break;
                        }
                        _loc15_++;
                        _loc11_ = _loc11_.next;
                     }
                     while(true)
                     {
                        if(_loc15_ <= 0)
                        {
                           true;
                           if(_loc16_ > 0)
                           {
                              false;
                           }
                        }
                        if(!true)
                        {
                           break;
                        }
                        if(_loc15_ == 0)
                        {
                           _loc12_ = _loc11_;
                           _loc11_ = _loc11_.next;
                           _loc16_--;
                        }
                        else
                        {
                           if(_loc16_ != 0)
                           {
                              true;
                           }
                           if(true)
                           {
                              _loc12_ = _loc10_;
                              _loc10_ = _loc10_.next;
                              _loc15_--;
                           }
                           else
                           {
                              if(_loc10_.elt.active)
                              {
                                 false;
                              }
                              if(false?_loc10_.elt.oc1.dist < _loc11_.elt.oc1.dist:true)
                              {
                                 _loc12_ = _loc10_;
                                 _loc10_ = _loc10_.next;
                                 _loc15_--;
                              }
                              else
                              {
                                 _loc12_ = _loc11_;
                                 _loc11_ = _loc11_.next;
                                 _loc16_--;
                              }
                           }
                        }
                        if(_loc9_ != null)
                        {
                           _loc9_.next = _loc12_;
                        }
                        else
                        {
                           _loc8_ = _loc12_;
                        }
                        _loc9_ = _loc12_;
                     }
                     _loc10_ = _loc11_;
                  }
                  _loc9_.next = null;
                  _loc13_ = _loc13_ << 1;
               }
               while(_loc14_ > 1);
               
               _loc7_.head = _loc8_;
               _loc7_.modified = true;
               _loc7_.pushmod = true;
            }
         }
         iterateVel(_loc5_,true);
         updateVel(param1);
         warmStart();
         iterateVel(_loc6_,false);
         var _loc17_:ZNPNode_ZPP_Body = kinematics.head;
         while(_loc17_ != null)
         {
            _loc18_ = _loc17_.elt;
            _loc18_.pre_posx = _loc18_.posx;
            _loc18_.pre_posy = _loc18_.posy;
            _loc18_.pre_rot = _loc18_.rot;
            _loc17_ = _loc17_.next;
         }
         _loc17_ = live.head;
         while(_loc17_ != null)
         {
            _loc18_ = _loc17_.elt;
            _loc18_.pre_posx = _loc18_.posx;
            _loc18_.pre_posy = _loc18_.posy;
            _loc18_.pre_rot = _loc18_.rot;
            _loc17_ = _loc17_.next;
         }
         updatePos(param1);
         iteratePos(param3);
         _loc17_ = kinematics.head;
         while(_loc17_ != null)
         {
            _loc18_ = _loc17_.elt;
            if(_loc18_.posx == _loc18_.pre_posx)
            {
               false;
            }
            _loc19_ = !false;
            _loc20_ = !(_loc18_.pre_rot == _loc18_.rot);
            if(_loc19_)
            {
               _loc21_ = false;
               _loc22_ = _loc18_.shapes.head;
               while(_loc22_ != null)
               {
                  _loc23_ = _loc22_.elt;
                  if(_loc23_.type == ZPP_Flags.id_ShapeType_POLYGON)
                  {
                     _loc23_.polygon.invalidate_gverts();
                     _loc23_.polygon.invalidate_gaxi();
                  }
                  _loc23_.invalidate_worldCOM();
                  _loc22_ = _loc22_.next;
               }
               _loc18_.invalidate_worldCOM();
               if(!_loc21_)
               {
                  _loc18_.validate_graphic();
               }
            }
            _loc18_.pre_posx = _loc18_.posx;
            _loc18_.pre_posy = _loc18_.posy;
            if(_loc20_)
            {
               _loc18_.zip_axis = true;
               _loc22_ = _loc18_.shapes.head;
               while(_loc22_ != null)
               {
                  _loc23_ = _loc22_.elt;
                  if(_loc23_.type == ZPP_Flags.id_ShapeType_POLYGON)
                  {
                     _loc23_.polygon.invalidate_gverts();
                     _loc23_.polygon.invalidate_gaxi();
                  }
                  _loc23_.invalidate_worldCOM();
                  _loc22_ = _loc22_.next;
               }
               _loc18_.invalidate_worldCOM();
               if(!_loc19_)
               {
                  _loc18_.validate_graphic();
               }
            }
            _loc18_.pre_rot = _loc18_.rot;
            if(!_loc20_)
            {
               true;
            }
            if(true)
            {
               _loc18_.validate_graphic();
            }
            _loc17_ = _loc17_.next;
         }
         _loc17_ = live.head;
         while(_loc17_ != null)
         {
            _loc18_ = _loc17_.elt;
            if(_loc18_.posx == _loc18_.pre_posx)
            {
               false;
            }
            _loc19_ = !false;
            _loc20_ = !(_loc18_.pre_rot == _loc18_.rot);
            if(_loc19_)
            {
               _loc21_ = false;
               _loc22_ = _loc18_.shapes.head;
               while(_loc22_ != null)
               {
                  _loc23_ = _loc22_.elt;
                  if(_loc23_.type == ZPP_Flags.id_ShapeType_POLYGON)
                  {
                     _loc23_.polygon.invalidate_gverts();
                     _loc23_.polygon.invalidate_gaxi();
                  }
                  _loc23_.invalidate_worldCOM();
                  _loc22_ = _loc22_.next;
               }
               _loc18_.invalidate_worldCOM();
               if(!_loc21_)
               {
                  _loc18_.validate_graphic();
               }
            }
            _loc18_.pre_posx = _loc18_.posx;
            _loc18_.pre_posy = _loc18_.posy;
            if(_loc20_)
            {
               _loc18_.zip_axis = true;
               _loc22_ = _loc18_.shapes.head;
               while(_loc22_ != null)
               {
                  _loc23_ = _loc22_.elt;
                  if(_loc23_.type == ZPP_Flags.id_ShapeType_POLYGON)
                  {
                     _loc23_.polygon.invalidate_gverts();
                     _loc23_.polygon.invalidate_gaxi();
                  }
                  _loc23_.invalidate_worldCOM();
                  _loc22_ = _loc22_.next;
               }
               _loc18_.invalidate_worldCOM();
               if(!_loc19_)
               {
                  _loc18_.validate_graphic();
               }
            }
            _loc18_.pre_rot = _loc18_.rot;
            if(!_loc20_)
            {
               true;
            }
            if(true)
            {
               _loc18_.validate_graphic();
            }
            _loc17_ = _loc17_.next;
         }
         _loc17_ = null;
         var _loc24_:ZNPNode_ZPP_Body = staticsleep.head;
         while(_loc24_ != null)
         {
            _loc18_ = _loc24_.elt;
            if(_loc18_.type == ZPP_Flags.id_BodyType_KINEMATIC)
            {
               true;
               if(_loc18_.velx == 0)
               {
                  false;
               }
               if(false)
               {
                  false;
               }
            }
            if(true)
            {
               _loc18_.component.sleeping = true;
               _loc25_ = staticsleep;
               if(_loc17_ == null)
               {
                  _loc26_ = _loc25_.head;
                  _loc27_ = _loc26_.next;
                  _loc25_.head = _loc27_;
                  if(_loc25_.head == null)
                  {
                     _loc25_.pushmod = true;
                  }
               }
               else
               {
                  _loc26_ = _loc17_.next;
                  _loc27_ = _loc26_.next;
                  _loc17_.next = _loc27_;
                  if(_loc27_ == null)
                  {
                     _loc25_.pushmod = true;
                  }
               }
               _loc28_ = _loc26_;
               _loc28_.elt = null;
               _loc28_.next = ZNPNode_ZPP_Body.zpp_pool;
               ZNPNode_ZPP_Body.zpp_pool = _loc28_;
               _loc25_.modified = true;
               _loc25_.length = _loc25_.length - 1;
               _loc25_.pushmod = true;
               _loc24_ = _loc27_;
            }
            else
            {
               _loc17_ = _loc24_;
               _loc24_ = _loc24_.next;
            }
         }
         midstep = false;
         var _loc29_:ZPP_CallbackSet = null;
         var _loc30_:ZPP_CallbackSet = callbackset_list.next;
         while(_loc30_ != null)
         {
            _loc31_ = _loc30_;
            if(_loc31_.arbiters.head == null)
            {
               _loc32_ = callbackset_list;
               if(_loc29_ == null)
               {
                  _loc33_ = _loc32_.next;
                  _loc34_ = _loc33_.next;
                  _loc32_.next = _loc34_;
                  if(_loc32_.next == null)
                  {
                     _loc32_.pushmod = true;
                  }
               }
               else
               {
                  _loc33_ = _loc29_.next;
                  _loc34_ = _loc33_.next;
                  _loc29_.next = _loc34_;
                  if(_loc34_ == null)
                  {
                     _loc32_.pushmod = true;
                  }
               }
               _loc33_._inuse = false;
               _loc32_.modified = true;
               _loc32_.length = _loc32_.length - 1;
               _loc32_.pushmod = true;
               _loc30_ = _loc34_;
               _loc32_ = _loc31_;
               _loc35_ = null;
               _loc32_.int2 = _loc35_;
               _loc32_.int1 = _loc35_;
               _loc13_ = -1;
               _loc32_.di = _loc13_;
               _loc32_.id = _loc13_;
               _loc32_.freed = true;
               null;
               _loc32_.next = ZPP_CallbackSet.zpp_pool;
               ZPP_CallbackSet.zpp_pool = _loc32_;
            }
            else
            {
               _loc36_ = _loc31_.int1.cbSet;
               _loc37_ = _loc31_.int2.cbSet;
               _loc13_ = ZPP_Flags.id_CbEvent_ONGOING;
               _loc39_ = null;
               _loc40_ = _loc36_.cbpairs.length < _loc37_.cbpairs.length?_loc36_.cbpairs:_loc37_.cbpairs;
               _loc41_ = _loc40_.head;
               while(_loc41_ != null)
               {
                  _loc42_ = _loc41_.elt;
                  if(_loc42_.a == _loc36_)
                  {
                     false;
                  }
                  if(!false)
                  {
                     true;
                     if(_loc42_.a == _loc37_)
                     {
                        false;
                     }
                  }
                  if(true)
                  {
                     _loc39_ = _loc42_;
                     break;
                  }
                  _loc41_ = _loc41_.next;
               }
               if(_loc39_ == null)
               {
                  if(ZPP_CbSetPair.zpp_pool == null)
                  {
                     _loc42_ = new ZPP_CbSetPair();
                  }
                  else
                  {
                     _loc42_ = ZPP_CbSetPair.zpp_pool;
                     ZPP_CbSetPair.zpp_pool = _loc42_.next;
                     _loc42_.next = null;
                  }
                  _loc42_.zip_listeners = true;
                  if(ZPP_CbSet.setlt(_loc36_,_loc37_))
                  {
                     _loc42_.a = _loc36_;
                     _loc42_.b = _loc37_;
                  }
                  else
                  {
                     _loc42_.a = _loc37_;
                     _loc42_.b = _loc36_;
                  }
                  _loc39_ = _loc42_;
                  _loc36_.cbpairs.add(_loc39_);
                  if(_loc37_ != _loc36_)
                  {
                     _loc37_.cbpairs.add(_loc39_);
                  }
               }
               if(_loc39_.zip_listeners)
               {
                  _loc39_.zip_listeners = false;
                  _loc39_.__validate();
               }
               _loc38_ = _loc39_.listeners.head;
               while(_loc38_ != null)
               {
                  _loc43_ = _loc38_.elt;
                  if(_loc43_.event == _loc13_)
                  {
                     if(!_loc31_.empty_arb(_loc43_.itype))
                     {
                        _loc44_ = _loc4_.push_callback(_loc43_);
                        _loc44_.event = ZPP_Flags.id_CbEvent_ONGOING;
                        _loc35_ = _loc31_.int1;
                        _loc45_ = _loc31_.int2;
                        _loc46_ = _loc43_.options1;
                        _loc47_ = _loc35_.cbTypes;
                        if(_loc46_.nonemptyintersection(_loc47_,_loc46_.includes))
                        {
                           false;
                        }
                        if(false)
                        {
                           false;
                           _loc46_ = _loc43_.options2;
                           _loc47_ = _loc45_.cbTypes;
                           if(_loc46_.nonemptyintersection(_loc47_,_loc46_.includes))
                           {
                              false;
                           }
                        }
                        if(false)
                        {
                           _loc44_.int1 = _loc35_;
                           _loc44_.int2 = _loc45_;
                        }
                        else
                        {
                           _loc44_.int1 = _loc45_;
                           _loc44_.int2 = _loc35_;
                        }
                        _loc44_.set = _loc31_;
                     }
                  }
                  _loc38_ = _loc38_.next;
               }
               _loc29_ = _loc30_;
               _loc30_ = _loc30_.next;
            }
         }
         while(!(callbacks.empty()))
         {
            _loc44_ = callbacks.pop();
            if(_loc44_.listener.type == ZPP_Flags.id_ListenerType_BODY)
            {
               _loc48_ = _loc44_.listener.body;
               _loc48_.handler(_loc44_.wrapper_body());
            }
            else if(_loc44_.listener.type == ZPP_Flags.id_ListenerType_CONSTRAINT)
            {
               _loc49_ = _loc44_.listener.constraint;
               _loc49_.handler(_loc44_.wrapper_con());
            }
            else if(_loc44_.listener.type == ZPP_Flags.id_ListenerType_INTERACTION)
            {
               _loc43_ = _loc44_.listener.interaction;
               _loc43_.handleri(_loc44_.wrapper_int());
            }
            
            
            _loc50_ = _loc44_;
            _loc35_ = null;
            _loc50_.int2 = _loc35_;
            _loc50_.int1 = _loc35_;
            _loc50_.body = null;
            _loc50_.constraint = null;
            _loc50_.listener = null;
            if(_loc50_.wrap_arbiters != null)
            {
               _loc50_.wrap_arbiters.zpp_inner.inner = null;
            }
            _loc50_.set = null;
            _loc50_.next = ZPP_Callback.zpp_pool;
            ZPP_Callback.zpp_pool = _loc50_;
         }
      }
      
      public var staticsleep:ZNPList_ZPP_Body;
      
      public function static_validation(param1:ZPP_Body) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_Shape;
         var _loc3_:* = null as ZPP_Shape;
         var _loc4_:* = null as ZPP_Circle;
         var _loc5_:* = null as ZPP_Polygon;
         var _loc6_:* = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = NaN;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = null as ZPP_Body;
         var _loc14_:* = null as ZPP_AABB;
         var _loc15_:* = null as ZPP_AABB;
         var _loc16_:* = null as ZNPNode_ZPP_Edge;
         var _loc17_:* = null as ZPP_Edge;
         if(param1.zip_aabb)
         {
            param1.zip_aabb = false;
            param1.aabb.minx = 1.79E308;
            param1.aabb.miny = 1.79E308;
            param1.aabb.maxx = -1.79E308;
            param1.aabb.maxy = -1.79E308;
            _loc2_ = param1.shapes.head;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.elt;
               if(_loc3_.zip_aabb)
               {
                  if(_loc3_.body != null)
                  {
                     _loc3_.zip_aabb = false;
                     if(_loc3_.type == ZPP_Flags.id_ShapeType_CIRCLE)
                     {
                        _loc4_ = _loc3_.circle;
                        if(_loc4_.zip_worldCOM)
                        {
                           if(_loc4_.body != null)
                           {
                              _loc4_.zip_worldCOM = false;
                              if(_loc4_.zip_localCOM)
                              {
                                 _loc4_.zip_localCOM = false;
                                 if(_loc4_.type == ZPP_Flags.id_ShapeType_POLYGON)
                                 {
                                    _loc5_ = _loc4_.polygon;
                                    if(_loc5_.lverts.next.next == null)
                                    {
                                       _loc5_.localCOMx = _loc5_.lverts.next.x;
                                       _loc5_.localCOMy = _loc5_.lverts.next.y;
                                       null;
                                    }
                                    else if(_loc5_.lverts.next.next.next == null)
                                    {
                                       _loc5_.localCOMx = _loc5_.lverts.next.x;
                                       _loc5_.localCOMy = _loc5_.lverts.next.y;
                                       _loc6_ = 1.0;
                                       _loc5_.localCOMx = _loc5_.localCOMx + _loc5_.lverts.next.next.x * _loc6_;
                                       _loc5_.localCOMy = _loc5_.localCOMy + _loc5_.lverts.next.next.y * _loc6_;
                                       _loc6_ = 0.5;
                                       _loc5_.localCOMx = _loc5_.localCOMx * _loc6_;
                                       _loc5_.localCOMy = _loc5_.localCOMy * _loc6_;
                                    }
                                    else
                                    {
                                       _loc5_.localCOMx = 0;
                                       _loc5_.localCOMy = 0;
                                       _loc6_ = 0.0;
                                       _loc7_ = _loc5_.lverts.next;
                                       _loc8_ = _loc7_;
                                       _loc7_ = _loc7_.next;
                                       _loc9_ = _loc7_;
                                       _loc7_ = _loc7_.next;
                                       while(_loc7_ != null)
                                       {
                                          _loc10_ = _loc7_;
                                          _loc6_ = _loc6_ + _loc9_.x * (_loc10_.y - _loc8_.y);
                                          _loc11_ = _loc10_.y * _loc9_.x - _loc10_.x * _loc9_.y;
                                          _loc5_.localCOMx = _loc5_.localCOMx + (_loc9_.x + _loc10_.x) * _loc11_;
                                          _loc5_.localCOMy = _loc5_.localCOMy + (_loc9_.y + _loc10_.y) * _loc11_;
                                          _loc8_ = _loc9_;
                                          _loc9_ = _loc10_;
                                          _loc7_ = _loc7_.next;
                                       }
                                       _loc7_ = _loc5_.lverts.next;
                                       _loc10_ = _loc7_;
                                       _loc6_ = _loc6_ + _loc9_.x * (_loc10_.y - _loc8_.y);
                                       _loc11_ = _loc10_.y * _loc9_.x - _loc10_.x * _loc9_.y;
                                       _loc5_.localCOMx = _loc5_.localCOMx + (_loc9_.x + _loc10_.x) * _loc11_;
                                       _loc5_.localCOMy = _loc5_.localCOMy + (_loc9_.y + _loc10_.y) * _loc11_;
                                       _loc8_ = _loc9_;
                                       _loc9_ = _loc10_;
                                       _loc7_ = _loc7_.next;
                                       _loc12_ = _loc7_;
                                       _loc6_ = _loc6_ + _loc9_.x * (_loc12_.y - _loc8_.y);
                                       _loc11_ = _loc12_.y * _loc9_.x - _loc12_.x * _loc9_.y;
                                       _loc5_.localCOMx = _loc5_.localCOMx + (_loc9_.x + _loc12_.x) * _loc11_;
                                       _loc5_.localCOMy = _loc5_.localCOMy + (_loc9_.y + _loc12_.y) * _loc11_;
                                       _loc6_ = 1 / (3 * _loc6_);
                                       _loc11_ = _loc6_;
                                       _loc5_.localCOMx = _loc5_.localCOMx * _loc11_;
                                       _loc5_.localCOMy = _loc5_.localCOMy * _loc11_;
                                    }
                                    
                                 }
                                 if(_loc4_.wrap_localCOM != null)
                                 {
                                    _loc4_.wrap_localCOM.zpp_inner.x = _loc4_.localCOMx;
                                    _loc4_.wrap_localCOM.zpp_inner.y = _loc4_.localCOMy;
                                 }
                              }
                              _loc13_ = _loc4_.body;
                              if(_loc13_.zip_axis)
                              {
                                 _loc13_.zip_axis = false;
                                 _loc13_.axisx = Math.sin(_loc13_.rot);
                                 _loc13_.axisy = Math.cos(_loc13_.rot);
                                 null;
                              }
                              _loc4_.worldCOMx = _loc4_.body.posx + (_loc4_.body.axisy * _loc4_.localCOMx - _loc4_.body.axisx * _loc4_.localCOMy);
                              _loc4_.worldCOMy = _loc4_.body.posy + (_loc4_.localCOMx * _loc4_.body.axisx + _loc4_.localCOMy * _loc4_.body.axisy);
                              if(_loc4_.wrap_worldCOM != null)
                              {
                                 _loc4_.wrap_worldCOM.zpp_inner.x = _loc4_.worldCOMx;
                                 _loc4_.wrap_worldCOM.zpp_inner.y = _loc4_.worldCOMy;
                              }
                           }
                        }
                        _loc6_ = _loc4_.radius;
                        _loc11_ = _loc4_.radius;
                        _loc4_.aabb.minx = _loc4_.worldCOMx - _loc6_;
                        _loc4_.aabb.miny = _loc4_.worldCOMy - _loc11_;
                        _loc4_.aabb.maxx = _loc4_.worldCOMx + _loc6_;
                        _loc4_.aabb.maxy = _loc4_.worldCOMy + _loc11_;
                     }
                     else
                     {
                        _loc5_ = _loc3_.polygon;
                        if(_loc5_.zip_gverts)
                        {
                           if(_loc5_.body != null)
                           {
                              _loc5_.zip_gverts = false;
                              _loc5_.validate_lverts();
                              _loc13_ = _loc5_.body;
                              if(_loc13_.zip_axis)
                              {
                                 _loc13_.zip_axis = false;
                                 _loc13_.axisx = Math.sin(_loc13_.rot);
                                 _loc13_.axisy = Math.cos(_loc13_.rot);
                                 null;
                              }
                              _loc7_ = _loc5_.lverts.next;
                              _loc8_ = _loc5_.gverts.next;
                              while(_loc8_ != null)
                              {
                                 _loc9_ = _loc8_;
                                 _loc10_ = _loc7_;
                                 _loc7_ = _loc7_.next;
                                 _loc9_.x = _loc5_.body.posx + (_loc5_.body.axisy * _loc10_.x - _loc5_.body.axisx * _loc10_.y);
                                 _loc9_.y = _loc5_.body.posy + (_loc10_.x * _loc5_.body.axisx + _loc10_.y * _loc5_.body.axisy);
                                 _loc8_ = _loc8_.next;
                              }
                           }
                        }
                        _loc7_ = _loc5_.gverts.next;
                        _loc5_.aabb.minx = _loc7_.x;
                        _loc5_.aabb.miny = _loc7_.y;
                        _loc5_.aabb.maxx = _loc7_.x;
                        _loc5_.aabb.maxy = _loc7_.y;
                        _loc8_ = _loc5_.gverts.next.next;
                        while(_loc8_ != null)
                        {
                           _loc9_ = _loc8_;
                           if(_loc9_.x < _loc5_.aabb.minx)
                           {
                              _loc5_.aabb.minx = _loc9_.x;
                           }
                           if(_loc9_.x > _loc5_.aabb.maxx)
                           {
                              _loc5_.aabb.maxx = _loc9_.x;
                           }
                           if(_loc9_.y < _loc5_.aabb.miny)
                           {
                              _loc5_.aabb.miny = _loc9_.y;
                           }
                           if(_loc9_.y > _loc5_.aabb.maxy)
                           {
                              _loc5_.aabb.maxy = _loc9_.y;
                           }
                           _loc8_ = _loc8_.next;
                        }
                     }
                  }
               }
               _loc14_ = param1.aabb;
               _loc15_ = _loc3_.aabb;
               if(_loc15_.minx < _loc14_.minx)
               {
                  _loc14_.minx = _loc15_.minx;
               }
               if(_loc15_.maxx > _loc14_.maxx)
               {
                  _loc14_.maxx = _loc15_.maxx;
               }
               if(_loc15_.miny < _loc14_.miny)
               {
                  _loc14_.miny = _loc15_.miny;
               }
               if(_loc15_.maxy > _loc14_.maxy)
               {
                  _loc14_.maxy = _loc15_.maxy;
               }
               _loc2_ = _loc2_.next;
            }
         }
         param1.validate_mass();
         param1.validate_inertia();
         _loc2_ = param1.shapes.head;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.elt;
            if(_loc3_.type == ZPP_Flags.id_ShapeType_POLYGON)
            {
               _loc5_ = _loc3_.polygon;
               if(_loc5_.zip_gaxi)
               {
                  if(_loc5_.body != null)
                  {
                     _loc5_.zip_gaxi = false;
                     _loc5_.validate_laxi();
                     _loc13_ = _loc5_.body;
                     if(_loc13_.zip_axis)
                     {
                        _loc13_.zip_axis = false;
                        _loc13_.axisx = Math.sin(_loc13_.rot);
                        _loc13_.axisy = Math.cos(_loc13_.rot);
                        null;
                     }
                     _loc16_ = _loc5_.edges.head;
                     _loc7_ = _loc5_.gverts.next;
                     _loc8_ = _loc7_;
                     _loc7_ = _loc7_.next;
                     while(_loc7_ != null)
                     {
                        _loc9_ = _loc7_;
                        _loc17_ = _loc16_.elt;
                        _loc16_ = _loc16_.next;
                        _loc17_.gp0 = _loc8_;
                        _loc17_.gp1 = _loc9_;
                        _loc17_.gnormx = _loc5_.body.axisy * _loc17_.lnormx - _loc5_.body.axisx * _loc17_.lnormy;
                        _loc17_.gnormy = _loc17_.lnormx * _loc5_.body.axisx + _loc17_.lnormy * _loc5_.body.axisy;
                        _loc17_.gprojection = (_loc5_.body.posx * _loc17_.gnormx + _loc5_.body.posy * _loc17_.gnormy) + _loc17_.lprojection;
                        if(_loc17_.wrap_gnorm != null)
                        {
                           _loc17_.wrap_gnorm.zpp_inner.x = _loc17_.gnormx;
                           _loc17_.wrap_gnorm.zpp_inner.y = _loc17_.gnormy;
                        }
                        _loc17_.tp0 = _loc17_.gp0.y * _loc17_.gnormx - _loc17_.gp0.x * _loc17_.gnormy;
                        _loc17_.tp1 = _loc17_.gp1.y * _loc17_.gnormx - _loc17_.gp1.x * _loc17_.gnormy;
                        _loc8_ = _loc9_;
                        _loc7_ = _loc7_.next;
                     }
                     _loc9_ = _loc5_.gverts.next;
                     _loc17_ = _loc16_.elt;
                     _loc16_ = _loc16_.next;
                     _loc17_.gp0 = _loc8_;
                     _loc17_.gp1 = _loc9_;
                     _loc17_.gnormx = _loc5_.body.axisy * _loc17_.lnormx - _loc5_.body.axisx * _loc17_.lnormy;
                     _loc17_.gnormy = _loc17_.lnormx * _loc5_.body.axisx + _loc17_.lnormy * _loc5_.body.axisy;
                     _loc17_.gprojection = (_loc5_.body.posx * _loc17_.gnormx + _loc5_.body.posy * _loc17_.gnormy) + _loc17_.lprojection;
                     if(_loc17_.wrap_gnorm != null)
                     {
                        _loc17_.wrap_gnorm.zpp_inner.x = _loc17_.gnormx;
                        _loc17_.wrap_gnorm.zpp_inner.y = _loc17_.gnormy;
                     }
                     _loc17_.tp0 = _loc17_.gp0.y * _loc17_.gnormx - _loc17_.gp0.x * _loc17_.gnormy;
                     _loc17_.tp1 = _loc17_.gp1.y * _loc17_.gnormx - _loc17_.gp1.x * _loc17_.gnormy;
                  }
               }
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public var stamp:int;
      
      public var sortcontacts:Boolean;
      
      public function shapesUnderPoint(param1:Number, param2:Number, param3:ZPP_InteractionFilter) : ShapeList
      {
         return bphase.shapesUnderPoint(param1,param2,param3);
      }
      
      public function shapesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter) : ShapeList
      {
         return bphase.shapesInShape(param1,param2,param3);
      }
      
      public function shapesInCircle(param1:Vec2, param2:Number, param3:Boolean, param4:ZPP_InteractionFilter) : ShapeList
      {
         var _loc5_:ZPP_Vec2 = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         return bphase.shapesInCircle(param1.zpp_inner.x,param1.zpp_inner.y,param2,param3,param4);
      }
      
      public function shapesInAABB(param1:AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter) : ShapeList
      {
         return bphase.shapesInAABB(param1.zpp_inner,param2,param3,param4);
      }
      
      public var s_arbiters:ZNPList_ZPP_SensorArbiter;
      
      public function removed_shape(param1:ZPP_Shape, param2:Boolean = false) : void
      {
         var _loc7_:* = null as ZPP_Arbiter;
         var _loc8_:* = false;
         var _loc9_:* = null as ZNPNode_ZPP_Interactor;
         var _loc10_:* = null as ZPP_Interactor;
         var _loc11_:* = null as ZNPNode_ZPP_Interactor;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZPP_CbSet;
         var _loc14_:* = null as ZPP_CbSet;
         var _loc15_:* = null as ZPP_CbSetPair;
         var _loc16_:* = null as ZNPList_ZPP_CbSetPair;
         var _loc17_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc18_:* = null as ZPP_CbSetPair;
         var _loc19_:* = null as ZPP_CallbackSet;
         var _loc20_:* = 0;
         var _loc21_:* = null as ZNPNode_ZPP_InteractionListener;
         var _loc22_:* = null as ZPP_InteractionListener;
         var _loc23_:* = null as ZPP_Callback;
         var _loc24_:* = null as ZPP_Interactor;
         var _loc25_:* = null as ZPP_Interactor;
         var _loc26_:* = null as ZPP_OptionType;
         var _loc27_:* = null as ZNPList_ZPP_CbType;
         var _loc28_:* = null as ZPP_Body;
         var _loc29_:* = null as ZNPList_ZPP_Arbiter;
         var _loc30_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc31_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc32_:* = false;
         var _loc33_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc34_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc35_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc3_:ZPP_Space = this;
         var _loc4_:ZPP_Body = param1.body;
         if(!param2)
         {
            _loc4_.wake();
         }
         var _loc5_:ZNPNode_ZPP_Arbiter = null;
         var _loc6_:ZNPNode_ZPP_Arbiter = _loc4_.arbiters.head;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.elt;
            if(_loc7_.ws1 != param1)
            {
               true;
            }
            _loc8_ = true;
            if(_loc8_)
            {
               if(_loc7_.present != 0)
               {
                  MRCA_chains(_loc7_.ws1,_loc7_.ws2);
                  _loc9_ = mrca1.head;
                  while(_loc9_ != null)
                  {
                     _loc10_ = _loc9_.elt;
                     _loc11_ = mrca2.head;
                     while(_loc11_ != null)
                     {
                        _loc12_ = _loc11_.elt;
                        _loc13_ = _loc10_.cbSet;
                        _loc14_ = _loc12_.cbSet;
                        _loc13_.validate();
                        _loc14_.validate();
                        _loc15_ = null;
                        _loc16_ = _loc13_.cbpairs.length < _loc14_.cbpairs.length?_loc13_.cbpairs:_loc14_.cbpairs;
                        _loc17_ = _loc16_.head;
                        while(_loc17_ != null)
                        {
                           _loc18_ = _loc17_.elt;
                           if(_loc18_.a == _loc13_)
                           {
                              false;
                           }
                           if(!false)
                           {
                              true;
                              if(_loc18_.a == _loc14_)
                              {
                                 false;
                              }
                           }
                           if(true)
                           {
                              _loc15_ = _loc18_;
                              break;
                           }
                           _loc17_ = _loc17_.next;
                        }
                        if(_loc15_ == null)
                        {
                           if(ZPP_CbSetPair.zpp_pool == null)
                           {
                              _loc18_ = new ZPP_CbSetPair();
                           }
                           else
                           {
                              _loc18_ = ZPP_CbSetPair.zpp_pool;
                              ZPP_CbSetPair.zpp_pool = _loc18_.next;
                              _loc18_.next = null;
                           }
                           _loc18_.zip_listeners = true;
                           if(ZPP_CbSet.setlt(_loc13_,_loc14_))
                           {
                              _loc18_.a = _loc13_;
                              _loc18_.b = _loc14_;
                           }
                           else
                           {
                              _loc18_.a = _loc14_;
                              _loc18_.b = _loc13_;
                           }
                           _loc15_ = _loc18_;
                           _loc13_.cbpairs.add(_loc15_);
                           if(_loc14_ != _loc13_)
                           {
                              _loc14_.cbpairs.add(_loc15_);
                           }
                        }
                        if(_loc15_.zip_listeners)
                        {
                           _loc15_.zip_listeners = false;
                           _loc15_.__validate();
                        }
                        if(_loc15_.listeners.head == null)
                        {
                           _loc11_ = _loc11_.next;
                        }
                        else
                        {
                           _loc19_ = ZPP_Interactor.get(_loc10_,_loc12_);
                           _loc19_.remove_arb(_loc7_);
                           _loc7_.present = _loc7_.present - 1;
                           _loc20_ = ZPP_Flags.id_CbEvent_END;
                           _loc15_ = null;
                           _loc16_ = _loc13_.cbpairs.length < _loc14_.cbpairs.length?_loc13_.cbpairs:_loc14_.cbpairs;
                           _loc17_ = _loc16_.head;
                           while(_loc17_ != null)
                           {
                              _loc18_ = _loc17_.elt;
                              if(_loc18_.a == _loc13_)
                              {
                                 false;
                              }
                              if(!false)
                              {
                                 true;
                                 if(_loc18_.a == _loc14_)
                                 {
                                    false;
                                 }
                              }
                              if(true)
                              {
                                 _loc15_ = _loc18_;
                                 break;
                              }
                              _loc17_ = _loc17_.next;
                           }
                           if(_loc15_ == null)
                           {
                              if(ZPP_CbSetPair.zpp_pool == null)
                              {
                                 _loc18_ = new ZPP_CbSetPair();
                              }
                              else
                              {
                                 _loc18_ = ZPP_CbSetPair.zpp_pool;
                                 ZPP_CbSetPair.zpp_pool = _loc18_.next;
                                 _loc18_.next = null;
                              }
                              _loc18_.zip_listeners = true;
                              if(ZPP_CbSet.setlt(_loc13_,_loc14_))
                              {
                                 _loc18_.a = _loc13_;
                                 _loc18_.b = _loc14_;
                              }
                              else
                              {
                                 _loc18_.a = _loc14_;
                                 _loc18_.b = _loc13_;
                              }
                              _loc15_ = _loc18_;
                              _loc13_.cbpairs.add(_loc15_);
                              if(_loc14_ != _loc13_)
                              {
                                 _loc14_.cbpairs.add(_loc15_);
                              }
                           }
                           if(_loc15_.zip_listeners)
                           {
                              _loc15_.zip_listeners = false;
                              _loc15_.__validate();
                           }
                           _loc21_ = _loc15_.listeners.head;
                           while(_loc21_ != null)
                           {
                              _loc22_ = _loc21_.elt;
                              if(_loc22_.event == _loc20_)
                              {
                                 if((_loc22_.itype & _loc7_.type) != 0)
                                 {
                                    false;
                                 }
                                 if(false)
                                 {
                                    _loc23_ = _loc3_.push_callback(_loc22_);
                                    _loc23_.event = ZPP_Flags.id_CbEvent_END;
                                    _loc24_ = _loc19_.int1;
                                    _loc25_ = _loc19_.int2;
                                    _loc26_ = _loc22_.options1;
                                    _loc27_ = _loc24_.cbTypes;
                                    if(_loc26_.nonemptyintersection(_loc27_,_loc26_.includes))
                                    {
                                       false;
                                    }
                                    if(false)
                                    {
                                       false;
                                       _loc26_ = _loc22_.options2;
                                       _loc27_ = _loc25_.cbTypes;
                                       if(_loc26_.nonemptyintersection(_loc27_,_loc26_.includes))
                                       {
                                          false;
                                       }
                                    }
                                    if(false)
                                    {
                                       _loc23_.int1 = _loc24_;
                                       _loc23_.int2 = _loc25_;
                                    }
                                    else
                                    {
                                       _loc23_.int1 = _loc25_;
                                       _loc23_.int2 = _loc24_;
                                    }
                                    _loc23_.set = _loc19_;
                                 }
                              }
                              _loc21_ = _loc21_.next;
                           }
                           if(_loc19_.arbiters.head == null)
                           {
                              remove_callbackset(_loc19_);
                           }
                           _loc11_ = _loc11_.next;
                        }
                     }
                     _loc9_ = _loc9_.next;
                  }
               }
               if(_loc7_.b1 != _loc4_)
               {
                  false;
               }
               if(false)
               {
                  _loc28_ = _loc7_.b1;
                  if(!_loc28_.world)
                  {
                     _loc28_.component.waket = stamp + (midstep?0:1);
                     if(_loc28_.component.sleeping)
                     {
                        really_wake(_loc28_,false);
                     }
                  }
               }
               if(_loc7_.b2 != _loc4_)
               {
                  false;
               }
               if(false)
               {
                  _loc28_ = _loc7_.b2;
                  if(!_loc28_.world)
                  {
                     _loc28_.component.waket = stamp + (midstep?0:1);
                     if(_loc28_.component.sleeping)
                     {
                        really_wake(_loc28_,false);
                     }
                  }
               }
               _loc7_.cleared = true;
               if(_loc4_ != null)
               {
                  true;
               }
               if(true)
               {
                  _loc29_ = _loc7_.b1.arbiters;
                  _loc30_ = null;
                  _loc31_ = _loc29_.head;
                  _loc32_ = false;
                  while(_loc31_ != null)
                  {
                     if(_loc31_.elt == _loc7_)
                     {
                        if(_loc30_ == null)
                        {
                           _loc33_ = _loc29_.head;
                           _loc34_ = _loc33_.next;
                           _loc29_.head = _loc34_;
                           if(_loc29_.head == null)
                           {
                              _loc29_.pushmod = true;
                           }
                        }
                        else
                        {
                           _loc33_ = _loc30_.next;
                           _loc34_ = _loc33_.next;
                           _loc30_.next = _loc34_;
                           if(_loc34_ == null)
                           {
                              _loc29_.pushmod = true;
                           }
                        }
                        _loc35_ = _loc33_;
                        _loc35_.elt = null;
                        _loc35_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                        ZNPNode_ZPP_Arbiter.zpp_pool = _loc35_;
                        _loc29_.modified = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.pushmod = true;
                        _loc34_;
                        _loc32_ = true;
                        break;
                     }
                     _loc30_ = _loc31_;
                     _loc31_ = _loc31_.next;
                  }
                  _loc32_;
               }
               if(_loc4_ != null)
               {
                  true;
               }
               if(true)
               {
                  _loc29_ = _loc7_.b2.arbiters;
                  _loc30_ = null;
                  _loc31_ = _loc29_.head;
                  _loc32_ = false;
                  while(_loc31_ != null)
                  {
                     if(_loc31_.elt == _loc7_)
                     {
                        if(_loc30_ == null)
                        {
                           _loc33_ = _loc29_.head;
                           _loc34_ = _loc33_.next;
                           _loc29_.head = _loc34_;
                           if(_loc29_.head == null)
                           {
                              _loc29_.pushmod = true;
                           }
                        }
                        else
                        {
                           _loc33_ = _loc30_.next;
                           _loc34_ = _loc33_.next;
                           _loc30_.next = _loc34_;
                           if(_loc34_ == null)
                           {
                              _loc29_.pushmod = true;
                           }
                        }
                        _loc35_ = _loc33_;
                        _loc35_.elt = null;
                        _loc35_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                        ZNPNode_ZPP_Arbiter.zpp_pool = _loc35_;
                        _loc29_.modified = true;
                        _loc29_.length = _loc29_.length - 1;
                        _loc29_.pushmod = true;
                        _loc34_;
                        _loc32_ = true;
                        break;
                     }
                     _loc30_ = _loc31_;
                     _loc31_ = _loc31_.next;
                  }
                  _loc32_;
               }
               if(_loc7_.pair != null)
               {
                  _loc7_.pair.arb = null;
                  _loc7_.pair = null;
               }
               _loc7_.active = false;
               f_arbiters.modified = true;
               _loc6_ = _loc4_.arbiters.erase(_loc5_);
            }
            else
            {
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
         }
         bphase.remove(param1);
         param1.removedFromSpace();
      }
      
      public function remove_callbackset(param1:ZPP_CallbackSet) : void
      {
         var _loc6_:* = null as ZNPNode_ZPP_CallbackSet;
         var _loc7_:* = null as ZNPNode_ZPP_CallbackSet;
         var _loc8_:* = null as ZNPNode_ZPP_CallbackSet;
         param1.lazydel = true;
         var _loc2_:ZNPList_ZPP_CallbackSet = param1.int1.cbsets;
         var _loc3_:ZNPNode_ZPP_CallbackSet = null;
         var _loc4_:ZNPNode_ZPP_CallbackSet = _loc2_.head;
         var _loc5_:* = false;
         while(_loc4_ != null)
         {
            if(_loc4_.elt == param1)
            {
               if(_loc3_ == null)
               {
                  _loc6_ = _loc2_.head;
                  _loc7_ = _loc6_.next;
                  _loc2_.head = _loc7_;
                  if(_loc2_.head == null)
                  {
                     _loc2_.pushmod = true;
                  }
               }
               else
               {
                  _loc6_ = _loc3_.next;
                  _loc7_ = _loc6_.next;
                  _loc3_.next = _loc7_;
                  if(_loc7_ == null)
                  {
                     _loc2_.pushmod = true;
                  }
               }
               _loc8_ = _loc6_;
               _loc8_.elt = null;
               _loc8_.next = ZNPNode_ZPP_CallbackSet.zpp_pool;
               ZNPNode_ZPP_CallbackSet.zpp_pool = _loc8_;
               _loc2_.modified = true;
               _loc2_.length = _loc2_.length - 1;
               _loc2_.pushmod = true;
               _loc7_;
               _loc5_ = true;
               break;
            }
            _loc3_ = _loc4_;
            _loc4_ = _loc4_.next;
         }
         _loc5_;
         _loc2_ = param1.int2.cbsets;
         _loc3_ = null;
         _loc4_ = _loc2_.head;
         _loc5_ = false;
         while(_loc4_ != null)
         {
            if(_loc4_.elt == param1)
            {
               if(_loc3_ == null)
               {
                  _loc6_ = _loc2_.head;
                  _loc7_ = _loc6_.next;
                  _loc2_.head = _loc7_;
                  if(_loc2_.head == null)
                  {
                     _loc2_.pushmod = true;
                  }
               }
               else
               {
                  _loc6_ = _loc3_.next;
                  _loc7_ = _loc6_.next;
                  _loc3_.next = _loc7_;
                  if(_loc7_ == null)
                  {
                     _loc2_.pushmod = true;
                  }
               }
               _loc8_ = _loc6_;
               _loc8_.elt = null;
               _loc8_.next = ZNPNode_ZPP_CallbackSet.zpp_pool;
               ZNPNode_ZPP_CallbackSet.zpp_pool = _loc8_;
               _loc2_.modified = true;
               _loc2_.length = _loc2_.length - 1;
               _loc2_.pushmod = true;
               _loc7_;
               _loc5_ = true;
               break;
            }
            _loc3_ = _loc4_;
            _loc4_ = _loc4_.next;
         }
         _loc5_;
      }
      
      public function remListener(param1:ZPP_Listener) : void
      {
         if(param1.interaction != null)
         {
            null;
         }
         param1.removedFromSpace();
         param1.space = null;
      }
      
      public function remConstraint(param1:ZPP_Constraint) : void
      {
         if(param1.active)
         {
            wake_constraint(param1,true);
            live_constraints.remove(param1);
         }
         param1.removedFromSpace();
         param1.space = null;
      }
      
      public function remCompound(param1:ZPP_Compound) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Constraint;
         var _loc7_:* = null as ZPP_Compound;
         var _loc2_:ZNPNode_ZPP_Body = param1.bodies.head;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.elt;
            remBody(_loc3_);
            _loc2_ = _loc2_.next;
         }
         var _loc4_:ZNPNode_ZPP_Constraint = param1.constraints.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            remConstraint(_loc5_);
            _loc4_ = _loc4_.next;
         }
         var _loc6_:ZNPNode_ZPP_Compound = param1.compounds.head;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.elt;
            remCompound(_loc7_);
            _loc6_ = _loc6_.next;
         }
         param1.removedFromSpace();
         param1.space = null;
      }
      
      public function remBody(param1:ZPP_Body, param2:int = -1) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Shape;
         if(param1.type == ZPP_Flags.id_BodyType_STATIC)
         {
            _loc3_ = param1;
            if(!_loc3_.world)
            {
               _loc3_.component.waket = stamp + (midstep?0:1);
               if(_loc3_.component.sleeping)
               {
                  really_wake(_loc3_,true);
               }
            }
            staticsleep.remove(param1);
         }
         else if(param1.type == ZPP_Flags.id_BodyType_DYNAMIC)
         {
            _loc3_ = param1;
            if(!_loc3_.world)
            {
               _loc3_.component.waket = stamp + (midstep?0:1);
               if(_loc3_.component.sleeping)
               {
                  really_wake(_loc3_,true);
               }
            }
            live.remove(param1);
         }
         else
         {
            if(param2 != ZPP_Flags.id_BodyType_KINEMATIC)
            {
               kinematics.remove(param1);
            }
            _loc3_ = param1;
            if(!_loc3_.world)
            {
               _loc3_.component.waket = stamp + (midstep?0:1);
               if(_loc3_.component.sleeping)
               {
                  really_wake(_loc3_,true);
               }
            }
            staticsleep.remove(param1);
         }
         
         var _loc4_:ZNPNode_ZPP_Shape = param1.shapes.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            removed_shape(_loc5_,true);
            _loc4_ = _loc4_.next;
         }
         param1.removedFromSpace();
         param1.space = null;
      }
      
      public function really_wake(param1:ZPP_Body, param2:Boolean = false) : void
      {
         var _loc3_:* = null as ZNPList_ZPP_Body;
         var _loc4_:* = null as ZNPNode_ZPP_Body;
         var _loc5_:* = null as ZNPNode_ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Constraint;
         var _loc7_:* = null as ZPP_Constraint;
         var _loc8_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc9_:* = null as ZPP_Arbiter;
         var _loc10_:* = null as ZPP_ColArbiter;
         var _loc11_:* = null as ZNPList_ZPP_ColArbiter;
         var _loc12_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc13_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc14_:* = null as ZNPList_ZPP_FluidArbiter;
         var _loc15_:* = null as ZPP_FluidArbiter;
         var _loc16_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc17_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc18_:* = null as ZNPList_ZPP_SensorArbiter;
         var _loc19_:* = null as ZPP_SensorArbiter;
         var _loc20_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc21_:* = null as ZNPNode_ZPP_SensorArbiter;
         var _loc22_:* = null as ZPP_Body;
         var _loc23_:* = null as ZNPNode_ZPP_Shape;
         var _loc24_:* = null as ZPP_Shape;
         if(param1.component.island == null)
         {
            param1.component.sleeping = false;
            if(param1.type != ZPP_Flags.id_BodyType_KINEMATIC)
            {
               true;
            }
            if(true)
            {
               _loc3_ = staticsleep;
               if(ZNPNode_ZPP_Body.zpp_pool == null)
               {
                  _loc5_ = new ZNPNode_ZPP_Body();
               }
               else
               {
                  _loc5_ = ZNPNode_ZPP_Body.zpp_pool;
                  ZNPNode_ZPP_Body.zpp_pool = _loc5_.next;
                  _loc5_.next = null;
               }
               null;
               _loc5_.elt = param1;
               _loc4_ = _loc5_;
               _loc4_.next = _loc3_.head;
               _loc3_.head = _loc4_;
               _loc3_.modified = true;
               _loc3_.length = _loc3_.length + 1;
               param1;
            }
            else
            {
               _loc3_ = live;
               if(ZNPNode_ZPP_Body.zpp_pool == null)
               {
                  _loc5_ = new ZNPNode_ZPP_Body();
               }
               else
               {
                  _loc5_ = ZNPNode_ZPP_Body.zpp_pool;
                  ZNPNode_ZPP_Body.zpp_pool = _loc5_.next;
                  _loc5_.next = null;
               }
               null;
               _loc5_.elt = param1;
               _loc4_ = _loc5_;
               _loc4_.next = _loc3_.head;
               _loc3_.head = _loc4_;
               _loc3_.modified = true;
               _loc3_.length = _loc3_.length + 1;
               param1;
            }
            _loc6_ = param1.constraints.head;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.elt;
               if(_loc7_.space == this)
               {
                  wake_constraint(_loc7_);
               }
               _loc6_ = _loc6_.next;
            }
            _loc8_ = param1.arbiters.head;
            while(_loc8_ != null)
            {
               _loc9_ = _loc8_.elt;
               if(_loc9_.sleeping)
               {
                  _loc9_.sleeping = false;
                  _loc9_.up_stamp = _loc9_.up_stamp + (stamp + (midstep?0:1) - _loc9_.sleep_stamp);
                  if(_loc9_.type == ZPP_Arbiter.COL)
                  {
                     _loc10_ = _loc9_.colarb;
                     if(_loc10_.stat)
                     {
                        _loc11_ = c_arbiters_true;
                        if(ZNPNode_ZPP_ColArbiter.zpp_pool == null)
                        {
                           _loc13_ = new ZNPNode_ZPP_ColArbiter();
                        }
                        else
                        {
                           _loc13_ = ZNPNode_ZPP_ColArbiter.zpp_pool;
                           ZNPNode_ZPP_ColArbiter.zpp_pool = _loc13_.next;
                           _loc13_.next = null;
                        }
                        null;
                        _loc13_.elt = _loc10_;
                        _loc12_ = _loc13_;
                        _loc12_.next = _loc11_.head;
                        _loc11_.head = _loc12_;
                        _loc11_.modified = true;
                        _loc11_.length = _loc11_.length + 1;
                        _loc10_;
                     }
                     else
                     {
                        _loc11_ = c_arbiters_false;
                        if(ZNPNode_ZPP_ColArbiter.zpp_pool == null)
                        {
                           _loc13_ = new ZNPNode_ZPP_ColArbiter();
                        }
                        else
                        {
                           _loc13_ = ZNPNode_ZPP_ColArbiter.zpp_pool;
                           ZNPNode_ZPP_ColArbiter.zpp_pool = _loc13_.next;
                           _loc13_.next = null;
                        }
                        null;
                        _loc13_.elt = _loc10_;
                        _loc12_ = _loc13_;
                        _loc12_.next = _loc11_.head;
                        _loc11_.head = _loc12_;
                        _loc11_.modified = true;
                        _loc11_.length = _loc11_.length + 1;
                        _loc10_;
                     }
                  }
                  else if(_loc9_.type == ZPP_Arbiter.FLUID)
                  {
                     _loc14_ = f_arbiters;
                     _loc15_ = _loc9_.fluidarb;
                     if(ZNPNode_ZPP_FluidArbiter.zpp_pool == null)
                     {
                        _loc17_ = new ZNPNode_ZPP_FluidArbiter();
                     }
                     else
                     {
                        _loc17_ = ZNPNode_ZPP_FluidArbiter.zpp_pool;
                        ZNPNode_ZPP_FluidArbiter.zpp_pool = _loc17_.next;
                        _loc17_.next = null;
                     }
                     null;
                     _loc17_.elt = _loc15_;
                     _loc16_ = _loc17_;
                     _loc16_.next = _loc14_.head;
                     _loc14_.head = _loc16_;
                     _loc14_.modified = true;
                     _loc14_.length = _loc14_.length + 1;
                     _loc15_;
                  }
                  else
                  {
                     _loc18_ = s_arbiters;
                     _loc19_ = _loc9_.sensorarb;
                     if(ZNPNode_ZPP_SensorArbiter.zpp_pool == null)
                     {
                        _loc21_ = new ZNPNode_ZPP_SensorArbiter();
                     }
                     else
                     {
                        _loc21_ = ZNPNode_ZPP_SensorArbiter.zpp_pool;
                        ZNPNode_ZPP_SensorArbiter.zpp_pool = _loc21_.next;
                        _loc21_.next = null;
                     }
                     null;
                     _loc21_.elt = _loc19_;
                     _loc20_ = _loc21_;
                     _loc20_.next = _loc18_.head;
                     _loc18_.head = _loc20_;
                     _loc18_.modified = true;
                     _loc18_.length = _loc18_.length + 1;
                     _loc19_;
                  }
                  
               }
               if(_loc9_.type != ZPP_Arbiter.SENSOR)
               {
                  false;
               }
               if(false)
               {
                  false;
               }
               if(false)
               {
                  false;
               }
               if(false)
               {
                  if(_loc9_.b1.type == ZPP_Flags.id_BodyType_DYNAMIC)
                  {
                     false;
                  }
                  if(false)
                  {
                     _loc22_ = _loc9_.b1;
                     if(!_loc22_.world)
                     {
                        _loc22_.component.waket = stamp + (midstep?0:1);
                        if(_loc22_.component.sleeping)
                        {
                           really_wake(_loc22_,false);
                        }
                     }
                  }
                  if(_loc9_.b2.type == ZPP_Flags.id_BodyType_DYNAMIC)
                  {
                     false;
                  }
                  if(false)
                  {
                     _loc22_ = _loc9_.b2;
                     if(!_loc22_.world)
                     {
                        _loc22_.component.waket = stamp + (midstep?0:1);
                        if(_loc22_.component.sleeping)
                        {
                           really_wake(_loc22_,false);
                        }
                     }
                  }
               }
               _loc8_ = _loc8_.next;
            }
            if(!param2)
            {
               false;
            }
            if(false)
            {
               bodyCbWake(param1);
            }
            if(!param2)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(false)
            {
               _loc23_ = param1.shapes.head;
               while(_loc23_ != null)
               {
                  _loc24_ = _loc23_.elt;
                  if(_loc24_.node != null)
                  {
                     bphase.sync(_loc24_);
                  }
                  _loc23_ = _loc23_.next;
               }
            }
         }
         else
         {
            wakeIsland(param1.component.island);
         }
      }
      
      public function rayMultiCast(param1:Ray, param2:Boolean, param3:InteractionFilter) : RayResultList
      {
         return bphase.rayMultiCast(param1.zpp_inner,param2,param3 == null?null:param3.zpp_inner);
      }
      
      public function rayCast(param1:Ray, param2:Boolean, param3:InteractionFilter) : RayResult
      {
         return bphase.rayCast(param1.zpp_inner,param2,param3 == null?null:param3.zpp_inner);
      }
      
      public function push_callback(param1:ZPP_Listener) : ZPP_Callback
      {
         var _loc2_:* = null as ZPP_Callback;
         if(ZPP_Callback.zpp_pool == null)
         {
            _loc2_ = new ZPP_Callback();
         }
         else
         {
            _loc2_ = ZPP_Callback.zpp_pool;
            ZPP_Callback.zpp_pool = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         callbacks.push(_loc2_);
         _loc2_.listener = param1;
         return _loc2_;
      }
      
      public function prestep(param1:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var prelisteners:ZNPList_ZPP_InteractionListener;
      
      public var precb:PreCallback;
      
      public var pre_dt:Number;
      
      public var outer:nape.space.Space;
      
      public function nullListenerType(param1:ZPP_CbSet, param2:ZPP_CbSet) : void
      {
         var _loc4_:* = null as ZNPNode_ZPP_Interactor;
         var _loc5_:* = null as ZPP_Interactor;
         var _loc6_:* = null as ZPP_Compound;
         var _loc7_:* = null as ZNPNode_ZPP_Body;
         var _loc8_:* = null as ZPP_Body;
         var _loc9_:* = null as ZNPNode_ZPP_Compound;
         var _loc10_:* = null as ZPP_Compound;
         var _loc11_:* = null as ZPP_Shape;
         var _loc12_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc13_:* = null as ZPP_Arbiter;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZNPNode_ZPP_Interactor;
         var _loc16_:* = null as ZPP_Interactor;
         var _loc17_:* = null as ZPP_CallbackSet;
         var _loc18_:* = null as ZPP_Arbiter;
         var _loc3_:ZNPList_ZPP_Interactor = new ZNPList_ZPP_Interactor();
         _loc4_ = param1.interactors.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            _loc3_.add(_loc5_);
            _loc4_ = _loc4_.next;
         }
         if(param1 != param2)
         {
            _loc4_ = param2.interactors.head;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.elt;
               _loc3_.add(_loc5_);
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc3_.head != null)
         {
            _loc5_ = _loc3_.pop_unsafe();
            if(_loc5_.icompound != null)
            {
               _loc6_ = _loc5_.icompound;
               _loc7_ = _loc6_.bodies.head;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.elt;
                  _loc3_.add(_loc8_);
                  _loc7_ = _loc7_.next;
               }
               _loc9_ = _loc6_.compounds.head;
               while(_loc9_ != null)
               {
                  _loc10_ = _loc9_.elt;
                  _loc3_.add(_loc10_);
                  _loc9_ = _loc9_.next;
               }
            }
            else
            {
               _loc8_ = _loc5_.ibody != null?_loc5_.ibody:_loc5_.ishape.body;
               _loc11_ = _loc5_.ishape != null?_loc5_.ishape:null;
               _loc12_ = _loc8_.arbiters.head;
               while(_loc12_ != null)
               {
                  _loc13_ = _loc12_.elt;
                  if(_loc13_.present == 0)
                  {
                     _loc12_ = _loc12_.next;
                  }
                  else
                  {
                     if(_loc11_ != null)
                     {
                        false;
                        if(_loc13_.ws1 != _loc11_)
                        {
                           true;
                        }
                     }
                     if(false)
                     {
                        _loc12_ = _loc12_.next;
                     }
                     else
                     {
                        MRCA_chains(_loc13_.ws1,_loc13_.ws2);
                        _loc4_ = mrca1.head;
                        while(_loc4_ != null)
                        {
                           _loc14_ = _loc4_.elt;
                           if(_loc14_.cbSet != param1)
                           {
                              false;
                           }
                           if(false)
                           {
                              _loc4_ = _loc4_.next;
                           }
                           else
                           {
                              _loc15_ = mrca2.head;
                              while(_loc15_ != null)
                              {
                                 _loc16_ = _loc15_.elt;
                                 if(_loc14_.cbSet == param1)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc14_.cbSet == param2)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc15_ = _loc15_.next;
                                 }
                                 else
                                 {
                                    _loc17_ = ZPP_Interactor.get(_loc14_,_loc16_);
                                    if(_loc17_ != null)
                                    {
                                       while(_loc17_.arbiters.head != null)
                                       {
                                          _loc18_ = _loc17_.arbiters.pop_unsafe();
                                          _loc18_.present = _loc18_.present - 1;
                                       }
                                       remove_callbackset(_loc17_);
                                    }
                                    _loc15_ = _loc15_.next;
                                 }
                              }
                              _loc4_ = _loc4_.next;
                           }
                        }
                        _loc12_ = _loc12_.next;
                     }
                  }
               }
            }
         }
      }
      
      public function nullInteractorType(param1:ZPP_Interactor, param2:ZPP_Interactor = undefined) : void
      {
         var _loc3_:* = null as ZPP_Compound;
         var _loc4_:* = null as ZNPNode_ZPP_Body;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Compound;
         var _loc7_:* = null as ZPP_Compound;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as ZNPNode_ZPP_Interactor;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZNPNode_ZPP_Interactor;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZPP_CallbackSet;
         if(param2 == null)
         {
            param2 = param1;
         }
         if(param1.icompound != null)
         {
            _loc3_ = param1.icompound;
            _loc4_ = _loc3_.bodies.head;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.elt;
               nullInteractorType(_loc5_,param2);
               _loc4_ = _loc4_.next;
            }
            _loc6_ = _loc3_.compounds.head;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.elt;
               nullInteractorType(_loc7_,param2);
               _loc6_ = _loc6_.next;
            }
         }
         else
         {
            _loc5_ = param1.ibody != null?param1.ibody:param1.ishape.body;
            _loc8_ = param1.ishape != null?param1.ishape:null;
            _loc9_ = _loc5_.arbiters.head;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.elt;
               if(_loc10_.present == 0)
               {
                  _loc9_ = _loc9_.next;
               }
               else
               {
                  if(_loc8_ != null)
                  {
                     false;
                     if(_loc10_.ws1 != _loc8_)
                     {
                        true;
                     }
                  }
                  if(false)
                  {
                     _loc9_ = _loc9_.next;
                  }
                  else
                  {
                     MRCA_chains(_loc10_.ws1,_loc10_.ws2);
                     _loc11_ = mrca1.head;
                     while(_loc11_ != null)
                     {
                        _loc12_ = _loc11_.elt;
                        _loc13_ = mrca2.head;
                        while(_loc13_ != null)
                        {
                           _loc14_ = _loc13_.elt;
                           if(_loc12_ != param2)
                           {
                              false;
                           }
                           if(false)
                           {
                              _loc13_ = _loc13_.next;
                           }
                           else
                           {
                              _loc15_ = ZPP_Interactor.get(_loc12_,_loc14_);
                              if(_loc15_ != null)
                              {
                                 _loc10_.present = _loc10_.present - 1;
                                 _loc15_.remove_arb(_loc10_);
                                 if(_loc15_.arbiters.head == null)
                                 {
                                    remove_callbackset(_loc15_);
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                        }
                        _loc11_ = _loc11_.next;
                     }
                     _loc9_ = _loc9_.next;
                  }
               }
            }
         }
      }
      
      public function non_inlined_wake(param1:ZPP_Body, param2:Boolean = false) : void
      {
         var _loc3_:ZPP_Body = param1;
         if(!_loc3_.world)
         {
            _loc3_.component.waket = stamp + (midstep?0:1);
            if(_loc3_.component.sleeping)
            {
               really_wake(_loc3_,param2);
            }
         }
      }
      
      public function narrowPhase(param1:ZPP_Shape, param2:ZPP_Shape, param3:Boolean, param4:ZPP_Arbiter = undefined) : ZPP_Arbiter
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public var mrca2:ZNPList_ZPP_Interactor;
      
      public var mrca1:ZNPList_ZPP_Interactor;
      
      public var midstep:Boolean;
      
      public var live_constraints:ZNPList_ZPP_Constraint;
      
      public var live:ZNPList_ZPP_Body;
      
      public function listeners_subber(param1:Listener) : void
      {
         remListener(param1.zpp_inner);
      }
      
      public function listeners_adder(param1:Listener) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.outer.zpp_inner.wrap_listeners.remove(param1);
            }
            addListener(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public var listeners:ZNPList_ZPP_Listener;
      
      public var kinematics:ZNPList_ZPP_Body;
      
      public function iterateVel(param1:int, param2:Boolean) : void
      {
         var _loc5_:* = 0;
         var _loc6_:* = null as ZNPNode_ZPP_FluidArbiter;
         var _loc7_:* = null as ZPP_FluidArbiter;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = null as ZNPNode_ZPP_Constraint;
         var _loc14_:* = null as ZNPNode_ZPP_Constraint;
         var _loc15_:* = null as ZPP_Constraint;
         var _loc16_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc17_:* = false;
         var _loc18_:* = null as ZPP_ColArbiter;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc3_:Number = param2?1.0:0.0;
         var _loc4_:* = 0;
         while(_loc4_ < param1)
         {
            _loc4_++;
            _loc5_ = _loc4_;
            _loc6_ = f_arbiters.head;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.elt;
               if(_loc7_.active)
               {
                  false;
               }
               if(false)
               {
                  if(!_loc7_.nodrag)
                  {
                     _loc8_ = _loc7_.b1.angvel + _loc7_.b1.kinangvel;
                     _loc9_ = _loc7_.b2.angvel + _loc7_.b2.kinangvel;
                     _loc10_ = (_loc7_.b1.velx + _loc7_.b1.kinvelx) - _loc7_.r1y * _loc8_ - ((_loc7_.b2.velx + _loc7_.b2.kinvelx) - _loc7_.r2y * _loc9_);
                     _loc11_ = ((_loc7_.b1.vely + _loc7_.b1.kinvely) + _loc7_.r1x * _loc8_) - ((_loc7_.b2.vely + _loc7_.b2.kinvely) + _loc7_.r2x * _loc9_);
                     _loc12_ = _loc7_.vMassa * _loc10_ + _loc7_.vMassb * _loc11_;
                     _loc11_ = _loc7_.vMassb * _loc10_ + _loc7_.vMassc * _loc11_;
                     _loc10_ = _loc12_;
                     _loc12_ = _loc7_.lgamma;
                     _loc10_ = _loc10_ - _loc7_.dampx * _loc12_;
                     _loc11_ = _loc11_ - _loc7_.dampy * _loc12_;
                     _loc12_ = 1.0;
                     _loc7_.dampx = _loc7_.dampx + _loc10_ * _loc12_;
                     _loc7_.dampy = _loc7_.dampy + _loc11_ * _loc12_;
                     _loc12_ = _loc7_.b1.imass;
                     _loc7_.b1.velx = _loc7_.b1.velx - _loc10_ * _loc12_;
                     _loc7_.b1.vely = _loc7_.b1.vely - _loc11_ * _loc12_;
                     _loc12_ = _loc7_.b2.imass;
                     _loc7_.b2.velx = _loc7_.b2.velx + _loc10_ * _loc12_;
                     _loc7_.b2.vely = _loc7_.b2.vely + _loc11_ * _loc12_;
                     _loc7_.b1.angvel = _loc7_.b1.angvel - _loc7_.b1.iinertia * (_loc11_ * _loc7_.r1x - _loc10_ * _loc7_.r1y);
                     _loc7_.b2.angvel = _loc7_.b2.angvel + _loc7_.b2.iinertia * (_loc11_ * _loc7_.r2x - _loc10_ * _loc7_.r2y);
                     _loc12_ = (_loc8_ - _loc9_) * _loc7_.wMass - _loc7_.adamp * _loc7_.agamma;
                     _loc7_.adamp = _loc7_.adamp + _loc12_;
                     _loc7_.b1.angvel = _loc7_.b1.angvel - _loc12_ * _loc7_.b1.iinertia;
                     _loc7_.b2.angvel = _loc7_.b2.angvel + _loc12_ * _loc7_.b2.iinertia;
                  }
               }
               _loc6_ = _loc6_.next;
            }
            _loc13_ = null;
            _loc14_ = live_constraints.head;
            while(_loc14_ != null)
            {
               _loc15_ = _loc14_.elt;
               if(_loc15_.applyImpulseVel())
               {
                  _loc14_ = live_constraints.erase(_loc13_);
                  constraintCbBreak(_loc15_);
                  if(_loc15_.removeOnBreak)
                  {
                     _loc15_.component.sleeping = true;
                     midstep = false;
                     if(_loc15_.compound != null)
                     {
                        _loc15_.compound.wrap_constraints.remove(_loc15_.outer);
                     }
                     else
                     {
                        wrap_constraints.remove(_loc15_.outer);
                     }
                     midstep = true;
                  }
                  else
                  {
                     _loc15_.active = false;
                  }
                  _loc15_.clearcache();
               }
               else
               {
                  _loc13_ = _loc14_;
                  _loc14_ = _loc14_.next;
               }
            }
            _loc16_ = c_arbiters_false.head;
            _loc17_ = true;
            if(_loc16_ == null)
            {
               _loc16_ = c_arbiters_true.head;
               _loc17_ = false;
            }
            while(_loc16_ != null)
            {
               _loc18_ = _loc16_.elt;
               if(_loc18_.active)
               {
                  false;
               }
               if(false)
               {
                  _loc20_ = (_loc18_.k1x + _loc18_.b2.velx) - _loc18_.c1.r2y * _loc18_.b2.angvel - (_loc18_.b1.velx - _loc18_.c1.r1y * _loc18_.b1.angvel);
                  _loc21_ = ((_loc18_.k1y + _loc18_.b2.vely) + _loc18_.c1.r2x * _loc18_.b2.angvel) - (_loc18_.b1.vely + _loc18_.c1.r1x * _loc18_.b1.angvel);
                  if(_loc18_.hc2)
                  {
                     _loc22_ = (_loc18_.k2x + _loc18_.b2.velx) - _loc18_.c2.r2y * _loc18_.b2.angvel - (_loc18_.b1.velx - _loc18_.c2.r1y * _loc18_.b1.angvel);
                     _loc23_ = ((_loc18_.k2y + _loc18_.b2.vely) + _loc18_.c2.r2x * _loc18_.b2.angvel) - (_loc18_.b1.vely + _loc18_.c2.r1x * _loc18_.b1.angvel);
                     _loc24_ = _loc18_.c1.jnAcc;
                     _loc25_ = _loc18_.c2.jnAcc;
                     _loc26_ = (((_loc20_ * _loc18_.nx + _loc21_ * _loc18_.ny) + _loc18_.surfacey) + _loc3_ * _loc18_.c1.bounce) - (_loc18_.Ka * _loc24_ + _loc18_.Kb * _loc25_);
                     _loc27_ = (((_loc22_ * _loc18_.nx + _loc23_ * _loc18_.ny) + _loc18_.surfacey) + _loc3_ * _loc18_.c2.bounce) - (_loc18_.Kb * _loc24_ + _loc18_.Kc * _loc25_);
                     _loc28_ = -(_loc18_.kMassa * _loc26_ + _loc18_.kMassb * _loc27_);
                     _loc29_ = -(_loc18_.kMassb * _loc26_ + _loc18_.kMassc * _loc27_);
                     if(_loc28_ >= 0)
                     {
                        false;
                     }
                     if(false)
                     {
                        _loc26_ = _loc28_ - _loc24_;
                        _loc27_ = _loc29_ - _loc25_;
                        _loc18_.c1.jnAcc = _loc28_;
                        _loc18_.c2.jnAcc = _loc29_;
                     }
                     else
                     {
                        _loc28_ = -_loc18_.c1.nMass * _loc26_;
                        if(_loc28_ >= 0)
                        {
                           false;
                        }
                        if(false)
                        {
                           _loc26_ = _loc28_ - _loc24_;
                           _loc27_ = -_loc25_;
                           _loc18_.c1.jnAcc = _loc28_;
                           _loc18_.c2.jnAcc = 0;
                        }
                        else
                        {
                           _loc29_ = -_loc18_.c2.nMass * _loc27_;
                           if(_loc29_ >= 0)
                           {
                              false;
                           }
                           if(false)
                           {
                              _loc26_ = -_loc24_;
                              _loc27_ = _loc29_ - _loc25_;
                              _loc18_.c1.jnAcc = 0;
                              _loc18_.c2.jnAcc = _loc29_;
                           }
                           else
                           {
                              if(_loc26_ >= 0)
                              {
                                 false;
                              }
                              if(false)
                              {
                                 _loc26_ = -_loc24_;
                                 _loc27_ = -_loc25_;
                                 _loc30_ = 0;
                                 _loc18_.c2.jnAcc = _loc30_;
                                 _loc18_.c1.jnAcc = _loc30_;
                              }
                           }
                        }
                     }
                     _loc10_ = _loc26_ + _loc27_;
                     _loc8_ = _loc18_.nx * _loc10_;
                     _loc9_ = _loc18_.ny * _loc10_;
                     _loc18_.b2.velx = _loc18_.b2.velx + _loc8_ * _loc18_.b2.imass;
                     _loc18_.b2.vely = _loc18_.b2.vely + _loc9_ * _loc18_.b2.imass;
                     _loc18_.b1.velx = _loc18_.b1.velx - _loc8_ * _loc18_.b1.imass;
                     _loc18_.b1.vely = _loc18_.b1.vely - _loc9_ * _loc18_.b1.imass;
                     _loc18_.b2.angvel = _loc18_.b2.angvel + (_loc18_.rn1b * _loc26_ + _loc18_.rn2b * _loc27_) * _loc18_.b2.iinertia;
                     _loc18_.b1.angvel = _loc18_.b1.angvel - (_loc18_.rn1a * _loc26_ + _loc18_.rn2a * _loc27_) * _loc18_.b1.iinertia;
                     _loc20_ = (_loc18_.k1x + _loc18_.b2.velx) - _loc18_.c1.r2y * _loc18_.b2.angvel - (_loc18_.b1.velx - _loc18_.c1.r1y * _loc18_.b1.angvel);
                     _loc21_ = ((_loc18_.k1y + _loc18_.b2.vely) + _loc18_.c1.r2x * _loc18_.b2.angvel) - (_loc18_.b1.vely + _loc18_.c1.r1x * _loc18_.b1.angvel);
                     _loc10_ = (_loc21_ * _loc18_.nx - _loc20_ * _loc18_.ny + _loc18_.surfacex) * _loc18_.c1.tMass;
                     _loc11_ = _loc18_.c1.friction * _loc18_.c1.jnAcc;
                     _loc12_ = _loc18_.c1.jtAcc;
                     _loc19_ = _loc12_ - _loc10_;
                     if(_loc19_ > _loc11_)
                     {
                        _loc19_ = _loc11_;
                     }
                     else if(_loc19_ < -_loc11_)
                     {
                        _loc19_ = -_loc11_;
                     }
                     
                     _loc10_ = _loc19_ - _loc12_;
                     _loc18_.c1.jtAcc = _loc19_;
                     _loc8_ = -_loc18_.ny * _loc10_;
                     _loc9_ = _loc18_.nx * _loc10_;
                     _loc18_.b2.velx = _loc18_.b2.velx + _loc8_ * _loc18_.b2.imass;
                     _loc18_.b2.vely = _loc18_.b2.vely + _loc9_ * _loc18_.b2.imass;
                     _loc18_.b1.velx = _loc18_.b1.velx - _loc8_ * _loc18_.b1.imass;
                     _loc18_.b1.vely = _loc18_.b1.vely - _loc9_ * _loc18_.b1.imass;
                     _loc18_.b2.angvel = _loc18_.b2.angvel + _loc18_.rt1b * _loc10_ * _loc18_.b2.iinertia;
                     _loc18_.b1.angvel = _loc18_.b1.angvel - _loc18_.rt1a * _loc10_ * _loc18_.b1.iinertia;
                     _loc22_ = (_loc18_.k2x + _loc18_.b2.velx) - _loc18_.c2.r2y * _loc18_.b2.angvel - (_loc18_.b1.velx - _loc18_.c2.r1y * _loc18_.b1.angvel);
                     _loc23_ = ((_loc18_.k2y + _loc18_.b2.vely) + _loc18_.c2.r2x * _loc18_.b2.angvel) - (_loc18_.b1.vely + _loc18_.c2.r1x * _loc18_.b1.angvel);
                     _loc10_ = (_loc23_ * _loc18_.nx - _loc22_ * _loc18_.ny + _loc18_.surfacex) * _loc18_.c2.tMass;
                     _loc11_ = _loc18_.c2.friction * _loc18_.c2.jnAcc;
                     _loc12_ = _loc18_.c2.jtAcc;
                     _loc19_ = _loc12_ - _loc10_;
                     if(_loc19_ > _loc11_)
                     {
                        _loc19_ = _loc11_;
                     }
                     else if(_loc19_ < -_loc11_)
                     {
                        _loc19_ = -_loc11_;
                     }
                     
                     _loc10_ = _loc19_ - _loc12_;
                     _loc18_.c2.jtAcc = _loc19_;
                     _loc8_ = -_loc18_.ny * _loc10_;
                     _loc9_ = _loc18_.nx * _loc10_;
                     _loc18_.b2.velx = _loc18_.b2.velx + _loc8_ * _loc18_.b2.imass;
                     _loc18_.b2.vely = _loc18_.b2.vely + _loc9_ * _loc18_.b2.imass;
                     _loc18_.b1.velx = _loc18_.b1.velx - _loc8_ * _loc18_.b1.imass;
                     _loc18_.b1.vely = _loc18_.b1.vely - _loc9_ * _loc18_.b1.imass;
                     _loc18_.b2.angvel = _loc18_.b2.angvel + _loc18_.rt2b * _loc10_ * _loc18_.b2.iinertia;
                     _loc18_.b1.angvel = _loc18_.b1.angvel - _loc18_.rt2a * _loc10_ * _loc18_.b1.iinertia;
                  }
                  else
                  {
                     _loc10_ = ((_loc3_ * _loc18_.c1.bounce + (_loc18_.nx * _loc20_ + _loc18_.ny * _loc21_)) + _loc18_.surfacey) * _loc18_.c1.nMass;
                     _loc12_ = _loc18_.c1.jnAcc;
                     _loc19_ = _loc12_ - _loc10_;
                     if(_loc19_ < 0.0)
                     {
                        _loc19_ = 0.0;
                     }
                     _loc10_ = _loc19_ - _loc12_;
                     _loc18_.c1.jnAcc = _loc19_;
                     _loc8_ = _loc18_.nx * _loc10_;
                     _loc9_ = _loc18_.ny * _loc10_;
                     _loc18_.b2.velx = _loc18_.b2.velx + _loc8_ * _loc18_.b2.imass;
                     _loc18_.b2.vely = _loc18_.b2.vely + _loc9_ * _loc18_.b2.imass;
                     _loc18_.b1.velx = _loc18_.b1.velx - _loc8_ * _loc18_.b1.imass;
                     _loc18_.b1.vely = _loc18_.b1.vely - _loc9_ * _loc18_.b1.imass;
                     _loc18_.b2.angvel = _loc18_.b2.angvel + _loc18_.rn1b * _loc10_ * _loc18_.b2.iinertia;
                     _loc18_.b1.angvel = _loc18_.b1.angvel - _loc18_.rn1a * _loc10_ * _loc18_.b1.iinertia;
                     _loc20_ = (_loc18_.k1x + _loc18_.b2.velx) - _loc18_.c1.r2y * _loc18_.b2.angvel - (_loc18_.b1.velx - _loc18_.c1.r1y * _loc18_.b1.angvel);
                     _loc21_ = ((_loc18_.k1y + _loc18_.b2.vely) + _loc18_.c1.r2x * _loc18_.b2.angvel) - (_loc18_.b1.vely + _loc18_.c1.r1x * _loc18_.b1.angvel);
                     _loc10_ = (_loc21_ * _loc18_.nx - _loc20_ * _loc18_.ny + _loc18_.surfacex) * _loc18_.c1.tMass;
                     _loc11_ = _loc18_.c1.friction * _loc18_.c1.jnAcc;
                     _loc12_ = _loc18_.c1.jtAcc;
                     _loc19_ = _loc12_ - _loc10_;
                     if(_loc19_ > _loc11_)
                     {
                        _loc19_ = _loc11_;
                     }
                     else if(_loc19_ < -_loc11_)
                     {
                        _loc19_ = -_loc11_;
                     }
                     
                     _loc10_ = _loc19_ - _loc12_;
                     _loc18_.c1.jtAcc = _loc19_;
                     _loc8_ = -_loc18_.ny * _loc10_;
                     _loc9_ = _loc18_.nx * _loc10_;
                     _loc18_.b2.velx = _loc18_.b2.velx + _loc8_ * _loc18_.b2.imass;
                     _loc18_.b2.vely = _loc18_.b2.vely + _loc9_ * _loc18_.b2.imass;
                     _loc18_.b1.velx = _loc18_.b1.velx - _loc8_ * _loc18_.b1.imass;
                     _loc18_.b1.vely = _loc18_.b1.vely - _loc9_ * _loc18_.b1.imass;
                     _loc18_.b2.angvel = _loc18_.b2.angvel + _loc18_.rt1b * _loc10_ * _loc18_.b2.iinertia;
                     _loc18_.b1.angvel = _loc18_.b1.angvel - _loc18_.rt1a * _loc10_ * _loc18_.b1.iinertia;
                     if(_loc18_.radius != 0.0)
                     {
                        _loc22_ = _loc18_.b2.angvel - _loc18_.b1.angvel;
                        _loc10_ = _loc22_ * _loc18_.rMass;
                        _loc11_ = _loc18_.rfric * _loc18_.c1.jnAcc;
                        _loc12_ = _loc18_.jrAcc;
                        _loc18_.jrAcc = _loc18_.jrAcc - _loc10_;
                        if(_loc18_.jrAcc > _loc11_)
                        {
                           _loc18_.jrAcc = _loc11_;
                        }
                        else if(_loc18_.jrAcc < -_loc11_)
                        {
                           _loc18_.jrAcc = -_loc11_;
                        }
                        
                        _loc10_ = _loc18_.jrAcc - _loc12_;
                        _loc18_.b2.angvel = _loc18_.b2.angvel + _loc10_ * _loc18_.b2.iinertia;
                        _loc18_.b1.angvel = _loc18_.b1.angvel - _loc10_ * _loc18_.b1.iinertia;
                     }
                  }
               }
               _loc16_ = _loc16_.next;
               if(_loc17_)
               {
                  false;
               }
               if(false)
               {
                  _loc16_ = c_arbiters_true.head;
                  _loc17_ = false;
               }
            }
         }
      }
      
      public function iteratePos(param1:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = null as ZNPNode_ZPP_Constraint;
         var _loc5_:* = null as ZNPNode_ZPP_Constraint;
         var _loc6_:* = null as ZPP_Constraint;
         var _loc7_:* = null as ZNPNode_ZPP_ColArbiter;
         var _loc8_:* = false;
         var _loc9_:* = null as ZPP_ColArbiter;
         var _loc10_:* = null as ZPP_IContact;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         var _loc27_:* = NaN;
         var _loc28_:* = NaN;
         var _loc29_:* = NaN;
         var _loc30_:* = NaN;
         var _loc31_:* = null as ZPP_Body;
         var _loc32_:* = NaN;
         var _loc33_:* = NaN;
         var _loc34_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = NaN;
         var _loc39_:* = NaN;
         var _loc40_:* = NaN;
         var _loc41_:* = NaN;
         var _loc42_:* = NaN;
         var _loc43_:* = NaN;
         var _loc44_:* = NaN;
         var _loc45_:* = NaN;
         var _loc46_:* = NaN;
         var _loc47_:* = NaN;
         var _loc48_:* = NaN;
         var _loc2_:* = 0;
         while(_loc2_ < param1)
         {
            _loc2_++;
            _loc3_ = _loc2_;
            _loc4_ = null;
            _loc5_ = live_constraints.head;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.elt;
               if(!_loc6_.__velocity)
               {
                  false;
               }
               if(false)
               {
                  if(_loc6_.applyImpulsePos())
                  {
                     _loc5_ = live_constraints.erase(_loc4_);
                     constraintCbBreak(_loc6_);
                     if(_loc6_.removeOnBreak)
                     {
                        _loc6_.component.sleeping = true;
                        midstep = false;
                        if(_loc6_.compound != null)
                        {
                           _loc6_.compound.wrap_constraints.remove(_loc6_.outer);
                        }
                        else
                        {
                           wrap_constraints.remove(_loc6_.outer);
                        }
                        midstep = true;
                     }
                     else
                     {
                        _loc6_.active = false;
                     }
                     _loc6_.clearcache();
                     continue;
                  }
               }
               _loc4_ = _loc5_;
               _loc5_ = _loc5_.next;
            }
            _loc7_ = c_arbiters_false.head;
            _loc8_ = true;
            if(_loc7_ == null)
            {
               _loc7_ = c_arbiters_true.head;
               _loc8_ = false;
            }
            while(_loc7_ != null)
            {
               _loc9_ = _loc7_.elt;
               if(_loc9_.active)
               {
                  false;
               }
               if(false)
               {
                  if(_loc9_.ptype == 2)
                  {
                     _loc10_ = _loc9_.c1;
                     _loc13_ = _loc9_.b2.axisy * _loc10_.lr2x - _loc9_.b2.axisx * _loc10_.lr2y;
                     _loc14_ = _loc10_.lr2x * _loc9_.b2.axisx + _loc10_.lr2y * _loc9_.b2.axisy;
                     _loc15_ = 1.0;
                     _loc13_ = _loc13_ + _loc9_.b2.posx * _loc15_;
                     _loc14_ = _loc14_ + _loc9_.b2.posy * _loc15_;
                     _loc15_ = _loc9_.b1.axisy * _loc10_.lr1x - _loc9_.b1.axisx * _loc10_.lr1y;
                     _loc16_ = _loc10_.lr1x * _loc9_.b1.axisx + _loc10_.lr1y * _loc9_.b1.axisy;
                     _loc17_ = 1.0;
                     _loc15_ = _loc15_ + _loc9_.b1.posx * _loc17_;
                     _loc16_ = _loc16_ + _loc9_.b1.posy * _loc17_;
                     _loc17_ = _loc13_ - _loc15_;
                     _loc18_ = _loc14_ - _loc16_;
                     _loc19_ = _loc17_ * _loc17_ + _loc18_ * _loc18_;
                     _loc20_ = _loc9_.radius - 0.25;
                     if(_loc19_ < _loc20_ * _loc20_)
                     {
                        if(_loc19_ < 1.0E-8 * 1.0E-8)
                        {
                           if(_loc9_.b1.smass != 0.0)
                           {
                              _loc9_.b1.posx = _loc9_.b1.posx + 1.0E-7;
                           }
                           else
                           {
                              _loc9_.b2.posx = _loc9_.b2.posx + 1.0E-7;
                           }
                        }
                        else
                        {
                           if(_loc19_ != 0.0)
                           {
                              _loc21_ = op_lf32(0) /*Alchemy*/;
                           }
                           if(_loc19_ == 0.0)
                           {
                              _loc19_ = 0.0;
                              _loc21_ = 1.0 / _loc19_;
                              _loc17_ = _loc17_ * _loc21_;
                              _loc18_ = _loc18_ * _loc21_;
                              _loc21_ = 0.5 * (_loc15_ + _loc13_);
                              _loc22_ = 0.5 * (_loc16_ + _loc14_);
                              _loc23_ = _loc19_ - _loc20_;
                              _loc15_ = _loc21_ - _loc9_.b1.posx;
                              _loc16_ = _loc22_ - _loc9_.b1.posy;
                              _loc13_ = _loc21_ - _loc9_.b2.posx;
                              _loc14_ = _loc22_ - _loc9_.b2.posy;
                              _loc24_ = _loc18_ * _loc15_ - _loc17_ * _loc16_;
                              _loc25_ = _loc18_ * _loc13_ - _loc17_ * _loc14_;
                              _loc26_ = ((_loc9_.b2.smass + _loc25_ * _loc25_ * _loc9_.b2.sinertia) + _loc9_.b1.smass) + _loc24_ * _loc24_ * _loc9_.b1.sinertia;
                              if(_loc26_ != 0)
                              {
                                 _loc27_ = -_loc9_.c1.biasCoef * _loc23_ / _loc26_;
                                 _loc30_ = _loc27_;
                                 _loc28_ = _loc17_ * _loc30_;
                                 _loc29_ = _loc18_ * _loc30_;
                                 _loc30_ = _loc9_.b1.imass;
                                 _loc9_.b1.posx = _loc9_.b1.posx - _loc28_ * _loc30_;
                                 _loc9_.b1.posy = _loc9_.b1.posy - _loc29_ * _loc30_;
                                 _loc31_ = _loc9_.b1;
                                 _loc30_ = -_loc24_ * _loc9_.b1.iinertia * _loc27_;
                                 _loc31_.rot = _loc31_.rot + _loc30_;
                                 if(_loc30_ * _loc30_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc32_ = _loc30_ * _loc30_;
                                    _loc33_ = 1 - 0.5 * _loc32_;
                                    _loc34_ = 1 - _loc32_ * _loc32_ / 8;
                                    _loc35_ = (_loc33_ * _loc31_.axisx + _loc30_ * _loc31_.axisy) * _loc34_;
                                    _loc31_.axisy = (_loc33_ * _loc31_.axisy - _loc30_ * _loc31_.axisx) * _loc34_;
                                    _loc31_.axisx = _loc35_;
                                 }
                                 _loc30_ = _loc9_.b2.imass;
                                 _loc9_.b2.posx = _loc9_.b2.posx + _loc28_ * _loc30_;
                                 _loc9_.b2.posy = _loc9_.b2.posy + _loc29_ * _loc30_;
                                 _loc31_ = _loc9_.b2;
                                 _loc30_ = _loc25_ * _loc9_.b2.iinertia * _loc27_;
                                 _loc31_.rot = _loc31_.rot + _loc30_;
                                 if(_loc30_ * _loc30_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc32_ = _loc30_ * _loc30_;
                                    _loc33_ = 1 - 0.5 * _loc32_;
                                    _loc34_ = 1 - _loc32_ * _loc32_ / 8;
                                    _loc35_ = (_loc33_ * _loc31_.axisx + _loc30_ * _loc31_.axisy) * _loc34_;
                                    _loc31_.axisy = (_loc33_ * _loc31_.axisy - _loc30_ * _loc31_.axisx) * _loc34_;
                                    _loc31_.axisx = _loc35_;
                                 }
                              }
                           }
                           else
                           {
                              _loc19_ = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc21_ * (1.5 - 0.5 * _loc19_ * _loc21_ * _loc21_));
                              _loc21_ = 1.0 / _loc19_;
                              _loc17_ = _loc17_ * _loc21_;
                              _loc18_ = _loc18_ * _loc21_;
                              _loc21_ = 0.5 * (_loc15_ + _loc13_);
                              _loc22_ = 0.5 * (_loc16_ + _loc14_);
                              _loc23_ = _loc19_ - _loc20_;
                              _loc15_ = _loc21_ - _loc9_.b1.posx;
                              _loc16_ = _loc22_ - _loc9_.b1.posy;
                              _loc13_ = _loc21_ - _loc9_.b2.posx;
                              _loc14_ = _loc22_ - _loc9_.b2.posy;
                              _loc24_ = _loc18_ * _loc15_ - _loc17_ * _loc16_;
                              _loc25_ = _loc18_ * _loc13_ - _loc17_ * _loc14_;
                              _loc26_ = ((_loc9_.b2.smass + _loc25_ * _loc25_ * _loc9_.b2.sinertia) + _loc9_.b1.smass) + _loc24_ * _loc24_ * _loc9_.b1.sinertia;
                              if(_loc26_ != 0)
                              {
                                 _loc27_ = -_loc9_.c1.biasCoef * _loc23_ / _loc26_;
                                 _loc30_ = _loc27_;
                                 _loc28_ = _loc17_ * _loc30_;
                                 _loc29_ = _loc18_ * _loc30_;
                                 _loc30_ = _loc9_.b1.imass;
                                 _loc9_.b1.posx = _loc9_.b1.posx - _loc28_ * _loc30_;
                                 _loc9_.b1.posy = _loc9_.b1.posy - _loc29_ * _loc30_;
                                 _loc31_ = _loc9_.b1;
                                 _loc30_ = -_loc24_ * _loc9_.b1.iinertia * _loc27_;
                                 _loc31_.rot = _loc31_.rot + _loc30_;
                                 if(_loc30_ * _loc30_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc32_ = _loc30_ * _loc30_;
                                    _loc33_ = 1 - 0.5 * _loc32_;
                                    _loc34_ = 1 - _loc32_ * _loc32_ / 8;
                                    _loc35_ = (_loc33_ * _loc31_.axisx + _loc30_ * _loc31_.axisy) * _loc34_;
                                    _loc31_.axisy = (_loc33_ * _loc31_.axisy - _loc30_ * _loc31_.axisx) * _loc34_;
                                    _loc31_.axisx = _loc35_;
                                 }
                                 _loc30_ = _loc9_.b2.imass;
                                 _loc9_.b2.posx = _loc9_.b2.posx + _loc28_ * _loc30_;
                                 _loc9_.b2.posy = _loc9_.b2.posy + _loc29_ * _loc30_;
                                 _loc31_ = _loc9_.b2;
                                 _loc30_ = _loc25_ * _loc9_.b2.iinertia * _loc27_;
                                 _loc31_.rot = _loc31_.rot + _loc30_;
                                 if(_loc30_ * _loc30_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc32_ = _loc30_ * _loc30_;
                                    _loc33_ = 1 - 0.5 * _loc32_;
                                    _loc34_ = 1 - _loc32_ * _loc32_ / 8;
                                    _loc35_ = (_loc33_ * _loc31_.axisx + _loc30_ * _loc31_.axisy) * _loc34_;
                                    _loc31_.axisy = (_loc33_ * _loc31_.axisy - _loc30_ * _loc31_.axisx) * _loc34_;
                                    _loc31_.axisx = _loc35_;
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc16_ = 0;
                     _loc17_ = 0;
                     if(_loc9_.ptype == 0)
                     {
                        _loc11_ = _loc9_.b1.axisy * _loc9_.lnormx - _loc9_.b1.axisx * _loc9_.lnormy;
                        _loc12_ = _loc9_.lnormx * _loc9_.b1.axisx + _loc9_.lnormy * _loc9_.b1.axisy;
                        _loc13_ = _loc9_.lproj + (_loc11_ * _loc9_.b1.posx + _loc12_ * _loc9_.b1.posy);
                        _loc14_ = _loc9_.b2.axisy * _loc9_.c1.lr1x - _loc9_.b2.axisx * _loc9_.c1.lr1y;
                        _loc15_ = _loc9_.c1.lr1x * _loc9_.b2.axisx + _loc9_.c1.lr1y * _loc9_.b2.axisy;
                        _loc18_ = 1.0;
                        _loc14_ = _loc14_ + _loc9_.b2.posx * _loc18_;
                        _loc15_ = _loc15_ + _loc9_.b2.posy * _loc18_;
                        if(_loc9_.hc2)
                        {
                           _loc16_ = _loc9_.b2.axisy * _loc9_.c2.lr1x - _loc9_.b2.axisx * _loc9_.c2.lr1y;
                           _loc17_ = _loc9_.c2.lr1x * _loc9_.b2.axisx + _loc9_.c2.lr1y * _loc9_.b2.axisy;
                           _loc18_ = 1.0;
                           _loc16_ = _loc16_ + _loc9_.b2.posx * _loc18_;
                           _loc17_ = _loc17_ + _loc9_.b2.posy * _loc18_;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc9_.b2.axisy * _loc9_.lnormx - _loc9_.b2.axisx * _loc9_.lnormy;
                        _loc12_ = _loc9_.lnormx * _loc9_.b2.axisx + _loc9_.lnormy * _loc9_.b2.axisy;
                        _loc13_ = _loc9_.lproj + (_loc11_ * _loc9_.b2.posx + _loc12_ * _loc9_.b2.posy);
                        _loc14_ = _loc9_.b1.axisy * _loc9_.c1.lr1x - _loc9_.b1.axisx * _loc9_.c1.lr1y;
                        _loc15_ = _loc9_.c1.lr1x * _loc9_.b1.axisx + _loc9_.c1.lr1y * _loc9_.b1.axisy;
                        _loc18_ = 1.0;
                        _loc14_ = _loc14_ + _loc9_.b1.posx * _loc18_;
                        _loc15_ = _loc15_ + _loc9_.b1.posy * _loc18_;
                        if(_loc9_.hc2)
                        {
                           _loc16_ = _loc9_.b1.axisy * _loc9_.c2.lr1x - _loc9_.b1.axisx * _loc9_.c2.lr1y;
                           _loc17_ = _loc9_.c2.lr1x * _loc9_.b1.axisx + _loc9_.c2.lr1y * _loc9_.b1.axisy;
                           _loc18_ = 1.0;
                           _loc16_ = _loc16_ + _loc9_.b1.posx * _loc18_;
                           _loc17_ = _loc17_ + _loc9_.b1.posy * _loc18_;
                        }
                     }
                     _loc18_ = (_loc14_ * _loc11_ + _loc15_ * _loc12_) - _loc13_ - _loc9_.radius;
                     _loc18_ = _loc18_ + 0.25;
                     _loc19_ = 0.0;
                     if(_loc9_.hc2)
                     {
                        _loc19_ = (_loc16_ * _loc11_ + _loc17_ * _loc12_) - _loc13_ - _loc9_.radius;
                        _loc19_ = _loc19_ + 0.25;
                     }
                     if(_loc18_ >= 0)
                     {
                        true;
                     }
                     if(true)
                     {
                        if(_loc9_.rev)
                        {
                           _loc11_ = -_loc11_;
                           _loc12_ = -_loc12_;
                        }
                        _loc20_ = _loc14_ - _loc9_.b1.posx;
                        _loc21_ = _loc15_ - _loc9_.b1.posy;
                        _loc22_ = _loc14_ - _loc9_.b2.posx;
                        _loc23_ = _loc15_ - _loc9_.b2.posy;
                        _loc24_ = 0;
                        _loc25_ = 0;
                        _loc26_ = 0;
                        _loc27_ = 0;
                        if(_loc9_.hc2)
                        {
                           _loc24_ = _loc16_ - _loc9_.b1.posx;
                           _loc25_ = _loc17_ - _loc9_.b1.posy;
                           _loc26_ = _loc16_ - _loc9_.b2.posx;
                           _loc27_ = _loc17_ - _loc9_.b2.posy;
                           _loc28_ = _loc12_ * _loc20_ - _loc11_ * _loc21_;
                           _loc29_ = _loc12_ * _loc22_ - _loc11_ * _loc23_;
                           _loc30_ = _loc12_ * _loc24_ - _loc11_ * _loc25_;
                           _loc32_ = _loc12_ * _loc26_ - _loc11_ * _loc27_;
                           _loc33_ = _loc9_.b1.smass + _loc9_.b2.smass;
                           _loc9_.kMassa = (_loc33_ + _loc9_.b1.sinertia * _loc28_ * _loc28_) + _loc9_.b2.sinertia * _loc29_ * _loc29_;
                           _loc9_.kMassb = (_loc33_ + _loc9_.b1.sinertia * _loc28_ * _loc30_) + _loc9_.b2.sinertia * _loc29_ * _loc32_;
                           _loc9_.kMassc = (_loc33_ + _loc9_.b1.sinertia * _loc30_ * _loc30_) + _loc9_.b2.sinertia * _loc32_ * _loc32_;
                           _loc34_ = _loc9_.kMassa;
                           _loc35_ = _loc9_.kMassb;
                           _loc36_ = _loc9_.kMassc;
                           _loc37_ = (_loc9_.c1.biasCoef + _loc9_.c2.biasCoef) * 0.5;
                           _loc38_ = _loc18_ * _loc37_;
                           _loc39_ = _loc19_ * _loc37_;
                           do
                           {
                              _loc40_ = _loc38_;
                              _loc41_ = _loc39_;
                              _loc40_ = -_loc40_;
                              _loc41_ = -_loc41_;
                              _loc42_ = _loc9_.kMassa * _loc9_.kMassc - _loc9_.kMassb * _loc9_.kMassb;
                              if(_loc42_ != _loc42_)
                              {
                                 _loc41_ = 0;
                                 _loc40_ = _loc41_;
                              }
                              else if(_loc42_ == 0)
                              {
                                 if(_loc9_.kMassa != 0)
                                 {
                                    _loc40_ = _loc40_ / _loc9_.kMassa;
                                 }
                                 else
                                 {
                                    _loc40_ = 0;
                                 }
                                 if(_loc9_.kMassc != 0)
                                 {
                                    _loc41_ = _loc41_ / _loc9_.kMassc;
                                 }
                                 else
                                 {
                                    _loc41_ = 0;
                                 }
                              }
                              else
                              {
                                 _loc42_ = 1 / _loc42_;
                                 _loc43_ = _loc42_ * (_loc9_.kMassc * _loc40_ - _loc9_.kMassb * _loc41_);
                                 _loc41_ = _loc42_ * (_loc9_.kMassa * _loc41_ - _loc9_.kMassb * _loc40_);
                                 _loc40_ = _loc43_;
                              }
                              
                              if(_loc40_ >= 0)
                              {
                                 false;
                              }
                              if(false)
                              {
                                 _loc42_ = (_loc40_ + _loc41_) * _loc9_.b1.imass;
                                 _loc9_.b1.posx = _loc9_.b1.posx - _loc11_ * _loc42_;
                                 _loc9_.b1.posy = _loc9_.b1.posy - _loc12_ * _loc42_;
                                 _loc31_ = _loc9_.b1;
                                 _loc42_ = -_loc9_.b1.iinertia * (_loc28_ * _loc40_ + _loc30_ * _loc41_);
                                 _loc31_.rot = _loc31_.rot + _loc42_;
                                 if(_loc42_ * _loc42_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc43_ = _loc42_ * _loc42_;
                                    _loc44_ = 1 - 0.5 * _loc43_;
                                    _loc45_ = 1 - _loc43_ * _loc43_ / 8;
                                    _loc46_ = (_loc44_ * _loc31_.axisx + _loc42_ * _loc31_.axisy) * _loc45_;
                                    _loc31_.axisy = (_loc44_ * _loc31_.axisy - _loc42_ * _loc31_.axisx) * _loc45_;
                                    _loc31_.axisx = _loc46_;
                                 }
                                 _loc42_ = (_loc40_ + _loc41_) * _loc9_.b2.imass;
                                 _loc9_.b2.posx = _loc9_.b2.posx + _loc11_ * _loc42_;
                                 _loc9_.b2.posy = _loc9_.b2.posy + _loc12_ * _loc42_;
                                 _loc31_ = _loc9_.b2;
                                 _loc42_ = _loc9_.b2.iinertia * (_loc29_ * _loc40_ + _loc32_ * _loc41_);
                                 _loc31_.rot = _loc31_.rot + _loc42_;
                                 if(_loc42_ * _loc42_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc43_ = _loc42_ * _loc42_;
                                    _loc44_ = 1 - 0.5 * _loc43_;
                                    _loc45_ = 1 - _loc43_ * _loc43_ / 8;
                                    _loc46_ = (_loc44_ * _loc31_.axisx + _loc42_ * _loc31_.axisy) * _loc45_;
                                    _loc31_.axisy = (_loc44_ * _loc31_.axisy - _loc42_ * _loc31_.axisx) * _loc45_;
                                    _loc31_.axisx = _loc46_;
                                 }
                                 break;
                              }
                              _loc40_ = -_loc38_ / _loc34_;
                              _loc41_ = 0;
                              _loc42_ = _loc35_ * _loc40_ + _loc39_;
                              if(_loc40_ >= 0)
                              {
                                 false;
                              }
                              if(false)
                              {
                                 _loc43_ = (_loc40_ + _loc41_) * _loc9_.b1.imass;
                                 _loc9_.b1.posx = _loc9_.b1.posx - _loc11_ * _loc43_;
                                 _loc9_.b1.posy = _loc9_.b1.posy - _loc12_ * _loc43_;
                                 _loc31_ = _loc9_.b1;
                                 _loc43_ = -_loc9_.b1.iinertia * (_loc28_ * _loc40_ + _loc30_ * _loc41_);
                                 _loc31_.rot = _loc31_.rot + _loc43_;
                                 if(_loc43_ * _loc43_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc44_ = _loc43_ * _loc43_;
                                    _loc45_ = 1 - 0.5 * _loc44_;
                                    _loc46_ = 1 - _loc44_ * _loc44_ / 8;
                                    _loc47_ = (_loc45_ * _loc31_.axisx + _loc43_ * _loc31_.axisy) * _loc46_;
                                    _loc31_.axisy = (_loc45_ * _loc31_.axisy - _loc43_ * _loc31_.axisx) * _loc46_;
                                    _loc31_.axisx = _loc47_;
                                 }
                                 _loc43_ = (_loc40_ + _loc41_) * _loc9_.b2.imass;
                                 _loc9_.b2.posx = _loc9_.b2.posx + _loc11_ * _loc43_;
                                 _loc9_.b2.posy = _loc9_.b2.posy + _loc12_ * _loc43_;
                                 _loc31_ = _loc9_.b2;
                                 _loc43_ = _loc9_.b2.iinertia * (_loc29_ * _loc40_ + _loc32_ * _loc41_);
                                 _loc31_.rot = _loc31_.rot + _loc43_;
                                 if(_loc43_ * _loc43_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc44_ = _loc43_ * _loc43_;
                                    _loc45_ = 1 - 0.5 * _loc44_;
                                    _loc46_ = 1 - _loc44_ * _loc44_ / 8;
                                    _loc47_ = (_loc45_ * _loc31_.axisx + _loc43_ * _loc31_.axisy) * _loc46_;
                                    _loc31_.axisy = (_loc45_ * _loc31_.axisy - _loc43_ * _loc31_.axisx) * _loc46_;
                                    _loc31_.axisx = _loc47_;
                                 }
                                 break;
                              }
                              _loc40_ = 0;
                              _loc41_ = -_loc39_ / _loc36_;
                              _loc43_ = _loc35_ * _loc41_ + _loc38_;
                              if(_loc41_ >= 0)
                              {
                                 false;
                              }
                              if(false)
                              {
                                 _loc44_ = (_loc40_ + _loc41_) * _loc9_.b1.imass;
                                 _loc9_.b1.posx = _loc9_.b1.posx - _loc11_ * _loc44_;
                                 _loc9_.b1.posy = _loc9_.b1.posy - _loc12_ * _loc44_;
                                 _loc31_ = _loc9_.b1;
                                 _loc44_ = -_loc9_.b1.iinertia * (_loc28_ * _loc40_ + _loc30_ * _loc41_);
                                 _loc31_.rot = _loc31_.rot + _loc44_;
                                 if(_loc44_ * _loc44_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc45_ = _loc44_ * _loc44_;
                                    _loc46_ = 1 - 0.5 * _loc45_;
                                    _loc47_ = 1 - _loc45_ * _loc45_ / 8;
                                    _loc48_ = (_loc46_ * _loc31_.axisx + _loc44_ * _loc31_.axisy) * _loc47_;
                                    _loc31_.axisy = (_loc46_ * _loc31_.axisy - _loc44_ * _loc31_.axisx) * _loc47_;
                                    _loc31_.axisx = _loc48_;
                                 }
                                 _loc44_ = (_loc40_ + _loc41_) * _loc9_.b2.imass;
                                 _loc9_.b2.posx = _loc9_.b2.posx + _loc11_ * _loc44_;
                                 _loc9_.b2.posy = _loc9_.b2.posy + _loc12_ * _loc44_;
                                 _loc31_ = _loc9_.b2;
                                 _loc44_ = _loc9_.b2.iinertia * (_loc29_ * _loc40_ + _loc32_ * _loc41_);
                                 _loc31_.rot = _loc31_.rot + _loc44_;
                                 if(_loc44_ * _loc44_ > 1.0E-4)
                                 {
                                    _loc31_.axisx = Math.sin(_loc31_.rot);
                                    _loc31_.axisy = Math.cos(_loc31_.rot);
                                    null;
                                 }
                                 else
                                 {
                                    _loc45_ = _loc44_ * _loc44_;
                                    _loc46_ = 1 - 0.5 * _loc45_;
                                    _loc47_ = 1 - _loc45_ * _loc45_ / 8;
                                    _loc48_ = (_loc46_ * _loc31_.axisx + _loc44_ * _loc31_.axisy) * _loc47_;
                                    _loc31_.axisy = (_loc46_ * _loc31_.axisy - _loc44_ * _loc31_.axisx) * _loc47_;
                                    _loc31_.axisx = _loc48_;
                                 }
                                 break;
                              }
                           }
                           while(false);
                           
                        }
                        else
                        {
                           _loc28_ = _loc12_ * _loc20_ - _loc11_ * _loc21_;
                           _loc29_ = _loc12_ * _loc22_ - _loc11_ * _loc23_;
                           _loc30_ = ((_loc9_.b2.smass + _loc29_ * _loc29_ * _loc9_.b2.sinertia) + _loc9_.b1.smass) + _loc28_ * _loc28_ * _loc9_.b1.sinertia;
                           if(_loc30_ != 0)
                           {
                              _loc32_ = -_loc9_.c1.biasCoef * _loc18_ / _loc30_;
                              _loc35_ = _loc32_;
                              _loc33_ = _loc11_ * _loc35_;
                              _loc34_ = _loc12_ * _loc35_;
                              _loc35_ = _loc9_.b1.imass;
                              _loc9_.b1.posx = _loc9_.b1.posx - _loc33_ * _loc35_;
                              _loc9_.b1.posy = _loc9_.b1.posy - _loc34_ * _loc35_;
                              _loc31_ = _loc9_.b1;
                              _loc35_ = -_loc28_ * _loc9_.b1.iinertia * _loc32_;
                              _loc31_.rot = _loc31_.rot + _loc35_;
                              if(_loc35_ * _loc35_ > 1.0E-4)
                              {
                                 _loc31_.axisx = Math.sin(_loc31_.rot);
                                 _loc31_.axisy = Math.cos(_loc31_.rot);
                                 null;
                              }
                              else
                              {
                                 _loc36_ = _loc35_ * _loc35_;
                                 _loc37_ = 1 - 0.5 * _loc36_;
                                 _loc38_ = 1 - _loc36_ * _loc36_ / 8;
                                 _loc39_ = (_loc37_ * _loc31_.axisx + _loc35_ * _loc31_.axisy) * _loc38_;
                                 _loc31_.axisy = (_loc37_ * _loc31_.axisy - _loc35_ * _loc31_.axisx) * _loc38_;
                                 _loc31_.axisx = _loc39_;
                              }
                              _loc35_ = _loc9_.b2.imass;
                              _loc9_.b2.posx = _loc9_.b2.posx + _loc33_ * _loc35_;
                              _loc9_.b2.posy = _loc9_.b2.posy + _loc34_ * _loc35_;
                              _loc31_ = _loc9_.b2;
                              _loc35_ = _loc29_ * _loc9_.b2.iinertia * _loc32_;
                              _loc31_.rot = _loc31_.rot + _loc35_;
                              if(_loc35_ * _loc35_ > 1.0E-4)
                              {
                                 _loc31_.axisx = Math.sin(_loc31_.rot);
                                 _loc31_.axisy = Math.cos(_loc31_.rot);
                                 null;
                              }
                              else
                              {
                                 _loc36_ = _loc35_ * _loc35_;
                                 _loc37_ = 1 - 0.5 * _loc36_;
                                 _loc38_ = 1 - _loc36_ * _loc36_ / 8;
                                 _loc39_ = (_loc37_ * _loc31_.axisx + _loc35_ * _loc31_.axisy) * _loc38_;
                                 _loc31_.axisy = (_loc37_ * _loc31_.axisy - _loc35_ * _loc31_.axisx) * _loc38_;
                                 _loc31_.axisx = _loc39_;
                              }
                           }
                        }
                        if(_loc9_.hc2)
                        {
                        }
                     }
                  }
               }
               _loc7_ = _loc7_.next;
               if(_loc8_)
               {
                  false;
               }
               if(false)
               {
                  _loc7_ = c_arbiters_true.head;
                  _loc8_ = false;
               }
            }
         }
      }
      
      public var islands:ZPP_Island;
      
      public var id:int;
      
      public var gravityy:Number;
      
      public var gravityx:Number;
      
      public function gravity_validate() : void
      {
         wrap_gravity.zpp_inner.x = gravityx;
         wrap_gravity.zpp_inner.y = gravityy;
      }
      
      public function gravity_invalidate(param1:ZPP_Vec2) : void
      {
         var _loc3_:* = null as ZNPNode_ZPP_Body;
         var _loc4_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Compound;
         var _loc7_:* = null as ZPP_Compound;
         var _loc8_:* = null as ZPP_Compound;
         gravityx = param1.x;
         gravityy = param1.y;
         var _loc2_:ZNPList_ZPP_Compound = new ZNPList_ZPP_Compound();
         _loc3_ = bodies.head;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.elt;
            _loc5_ = _loc4_;
            if(!_loc5_.world)
            {
               _loc5_.component.waket = stamp + (midstep?0:1);
               if(_loc5_.component.sleeping)
               {
                  really_wake(_loc5_,false);
               }
            }
            _loc3_ = _loc3_.next;
         }
         _loc6_ = compounds.head;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.elt;
            _loc2_.add(_loc7_);
            _loc6_ = _loc6_.next;
         }
         while(_loc2_.head != null)
         {
            _loc7_ = _loc2_.pop_unsafe();
            _loc3_ = _loc7_.bodies.head;
            while(_loc3_ != null)
            {
               _loc4_ = _loc3_.elt;
               _loc5_ = _loc4_;
               if(!_loc5_.world)
               {
                  _loc5_.component.waket = stamp + (midstep?0:1);
                  if(_loc5_.component.sleeping)
                  {
                     really_wake(_loc5_,false);
                  }
               }
               _loc3_ = _loc3_.next;
            }
            _loc6_ = _loc7_.compounds.head;
            while(_loc6_ != null)
            {
               _loc8_ = _loc6_.elt;
               _loc2_.add(_loc8_);
               _loc6_ = _loc6_.next;
            }
         }
      }
      
      public var global_lin_drag:Number;
      
      public var global_ang_drag:Number;
      
      public function getgravity() : void
      {
         wrap_gravity = Vec2.get(gravityx,gravityy);
         wrap_gravity.zpp_inner._inuse = true;
         wrap_gravity.zpp_inner._invalidate = gravity_invalidate;
         wrap_gravity.zpp_inner._validate = gravity_validate;
      }
      
      public function freshListenerType(param1:ZPP_CbSet, param2:ZPP_CbSet) : void
      {
         var _loc4_:* = null as ZNPNode_ZPP_Interactor;
         var _loc5_:* = null as ZPP_Interactor;
         var _loc6_:* = null as ZPP_Compound;
         var _loc7_:* = null as ZNPNode_ZPP_Body;
         var _loc8_:* = null as ZPP_Body;
         var _loc9_:* = null as ZNPNode_ZPP_Compound;
         var _loc10_:* = null as ZPP_Compound;
         var _loc11_:* = null as ZPP_Shape;
         var _loc12_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc13_:* = null as ZPP_Arbiter;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZNPNode_ZPP_Interactor;
         var _loc16_:* = null as ZPP_Interactor;
         var _loc17_:* = null as ZPP_CallbackSet;
         var _loc18_:* = false;
         var _loc19_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc20_:* = null as ZPP_Arbiter;
         var _loc21_:* = null as ZNPList_ZPP_Arbiter;
         var _loc22_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc3_:ZNPList_ZPP_Interactor = new ZNPList_ZPP_Interactor();
         _loc4_ = param1.interactors.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            _loc3_.add(_loc5_);
            _loc4_ = _loc4_.next;
         }
         if(param1 != param2)
         {
            _loc4_ = param2.interactors.head;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.elt;
               _loc3_.add(_loc5_);
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc3_.head != null)
         {
            _loc5_ = _loc3_.pop_unsafe();
            if(_loc5_.icompound != null)
            {
               _loc6_ = _loc5_.icompound;
               _loc7_ = _loc6_.bodies.head;
               while(_loc7_ != null)
               {
                  _loc8_ = _loc7_.elt;
                  _loc3_.add(_loc8_);
                  _loc7_ = _loc7_.next;
               }
               _loc9_ = _loc6_.compounds.head;
               while(_loc9_ != null)
               {
                  _loc10_ = _loc9_.elt;
                  _loc3_.add(_loc10_);
                  _loc9_ = _loc9_.next;
               }
            }
            else
            {
               _loc8_ = _loc5_.ibody != null?_loc5_.ibody:_loc5_.ishape.body;
               _loc11_ = _loc5_.ishape != null?_loc5_.ishape:null;
               _loc12_ = _loc8_.arbiters.head;
               while(_loc12_ != null)
               {
                  _loc13_ = _loc12_.elt;
                  if(!_loc13_.presentable)
                  {
                     _loc12_ = _loc12_.next;
                  }
                  else
                  {
                     if(_loc11_ != null)
                     {
                        false;
                        if(_loc13_.ws1 != _loc11_)
                        {
                           true;
                        }
                     }
                     if(false)
                     {
                        _loc12_ = _loc12_.next;
                     }
                     else
                     {
                        MRCA_chains(_loc13_.ws1,_loc13_.ws2);
                        _loc4_ = mrca1.head;
                        while(_loc4_ != null)
                        {
                           _loc14_ = _loc4_.elt;
                           if(_loc14_.cbSet != param1)
                           {
                              false;
                           }
                           if(false)
                           {
                              _loc4_ = _loc4_.next;
                           }
                           else
                           {
                              _loc15_ = mrca2.head;
                              while(_loc15_ != null)
                              {
                                 _loc16_ = _loc15_.elt;
                                 if(_loc14_.cbSet == param1)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc14_.cbSet == param2)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc15_ = _loc15_.next;
                                 }
                                 else
                                 {
                                    _loc17_ = ZPP_Interactor.get(_loc14_,_loc16_);
                                    if(_loc17_ == null)
                                    {
                                       _loc17_ = ZPP_CallbackSet.get(_loc14_,_loc16_);
                                       add_callbackset(_loc17_);
                                    }
                                    _loc18_ = false;
                                    _loc19_ = _loc17_.arbiters.head;
                                    while(_loc19_ != null)
                                    {
                                       _loc20_ = _loc19_.elt;
                                       if(_loc20_ == _loc13_)
                                       {
                                          _loc18_ = true;
                                          break;
                                       }
                                       _loc19_ = _loc19_.next;
                                    }
                                    if(!_loc18_)
                                    {
                                       _loc21_ = _loc17_.arbiters;
                                       if(ZNPNode_ZPP_Arbiter.zpp_pool == null)
                                       {
                                          _loc22_ = new ZNPNode_ZPP_Arbiter();
                                       }
                                       else
                                       {
                                          _loc22_ = ZNPNode_ZPP_Arbiter.zpp_pool;
                                          ZNPNode_ZPP_Arbiter.zpp_pool = _loc22_.next;
                                          _loc22_.next = null;
                                       }
                                       null;
                                       _loc22_.elt = _loc13_;
                                       _loc19_ = _loc22_;
                                       _loc19_.next = _loc21_.head;
                                       _loc21_.head = _loc19_;
                                       _loc21_.modified = true;
                                       _loc21_.length = _loc21_.length + 1;
                                       _loc13_;
                                    }
                                    if(!_loc18_)
                                    {
                                       if(true)
                                       {
                                          _loc13_.present = _loc13_.present + 1;
                                       }
                                       _loc15_ = _loc15_.next;
                                    }
                                    else
                                    {
                                       if(false)
                                       {
                                          _loc13_.present = _loc13_.present + 1;
                                       }
                                       _loc15_ = _loc15_.next;
                                    }
                                 }
                              }
                              _loc4_ = _loc4_.next;
                           }
                        }
                        _loc12_ = _loc12_.next;
                     }
                  }
               }
            }
         }
      }
      
      public function freshInteractorType(param1:ZPP_Interactor, param2:ZPP_Interactor = undefined) : void
      {
         var _loc3_:* = null as ZPP_Compound;
         var _loc4_:* = null as ZNPNode_ZPP_Body;
         var _loc5_:* = null as ZPP_Body;
         var _loc6_:* = null as ZNPNode_ZPP_Compound;
         var _loc7_:* = null as ZPP_Compound;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc10_:* = null as ZPP_Arbiter;
         var _loc11_:* = null as ZNPNode_ZPP_Interactor;
         var _loc12_:* = null as ZPP_Interactor;
         var _loc13_:* = null as ZNPNode_ZPP_Interactor;
         var _loc14_:* = null as ZPP_Interactor;
         var _loc15_:* = null as ZPP_CbSet;
         var _loc16_:* = null as ZPP_CbSet;
         var _loc17_:* = null as ZPP_CbSetPair;
         var _loc18_:* = null as ZNPList_ZPP_CbSetPair;
         var _loc19_:* = null as ZNPNode_ZPP_CbSetPair;
         var _loc20_:* = null as ZPP_CbSetPair;
         var _loc21_:* = null as ZPP_CallbackSet;
         var _loc22_:* = false;
         var _loc23_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc24_:* = null as ZPP_Arbiter;
         var _loc25_:* = null as ZNPList_ZPP_Arbiter;
         var _loc26_:* = null as ZNPNode_ZPP_Arbiter;
         if(param2 == null)
         {
            param2 = param1;
         }
         if(param1.icompound != null)
         {
            _loc3_ = param1.icompound;
            _loc4_ = _loc3_.bodies.head;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.elt;
               freshInteractorType(_loc5_,param2);
               _loc4_ = _loc4_.next;
            }
            _loc6_ = _loc3_.compounds.head;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.elt;
               freshInteractorType(_loc7_,param2);
               _loc6_ = _loc6_.next;
            }
         }
         else
         {
            _loc5_ = param1.ibody != null?param1.ibody:param1.ishape.body;
            _loc8_ = param1.ishape != null?param1.ishape:null;
            _loc9_ = _loc5_.arbiters.head;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.elt;
               if(!_loc10_.presentable)
               {
                  _loc9_ = _loc9_.next;
               }
               else
               {
                  if(_loc8_ != null)
                  {
                     false;
                     if(_loc10_.ws1 != _loc8_)
                     {
                        true;
                     }
                  }
                  if(false)
                  {
                     _loc9_ = _loc9_.next;
                  }
                  else
                  {
                     MRCA_chains(_loc10_.ws1,_loc10_.ws2);
                     _loc11_ = mrca1.head;
                     while(_loc11_ != null)
                     {
                        _loc12_ = _loc11_.elt;
                        _loc13_ = mrca2.head;
                        while(_loc13_ != null)
                        {
                           _loc14_ = _loc13_.elt;
                           if(_loc12_ != param2)
                           {
                              false;
                           }
                           if(false)
                           {
                              _loc13_ = _loc13_.next;
                           }
                           else
                           {
                              _loc15_ = _loc12_.cbSet;
                              _loc16_ = _loc14_.cbSet;
                              _loc15_.validate();
                              _loc16_.validate();
                              _loc17_ = null;
                              _loc18_ = _loc15_.cbpairs.length < _loc16_.cbpairs.length?_loc15_.cbpairs:_loc16_.cbpairs;
                              _loc19_ = _loc18_.head;
                              while(_loc19_ != null)
                              {
                                 _loc20_ = _loc19_.elt;
                                 if(_loc20_.a == _loc15_)
                                 {
                                    false;
                                 }
                                 if(!false)
                                 {
                                    true;
                                    if(_loc20_.a == _loc16_)
                                    {
                                       false;
                                    }
                                 }
                                 if(true)
                                 {
                                    _loc17_ = _loc20_;
                                    break;
                                 }
                                 _loc19_ = _loc19_.next;
                              }
                              if(_loc17_ == null)
                              {
                                 if(ZPP_CbSetPair.zpp_pool == null)
                                 {
                                    _loc20_ = new ZPP_CbSetPair();
                                 }
                                 else
                                 {
                                    _loc20_ = ZPP_CbSetPair.zpp_pool;
                                    ZPP_CbSetPair.zpp_pool = _loc20_.next;
                                    _loc20_.next = null;
                                 }
                                 _loc20_.zip_listeners = true;
                                 if(ZPP_CbSet.setlt(_loc15_,_loc16_))
                                 {
                                    _loc20_.a = _loc15_;
                                    _loc20_.b = _loc16_;
                                 }
                                 else
                                 {
                                    _loc20_.a = _loc16_;
                                    _loc20_.b = _loc15_;
                                 }
                                 _loc17_ = _loc20_;
                                 _loc15_.cbpairs.add(_loc17_);
                                 if(_loc16_ != _loc15_)
                                 {
                                    _loc16_.cbpairs.add(_loc17_);
                                 }
                              }
                              if(_loc17_.zip_listeners)
                              {
                                 _loc17_.zip_listeners = false;
                                 _loc17_.__validate();
                              }
                              if(_loc17_.listeners.head != null)
                              {
                                 _loc21_ = ZPP_Interactor.get(_loc12_,_loc14_);
                                 if(_loc21_ == null)
                                 {
                                    _loc21_ = ZPP_CallbackSet.get(_loc12_,_loc14_);
                                    add_callbackset(_loc21_);
                                 }
                                 _loc22_ = false;
                                 _loc23_ = _loc21_.arbiters.head;
                                 while(_loc23_ != null)
                                 {
                                    _loc24_ = _loc23_.elt;
                                    if(_loc24_ == _loc10_)
                                    {
                                       _loc22_ = true;
                                       break;
                                    }
                                    _loc23_ = _loc23_.next;
                                 }
                                 if(!_loc22_)
                                 {
                                    _loc25_ = _loc21_.arbiters;
                                    if(ZNPNode_ZPP_Arbiter.zpp_pool == null)
                                    {
                                       _loc26_ = new ZNPNode_ZPP_Arbiter();
                                    }
                                    else
                                    {
                                       _loc26_ = ZNPNode_ZPP_Arbiter.zpp_pool;
                                       ZNPNode_ZPP_Arbiter.zpp_pool = _loc26_.next;
                                       _loc26_.next = null;
                                    }
                                    null;
                                    _loc26_.elt = _loc10_;
                                    _loc23_ = _loc26_;
                                    _loc23_.next = _loc25_.head;
                                    _loc25_.head = _loc23_;
                                    _loc25_.modified = true;
                                    _loc25_.length = _loc25_.length + 1;
                                    _loc10_;
                                 }
                                 if(!_loc22_)
                                 {
                                    if(true)
                                    {
                                       _loc10_.present = _loc10_.present + 1;
                                    }
                                 }
                                 else if(false)
                                 {
                                    _loc10_.present = _loc10_.present + 1;
                                 }
                                 
                              }
                              _loc13_ = _loc13_.next;
                           }
                        }
                        _loc11_ = _loc11_.next;
                     }
                     _loc9_ = _loc9_.next;
                  }
               }
            }
         }
      }
      
      public var f_arbiters:ZNPList_ZPP_FluidArbiter;
      
      public function doForests(param1:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function constraints_subber(param1:Constraint) : void
      {
         remConstraint(param1.zpp_inner);
      }
      
      public function constraints_adder(param1:Constraint) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.outer.zpp_inner.wrap_constraints.remove(param1);
            }
            addConstraint(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public var constraints:ZNPList_ZPP_Constraint;
      
      public function constraintCbWake(param1:ZPP_Constraint) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as ZPP_Callback;
         if(param1.cbSet != null)
         {
            if(midstep)
            {
               _loc2_ = param1.cbSet.conlisteners.head;
               while(_loc2_ != null)
               {
                  _loc3_ = _loc2_.elt;
                  if(_loc3_.event != ZPP_Flags.id_CbEvent_WAKE)
                  {
                     _loc2_ = _loc2_.next;
                  }
                  else
                  {
                     _loc4_ = push_callback(_loc3_);
                     _loc4_.event = ZPP_Flags.id_CbEvent_WAKE;
                     _loc4_.constraint = param1;
                     _loc2_ = _loc2_.next;
                  }
               }
            }
            else
            {
               param1.component.woken = true;
            }
         }
      }
      
      public function constraintCbSleep(param1:ZPP_Constraint) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as ZPP_Callback;
         if(param1.cbSet != null)
         {
            _loc2_ = param1.cbSet.conlisteners.head;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.elt;
               if(_loc3_.event != ZPP_Flags.id_CbEvent_SLEEP)
               {
                  _loc2_ = _loc2_.next;
               }
               else
               {
                  _loc4_ = push_callback(_loc3_);
                  _loc4_.event = ZPP_Flags.id_CbEvent_SLEEP;
                  _loc4_.constraint = param1;
                  _loc2_ = _loc2_.next;
               }
            }
         }
      }
      
      public function constraintCbBreak(param1:ZPP_Constraint) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_ConstraintListener;
         var _loc3_:* = null as ZPP_ConstraintListener;
         var _loc4_:* = null as ZPP_Callback;
         if(param1.cbSet != null)
         {
            _loc2_ = param1.cbSet.conlisteners.head;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.elt;
               if(_loc3_.event != ZPP_Flags.id_CbEvent_BREAK)
               {
                  _loc2_ = _loc2_.next;
               }
               else
               {
                  _loc4_ = push_callback(_loc3_);
                  _loc4_.event = ZPP_Flags.id_CbEvent_BREAK;
                  _loc4_.constraint = param1;
                  _loc2_ = _loc2_.next;
               }
            }
         }
      }
      
      public function compounds_subber(param1:Compound) : void
      {
         remCompound(param1.zpp_inner);
      }
      
      public function compounds_adder(param1:Compound) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.wrap_compounds.remove(param1);
            }
            addCompound(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public var compounds:ZNPList_ZPP_Compound;
      
      public function clear() : void
      {
         var _loc1_:* = null as ZPP_Listener;
         var _loc2_:* = null as ZPP_CallbackSet;
         var _loc3_:* = null as ZPP_CallbackSet;
         var _loc4_:* = null as ZPP_Interactor;
         var _loc5_:* = 0;
         var _loc6_:* = null as ZPP_ColArbiter;
         var _loc7_:* = null as ZNPList_ZPP_Arbiter;
         var _loc8_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc9_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc10_:* = false;
         var _loc11_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc12_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc13_:* = null as ZNPNode_ZPP_Arbiter;
         var _loc14_:* = null as ZPP_Body;
         var _loc15_:* = null as ZPP_Contact;
         var _loc16_:* = null as ZPP_Contact;
         var _loc17_:* = null as ZPP_Contact;
         var _loc18_:* = null as ZPP_IContact;
         var _loc19_:* = null as ZPP_IContact;
         var _loc20_:* = null as ZPP_ColArbiter;
         var _loc21_:* = null as ZPP_SensorArbiter;
         var _loc22_:* = null as ZPP_SensorArbiter;
         var _loc23_:* = null as ZPP_FluidArbiter;
         var _loc24_:* = null as ZPP_FluidArbiter;
         var _loc25_:* = null as ZPP_Island;
         var _loc26_:* = null as ZPP_Component;
         var _loc27_:* = null as ZPP_Island;
         var _loc28_:* = null as ZPP_Constraint;
         var _loc30_:* = null as ZPP_Compound;
         var _loc31_:* = null as ZNPNode_ZPP_Body;
         var _loc32_:* = null as ZNPNode_ZPP_Constraint;
         var _loc33_:* = null as ZNPNode_ZPP_Compound;
         var _loc34_:* = null as ZPP_Compound;
         global_lin_drag = 0.015;
         global_ang_drag = 0.015;
         while(listeners.head != null)
         {
            _loc1_ = listeners.pop_unsafe();
            remListener(_loc1_);
         }
         while(callbackset_list.next != null)
         {
            _loc2_ = callbackset_list.pop_unsafe();
            _loc2_.arbiters.clear();
            _loc3_ = _loc2_;
            _loc4_ = null;
            _loc3_.int2 = _loc4_;
            _loc3_.int1 = _loc4_;
            _loc5_ = -1;
            _loc3_.di = _loc5_;
            _loc3_.id = _loc5_;
            _loc3_.freed = true;
            null;
            _loc3_.next = ZPP_CallbackSet.zpp_pool;
            ZPP_CallbackSet.zpp_pool = _loc3_;
         }
         while(c_arbiters_true.head != null)
         {
            _loc6_ = c_arbiters_true.pop_unsafe();
            if(!_loc6_.cleared)
            {
               _loc7_ = _loc6_.b1.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc6_.b2.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc6_.pair != null)
               {
                  _loc6_.pair.arb = null;
                  _loc6_.pair = null;
               }
            }
            _loc14_ = null;
            _loc6_.b2 = _loc14_;
            _loc6_.b1 = _loc14_;
            _loc6_.active = false;
            _loc6_.intchange = false;
            while(_loc6_.contacts.next != null)
            {
               _loc16_ = _loc6_.contacts;
               _loc17_ = _loc16_.next;
               _loc16_.pop();
               _loc15_ = _loc17_;
               _loc15_.arbiter = null;
               _loc15_.next = ZPP_Contact.zpp_pool;
               ZPP_Contact.zpp_pool = _loc15_;
               _loc18_ = _loc6_.innards;
               _loc19_ = _loc18_.next;
               _loc18_.next = _loc19_.next;
               _loc19_._inuse = false;
               if(_loc18_.next == null)
               {
                  _loc18_.pushmod = true;
               }
               _loc18_.modified = true;
               _loc18_.length = _loc18_.length - 1;
            }
            _loc20_ = _loc6_;
            null;
            _loc20_.next = ZPP_ColArbiter.zpp_pool;
            ZPP_ColArbiter.zpp_pool = _loc20_;
            _loc6_.pre_dt = -1.0;
         }
         while(c_arbiters_false.head != null)
         {
            _loc6_ = c_arbiters_false.pop_unsafe();
            if(!_loc6_.cleared)
            {
               _loc7_ = _loc6_.b1.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc6_.b2.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc6_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc6_.pair != null)
               {
                  _loc6_.pair.arb = null;
                  _loc6_.pair = null;
               }
            }
            _loc14_ = null;
            _loc6_.b2 = _loc14_;
            _loc6_.b1 = _loc14_;
            _loc6_.active = false;
            _loc6_.intchange = false;
            while(_loc6_.contacts.next != null)
            {
               _loc16_ = _loc6_.contacts;
               _loc17_ = _loc16_.next;
               _loc16_.pop();
               _loc15_ = _loc17_;
               _loc15_.arbiter = null;
               _loc15_.next = ZPP_Contact.zpp_pool;
               ZPP_Contact.zpp_pool = _loc15_;
               _loc18_ = _loc6_.innards;
               _loc19_ = _loc18_.next;
               _loc18_.next = _loc19_.next;
               _loc19_._inuse = false;
               if(_loc18_.next == null)
               {
                  _loc18_.pushmod = true;
               }
               _loc18_.modified = true;
               _loc18_.length = _loc18_.length - 1;
            }
            _loc20_ = _loc6_;
            null;
            _loc20_.next = ZPP_ColArbiter.zpp_pool;
            ZPP_ColArbiter.zpp_pool = _loc20_;
            _loc6_.pre_dt = -1.0;
         }
         while(s_arbiters.head != null)
         {
            _loc21_ = s_arbiters.pop_unsafe();
            if(!_loc21_.cleared)
            {
               _loc7_ = _loc21_.b1.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc21_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc21_.b2.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc21_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc21_.pair != null)
               {
                  _loc21_.pair.arb = null;
                  _loc21_.pair = null;
               }
            }
            _loc14_ = null;
            _loc21_.b2 = _loc14_;
            _loc21_.b1 = _loc14_;
            _loc21_.active = false;
            _loc21_.intchange = false;
            _loc22_ = _loc21_;
            _loc22_.next = ZPP_SensorArbiter.zpp_pool;
            ZPP_SensorArbiter.zpp_pool = _loc22_;
         }
         while(f_arbiters.head != null)
         {
            _loc23_ = f_arbiters.pop_unsafe();
            if(!_loc23_.cleared)
            {
               _loc7_ = _loc23_.b1.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc23_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               _loc7_ = _loc23_.b2.arbiters;
               _loc8_ = null;
               _loc9_ = _loc7_.head;
               _loc10_ = false;
               while(_loc9_ != null)
               {
                  if(_loc9_.elt == _loc23_)
                  {
                     if(_loc8_ == null)
                     {
                        _loc11_ = _loc7_.head;
                        _loc12_ = _loc11_.next;
                        _loc7_.head = _loc12_;
                        if(_loc7_.head == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     else
                     {
                        _loc11_ = _loc8_.next;
                        _loc12_ = _loc11_.next;
                        _loc8_.next = _loc12_;
                        if(_loc12_ == null)
                        {
                           _loc7_.pushmod = true;
                        }
                     }
                     _loc13_ = _loc11_;
                     _loc13_.elt = null;
                     _loc13_.next = ZNPNode_ZPP_Arbiter.zpp_pool;
                     ZNPNode_ZPP_Arbiter.zpp_pool = _loc13_;
                     _loc7_.modified = true;
                     _loc7_.length = _loc7_.length - 1;
                     _loc7_.pushmod = true;
                     _loc12_;
                     _loc10_ = true;
                     break;
                  }
                  _loc8_ = _loc9_;
                  _loc9_ = _loc9_.next;
               }
               _loc10_;
               if(_loc23_.pair != null)
               {
                  _loc23_.pair.arb = null;
                  _loc23_.pair = null;
               }
            }
            _loc14_ = null;
            _loc23_.b2 = _loc14_;
            _loc23_.b1 = _loc14_;
            _loc23_.active = false;
            _loc23_.intchange = false;
            _loc24_ = _loc23_;
            _loc24_.next = ZPP_FluidArbiter.zpp_pool;
            ZPP_FluidArbiter.zpp_pool = _loc24_;
            _loc23_.pre_dt = -1.0;
         }
         bphase.clear();
         while(bodies.head != null)
         {
            _loc14_ = bodies.pop_unsafe();
            if(_loc14_.component != null)
            {
               _loc25_ = _loc14_.component.island;
               if(_loc25_ != null)
               {
                  while(_loc25_.comps.head != null)
                  {
                     _loc26_ = _loc25_.comps.pop_unsafe();
                     _loc26_.sleeping = false;
                     _loc26_.island = null;
                     _loc26_.parent = _loc26_;
                     _loc26_.rank = 0;
                  }
                  _loc27_ = _loc25_;
                  _loc27_.next = ZPP_Island.zpp_pool;
                  ZPP_Island.zpp_pool = _loc27_;
               }
            }
            _loc14_.removedFromSpace();
            _loc14_.space = null;
         }
         while(constraints.head != null)
         {
            _loc28_ = constraints.pop_unsafe();
            if(_loc28_.component != null)
            {
               _loc25_ = _loc28_.component.island;
               if(_loc25_ != null)
               {
                  while(_loc25_.comps.head != null)
                  {
                     _loc26_ = _loc25_.comps.pop_unsafe();
                     _loc26_.sleeping = false;
                     _loc26_.island = null;
                     _loc26_.parent = _loc26_;
                     _loc26_.rank = 0;
                  }
                  _loc27_ = _loc25_;
                  _loc27_.next = ZPP_Island.zpp_pool;
                  ZPP_Island.zpp_pool = _loc27_;
               }
            }
            _loc28_.removedFromSpace();
            _loc28_.space = null;
         }
         kinematics.clear();
         var _loc29_:ZNPList_ZPP_Compound = new ZNPList_ZPP_Compound();
         while(compounds.head != null)
         {
            _loc30_ = compounds.pop_unsafe();
            _loc29_.add(_loc30_);
         }
         while(_loc29_.head != null)
         {
            _loc30_ = _loc29_.pop_unsafe();
            _loc30_.removedFromSpace();
            _loc30_.space = null;
            _loc31_ = _loc30_.bodies.head;
            while(_loc31_ != null)
            {
               _loc14_ = _loc31_.elt;
               if(_loc14_.component != null)
               {
                  _loc25_ = _loc14_.component.island;
                  if(_loc25_ != null)
                  {
                     while(_loc25_.comps.head != null)
                     {
                        _loc26_ = _loc25_.comps.pop_unsafe();
                        _loc26_.sleeping = false;
                        _loc26_.island = null;
                        _loc26_.parent = _loc26_;
                        _loc26_.rank = 0;
                     }
                     _loc27_ = _loc25_;
                     _loc27_.next = ZPP_Island.zpp_pool;
                     ZPP_Island.zpp_pool = _loc27_;
                  }
               }
               _loc14_.removedFromSpace();
               _loc14_.space = null;
               _loc31_ = _loc31_.next;
            }
            _loc32_ = _loc30_.constraints.head;
            while(_loc32_ != null)
            {
               _loc28_ = _loc32_.elt;
               if(_loc28_.component != null)
               {
                  _loc25_ = _loc28_.component.island;
                  if(_loc25_ != null)
                  {
                     while(_loc25_.comps.head != null)
                     {
                        _loc26_ = _loc25_.comps.pop_unsafe();
                        _loc26_.sleeping = false;
                        _loc26_.island = null;
                        _loc26_.parent = _loc26_;
                        _loc26_.rank = 0;
                     }
                     _loc27_ = _loc25_;
                     _loc27_.next = ZPP_Island.zpp_pool;
                     ZPP_Island.zpp_pool = _loc27_;
                  }
               }
               _loc28_.removedFromSpace();
               _loc28_.space = null;
               _loc32_ = _loc32_.next;
            }
            _loc33_ = _loc30_.compounds.head;
            while(_loc33_ != null)
            {
               _loc34_ = _loc33_.elt;
               _loc29_.add(_loc34_);
               _loc33_ = _loc33_.next;
            }
         }
         staticsleep.clear();
         live.clear();
         live_constraints.clear();
         stamp = 0;
         time = 0.0;
         gravityx = 0;
         gravityy = 0;
         mrca1.clear();
         mrca2.clear();
         prelisteners.clear();
         cbsets.clear();
      }
      
      public var cbsets:ZPP_CbSetManager;
      
      public var callbackset_list:ZPP_CallbackSet;
      
      public var callbacks:ZPP_Callback;
      
      public var c_arbiters_true:ZNPList_ZPP_ColArbiter;
      
      public var c_arbiters_false:ZNPList_ZPP_ColArbiter;
      
      public var bphase:ZPP_Broadphase;
      
      public function bodyCbWake(param1:ZPP_Body) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc3_:* = null as ZPP_BodyListener;
         var _loc4_:* = null as ZPP_Callback;
         if(param1.type == ZPP_Flags.id_BodyType_DYNAMIC)
         {
            false;
         }
         if(false)
         {
            if(midstep)
            {
               _loc2_ = param1.cbSet.bodylisteners.head;
               while(_loc2_ != null)
               {
                  _loc3_ = _loc2_.elt;
                  if(_loc3_.event != ZPP_Flags.id_CbEvent_WAKE)
                  {
                     _loc2_ = _loc2_.next;
                  }
                  else
                  {
                     _loc4_ = push_callback(_loc3_);
                     _loc4_.event = ZPP_Flags.id_CbEvent_WAKE;
                     _loc4_.body = param1;
                     _loc2_ = _loc2_.next;
                  }
               }
            }
            else
            {
               param1.component.woken = true;
            }
         }
      }
      
      public function bodyCbSleep(param1:ZPP_Body) : void
      {
         var _loc2_:* = null as ZNPNode_ZPP_BodyListener;
         var _loc3_:* = null as ZPP_BodyListener;
         var _loc4_:* = null as ZPP_Callback;
         if(param1.type == ZPP_Flags.id_BodyType_DYNAMIC)
         {
            false;
         }
         if(false)
         {
            _loc2_ = param1.cbSet.bodylisteners.head;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_.elt;
               if(_loc3_.event != ZPP_Flags.id_CbEvent_SLEEP)
               {
                  _loc2_ = _loc2_.next;
               }
               else
               {
                  _loc4_ = push_callback(_loc3_);
                  _loc4_.event = ZPP_Flags.id_CbEvent_SLEEP;
                  _loc4_.body = param1;
                  _loc2_ = _loc2_.next;
               }
            }
         }
      }
      
      public function bodies_subber(param1:Body) : void
      {
         remBody(param1.zpp_inner);
      }
      
      public function bodies_adder(param1:Body) : Boolean
      {
         if(param1.zpp_inner.space != this)
         {
            if(param1.zpp_inner.space != null)
            {
               param1.zpp_inner.space.outer.zpp_inner.wrap_bodies.remove(param1);
            }
            addBody(param1.zpp_inner);
            return true;
         }
         return false;
      }
      
      public function bodiesUnderPoint(param1:Number, param2:Number, param3:ZPP_InteractionFilter) : BodyList
      {
         return bphase.bodiesUnderPoint(param1,param2,param3);
      }
      
      public function bodiesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter) : BodyList
      {
         return bphase.bodiesInShape(param1,param2,param3);
      }
      
      public function bodiesInCircle(param1:Vec2, param2:Number, param3:Boolean, param4:ZPP_InteractionFilter) : BodyList
      {
         var _loc5_:ZPP_Vec2 = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         _loc5_ = param1.zpp_inner;
         if(_loc5_._validate != null)
         {
            _loc5_._validate();
         }
         return bphase.bodiesInCircle(param1.zpp_inner.x,param1.zpp_inner.y,param2,param3,param4);
      }
      
      public function bodiesInAABB(param1:AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter) : BodyList
      {
         return bphase.bodiesInAABB(param1.zpp_inner,param2,param3,param4);
      }
      
      public var bodies:ZNPList_ZPP_Body;
      
      public function added_shape(param1:ZPP_Shape, param2:Boolean = false) : void
      {
         var _loc3_:* = null as ZPP_Body;
         if(!param2)
         {
            _loc3_ = param1.body;
            if(!_loc3_.world)
            {
               _loc3_.component.waket = stamp + (midstep?0:1);
               if(_loc3_.component.sleeping)
               {
                  really_wake(_loc3_,false);
               }
            }
         }
         bphase.insert(param1);
         param1.addedToSpace();
      }
      
      public function add_callbackset(param1:ZPP_CallbackSet) : void
      {
         var _loc4_:* = null as ZNPNode_ZPP_CallbackSet;
         var _loc2_:ZNPList_ZPP_CallbackSet = param1.int1.cbsets;
         if(ZNPNode_ZPP_CallbackSet.zpp_pool == null)
         {
            _loc4_ = new ZNPNode_ZPP_CallbackSet();
         }
         else
         {
            _loc4_ = ZNPNode_ZPP_CallbackSet.zpp_pool;
            ZNPNode_ZPP_CallbackSet.zpp_pool = _loc4_.next;
            _loc4_.next = null;
         }
         null;
         _loc4_.elt = param1;
         var _loc3_:ZNPNode_ZPP_CallbackSet = _loc4_;
         _loc3_.next = _loc2_.head;
         _loc2_.head = _loc3_;
         _loc2_.modified = true;
         _loc2_.length = _loc2_.length + 1;
         param1;
         _loc2_ = param1.int2.cbsets;
         if(ZNPNode_ZPP_CallbackSet.zpp_pool == null)
         {
            _loc4_ = new ZNPNode_ZPP_CallbackSet();
         }
         else
         {
            _loc4_ = ZNPNode_ZPP_CallbackSet.zpp_pool;
            ZNPNode_ZPP_CallbackSet.zpp_pool = _loc4_.next;
            _loc4_.next = null;
         }
         null;
         _loc4_.elt = param1;
         _loc3_ = _loc4_;
         _loc3_.next = _loc2_.head;
         _loc2_.head = _loc3_;
         _loc2_.modified = true;
         _loc2_.length = _loc2_.length + 1;
         param1;
         var _loc5_:ZPP_CallbackSet = callbackset_list;
         param1._inuse = true;
         var _loc6_:ZPP_CallbackSet = param1;
         _loc6_.next = _loc5_.next;
         _loc5_.next = _loc6_;
         _loc5_.modified = true;
         _loc5_.length = _loc5_.length + 1;
         param1;
      }
      
      public function addListener(param1:ZPP_Listener) : void
      {
         param1.space = this;
         param1.addedToSpace();
         if(param1.interaction != null)
         {
            null;
         }
      }
      
      public function addConstraint(param1:ZPP_Constraint) : void
      {
         param1.space = this;
         param1.addedToSpace();
         if(param1.active)
         {
            param1.component.sleeping = true;
            wake_constraint(param1,true);
         }
      }
      
      public function addCompound(param1:ZPP_Compound) : void
      {
         var _loc3_:* = null as ZPP_Body;
         var _loc5_:* = null as ZPP_Constraint;
         var _loc7_:* = null as ZPP_Compound;
         param1.space = this;
         param1.addedToSpace();
         var _loc2_:ZNPNode_ZPP_Body = param1.bodies.head;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_.elt;
            addBody(_loc3_);
            _loc2_ = _loc2_.next;
         }
         var _loc4_:ZNPNode_ZPP_Constraint = param1.constraints.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            addConstraint(_loc5_);
            _loc4_ = _loc4_.next;
         }
         var _loc6_:ZNPNode_ZPP_Compound = param1.compounds.head;
         while(_loc6_ != null)
         {
            _loc7_ = _loc6_.elt;
            addCompound(_loc7_);
            _loc6_ = _loc6_.next;
         }
      }
      
      public function addBody(param1:ZPP_Body, param2:int = -1) : void
      {
         var _loc5_:* = null as ZPP_Shape;
         param1.space = this;
         param1.addedToSpace();
         param1.component.sleeping = true;
         var _loc3_:ZPP_Body = param1;
         if(!_loc3_.world)
         {
            _loc3_.component.waket = stamp + (midstep?0:1);
            if(_loc3_.component.sleeping)
            {
               really_wake(_loc3_,true);
            }
         }
         var _loc4_:ZNPNode_ZPP_Shape = param1.shapes.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            bphase.insert(_loc5_);
            _loc5_.addedToSpace();
            _loc4_ = _loc4_.next;
         }
         if(param1.type == ZPP_Flags.id_BodyType_STATIC)
         {
            static_validation(param1);
         }
         else if(param1.type != ZPP_Flags.id_BodyType_DYNAMIC)
         {
            if(param2 != ZPP_Flags.id_BodyType_KINEMATIC)
            {
               kinematics.add(param1);
            }
         }
         
      }
      
      public var __static:Body;
      
      public function MRCA_chains(param1:ZPP_Shape, param2:ZPP_Shape) : void
      {
         var _loc3_:* = null as ZNPList_ZPP_Interactor;
         var _loc4_:* = null as ZNPNode_ZPP_Interactor;
         var _loc5_:* = null as ZNPNode_ZPP_Interactor;
         var _loc6_:* = null as ZPP_Interactor;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc3_ = mrca1;
         while(_loc3_.head != null)
         {
            _loc4_ = _loc3_.head;
            _loc3_.head = _loc4_.next;
            _loc5_ = _loc4_;
            _loc5_.elt = null;
            _loc5_.next = ZNPNode_ZPP_Interactor.zpp_pool;
            ZNPNode_ZPP_Interactor.zpp_pool = _loc5_;
            if(_loc3_.head == null)
            {
               _loc3_.pushmod = true;
            }
            _loc3_.modified = true;
            _loc3_.length = _loc3_.length - 1;
         }
         _loc3_.pushmod = true;
         _loc3_ = mrca2;
         while(_loc3_.head != null)
         {
            _loc4_ = _loc3_.head;
            _loc3_.head = _loc4_.next;
            _loc5_ = _loc4_;
            _loc5_.elt = null;
            _loc5_.next = ZNPNode_ZPP_Interactor.zpp_pool;
            ZNPNode_ZPP_Interactor.zpp_pool = _loc5_;
            if(_loc3_.head == null)
            {
               _loc3_.pushmod = true;
            }
            _loc3_.modified = true;
            _loc3_.length = _loc3_.length - 1;
         }
         _loc3_.pushmod = true;
         if(param1.cbSet != null)
         {
            _loc3_ = mrca1;
            if(ZNPNode_ZPP_Interactor.zpp_pool == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.zpp_pool;
               ZNPNode_ZPP_Interactor.zpp_pool = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.elt = param1;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.head;
            _loc3_.head = _loc4_;
            _loc3_.modified = true;
            _loc3_.length = _loc3_.length + 1;
            param1;
         }
         if(param1.body.cbSet != null)
         {
            _loc3_ = mrca1;
            _loc6_ = param1.body;
            if(ZNPNode_ZPP_Interactor.zpp_pool == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.zpp_pool;
               ZNPNode_ZPP_Interactor.zpp_pool = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.elt = _loc6_;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.head;
            _loc3_.head = _loc4_;
            _loc3_.modified = true;
            _loc3_.length = _loc3_.length + 1;
            _loc6_;
         }
         if(param2.cbSet != null)
         {
            _loc3_ = mrca2;
            if(ZNPNode_ZPP_Interactor.zpp_pool == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.zpp_pool;
               ZNPNode_ZPP_Interactor.zpp_pool = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.elt = param2;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.head;
            _loc3_.head = _loc4_;
            _loc3_.modified = true;
            _loc3_.length = _loc3_.length + 1;
            param2;
         }
         if(param2.body.cbSet != null)
         {
            _loc3_ = mrca2;
            _loc6_ = param2.body;
            if(ZNPNode_ZPP_Interactor.zpp_pool == null)
            {
               _loc5_ = new ZNPNode_ZPP_Interactor();
            }
            else
            {
               _loc5_ = ZNPNode_ZPP_Interactor.zpp_pool;
               ZNPNode_ZPP_Interactor.zpp_pool = _loc5_.next;
               _loc5_.next = null;
            }
            null;
            _loc5_.elt = _loc6_;
            _loc4_ = _loc5_;
            _loc4_.next = _loc3_.head;
            _loc3_.head = _loc4_;
            _loc3_.modified = true;
            _loc3_.length = _loc3_.length + 1;
            _loc6_;
         }
         var _loc7_:ZPP_Compound = param1.body.compound;
         var _loc8_:ZPP_Compound = param2.body.compound;
         while(_loc7_ != _loc8_)
         {
            _loc9_ = _loc7_ == null?0:_loc7_.depth;
            _loc10_ = _loc8_ == null?0:_loc8_.depth;
            if(_loc9_ < _loc10_)
            {
               if(_loc8_.cbSet != null)
               {
                  _loc3_ = mrca2;
                  if(ZNPNode_ZPP_Interactor.zpp_pool == null)
                  {
                     _loc5_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc5_ = ZNPNode_ZPP_Interactor.zpp_pool;
                     ZNPNode_ZPP_Interactor.zpp_pool = _loc5_.next;
                     _loc5_.next = null;
                  }
                  null;
                  _loc5_.elt = _loc8_;
                  _loc4_ = _loc5_;
                  _loc4_.next = _loc3_.head;
                  _loc3_.head = _loc4_;
                  _loc3_.modified = true;
                  _loc3_.length = _loc3_.length + 1;
                  _loc8_;
               }
               _loc8_ = _loc8_.compound;
            }
            else
            {
               if(_loc7_.cbSet != null)
               {
                  _loc3_ = mrca1;
                  if(ZNPNode_ZPP_Interactor.zpp_pool == null)
                  {
                     _loc5_ = new ZNPNode_ZPP_Interactor();
                  }
                  else
                  {
                     _loc5_ = ZNPNode_ZPP_Interactor.zpp_pool;
                     ZNPNode_ZPP_Interactor.zpp_pool = _loc5_.next;
                     _loc5_.next = null;
                  }
                  null;
                  _loc5_.elt = _loc7_;
                  _loc4_ = _loc5_;
                  _loc4_.next = _loc3_.head;
                  _loc3_.head = _loc4_;
                  _loc3_.modified = true;
                  _loc3_.length = _loc3_.length + 1;
                  _loc7_;
               }
               _loc7_ = _loc7_.compound;
            }
         }
      }
   }
}
