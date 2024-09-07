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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 4, 2, 487, 485);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 2, 0, 491, 489);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 2, 1, 491, 487);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 1, 0, 489, 485);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 3, 2, 503, 487);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 2, 0, 507, 491);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 2, 1, 511, 489);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 2, 0, 515, 485);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 2, 1, 519, 491);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 1, 0, 523, 507);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 3, 2, 527, 489);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 2, 0, 531, 511);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 2, 1, 535, 487);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 2, 1, 539, 503);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 2, 1, 543, 515);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 4, 3, 547, 485);
INSERT INTO public.games VALUES (113, 2014, 'Final', 1, 0, 547, 549);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 3, 0, 511, 553);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 1, 0, 553, 547);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 7, 1, 511, 549);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 1, 0, 567, 553);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 1, 0, 489, 547);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 2, 1, 519, 511);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 1, 0, 485, 549);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 2, 1, 583, 511);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 2, 0, 515, 519);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 2, 0, 591, 485);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 2, 1, 595, 549);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 2, 1, 531, 553);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 2, 1, 603, 567);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 1, 0, 523, 547);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 2, 1, 611, 489);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (485, 'France');
INSERT INTO public.teams VALUES (487, 'Croatia');
INSERT INTO public.teams VALUES (489, 'Belgium');
INSERT INTO public.teams VALUES (491, 'England');
INSERT INTO public.teams VALUES (503, 'Russia');
INSERT INTO public.teams VALUES (507, 'Sweden');
INSERT INTO public.teams VALUES (511, 'Brazil');
INSERT INTO public.teams VALUES (515, 'Uruguay');
INSERT INTO public.teams VALUES (519, 'Colombia');
INSERT INTO public.teams VALUES (523, 'Switzerland');
INSERT INTO public.teams VALUES (527, 'Japan');
INSERT INTO public.teams VALUES (531, 'Mexico');
INSERT INTO public.teams VALUES (535, 'Denmark');
INSERT INTO public.teams VALUES (539, 'Spain');
INSERT INTO public.teams VALUES (543, 'Portugal');
INSERT INTO public.teams VALUES (547, 'Argentina');
INSERT INTO public.teams VALUES (549, 'Germany');
INSERT INTO public.teams VALUES (553, 'Netherlands');
INSERT INTO public.teams VALUES (567, 'Costa Rica');
INSERT INTO public.teams VALUES (583, 'Chile');
INSERT INTO public.teams VALUES (591, 'Nigeria');
INSERT INTO public.teams VALUES (595, 'Algeria');
INSERT INTO public.teams VALUES (603, 'Greece');
INSERT INTO public.teams VALUES (611, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 32, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 612, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
