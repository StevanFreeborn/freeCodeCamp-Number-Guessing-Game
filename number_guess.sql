--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(255),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (63, 'user_1664060623832', 2, 331);
INSERT INTO public.users VALUES (62, 'user_1664060623833', 5, 252);
INSERT INTO public.users VALUES (80, 'user_1664062252922', 2, 351);
INSERT INTO public.users VALUES (66, 'user_1664061071773', 2, 854);
INSERT INTO public.users VALUES (79, 'user_1664062252923', 5, 185);
INSERT INTO public.users VALUES (65, 'user_1664061071774', 5, 206);
INSERT INTO public.users VALUES (68, 'user_1664061093259', 2, 606);
INSERT INTO public.users VALUES (82, 'user_1664128048664', 2, 638);
INSERT INTO public.users VALUES (67, 'user_1664061093260', 5, 438);
INSERT INTO public.users VALUES (81, 'user_1664128048665', 5, 415);
INSERT INTO public.users VALUES (70, 'user_1664061185577', 2, 420);
INSERT INTO public.users VALUES (69, 'user_1664061185578', 5, 118);
INSERT INTO public.users VALUES (72, 'user_1664061410548', 2, 408);
INSERT INTO public.users VALUES (84, 'user_1664128145068', 2, 153);
INSERT INTO public.users VALUES (71, 'user_1664061410549', 5, 241);
INSERT INTO public.users VALUES (83, 'user_1664128145069', 5, 358);
INSERT INTO public.users VALUES (74, 'user_1664061422333', 2, 17);
INSERT INTO public.users VALUES (73, 'user_1664061422334', 5, 21);
INSERT INTO public.users VALUES (86, 'user_1664128203878', 2, 198);
INSERT INTO public.users VALUES (76, 'user_1664061778905', 2, 382);
INSERT INTO public.users VALUES (75, 'user_1664061778906', 5, 255);
INSERT INTO public.users VALUES (64, 'Stevan', 1, 9);
INSERT INTO public.users VALUES (85, 'user_1664128203879', 5, 182);
INSERT INTO public.users VALUES (78, 'user_1664061963052', 2, 744);
INSERT INTO public.users VALUES (77, 'user_1664061963053', 5, 168);
INSERT INTO public.users VALUES (88, 'user_1664128282426', 2, 557);
INSERT INTO public.users VALUES (87, 'user_1664128282427', 5, 32);
INSERT INTO public.users VALUES (90, 'user_1664128357158', 2, 834);
INSERT INTO public.users VALUES (89, 'user_1664128357159', 5, 212);
INSERT INTO public.users VALUES (92, 'user_1664128427890', 2, 18);
INSERT INTO public.users VALUES (91, 'user_1664128427891', 5, 362);
INSERT INTO public.users VALUES (94, 'user_1664128470040', 2, 556);
INSERT INTO public.users VALUES (93, 'user_1664128470041', 5, 412);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 94, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

