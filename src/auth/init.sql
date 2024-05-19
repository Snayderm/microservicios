-- Crear usuario para la base de datos
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Aauth123';

-- Crear base de datos auth
CREATE DATABASE auth;

-- Otorgar todos los privilegios al usuario auth_user en la base de datos auth
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

-- Usar la base de datos auth
USE auth;

-- Crear tabla user
CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Insertar un registro de ejemplo en la tabla user
INSERT INTO user (email, password) VALUES ('prueba@email.com', 'Admin123');