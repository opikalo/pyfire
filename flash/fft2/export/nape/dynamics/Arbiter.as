package nape.dynamics
{
   import zpp_nape.dynamics.ZPP_Arbiter;
   import nape.geom.Vec3;
   import nape.phys.Body;
   import zpp_nape.util.ZPP_Flags;
   import nape.callbacks.PreFlag;
   import nape.shape.Shape;
   import flash._-2v;
   
   public class Arbiter extends Object
   {
      
      public function Arbiter()
      {
         if(_-2v._-7E)
         {
            return;
         }
         if(ZPP_Arbiter.internal)
         {
         }
      }
      
      public var zpp_inner:ZPP_Arbiter;
      
      public function totalImpulse(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         return Vec3.get(0,0,0);
      }
      
      public function toString() : String
      {
         var _loc2_:* = 0;
         var _loc1_:String = isCollisionArbiter()?"CollisionArbiter":isFluidArbiter()?"FluidArbiter":"SensorArbiter";
         if(zpp_inner.cleared)
         {
            return _loc1_ + "(object-pooled)";
         }
         _loc2_ = zpp_inner.immState;
         if(_loc2_ == (ZPP_Flags.id_ImmState_ACCEPT | ZPP_Flags.id_ImmState_ALWAYS))
         {
            if(ZPP_Flags.PreFlag_ACCEPT == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.PreFlag_ACCEPT = new PreFlag();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == ZPP_Flags.id_ImmState_ACCEPT)
         {
            if(ZPP_Flags.PreFlag_ACCEPT_ONCE == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.PreFlag_ACCEPT_ONCE = new PreFlag();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc2_ == (ZPP_Flags.id_ImmState_IGNORE | ZPP_Flags.id_ImmState_ALWAYS))
         {
            if(ZPP_Flags.PreFlag_IGNORE == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.PreFlag_IGNORE = new PreFlag();
               ZPP_Flags.internal = false;
            }
         }
         else if(ZPP_Flags.PreFlag_IGNORE_ONCE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.PreFlag_IGNORE_ONCE = new PreFlag();
            ZPP_Flags.internal = false;
         }
         
         
         
         if(_loc2_ == (ZPP_Flags.id_ImmState_ACCEPT | ZPP_Flags.id_ImmState_ALWAYS))
         {
            return _loc1_ + "(" + (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws2.outer:zpp_inner.ws1.outer).toString() + "|" + (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws1.outer:zpp_inner.ws2.outer).toString() + ")" + (isCollisionArbiter()?"[" + ["SD","DD"][zpp_inner.colarb.stat?0:1] + "]":"") + "<-" + ZPP_Flags.PreFlag_ACCEPT.toString();
         }
         return _loc1_ + "(" + (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws2.outer:zpp_inner.ws1.outer).toString() + "|" + (zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws1.outer:zpp_inner.ws2.outer).toString() + ")" + (isCollisionArbiter()?"[" + ["SD","DD"][zpp_inner.colarb.stat?0:1] + "]":"") + "<-" + (_loc2_ == ZPP_Flags.id_ImmState_ACCEPT?ZPP_Flags.PreFlag_ACCEPT_ONCE:_loc2_ == (ZPP_Flags.id_ImmState_IGNORE | ZPP_Flags.id_ImmState_ALWAYS)?ZPP_Flags.PreFlag_IGNORE:ZPP_Flags.PreFlag_IGNORE_ONCE).toString();
      }
      
      public function isSensorArbiter() : Boolean
      {
         return zpp_inner.type == ZPP_Arbiter.SENSOR;
      }
      
      public function isFluidArbiter() : Boolean
      {
         return zpp_inner.type == ZPP_Arbiter.FLUID;
      }
      
      public function isCollisionArbiter() : Boolean
      {
         return zpp_inner.type == ZPP_Arbiter.COL;
      }
      
      public function get type() : ArbiterType
      {
         if(ZPP_Flags.ArbiterType_COLLISION == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ArbiterType_COLLISION = new ArbiterType();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.ArbiterType_FLUID == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ArbiterType_FLUID = new ArbiterType();
            ZPP_Flags.internal = false;
         }
         if(ZPP_Flags.ArbiterType_SENSOR == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ArbiterType_SENSOR = new ArbiterType();
            ZPP_Flags.internal = false;
         }
         return [ZPP_Flags.ArbiterType_COLLISION,ZPP_Flags.ArbiterType_FLUID,ZPP_Flags.ArbiterType_SENSOR][zpp_inner.type];
      }
      
      public function get state() : PreFlag
      {
         var _loc1_:int = zpp_inner.immState;
         if(_loc1_ == (ZPP_Flags.id_ImmState_ACCEPT | ZPP_Flags.id_ImmState_ALWAYS))
         {
            if(ZPP_Flags.PreFlag_ACCEPT == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.PreFlag_ACCEPT = new PreFlag();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc1_ == ZPP_Flags.id_ImmState_ACCEPT)
         {
            if(ZPP_Flags.PreFlag_ACCEPT_ONCE == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.PreFlag_ACCEPT_ONCE = new PreFlag();
               ZPP_Flags.internal = false;
            }
         }
         else if(_loc1_ == (ZPP_Flags.id_ImmState_IGNORE | ZPP_Flags.id_ImmState_ALWAYS))
         {
            if(ZPP_Flags.PreFlag_IGNORE == null)
            {
               ZPP_Flags.internal = true;
               ZPP_Flags.PreFlag_IGNORE = new PreFlag();
               ZPP_Flags.internal = false;
            }
         }
         else if(ZPP_Flags.PreFlag_IGNORE_ONCE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.PreFlag_IGNORE_ONCE = new PreFlag();
            ZPP_Flags.internal = false;
         }
         
         
         
         if(_loc1_ == (ZPP_Flags.id_ImmState_ACCEPT | ZPP_Flags.id_ImmState_ALWAYS))
         {
            return ZPP_Flags.PreFlag_ACCEPT;
         }
         return _loc1_ == ZPP_Flags.id_ImmState_ACCEPT?ZPP_Flags.PreFlag_ACCEPT_ONCE:_loc1_ == (ZPP_Flags.id_ImmState_IGNORE | ZPP_Flags.id_ImmState_ALWAYS)?ZPP_Flags.PreFlag_IGNORE:ZPP_Flags.PreFlag_IGNORE_ONCE;
      }
      
      public function get shape2() : Shape
      {
         return zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws1.outer:zpp_inner.ws2.outer;
      }
      
      public function get shape1() : Shape
      {
         return zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.ws2.outer:zpp_inner.ws1.outer;
      }
      
      public function get isSleeping() : Boolean
      {
         return zpp_inner.sleeping;
      }
      
      public function get id() : int
      {
         return zpp_inner.id;
      }
      
      public function get fluidArbiter() : FluidArbiter
      {
         return isFluidArbiter()?zpp_inner.fluidarb.outer_zn:null;
      }
      
      public function get collisionArbiter() : CollisionArbiter
      {
         return isCollisionArbiter()?zpp_inner.colarb.outer_zn:null;
      }
      
      public function get body2() : Body
      {
         return zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.b1.outer:zpp_inner.b2.outer;
      }
      
      public function get body1() : Body
      {
         return zpp_inner.ws1.id > zpp_inner.ws2.id?zpp_inner.b2.outer:zpp_inner.b1.outer;
      }
      
      public function get active() : Boolean
      {
         return zpp_inner.active;
      }
   }
}
