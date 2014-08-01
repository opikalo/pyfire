package nape.geom
{
   import nape.shape.Shape;
   import flash._-2v;
   
   public class RayResult extends Object
   {
      
      public function RayResult(param1:Vec2, param2:Number, param3:Boolean, param4:Shape)
      {
         if(_-2v._-7E)
         {
            return;
         }
         normal = param1;
         distance = param2;
         inner = param3;
         shape = param4;
      }
      
      public function toString() : String
      {
         return "{ shape: " + _-C2.string(shape) + " distance: " + distance + " ?inner: " + _-C2.string(inner) + " }";
      }
      
      public var shape:Shape;
      
      public var normal:Vec2;
      
      public var inner:Boolean;
      
      public var distance:Number;
   }
}
