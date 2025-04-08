import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

import dotEnv from "dotenv";
dotEnv.config();

import "./tasks/deploy";

const config: HardhatUserConfig = {
    solidity: "0.8.28",
    defaultNetwork: "sepolia",
    networks: {
        sepolia: {
            url: `https://sepolia.infura.io/v3/${process.env.INFURA_KEY}`,
            chainId: 11155111,
            accounts: [`${process.env.DEPLOYER_KEY}`],
        },
    },
    etherscan: {
        apiKey: `${process.env.ETHERSCAN_API_KEY}`,
    },
};

export default config;
