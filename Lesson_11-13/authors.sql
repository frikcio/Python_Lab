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
-- Name: all_in; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.all_in (
    id integer NOT NULL,
    title_id integer,
    genre_id integer,
    author_id integer,
    year_id integer NOT NULL
);


ALTER TABLE public.all_in OWNER TO frikcio;

--
-- Name: all_in_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.all_in_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.all_in_id_seq OWNER TO frikcio;

--
-- Name: all_in_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.all_in_id_seq OWNED BY public.all_in.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'lore'::character varying NOT NULL,
    year date DEFAULT '1970-01-01'::date NOT NULL
);


ALTER TABLE public.authors OWNER TO frikcio;

--
-- Name: authors_books; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.authors_books (
    author_id integer DEFAULT 0 NOT NULL,
    book_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.authors_books OWNER TO frikcio;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO frikcio;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    genre_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.books OWNER TO frikcio;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO frikcio;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: frikcio
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    genre character varying(100) DEFAULT 'unknown'::character varying NOT NULL
);


ALTER TABLE public.genres OWNER TO frikcio;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: frikcio
--

CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_id_seq OWNER TO frikcio;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: frikcio
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.id;


--
-- Name: all_in id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.all_in ALTER COLUMN id SET DEFAULT nextval('public.all_in_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- Data for Name: all_in; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.all_in (id, title_id, genre_id, author_id, year_id) FROM stdin;
1	1	2	2	1
5	5	2	0	0
4	4	1	1	1
3	3	3	3	3
2	2	0	4	4
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.authors (id, name, year) FROM stdin;
1	”аҐ­Є ѓҐаЎҐав	1970-01-01
2	ЊЁе Ё« Ѓг«Ј Є®ў	1970-01-01
3	†¤ҐЄ ‹®­¤®­	1970-01-01
4	€®Ј ­ ѓсвҐ	1970-01-01
5	ђ®ЎҐав • ©­« ©­	1970-01-01
\.


--
-- Data for Name: authors_books; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.authors_books (author_id, book_id) FROM stdin;
1	4
2	1
3	3
4	2
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.books (id, title, genre_id) FROM stdin;
1	Њ бвҐа Ё Њ аЈ аЁв 	2
2	” гбв	0
3	ЃҐ«л© Є«лЄ	3
4	„о­ 	1
5	‚®©­  Ё ¬Ёа	2
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: frikcio
--

COPY public.genres (id, genre) FROM stdin;
1	SF
2	novel
3	story
4	horror
\.


--
-- Name: all_in_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.all_in_id_seq', 5, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.authors_id_seq', 5, true);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.books_id_seq', 5, true);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: frikcio
--

SELECT pg_catalog.setval('public.genres_id_seq', 4, true);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: frikcio
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

