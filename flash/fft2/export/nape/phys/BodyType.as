package nape.phys
{
   import zpp_nape.util.ZPP_Flags;
   
   public class BodyType extends Object
   {
      
      public function BodyType()
      {
      }
      
      public static function get STATIC() : BodyType
      {
         if(ZPP_Flags.BodyType_STATIC == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.BodyType_STATIC = new BodyType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.BodyType_STATIC;
      }
      
      public static function get DYNAMIC() : BodyType
      {
         if(ZPP_Flags.BodyType_DYNAMIC == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.BodyType_DYNAMIC = new BodyType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.BodyType_DYNAMIC;
      }
      
      public static function get KINEMATIC() : BodyType
      {
         if(ZPP_Flags.BodyType_KINEMATIC == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.BodyType_KINEMATIC = new BodyType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.BodyType_KINEMATIC;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.BodyType_STATIC == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.BodyType_STATIC = new BodyType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.BodyType_STATIC)
         {
            return "STATIC";
         }
         if(ZPP_Flags.BodyType_DYNAMIC == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.BodyType_DYNAMIC = new BodyType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.BodyType_DYNAMIC)
         {
            return "DYNAMIC";
         }
         if(ZPP_Flags.BodyType_KINEMATIC == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.BodyType_KINEMATIC = new BodyType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.BodyType_KINEMATIC)
         {
            return "KINEMATIC";
         }
         return "";
      }
   }
}
