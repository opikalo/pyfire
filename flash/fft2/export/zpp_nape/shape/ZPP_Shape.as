package zpp_nape.shape
{
   import zpp_nape.phys.ZPP_Interactor;
   import nape.geom.Vec2;
   import zpp_nape.util.ZPP_Flags;
   import zpp_nape.space.ZPP_SweepData;
   import zpp_nape.phys.ZPP_Material;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.space.ZPP_Space;
   import zpp_nape.phys.ZPP_FluidProperties;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.util.ZNPList_ZPP_AABBPair;
   import nape.shape.Shape;
   import zpp_nape.space.ZPP_AABBNode;
   import zpp_nape.geom.ZPP_Vec2;
   import nape.phys.Material;
   import nape.dynamics.InteractionFilter;
   import zpp_nape.geom.ZPP_AABB;
   import flash._-2v;
   
   public class ZPP_Shape extends ZPP_Interactor
   {
      
      public function ZPP_Shape(param1:int = 0)
      {
         var _loc2_:* = null as ZPP_AABB;
         if(_-2v._-7E)
         {
            return;
         }
         pairs = new ZNPList_ZPP_AABBPair();
         ishape = this;
         super();
         type = param1;
         if(ZPP_AABB.zpp_pool == null)
         {
            _loc2_ = new ZPP_AABB();
         }
         else
         {
            _loc2_ = ZPP_AABB.zpp_pool;
            ZPP_AABB.zpp_pool = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         _loc2_.minx = 0;
         _loc2_.miny = 0;
         _loc2_.maxx = 0;
         _loc2_.maxy = 0;
         aabb = _loc2_;
         aabb._immutable = true;
         var _loc3_:ZPP_Shape = this;
         aabb._validate = aabb_validate;
         var _loc4_:* = true;
         zip_localCOM = _loc4_;
         _loc4_ = _loc4_;
         zip_angDrag = _loc4_;
         zip_area_inertia = _loc4_;
         localCOMx = 0;
         localCOMy = 0;
         worldCOMx = 0;
         worldCOMy = 0;
         fluidEnabled = false;
         fluidProperties = null;
         body = null;
         refmaterial = new ZPP_Material();
      }
      
      public var zip_worldCOM:Boolean;
      
      public var zip_localCOM:Boolean;
      
      public var zip_area_inertia:Boolean;
      
      public var zip_angDrag:Boolean;
      
      public var zip_aabb:Boolean;
      
      public var wrap_worldCOM:Vec2;
      
      public var wrap_localCOM:Vec2;
      
      public var worldCOMy:Number;
      
      public var worldCOMx:Number;
      
      public function validate_area_inertia() : void
      {
         if(zip_area_inertia)
         {
            zip_area_inertia = false;
            if(type == ZPP_Flags.id_ShapeType_CIRCLE)
            {
               circle.__validate_area_inertia();
            }
            else
            {
               polygon.__validate_area_inertia();
            }
         }
      }
      
      public function validate_angDrag() : void
      {
         if(!zip_angDrag)
         {
            true;
         }
         if(true)
         {
            zip_angDrag = false;
            refmaterial.dynamicFriction = material.dynamicFriction;
            if(type == ZPP_Flags.id_ShapeType_CIRCLE)
            {
               circle.__validate_angDrag();
            }
            else
            {
               polygon.__validate_angDrag();
            }
         }
      }
      
      public var type:int;
      
      public var sweep:ZPP_SweepData;
      
      public function setMaterial(param1:ZPP_Material) : void
      {
         if(material != param1)
         {
            if(body != null)
            {
               false;
            }
            if(false)
            {
               if(material != null)
               {
                  material.shapes.remove(this);
               }
            }
            material = param1;
            if(body != null)
            {
               false;
            }
            if(false)
            {
               param1.shapes.add(this);
            }
            wake();
            if(body != null)
            {
               body.refreshArbiters();
            }
         }
      }
      
      public function setFluid(param1:ZPP_FluidProperties) : void
      {
         if(fluidProperties != param1)
         {
            if(body != null)
            {
               false;
            }
            if(false)
            {
               if(fluidProperties != null)
               {
                  fluidProperties.shapes.remove(this);
               }
            }
            fluidProperties = param1;
            if(body != null)
            {
               false;
            }
            if(false)
            {
               param1.shapes.add(this);
            }
            if(fluidEnabled)
            {
               wake();
            }
         }
      }
      
      public function setFilter(param1:ZPP_InteractionFilter) : void
      {
         if(filter != param1)
         {
            if(body != null)
            {
               false;
            }
            if(false)
            {
               if(filter != null)
               {
                  filter.shapes.remove(this);
               }
            }
            filter = param1;
            if(body != null)
            {
               false;
            }
            if(false)
            {
               param1.shapes.add(this);
            }
            wake();
         }
      }
      
      public function removedFromSpace() : void
      {
         __iremovedFromSpace();
         material.shapes.remove(this);
         filter.shapes.remove(this);
         if(fluidProperties != null)
         {
            fluidProperties.shapes.remove(this);
         }
      }
      
      public function removedFromBody() : void
      {
      }
      
      public var refmaterial:ZPP_Material;
      
      public var polygon:ZPP_Polygon;
      
      public var pairs:ZNPList_ZPP_AABBPair;
      
      public var outer:Shape;
      
      public var node:ZPP_AABBNode;
      
      public var material:ZPP_Material;
      
      public var localCOMy:Number;
      
      public var localCOMx:Number;
      
      public function isPolygon() : Boolean
      {
         return type == ZPP_Flags.id_ShapeType_POLYGON;
      }
      
      public function isCircle() : Boolean
      {
         return type == ZPP_Flags.id_ShapeType_CIRCLE;
      }
      
      public function invalidate_worldCOM() : void
      {
         zip_worldCOM = true;
         invalidate_aabb();
      }
      
      public function invalidate_material(param1:int) : void
      {
         if((param1 & ZPP_Material.WAKE) != 0)
         {
            wake();
         }
         if((param1 & ZPP_Material.ARBITERS) != 0)
         {
            if(body != null)
            {
               body.refreshArbiters();
            }
         }
         if((param1 & ZPP_Material.PROPS) != 0)
         {
            if(body != null)
            {
               body.invalidate_localCOM();
               body.invalidate_mass();
               body.invalidate_inertia();
            }
         }
         if((param1 & ZPP_Material.ANGDRAG) != 0)
         {
            invalidate_angDrag();
         }
         refmaterial.set(material);
      }
      
      public function invalidate_localCOM() : void
      {
         zip_localCOM = true;
         invalidate_area_inertia();
         invalidate_angDrag();
         invalidate_worldCOM();
         if(body != null)
         {
            body.invalidate_localCOM();
         }
      }
      
      public function invalidate_fluidprops() : void
      {
         if(fluidEnabled)
         {
            wake();
         }
      }
      
      public function invalidate_filter() : void
      {
         wake();
      }
      
      public function invalidate_area_inertia() : void
      {
         zip_area_inertia = true;
         if(body != null)
         {
            body.invalidate_localCOM();
            body.invalidate_mass();
            body.invalidate_inertia();
         }
      }
      
      public function invalidate_angDrag() : void
      {
         zip_angDrag = true;
      }
      
      public function invalidate_aabb() : void
      {
         zip_aabb = true;
         if(body != null)
         {
            body.invalidate_aabb();
         }
      }
      
      public var inertia:Number;
      
      public function getworldCOM() : void
      {
         var _loc1_:* = null as ZPP_Polygon;
         var _loc2_:* = NaN;
         var _loc3_:* = null as ZPP_Vec2;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = NaN;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Body;
         if(zip_worldCOM)
         {
            if(body != null)
            {
               zip_worldCOM = false;
               if(zip_localCOM)
               {
                  zip_localCOM = false;
                  if(type == ZPP_Flags.id_ShapeType_POLYGON)
                  {
                     _loc1_ = polygon;
                     if(_loc1_.lverts.next.next == null)
                     {
                        _loc1_.localCOMx = _loc1_.lverts.next.x;
                        _loc1_.localCOMy = _loc1_.lverts.next.y;
                        null;
                     }
                     else if(_loc1_.lverts.next.next.next == null)
                     {
                        _loc1_.localCOMx = _loc1_.lverts.next.x;
                        _loc1_.localCOMy = _loc1_.lverts.next.y;
                        _loc2_ = 1.0;
                        _loc1_.localCOMx = _loc1_.localCOMx + _loc1_.lverts.next.next.x * _loc2_;
                        _loc1_.localCOMy = _loc1_.localCOMy + _loc1_.lverts.next.next.y * _loc2_;
                        _loc2_ = 0.5;
                        _loc1_.localCOMx = _loc1_.localCOMx * _loc2_;
                        _loc1_.localCOMy = _loc1_.localCOMy * _loc2_;
                     }
                     else
                     {
                        _loc1_.localCOMx = 0;
                        _loc1_.localCOMy = 0;
                        _loc2_ = 0.0;
                        _loc3_ = _loc1_.lverts.next;
                        _loc4_ = _loc3_;
                        _loc3_ = _loc3_.next;
                        _loc5_ = _loc3_;
                        _loc3_ = _loc3_.next;
                        while(_loc3_ != null)
                        {
                           _loc6_ = _loc3_;
                           _loc2_ = _loc2_ + _loc5_.x * (_loc6_.y - _loc4_.y);
                           _loc7_ = _loc6_.y * _loc5_.x - _loc6_.x * _loc5_.y;
                           _loc1_.localCOMx = _loc1_.localCOMx + (_loc5_.x + _loc6_.x) * _loc7_;
                           _loc1_.localCOMy = _loc1_.localCOMy + (_loc5_.y + _loc6_.y) * _loc7_;
                           _loc4_ = _loc5_;
                           _loc5_ = _loc6_;
                           _loc3_ = _loc3_.next;
                        }
                        _loc3_ = _loc1_.lverts.next;
                        _loc6_ = _loc3_;
                        _loc2_ = _loc2_ + _loc5_.x * (_loc6_.y - _loc4_.y);
                        _loc7_ = _loc6_.y * _loc5_.x - _loc6_.x * _loc5_.y;
                        _loc1_.localCOMx = _loc1_.localCOMx + (_loc5_.x + _loc6_.x) * _loc7_;
                        _loc1_.localCOMy = _loc1_.localCOMy + (_loc5_.y + _loc6_.y) * _loc7_;
                        _loc4_ = _loc5_;
                        _loc5_ = _loc6_;
                        _loc3_ = _loc3_.next;
                        _loc8_ = _loc3_;
                        _loc2_ = _loc2_ + _loc5_.x * (_loc8_.y - _loc4_.y);
                        _loc7_ = _loc8_.y * _loc5_.x - _loc8_.x * _loc5_.y;
                        _loc1_.localCOMx = _loc1_.localCOMx + (_loc5_.x + _loc8_.x) * _loc7_;
                        _loc1_.localCOMy = _loc1_.localCOMy + (_loc5_.y + _loc8_.y) * _loc7_;
                        _loc2_ = 1 / (3 * _loc2_);
                        _loc7_ = _loc2_;
                        _loc1_.localCOMx = _loc1_.localCOMx * _loc7_;
                        _loc1_.localCOMy = _loc1_.localCOMy * _loc7_;
                     }
                     
                  }
                  if(wrap_localCOM != null)
                  {
                     wrap_localCOM.zpp_inner.x = localCOMx;
                     wrap_localCOM.zpp_inner.y = localCOMy;
                  }
               }
               _loc9_ = body;
               if(_loc9_.zip_axis)
               {
                  _loc9_.zip_axis = false;
                  _loc9_.axisx = Math.sin(_loc9_.rot);
                  _loc9_.axisy = Math.cos(_loc9_.rot);
                  null;
               }
               worldCOMx = body.posx + (body.axisy * localCOMx - body.axisx * localCOMy);
               worldCOMy = body.posy + (localCOMx * body.axisx + localCOMy * body.axisy);
               if(wrap_worldCOM != null)
               {
                  wrap_worldCOM.zpp_inner.x = worldCOMx;
                  wrap_worldCOM.zpp_inner.y = worldCOMy;
               }
            }
         }
      }
      
      public var fluidProperties:ZPP_FluidProperties;
      
      public var fluidEnabled:Boolean;
      
      public var filter:ZPP_InteractionFilter;
      
      public function copy() : Shape
      {
         var _loc1_:ZPP_Shape = null;
         if(type == ZPP_Flags.id_ShapeType_CIRCLE)
         {
            _loc1_ = circle.__copy();
         }
         else
         {
            _loc1_ = polygon.__copy();
         }
         if(!zip_area_inertia)
         {
            _loc1_.area = area;
            _loc1_.inertia = inertia;
         }
         else
         {
            _loc1_.invalidate_area_inertia();
         }
         if(!zip_angDrag)
         {
            _loc1_.angDrag = angDrag;
         }
         else
         {
            _loc1_.invalidate_angDrag();
         }
         if(!zip_aabb)
         {
            _loc1_.aabb.minx = aabb.minx;
            _loc1_.aabb.miny = aabb.miny;
            _loc1_.aabb.maxx = aabb.maxx;
            _loc1_.aabb.maxy = aabb.maxy;
         }
         else
         {
            _loc1_.invalidate_aabb();
         }
         var _loc2_:ZPP_Material = _loc1_.material;
         _loc2_.outer = null;
         _loc2_.next = ZPP_Material.zpp_pool;
         ZPP_Material.zpp_pool = _loc2_;
         var _loc3_:ZPP_InteractionFilter = _loc1_.filter;
         _loc3_.outer = null;
         _loc3_.next = ZPP_InteractionFilter.zpp_pool;
         ZPP_InteractionFilter.zpp_pool = _loc3_;
         _loc1_.material = material;
         _loc1_.filter = filter;
         if(fluidProperties != null)
         {
            _loc1_.fluidProperties = fluidProperties;
         }
         _loc1_.fluidEnabled = fluidEnabled;
         copyto(_loc1_.outer);
         return _loc1_.outer;
      }
      
      public function clear() : void
      {
         if(type == ZPP_Flags.id_ShapeType_CIRCLE)
         {
            circle.__clear();
         }
         else
         {
            polygon.__clear();
         }
      }
      
      public var circle:ZPP_Circle;
      
      public var body:ZPP_Body;
      
      public var area:Number;
      
      public var angDrag:Number;
      
      public function addedToSpace() : void
      {
         __iaddedToSpace();
         material.shapes.add(this);
         filter.shapes.add(this);
         if(fluidProperties != null)
         {
            fluidProperties.shapes.add(this);
         }
      }
      
      public function addedToBody() : void
      {
         invalidate_worldCOM();
         invalidate_aabb();
      }
      
      public function aabb_validate() : void
      {
         var _loc1_:* = null as ZPP_Circle;
         var _loc2_:* = null as ZPP_Polygon;
         var _loc3_:* = NaN;
         var _loc4_:* = null as ZPP_Vec2;
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = NaN;
         var _loc9_:* = null as ZPP_Vec2;
         var _loc10_:* = null as ZPP_Body;
         if(zip_aabb)
         {
            if(body != null)
            {
               zip_aabb = false;
               if(type == ZPP_Flags.id_ShapeType_CIRCLE)
               {
                  _loc1_ = circle;
                  if(_loc1_.zip_worldCOM)
                  {
                     if(_loc1_.body != null)
                     {
                        _loc1_.zip_worldCOM = false;
                        if(_loc1_.zip_localCOM)
                        {
                           _loc1_.zip_localCOM = false;
                           if(_loc1_.type == ZPP_Flags.id_ShapeType_POLYGON)
                           {
                              _loc2_ = _loc1_.polygon;
                              if(_loc2_.lverts.next.next == null)
                              {
                                 _loc2_.localCOMx = _loc2_.lverts.next.x;
                                 _loc2_.localCOMy = _loc2_.lverts.next.y;
                                 null;
                              }
                              else if(_loc2_.lverts.next.next.next == null)
                              {
                                 _loc2_.localCOMx = _loc2_.lverts.next.x;
                                 _loc2_.localCOMy = _loc2_.lverts.next.y;
                                 _loc3_ = 1.0;
                                 _loc2_.localCOMx = _loc2_.localCOMx + _loc2_.lverts.next.next.x * _loc3_;
                                 _loc2_.localCOMy = _loc2_.localCOMy + _loc2_.lverts.next.next.y * _loc3_;
                                 _loc3_ = 0.5;
                                 _loc2_.localCOMx = _loc2_.localCOMx * _loc3_;
                                 _loc2_.localCOMy = _loc2_.localCOMy * _loc3_;
                              }
                              else
                              {
                                 _loc2_.localCOMx = 0;
                                 _loc2_.localCOMy = 0;
                                 _loc3_ = 0.0;
                                 _loc4_ = _loc2_.lverts.next;
                                 _loc5_ = _loc4_;
                                 _loc4_ = _loc4_.next;
                                 _loc6_ = _loc4_;
                                 _loc4_ = _loc4_.next;
                                 while(_loc4_ != null)
                                 {
                                    _loc7_ = _loc4_;
                                    _loc3_ = _loc3_ + _loc6_.x * (_loc7_.y - _loc5_.y);
                                    _loc8_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                                    _loc2_.localCOMx = _loc2_.localCOMx + (_loc6_.x + _loc7_.x) * _loc8_;
                                    _loc2_.localCOMy = _loc2_.localCOMy + (_loc6_.y + _loc7_.y) * _loc8_;
                                    _loc5_ = _loc6_;
                                    _loc6_ = _loc7_;
                                    _loc4_ = _loc4_.next;
                                 }
                                 _loc4_ = _loc2_.lverts.next;
                                 _loc7_ = _loc4_;
                                 _loc3_ = _loc3_ + _loc6_.x * (_loc7_.y - _loc5_.y);
                                 _loc8_ = _loc7_.y * _loc6_.x - _loc7_.x * _loc6_.y;
                                 _loc2_.localCOMx = _loc2_.localCOMx + (_loc6_.x + _loc7_.x) * _loc8_;
                                 _loc2_.localCOMy = _loc2_.localCOMy + (_loc6_.y + _loc7_.y) * _loc8_;
                                 _loc5_ = _loc6_;
                                 _loc6_ = _loc7_;
                                 _loc4_ = _loc4_.next;
                                 _loc9_ = _loc4_;
                                 _loc3_ = _loc3_ + _loc6_.x * (_loc9_.y - _loc5_.y);
                                 _loc8_ = _loc9_.y * _loc6_.x - _loc9_.x * _loc6_.y;
                                 _loc2_.localCOMx = _loc2_.localCOMx + (_loc6_.x + _loc9_.x) * _loc8_;
                                 _loc2_.localCOMy = _loc2_.localCOMy + (_loc6_.y + _loc9_.y) * _loc8_;
                                 _loc3_ = 1 / (3 * _loc3_);
                                 _loc8_ = _loc3_;
                                 _loc2_.localCOMx = _loc2_.localCOMx * _loc8_;
                                 _loc2_.localCOMy = _loc2_.localCOMy * _loc8_;
                              }
                              
                           }
                           if(_loc1_.wrap_localCOM != null)
                           {
                              _loc1_.wrap_localCOM.zpp_inner.x = _loc1_.localCOMx;
                              _loc1_.wrap_localCOM.zpp_inner.y = _loc1_.localCOMy;
                           }
                        }
                        _loc10_ = _loc1_.body;
                        if(_loc10_.zip_axis)
                        {
                           _loc10_.zip_axis = false;
                           _loc10_.axisx = Math.sin(_loc10_.rot);
                           _loc10_.axisy = Math.cos(_loc10_.rot);
                           null;
                        }
                        _loc1_.worldCOMx = _loc1_.body.posx + (_loc1_.body.axisy * _loc1_.localCOMx - _loc1_.body.axisx * _loc1_.localCOMy);
                        _loc1_.worldCOMy = _loc1_.body.posy + (_loc1_.localCOMx * _loc1_.body.axisx + _loc1_.localCOMy * _loc1_.body.axisy);
                        if(_loc1_.wrap_worldCOM != null)
                        {
                           _loc1_.wrap_worldCOM.zpp_inner.x = _loc1_.worldCOMx;
                           _loc1_.wrap_worldCOM.zpp_inner.y = _loc1_.worldCOMy;
                        }
                     }
                  }
                  _loc3_ = _loc1_.radius;
                  _loc8_ = _loc1_.radius;
                  _loc1_.aabb.minx = _loc1_.worldCOMx - _loc3_;
                  _loc1_.aabb.miny = _loc1_.worldCOMy - _loc8_;
                  _loc1_.aabb.maxx = _loc1_.worldCOMx + _loc3_;
                  _loc1_.aabb.maxy = _loc1_.worldCOMy + _loc8_;
               }
               else
               {
                  _loc2_ = polygon;
                  if(_loc2_.zip_gverts)
                  {
                     if(_loc2_.body != null)
                     {
                        _loc2_.zip_gverts = false;
                        _loc2_.validate_lverts();
                        _loc10_ = _loc2_.body;
                        if(_loc10_.zip_axis)
                        {
                           _loc10_.zip_axis = false;
                           _loc10_.axisx = Math.sin(_loc10_.rot);
                           _loc10_.axisy = Math.cos(_loc10_.rot);
                           null;
                        }
                        _loc4_ = _loc2_.lverts.next;
                        _loc5_ = _loc2_.gverts.next;
                        while(_loc5_ != null)
                        {
                           _loc6_ = _loc5_;
                           _loc7_ = _loc4_;
                           _loc4_ = _loc4_.next;
                           _loc6_.x = _loc2_.body.posx + (_loc2_.body.axisy * _loc7_.x - _loc2_.body.axisx * _loc7_.y);
                           _loc6_.y = _loc2_.body.posy + (_loc7_.x * _loc2_.body.axisx + _loc7_.y * _loc2_.body.axisy);
                           _loc5_ = _loc5_.next;
                        }
                     }
                  }
                  _loc4_ = _loc2_.gverts.next;
                  _loc2_.aabb.minx = _loc4_.x;
                  _loc2_.aabb.miny = _loc4_.y;
                  _loc2_.aabb.maxx = _loc4_.x;
                  _loc2_.aabb.maxy = _loc4_.y;
                  _loc5_ = _loc2_.gverts.next.next;
                  while(_loc5_ != null)
                  {
                     _loc6_ = _loc5_;
                     if(_loc6_.x < _loc2_.aabb.minx)
                     {
                        _loc2_.aabb.minx = _loc6_.x;
                     }
                     if(_loc6_.x > _loc2_.aabb.maxx)
                     {
                        _loc2_.aabb.maxx = _loc6_.x;
                     }
                     if(_loc6_.y < _loc2_.aabb.miny)
                     {
                        _loc2_.aabb.miny = _loc6_.y;
                     }
                     if(_loc6_.y > _loc2_.aabb.maxy)
                     {
                        _loc2_.aabb.maxy = _loc6_.y;
                     }
                     _loc5_ = _loc5_.next;
                  }
               }
            }
         }
      }
      
      public var aabb:ZPP_AABB;
      
      public function __immutable_midstep(param1:String) : void
      {
      }
   }
}
