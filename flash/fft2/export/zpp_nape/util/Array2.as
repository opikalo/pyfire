package zpp_nape.util
{
   import flash._-2v;
   
   public class Array2 extends Object
   {
      
      public function Array2(param1:int = 0, param2:int = 0)
      {
         if(_-2v._-7E)
         {
            return;
         }
         width = param1;
         list = new Vector.<Object>(param1 * param2,true);
      }
      
      public var width:int;
      
      public function set(param1:int, param2:int, param3:Object) : Object
      {
         var _loc4_:Object = param3;
         list[param2 * width + param1] = _loc4_;
         return _loc4_;
      }
      
      public var list:Vector.<Object>;
      
      public function get(param1:int, param2:int) : Object
      {
         return list[param2 * width + param1];
      }
   }
}
