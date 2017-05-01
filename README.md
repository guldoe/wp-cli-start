# wp-cli-start
Install WordPress with wp-cli

# Descargamos WordPress
wp core download 

# creamos el fichero wp-config.php
wp core config --dbname=demo --dbuser=root --dbpass=root --locale=es_ES   

# Instalamos WordPress
wp core install --url="http://localhost/test_wpcli" --title="Sitio de prueba" --admin_user="admin" --admin_password="1234" --admin_email="admin@example.com"
