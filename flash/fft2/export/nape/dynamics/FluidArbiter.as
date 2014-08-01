package nape.dynamics
{
   import nape.geom.Vec3;
   import nape.phys.Body;
   import zpp_nape.dynamics.ZPP_FluidArbiter;
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_Vec2;
   import flash._-2v;
   
   public class FluidArbiter extends Arbiter
   {
      
      public function FluidArbiter()
      {
         if(_-2v._-7E)
         {
            return;
         }
         super();
      }
      
      override public function totalImpulse(param1:Body = undefined, param2:Boolean = false) : Vec3
      {
         var _loc3_:ZPP_FluidArbiter = zpp_inner.fluidarb;
         return Vec3.get((_loc3_.dampx + _loc3_.pdampx) + _loc3_.buoyx,(_loc3_.dampy + _loc3_.pdampy) + _loc3_.buoyy,_loc3_.adamp + _loc3_.padamp);
      }
      
      public function set position(param1:Vec2) : Vec2
      {
         var _loc5_:* = null as ZPP_Vec2;
         if(zpp_inner.fluidarb.wrap_position == null)
         {
            zpp_inner.fluidarb.getposition();
         }
         var _loc2_:Vec2 = zpp_inner.fluidarb.wrap_position;
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
         if(zpp_inner.fluidarb.wrap_position == null)
         {
            zpp_inner.fluidarb.getposition();
         }
         return zpp_inner.fluidarb.wrap_position;
      }
      
      public function set overlap(param1:Number) : Number
      {
         zpp_inner.fluidarb.overlap = param1;
         return zpp_inner.fluidarb.overlap;
      }
      
      public function get position() : Vec2
      {
         if(zpp_inner.fluidarb.wrap_position == null)
         {
            zpp_inner.fluidarb.getposition();
         }
         return zpp_inner.fluidarb.wrap_position;
      }
      
      public function get overlap() : Number
      {
         return zpp_inner.fluidarb.overlap;
      }
      
      public function dragImpulse(param1:Body = undefined) : Vec3
      {
         var _loc2_:ZPP_FluidArbiter = zpp_inner.fluidarb;
         return Vec3.get(_loc2_.dampx + _loc2_.pdampx,_loc2_.dampy + _loc2_.pdampy,_loc2_.adamp + _loc2_.padamp);
      }
      
      public function buoyancyImpulse(param1:Body = undefined) : Vec3
      {
         var _loc2_:ZPP_FluidArbiter = zpp_inner.fluidarb;
         return Vec3.get(_loc2_.buoyx,_loc2_.buoyy);
      }
   }
}
