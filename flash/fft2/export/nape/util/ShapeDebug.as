package nape.util
{
   import zpp_nape.util.ZPP_ShapeDebug;
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_Vec2;
   import nape.geom.Vec2List;
   import nape.geom.GeomPoly;
   import zpp_nape.geom.ZPP_GeomVert;
   import zpp_nape.util.ZNPList_ZPP_Vec2;
   import zpp_nape.util.ZNPNode_ZPP_Vec2;
   import flash.display.Graphics;
   import zpp_nape.ZPP_Const;
   import nape.geom.AABB;
   import zpp_nape.geom.ZPP_AABB;
   import nape.space.Space;
   import zpp_nape.geom.ZPP_Mat23;
   import nape.phys.Compound;
   import nape.phys.Body;
   import nape.shape.Shape;
   import nape.constraint.Constraint;
   import flash._-2v;
   
   public class ShapeDebug extends Debug
   {
      
      public function ShapeDebug(param1:int, param2:int, param3:int = 3355443)
      {
         if(_-2v._-7E)
         {
            return;
         }
         super();
         zpp_inner_zn = new ZPP_ShapeDebug(param1,param2);
         zpp_inner_zn.outer_zn = this;
         zpp_inner = zpp_inner_zn;
         zpp_inner.outer = this;
         if(zpp_inner.isbmp)
         {
            zpp_inner.d_bmp.setbg(param3);
         }
         else
         {
            zpp_inner.d_shape.setbg(param3);
         }
         zpp_inner.bg_col;
         thickness = 0.1;
      }
      
      public var zpp_inner_zn:ZPP_ShapeDebug;
      
      public var thickness:Number;
      
      override public function drawSpring(param1:Vec2, param2:Vec2, param3:int, param4:int = 3, param5:Number = 3.0) : void
      {
         var _loc6_:* = NaN;
         var _loc7_:* = null as ZPP_Vec2;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = null as Vec2;
         var _loc15_:* = null as Vec2;
         var _loc16_:* = null as Vec2;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(param4 == 0)
         {
            drawLine(param1,param2,param3);
         }
         else
         {
            _loc7_ = param2.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc6_ = param2.zpp_inner.x - param1.zpp_inner.x;
            _loc7_ = param2.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc7_ = param1.zpp_inner;
            if(_loc7_._validate != null)
            {
               _loc7_._validate();
            }
            _loc8_ = param2.zpp_inner.y - param1.zpp_inner.y;
            _loc9_ = 1.0 / (param4 * 4);
            _loc6_ = _loc6_ * _loc9_;
            _loc8_ = _loc8_ * _loc9_;
            _loc9_ = _loc6_;
            _loc10_ = _loc8_;
            if((_loc9_ * _loc9_ + _loc10_ * _loc10_) < 0.1)
            {
               return;
            }
            _loc11_ = _loc9_ * _loc9_ + _loc10_ * _loc10_;
            _loc13_ = op_lf32(0) /*Alchemy*/;
            _loc12_ = _loc13_ * (1.5 - 0.5 * _loc11_ * _loc13_ * _loc13_);
            _loc13_ = _loc12_;
            _loc9_ = _loc9_ * _loc13_;
            _loc10_ = _loc10_ * _loc13_;
            _loc11_ = _loc9_;
            _loc9_ = -_loc10_;
            _loc10_ = _loc11_;
            _loc11_ = param5 * 2;
            _loc9_ = _loc9_ * _loc11_;
            _loc10_ = _loc10_ * _loc11_;
            _loc14_ = param1.copy();
            _loc15_ = Vec2.get();
            _loc16_ = Vec2.get();
            _loc17_ = 0;
            while(_loc17_ < param4)
            {
               _loc17_++;
               _loc18_ = _loc17_;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = (_loc14_.zpp_inner.x + _loc6_) + _loc9_;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.x != _loc11_)
               {
                  _loc15_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.x;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = (_loc14_.zpp_inner.y + _loc8_) + _loc10_;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.y != _loc11_)
               {
                  _loc15_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.y;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc14_.zpp_inner.x + _loc6_ * 2;
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc16_.zpp_inner.x != _loc11_)
               {
                  _loc16_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc16_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc16_.zpp_inner.x;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc14_.zpp_inner.y + _loc8_ * 2;
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc16_.zpp_inner.y != _loc11_)
               {
                  _loc16_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc16_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc16_.zpp_inner.y;
               drawCurve(_loc14_,_loc15_,_loc16_,param3);
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc16_.zpp_inner.x;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc14_.zpp_inner.x != _loc11_)
               {
                  _loc14_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc14_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc14_.zpp_inner.x;
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc16_.zpp_inner.y;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc14_.zpp_inner.y != _loc11_)
               {
                  _loc14_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc14_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc14_.zpp_inner.y;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = (_loc14_.zpp_inner.x + _loc6_) - _loc9_;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.x != _loc11_)
               {
                  _loc15_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.x;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = (_loc14_.zpp_inner.y + _loc8_) - _loc10_;
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc15_.zpp_inner.y != _loc11_)
               {
                  _loc15_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc15_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc15_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc15_.zpp_inner.y;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc14_.zpp_inner.x + _loc6_ * 2;
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc16_.zpp_inner.x != _loc11_)
               {
                  _loc16_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc16_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc16_.zpp_inner.x;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc14_.zpp_inner.y + _loc8_ * 2;
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc16_.zpp_inner.y != _loc11_)
               {
                  _loc16_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc16_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc16_.zpp_inner.y;
               drawCurve(_loc14_,_loc15_,_loc16_,param3);
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc16_.zpp_inner.x;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc14_.zpp_inner.x != _loc11_)
               {
                  _loc14_.zpp_inner.x = _loc11_;
                  _loc7_ = _loc14_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc14_.zpp_inner.x;
               _loc7_ = _loc16_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc11_ = _loc16_.zpp_inner.y;
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               if(_loc14_.zpp_inner.y != _loc11_)
               {
                  _loc14_.zpp_inner.y = _loc11_;
                  _loc7_ = _loc14_.zpp_inner;
                  if(_loc7_._invalidate != null)
                  {
                     _loc7_._invalidate(_loc7_);
                  }
               }
               _loc7_ = _loc14_.zpp_inner;
               if(_loc7_._validate != null)
               {
                  _loc7_._validate();
               }
               _loc14_.zpp_inner.y;
            }
            _loc14_.dispose();
            _loc15_.dispose();
            _loc16_.dispose();
         }
         if(param1.zpp_inner.weak)
         {
            param1.dispose();
            true;
         }
         else
         {
            false;
         }
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
      
      override public function drawPolygon(param1:*, param2:int) : void
      {
         var _loc6_:* = null as Array;
         var _loc7_:* = 0;
         var _loc8_:* = null;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vector.<Vec2>;
         var _loc12_:* = null as Vec2;
         var _loc13_:* = null as Vec2List;
         var _loc14_:* = null as GeomPoly;
         var _loc15_:* = null as ZPP_GeomVert;
         var _loc16_:* = null as ZPP_GeomVert;
         var _loc17_:* = null as Vec2;
         var _loc18_:uint = 0;
         var _loc19_:* = null as ZNPList_ZPP_Vec2;
         var _loc20_:* = null as ZNPNode_ZPP_Vec2;
         var _loc21_:* = null as ZNPNode_ZPP_Vec2;
         var _loc3_:Graphics = zpp_inner_zn.graphics;
         _loc3_.lineStyle(0.1,param2 & 16777215,1.0);
         var _loc4_:Vec2 = null;
         var _loc5_:* = true;
         if(zpp_inner.xnull)
         {
            if(_-C2.is(param1,Array))
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < (_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  if(_loc5_)
                  {
                     _loc4_ = _loc9_.copy();
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,ZPP_Const.vec2vector))
            {
               _loc11_ = param1;
               _loc7_ = 0;
               while(_loc7_ < _loc11_.length)
               {
                  _loc9_ = _loc11_[_loc7_];
                  _loc7_++;
                  _loc12_ = _loc9_;
                  if(_loc5_)
                  {
                     _loc4_ = _loc12_.copy();
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,Vec2List))
            {
               _loc13_ = param1;
               _loc8_ = _loc13_.iterator();
               while(_loc8_.hasNext())
               {
                  _loc9_ = _loc8_.next();
                  if(_loc5_)
                  {
                     _loc4_ = _loc9_.copy();
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,GeomPoly))
            {
               _loc14_ = param1;
               _loc15_ = _loc14_.zpp_inner.vertices;
               if(_loc15_ != null)
               {
                  _loc16_ = _loc15_;
                  do
                  {
                     _loc9_ = Vec2.get(_loc16_.x,_loc16_.y);
                     _loc16_ = _loc16_.next;
                     if(_loc5_)
                     {
                        _loc4_ = _loc9_.copy();
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.moveTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                     }
                     else
                     {
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.lineTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                     }
                     _loc5_ = false;
                     _loc9_.dispose();
                  }
                  while(_loc16_ != _loc15_);
                  
               }
            }
            
            
            
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo(_loc4_.zpp_inner.x,_loc4_.zpp_inner.y);
            _loc4_.dispose();
         }
         else
         {
            if(_-C2.is(param1,Array))
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < (_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  _loc12_ = zpp_inner.xform.outer.transform(_loc9_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc12_;
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_.dispose();
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,ZPP_Const.vec2vector))
            {
               _loc11_ = param1;
               _loc7_ = 0;
               while(_loc7_ < _loc11_.length)
               {
                  _loc9_ = _loc11_[_loc7_];
                  _loc7_++;
                  _loc12_ = _loc9_;
                  _loc17_ = zpp_inner.xform.outer.transform(_loc12_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc17_;
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc17_.zpp_inner.x,_loc17_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc17_.zpp_inner.x,_loc17_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc17_.dispose();
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,Vec2List))
            {
               _loc13_ = param1;
               _loc8_ = _loc13_.iterator();
               while(_loc8_.hasNext())
               {
                  _loc9_ = _loc8_.next();
                  _loc12_ = zpp_inner.xform.outer.transform(_loc9_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc12_;
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_.dispose();
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,GeomPoly))
            {
               _loc14_ = param1;
               _loc15_ = _loc14_.zpp_inner.vertices;
               if(_loc15_ != null)
               {
                  _loc16_ = _loc15_;
                  do
                  {
                     _loc9_ = Vec2.get(_loc16_.x,_loc16_.y);
                     _loc16_ = _loc16_.next;
                     _loc12_ = zpp_inner.xform.outer.transform(_loc9_);
                     if(_loc5_)
                     {
                        _loc4_ = _loc12_;
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                     }
                     else
                     {
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                     }
                     if(!_loc5_)
                     {
                        _loc12_.dispose();
                     }
                     _loc5_ = false;
                     _loc9_.dispose();
                  }
                  while(_loc16_ != _loc15_);
                  
               }
            }
            
            
            
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo(_loc4_.zpp_inner.x,_loc4_.zpp_inner.y);
            _loc4_.dispose();
         }
         if(_-C2.is(param1,Array))
         {
            _loc6_ = param1;
            _loc7_ = 0;
            while(_loc7_ < (_loc6_.length))
            {
               _loc9_ = _loc6_[_loc7_];
               if(_loc9_.zpp_inner.weak)
               {
                  _loc9_.dispose();
               }
               if(_loc9_.zpp_inner.weak)
               {
                  if(true)
                  {
                     _loc6_.splice(_loc7_,1);
                  }
                  else
                  {
                     _loc7_++;
                  }
               }
               else if(false)
               {
                  _loc6_.splice(_loc7_,1);
               }
               else
               {
                  _loc7_++;
               }
               
            }
         }
         else if(_-C2.is(param1,ZPP_Const.vec2vector))
         {
            _loc11_ = param1;
            if(!_loc11_.fixed)
            {
               _loc18_ = 0;
               while(_loc18_ < _loc11_.length)
               {
                  _loc9_ = _loc11_[_loc18_];
                  if(_loc9_.zpp_inner.weak)
                  {
                     _loc9_.dispose();
                  }
                  if(_loc9_.zpp_inner.weak)
                  {
                     if(true)
                     {
                        _loc11_.splice(_loc18_,1);
                     }
                     else
                     {
                        _loc18_++;
                     }
                  }
                  else if(false)
                  {
                     _loc11_.splice(_loc18_,1);
                  }
                  else
                  {
                     _loc18_++;
                  }
                  
               }
            }
         }
         else if(_-C2.is(param1,Vec2List))
         {
            _loc13_ = param1;
            if(_loc13_.zpp_inner._validate != null)
            {
               _loc13_.zpp_inner._validate();
            }
            _loc19_ = _loc13_.zpp_inner.inner;
            _loc20_ = null;
            _loc21_ = _loc19_.head;
            while(_loc21_ != null)
            {
               _loc10_ = _loc21_.elt;
               if(_loc10_.outer.zpp_inner.weak)
               {
                  _loc21_ = _loc19_.erase(_loc20_);
                  if(_loc10_.outer.zpp_inner.weak)
                  {
                     _loc10_.outer.dispose();
                     true;
                  }
                  else
                  {
                     false;
                  }
               }
               else
               {
                  _loc20_ = _loc21_;
                  _loc21_ = _loc21_.next;
               }
            }
         }
         
         
      }
      
      override public function drawLine(param1:Vec2, param2:Vec2, param3:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc4_:Graphics = zpp_inner_zn.graphics;
         _loc4_.lineStyle(0.1,param3 & 16777215,1);
         if(zpp_inner.xnull)
         {
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.moveTo(param1.zpp_inner.x,param1.zpp_inner.y);
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param2.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.lineTo(param2.zpp_inner.x,param2.zpp_inner.y);
            if(param1.zpp_inner.weak)
            {
               param1.dispose();
               true;
            }
            else
            {
               false;
            }
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
         else
         {
            _loc6_ = zpp_inner.xform.outer.transform(param1);
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.moveTo(_loc6_.zpp_inner.x,_loc6_.zpp_inner.y);
            _loc6_.dispose();
            _loc6_ = zpp_inner.xform.outer.transform(param2);
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.lineTo(_loc6_.zpp_inner.x,_loc6_.zpp_inner.y);
            _loc6_.dispose();
         }
      }
      
      override public function drawFilledTriangle(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc5_:Graphics = zpp_inner_zn.graphics;
         _loc5_.lineStyle(0,0,0);
         _loc5_.beginFill(param4 & 16777215,1);
         if(zpp_inner.xnull)
         {
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.moveTo(param1.zpp_inner.x,param1.zpp_inner.y);
            _loc6_ = param2.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.lineTo(param2.zpp_inner.x,param2.zpp_inner.y);
            _loc6_ = param3.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.lineTo(param3.zpp_inner.x,param3.zpp_inner.y);
            if(param1.zpp_inner.weak)
            {
               param1.dispose();
               true;
            }
            else
            {
               false;
            }
            if(param2.zpp_inner.weak)
            {
               param2.dispose();
               true;
            }
            else
            {
               false;
            }
            if(param3.zpp_inner.weak)
            {
               param3.dispose();
               true;
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc7_ = zpp_inner.xform.outer.transform(param1);
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.moveTo(_loc7_.zpp_inner.x,_loc7_.zpp_inner.y);
            _loc7_.dispose();
            _loc7_ = zpp_inner.xform.outer.transform(param2);
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.lineTo(_loc7_.zpp_inner.x,_loc7_.zpp_inner.y);
            _loc7_.dispose();
            _loc7_ = zpp_inner.xform.outer.transform(param3);
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.lineTo(_loc7_.zpp_inner.x,_loc7_.zpp_inner.y);
            _loc7_.dispose();
         }
         _loc5_.endFill();
      }
      
      override public function drawFilledPolygon(param1:*, param2:int) : void
      {
         var _loc6_:* = null as Array;
         var _loc7_:* = 0;
         var _loc8_:* = null;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc11_:* = null as Vector.<Vec2>;
         var _loc12_:* = null as Vec2;
         var _loc13_:* = null as Vec2List;
         var _loc14_:* = null as GeomPoly;
         var _loc15_:* = null as ZPP_GeomVert;
         var _loc16_:* = null as ZPP_GeomVert;
         var _loc17_:* = null as Vec2;
         var _loc18_:uint = 0;
         var _loc19_:* = null as ZNPList_ZPP_Vec2;
         var _loc20_:* = null as ZNPNode_ZPP_Vec2;
         var _loc21_:* = null as ZNPNode_ZPP_Vec2;
         var _loc3_:Graphics = zpp_inner_zn.graphics;
         _loc3_.beginFill(param2 & 16777215,1.0);
         _loc3_.lineStyle(0,0,0);
         var _loc4_:Vec2 = null;
         var _loc5_:* = true;
         if(zpp_inner.xnull)
         {
            if(_-C2.is(param1,Array))
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < (_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  if(_loc5_)
                  {
                     _loc4_ = _loc9_.copy();
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,ZPP_Const.vec2vector))
            {
               _loc11_ = param1;
               _loc7_ = 0;
               while(_loc7_ < _loc11_.length)
               {
                  _loc9_ = _loc11_[_loc7_];
                  _loc7_++;
                  _loc12_ = _loc9_;
                  if(_loc5_)
                  {
                     _loc4_ = _loc12_.copy();
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,Vec2List))
            {
               _loc13_ = param1;
               _loc8_ = _loc13_.iterator();
               while(_loc8_.hasNext())
               {
                  _loc9_ = _loc8_.next();
                  if(_loc5_)
                  {
                     _loc4_ = _loc9_.copy();
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc9_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,GeomPoly))
            {
               _loc14_ = param1;
               _loc15_ = _loc14_.zpp_inner.vertices;
               if(_loc15_ != null)
               {
                  _loc16_ = _loc15_;
                  do
                  {
                     _loc9_ = Vec2.get(_loc16_.x,_loc16_.y);
                     _loc16_ = _loc16_.next;
                     if(_loc5_)
                     {
                        _loc4_ = _loc9_.copy();
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.moveTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                     }
                     else
                     {
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc9_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.lineTo(_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
                     }
                     _loc5_ = false;
                     _loc9_.dispose();
                  }
                  while(_loc16_ != _loc15_);
                  
               }
            }
            
            
            
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo(_loc4_.zpp_inner.x,_loc4_.zpp_inner.y);
            _loc4_.dispose();
         }
         else
         {
            if(_-C2.is(param1,Array))
            {
               _loc6_ = param1;
               _loc7_ = 0;
               while(_loc7_ < (_loc6_.length))
               {
                  _loc8_ = _loc6_[_loc7_];
                  _loc7_++;
                  _loc9_ = _loc8_;
                  _loc12_ = zpp_inner.xform.outer.transform(_loc9_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc12_;
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_.dispose();
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,ZPP_Const.vec2vector))
            {
               _loc11_ = param1;
               _loc7_ = 0;
               while(_loc7_ < _loc11_.length)
               {
                  _loc9_ = _loc11_[_loc7_];
                  _loc7_++;
                  _loc12_ = _loc9_;
                  _loc17_ = zpp_inner.xform.outer.transform(_loc12_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc17_;
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc17_.zpp_inner.x,_loc17_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc17_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc17_.zpp_inner.x,_loc17_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc17_.dispose();
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,Vec2List))
            {
               _loc13_ = param1;
               _loc8_ = _loc13_.iterator();
               while(_loc8_.hasNext())
               {
                  _loc9_ = _loc8_.next();
                  _loc12_ = zpp_inner.xform.outer.transform(_loc9_);
                  if(_loc5_)
                  {
                     _loc4_ = _loc12_;
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  else
                  {
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc10_ = _loc12_.zpp_inner;
                     if(_loc10_._validate != null)
                     {
                        _loc10_._validate();
                     }
                     _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                  }
                  if(!_loc5_)
                  {
                     _loc12_.dispose();
                  }
                  _loc5_ = false;
               }
            }
            else if(_-C2.is(param1,GeomPoly))
            {
               _loc14_ = param1;
               _loc15_ = _loc14_.zpp_inner.vertices;
               if(_loc15_ != null)
               {
                  _loc16_ = _loc15_;
                  do
                  {
                     _loc9_ = Vec2.get(_loc16_.x,_loc16_.y);
                     _loc16_ = _loc16_.next;
                     _loc12_ = zpp_inner.xform.outer.transform(_loc9_);
                     if(_loc5_)
                     {
                        _loc4_ = _loc12_;
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.moveTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                     }
                     else
                     {
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc10_ = _loc12_.zpp_inner;
                        if(_loc10_._validate != null)
                        {
                           _loc10_._validate();
                        }
                        _loc3_.lineTo(_loc12_.zpp_inner.x,_loc12_.zpp_inner.y);
                     }
                     if(!_loc5_)
                     {
                        _loc12_.dispose();
                     }
                     _loc5_ = false;
                     _loc9_.dispose();
                  }
                  while(_loc16_ != _loc15_);
                  
               }
            }
            
            
            
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc4_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo(_loc4_.zpp_inner.x,_loc4_.zpp_inner.y);
            _loc4_.dispose();
         }
         _loc3_.endFill();
         if(_-C2.is(param1,Array))
         {
            _loc6_ = param1;
            _loc7_ = 0;
            while(_loc7_ < (_loc6_.length))
            {
               _loc9_ = _loc6_[_loc7_];
               if(_loc9_.zpp_inner.weak)
               {
                  _loc9_.dispose();
               }
               if(_loc9_.zpp_inner.weak)
               {
                  if(true)
                  {
                     _loc6_.splice(_loc7_,1);
                  }
                  else
                  {
                     _loc7_++;
                  }
               }
               else if(false)
               {
                  _loc6_.splice(_loc7_,1);
               }
               else
               {
                  _loc7_++;
               }
               
            }
         }
         else if(_-C2.is(param1,ZPP_Const.vec2vector))
         {
            _loc11_ = param1;
            if(!_loc11_.fixed)
            {
               _loc18_ = 0;
               while(_loc18_ < _loc11_.length)
               {
                  _loc9_ = _loc11_[_loc18_];
                  if(_loc9_.zpp_inner.weak)
                  {
                     _loc9_.dispose();
                  }
                  if(_loc9_.zpp_inner.weak)
                  {
                     if(true)
                     {
                        _loc11_.splice(_loc18_,1);
                     }
                     else
                     {
                        _loc18_++;
                     }
                  }
                  else if(false)
                  {
                     _loc11_.splice(_loc18_,1);
                  }
                  else
                  {
                     _loc18_++;
                  }
                  
               }
            }
         }
         else if(_-C2.is(param1,Vec2List))
         {
            _loc13_ = param1;
            if(_loc13_.zpp_inner._validate != null)
            {
               _loc13_.zpp_inner._validate();
            }
            _loc19_ = _loc13_.zpp_inner.inner;
            _loc20_ = null;
            _loc21_ = _loc19_.head;
            while(_loc21_ != null)
            {
               _loc10_ = _loc21_.elt;
               if(_loc10_.outer.zpp_inner.weak)
               {
                  _loc21_ = _loc19_.erase(_loc20_);
                  if(_loc10_.outer.zpp_inner.weak)
                  {
                     _loc10_.outer.dispose();
                     true;
                  }
                  else
                  {
                     false;
                  }
               }
               else
               {
                  _loc20_ = _loc21_;
                  _loc21_ = _loc21_.next;
               }
            }
         }
         
         
      }
      
      override public function drawFilledCircle(param1:Vec2, param2:Number, param3:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc4_:Graphics = zpp_inner_zn.graphics;
         _loc4_.lineStyle(0,0,0);
         _loc4_.beginFill(param3 & 16777215,1);
         if(zpp_inner.xnull)
         {
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.drawCircle(param1.zpp_inner.x,param1.zpp_inner.y,param2);
            if(param1.zpp_inner.weak)
            {
               param1.dispose();
               true;
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc6_ = zpp_inner.xform.outer.transform(param1);
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.drawCircle(_loc6_.zpp_inner.x,_loc6_.zpp_inner.y,param2 * zpp_inner.xdet);
            _loc6_.dispose();
         }
         _loc4_.endFill();
      }
      
      override public function drawCurve(param1:Vec2, param2:Vec2, param3:Vec2, param4:int) : void
      {
         var _loc6_:* = null as ZPP_Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as Vec2;
         var _loc5_:Graphics = zpp_inner_zn.graphics;
         _loc5_.lineStyle(0.1,param4 & 16777215,1);
         if(zpp_inner.xnull)
         {
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param1.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.moveTo(param1.zpp_inner.x,param1.zpp_inner.y);
            _loc6_ = param2.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param2.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = param3.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.curveTo(param2.zpp_inner.x,param2.zpp_inner.y,param3.zpp_inner.x,param3.zpp_inner.y);
            if(param1.zpp_inner.weak)
            {
               param1.dispose();
               true;
            }
            else
            {
               false;
            }
            if(param2.zpp_inner.weak)
            {
               param2.dispose();
               true;
            }
            else
            {
               false;
            }
            if(param3.zpp_inner.weak)
            {
               param3.dispose();
               true;
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc7_ = zpp_inner.xform.outer.transform(param1);
            _loc8_ = zpp_inner.xform.outer.transform(param2);
            _loc9_ = zpp_inner.xform.outer.transform(param3);
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc7_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.moveTo(_loc7_.zpp_inner.x,_loc7_.zpp_inner.y);
            _loc6_ = _loc8_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc8_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc9_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc6_ = _loc9_.zpp_inner;
            if(_loc6_._validate != null)
            {
               _loc6_._validate();
            }
            _loc5_.curveTo(_loc8_.zpp_inner.x,_loc8_.zpp_inner.y,_loc9_.zpp_inner.x,_loc9_.zpp_inner.y);
            _loc7_.dispose();
            _loc8_.dispose();
            _loc9_.dispose();
         }
      }
      
      override public function drawCircle(param1:Vec2, param2:Number, param3:int) : void
      {
         var _loc5_:* = null as ZPP_Vec2;
         var _loc6_:* = null as Vec2;
         var _loc4_:Graphics = zpp_inner_zn.graphics;
         _loc4_.lineStyle(0.1,param3 & 16777215,1);
         if(zpp_inner.xnull)
         {
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = param1.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.drawCircle(param1.zpp_inner.x,param1.zpp_inner.y,param2);
            if(param1.zpp_inner.weak)
            {
               param1.dispose();
               true;
            }
            else
            {
               false;
            }
         }
         else
         {
            _loc6_ = zpp_inner.xform.outer.transform(param1);
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc5_ = _loc6_.zpp_inner;
            if(_loc5_._validate != null)
            {
               _loc5_._validate();
            }
            _loc4_.drawCircle(_loc6_.zpp_inner.x,_loc6_.zpp_inner.y,param2 * zpp_inner.xdet);
            _loc6_.dispose();
         }
      }
      
      override public function drawAABB(param1:AABB, param2:int) : void
      {
         var _loc4_:* = null as ZPP_AABB;
         var _loc5_:* = null as Vec2;
         var _loc6_:* = null as Vec2;
         var _loc7_:* = null as Vec2;
         var _loc8_:* = null as Vec2;
         var _loc9_:* = null as Vec2;
         var _loc10_:* = null as ZPP_Vec2;
         var _loc3_:Graphics = zpp_inner_zn.graphics;
         _loc3_.lineStyle(0.1,param2 & 16777215,1);
         if(zpp_inner.xnull)
         {
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            _loc3_.drawRect(param1.zpp_inner.minx,param1.zpp_inner.miny,_loc4_.maxx - _loc4_.minx,_loc4_.maxy - _loc4_.miny);
         }
         else
         {
            _loc5_ = zpp_inner.xform.outer.transform(param1.zpp_inner.getmin());
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            _loc6_ = Vec2.get(_loc4_.maxx - _loc4_.minx,0);
            _loc7_ = zpp_inner.xform.outer.transform(_loc6_,true);
            _loc4_ = param1.zpp_inner;
            if(_loc4_._validate != null)
            {
               _loc4_._validate();
            }
            _loc4_ = param1.zpp_inner;
            _loc8_ = Vec2.get(_loc4_.maxy - _loc4_.miny,0);
            _loc9_ = zpp_inner.xform.outer.transform(_loc8_,true);
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.moveTo(_loc5_.zpp_inner.x,_loc5_.zpp_inner.y);
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo(_loc5_.zpp_inner.x + _loc7_.zpp_inner.x,_loc5_.zpp_inner.y + _loc7_.zpp_inner.y);
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc7_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo((_loc5_.zpp_inner.x + _loc7_.zpp_inner.x) + _loc9_.zpp_inner.x,(_loc5_.zpp_inner.y + _loc7_.zpp_inner.y) + _loc9_.zpp_inner.y);
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc9_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo(_loc5_.zpp_inner.x + _loc9_.zpp_inner.x,_loc5_.zpp_inner.y + _loc9_.zpp_inner.y);
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc10_ = _loc5_.zpp_inner;
            if(_loc10_._validate != null)
            {
               _loc10_._validate();
            }
            _loc3_.lineTo(_loc5_.zpp_inner.x,_loc5_.zpp_inner.y);
            _loc5_.dispose();
            _loc6_.dispose();
            _loc7_.dispose();
            _loc8_.dispose();
            _loc9_.dispose();
         }
      }
      
      override public function draw(param1:*) : void
      {
         if(zpp_inner.xnull)
         {
            if(_-C2.is(param1,Space))
            {
               zpp_inner_zn.draw_space(param1.zpp_inner,null,1.0,true);
            }
            else if(_-C2.is(param1,Compound))
            {
               zpp_inner_zn.draw_compound(param1.zpp_inner,null,1.0,true);
            }
            else if(_-C2.is(param1,Body))
            {
               zpp_inner_zn.draw_body(param1.zpp_inner,null,1.0,true);
            }
            else if(_-C2.is(param1,Shape))
            {
               zpp_inner_zn.draw_shape(param1.zpp_inner,null,1.0,true);
            }
            else if(_-C2.is(param1,Constraint))
            {
               param1.zpp_inner.draw(this);
            }
            
            
            
            
         }
         else if(_-C2.is(param1,Space))
         {
            zpp_inner_zn.draw_space(param1.zpp_inner,zpp_inner.xform,zpp_inner.xdet,false);
         }
         else if(_-C2.is(param1,Body))
         {
            zpp_inner_zn.draw_body(param1.zpp_inner,zpp_inner.xform,zpp_inner.xdet,false);
         }
         else if(_-C2.is(param1,Shape))
         {
            zpp_inner_zn.draw_shape(param1.zpp_inner,zpp_inner.xform,zpp_inner.xdet,false);
         }
         else if(_-C2.is(param1,Constraint))
         {
            param1.zpp_inner.draw(this);
         }
         
         
         
         
      }
      
      override public function clear() : void
      {
         zpp_inner_zn.graphics.clear();
      }
   }
}
