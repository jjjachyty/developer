/* eslint-disable no-unused-vars */

import { compile } from "solc";
import { readFileSync, writeFile } from "fs";
import { parse } from 'path';

export const compiler = function(file, contractName) {
    // 读取智能合约文件
    var input = readFileSync(file, 'utf8');
    var fileName = parse(file)['name'].toString();
    console.log(fileName)
    // 编译合约
    var contract = compile(input, 1);
    // 输出结果
    console.log(contract.contracts[contractName].bytecode)
    console.log(contract.contracts[contractName].interface)
    // 将编译后生成的bytecode保存到本地
    writeFile(fileName + '.abi', '0x' + contract.contracts[contractName].bytecode, {}, function (err, result) {
        if (err) {
            console.log(err)
        }
    })
    // 将编译后生成的interface保存到本地
    writeFile(fileName + '.json', (contract.contracts[contractName].interface), {}, function (err, result) {
        if (err) {
            console.log(err)
        }
    })
}