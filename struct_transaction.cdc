import MyContract from 0x05

transaction(name:String, firstname:String, lastname:String, class:UInt,account:Address) {

    prepare(signer: AuthAccount) {}

    execute {
        MyContract.addstudent(name:name,firstname:firstname,lastname:lastname,class:class,account:account)
        log("We're done.")
    }
}
