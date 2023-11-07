CREATE INDEX Н_ЛЮДИ_ИД_ИНД -- created by default for PK
  ON Н_ЛЮДИ (ИД); -- сам разберется какой

CREATE INDEX Н_ЛЮДИ_ФАМИЛИЯ_ИНД -- varchar =
  ON Н_ЛЮДИ 
  USING hash (ФАМИЛИЯ);

CREATE INDEX Н_ВЕДОМОСТИ_ЧЛВК_ИД_ИНД -- integer =
  ON Н_ВЕДОМОСТИ 
  USING brin (ЧЛВК_ИД);

CREATE INDEX Н_ВЕДОМОСТИ_ДАТА_ИНД -- timestamp <
  ON Н_ВЕДОМОСТИ 
  USING bring (ДАТА); 

CREATE INDEX Н_СЕССИЯ_ЧЛВК_ИД_ИНД -- integer =
  ON Н_СЕССИЯ 
  USING btree (ЧЛВК_ИД);

