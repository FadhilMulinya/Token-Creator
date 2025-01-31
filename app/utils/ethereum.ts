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
    137	: { // Polygon Mainnet
        factoryAddress: "0x31df79b22250487Cc313dE48c6Eb4094052feABF", 
        explorerUrl: "https://polygon.blockscout.com/", 
    }
};

export function handleError(error: unknown): Response {
    const message = error instanceof Error ? error.message : 'An unexpected error occurred';
    return new Response(JSON.stringify({ error: message }), {
        headers: { 'Content-Type': 'application/json' },
        status: error instanceof Error && error.message === 'Wallet address is required.' ? 400 : 500,
    });
}