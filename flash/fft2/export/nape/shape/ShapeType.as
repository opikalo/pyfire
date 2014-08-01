package nape.shape
{
   import zpp_nape.util.ZPP_Flags;
   
   public class ShapeType extends Object
   {
      
      public function ShapeType()
      {
      }
      
      public static function get CIRCLE() : ShapeType
      {
         if(ZPP_Flags.ShapeType_CIRCLE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ShapeType_CIRCLE = new ShapeType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ShapeType_CIRCLE;
      }
      
      public static function get POLYGON() : ShapeType
      {
         if(ZPP_Flags.ShapeType_POLYGON == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ShapeType_POLYGON = new ShapeType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ShapeType_POLYGON;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.ShapeType_CIRCLE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ShapeType_CIRCLE = new ShapeType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ShapeType_CIRCLE)
         {
            return "CIRCLE";
         }
         if(ZPP_Flags.ShapeType_POLYGON == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ShapeType_POLYGON = new ShapeType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ShapeType_POLYGON)
         {
            return "POLYGON";
         }
         return "";
      }
   }
}
