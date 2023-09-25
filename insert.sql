INSERT INTO Post (id, name, created_at, updated_at) VALUES ('post_id_1', 'post_name_1', NOW(), NOW());
INSERT INTO PostJoin (id, deleted_at) VALUES ('post_id_1', NULL);
INSERT INTO DeletedPost (id, name, created_at, updated_at, deleted_at) VALUES ('post_id_2', 'post_name_2', NOW(), NOW(), NOW());
INSERT INTO PostJoin (id, deleted_at) VALUES ('post_id_2', NOW());
