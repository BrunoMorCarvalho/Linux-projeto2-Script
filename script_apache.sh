echo "Atualizando o sistema..."
apt-get update && apt-get upgrade -y

echo "Instalando o Apache..."

apt-get install apache2 -y

echo "Instalando Unzip..."

apt-get install unzip -y

cd /tmp
echo "Baixando recursos..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."

unzip main.zip

cd /linux-site-dio-main

echo "A copiar..."

cp -R * /var/www/html

