--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying,
    galaxy_id integer NOT NULL,
    types text,
    has_life numeric(4,4),
    is_aktive boolean,
    hot integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying,
    moon_id integer NOT NULL,
    planet_id integer,
    distance integer,
    has_life integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying,
    planet_id integer NOT NULL,
    star_id integer,
    types text,
    is_life boolean,
    hot integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying,
    star_id integer NOT NULL,
    galaxy_id integer,
    star_life numeric(4,2),
    distance_frome integer,
    hot integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying,
    sun_id integer NOT NULL,
    distance integer,
    hot integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'very kind', 0.9000, true, 800);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'very smart', 0.8900, false, 600);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 'unknown', 0.8880, false, 500);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', 4, 'flying', 0.2220, true, 290);
INSERT INTO public.galaxy VALUES ('Tadpole Galaxy', 6, 'hotter', 0.4240, false, 986);
INSERT INTO public.galaxy VALUES ('Sombrero', 5, 'hapiniss', 0.9820, true, 111);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 90, 11, 89292, 789, 'hotter');
INSERT INTO public.moon VALUES ('moon2', 91, 12, 8292, 2789, 'small');
INSERT INTO public.moon VALUES ('moon3', 92, 22, 82, 2729, 'cool');
INSERT INTO public.moon VALUES ('moon3', 93, 15, 8252, 2759, 'dark');
INSERT INTO public.moon VALUES ('moon5', 96, 15, 8295, 2785, 'cold');
INSERT INTO public.moon VALUES ('moon5', 95, 22, 84, 2724, 'loser');
INSERT INTO public.moon VALUES ('moon4', 94, 14, 8242, 2459, 'darknes');
INSERT INTO public.moon VALUES ('moon5', 99, 19, 8285, 2985, 'clo8se');
INSERT INTO public.moon VALUES ('moon8', 98, 22, 87, 2774, 'lolo');
INSERT INTO public.moon VALUES ('moon7', 97, 13, 8342, 2453, 'blue');
INSERT INTO public.moon VALUES ('moon5', 83, 20, 8215, 2981, 'cslose');
INSERT INTO public.moon VALUES ('moon91', 81, 21, 382, 272, 'dfghj');
INSERT INTO public.moon VALUES ('moon8', 80, 13, 8302, 2403, 'yellow');
INSERT INTO public.moon VALUES ('moon25', 283, 20, 82125, 22981, 'cslo2se');
INSERT INTO public.moon VALUES ('moo2n91', 821, 21, 3282, 2722, 'dfgh2j');
INSERT INTO public.moon VALUES ('moon8', 820, 13, 83022, 24032, 'purple');
INSERT INTO public.moon VALUES ('moon25', 281, 20, 8211, 2181, 'cs111e');
INSERT INTO public.moon VALUES ('moo2n91', 181, 21, 3112, 2112, 'dfg111j');
INSERT INTO public.moon VALUES ('moon8', 110, 13, 8122, 2132, 'pure');
INSERT INTO public.moon VALUES ('moon25', 831, 20, 8311, 2331, 'cs133e');
INSERT INTO public.moon VALUES ('moo2n91', 131, 21, 312, 232, 'dfg13j');
INSERT INTO public.moon VALUES ('moon8', 330, 13, 832, 32, 'pink');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 11, 10, 'small', true, 89);
INSERT INTO public.planet VALUES ('Venus', 12, 20, 'big', true, 55);
INSERT INTO public.planet VALUES ('Earth', 13, 30, 'green', false, 5323);
INSERT INTO public.planet VALUES ('Mars', 14, 40, 'yellow', false, 432);
INSERT INTO public.planet VALUES ('Earth', 16, 60, 'puluffy', false, 533);
INSERT INTO public.planet VALUES ('Mars', 15, 50, 'ret', false, 442);
INSERT INTO public.planet VALUES ('Venus', 17, 60, 'bigger', true, 45);
INSERT INTO public.planet VALUES ('Venus', 20, 60, 'long', true, 450);
INSERT INTO public.planet VALUES ('Earth', 19, 60, 'puffy', false, 53);
INSERT INTO public.planet VALUES ('Mars', 18, 60, 'close', false, 412);
INSERT INTO public.planet VALUES ('Venus', 23, 60, 'lml', true, 410);
INSERT INTO public.planet VALUES ('Earth', 22, 60, 'pksjy', false, 93);
INSERT INTO public.planet VALUES ('Mars', 21, 60, 'clo', false, 42);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 10, 1, 76.88, 7999, 89);
INSERT INTO public.star VALUES ('Betelgeuse', 20, 2, 73.88, 7449, 78);
INSERT INTO public.star VALUES ('Proxima Centauri', 30, 3, 73.84, 7444, 35);
INSERT INTO public.star VALUES ('Vega', 40, 4, 23.88, 3449, 74);
INSERT INTO public.star VALUES ('Centauri', 50, 5, 32.84, 7244, 25);
INSERT INTO public.star VALUES ('Polaris', 60, 6, 73.83, 7339, 33);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('sun1', 1, 123, 89);
INSERT INTO public.sun VALUES ('sun2', 2, 122, 82);
INSERT INTO public.sun VALUES ('sun3', 3, 132, 832);


--
-- Name: galaxy galaxy_hot_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_hot_key UNIQUE (hot);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_types_key UNIQUE (types);


--
-- Name: moon moon_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_key UNIQUE (distance);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_hot_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_hot_key UNIQUE (hot);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_types_key UNIQUE (types);


--
-- Name: star star_hot_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_hot_key UNIQUE (hot);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: sun sun_distance_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_distance_key UNIQUE (distance);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

