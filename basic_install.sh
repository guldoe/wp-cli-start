echo "DOWNLOADING WORDPRESS"
wp core download

echo "CREATING AND CONFIGURATION WP-CONFIG"
wp core config --dbname=test_demo --dbuser=root --dbpass=root --locale=es_ES

echo "CREATING DATABASE"
mysql -u root -p -e "drop database test_demo";
mysql -u root -p -e "create database test_demo";

echo "INSTALLING WORDPRESS"
wp core install --url="http://localhost/demo" --title="Sitio de prueba" --admin_user="demo" --admin_password="1234" --admin_email="admin@example.com"
