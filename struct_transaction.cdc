import MyContract from 0x05

transaction(name:String, fname:String, mname:String, age:UInt,account:Address) {

    prepare(signer: AuthAccount) {}

    execute {
        MyContract.addstudent(name:name,fname:fname,mname:mname,age:age,account:account)
        log("We're done.")
    }
}
