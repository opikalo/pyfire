package nape.callbacks
{
   import zpp_nape.util.ZPP_Flags;
   
   public class InteractionType extends Object
   {
      
      public function InteractionType()
      {
      }
      
      public static function get COLLISION() : InteractionType
      {
         if(ZPP_Flags.InteractionType_COLLISION == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_COLLISION = new InteractionType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.InteractionType_COLLISION;
      }
      
      public static function get SENSOR() : InteractionType
      {
         if(ZPP_Flags.InteractionType_SENSOR == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_SENSOR = new InteractionType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.InteractionType_SENSOR;
      }
      
      public static function get FLUID() : InteractionType
      {
         if(ZPP_Flags.InteractionType_FLUID == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_FLUID = new InteractionType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.InteractionType_FLUID;
      }
      
      public static function get ANY() : InteractionType
      {
         if(ZPP_Flags.InteractionType_ANY == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_ANY = new InteractionType();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.InteractionType_ANY;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.InteractionType_COLLISION == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_COLLISION = new InteractionType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.InteractionType_COLLISION)
         {
            return "COLLISION";
         }
         if(ZPP_Flags.InteractionType_SENSOR == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_SENSOR = new InteractionType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.InteractionType_SENSOR)
         {
            return "SENSOR";
         }
         if(ZPP_Flags.InteractionType_FLUID == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_FLUID = new InteractionType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.InteractionType_FLUID)
         {
            return "FLUID";
         }
         if(ZPP_Flags.InteractionType_ANY == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InteractionType_ANY = new InteractionType();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.InteractionType_ANY)
         {
            return "ANY";
         }
         return "";
      }
   }
}
