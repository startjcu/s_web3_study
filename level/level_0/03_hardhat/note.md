### 创建 hardhat 项目

```bash
npx hardhat init
```

### 编译合约

```bash
npx hardhat compile
```

### 部署合约

```bash
# 启动本地网络
npx hardhat node
# 部署合约
npx hardhat ignition deploy ./ignition/modules/Lock.js --network localhost
# 脚本在README.md中，--network localhost为默认
```

### 测试

```bash
npx hardhat test test/Shipping.js
```

### ERC20

```bash
npm install @openzeppelin/contracts
```

### dotenv

```bash
npm i dotenv
```

### 配置 .env 文件

```bash
# https://dashboard.alchemy.com/apps
ALCHEMY_API_KEY=yourAlchemyApiKey

# 钱包、账户详情、显示私钥
PRIVATE_KEY=yourPrivateKey
```

### 部署到测试网络

```bash
npx hardhat ignition deploy ./ignition/modules/TodoList.js --network sepolia
```
