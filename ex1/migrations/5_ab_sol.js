const a = artifacts.require('A')
const b = artifacts.require('B')

module.exports = function (deployer, network, accounts) {
  deployer.deploy(a)
  deployer.deploy(b, { from: accounts[1] })
}
