const A = artifacts.require('AA')
const B = artifacts.require('BB')
module.exports = function (deployer) {
  deployer.deploy(A)
  deployer.deploy(B)
}
