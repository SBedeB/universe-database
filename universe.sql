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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    content text,
    description_id integer NOT NULL,
    name character varying(60) NOT NULL,
    entity_id integer NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: description_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_entity_id_seq OWNER TO freecodecamp;

--
-- Name: description_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_entity_id_seq OWNED BY public.description.entity_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_types character varying(60) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    moon_types character varying(60) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,1),
    age_in_millions_of_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    name character varying(60) NOT NULL,
    planet_types character varying(60) NOT NULL,
    distance_from_earth numeric(4,1),
    age_in_millions_of_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_types character varying(60) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: description entity_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN entity_id SET DEFAULT nextval('public.description_entity_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (NULL, 1, 'galaxy', 1);
INSERT INTO public.description VALUES (NULL, 2, 'star', 2);
INSERT INTO public.description VALUES (NULL, 3, 'planet', 3);
INSERT INTO public.description VALUES (NULL, 4, 'moon', 4);
INSERT INTO public.description VALUES ('Description of the Milky Way galaxy', 5, 'Milky Way', 7);
INSERT INTO public.description VALUES ('Description of the Sun', 6, 'Sun', 1);
INSERT INTO public.description VALUES ('Description of Mars', 7, 'Mars', 13);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', true, true, 13000, 0.0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', false, true, 14000, 2.5);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Spiral', false, true, 1300, 31.6);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', false, true, 1200, 2.7);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Spiral', false, true, 1400, 21.0);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Elliptical', false, true, 6100, 53.5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Terrestrial', false, true, 0.4, 5, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Irregular', false, true, 0.9, 5, 2);
INSERT INTO public.moon VALUES (3, 'Titan', 'Terrestrial', false, true, 1.2, 5, 3);
INSERT INTO public.moon VALUES (4, 'Europa', 'Terrestrial', false, true, 0.7, 5, 8);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Terrestrial', false, true, 0.1, 5, 8);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Terrestrial', false, true, 0.2, 5, 8);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'Terrestrial', false, true, 1.3, 5, 4);
INSERT INTO public.moon VALUES (8, 'Triton', 'Terrestrial', false, true, 4.4, 5, 5);
INSERT INTO public.moon VALUES (9, 'Io', 'Terrestrial', false, true, 0.4, 5, 4);
INSERT INTO public.moon VALUES (10, 'Deimos', 'Irregular', false, true, 1.5, 5, 2);
INSERT INTO public.moon VALUES (11, 'Charon', 'Terrestrial', false, true, 0.0, 5, 9);
INSERT INTO public.moon VALUES (12, 'Phoebe', 'Irregular', false, true, 12.4, 5, 6);
INSERT INTO public.moon VALUES (13, 'Hyperion', 'Irregular', false, true, 12.3, 5, 7);
INSERT INTO public.moon VALUES (14, 'Amalthea', 'Irregular', false, true, 0.2, 5, 3);
INSERT INTO public.moon VALUES (15, 'Rhea', 'Terrestrial', false, true, 1.5, 5, 4);
INSERT INTO public.moon VALUES (16, 'Iapetus', 'Terrestrial', false, true, 3.6, 5, 4);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Terrestrial', false, true, 0.6, 5, 10);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Irregular', false, true, 0.1, 5, 5);
INSERT INTO public.moon VALUES (19, 'Dione', 'Terrestrial', false, true, 1.2, 5, 4);
INSERT INTO public.moon VALUES (20, 'Ariel', 'Terrestrial', false, true, 0.2, 5, 11);
INSERT INTO public.moon VALUES (21, 'Umbriel', 'Terrestrial', false, true, 0.3, 5, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, false, true, 'Jupiter', 'Gas giant', 4.2, 5, 2);
INSERT INTO public.planet VALUES (4, false, true, 'Saturn', 'Gas giant', 8.5, 5, 2);
INSERT INTO public.planet VALUES (5, false, true, 'Neptune', 'Ice giant', 30.1, 5, 3);
INSERT INTO public.planet VALUES (6, false, true, 'Uranus', 'Ice giant', 19.2, 5, 3);
INSERT INTO public.planet VALUES (7, false, true, 'Venus', 'Terrestrial', 0.7, 5, 1);
INSERT INTO public.planet VALUES (8, false, true, 'Mercury', 'Terrestrial', 0.4, 5, 1);
INSERT INTO public.planet VALUES (1, true, true, 'Earth', 'Terrestrial', 0.4, 5, 1);
INSERT INTO public.planet VALUES (2, false, true, 'Mars', 'Terrestrial', 0.5, 5, 2);
INSERT INTO public.planet VALUES (9, false, true, 'Kepler-186f', 'Exoplanet', NULL, NULL, 3);
INSERT INTO public.planet VALUES (13, false, true, 'New Planet', 'Gas Giant', 15.0, 100, 2);
INSERT INTO public.planet VALUES (10, false, true, 'HD 219134 b', 'Exoplanet', NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, false, true, 'Gliese 581g', 'Exoplanet', NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, false, true, 'TRAPPIST-1d', 'Exoplanet', NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence', false, true, 5, 0.0, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red dwarf', false, true, 5, 4.2, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 'A-type main-sequence', false, true, 230, 8.6, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 'Binary system', false, true, 6, 4.4, 2);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 'Red hypergiant', false, true, 8, 3.8, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant', false, true, 9, 999.9, 1);
INSERT INTO public.star VALUES (7, 'Alpha Proxima', 'M-type main-sequence', false, true, 2, 4.2, 2);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 10, true);


--
-- Name: description_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_entity_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 16, true);


--
-- Name: description description_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_id_unique UNIQUE (description_id);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

