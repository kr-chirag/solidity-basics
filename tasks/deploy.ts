import { log } from "console";
import { task } from "hardhat/config";
import { HardhatRuntimeEnvironment } from "hardhat/types";

task("my-deploy")
    .addPositionalParam("contractName")
    .addOptionalPositionalParam("constructorArgs")
    .addFlag("verify")
    .setAction(async (taskArgs, hre) => {
        await deploy(hre, taskArgs);
    });

export default async function deploy(
    hre: HardhatRuntimeEnvironment,
    taskArgs: any
) {
    // gettting args
    const contractName: string = taskArgs.contractName;
    const constructorArgs: any[] =
        (taskArgs.constructorArgs as string)
            ?.split(" ")
            ?.map((val) => (isNaN(Number(val)) ? val : Number(val))) ?? [];
    // log(contractName, constructorArgs, taskArgs.verify);

    // compiling
    await hre.run("compile");

    // getting instance
    const Contract = await hre.ethers.getContractFactory(contractName);
    const contract = await Contract.deploy(...constructorArgs);

    // deploying contract
    log(`Deploying ${contractName}...`);
    await contract.waitForDeployment();
    const contractAddress = await contract.getAddress();
    log(`deployed ${contractName}:`, contractAddress);

    // verifying contract
    if (taskArgs.verify) {
        console.log("Verifying contract...");
        await contract.deploymentTransaction()?.wait(5);
        await hre.run("verify:verify", {
            address: contractAddress,
            constructorArguments: constructorArgs,
        });
    }
}
