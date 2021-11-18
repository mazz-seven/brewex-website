import type { NextPage } from "next";
import Head from "next/head";
import React from "react";
import { GitMerge, Globe, Lock, Package, Shield, UploadCloud } from "react-feather";
import FeatureBox from "../components/FeatureBox";
import { Logo } from "../components/Logo";

const Home: NextPage = () => {
  return (
    <div>
      <Head>
        <meta charSet="utf-8" />
        <meta httpEquiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:site" content="@brewex_io" />
        <meta name="twitter:title" content="Brewex.io" />
        <meta
          name="twitter:description"
          content="Provision, and deploy Elixir application on your own hosting provider without hassle."
        />
        <meta name="twitter:image" content="https://brewex.io/images/twitter-meta-card.png" />
        <meta name="twitter:creator" content="@brewex_io" />
        <meta property="og:url" content="https://brewex.io" />
        <meta property="og:type" content="article" />
        <meta property="og:title" content="Brewex.io" />
        <meta
          property="og:description"
          content="Provision, and deploy Elixir application on your own hosting provider without hassle."
        />
        <meta property="og:image" content="https://brewex.io/images/twitter-meta-card.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png" />
        <title>Brewex.io</title>
      </Head>

      <main className="bg-gray-0">
        <div className="font-semibold text-white from-blue-900 to-indigo-500  bg-gradient-to-b">
          <header className="mx-auto container px-6 py-4 text-gray-100">
            <Logo />
          </header>

          <div className="flex flex-col items-center mx-auto px-6 pt-4 sm:pt-16 pb-24">
            <h1 className="pb-6 text-5xl sm:text-6xl font-bold leading-none sm:leading-tighter tracking-tight sm:text-center text-white">
              Make Your Elixir App Deployment Painless
            </h1>

            <div className="max-w-md sm:max-w-xl sm:pb-24 text-xl sm:text-2xl text-gray-200 sm:text-center leading-snug sm:tracking-snug">
              <p className="pb-6">
                Provision and deploy Elixir application on{" "}
                <strong className="text-light-blue-600">your own hosting provider </strong>
                without hassle.
              </p>
            </div>
            <p className="text-blue-100 text-lg md:text-xl md:text-center">Currently in beta, launching this summer.</p>
          </div>
        </div>
        <section className="mx-auto container px-6">
          <div className="flex">
            <div className="sm:-mt-8 -mt-10 flex items-center justify-center pb-6 max-w-xl w-full md:max-w-xl lg:max-w-3xl xl:max-w-4xl mx-auto">
              <div className="bg-gray-100 w-full sm:h-[100] h-[110px] rounded-lg">
                <div className="ml-form-embed" data-account="1846666:o8e0h2w0e7" data-form="1731876:h1l8e4"></div>
              </div>
            </div>
          </div>
          <h2 className="text-gray-900 text-3xl sm:text-center font-bold mb-4 mt-16 sm:mt-24">Why Brewex?</h2>
          <p className="sm:mx-32 text-gray-700 text-lg sm:text-center">
            Brewex takes all the difficult work out of your hands. No more manually provisioning and managing your cloud
            servers.
            <br />
            Focus on doing what you love: building awesome Elixir applications.
          </p>
          <div className="flex flex-wrap sm:-mx-6 mt-16">
            <FeatureBox title="Provisioning" icon={<UploadCloud className="w-8 h-8" />}>
              We install Nginx, Postgres, and more for you in just a few minutes. To help you get started quickly.
            </FeatureBox>
            <FeatureBox title="Push To Deploy" icon={<GitMerge className="w-8 h-8" />}>
              Push to master on your GitHub or custom repository to deploy new code. We&apos;ll take care of the rest.
            </FeatureBox>
            <FeatureBox title="CI/CD" icon={<Package className="w-8 h-8" />}>
              Brewex can automatically build, test and deploy your applications. Use it to catch bugs and errors early
              in the development cycle.
            </FeatureBox>
            <FeatureBox title="SSL Certificates" icon={<Lock className="w-8 h-8" />}>
              Brewex integrates with LetsEncrypt, allowing you to obtain SSL certificates for free.
            </FeatureBox>
            <FeatureBox title="Secure By Default" icon={<Shield className="w-8 h-8" />}>
              BBrewex only installs what must be on your production server. Includes SSH authentication and firewall out
              of the box. Security updates are installed automatically.
            </FeatureBox>
            <FeatureBox title="Environment Variables" icon={<Globe className="w-8 h-8" />}>
              Set and update your application environment variables on Brewex web interface.
            </FeatureBox>
          </div>
          <div className="mx-auto container sm:px-4 py-16 flex flex-col items-center border-t">
            <p className="text-2xl sm:ml-0 ml-5 font-bold text-light-blue-200">Deploy your app in minutes.</p>
            <div
              className="ml-form-embed max-w-xl w-full md:max-w-xl lg:max-w-3xl xl:max-w-4xl rounded-lg"
              data-account="1846666:o8e0h2w0e7"
              data-form="1731876:h1l8e4"></div>
          </div>
        </section>
        <footer className="bg-gray-900 text-gray-300">
          <div className="mx-auto container px-4 py-10">Copyright © 2020 Brewex.io</div>
        </footer>
      </main>
    </div>
  );
};

export default Home;
