const a = artifacts.require('A')
const b = artifacts.require('B')
const c = artifacts.require('C')
const d = artifacts.require('D')
//전부 deploy
module.exports = async function (deployer) {
  const a_addr = await a.deployed()
  const b_addr = await b.deployed()
  await deployer.deploy(a)
  await deployer.deploy(b)
  await deployer.deploy(c, a_addr.address, b_addr.address)
  await deployer.deploy(d)
}
