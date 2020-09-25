

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('624ebc2e-c288-447b-b2db-f6f270a54974', 'ddd', '## eee', '2020-09-25 20:38:47.864871+09');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('206c18bd-aacc-4b83-8983-20b9253f9636', 'a', '-', '2020-09-25 21:14:14.750503+09');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('e3c11cb1-4101-408b-9f20-023a783e6256', '206c18bd-aacc-4b83-8983-20b9253f9636', 'bob', '');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('ec823b7d-7951-4d19-b4b4-b59ffc858fff', '206c18bd-aacc-4b83-8983-20b9253f9636', 'aris', 'fda');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


