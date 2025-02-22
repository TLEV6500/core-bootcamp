import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "dotenv/config"
const { PRIVATE_KEY } = process.env;
if (!PRIVATE_KEY) throw new Error(".env not found!");
const config: HardhatUserConfig = {
  solidity: "0.8.28",
  networks: {
    core_testnet: {
      accounts: [PRIVATE_KEY],
      url: "https://rpc.test2.btcs.network",
      chainId: 1114
    }
  }
};

export default config;
