SELECT
  j.id,
  IF(j.deleted_at IS NULL, p.name, d.name) AS name,
  IF(j.deleted_at IS NULL, p.created_at, d.created_at) AS created_at,
  IF(j.deleted_at IS NULL, p.updated_at, d.updated_at) AS updated_at,
  j.deleted_at
FROM `PostJoin` j
LEFT JOIN `Post` p ON (j.deleted_at IS NULL AND j.id = p.id)
LEFT JOIN `DeletedPost` d ON (j.deleted_at IS NOT NULL AND j.id = d.id);
