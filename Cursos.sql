CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "roles_id" int
);

CREATE TABLE "curses" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" text,
  "level" int,
  "teacher" varchar
);

CREATE TABLE "curse_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "curse_id" uuid
);

CREATE TABLE "categorias" (
  "id" uuid PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "categorias_curses" (
  "id" uuid PRIMARY KEY,
  "curse_id" uuid,
  "categoria_id" uuid
);

ALTER TABLE "users" ADD FOREIGN KEY ("roles_id") REFERENCES "roles" ("id");

ALTER TABLE "curse_video" ADD FOREIGN KEY ("curse_id") REFERENCES "curses" ("id");

ALTER TABLE "categorias_curses" ADD FOREIGN KEY ("categoria_id") REFERENCES "categorias" ("id");

ALTER TABLE "categorias_curses" ADD FOREIGN KEY ("curse_id") REFERENCES "curses" ("id");



insert into users (
id,
name,
email,
"password",
age  
)values (
'54146189-7c30-4b1c-8f16-da4ed43137e1',
'Mauricio',
'Mauricio@gmail.com',
'root',
24
);

insert into users (
id,
name,
email,
"password",
age  
)values (
'1450c019-ee71-4199-9a95-0099bfcf921f',
'jose',
'jose@gmail.com',
'root',
16
);



insert into curses (
id,
title,
description,
"level",
teacher
) values (
'1450c019-ee71-4199-9a95-0099bfcf921f',
'html',
'fundamentosdesarrollo',
1,
'fenix'
);

insert into curses (
id,
title,
description,
"level",
teacher
) values (
'504b7ffb-91a0-4d65-99ec-9dd88f5a6c40',
'css',
'fundamentosdesarrollo',
2,
'Mateus'
);


  insert into curse_video (
  id,
  title,
  url,
  curse_id
  )values(
  '54146189-7c30-4b1c-8f16-da4ed43137e1',
  'introduccion',
  'videoclipHTML'
  );

insert into curse_video (
  id,
  title,
  url
 
  )values(
  '504b7ffb-91a0-4d65-99ec-9dd88f5a6c40',
  'introduccion2',
  'videoclipcss'
  );


insert into categorias(
id,
name
)values(
'54146189-7c30-4b1c-8f16-da4ed43137e1',
'FronEnd'
);


insert into categorias(
id,
name
)values(
'1450c019-ee71-4199-9a95-0099bfcf921f',
'FronEnd'
);

