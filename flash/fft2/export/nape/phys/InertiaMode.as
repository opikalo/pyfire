package nape.phys
{
   import zpp_nape.util.ZPP_Flags;
   
   public class InertiaMode extends Object
   {
      
      public function InertiaMode()
      {
      }
      
      public static function get DEFAULT() : InertiaMode
      {
         if(ZPP_Flags.InertiaMode_DEFAULT == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InertiaMode_DEFAULT = new InertiaMode();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.InertiaMode_DEFAULT;
      }
      
      public static function get FIXED() : InertiaMode
      {
         if(ZPP_Flags.InertiaMode_FIXED == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InertiaMode_FIXED = new InertiaMode();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.InertiaMode_FIXED;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.InertiaMode_DEFAULT == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InertiaMode_DEFAULT = new InertiaMode();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.InertiaMode_DEFAULT)
         {
            return "DEFAULT";
         }
         if(ZPP_Flags.InertiaMode_FIXED == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.InertiaMode_FIXED = new InertiaMode();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.InertiaMode_FIXED)
         {
            return "FIXED";
         }
         return "";
      }
   }
}
