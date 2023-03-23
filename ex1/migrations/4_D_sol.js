const A = artifacts.require('A')
const B = artifacts.require('B')
const D = artifacts.require('D')

module.exports = async function (deployer) {
  const a = await A.deployed()
  const b = await B.deployed()
  await deployer.deploy(D, a.address, b.address)
}
