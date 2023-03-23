// const A = artifacts.require('A')
const B = artifacts.require('B')
module.exports = async function (deployer) {
  //   const a = await A.deployed()
  //   deployer.deploy(A)
  deployer.deploy(B, '0xd4A1DB64Eb23269aE8294C9Fb3500031B4eFcc3c')
}
