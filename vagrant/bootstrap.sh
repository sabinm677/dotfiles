
# Update Packages
apt update
# Upgrade Packages
apt upgrade -y


# Install PHP
sudo apt install -y php php-fpm php-ctype php-json php-mbstring php-pdo php-xml php-mysql php-curl php-zip

# Install Nginx, Redis, Supervisor
apt install -y nginx redis supervisor 

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt install -y  mysql-server


