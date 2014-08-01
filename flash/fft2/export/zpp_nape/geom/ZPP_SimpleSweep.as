package zpp_nape.geom
{
   import zpp_nape.util.ZPP_Set_ZPP_SimpleSeg;
   import flash._-2v;
   
   public class ZPP_SimpleSweep extends Object
   {
      
      public function ZPP_SimpleSweep()
      {
         if(_-2v._-7E)
         {
            return;
         }
         if(ZPP_Set_ZPP_SimpleSeg.zpp_pool == null)
         {
            tree = new ZPP_Set_ZPP_SimpleSeg();
         }
         else
         {
            tree = ZPP_Set_ZPP_SimpleSeg.zpp_pool;
            ZPP_Set_ZPP_SimpleSeg.zpp_pool = tree.next;
            tree.next = null;
         }
         tree.alloc();
         tree.lt = edge_lt;
         tree.swapped = swap_nodes;
      }
      
      public var tree:ZPP_Set_ZPP_SimpleSeg;
      
      public var sweepx:Number;
      
      public function swap_nodes(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : void
      {
         var _loc3_:ZPP_Set_ZPP_SimpleSeg = param1.node;
         param1.node = param2.node;
         param2.node = _loc3_;
      }
      
      public function remove(param1:ZPP_SimpleSeg) : void
      {
         var _loc2_:ZPP_Set_ZPP_SimpleSeg = tree.successor_node(param1.node);
         var _loc3_:ZPP_Set_ZPP_SimpleSeg = tree.predecessor_node(param1.node);
         if(_loc2_ != null)
         {
            _loc2_.data.prev = param1.prev;
         }
         if(_loc3_ != null)
         {
            _loc3_.data.next = param1.next;
         }
         tree.remove_node(param1.node);
         param1.node = null;
      }
      
      public function intersection(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : ZPP_SimpleEvent
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = null as ZPP_SimpleVert;
         var _loc13_:* = null as ZPP_SimpleEvent;
         if(param1 != null)
         {
            true;
         }
         if(true)
         {
            return null;
         }
         if(param1.left != param2.left)
         {
            true;
         }
         if(!true)
         {
            true;
         }
         if(!true)
         {
            true;
         }
         if(true)
         {
            return null;
         }
         _loc3_ = param1.right.x - param1.left.x;
         _loc4_ = param1.right.y - param1.left.y;
         _loc5_ = param2.right.x - param2.left.x;
         _loc6_ = param2.right.y - param2.left.y;
         _loc7_ = _loc6_ * _loc3_ - _loc5_ * _loc4_;
         if(_loc7_ == 0.0)
         {
            return null;
         }
         _loc7_ = 1 / _loc7_;
         _loc8_ = param2.left.x - param1.left.x;
         _loc9_ = param2.left.y - param1.left.y;
         _loc10_ = (_loc6_ * _loc8_ - _loc5_ * _loc9_) * _loc7_;
         if(_loc10_ >= 0)
         {
            true;
         }
         if(true)
         {
            return null;
         }
         _loc11_ = (_loc4_ * _loc8_ - _loc3_ * _loc9_) * _loc7_;
         if(_loc11_ >= 0)
         {
            true;
         }
         if(true)
         {
            return null;
         }
         if(_loc11_ != 0)
         {
            true;
         }
         if(!true)
         {
            true;
         }
         if(!true)
         {
            true;
         }
         if(true)
         {
            _loc12_ = _loc11_ == 0?param2.left:_loc11_ == 1?param2.right:_loc10_ == 0?param1.left:param1.right;
         }
         else
         {
            _loc12_ = ZPP_SimpleVert.get(0.5 * (((param1.left.x + _loc3_ * _loc10_) + param2.left.x) + _loc5_ * _loc11_),0.5 * (((param1.left.y + _loc4_ * _loc10_) + param2.left.y) + _loc6_ * _loc11_));
         }
         _loc13_ = ZPP_SimpleEvent.get(_loc12_);
         _loc13_.type = 0;
         _loc13_.segment = param1;
         _loc13_.segment2 = param2;
         return _loc13_;
      }
      
      public function intersect(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : Boolean
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(param1 != null)
         {
            true;
         }
         if(true)
         {
            return false;
         }
         if(param1.left != param2.left)
         {
            true;
         }
         if(!true)
         {
            true;
         }
         if(!true)
         {
            true;
         }
         if(true)
         {
            return false;
         }
         _loc3_ = (param2.left.x - param1.left.x) * (param1.right.y - param1.left.y) - (param1.right.x - param1.left.x) * (param2.left.y - param1.left.y);
         _loc4_ = (param2.right.x - param1.left.x) * (param1.right.y - param1.left.y) - (param1.right.x - param1.left.x) * (param2.right.y - param1.left.y);
         if(_loc3_ * _loc4_ > 0)
         {
            return false;
         }
         _loc5_ = (param1.left.x - param2.left.x) * (param2.right.y - param2.left.y) - (param2.right.x - param2.left.x) * (param1.left.y - param2.left.y);
         _loc6_ = (param1.right.x - param2.left.x) * (param2.right.y - param2.left.y) - (param2.right.x - param2.left.x) * (param1.right.y - param2.left.y);
         if(_loc5_ * _loc6_ > 0)
         {
            return false;
         }
         if(_loc3_ * _loc4_ >= 0)
         {
            false;
         }
         if(false)
         {
            return true;
         }
         return true;
      }
      
      public function edge_lt(param1:ZPP_SimpleSeg, param2:ZPP_SimpleSeg) : Boolean
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = false;
         var _loc8_:* = null as ZPP_SimpleVert;
         var _loc9_:* = null as ZPP_SimpleVert;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = false;
         if(param1.left == param2.left)
         {
            false;
         }
         if(false)
         {
            return false;
         }
         if(param1.left == param2.right)
         {
            if(param1.left.x != param1.right.x)
            {
               _loc7_ = param1.right.x < param1.left.x;
               _loc3_ = param1.right.x - param1.left.x;
               _loc4_ = param1.right.y - param1.left.y;
               _loc5_ = param2.left.x - param1.left.x;
               _loc6_ = param2.left.y - param1.left.y;
            }
            if(param1.left.x == param1.right.x)
            {
               return param1.left.y < param1.right.y?param1.left.y > param2.left.y:param1.right.y > param2.left.y;
            }
            return (_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         }
         if(param1.right == param2.left)
         {
            if(param2.left.x != param2.right.x)
            {
               _loc7_ = param2.right.x < param2.left.x;
               _loc3_ = param2.right.x - param2.left.x;
               _loc4_ = param2.right.y - param2.left.y;
               _loc5_ = param1.left.x - param2.left.x;
               _loc6_ = param1.left.y - param2.left.y;
            }
            if(param2.left.x == param2.right.x)
            {
               return !(param2.left.y < param2.right.y?param2.left.y > param1.left.y:param2.right.y > param1.left.y);
            }
            return !((_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0);
         }
         if(param1.left == param2.left)
         {
            if(param1.left.x != param1.right.x)
            {
               _loc7_ = param1.right.x < param1.left.x;
               _loc3_ = param1.right.x - param1.left.x;
               _loc4_ = param1.right.y - param1.left.y;
               _loc5_ = param2.right.x - param1.left.x;
               _loc6_ = param2.right.y - param1.left.y;
            }
            if(param1.left.x == param1.right.x)
            {
               return param1.left.y < param1.right.y?param1.left.y > param2.right.y:param1.right.y > param2.right.y;
            }
            return (_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         }
         if(param1.right == param2.right)
         {
            if(param1.left.x != param1.right.x)
            {
               _loc7_ = param1.right.x < param1.left.x;
               _loc3_ = param1.right.x - param1.left.x;
               _loc4_ = param1.right.y - param1.left.y;
               _loc5_ = param2.left.x - param1.left.x;
               _loc6_ = param2.left.y - param1.left.y;
            }
            if(param1.left.x == param1.right.x)
            {
               return param1.left.y < param1.right.y?param1.left.y > param2.left.y:param1.right.y > param2.left.y;
            }
            return (_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0;
         }
         if(param1.left.x == param1.right.x)
         {
            if(param2.left.x == param2.right.x)
            {
               _loc8_ = param1.left.y < param1.right.y?param1.right:param1.left;
               _loc9_ = param2.left.y < param2.right.y?param2.right:param2.left;
               return _loc8_.y > _loc9_.y;
            }
            _loc7_ = param2.right.x < param2.left.x;
            _loc3_ = param2.right.x - param2.left.x;
            _loc4_ = param2.right.y - param2.left.y;
            _loc5_ = param1.left.x - param2.left.x;
            _loc6_ = param1.left.y - param2.left.y;
            _loc10_ = _loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_;
            _loc7_ = param2.right.x < param2.left.x;
            _loc3_ = param2.right.x - param2.left.x;
            _loc4_ = param2.right.y - param2.left.y;
            _loc5_ = param1.right.x - param2.left.x;
            _loc6_ = param1.right.y - param2.left.y;
            _loc11_ = _loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_;
            if(_loc10_ * _loc11_ >= 0)
            {
               return _loc10_ >= 0.0;
            }
            return sweepx >= param1.left.x;
         }
         if(param2.left.x == param2.right.x)
         {
            _loc7_ = param1.right.x < param1.left.x;
            _loc3_ = param1.right.x - param1.left.x;
            _loc4_ = param1.right.y - param1.left.y;
            _loc5_ = param2.left.x - param1.left.x;
            _loc6_ = param2.left.y - param1.left.y;
            _loc10_ = _loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_;
            _loc7_ = param1.right.x < param1.left.x;
            _loc3_ = param1.right.x - param1.left.x;
            _loc4_ = param1.right.y - param1.left.y;
            _loc5_ = param2.right.x - param1.left.x;
            _loc6_ = param2.right.y - param1.left.y;
            _loc11_ = _loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_;
            if(_loc10_ * _loc11_ >= 0)
            {
               return _loc10_ < 0.0;
            }
            return sweepx < param2.left.x;
         }
         _loc7_ = param1.right.x < param1.left.x;
         _loc3_ = param1.right.x - param1.left.x;
         _loc4_ = param1.right.y - param1.left.y;
         _loc5_ = param2.left.x - param1.left.x;
         _loc6_ = param2.left.y - param1.left.y;
         _loc12_ = (_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0.0;
         _loc7_ = param1.right.x < param1.left.x;
         _loc3_ = param1.right.x - param1.left.x;
         _loc4_ = param1.right.y - param1.left.y;
         _loc5_ = param2.right.x - param1.left.x;
         _loc6_ = param2.right.y - param1.left.y;
         _loc13_ = (_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) < 0.0;
         if(_loc12_ == _loc13_)
         {
            return _loc12_;
         }
         _loc7_ = param2.right.x < param2.left.x;
         _loc3_ = param2.right.x - param2.left.x;
         _loc4_ = param2.right.y - param2.left.y;
         _loc5_ = param1.left.x - param2.left.x;
         _loc6_ = param1.left.y - param2.left.y;
         _loc14_ = (_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) >= 0.0;
         _loc7_ = param2.right.x < param2.left.x;
         _loc3_ = param2.right.x - param2.left.x;
         _loc4_ = param2.right.y - param2.left.y;
         _loc5_ = param1.right.x - param2.left.x;
         _loc6_ = param1.right.y - param2.left.y;
         _loc15_ = (_loc7_?_loc4_ * _loc5_ - _loc3_ * _loc6_:_loc6_ * _loc3_ - _loc5_ * _loc4_) >= 0.0;
         if(_loc14_ == _loc15_)
         {
            return _loc14_;
         }
         _loc10_ = (sweepx - param1.left.x) / (param1.right.x - param1.left.x) * (param1.right.y - param1.left.y) + param1.left.y;
         _loc11_ = (sweepx - param2.left.x) / (param2.right.x - param2.left.x) * (param2.right.y - param2.left.y) + param2.left.y;
         return _loc10_ > _loc11_;
      }
      
      public function clear() : void
      {
         tree.clear();
      }
      
      public function add(param1:ZPP_SimpleSeg) : ZPP_SimpleSeg
      {
         param1.node = tree.insert(param1);
         var _loc2_:ZPP_Set_ZPP_SimpleSeg = tree.successor_node(param1.node);
         var _loc3_:ZPP_Set_ZPP_SimpleSeg = tree.predecessor_node(param1.node);
         if(_loc2_ != null)
         {
            param1.next = _loc2_.data;
            _loc2_.data.prev = param1;
         }
         if(_loc3_ != null)
         {
            param1.prev = _loc3_.data;
            _loc3_.data.next = param1;
         }
         return param1;
      }
   }
}
