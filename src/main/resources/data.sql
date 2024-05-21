INSERT IGNORE INTO tb_roles (role_id, name) VALUES (1, 'admin');
INSERT IGNORE INTO tb_roles (role_id, name) VALUES (2, 'basic');
INSERT INTO users (first_name, last_name, email, password) VALUES ('Joao', 'Ferreira', 'joao@gmail.com', '123456') ON DUPLICATE KEY UPDATE email=email;
INSERT INTO users (first_name, last_name, email, password) VALUES ('Maria', 'Silva', 'maria@gmail.com', '123456') ON DUPLICATE KEY UPDATE email=email;
INSERT INTO users (first_name, last_name, email, password) VALUES ('Pedro', 'Santos', 'pedro@gmail.com', '123456') ON DUPLICATE KEY UPDATE email=email;
INSERT INTO users (first_name, last_name, email, password) VALUES ('Ana', 'Costa', 'ana@gmail.com', '123456') ON DUPLICATE KEY UPDATE email=email;
INSERT IGNORE INTO tb_user_role (user_id, role_id) VALUES ((SELECT id FROM users WHERE email = 'joao@gmail.com'), (SELECT role_id FROM tb_roles WHERE name = 'basic'));
INSERT IGNORE INTO tb_user_role (user_id, role_id) VALUES ((SELECT id FROM users WHERE email = 'maria@gmail.com'), (SELECT role_id FROM tb_roles WHERE name = 'basic'));
INSERT IGNORE INTO tb_user_role (user_id, role_id) VALUES ((SELECT id FROM users WHERE email = 'pedro@gmail.com'), (SELECT role_id FROM tb_roles WHERE name = 'basic'));
INSERT IGNORE INTO tb_user_role (user_id, role_id) VALUES ((SELECT id FROM users WHERE email = 'ana@gmail.com'), (SELECT role_id FROM tb_roles WHERE name = 'basic'));