# Example not use in Production is only for learn
echo "DOWNLOADING WORDPRESS"
wp core download

echo "CREATING AND CONFIGURATION WP-CONFIG"
wp core config --dbname=test_demo --dbuser=root --dbpass=root --locale=es_ES

# echo "CREATING DATABASE"
# mysql -u root -p -e "drop database test_demo";
# mysql -u root -p -e "create database test_demo";

echo "INSTALLING WORDPRESS"
wp core install --url="http://localhost/demo" --title="Sitio de prueba" --admin_user="demo" --admin_password="1234" --admin_email="admin@example.com"


echo "INSTALL BASIC PLUGINS"
wp plugin install wordpress-seo --activate
wp plugin install contact-form-7 --activate
wp plugin install easy-wp-smtp --activate

echo "OPTIMIZATION  PLUGINS"
wp plugin install autoptimize --activate
wp plugin install wp-optimize
wp plugin install wp-fastest-cache

echo "SECURITY AND BACKUP   PLUGINS"

wp plugin install better-wp-security
wp plugin install updraftplus
wp plugin install duplicator

echo "OTHERS"
wp plugin install google-analytics-for-wordpress --activate
wp plugin install asesor-cookies-para-la-ley-en-espana --activate
wp plugin install siteorigin-panels
wp plugin install so-widgets-bundle
