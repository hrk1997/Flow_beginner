import MyContract from 0x05

pub fun main(account: Address): MyContract.student{
    return MyContract.people[account]!
}
