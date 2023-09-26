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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    black_hole_type text,
    radius_in_km integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    galaxy_types_id integer NOT NULL,
    galaxy_types_des character varying(40),
    age_in_millions_of_years numeric(4,2)
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
    name character varying(40) NOT NULL,
    description text,
    discovery_date date,
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
    name character varying(40) NOT NULL,
    distance_from_the_sun_in_au numeric(4,2),
    planet_types character varying(40),
    has_life boolean,
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
    name character varying(40) NOT NULL,
    type_of_star character varying(40),
    age_in_gyr numeric(8,3),
    stellar_system boolean,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A', 'Supermassive Black Hole', 44);
INSERT INTO public.black_hole VALUES (2, 'Cygnus X-1', 'Stellar Mass Black Hole', NULL);
INSERT INTO public.black_hole VALUES (3, 'V404 Cygni', 'Stellar Mass Black Hole', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'is the closest big galaxy to the Milky Way', 1, 'spiral', 10.01);
INSERT INTO public.galaxy VALUES (2, 'Pinwheel', 'is located in the constellation Ursa Major', 1, 'spiral', 21.00);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'is home to our solar system', 1, 'spiral', 13.61);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'located in the constellation Virgo. resembles a mexican sombrero', 2, 'lenticular', NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 'located in the constellation Sculptor', 3, 'ring', NULL);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'located in the constellation Coma Berenices', 1, 'spiral', 13.28);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', 'Earth only natural satellite, important for our history and culture...', NULL, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of Mars two small moons, orbits closely to the planet...', '1877-08-17', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars smaller moon, orbits at a great distance...', '1877-08-12', 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Known for intense volcanic activity...', '1612-01-08', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy moon with a subsurface ocean of...', '1610-01-08', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the solar system...', '1610-01-08', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Another of Jupiters Galilean moon...', '1610-01-08', 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn largest moon...', '1655-03-25', 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Icy moon with geysers of water...', '1789-08-28', 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Often called the Death Star...', '1789-09-17', 6);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Saturns second largest moon...', '1672-12-23', 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 'Icy moon of Saturn with a large impact...', '1684-03-21', 6);
INSERT INTO public.moon VALUES (13, 'Dione', 'Another of Saturns icy moons...', '1684-03-21', 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Known for its two-tone coloration...', '1671-10-25', 6);
INSERT INTO public.moon VALUES (15, 'Hyperion', 'Irregularly shaped moon...', '1848-09-16', 6);
INSERT INTO public.moon VALUES (16, 'Phoebe', 'Retrograde moon...', '1899-03-17', 6);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Small and highly varyied...', '1948-02-16', 7);
INSERT INTO public.moon VALUES (18, 'Titania', 'Largest moon of Uranus...', '1787-01-11', 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 'It has a mix of terrains and craters...', '1787-01-11', 7);
INSERT INTO public.moon VALUES (20, 'Triton', 'Neptunes largest moon...', '1846-10-10', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.39, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.72, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1.52, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5.20, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 9.58, 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 19.18, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 30.05, 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 39.48, 'Dwarf Planet', false, 1);
INSERT INTO public.planet VALUES (10, 'Haumea', 43.13, 'Dwarf Planet', false, 1);
INSERT INTO public.planet VALUES (11, 'Makemake', 45.79, 'Dwarf Planet', false, 1);
INSERT INTO public.planet VALUES (12, 'Eris', 67.66, 'Dwarf Planet', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'G-Type', 4.600, true, 3);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-Type', 0.120, true, 3);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M-Type', 8.600, false, 3);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'G-Type', 4.850, true, 3);
INSERT INTO public.star VALUES (5, 'Vega', 'A-Type', 0.450, false, 3);
INSERT INTO public.star VALUES (6, 'Arcturus', 'K-Type', 6.900, false, 3);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_hole black_hole_black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_black_hole_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

