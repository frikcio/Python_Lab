--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: star_wars; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.star_wars (
    id integer NOT NULL,
    film_part text NOT NULL,
    film_director text NOT NULL,
    film_year date NOT NULL,
    actors text
);


ALTER TABLE public.star_wars OWNER TO frikcio;

--
-- Name: star_wars_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.star_wars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_wars_id_seq OWNER TO frikcio;

--
-- Name: star_wars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.star_wars_id_seq OWNED BY public.star_wars.id;


--
-- Name: star_wars id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.star_wars ALTER COLUMN id SET DEFAULT nextval('public.star_wars_id_seq'::regclass);


--
-- Data for Name: star_wars; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.star_wars (id, film_part, film_director, film_year, actors) FROM stdin;
1	Episode I "The Phantom Menace"	George Lucas	1999-05-16	Jake Lloyd, Ewan McGregor, Samuel L. Jackson, Frank Oz
2	Episode II "Attack of the Clones"	George Lucas	2002-05-16	Hayden Christensen, Ewan McGregor, Samuel L. Jackson, Frank Oz, Christopher Lee
3	Episode III "Revange of the Sith"	George Lucas	2005-05-17	Hayden Christensen, Ewan McGregor, Samuel L. Jackson, Frank Oz, Christopher Lee
4	Episode IV "A new Hope"	George Lucas	1977-05-15	James Earl Jones, Alec Guinness, Mark Hamill, Harrison Ford, Carrie Fisher
7	Episode VII "The Force Awakens"	J.J. Abrams	2015-12-17	Adam Driver, Daisy Ridley, Mark Hamill, Harrison Ford, Carrie Fisher
5	Episode V "The Empire Strikes Back"	Irvin Kershner	1980-05-17	James Earl Jones, Alec Guinness, Mark Hamill, Harrison Ford, Carrie Fisher, Frank Oz
6	Episode VI "Return of the Jedi"	Richard Marquand	1983-05-25	James Earl Jones, Alec Guinness, Mark Hamill, Harrison Ford, Carrie Fisher, Frank Oz
8	Episode VIII "The Force Awekens"	Rian Johnson	2017-12-09	Adam Driver, Daisy Ridley, Mark Hamill, Harrison Ford, Carrie Fisher
9	Episode IX "The Rise of Skywalker"	J.J. Abrams	2019-12-16	Adam Driver, Daisy Ridley, Mark Hamill, Harrison Ford, Carrie Fisher
\.


--
-- Name: star_wars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.star_wars_id_seq', 11, true);


--
-- PostgreSQL database dump complete
--

