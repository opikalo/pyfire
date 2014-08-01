package zpp_nape.dynamics
{
   import nape.dynamics.Contact;
   import nape.geom.Vec2;
   import zpp_nape.geom.ZPP_Vec2;
   import flash._-2v;
   
   public class ZPP_Contact extends Object
   {
      
      public function ZPP_Contact()
      {
         if(_-2v._-7E)
         {
            return;
         }
         inner = new ZPP_IContact();
      }
      
      public static var internal:Boolean;
      
      public static var zpp_pool:ZPP_Contact;
      
      public function wrapper() : Contact
      {
         if(outer == null)
         {
            ZPP_Contact.internal = true;
            outer = new Contact();
            ZPP_Contact.internal = false;
            outer.zpp_inner = this;
         }
         return outer;
      }
      
      public var wrap_position:Vec2;
      
      public function try_remove(param1:ZPP_Contact) : Boolean
      {
         var _loc2_:ZPP_Contact = null;
         var _loc3_:ZPP_Contact = next;
         var _loc4_:* = false;
         while(_loc3_ != null)
         {
            if(_loc3_ == param1)
            {
               erase(_loc2_);
               _loc4_ = true;
               break;
            }
            _loc2_ = _loc3_;
            _loc3_ = _loc3_.next;
         }
         return _loc4_;
      }
      
      public var stamp:int;
      
      public function splice(param1:ZPP_Contact, param2:int) : ZPP_Contact
      {
         while(true)
         {
            param2--;
            if(param2 > 0)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            erase(param1);
         }
         return param1.next;
      }
      
      public var sBias:Number;
      
      public function reverse() : void
      {
         var _loc3_:* = null as ZPP_Contact;
         var _loc1_:ZPP_Contact = next;
         var _loc2_:ZPP_Contact = null;
         while(_loc1_ != null)
         {
            _loc3_ = _loc1_.next;
            _loc1_.next = _loc2_;
            next = _loc1_;
            _loc2_ = _loc1_;
            _loc1_ = _loc3_;
         }
         modified = true;
         pushmod = true;
      }
      
      public function remove(param1:ZPP_Contact) : void
      {
         var _loc5_:* = null as ZPP_Contact;
         var _loc6_:* = null as ZPP_Contact;
         var _loc2_:ZPP_Contact = null;
         var _loc3_:ZPP_Contact = next;
         var _loc4_:* = false;
         while(_loc3_ != null)
         {
            if(_loc3_ == param1)
            {
               if(_loc2_ == null)
               {
                  _loc5_ = next;
                  _loc6_ = _loc5_.next;
                  next = _loc6_;
                  if(next == null)
                  {
                     pushmod = true;
                  }
               }
               else
               {
                  _loc5_ = _loc2_.next;
                  _loc6_ = _loc5_.next;
                  _loc2_.next = _loc6_;
                  if(_loc6_ == null)
                  {
                     pushmod = true;
                  }
               }
               _loc5_._inuse = false;
               modified = true;
               length = length - 1;
               pushmod = true;
               _loc6_;
               _loc4_ = true;
               break;
            }
            _loc2_ = _loc3_;
            _loc3_ = _loc3_.next;
         }
         _loc4_;
      }
      
      public var py:Number;
      
      public var px:Number;
      
      public var pushmod:Boolean;
      
      public function position_validate() : void
      {
         wrap_position.zpp_inner.x = px;
         wrap_position.zpp_inner.y = py;
      }
      
      public function position_invalidate(param1:ZPP_Vec2) : void
      {
         px = param1.x;
         py = param1.y;
      }
      
      public function pop_unsafe() : ZPP_Contact
      {
         var _loc1_:ZPP_Contact = next;
         pop();
         return _loc1_;
      }
      
      public function pop() : void
      {
         var _loc1_:ZPP_Contact = next;
         next = _loc1_.next;
         _loc1_._inuse = false;
         if(next == null)
         {
            pushmod = true;
         }
         modified = true;
         length = length - 1;
      }
      
      public var pjtAcc:Number;
      
      public var pjnAcc:Number;
      
      public var outer:Contact;
      
      public var next:ZPP_Contact;
      
      public var modified:Boolean;
      
      public var length:int;
      
      public function iterator_at(param1:int) : ZPP_Contact
      {
         var _loc2_:ZPP_Contact = next;
         while(true)
         {
            param1--;
            if(param1 > 0)
            {
               false;
            }
            if(!false)
            {
               break;
            }
            _loc2_ = _loc2_.next;
         }
         return _loc2_;
      }
      
      public function insert(param1:ZPP_Contact, param2:ZPP_Contact) : ZPP_Contact
      {
         param2._inuse = true;
         var _loc3_:ZPP_Contact = param2;
         if(param1 == null)
         {
            _loc3_.next = next;
            next = _loc3_;
         }
         else
         {
            _loc3_.next = param1.next;
            param1.next = _loc3_;
         }
         var _loc4_:* = true;
         modified = _loc4_;
         pushmod = _loc4_;
         length = length + 1;
         return _loc3_;
      }
      
      public var inner:ZPP_IContact;
      
      public function inactiveme() : Boolean
      {
         if(active)
         {
            false;
         }
         if(false)
         {
            false;
         }
         return !false;
      }
      
      public var hash:int;
      
      public function has(param1:ZPP_Contact) : Boolean
      {
         var _loc4_:* = null as ZPP_Contact;
         var _loc2_:* = false;
         var _loc3_:ZPP_Contact = next;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_;
            if(_loc4_ == param1)
            {
               _loc2_ = true;
               break;
            }
            _loc3_ = _loc3_.next;
         }
         return _loc2_;
      }
      
      public function getposition() : void
      {
         var _loc1_:ZPP_Contact = this;
         wrap_position = Vec2.get();
         wrap_position.zpp_inner._inuse = true;
         wrap_position.zpp_inner._immutable = !arbiter.colarb.mutable;
         wrap_position.zpp_inner._validate = position_validate;
         wrap_position.zpp_inner._invalidate = position_invalidate;
      }
      
      public var fresh:Boolean;
      
      public function erase(param1:ZPP_Contact) : ZPP_Contact
      {
         var _loc2_:* = null as ZPP_Contact;
         var _loc3_:* = null as ZPP_Contact;
         if(param1 == null)
         {
            _loc2_ = next;
            _loc3_ = _loc2_.next;
            next = _loc3_;
            if(next == null)
            {
               pushmod = true;
            }
         }
         else
         {
            _loc2_ = param1.next;
            _loc3_ = _loc2_.next;
            param1.next = _loc3_;
            if(_loc3_ == null)
            {
               pushmod = true;
            }
         }
         _loc2_._inuse = false;
         modified = true;
         length = length - 1;
         pushmod = true;
         return _loc3_;
      }
      
      public var elasticity:Number;
      
      public var dist:Number;
      
      public function clear() : void
      {
      }
      
      public function back() : ZPP_Contact
      {
         var _loc1_:ZPP_Contact = next;
         var _loc2_:ZPP_Contact = _loc1_;
         while(_loc2_ != null)
         {
            _loc1_ = _loc2_;
            _loc2_ = _loc2_.next;
         }
         return _loc1_;
      }
      
      public function at(param1:int) : ZPP_Contact
      {
         var _loc2_:ZPP_Contact = iterator_at(param1);
         return _loc2_ != null?_loc2_:null;
      }
      
      public var arbiter:ZPP_Arbiter;
      
      public function addAll(param1:ZPP_Contact) : void
      {
         var _loc3_:* = null as ZPP_Contact;
         var _loc2_:ZPP_Contact = param1.next;
         while(_loc2_ != null)
         {
            _loc3_ = _loc2_;
            add(_loc3_);
            _loc2_ = _loc2_.next;
         }
      }
      
      public function add(param1:ZPP_Contact) : ZPP_Contact
      {
         param1._inuse = true;
         var _loc2_:ZPP_Contact = param1;
         _loc2_.next = next;
         next = _loc2_;
         modified = true;
         length = length + 1;
         return param1;
      }
      
      public var active:Boolean;
      
      public var _inuse:Boolean;
   }
}
