import type { Metadata } from "next";
import { Inter } from "next/font/google";
import "../styles/globals.css";

const inter = Inter({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Create Next App",
  description: "Generated by create next app",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>
        <div className="w-full h-svh relative text-white">
          <nav className='w-full sticky top-0 p-4 bg-primary'>
			    	<div className='text-xl font-semibold'>Notetaking</div>
			    </nav>
          <main className="min-h-full p-2 justify-center bg-secondary">
            {children}
          </main>
        </div>
      </body>
    </html>
  );
}
