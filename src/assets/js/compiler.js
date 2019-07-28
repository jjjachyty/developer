/* eslint-disable no-unused-vars */


// var fs = require("fs");
// var path = require('path');
var solc = require("solc");

// export default function(file, contractName) {
//     // 读取智能合约文件
//     var input = fs.readFileSync(file, 'utf8').toString();
//     var fileName = path.parse(file)['name'].toString();
//     console.log(fileName)
//         // 编译合约
//     var contract = solc.compile(input, 1);
//     // 输出结果
//     console.log(contract.contracts[contractName].bytecode)
//     console.log(contract.contracts[contractName].interface)
//         // 将编译后生成的bytecode保存到本地
//     fs.writeFile(fileName + '.abi', '0x' + contract.contracts[contractName].bytecode, {}, function(err, result) {
//             if (err) {
//                 console.log(err)
//             }
//         })
//         // 将编译后生成的interface保存到本地
//     fs.writeFile(fileName + '.json', (contract.contracts[contractName].interface), {}, function(err, result) {
//         if (err) {
//             console.log(err)
//         }
//     })
// }