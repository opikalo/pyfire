package nape.shape
{
   import zpp_nape.util.ZPP_Flags;
   
   public class ValidationResult extends Object
   {
      
      public function ValidationResult()
      {
      }
      
      public static function get VALID() : ValidationResult
      {
         if(ZPP_Flags.ValidationResult_VALID == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_VALID = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ValidationResult_VALID;
      }
      
      public static function get DEGENERATE() : ValidationResult
      {
         if(ZPP_Flags.ValidationResult_DEGENERATE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_DEGENERATE = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ValidationResult_DEGENERATE;
      }
      
      public static function get DEGENERATE_EDGES() : ValidationResult
      {
         if(ZPP_Flags.ValidationResult_DEGENERATE_EDGES == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_DEGENERATE_EDGES = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ValidationResult_DEGENERATE_EDGES;
      }
      
      public static function get CONCAVE() : ValidationResult
      {
         if(ZPP_Flags.ValidationResult_CONCAVE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_CONCAVE = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ValidationResult_CONCAVE;
      }
      
      public static function get SELF_INTERSECTING() : ValidationResult
      {
         if(ZPP_Flags.ValidationResult_SELF_INTERSECTING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_SELF_INTERSECTING = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         return ZPP_Flags.ValidationResult_SELF_INTERSECTING;
      }
      
      public function toString() : String
      {
         if(ZPP_Flags.ValidationResult_VALID == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_VALID = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ValidationResult_VALID)
         {
            return "VALID";
         }
         if(ZPP_Flags.ValidationResult_DEGENERATE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_DEGENERATE = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ValidationResult_DEGENERATE)
         {
            return "DEGENERATE";
         }
         if(ZPP_Flags.ValidationResult_DEGENERATE_EDGES == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_DEGENERATE_EDGES = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ValidationResult_DEGENERATE_EDGES)
         {
            return "DEGENERATE_EDGES";
         }
         if(ZPP_Flags.ValidationResult_CONCAVE == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_CONCAVE = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ValidationResult_CONCAVE)
         {
            return "CONCAVE";
         }
         if(ZPP_Flags.ValidationResult_SELF_INTERSECTING == null)
         {
            ZPP_Flags.internal = true;
            ZPP_Flags.ValidationResult_SELF_INTERSECTING = new ValidationResult();
            ZPP_Flags.internal = false;
         }
         if(this == ZPP_Flags.ValidationResult_SELF_INTERSECTING)
         {
            return "SELF_INTERSECTING";
         }
         return "";
      }
   }
}
