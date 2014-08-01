package zpp_nape.geom
{
   import zpp_nape.shape.ZPP_Circle;
   import zpp_nape.shape.ZPP_Polygon;
   import zpp_nape.shape.ZPP_Edge;
   import zpp_nape.util.ZNPNode_ZPP_Edge;
   import zpp_nape.shape.ZPP_Shape;
   import zpp_nape.util.ZPP_Flags;
   import zpp_nape.phys.ZPP_Body;
   import zpp_nape.util.ZNPNode_ZPP_Shape;
   import zpp_nape.dynamics.ZPP_ColArbiter;
   import zpp_nape.dynamics.ZPP_Contact;
   import zpp_nape.dynamics.ZPP_IContact;
   import zpp_nape.dynamics.ZPP_FluidArbiter;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import nape.geom.Vec2;
   import zpp_nape.util.ZNPList_ZPP_Vec2;
   
   public class ZPP_Collide extends Object
   {
      
      public function ZPP_Collide()
      {
      }
      
      public static function circleContains(param1:ZPP_Circle, param2:ZPP_Vec2) : Boolean
      {
         var _loc3_:Number = param2.x - param1.worldCOMx;
         var _loc4_:Number = param2.y - param1.worldCOMy;
         return (_loc3_ * _loc3_ + _loc4_ * _loc4_) < param1.radius * param1.radius;
      }
      
      public static function polyContains(param1:ZPP_Polygon, param2:ZPP_Vec2) : Boolean
      {
         var _loc5_:* = null as ZPP_Edge;
         var _loc3_:* = true;
         var _loc4_:ZNPNode_ZPP_Edge = param1.edges.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            if((_loc5_.gnormx * param2.x + _loc5_.gnormy * param2.y) <= _loc5_.gprojection)
            {
               _loc4_ = _loc4_.next;
               continue;
            }
            _loc3_ = false;
            break;
         }
         return _loc3_;
      }
      
      public static function shapeContains(param1:ZPP_Shape, param2:ZPP_Vec2) : Boolean
      {
         return param1.type == ZPP_Flags.id_ShapeType_CIRCLE?ZPP_Collide.circleContains(param1.circle,param2):ZPP_Collide.polyContains(param1.polygon,param2);
      }
      
      public static function bodyContains(param1:ZPP_Body, param2:ZPP_Vec2) : Boolean
      {
         var _loc5_:* = null as ZPP_Shape;
         var _loc3_:* = false;
         var _loc4_:ZNPNode_ZPP_Shape = param1.shapes.head;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.elt;
            if(ZPP_Collide.shapeContains(_loc5_,param2))
            {
               _loc3_ = true;
               break;
            }
            _loc4_ = _loc4_.next;
         }
         return _loc3_;
      }
      
      public static function containTest(param1:ZPP_Shape, param2:ZPP_Shape) : Boolean
      {
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = false;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZNPNode_ZPP_Edge;
         var _loc13_:* = null as ZPP_Edge;
         var _loc3_:ZPP_AABB = param1.aabb;
         var _loc4_:ZPP_AABB = param2.aabb;
         if(_loc4_.minx >= _loc3_.minx)
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
            if(param1.type == ZPP_Flags.id_ShapeType_CIRCLE)
            {
               if(param2.type == ZPP_Flags.id_ShapeType_CIRCLE)
               {
                  _loc5_ = param1.circle.radius + -param2.circle.radius;
                  _loc6_ = param1.circle.worldCOMx - param1.circle.worldCOMx;
                  _loc7_ = param1.circle.worldCOMy - param1.circle.worldCOMy;
                  _loc8_ = _loc6_ * _loc6_ + _loc7_ * _loc7_;
               }
               else
               {
                  _loc9_ = true;
                  _loc10_ = param2.polygon.gverts.next;
                  while(_loc10_ != null)
                  {
                     _loc11_ = _loc10_;
                     _loc5_ = param1.circle.radius;
                     _loc6_ = _loc11_.x - param1.circle.worldCOMx;
                     _loc7_ = _loc11_.y - param1.circle.worldCOMy;
                     _loc8_ = _loc6_ * _loc6_ + _loc7_ * _loc7_;
                     if(_loc8_ <= _loc5_ * _loc5_)
                     {
                        _loc10_ = _loc10_.next;
                        continue;
                     }
                     _loc9_ = false;
                     break;
                  }
               }
            }
            else if(param2.type == ZPP_Flags.id_ShapeType_CIRCLE)
            {
               _loc9_ = true;
               _loc12_ = param1.polygon.edges.head;
               while(_loc12_ != null)
               {
                  _loc13_ = _loc12_.elt;
                  if(((_loc13_.gnormx * param2.circle.worldCOMx + _loc13_.gnormy * param2.circle.worldCOMy) + param2.circle.radius) <= _loc13_.gprojection)
                  {
                     _loc12_ = _loc12_.next;
                     continue;
                  }
                  _loc9_ = false;
                  break;
               }
            }
            else
            {
               _loc9_ = true;
               _loc12_ = param1.polygon.edges.head;
               while(_loc12_ != null)
               {
                  _loc13_ = _loc12_.elt;
                  _loc5_ = -1.0E100;
                  _loc10_ = param2.polygon.gverts.next;
                  while(_loc10_ != null)
                  {
                     _loc11_ = _loc10_;
                     _loc6_ = _loc13_.gnormx * _loc11_.x + _loc13_.gnormy * _loc11_.y;
                     if(_loc6_ > _loc5_)
                     {
                        _loc5_ = _loc6_;
                     }
                     _loc10_ = _loc10_.next;
                  }
                  if(_loc5_ <= _loc13_.gprojection)
                  {
                     _loc12_ = _loc12_.next;
                     continue;
                  }
                  _loc9_ = false;
                  break;
               }
            }
            
            if(param1.type == ZPP_Flags.id_ShapeType_CIRCLE)
            {
               return param2.type == ZPP_Flags.id_ShapeType_CIRCLE?_loc8_ <= _loc5_ * _loc5_:_loc9_;
            }
            return param2.type == ZPP_Flags.id_ShapeType_CIRCLE?_loc9_:_loc9_;
         }
         return false;
      }
      
      public static function contactCollide(param1:ZPP_Shape, param2:ZPP_Shape, param3:ZPP_ColArbiter, param4:Boolean) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: EmptyStackException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static function testCollide_safe(param1:ZPP_Shape, param2:ZPP_Shape) : Boolean
      {
         var _loc3_:* = null as ZPP_Shape;
         if(param2.type == ZPP_Flags.id_ShapeType_CIRCLE)
         {
            _loc3_ = param1;
            param1 = param2;
            param2 = _loc3_;
         }
         return ZPP_Collide.testCollide(param1,param2);
      }
      
      public static function testCollide(param1:ZPP_Shape, param2:ZPP_Shape) : Boolean
      {
         var _loc3_:* = false;
         var _loc4_:* = null as ZNPNode_ZPP_Edge;
         var _loc5_:* = null as ZPP_Edge;
         var _loc6_:* = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = null as ZPP_Vec2;
         var _loc9_:* = NaN;
         var _loc10_:* = null as ZPP_Edge;
         var _loc11_:* = null as ZPP_Vec2;
         var _loc12_:* = null as ZPP_Vec2;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         if(param2.type == ZPP_Flags.id_ShapeType_POLYGON)
         {
            if(param1.type == ZPP_Flags.id_ShapeType_POLYGON)
            {
               _loc3_ = true;
               _loc4_ = param1.polygon.edges.head;
               while(_loc4_ != null)
               {
                  _loc5_ = _loc4_.elt;
                  _loc6_ = 1.0E100;
                  _loc7_ = param2.polygon.gverts.next;
                  while(_loc7_ != null)
                  {
                     _loc8_ = _loc7_;
                     _loc9_ = _loc5_.gnormx * _loc8_.x + _loc5_.gnormy * _loc8_.y;
                     if(_loc9_ < _loc6_)
                     {
                        _loc6_ = _loc9_;
                     }
                     _loc7_ = _loc7_.next;
                  }
                  _loc6_ = _loc6_ - _loc5_.gprojection;
                  if(_loc6_ > 0)
                  {
                     _loc3_ = false;
                     break;
                  }
                  _loc4_ = _loc4_.next;
               }
               if(_loc3_)
               {
                  _loc4_ = param2.polygon.edges.head;
                  while(_loc4_ != null)
                  {
                     _loc5_ = _loc4_.elt;
                     _loc6_ = 1.0E100;
                     _loc7_ = param1.polygon.gverts.next;
                     while(_loc7_ != null)
                     {
                        _loc8_ = _loc7_;
                        _loc9_ = _loc5_.gnormx * _loc8_.x + _loc5_.gnormy * _loc8_.y;
                        if(_loc9_ < _loc6_)
                        {
                           _loc6_ = _loc9_;
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc6_ = _loc6_ - _loc5_.gprojection;
                     if(_loc6_ > 0)
                     {
                        _loc3_ = false;
                        break;
                     }
                     _loc4_ = _loc4_.next;
                  }
               }
            }
            else
            {
               _loc5_ = null;
               _loc7_ = null;
               _loc3_ = true;
               _loc6_ = -1.0E100;
               _loc8_ = param2.polygon.gverts.next;
               _loc4_ = param2.polygon.edges.head;
               while(_loc4_ != null)
               {
                  _loc10_ = _loc4_.elt;
                  _loc9_ = (_loc10_.gnormx * param1.circle.worldCOMx + _loc10_.gnormy * param1.circle.worldCOMy) - _loc10_.gprojection - param1.circle.radius;
                  if(_loc9_ > 0)
                  {
                     _loc3_ = false;
                     break;
                  }
                  if(_loc9_ > _loc6_)
                  {
                     _loc6_ = _loc9_;
                     _loc5_ = _loc10_;
                     _loc7_ = _loc8_;
                  }
                  _loc8_ = _loc8_.next;
                  _loc4_ = _loc4_.next;
               }
               if(_loc3_)
               {
                  _loc11_ = _loc7_;
                  _loc12_ = _loc7_.next == null?param2.polygon.gverts.next:_loc7_.next;
                  _loc9_ = param1.circle.worldCOMy * _loc5_.gnormx - param1.circle.worldCOMx * _loc5_.gnormy;
                  if(_loc9_ <= _loc11_.y * _loc5_.gnormx - _loc11_.x * _loc5_.gnormy)
                  {
                     _loc13_ = param1.circle.radius;
                     _loc14_ = _loc11_.x - param1.circle.worldCOMx;
                     _loc15_ = _loc11_.y - param1.circle.worldCOMy;
                     _loc16_ = _loc14_ * _loc14_ + _loc15_ * _loc15_;
                  }
                  else if(_loc9_ >= _loc12_.y * _loc5_.gnormx - _loc12_.x * _loc5_.gnormy)
                  {
                     _loc13_ = param1.circle.radius;
                     _loc14_ = _loc12_.x - param1.circle.worldCOMx;
                     _loc15_ = _loc12_.y - param1.circle.worldCOMy;
                     _loc16_ = _loc14_ * _loc14_ + _loc15_ * _loc15_;
                  }
                  
               }
            }
            if(param1.type == ZPP_Flags.id_ShapeType_POLYGON)
            {
               return _loc3_?_loc3_:false;
            }
            return _loc3_?_loc9_ <= _loc11_.y * _loc5_.gnormx - _loc11_.x * _loc5_.gnormy?_loc16_ <= _loc13_ * _loc13_:_loc9_ >= _loc12_.y * _loc5_.gnormx - _loc12_.x * _loc5_.gnormy?_loc16_ <= _loc13_ * _loc13_:true:false;
         }
         _loc6_ = param1.circle.radius + param2.circle.radius;
         _loc9_ = param2.circle.worldCOMx - param1.circle.worldCOMx;
         _loc13_ = param2.circle.worldCOMy - param1.circle.worldCOMy;
         _loc14_ = _loc9_ * _loc9_ + _loc13_ * _loc13_;
         return _loc14_ <= _loc6_ * _loc6_;
      }
      
      public static function flowCollide(param1:ZPP_Shape, param2:ZPP_Shape, param3:ZPP_FluidArbiter) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public static var flowpoly:ZNPList_ZPP_Vec2;
      
      public static var flowsegs:ZNPList_ZPP_Vec2;
   }
}
