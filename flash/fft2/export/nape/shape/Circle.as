package nape.shape
{
   import zpp_nape.shape.ZPP_Circle;
   import nape.geom.Vec2;
   import nape.phys.Material;
   import nape.dynamics.InteractionFilter;
   import zpp_nape.geom.ZPP_Vec2;
   import flash._-2v;
   import zpp_nape.phys.ZPP_Material;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.callbacks.ZPP_CbType;
   
   public class Circle extends Shape
   {
      
      public function Circle(param1:Number, param2:Vec2 = undefined, param3:Material = undefined, param4:InteractionFilter = undefined)
      {
         var _loc5_:* = null as ZPP_Vec2;
         if(_-2v._-7E)
         {
            return;
         }
         super();
         zpp_inner_zn = new ZPP_Circle();
         zpp_inner_zn.outer = this;
         zpp_inner_zn.outer_zn = this;
         zpp_inner = zpp_inner_zn;
         zpp_inner_i = zpp_inner;
         zpp_inner_i.outer_i = this;
         zpp_inner.immutable_midstep("Circle::radius");
         if(param1 != zpp_inner_zn.radius)
         {
            zpp_inner_zn.radius = param1;
            zpp_inner_zn.invalidate_radius();
         }
         zpp_inner_zn.radius;
         if(param2 == null)
         {
            zpp_inner.localCOMx = 0;
            zpp_inner.localCOMy = 0;
         }
         else
         {
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            zpp_inner.localCOMx = param2.zpp_inner.x;
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            zpp_inner.localCOMy = param2.zpp_inner.y;
            if(param2.zpp_inner.weak)
            {
               param2.dispose();
               true;
            }
            else
            {
               false;
            }
         }
         if(param3 == null)
         {
            if(ZPP_Material.zpp_pool == null)
            {
               zpp_inner.material = new ZPP_Material();
            }
            else
            {
               zpp_inner.material = ZPP_Material.zpp_pool;
               ZPP_Material.zpp_pool = zpp_inner.material.next;
               zpp_inner.material.next = null;
            }
            null;
         }
         else
         {
            zpp_inner.immutable_midstep("Shape::material");
            zpp_inner.setMaterial(param3.zpp_inner);
            zpp_inner.material.wrapper();
         }
         if(param4 == null)
         {
            if(ZPP_InteractionFilter.zpp_pool == null)
            {
               zpp_inner.filter = new ZPP_InteractionFilter();
            }
            else
            {
               zpp_inner.filter = ZPP_InteractionFilter.zpp_pool;
               ZPP_InteractionFilter.zpp_pool = zpp_inner.filter.next;
               zpp_inner.filter.next = null;
            }
            null;
         }
         else
         {
            zpp_inner.immutable_midstep("Shape::filter");
            zpp_inner.setFilter(param4.zpp_inner);
            zpp_inner.filter.wrapper();
         }
         zpp_inner_i.insert_cbtype(ZPP_CbType.ANY_SHAPE.zpp_inner);
      }
      
      public static function copy(param1:Circle) : Circle
      {
         var _loc2_:Shape = param1.zpp_inner.copy();
         return _loc2_.isCircle()?_loc2_.zpp_inner.circle.outer_zn:null;
      }
      
      public var zpp_inner_zn:ZPP_Circle;
      
      public function set radius(param1:Number) : Number
      {
         zpp_inner.immutable_midstep("Circle::radius");
         if(param1 != zpp_inner_zn.radius)
         {
            zpp_inner_zn.radius = param1;
            zpp_inner_zn.invalidate_radius();
         }
         return zpp_inner_zn.radius;
      }
      
      public function get radius() : Number
      {
         return zpp_inner_zn.radius;
      }
   }
}
