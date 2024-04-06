pub contract MyContract {

    pub var people: {Address: student}
    // Define a struct
    pub struct student {
        pub let name:String
        pub let fname:String
        pub let mname:String  
        pub let age:UInt
        pub let account:Address

    // You have to pass in 2 arguments when creating this Struct.
        init(_name:String,_fname: String,_mname:String, _age:UInt,_account:Address) {
            self.name=_name
            self.fname=_fname
            self.mname=_mname
            self.age=_age
            self.account=_account
        }
    }

    pub fun addstudent( name:String,fname:String,mname:String,age:UInt,account:Address){
        let newstudent=student(_name:name,_fname:fname,_mname:mname,_age:age,_account:account)
        self.people[account]=newstudent
    }

  // The init() function is required if the contract contains any fields.
  init() {
    self.people= {}
  }
}
