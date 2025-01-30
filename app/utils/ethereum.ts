export interface ChainConfig {
    factoryAddress: string;
    explorerUrl: string;
}

export interface RequestBody {
    chainId: number;
    signerAddress: string;
    tokenName: string;
    tokenSymbol: string;
    tokenAmount: string;
}

export const CHAINS: Record<number, ChainConfig> = {
    80002: { // Polygon Ammoy TestNet
        factoryAddress: "0x67A02b5571aa87eA7486BFCD5b7Ea3845dD76ED1", // Needs to be deployed
        explorerUrl: " https://www.oklink.com/amoy", 
    }
};

export function handleError(error: unknown): Response {
    const message = error instanceof Error ? error.message : 'An unexpected error occurred';
    return new Response(JSON.stringify({ error: message }), {
        headers: { 'Content-Type': 'application/json' },
        status: error instanceof Error && error.message === 'Wallet address is required.' ? 400 : 500,
    });
}