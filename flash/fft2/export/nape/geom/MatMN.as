package nape.geom
{
   import zpp_nape.geom.ZPP_MatMN;
   import flash._-2v;
   
   public class MatMN extends Object
   {
      
      public function MatMN(param1:int, param2:int)
      {
         if(_-2v._-7E)
         {
            return;
         }
         zpp_inner = new ZPP_MatMN(param1,param2);
         zpp_inner.outer = this;
      }
      
      public var zpp_inner:ZPP_MatMN;
      
      public function x(param1:int, param2:int) : Number
      {
         return zpp_inner.x[param1 * zpp_inner.n + param2];
      }
      
      public function transpose() : MatMN
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc1_:MatMN = new MatMN(zpp_inner.n,zpp_inner.m);
         var _loc2_:* = 0;
         var _loc3_:int = zpp_inner.m;
         while(_loc2_ < _loc3_)
         {
            _loc2_++;
            _loc4_ = _loc2_;
            _loc5_ = 0;
            _loc6_ = zpp_inner.n;
            while(_loc5_ < _loc6_)
            {
               _loc5_++;
               _loc7_ = _loc5_;
               _loc1_.zpp_inner.x[_loc7_ * _loc1_.zpp_inner.n + _loc4_] = zpp_inner.x[_loc4_ * zpp_inner.n + _loc7_];
            }
         }
         return _loc1_;
      }
      
      public function toString() : String
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc1_:String = "{ ";
         var _loc2_:* = true;
         var _loc3_:* = 0;
         var _loc4_:int = zpp_inner.m;
         while(_loc3_ < _loc4_)
         {
            _loc3_++;
            _loc5_ = _loc3_;
            if(!_loc2_)
            {
               _loc1_ = _loc1_ + "; ";
            }
            _loc2_ = false;
            _loc6_ = 0;
            _loc7_ = zpp_inner.n;
            while(_loc6_ < _loc7_)
            {
               _loc6_++;
               _loc8_ = _loc6_;
               _loc1_ = _loc1_ + ((zpp_inner.x[_loc5_ * zpp_inner.n + _loc8_]) + " ");
            }
         }
         _loc1_ = _loc1_ + "}";
         return _loc1_;
      }
      
      public function setx(param1:int, param2:int, param3:Number) : Number
      {
         var _loc4_:Number = param3;
         zpp_inner.x[param1 * zpp_inner.n + param2] = _loc4_;
         return _loc4_;
      }
      
      public function mul(param1:MatMN) : MatMN
      {
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc2_:MatMN = new MatMN(zpp_inner.m,param1.zpp_inner.n);
         var _loc3_:* = 0;
         var _loc4_:int = zpp_inner.m;
         while(_loc3_ < _loc4_)
         {
            _loc3_++;
            _loc5_ = _loc3_;
            _loc6_ = 0;
            _loc7_ = param1.zpp_inner.n;
            while(_loc6_ < _loc7_)
            {
               _loc6_++;
               _loc8_ = _loc6_;
               _loc9_ = 0.0;
               _loc10_ = 0;
               _loc11_ = zpp_inner.n;
               while(_loc10_ < _loc11_)
               {
                  _loc10_++;
                  _loc12_ = _loc10_;
                  _loc9_ = _loc9_ + (zpp_inner.x[_loc5_ * zpp_inner.n + _loc12_]) * (param1.zpp_inner.x[_loc12_ * param1.zpp_inner.n + _loc8_]);
               }
               _loc2_.zpp_inner.x[_loc5_ * _loc2_.zpp_inner.n + _loc8_] = _loc9_;
            }
         }
         return _loc2_;
      }
      
      public function get rows() : int
      {
         return zpp_inner.m;
      }
      
      public function get cols() : int
      {
         return zpp_inner.n;
      }
   }
}
