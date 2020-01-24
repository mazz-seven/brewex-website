defmodule FeatureBox do
  use Surface.Component

  property(title, :string)
  property(icon, :string, default: "circle")

  def render(assigns) do
    ~H"""
    <div class="w-full sm:w-1/2 lg:w-1/3 sm:px-6 mb-12">
      <svg class="w-12 h-12 feather text-light-blue-600 mb-2">
        <use xlink:href="feather-sprite.svg#{{ @icon }}"/>
      </svg>
      <h4 class="text-lg font-medium mb-1 text-cool-grey-900">{{ @title }}</h4>
      <p class="leading-snug text-cool-grey-700">
        {{ @inner_content.() }}
      </p>
    </div>
    """
  end
end


defmodule BrewexSiteWeb.PageView do
  use BrewexSiteWeb, :view
  use Surface.Component

  def render("index.html", assigns) do
    ~H"""
    <main class="bg-cool-grey-0">
      <div class="bg-cool-grey-900">
        <header class="mx-auto container px-6 py-4 text-cool-grey-0">Brewex.io LOGO</header>

        <div class="bg-cool-grey-900 mx-auto container pt-16 sm:pt-32 pb-10 sm:pb-24">

          <h1 class="pb-6 text-5xl sm:text-6xl font-bold leading-none sm:leading-tighter tracking-tight sm:text-center text-cool-grey-0">
            Make Your Elixir App
            <br />
            Deployment Painless
          </h1>

          <div class="max-w-xl mx-auto pb-24 text-xl sm:text-2xl text-cool-grey-200 sm:text-center leading-snug sm:tracking-snug">
            <p class="pb-6">
            Provision, and deploy Elixir application on <strong class="text-light-blue-600">your own hosting provider</strong>
            without hassle.
            </p>
          </div>
        </div>
      </div>
      <section class="mx-auto container pt-16">
       <h2 class="text-cool-grey-900 text-3xl sm:text-center font-bold mb-4">Why should you pick Brewex?</h2>
        <p class="mx-32 text-cool-grey-700 text-lg sm:text-center">Brewex takes all the difficult work out of your hands.
          No more manually provisioning and managing your could servers. Focus on doing what you love: building awesome Elixir applications.
        </p>
        <div class="flex flex-wrap sm:-mx-6 mt-16">
          <FeatureBox title="Provisioning" icon="upload-cloud">
            We install Nginx, Postgres and more for you in just a few minutes.
            To help you get started quickly. Choose between Digital Ocean and more.
          </FeatureBox>
          <FeatureBox title="Push To Deploy" icon="git-merge">
          Push to master on your GitHub, or custom repository to deploy new code. We'll take care of the rest.
          </FeatureBox>
          <FeatureBox title="CI/CD Hooks" icon="package">
          Brewex allow you to hook into the deployment pipeline, and customize it.
          </FeatureBox>
          <FeatureBox title="SSL Certificates" icon="lock">
          Integration with LetsEncrypt, allowing you to obtain SSL certificates for free.
          </FeatureBox>
          <FeatureBox title="Secure By Default" icon="shield">
          Brewex only installs what must on your production server. Includes SSH authentication and firewall out of the box.
          Security updates are installed automatically.
          </FeatureBox>
          <FeatureBox title="Environment Variables" icon="globe">
          Set and update your application environment variables in Brewex web interface.
          </FeatureBox>
        </div>
        <div>
          <p class="text-lg">Deploy your app in minutes.</p>
          <div>Form</div>
        </div>
      </section>
    </main>

    """
  end
end

