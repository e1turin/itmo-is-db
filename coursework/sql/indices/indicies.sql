CREATE INDEX "Users_isu_index" ON "Users" USING btree(isu_id); -- number
-- CREATE INDEX "Users_role_index" ON "Users" USING hash(role); -- TOO SMALL
CREATE INDEX "Users_username_substring_index" ON "Users" USING GIN(username); -- search text through names, never joins
CREATE INDEX "Users_username_index" ON "Users" USING hash(username);

CREATE INDEX "Comments_deleted_index" ON "Comments" ((1)) WHERE deleted; -- for filterings
CREATE INDEX "Comments_user_id_index" ON "Comments" USING hash(user_id); 
CREATE INDEX "Comments_creation_date_index" ON "Comments" USING btree(creation_date);
CREATE INDEX "Comments_thread_id_index" ON "Comments" USING btree(thread_id);
CREATE INDEX "Comments_content_substring_index" ON "Comments" USING GIN(content);
CREATE INDEX "Comments_title_substring_index" ON "Comments" USING GIN(title);

CREATE INDEX "Poll_answers_poll_id_index" ON "Poll_answers" USING hash(poll_id);
CREATE INDEX "Polls_comment_id_index" ON "Polls" USING hash(comment_id);

-- CREATE INDEX "Threads_topic_id_index" ON "Threads" USING hash(topic_id); -- TOO SMALL

CREATE INDEX "Trash_comment_id_index" ON "Trash" USING btree(comment_id); -- number
CREATE INDEX "Trash_recycle_date_index" ON "Trash" USING btree(recycle_date); -- for filterings
