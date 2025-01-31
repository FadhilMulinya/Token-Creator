import React from "react";
import "./globals.css";
import Navbar from "./components/Navbar";
import { Web3Modal } from "../context/web3modal";

export const metadata = {
  title: "FanClub",
  description: "FanClub",
  icons: {
    icon: "/favicon.ico",
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <Web3Modal>
      <html lang="en">
        <head>
          <link rel="icon" href="/favicon.ico" sizes="any" />
          <title>FanClub</title>
          <meta
            name="description"
            content="Create your own ERC-20 Token easily on FanClub"
          />
        </head>
        <body>
          <Navbar />
          {children}
          <footer className="w-full text-center border-t border-gray-300 py-4">
            <span>ERC20 Token Creator</span>
          </footer>
        </body>
      </html>
    </Web3Modal>
  );
}
