package zpp_nape.util
{
   import zpp_nape.geom.ZPP_Vec2;
   import nape.geom.Mat23;
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_AABB;
   import zpp_nape.geom.ZPP_Mat23;
   import nape.util.Debug;
   import flash._-2v;
   
   public class ZPP_Debug extends Object
   {
      
      public function ZPP_Debug(param1:int = 0, param2:int = 0)
      {
         var _loc3_:* = null as ZPP_AABB;
         if(_-2v._-7E)
         {
            return;
         }
         xnull = true;
         xdet = 1.0;
         width = param1;
         height = param2;
         if(ZPP_AABB.zpp_pool == null)
         {
            _loc3_ = new ZPP_AABB();
         }
         else
         {
            _loc3_ = ZPP_AABB.zpp_pool;
            ZPP_AABB.zpp_pool = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.minx = 0;
         _loc3_.miny = 0;
         _loc3_.maxx = param1;
         _loc3_.maxy = param2;
         viewport = _loc3_;
         if(ZPP_AABB.zpp_pool == null)
         {
            _loc3_ = new ZPP_AABB();
         }
         else
         {
            _loc3_ = ZPP_AABB.zpp_pool;
            ZPP_AABB.zpp_pool = _loc3_.next;
            _loc3_.next = null;
         }
         null;
         _loc3_.minx = 0;
         _loc3_.miny = 0;
         _loc3_.maxx = param1;
         _loc3_.maxy = param2;
         iport = _loc3_;
         tmpab = new ZPP_AABB();
      }
      
      public static var internal:Boolean;
      
      public var xnull:Boolean;
      
      public function xform_invalidate() : void
      {
         var _loc2_:* = NaN;
         var _loc6_:* = null as ZPP_Vec2;
         var _loc3_:Mat23 = xform.outer;
         _loc2_ = _loc3_.zpp_inner.a * _loc3_.zpp_inner.d - _loc3_.zpp_inner.b * _loc3_.zpp_inner.c;
         var _loc1_:Number = _loc2_ < 0?-_loc2_:_loc2_;
         if(_loc1_ != 0.0)
         {
            _loc2_ = op_lf32(0) /*Alchemy*/;
         }
         if(_loc1_ == 0.0)
         {
            xdet = 0.0;
            if(xform.a == 1.0)
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
            }
            if(false)
            {
               false;
            }
            xnull = false;
            _loc3_ = xform.outer.inverse();
            _loc4_ = Vec2.get();
            _loc5_ = _loc3_.transform(_loc4_);
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            iport.minx = _loc5_.zpp_inner.x;
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            iport.miny = _loc5_.zpp_inner.y;
            iport.maxx = iport.minx;
            iport.maxy = iport.miny;
            _loc5_.dispose();
            _loc1_ = width;
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x != _loc1_)
            {
               _loc4_.zpp_inner.x = _loc1_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc4_.zpp_inner.x;
            _loc5_ = _loc3_.transform(_loc4_);
            _loc7_ = iport;
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc1_ = _loc5_.zpp_inner.x;
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc2_ = _loc5_.zpp_inner.y;
            if(_loc1_ < _loc7_.minx)
            {
               _loc7_.minx = _loc1_;
            }
            if(_loc1_ > _loc7_.maxx)
            {
               _loc7_.maxx = _loc1_;
            }
            if(_loc2_ < _loc7_.miny)
            {
               _loc7_.miny = _loc2_;
            }
            if(_loc2_ > _loc7_.maxy)
            {
               _loc7_.maxy = _loc2_;
            }
            _loc5_.dispose();
            _loc1_ = height;
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.y != _loc1_)
            {
               _loc4_.zpp_inner.y = _loc1_;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc4_.zpp_inner.y;
            _loc5_ = _loc3_.transform(_loc4_);
            _loc7_ = iport;
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc1_ = _loc5_.zpp_inner.x;
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc2_ = _loc5_.zpp_inner.y;
            if(_loc1_ < _loc7_.minx)
            {
               _loc7_.minx = _loc1_;
            }
            if(_loc1_ > _loc7_.maxx)
            {
               _loc7_.maxx = _loc1_;
            }
            if(_loc2_ < _loc7_.miny)
            {
               _loc7_.miny = _loc2_;
            }
            if(_loc2_ > _loc7_.maxy)
            {
               _loc7_.maxy = _loc2_;
            }
            _loc5_.dispose();
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            if(_loc4_.zpp_inner.x != 0)
            {
               _loc4_.zpp_inner.x = 0;
               _loc6_ = _loc4_.zpp_inner;
               if(_loc6_._invalidate != null)
               {
                  _loc6_._invalidate(_loc6_);
               }
            }
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc4_.zpp_inner.x;
            _loc5_ = _loc3_.transform(_loc4_);
            _loc7_ = iport;
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc1_ = _loc5_.zpp_inner.x;
            _loc6_ = _loc5_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc2_ = _loc5_.zpp_inner.y;
            if(_loc1_ < _loc7_.minx)
            {
               _loc7_.minx = _loc1_;
            }
            if(_loc1_ > _loc7_.maxx)
            {
               _loc7_.maxx = _loc1_;
            }
            if(_loc2_ < _loc7_.miny)
            {
               _loc7_.miny = _loc2_;
            }
            if(_loc2_ > _loc7_.maxy)
            {
               _loc7_.maxy = _loc2_;
            }
            _loc5_.dispose();
            _loc4_.dispose();
            return;
         }
         op_sf32(0,_loc1_) /*Alchemy*/.xdet = op_si32(0,1597463007 - (op_li32(0) /*Alchemy*/ >> 1)) /*Alchemy*/ / (_loc2_ * (1.5 - 0.5 * _loc1_ * _loc2_ * _loc2_));
         if(xform.a == 1.0)
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
         }
         if(false)
         {
            false;
         }
         xnull = false;
         _loc3_ = xform.outer.inverse();
         var _loc4_:Vec2 = Vec2.get();
         var _loc5_:Vec2 = _loc3_.transform(_loc4_);
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         iport.minx = _loc5_.zpp_inner.x;
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         iport.miny = _loc5_.zpp_inner.y;
         iport.maxx = iport.minx;
         iport.maxy = iport.miny;
         _loc5_.dispose();
         _loc1_ = width;
         _loc6_ = _loc4_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         if(_loc4_.zpp_inner.x != _loc1_)
         {
            _loc4_.zpp_inner.x = _loc1_;
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._invalidate != null)
            {
               _loc6_._invalidate(_loc6_);
            }
         }
         _loc6_ = _loc4_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc4_.zpp_inner.x;
         _loc5_ = _loc3_.transform(_loc4_);
         var _loc7_:ZPP_AABB = iport;
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc1_ = _loc5_.zpp_inner.x;
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc2_ = _loc5_.zpp_inner.y;
         if(_loc1_ < _loc7_.minx)
         {
            _loc7_.minx = _loc1_;
         }
         if(_loc1_ > _loc7_.maxx)
         {
            _loc7_.maxx = _loc1_;
         }
         if(_loc2_ < _loc7_.miny)
         {
            _loc7_.miny = _loc2_;
         }
         if(_loc2_ > _loc7_.maxy)
         {
            _loc7_.maxy = _loc2_;
         }
         _loc5_.dispose();
         _loc1_ = height;
         _loc6_ = _loc4_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         if(_loc4_.zpp_inner.y != _loc1_)
         {
            _loc4_.zpp_inner.y = _loc1_;
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._invalidate != null)
            {
               _loc6_._invalidate(_loc6_);
            }
         }
         _loc6_ = _loc4_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc4_.zpp_inner.y;
         _loc5_ = _loc3_.transform(_loc4_);
         _loc7_ = iport;
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc1_ = _loc5_.zpp_inner.x;
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc2_ = _loc5_.zpp_inner.y;
         if(_loc1_ < _loc7_.minx)
         {
            _loc7_.minx = _loc1_;
         }
         if(_loc1_ > _loc7_.maxx)
         {
            _loc7_.maxx = _loc1_;
         }
         if(_loc2_ < _loc7_.miny)
         {
            _loc7_.miny = _loc2_;
         }
         if(_loc2_ > _loc7_.maxy)
         {
            _loc7_.maxy = _loc2_;
         }
         _loc5_.dispose();
         _loc6_ = _loc4_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         if(_loc4_.zpp_inner.x != 0)
         {
            _loc4_.zpp_inner.x = 0;
            _loc6_ = _loc4_.zpp_inner;
            if(_loc6_._invalidate != null)
            {
               _loc6_._invalidate(_loc6_);
            }
         }
         _loc6_ = _loc4_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc4_.zpp_inner.x;
         _loc5_ = _loc3_.transform(_loc4_);
         _loc7_ = iport;
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc1_ = _loc5_.zpp_inner.x;
         _loc6_ = _loc5_.zpp_inner;
         if(_loc6_._validate != null)
         {
            _loc6_._validate();
         }
         _loc2_ = _loc5_.zpp_inner.y;
         if(_loc1_ < _loc7_.minx)
         {
            _loc7_.minx = _loc1_;
         }
         if(_loc1_ > _loc7_.maxx)
         {
            _loc7_.maxx = _loc1_;
         }
         if(_loc2_ < _loc7_.miny)
         {
            _loc7_.miny = _loc2_;
         }
         if(_loc2_ > _loc7_.maxy)
         {
            _loc7_.maxy = _loc2_;
         }
         _loc5_.dispose();
         _loc4_.dispose();
      }
      
      public var xform:ZPP_Mat23;
      
      public var xdet:Number;
      
      public var width:int;
      
      public var viewport:ZPP_AABB;
      
      public var tmpab:ZPP_AABB;
      
      public function sup_setbg(param1:int) : void
      {
         bg_r = param1 >> 16 & 255;
         bg_g = param1 >> 8 & 255;
         bg_b = param1 & 255;
         bg_col = param1;
      }
      
      public function setform() : void
      {
         xform = new Mat23().zpp_inner;
         xform._invalidate = xform_invalidate;
      }
      
      public var outer:Debug;
      
      public var isbmp:Boolean;
      
      public var iport:ZPP_AABB;
      
      public var height:int;
      
      public var d_shape:ZPP_ShapeDebug;
      
      public var d_bmp:ZPP_BitmapDebug;
      
      public function cull(param1:ZPP_AABB) : Boolean
      {
         var _loc2_:* = null as ZPP_AABB;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null as ZPP_AABB;
         if(xnull)
         {
            _loc2_ = viewport;
            if(_loc2_.miny <= param1.maxy)
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
            return false;
         }
         _loc5_ = param1.minx;
         _loc6_ = param1.miny;
         tmpab.minx = (xform.a * _loc5_ + xform.b * _loc6_) + xform.tx;
         tmpab.miny = (xform.c * _loc5_ + xform.d * _loc6_) + xform.ty;
         tmpab.maxx = tmpab.minx;
         tmpab.maxy = tmpab.miny;
         _loc5_ = param1.maxx;
         _loc3_ = (xform.a * _loc5_ + xform.b * _loc6_) + xform.tx;
         _loc4_ = (xform.c * _loc5_ + xform.d * _loc6_) + xform.ty;
         _loc2_ = tmpab;
         if(_loc3_ < _loc2_.minx)
         {
            _loc2_.minx = _loc3_;
         }
         if(_loc3_ > _loc2_.maxx)
         {
            _loc2_.maxx = _loc3_;
         }
         if(_loc4_ < _loc2_.miny)
         {
            _loc2_.miny = _loc4_;
         }
         if(_loc4_ > _loc2_.maxy)
         {
            _loc2_.maxy = _loc4_;
         }
         _loc6_ = param1.maxy;
         _loc3_ = (xform.a * _loc5_ + xform.b * _loc6_) + xform.tx;
         _loc4_ = (xform.c * _loc5_ + xform.d * _loc6_) + xform.ty;
         _loc2_ = tmpab;
         if(_loc3_ < _loc2_.minx)
         {
            _loc2_.minx = _loc3_;
         }
         if(_loc3_ > _loc2_.maxx)
         {
            _loc2_.maxx = _loc3_;
         }
         if(_loc4_ < _loc2_.miny)
         {
            _loc2_.miny = _loc4_;
         }
         if(_loc4_ > _loc2_.maxy)
         {
            _loc2_.maxy = _loc4_;
         }
         _loc5_ = param1.minx;
         _loc3_ = (xform.a * _loc5_ + xform.b * _loc6_) + xform.tx;
         _loc4_ = (xform.c * _loc5_ + xform.d * _loc6_) + xform.ty;
         _loc2_ = tmpab;
         if(_loc3_ < _loc2_.minx)
         {
            _loc2_.minx = _loc3_;
         }
         if(_loc3_ > _loc2_.maxx)
         {
            _loc2_.maxx = _loc3_;
         }
         if(_loc4_ < _loc2_.miny)
         {
            _loc2_.miny = _loc4_;
         }
         if(_loc4_ > _loc2_.maxy)
         {
            _loc2_.maxy = _loc4_;
         }
         _loc2_ = tmpab;
         _loc7_ = viewport;
         if(_loc7_.miny <= _loc2_.maxy)
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
         return false;
      }
      
      public var bg_r:Number;
      
      public var bg_g:Number;
      
      public var bg_col:int;
      
      public var bg_b:Number;
   }
}
