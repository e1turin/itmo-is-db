/* Users */

ALTER TABLE "Users"
  ADD CONSTRAINT "username_minimal_length"
  CHECK (length(username) >= 3);

ALTER TABLE "Users"
  ADD CONSTRAINT "isu_id_range"
  CHECK (isu_id > 0);
