import React from "react";
import ConnectButton from "./Connect";
import Image from "next/image";

function Navbar() {
  return (
    <nav className="bg-gray-800 text-white p-2 flex flex-row">
      <Image
        src="/fan-club-logo.png"
        alt="Fan Club Logo"
        className=""
        width={100}
        height={100}
      />
      <div className="container mx-auto flex justify-end items-center">
        <ConnectButton />
      </div>
    </nav>
  );
}

export default Navbar;
