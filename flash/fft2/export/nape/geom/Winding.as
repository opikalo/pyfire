package nape.geom
{
   import zpp_nape.util.ZPP_Flags;
   
   public class Winding extends Object
   {
      
      public function Winding()
      {
      }
      
      public static function get UNDEFINED() : Winding
      {
         if(ZPP_Flags.Winding_UNDEFINED == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Winding_UNDEFINED = new Winding();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.Winding_UNDEFINED;
      }
      
      public static function get CLOCKWISE() : Winding
      {
         if(ZPP_Flags.Winding_CLOCKWISE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Winding_CLOCKWISE = new Winding();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.Winding_CLOCKWISE;
      }
      
      public static function get ANTICLOCKWISE() : Winding
      {
         if(ZPP_Flags.Winding_ANTICLOCKWISE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Winding_ANTICLOCKWISE = new Winding();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.Winding_ANTICLOCKWISE;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.Winding_UNDEFINED == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Winding_UNDEFINED = new Winding();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.Winding_UNDEFINED)
         {
            return "UNDEFINED";
         }
         if(ZPP_Flags.Winding_CLOCKWISE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Winding_CLOCKWISE = new Winding();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.Winding_CLOCKWISE)
         {
            return "CLOCKWISE";
         }
         if(ZPP_Flags.Winding_ANTICLOCKWISE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.Winding_ANTICLOCKWISE = new Winding();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.Winding_ANTICLOCKWISE)
         {
            return "ANTICLOCKWISE";
         }
         return "";
      }
   }
}
