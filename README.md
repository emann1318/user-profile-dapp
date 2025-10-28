# User Profile DApp

A decentralized application (DApp) for managing user profiles on the Ethereum blockchain using Solidity and JavaScript.

## Contract Address

**Deployed Contract on Sepolia:** `0x193af1465dE71C5975b38410Cdc7F2E34FAD7D22`

View on [Etherscan](https://sepolia.etherscan.io/address/0x193af1465dE71C5975b38410Cdc7F2E34FAD7D22)

## Features

- **Smart Contract**: `UserProfile.sol` with 5 main functions
  - `setUserProfile()` - Write function to set user name and age
  - `getUserProfile()` - Read function to retrieve user profile
  - `depositBalance()` - Write function to deposit ETH
  - `getBalance()` - Read function to check user balance
  - `withdrawBalance()` - Write function to withdraw ETH

- **Web Interface**: Beautiful, modern HTML page with:
  - Wallet connection via MetaMask
  - Profile management (set/get user profiles)
  - Balance management (deposit/withdraw/check balance)
  - Transaction history display
  - Responsive design with gradient styling

## Prerequisites

- [MetaMask](https://metamask.io/) browser extension installed
- A Sepolia testnet account with test ETH
- Access to [Remix IDE](https://remix.ethereum.org/)

## Getting Sepolia Test ETH

1. Visit a Sepolia faucet:
   - [Alchemy Sepolia Faucet](https://sepoliafaucet.com/)
   - [PoW Faucet](https://sepolia-faucet.pk910.de/)
   - [Infura Faucet](https://www.infura.io/faucet/sepolia)

2. Enter your wallet address and request test ETH
3. Wait for confirmation (usually within minutes)

## Deployment Instructions

### Step 1: Deploy the Smart Contract

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create a new file named `UserProfile.sol`
3. Copy and paste the contents from `UserProfile.sol`
4. Click on the "Solidity Compiler" tab (left sidebar)
   - Select compiler version: 0.8.20 or later
   - Click "Compile UserProfile.sol"
5. Go to the "Deploy & Run Transactions" tab
   - Select environment: "Injected Provider - MetaMask"
   - Make sure your network is set to "Sepolia Testnet"
   - Click "Deploy" and confirm the transaction in MetaMask
6. Copy the deployed contract address

### Step 2: Configure the Web Interface

1. Open `index.html` in your web browser
2. Click "Connect MetaMask" and approve the connection
3. Enter your deployed contract address in the "Contract Information" section:
   ```
   0x193af1465dE71C5975b38410Cdc7F2E34FAD7D22
   ```
4. Click "Load Contract"

## Usage

### Connect Your Wallet

1. Click "Connect MetaMask" button
2. Approve the connection in MetaMask
3. Your wallet address will be displayed

### Set User Profile

1. Enter your name and age in the input fields
2. Click "Set Profile"
3. Confirm the transaction in MetaMask
4. Wait for confirmation

### Get User Profile

1. Optionally enter an address (defaults to your connected address)
2. Click "Get Profile"
3. View the retrieved name and age

### Deposit Balance

1. Enter the amount in ETH you want to deposit
2. Click "Deposit"
3. Confirm the transaction in MetaMask
4. Wait for confirmation

### Check Balance

1. Optionally enter an address (defaults to your connected address)
2. Click "Get Balance"
3. View the balance in ETH

### Withdraw Balance

1. Enter the amount in ETH you want to withdraw
2. Click "Withdraw"
3. Confirm the transaction in MetaMask
4. Wait for confirmation

## File Structure

```
├── UserProfile.sol      # Solidity smart contract
├── index.html           # Main HTML page with JavaScript
├── style.css            # CSS styling
└── README.md           # This file
```

## Smart Contract Functions

### Write Functions

1. **`setUserProfile(string memory _name, uint256 _age)`**
   - Sets or updates user's name and age
   - Requires: User must be connected

2. **`depositBalance()`**
   - Deposits ETH to user's balance in the contract
   - Requires: Sending ETH with the transaction

3. **`withdrawBalance(uint256 _amount)`**
   - Withdraws specified amount from user's balance
   - Requires: Sufficient balance in contract

### Read Functions

4. **`getUserProfile(address _user)`**
   - Returns user's name and age
   - View function (no transaction cost)

5. **`getBalance(address _user)`**
   - Returns user's balance in wei
   - View function (no transaction cost)

### Additional Functions

- **`getOwner()`** - Returns the contract owner address
- **`owner`** - Public state variable for owner
- **`names`** - Public mapping for user names
- **`ages`** - Public mapping for user ages
- **`balances`** - Public mapping for user balances

## Technologies Used

- **Solidity** ^0.8.20 - Smart contract language
- **Ethers.js** v5 - Ethereum library for JavaScript
- **HTML5** - Web structure
- **CSS3** - Modern styling with gradients
- **JavaScript (ES6+)** - DApp logic and MetaMask integration

## HTML Elements Included

✅ Headings (h1, h2, h3)  
✅ Paragraphs (p)  
✅ Lists (ul, li)  
✅ Links (a)  
✅ Buttons (button)  
✅ Images (can be added easily)  
✅ Script tags (embedded JavaScript)  

## Troubleshooting

### MetaMask Not Detected
- Ensure MetaMask extension is installed and enabled
- Refresh the page after installing MetaMask

### Transaction Failures
- Check you have sufficient Sepolia ETH for gas fees
- Verify you're connected to Sepolia testnet
- Check the contract address is correct

### Contract Not Loading
- Verify the contract address is from Sepolia network
- Ensure the contract was deployed successfully
- Check browser console for error messages

## Network Information

- **Network Name**: Sepolia Testnet
- **RPC URL**: https://sepolia.infura.io/v3/YOUR-PROJECT-ID
- **Chain ID**: 11155111
- **Currency Symbol**: ETH
- **Block Explorer**: https://sepolia.etherscan.io/
- **Deployed Contract**: [0x193af1465dE71C5975b38410Cdc7F2E34FAD7D22](https://sepolia.etherscan.io/address/0x193af1465dE71C5975b38410Cdc7F2E34FAD7D22)

## License

MIT License - Feel free to use and modify for your projects.

## Author

Eman Faris 

## Support

For issues or questions:
- Check the [Ethereum documentation](https://ethereum.org/en/developers/)
- Visit [MetaMask documentation](https://docs.metamask.io/)
- Use Remix IDE for contract debugging


