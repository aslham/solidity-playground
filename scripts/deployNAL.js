async function main() {
    const NAL = await ethers.getContractFactory("NAL");
    const nal = await NAL.deploy();
    console.log("NAL deployed:", nae.target);
}
main();
