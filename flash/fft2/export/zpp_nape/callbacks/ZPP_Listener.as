package zpp_nape.callbacks
{
   import zpp_nape.space.ZPP_Space;
   import nape.callbacks.Listener;
   import flash._-2v;
   import zpp_nape.ZPP_ID;
   
   public class ZPP_Listener extends Object
   {
      
      public function ZPP_Listener()
      {
         if(_-2v._-7E)
         {
            return;
         }
         id = ZPP_ID.Listener();
      }
      
      public static function setlt(param1:ZPP_Listener, param2:ZPP_Listener) : Boolean
      {
         if(param1.precedence <= param2.precedence)
         {
            true;
            if(param1.precedence == param2.precedence)
            {
               false;
            }
         }
         return true;
      }
      
      public var type:int;
      
      public function swapEvent(param1:int) : void
      {
      }
      
      public var space:ZPP_Space;
      
      public function removedFromSpace() : void
      {
      }
      
      public var precedence:int;
      
      public var outer:nape.callbacks.Listener;
      
      public function invalidate_precedence() : void
      {
      }
      
      public var interaction:ZPP_InteractionListener;
      
      public var id:int;
      
      public var event:int;
      
      public var constraint:ZPP_ConstraintListener;
      
      public var body:ZPP_BodyListener;
      
      public function addedToSpace() : void
      {
      }
   }
}
