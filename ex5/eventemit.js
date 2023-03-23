// eventemit.js
const Web3 = require('web3')
//const web3 = new Web3('https://goerli.infura.io/v3/a6f1c07217a7488682eeeb01a4f9addb')
const web3 = new Web3(
  'wss://goerli.infura.io/ws/v3/fd5b5f938c3f4851a586ac086ecead61',
)

const privatekey =
  '8719d06a85a32b316cbee909769b31a67704fd6cc83b4ee294fa3e8601579c8e'

const account = web3.eth.accounts.privateKeyToAccount(privatekey)

web3.eth.defaultAccount = account.address
web3.eth.accounts.wallet.add(account)

let abi = [
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: 'uint256',
        name: 'a',
        type: 'uint256',
      },
    ],
    name: 'A',
    type: 'event',
  },
  {
    anonymous: false,
    inputs: [
      {
        indexed: false,
        internalType: 'uint256',
        name: 'a',
        type: 'uint256',
      },
    ],
    name: 'B',
    type: 'event',
  },
  {
    inputs: [],
    name: 'add',
    outputs: [],
    stateMutability: 'nonpayable',
    type: 'function',
  },
  {
    inputs: [],
    name: 'add2',
    outputs: [],
    stateMutability: 'nonpayable',
    type: 'function',
  },
]
let c_addr = '0x3976c5A6769416b39B1575270F557178D56978f4'

let Event_Emit = new web3.eth.Contract(abi, c_addr)
