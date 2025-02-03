
---

# Fan Club Token Creator

A simple dApp for creating ERC-20 tokens on the Polygon network.

---

## Setup

### Prerequisites
Before you begin, ensure you have the following installed:
- [Node.js](https://nodejs.org/) (v16 or higher recommended)
- [npm](https://www.npmjs.com/) or [Yarn](https://yarnpkg.com/)
- A wallet like [MetaMask](https://metamask.io/) configured for the Polygon network.

### 1. Clone the Repository
Clone the repository to your local machine:
```bash
git clone https://github.com/FadhilMulinya/Token-Creator.git
cd Token-Creator
```

### 2. Environment Setup
- Create a `.env.local` file in the root directory of your project.
- Add the following environment variables:
  ```env
  NEXT_PUBLIC_POLYGON_RPC_URL=https://polygon-rpc.com/
  NEXT_PUBLIC_PROJECT_ID=your_walletconnect_project_id
  ```
  - **`NEXT_PUBLIC_POLYGON_RPC_URL`**: Replace this with your preferred Polygon RPC URL (e.g., from [Alchemy](https://www.alchemy.com/), [Infura](https://infura.io/), or [QuickNode](https://www.quicknode.com/)).
  - **`NEXT_PUBLIC_PROJECT_ID`**: Obtain your WalletConnect Project ID by creating an account at [WalletConnect Cloud](https://cloud.walletconnect.com/).

### 3. Install Dependencies
Run the following command to install the required dependencies:
```bash
npm install
# or
yarn install
```

### 4. Start the Development Server
To run the application locally, use:
```bash
npm run dev
# or
yarn dev
```
- The app will be available at [http://localhost:3000](http://localhost:3000) or [http://localhost:3001](http://localhost:3001).

---

## Usage

1. **Connect Your Wallet**: Ensure your wallet (e.g., MetaMask) is connected to the Polygon network.
2. **Check Gas Fees**: Make sure you have enough POL (Polygon's native token) in your wallet to cover gas fees.
3. **Create a Token**: Fill in the token details (name, symbol, supply) and click "Create Token."

---

## Deploying to Vercel via Command Line

### Prerequisites
- Install the Vercel CLI if you haven’t already:
  ```bash
  npm install -g vercel
  # or
  yarn global add vercel
  ```

### Steps to Deploy
1. **Login to Vercel**:
   Run the following command and follow the prompts to log in:
   ```bash
   vercel login
   ```

2. **Deploy Your Project**:
   Navigate to your project's root directory and run:
   ```bash
   vercel
   ```
   - Follow the prompts to link your project to Vercel.
   - If this is your first deployment, Vercel will guide you through the setup process.

3. **Deploy to Production**:
   Once the initial deployment is complete, you can deploy to production using:
   ```bash
   vercel --prod
   ```

4. **Environment Variables**:
   - If you haven’t added your environment variables to Vercel, you can do so via the Vercel dashboard or the CLI:
     ```bash
     vercel env add
     ```
   - Add the same variables you used in `.env.local` (`NEXT_PUBLIC_POLYGON_RPC_URL` and `NEXT_PUBLIC_PROJECT_ID`).

5. **Access Your Deployed App**:
   - After deployment, Vercel will provide you with a live URL for your app.

---

## Notes
- Ensure your wallet is configured for the Polygon network before using the dApp.
- For production deployments, consider using a secure RPC provider and managing your environment variables securely.

---
