# UserData

This repository contains a collection of shell scripts used to deploy and host various website clone projects on a Linux server. Each script installs the required web server, clones a project repository, copies the project files into the web root, and starts the service.

The scripts are intended for quick local deployment and demo hosting on Ubuntu/Debian-based systems.

## Repository Contents

- `AeroDine.sh` - Deploys the AeroDine food ordering website on NGINX.
- `Amazon.sh` - Deploys an Amazon clone using NGINX.
- `Blinkit.sh` - Deploys a Blinkit-style grocery app clone using Apache.
- `BookMyShow.sh` - Deploys a BookMyShow-inspired ticket booking interface using Apache.
- `Swiggy.sh` - Deploys a Swiggy-style food delivery website using NGINX.

## Common Requirements

- Ubuntu or Debian-based Linux machine
- Root or sudo access
- Internet access to clone GitHub repositories
- A web server such as NGINX or Apache

## Typical Usage

Make the scripts executable and run the one you need:

```bash
chmod +x *.sh
sudo ./AeroDine.sh
```

Or run any specific script directly:

```bash
sudo ./Amazon.sh
sudo ./Blinkit.sh
sudo ./BookMyShow.sh
sudo ./Swiggy.sh
```

## Notes

- These scripts are designed for quick setup and demonstration purposes.
- Some scripts automatically switch to root and install packages using `apt`.
- After deployment, the app is usually available from the default web document root:
  - NGINX: `/var/www/html/`
  - Apache: `/var/www/html/`

## Example Deployment Flow

Most scripts follow the same pattern:

1. Update system packages
2. Install `git` and a web server
3. Clone the relevant project repository
4. Move the site files into `/var/www/html/`
5. Start and enable the web service

## License

This project is provided as-is for educational and demo purposes.

## Disclaimer

These scripts clone third-party GitHub projects and serve them locally. Please ensure you have permission to use and deploy the source repositories being cloned.
