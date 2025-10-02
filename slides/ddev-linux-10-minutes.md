# **DDEV on Linux in 10 Minutes**  
### with

<img src="images/ddev-logo.svg" alt="DDEV Logo" class="ddev-logo">


---

## Goals

**Introduce DDEV**

**Install Everything**: Install and Use DDEV on a real project in 10 minutes, using a fresh Ubuntu distro.

---

## What we'll do

1. Install Docker CE from official repository
2. Install DDEV from official repository 
3. Check out a demo project
4. Configure the project with `ddev config`
5. Start the project with `ddev start`
6. `ddev composer install`
7. `ddev launch` and install Drupal.
8. Install PhpStorm with `sudo snap install phpstorm --classic`
9. Set a breakpoint in `index.php` and `ddev xdebug on`
10. Visit the site and see the breakpoint.

---

## Install Docker CE

From https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository :

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

---

## Install DDEV

https://docs.ddev.com/en/stable/users/install/ddev-installation/#ddev-installation-linux

```bash
# Add DDEV’s GPG key to your keyring
sudo sh -c 'echo ""'
sudo apt-get update && sudo apt-get install -y curl
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://pkg.ddev.com/apt/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/ddev.gpg > /dev/null
sudo chmod a+r /etc/apt/keyrings/ddev.gpg

# Add DDEV releases to your package repository
sudo sh -c 'echo ""'
echo "deb [signed-by=/etc/apt/keyrings/ddev.gpg] https://pkg.ddev.com/apt/ * *" | sudo tee /etc/apt/sources.list.d/ddev.list >/dev/null

# Update package information and install DDEV
sudo sh -c 'echo ""'
sudo apt-get update && sudo apt-get install -y ddev

# One-time initialization of mkcert
mkcert -install
```

--- 

## Check out and configure a demo project

```bash
git clone https://github.com/rfay/d11
cd d11
```
---

## Configure project, start, `ddev composer install`

```bash
ddev config
# Or `ddev config --project-type=drupal11 --docroot=web
```

```bash
ddev start
ddev composer install
```

## Launch and install project

```bash
ddev launch
```
---

## Install PhpStorm, set breakpoint, and debug

```bash
sudo snap install --classic phpstorm
```

Set a breakpoint in `index.php` and 
```bash
ddev xdebug on
```

Visit the site and see the breakpoint.

---

## References
- DDEV Get-Started: https://ddev.com/get-started  
- Docker installation docs: https://docs.ddev.com/en/stable/users/install/docker-installation/#docker-installation-linux
- DDEV Installation Docs: https://docs.ddev.com/en/stable/users/install/ddev-installation/#ddev-installation-linux
- Support: https://docs.ddev.com/en/stable/users/support/

---

