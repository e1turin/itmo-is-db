/* Users */

ALTER TABLE "Users" 
  ADD FOREIGN KEY (role_id)
        REFERENCES "Roles" (role_id)
        ON DELETE RESTRICT;

/* Comments */

ALTER TABLE "Comments" 
  ADD FOREIGN KEY (reactions_id)
        REFERENCES "Reaction_sets" (r_set_id)
        ON DELETE SET NULL;

ALTER TABLE "Comments"
  ADD FOREIGN KEY (user_id)
        REFERENCES "Users" (user_id)
        ON DELETE RESTRICT;

/* Replies */

ALTER TABLE "Replies"
  ADD FOREIGN KEY (comment_id)
        REFERENCES "Comments" (comment_id)
        ON DELETE NO ACTION;

ALTER TABLE "Replies"
  ADD FOREIGN KEY (repply_comment_id)
      REFERENCES "Comments" (comment_id)
      ON DELETE NO ACTION;

/* Threads */

ALTER TABLE "Threads"
  ADD FOREIGN KEY (topic_id)
        REFERENCES "Topics" (topic_id)
        ON DELETE RESTRICT;

ALTER TABLE "Threads"
  ADD FOREIGN KEY (init_comment_id)
        REFERENCES "Comments" (comment_id)
        ON DELETE RESTRICT;

/* Trash */

ALTER TABLE "Trash"
  ADD FOREIGN KEY (comment_id)
        REFERENCES "Comments" (comment_id)
        ON DELETE NO ACTION;

/* Capcha */

ALTER TABLE "Capcha"
  ADD FOREIGN KEY (picture_id)
        REFERENCES "Pictures" (picture_id)
        ON DELETE CASCADE;

/* Picture_attachments */

ALTER TABLE "Picture_attachments"
  ADD PRIMARY KEY (comment_id, picture_id);

ALTER TABLE "Picture_attachments" 
  ADD FOREIGN KEY (picture_id)
      REFERENCES "Pictures" (picture_id)
      ON DELETE CASCADE;

ALTER TABLE "Picture_attachments"
  ADD FOREIGN KEY (comment_id)
        REFERENCES "Comments" (comment_id)
        ON DELETE CASCADE;

/* Video_attachments */

ALTER TABLE "Video_attachments"
  ADD PRIMARY KEY (comment_id, video_id);

ALTER TABLE "Video_attachments" 
  ADD FOREIGN KEY (video_id)
      REFERENCES "Videos" (video_id)
      ON DELETE CASCADE;

ALTER TABLE "Video_attachments"
  ADD FOREIGN KEY (comment_id)
        REFERENCES "Comments" (comment_id)
        ON DELETE CASCADE;
/* Polls */

ALTER TABLE "Polls"
  ADD FOREIGN KEY (comment_id)
        REFERENCES "Comments" (comment_id)
        ON DELETE CASCADE;

/* Voted_users */

ALTER TABLE "Voted_users"
  ADD FOREIGN KEY (poll_id)
        REFERENCES "Polls" (poll_id)
        ON DELETE CASCADE;

ALTER TABLE "Voted_users"
  ADD FOREIGN KEY (user_id)
        REFERENCES "Users" (user_id)
        ON DELETE CASCADE;

ALTER TABLE "Voted_users"
  ADD PRIMARY KEY (poll_id, user_id);

/* Poll_answers */

ALTER TABLE "Poll_answers"
  ADD FOREIGN KEY (poll_id)
        REFERENCES "Polls" (poll_id)
        ON DELETE CASCADE;
