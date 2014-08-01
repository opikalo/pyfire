package zpp_nape.space
{
   import nape.shape.ShapeList;
   import zpp_nape.dynamics.ZPP_InteractionFilter;
   import zpp_nape.geom.ZPP_Vec2;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZPP_Flags;
   import zpp_nape.geom.ZPP_Collide;
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_AABB;
   import nape.geom.RayResultList;
   import zpp_nape.geom.ZPP_Ray;
   import nape.geom.RayResult;
   import zpp_nape.phys.ZPP_Body;
   import nape.phys.BodyList;
   import nape.phys.Body;
   import flash._-2v;
   
   public class ZPP_SweepPhase extends ZPP_Broadphase
   {
      
      public function ZPP_SweepPhase(param1:ZPP_Space = undefined)
      {
         if(_-2v._-7E)
         {
            return;
         }
         space = param1;
         is_sweep = true;
         sweep = this;
      }
      
      public function sync_broadphase() : void
      {
         var _loc1_:* = null as ZPP_SweepData;
         var _loc2_:* = null as ZPP_SweepData;
         var _loc3_:* = null as ZPP_SweepData;
         var _loc4_:* = null as ZPP_SweepData;
         space.validation();
         if(list != null)
         {
            _loc1_ = list.next;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.next;
               _loc3_ = _loc1_.prev;
               if(_loc1_.aabb.minx > _loc3_.aabb.minx)
               {
                  _loc1_ = _loc2_;
               }
               else
               {
                  while(true)
                  {
                     if(_loc3_.prev != null)
                     {
                        false;
                     }
                     if(!false)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.prev;
                  }
                  _loc4_ = _loc1_.prev;
                  _loc4_.next = _loc1_.next;
                  if(_loc1_.next != null)
                  {
                     _loc1_.next.prev = _loc4_;
                  }
                  if(_loc3_.prev == null)
                  {
                     _loc1_.prev = null;
                     list = _loc1_;
                     _loc1_.next = _loc3_;
                     _loc3_.prev = _loc1_;
                  }
                  else
                  {
                     _loc1_.prev = _loc3_.prev;
                     _loc3_.prev = _loc1_;
                     _loc1_.prev.next = _loc1_;
                     _loc1_.next = _loc3_;
                  }
                  _loc1_ = _loc2_;
               }
            }
         }
      }
      
      override public function shapesUnderPoint(param1:Number, param2:Number, param3:ZPP_InteractionFilter) : ShapeList
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Shape;
         var _loc10_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         var _loc5_:* = false;
         if(ZPP_Vec2.zpp_pool == null)
         {
            _loc6_ = new ZPP_Vec2();
         }
         else
         {
            _loc6_ = ZPP_Vec2.zpp_pool;
            ZPP_Vec2.zpp_pool = _loc6_.next;
            _loc6_.next = null;
         }
         _loc6_.weak = false;
         _loc6_._immutable = _loc5_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         var _loc4_:ZPP_Vec2 = _loc6_;
         var _loc7_:ShapeList = new ShapeList();
         var _loc8_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc8_ = _loc8_.next;
         }
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            if(_loc8_.aabb.maxx >= param1)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(false)
            {
               _loc9_ = _loc8_.shape;
               if(param3 != null)
               {
                  true;
                  _loc10_ = _loc9_.filter;
                  if((_loc10_.collisionMask & param3.collisionGroup) != 0)
                  {
                     false;
                  }
               }
               if(true)
               {
                  if(_loc9_.type == ZPP_Flags.id_ShapeType_CIRCLE)
                  {
                     if(ZPP_Collide.circleContains(_loc9_.circle,_loc4_))
                     {
                        _loc7_.push(_loc9_.outer);
                     }
                  }
                  else if(ZPP_Collide.polyContains(_loc9_.polygon,_loc4_))
                  {
                     _loc7_.push(_loc9_.outer);
                  }
                  
               }
            }
            _loc8_ = _loc8_.next;
         }
         _loc6_ = _loc4_;
         if(_loc6_.outer != null)
         {
            _loc6_.outer.zpp_inner = null;
            _loc6_.outer = null;
         }
         _loc6_._isimmutable = null;
         _loc6_._validate = null;
         _loc6_._invalidate = null;
         _loc6_.next = ZPP_Vec2.zpp_pool;
         ZPP_Vec2.zpp_pool = _loc6_;
         return _loc7_;
      }
      
      override public function shapesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter) : ShapeList
      {
         var _loc7_:* = null as ZPP_AABB;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         validateShape(param1);
         var _loc4_:ZPP_AABB = param1.aabb;
         var _loc5_:ShapeList = new ShapeList();
         var _loc6_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc6_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc6_ = _loc6_.next;
         }
         while(true)
         {
            if(_loc6_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc7_ = _loc6_.aabb;
            if(_loc4_.miny <= _loc7_.maxy)
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
               _loc8_ = _loc6_.shape;
               if(param3 != null)
               {
                  true;
                  _loc9_ = _loc8_.filter;
                  if((_loc9_.collisionMask & param3.collisionGroup) != 0)
                  {
                     false;
                  }
               }
               if(true)
               {
                  if(param2)
                  {
                     if(ZPP_Collide.containTest(param1,_loc8_))
                     {
                        _loc5_.push(_loc8_.outer);
                     }
                  }
                  else if(ZPP_Collide.testCollide_safe(_loc8_,param1))
                  {
                     _loc5_.push(_loc8_.outer);
                  }
                  
               }
            }
            _loc6_ = _loc6_.next;
         }
         return _loc5_;
      }
      
      override public function shapesInCircle(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter) : ShapeList
      {
         var _loc9_:* = null as ZPP_AABB;
         var _loc10_:* = null as ZPP_Shape;
         var _loc11_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         updateCircShape(param1,param2,param3);
         var _loc6_:ZPP_AABB = circShape.zpp_inner.aabb;
         var _loc7_:ShapeList = new ShapeList();
         var _loc8_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc8_ = _loc8_.next;
         }
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc9_ = _loc8_.aabb;
            if(_loc6_.miny <= _loc9_.maxy)
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
               _loc10_ = _loc8_.shape;
               if(param5 != null)
               {
                  true;
                  _loc11_ = _loc10_.filter;
                  if((_loc11_.collisionMask & param5.collisionGroup) != 0)
                  {
                     false;
                  }
               }
               if(true)
               {
                  if(param4)
                  {
                     if(ZPP_Collide.containTest(circShape.zpp_inner,_loc10_))
                     {
                        _loc7_.push(_loc10_.outer);
                     }
                  }
                  else if(ZPP_Collide.testCollide_safe(_loc10_,circShape.zpp_inner))
                  {
                     _loc7_.push(_loc10_.outer);
                  }
                  
               }
            }
            _loc8_ = _loc8_.next;
         }
         return _loc7_;
      }
      
      override public function shapesInAABB(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter) : ShapeList
      {
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as ZPP_InteractionFilter;
         var _loc10_:* = null as ZPP_AABB;
         sync_broadphase();
         updateAABBShape(param1);
         var _loc5_:ZPP_AABB = aabbShape.zpp_inner.aabb;
         var _loc6_:ShapeList = new ShapeList();
         var _loc7_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc7_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc7_ = _loc7_.next;
         }
         while(true)
         {
            if(_loc7_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc8_ = _loc7_.shape;
            if(param4 != null)
            {
               true;
               _loc9_ = _loc8_.filter;
               if((_loc9_.collisionMask & param4.collisionGroup) != 0)
               {
                  false;
               }
            }
            if(true)
            {
               if(param2)
               {
                  if(param3)
                  {
                     if(ZPP_Collide.containTest(aabbShape.zpp_inner,_loc8_))
                     {
                        _loc6_.push(_loc8_.outer);
                     }
                  }
                  else
                  {
                     _loc10_ = _loc7_.aabb;
                     if(_loc10_.minx >= _loc5_.minx)
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
                        _loc6_.push(_loc8_.outer);
                     }
                     else
                     {
                        _loc10_ = _loc7_.aabb;
                        if(_loc5_.miny <= _loc10_.maxy)
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
                           if(ZPP_Collide.testCollide_safe(_loc8_,aabbShape.zpp_inner))
                           {
                              _loc6_.push(_loc8_.outer);
                           }
                        }
                     }
                  }
               }
               else
               {
                  if(param3)
                  {
                     _loc10_ = _loc7_.aabb;
                     if(_loc10_.minx >= _loc5_.minx)
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
                  }
                  else
                  {
                     _loc10_ = _loc7_.aabb;
                     if(_loc5_.miny <= _loc10_.maxy)
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
                  }
                  if(param3)
                  {
                     if(false)
                     {
                        _loc6_.push(_loc8_.outer);
                     }
                  }
                  else if(false)
                  {
                     _loc6_.push(_loc8_.outer);
                  }
                  
               }
            }
            _loc7_ = _loc7_.next;
         }
         return _loc6_;
      }
      
      override public function rayMultiCast(param1:ZPP_Ray, param2:Boolean, param3:ZPP_InteractionFilter) : RayResultList
      {
         var _loc6_:* = null as ZPP_SweepData;
         var _loc7_:* = null as ZPP_AABB;
         var _loc8_:* = null as ZPP_InteractionFilter;
         var _loc9_:* = NaN;
         var _loc10_:* = null as ZPP_SweepData;
         sync_broadphase();
         param1.validate_dir();
         var _loc4_:ZPP_AABB = param1.rayAABB();
         var _loc5_:RayResultList = new RayResultList();
         if(param1.dirx == 0)
         {
            _loc6_ = list;
            while(true)
            {
               if(_loc6_ != null)
               {
                  false;
               }
               if(!false)
               {
                  break;
               }
               _loc7_ = _loc6_.aabb;
               if(_loc4_.miny <= _loc7_.maxy)
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
                  false;
                  if(param3 != null)
                  {
                     true;
                     _loc8_ = _loc6_.shape.filter;
                     if((_loc8_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
               }
               if(false)
               {
                  _loc9_ = param1.aabbsect(_loc6_.aabb);
                  if(_loc9_ >= 0)
                  {
                     if(_loc6_.shape.type == ZPP_Flags.id_ShapeType_CIRCLE)
                     {
                        param1.circlesect2(_loc6_.shape.circle,param2,_loc5_);
                     }
                     else
                     {
                        param1.polysect2(_loc6_.shape.polygon,param2,_loc5_);
                     }
                  }
               }
               _loc6_ = _loc6_.next;
            }
         }
         else if(param1.dirx < 0)
         {
            _loc6_ = list;
            _loc10_ = null;
            while(true)
            {
               if(_loc6_ != null)
               {
                  false;
               }
               if(!false)
               {
                  break;
               }
               _loc10_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
            _loc6_ = _loc10_;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.aabb;
               if(_loc4_.miny <= _loc7_.maxy)
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
                  false;
                  if(param3 != null)
                  {
                     true;
                     _loc8_ = _loc6_.shape.filter;
                     if((_loc8_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
               }
               if(false)
               {
                  _loc9_ = param1.aabbsect(_loc6_.aabb);
                  if(_loc9_ >= 0)
                  {
                     if(_loc6_.shape.type == ZPP_Flags.id_ShapeType_CIRCLE)
                     {
                        param1.circlesect2(_loc6_.shape.circle,param2,_loc5_);
                     }
                     else
                     {
                        param1.polysect2(_loc6_.shape.polygon,param2,_loc5_);
                     }
                  }
               }
               _loc6_ = _loc6_.prev;
            }
         }
         else
         {
            _loc6_ = list;
            while(true)
            {
               if(_loc6_ != null)
               {
                  false;
               }
               if(!false)
               {
                  break;
               }
               _loc7_ = _loc6_.aabb;
               if(_loc4_.miny <= _loc7_.maxy)
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
                  false;
                  if(param3 != null)
                  {
                     true;
                     _loc8_ = _loc6_.shape.filter;
                     if((_loc8_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
               }
               if(false)
               {
                  _loc9_ = param1.aabbsect(_loc6_.aabb);
                  if(_loc9_ >= 0)
                  {
                     if(_loc6_.shape.type == ZPP_Flags.id_ShapeType_CIRCLE)
                     {
                        param1.circlesect2(_loc6_.shape.circle,param2,_loc5_);
                     }
                     else
                     {
                        param1.polysect2(_loc6_.shape.polygon,param2,_loc5_);
                     }
                  }
               }
               _loc6_ = _loc6_.next;
            }
         }
         
         return _loc5_;
      }
      
      override public function rayCast(param1:ZPP_Ray, param2:Boolean, param3:ZPP_InteractionFilter) : RayResult
      {
         var _loc7_:* = null as ZPP_SweepData;
         var _loc8_:* = null as ZPP_AABB;
         var _loc9_:* = null as ZPP_InteractionFilter;
         var _loc10_:* = NaN;
         var _loc11_:* = null as RayResult;
         var _loc12_:* = null as ZPP_SweepData;
         sync_broadphase();
         param1.validate_dir();
         var _loc4_:ZPP_AABB = param1.rayAABB();
         var _loc5_:Number = param1.maxdist;
         var _loc6_:RayResult = null;
         if(param1.dirx == 0)
         {
            _loc7_ = list;
            while(true)
            {
               if(_loc7_ != null)
               {
                  false;
               }
               if(!false)
               {
                  break;
               }
               _loc8_ = _loc7_.aabb;
               if(_loc4_.miny <= _loc8_.maxy)
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
                  false;
                  if(param3 != null)
                  {
                     true;
                     _loc9_ = _loc7_.shape.filter;
                     if((_loc9_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
               }
               if(false)
               {
                  _loc10_ = param1.aabbsect(_loc7_.aabb);
                  if(_loc10_ >= 0)
                  {
                     false;
                  }
                  if(false)
                  {
                     _loc11_ = _loc7_.shape.type == ZPP_Flags.id_ShapeType_CIRCLE?param1.circlesect(_loc7_.shape.circle,param2,_loc5_):param1.polysect(_loc7_.shape.polygon,param2,_loc5_);
                     if(_loc11_ != null)
                     {
                        _loc5_ = _loc11_.distance;
                        _loc6_ = _loc11_;
                     }
                  }
               }
               _loc7_ = _loc7_.next;
            }
         }
         else if(param1.dirx < 0)
         {
            _loc7_ = list;
            _loc12_ = null;
            while(true)
            {
               if(_loc7_ != null)
               {
                  false;
               }
               if(!false)
               {
                  break;
               }
               _loc12_ = _loc7_;
               _loc7_ = _loc7_.next;
            }
            _loc7_ = _loc12_;
            while(_loc7_ != null)
            {
               _loc8_ = _loc7_.aabb;
               if(_loc4_.miny <= _loc8_.maxy)
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
                  false;
                  if(param3 != null)
                  {
                     true;
                     _loc9_ = _loc7_.shape.filter;
                     if((_loc9_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
               }
               if(false)
               {
                  _loc10_ = param1.aabbsect(_loc7_.aabb);
                  if(_loc10_ >= 0)
                  {
                     false;
                  }
                  if(false)
                  {
                     _loc11_ = _loc7_.shape.type == ZPP_Flags.id_ShapeType_CIRCLE?param1.circlesect(_loc7_.shape.circle,param2,_loc5_):param1.polysect(_loc7_.shape.polygon,param2,_loc5_);
                     if(_loc11_ != null)
                     {
                        _loc5_ = _loc11_.distance;
                        _loc6_ = _loc11_;
                     }
                  }
               }
               _loc7_ = _loc7_.prev;
            }
         }
         else
         {
            _loc7_ = list;
            while(true)
            {
               if(_loc7_ != null)
               {
                  false;
               }
               if(false)
               {
                  false;
               }
               if(!false)
               {
                  break;
               }
               _loc8_ = _loc7_.aabb;
               if(_loc4_.miny <= _loc8_.maxy)
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
                  false;
                  if(param3 != null)
                  {
                     true;
                     _loc9_ = _loc7_.shape.filter;
                     if((_loc9_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
               }
               if(false)
               {
                  _loc10_ = param1.aabbsect(_loc7_.aabb);
                  if(_loc10_ >= 0)
                  {
                     false;
                  }
                  if(false)
                  {
                     _loc11_ = _loc7_.shape.type == ZPP_Flags.id_ShapeType_CIRCLE?param1.circlesect(_loc7_.shape.circle,param2,_loc5_):param1.polysect(_loc7_.shape.polygon,param2,_loc5_);
                     if(_loc11_ != null)
                     {
                        _loc5_ = _loc11_.distance;
                        _loc6_ = _loc11_;
                     }
                  }
               }
               _loc7_ = _loc7_.next;
            }
         }
         
         return _loc6_;
      }
      
      public var list:ZPP_SweepData;
      
      override public function clear() : void
      {
         while(list != null)
         {
            list.shape.removedFromSpace();
            __remove(list.shape);
         }
      }
      
      override public function broadphase() : void
      {
         var _loc1_:* = null as ZPP_SweepData;
         var _loc2_:* = null as ZPP_SweepData;
         var _loc3_:* = null as ZPP_SweepData;
         var _loc4_:* = null as ZPP_SweepData;
         var _loc5_:* = null as ZPP_Shape;
         var _loc6_:* = null as ZPP_Body;
         var _loc7_:* = NaN;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as ZPP_Body;
         var _loc10_:* = null as ZPP_AABB;
         var _loc11_:* = null as ZPP_AABB;
         if(list != null)
         {
            _loc1_ = list.next;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.next;
               _loc3_ = _loc1_.prev;
               if(_loc1_.aabb.minx > _loc3_.aabb.minx)
               {
                  _loc1_ = _loc2_;
               }
               else
               {
                  while(true)
                  {
                     if(_loc3_.prev != null)
                     {
                        false;
                     }
                     if(!false)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.prev;
                  }
                  _loc4_ = _loc1_.prev;
                  _loc4_.next = _loc1_.next;
                  if(_loc1_.next != null)
                  {
                     _loc1_.next.prev = _loc4_;
                  }
                  if(_loc3_.prev == null)
                  {
                     _loc1_.prev = null;
                     list = _loc1_;
                     _loc1_.next = _loc3_;
                     _loc3_.prev = _loc1_;
                  }
                  else
                  {
                     _loc1_.prev = _loc3_.prev;
                     _loc3_.prev = _loc1_;
                     _loc1_.prev.next = _loc1_;
                     _loc1_.next = _loc3_;
                  }
                  _loc1_ = _loc2_;
               }
            }
            _loc1_ = list;
            while(_loc1_ != null)
            {
               _loc2_ = _loc1_.next;
               _loc5_ = _loc1_.shape;
               _loc6_ = _loc5_.body;
               _loc7_ = _loc1_.aabb.maxx;
               while(_loc2_ != null)
               {
                  if(_loc2_.aabb.minx > _loc7_)
                  {
                     break;
                  }
                  _loc8_ = _loc2_.shape;
                  _loc9_ = _loc8_.body;
                  if(_loc9_ == _loc6_)
                  {
                     _loc2_ = _loc2_.next;
                  }
                  else
                  {
                     if(_loc6_.type == ZPP_Flags.id_BodyType_STATIC)
                     {
                        false;
                     }
                     if(false)
                     {
                        _loc2_ = _loc2_.next;
                     }
                     else
                     {
                        if(_loc6_.component.sleeping)
                        {
                           false;
                        }
                        if(false)
                        {
                           _loc2_ = _loc2_.next;
                        }
                        else
                        {
                           _loc10_ = _loc5_.aabb;
                           _loc11_ = _loc8_.aabb;
                           if(_loc11_.miny <= _loc10_.maxy)
                           {
                              true;
                           }
                           if(!true)
                           {
                              if(_loc6_.type == ZPP_Flags.id_BodyType_DYNAMIC)
                              {
                                 true;
                              }
                              space.narrowPhase(_loc5_,_loc8_,true);
                           }
                           _loc2_ = _loc2_.next;
                        }
                     }
                  }
               }
               _loc1_ = _loc1_.next;
            }
         }
      }
      
      override public function bodiesUnderPoint(param1:Number, param2:Number, param3:ZPP_InteractionFilter) : BodyList
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc9_:* = null as ZPP_Shape;
         var _loc10_:* = null as Body;
         var _loc11_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         var _loc5_:* = false;
         if(ZPP_Vec2.zpp_pool == null)
         {
            _loc6_ = new ZPP_Vec2();
         }
         else
         {
            _loc6_ = ZPP_Vec2.zpp_pool;
            ZPP_Vec2.zpp_pool = _loc6_.next;
            _loc6_.next = null;
         }
         _loc6_.weak = false;
         _loc6_._immutable = _loc5_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         var _loc4_:ZPP_Vec2 = _loc6_;
         var _loc7_:BodyList = new BodyList();
         var _loc8_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc8_ = _loc8_.next;
         }
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            if(_loc8_.aabb.maxx >= param1)
            {
               false;
            }
            if(false)
            {
               false;
            }
            if(false)
            {
               _loc9_ = _loc8_.shape;
               _loc10_ = _loc9_.body.outer;
               if(!_loc7_.has(_loc10_))
               {
                  if(param3 != null)
                  {
                     true;
                     _loc11_ = _loc9_.filter;
                     if((_loc11_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
                  if(true)
                  {
                     if(_loc9_.type == ZPP_Flags.id_ShapeType_CIRCLE)
                     {
                        if(ZPP_Collide.circleContains(_loc9_.circle,_loc4_))
                        {
                           _loc7_.push(_loc10_);
                        }
                     }
                     else if(ZPP_Collide.polyContains(_loc9_.polygon,_loc4_))
                     {
                        _loc7_.push(_loc10_);
                     }
                     
                  }
               }
            }
            _loc8_ = _loc8_.next;
         }
         _loc6_ = _loc4_;
         if(_loc6_.outer != null)
         {
            _loc6_.outer.zpp_inner = null;
            _loc6_.outer = null;
         }
         _loc6_._isimmutable = null;
         _loc6_._validate = null;
         _loc6_._invalidate = null;
         _loc6_.next = ZPP_Vec2.zpp_pool;
         ZPP_Vec2.zpp_pool = _loc6_;
         return _loc7_;
      }
      
      override public function bodiesInShape(param1:ZPP_Shape, param2:Boolean, param3:ZPP_InteractionFilter) : BodyList
      {
         var _loc7_:* = null as ZPP_AABB;
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as Body;
         var _loc10_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         validateShape(param1);
         var _loc4_:ZPP_AABB = param1.aabb;
         var _loc5_:BodyList = new BodyList();
         var _loc6_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc6_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc6_ = _loc6_.next;
         }
         while(true)
         {
            if(_loc6_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc7_ = _loc6_.aabb;
            if(_loc4_.miny <= _loc7_.maxy)
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
               _loc8_ = _loc6_.shape;
               _loc9_ = _loc8_.body.outer;
               if(!_loc5_.has(_loc9_))
               {
                  if(param3 != null)
                  {
                     true;
                     _loc10_ = _loc8_.filter;
                     if((_loc10_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
                  if(true)
                  {
                     if(param2)
                     {
                        if(ZPP_Collide.containTest(param1,_loc8_))
                        {
                           _loc5_.push(_loc9_);
                        }
                     }
                     else if(ZPP_Collide.testCollide_safe(_loc8_,param1))
                     {
                        _loc5_.push(_loc9_);
                     }
                     
                  }
               }
               else if(param2)
               {
                  if(param3 == null)
                  {
                     false;
                     _loc10_ = _loc8_.filter;
                     if((_loc10_.collisionMask & param3.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
                  if(false)
                  {
                     false;
                  }
                  if(false)
                  {
                     _loc5_.remove(_loc9_);
                  }
               }
               
            }
            _loc6_ = _loc6_.next;
         }
         return _loc5_;
      }
      
      override public function bodiesInCircle(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:ZPP_InteractionFilter) : BodyList
      {
         var _loc9_:* = null as ZPP_AABB;
         var _loc10_:* = null as ZPP_Shape;
         var _loc11_:* = null as Body;
         var _loc12_:* = null as ZPP_InteractionFilter;
         sync_broadphase();
         updateCircShape(param1,param2,param3);
         var _loc6_:ZPP_AABB = circShape.zpp_inner.aabb;
         var _loc7_:BodyList = new BodyList();
         var _loc8_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc8_ = _loc8_.next;
         }
         while(true)
         {
            if(_loc8_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc9_ = _loc8_.aabb;
            if(_loc6_.miny <= _loc9_.maxy)
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
               _loc10_ = _loc8_.shape;
               _loc11_ = _loc10_.body.outer;
               if(!_loc7_.has(_loc11_))
               {
                  if(param5 != null)
                  {
                     true;
                     _loc12_ = _loc10_.filter;
                     if((_loc12_.collisionMask & param5.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
                  if(true)
                  {
                     if(param4)
                     {
                        if(ZPP_Collide.containTest(circShape.zpp_inner,_loc10_))
                        {
                           _loc7_.push(_loc11_);
                        }
                     }
                     else if(ZPP_Collide.testCollide_safe(_loc10_,circShape.zpp_inner))
                     {
                        _loc7_.push(_loc11_);
                     }
                     
                  }
               }
               else if(param4)
               {
                  if(_loc10_.filter != null)
                  {
                     true;
                     _loc12_ = _loc10_.filter;
                     if((_loc12_.collisionMask & param5.collisionGroup) != 0)
                     {
                        false;
                     }
                  }
                  if(true)
                  {
                     false;
                  }
                  if(false)
                  {
                     _loc7_.remove(_loc11_);
                  }
               }
               
            }
            _loc8_ = _loc8_.next;
         }
         return _loc7_;
      }
      
      override public function bodiesInAABB(param1:ZPP_AABB, param2:Boolean, param3:Boolean, param4:ZPP_InteractionFilter) : BodyList
      {
         var _loc8_:* = null as ZPP_Shape;
         var _loc9_:* = null as Body;
         var _loc10_:* = null as ZPP_InteractionFilter;
         var _loc11_:* = null as ZPP_AABB;
         sync_broadphase();
         updateAABBShape(param1);
         var _loc5_:ZPP_AABB = aabbShape.zpp_inner.aabb;
         var _loc6_:BodyList = new BodyList();
         var _loc7_:ZPP_SweepData = list;
         while(true)
         {
            if(_loc7_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc7_ = _loc7_.next;
         }
         while(true)
         {
            if(_loc7_ != null)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc8_ = _loc7_.shape;
            _loc9_ = _loc8_.body.outer;
            if(!_loc6_.has(_loc9_))
            {
               if(param4 != null)
               {
                  true;
                  _loc10_ = _loc8_.filter;
                  if((_loc10_.collisionMask & param4.collisionGroup) != 0)
                  {
                     false;
                  }
               }
               if(true)
               {
                  if(param2)
                  {
                     if(param3)
                     {
                        if(ZPP_Collide.containTest(aabbShape.zpp_inner,_loc8_))
                        {
                           _loc6_.push(_loc9_);
                        }
                     }
                     else
                     {
                        _loc11_ = _loc7_.aabb;
                        if(_loc11_.minx >= _loc5_.minx)
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
                           _loc6_.push(_loc9_);
                        }
                        else
                        {
                           _loc11_ = _loc7_.aabb;
                           if(_loc5_.miny <= _loc11_.maxy)
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
                              if(ZPP_Collide.testCollide_safe(_loc8_,aabbShape.zpp_inner))
                              {
                                 _loc6_.push(_loc9_);
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     if(param3)
                     {
                        _loc11_ = _loc7_.aabb;
                        if(_loc11_.minx >= _loc5_.minx)
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
                     }
                     else
                     {
                        _loc11_ = _loc7_.aabb;
                        if(_loc5_.miny <= _loc11_.maxy)
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
                     }
                     if(param3)
                     {
                        if(false)
                        {
                           _loc6_.push(_loc9_);
                        }
                     }
                     else if(false)
                     {
                        _loc6_.push(_loc9_);
                     }
                     
                  }
               }
            }
            else if(param3)
            {
               if(param4 != null)
               {
                  true;
                  _loc10_ = _loc8_.filter;
                  if((_loc10_.collisionMask & param4.collisionGroup) != 0)
                  {
                     false;
                  }
               }
               if(true)
               {
                  if(param2)
                  {
                     if(!ZPP_Collide.containTest(aabbShape.zpp_inner,_loc8_))
                     {
                        _loc6_.remove(_loc9_);
                     }
                  }
                  else
                  {
                     _loc11_ = _loc7_.aabb;
                     if(_loc11_.minx >= _loc5_.minx)
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
                     if(!false)
                     {
                        _loc6_.remove(_loc9_);
                     }
                  }
               }
            }
            
            _loc7_ = _loc7_.next;
         }
         return _loc6_;
      }
      
      public function __remove(param1:ZPP_Shape) : void
      {
         var _loc2_:ZPP_SweepData = param1.sweep;
         if(_loc2_.prev == null)
         {
            list = _loc2_.next;
         }
         else
         {
            _loc2_.prev.next = _loc2_.next;
         }
         if(_loc2_.next != null)
         {
            _loc2_.next.prev = _loc2_.prev;
         }
         param1.sweep = null;
         var _loc3_:ZPP_SweepData = _loc2_;
         _loc3_.prev = null;
         _loc3_.shape = null;
         _loc3_.aabb = null;
         _loc3_.next = ZPP_SweepData.zpp_pool;
         ZPP_SweepData.zpp_pool = _loc3_;
      }
      
      public function __insert(param1:ZPP_Shape) : void
      {
         var _loc2_:* = null as ZPP_SweepData;
         if(ZPP_SweepData.zpp_pool == null)
         {
            _loc2_ = new ZPP_SweepData();
         }
         else
         {
            _loc2_ = ZPP_SweepData.zpp_pool;
            ZPP_SweepData.zpp_pool = _loc2_.next;
            _loc2_.next = null;
         }
         null;
         param1.sweep = _loc2_;
         _loc2_.shape = param1;
         _loc2_.aabb = param1.aabb;
         _loc2_.next = list;
         if(list != null)
         {
            list.prev = _loc2_;
         }
         list = _loc2_;
      }
   }
}
