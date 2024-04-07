pub contract MyContract {

    pub var people: {Address: student}
    // Define a struct
    pub struct student {
        pub let name:String
        pub let firstname:String
        pub let lastname:String  
        pub let class:UInt
        pub let account:Address

    // You have to pass in 2 arguments when creating this Struct.
        init(_name:String,_firstname: String,_lastname:String, _class:UInt,_account:Address) {
            self.name=_name
            self.firstname=_firstname
            self.lname=_lastname
            self.class=_class
            self.account=_account
        }
    }

    pub fun addstudent( name:String,firstname:String,lastname:String,class:UInt,account:Address){
        let newstudent=student(_name:name,_firstname:firstname,_lastname:lastname,_class:class,_account:account)
        self.people[account]=newstudent
    }

  // The init() function is required if the contract contains any fields.
  init() {
    self.people= {}
  }
}
