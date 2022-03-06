import Debug "mo:base/Debug";
import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {
    stable var MyCounter:Nat=5;
    let array : [Text] = ["Motoko", "is", "a", "great", "language", "."];
    var natArray : [Nat] = [1,5,6,7,9,10];  
    var mysum : Nat=0;

    //challenge 1

    public func add(Number1: Nat, Number2 : Nat) : async Nat{
        var Number3:Nat = Number1 + Number2;
        return Number3;
    };

    //challenge 2

    public func square(Number1 : Nat) : async Nat{
        var Area:Nat = Number1 * Number1;
        return Area;
    };

    //challenge 3

    public func days_to_seconds(NoOfDays : Nat) : async Nat{
        var NoOfSeconds:Nat=NoOfDays*24*60*60;
        return NoOfSeconds;
    };

    //challenge 4

    public func increment_counter () : async Nat{
        MyCounter+=1;
        return MyCounter;
    };

    public func clear_counter () : async Nat{
        MyCounter:=0;
        return MyCounter;
    };

    //challenge 5

    public func divide (Arg1 : Nat, Arg2 : Nat) : async Bool{
        var myresult:Nat=Arg1 % Arg2;
        if (myresult==0) {
              return true;
            }    else { 
                return false;    
            };
    };

    //challenge 6

       public func is_even (Arg1 : Nat) : async Bool{
        var myresult:Nat=Arg1 % 2;
        if (myresult==0) {
              return true;
            }    else { 
                return false;    
            };
    };

        //challenge 7

        public func sum_of_array(my_array : [Nat]) : async Nat{
            var my_sum:Nat=0;
            if(my_array.size()==0) {
                return 0;
            } else {
            for (value in my_array.vals())  {
                my_sum+=value;
            };
        };
        return my_sum;
        };

        //challenge 8

        public func maximum(largest_array : [Nat]) : async Nat {
            var themax:Nat=0;
                for (value in largest_array.vals()) {
                    if(value > themax) {
                        themax:=value;    
                    };

                };
            return themax;    
        };

        //challenge 9

        public func remove_from_array(original_array : [Nat] , remove_number : Nat ) : async [Nat] {
            return Array.filter(original_array, func(_remove_number: Nat) : Bool { return _remove_number != remove_number; });
            
        };

        //challenge 10
        
        public func selection_sort(unsorted_array : [Nat] ) : async [Nat] {
            return Array.sort(unsorted_array, Nat.compare);
        };
};