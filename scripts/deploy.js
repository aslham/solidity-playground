async function main() {
    const MOM = await ethers.getContractFactory("MOM");
    const mom = await MOM.deploy();
    console.log("MOM deployed to:", mom.target);
}

main();
// improve deploy script
