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
-- Name: actors_table; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.actors_table (
    actors_id integer NOT NULL,
    actors text NOT NULL
);


ALTER TABLE public.actors_table OWNER TO frikcio;

--
-- Name: actors_table_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.actors_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_table_id_seq OWNER TO frikcio;

--
-- Name: actors_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.actors_table_id_seq OWNED BY public.actors_table.actors_id;


--
-- Name: films_directors; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.films_directors (
    film_director_id integer NOT NULL,
    film_director text NOT NULL
);


ALTER TABLE public.films_directors OWNER TO frikcio;

--
-- Name: film_director_film_director_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.film_director_film_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_director_film_director_id_seq OWNER TO frikcio;

--
-- Name: film_director_film_director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.film_director_film_director_id_seq OWNED BY public.films_directors.film_director_id;


--
-- Name: films_years; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.films_years (
    film_year_id integer NOT NULL,
    film_year date NOT NULL
);


ALTER TABLE public.films_years OWNER TO frikcio;

--
-- Name: film_years_film_years_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.film_years_film_years_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_years_film_years_id_seq OWNER TO frikcio;

--
-- Name: film_years_film_years_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.film_years_film_years_id_seq OWNED BY public.films_years.film_year_id;


--
-- Name: star_wars; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.star_wars (
    id integer NOT NULL,
    film_part text NOT NULL,
    film_director_id integer NOT NULL,
    actors_id integer,
    film_year_id integer NOT NULL
);


ALTER TABLE public.star_wars OWNER TO frikcio;

--
-- Name: star_wars_film_year_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.star_wars_film_year_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_wars_film_year_id_seq OWNER TO frikcio;

--
-- Name: star_wars_film_year_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.star_wars_film_year_id_seq OWNED BY public.star_wars.film_year_id;


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
-- Name: actors_table actors_id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.actors_table ALTER COLUMN actors_id SET DEFAULT nextval('public.actors_table_id_seq'::regclass);


--
-- Name: films_directors film_director_id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.films_directors ALTER COLUMN film_director_id SET DEFAULT nextval('public.film_director_film_director_id_seq'::regclass);


--
-- Name: films_years film_year_id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.films_years ALTER COLUMN film_year_id SET DEFAULT nextval('public.film_years_film_years_id_seq'::regclass);


--
-- Name: star_wars id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.star_wars ALTER COLUMN id SET DEFAULT nextval('public.star_wars_id_seq'::regclass);


--
-- Name: star_wars film_year_id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.star_wars ALTER COLUMN film_year_id SET DEFAULT nextval('public.star_wars_film_year_id_seq'::regclass);


--
-- Data for Name: actors_table; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.actors_table (actors_id, actors) FROM stdin;
1	Jake Lloyd, Ewan McGregor, Samuel L. Jackson, Frank Oz
2	Hayden Christensen, Ewan McGregor, Samuel L. Jackson, Frank Oz, Christopher Lee
3	James Earl Jones, Alec Guinness, Mark Hamill, Harrison Ford, Carrie Fisher
4	James Earl Jones, Alec Guinness, Mark Hamill, Harrison Ford, Carrie Fisher, Frank Oz
5	Adam Driver, Daisy Ridley, Mark Hamill, Harrison Ford, Carrie Fisher
\.


--
-- Data for Name: films_directors; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.films_directors (film_director_id, film_director) FROM stdin;
1	George Lucas
2	Irvin Kershner
3	Richard Marquand
4	J.J. Abrams
5	Rian Johnson
\.


--
-- Data for Name: films_years; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.films_years (film_year_id, film_year) FROM stdin;
1	1999-05-16
2	2002-05-16
3	2005-05-17
4	1977-05-15
5	1980-05-17
6	1983-05-25
7	2015-12-17
8	2017-12-09
9	2019-12-16
\.


--
-- Data for Name: star_wars; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.star_wars (id, film_part, film_director_id, actors_id, film_year_id) FROM stdin;
1	Episode I "The Phantom Menace"	1	1	1
2	Episode II "Attack of the Clones"	1	2	2
3	Episode III "Revange of the Sith"	1	2	3
4	Episode IV "A new Hope"	1	3	4
5	Episode V "The Empire Strikes Back"	2	4	5
6	Episode VI "Return of the Jedi"	3	4	6
7	Episode VII "The Force Awakens"	4	5	7
8	Episode VIII "The Force Awekens"	5	5	8
9	Episode IX "The Rise of Skywalker"	4	5	9
\.


--
-- Name: actors_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.actors_table_id_seq', 5, true);


--
-- Name: film_director_film_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.film_director_film_director_id_seq', 5, true);


--
-- Name: film_years_film_years_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.film_years_film_years_id_seq', 9, true);


--
-- Name: star_wars_film_year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.star_wars_film_year_id_seq', 9, true);


--
-- Name: star_wars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.star_wars_id_seq', 11, true);


--
-- PostgreSQL database dump complete
--

