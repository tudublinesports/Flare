# TUDublin Esports' Website

Flare is Esports' website, written in 11ty.
It is forked from CS++'s Plume, which is forked from Redbrick's [Atlas](https://github.com/redbrick/atlas) site.

# Adding Content
Flare is designed to be more-or-less static.

The more commonly changing content (Such as Committe List, invite links, etc.) are available in `src/_data/site.yml`.

## Adding Blogs
For adding blog posts, go to 📚[tudublinesports/blog](https://github.com/tudublinesports/blog). When you add a new blog post, don't forget to update the Global Blog link in `src/_data/site.yml`!

## Adding / Modifying Images
All images should be uploaded to `/src/site/assets/img` in the revelant section (Such as committee photos going to `/committee`). It is important that these are stored as WEBP for storage-size reasons.

## Adding / Modifying Theming
The theme is managed in our universal [IdentityFlip](https://github.com/tudublinesports/IdentityFlip) identity kit.
This includes our universal graphics, styling themes, and fonts.

Flare should always adhere to the identity kit, and exceptions to this should be approved before release.

## Adding / Modifying Structure
Should you need to change the structure, follow the file structure of the repository. Structural changes include modifications to the currently existing sections, header and footer, and adding sections.

# Development
To develop Flare, please ensure you have [Node.JS](https://nodejs.org/), [Yarn](https://yarnpkg.com/), and [Docker](https://www.docker.com/) installed.

1. Clone the repository
```bash
git clone https://github.com/tudublinesports/Flare.git
```

2. Install the dependencies
```bash
yarn install
```

3. Run the development server
```bash
yarn run dev
```

The development server will grab all relevant mentioned content (Such as the blog) and build the site. Visiting the site will not give an accurate appearance of the site.

If you want to see your changes visually, you need to run the Docker image.

1. Create a .env file, and place the following into it
```bash
EXPOSED_PORT=[Chosen_Port_Number]
```

2. Build and start the Docker container
```bash
docker compose up -d --build
```

Once the container has successfully started, navigate to `localhost:[Chosen_Port_Number]` to view the site.

# Deployment
Internally, CS++ deploys Flare automatically to its infrastructure upon a commit to the `main` branch. The GitHub action for this can be found in `.github/workflows/deploy-to-vps.yaml`.

In addition, Flare is designed to be served through a Proxy, like [NGINX](https://nginx.org/), and not run standalone.
