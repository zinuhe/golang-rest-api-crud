--
-- PostgreSQL port of the MySQL "usershop" database.
--

BEGIN;

SET client_encoding = 'LATIN1';

CREATE TABLE city (
                      id integer NOT NULL,
                      name text NOT NULL,
                      countrycode character(3) NOT NULL,
                      district text NOT NULL,
                      population integer NOT NULL
);

CREATE TABLE country (
                         code character(3) NOT NULL,
                         name text NOT NULL,
                         continent text NOT NULL,
                         region text NOT NULL,
                         surfacearea real NOT NULL,
                         indepyear smallint,
                         population integer NOT NULL,
                         lifeexpectancy real,
                         gnp numeric(10,2),
                         gnpold numeric(10,2),
                         localname text NOT NULL,
                         governmentform text NOT NULL,
                         headofstate text,
                         capital integer,
                         code2 character(2) NOT NULL,
                         CONSTRAINT country_continent_check CHECK ((((((((continent = 'Asia'::text) OR (continent = 'Europe'::text)) OR (continent = 'North America'::text)) OR (continent = 'Africa'::text)) OR (continent = 'Oceania'::text)) OR (continent = 'Antarctica'::text)) OR (continent = 'South America'::text)))
);

CREATE TABLE countrylanguage (
                                 countrycode character(3) NOT NULL,
                                 "language" text NOT NULL,
                                 isofficial boolean NOT NULL,
                                 percentage real NOT NULL
);

COPY city (id, name, countrycode, district, population) FROM stdin;
1	Kabul	AFG	Kabol	1780000
2	Qandahar	AFG	Qandahar	237500
3	Herat	AFG	Herat	186800
4	Mazar-e-Sharif	AFG	Balkh	127800
5	Amsterdam	NLD	Noord-Holland	731200
4078	Nablus	PSE	Nablus	100231
4079	Rafah	PSE	Rafah	92020
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: chriskl
--

COPY country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold, localname, governmentform, headofstate, capital, code2) FROM stdin;
AFG	Afghanistan	Asia	Southern and Central Asia	652090	1919	22720000	45.900002	5976.00	\N	Afganistan/Afqanestan	Islamic Emirate	Mohammad Omar	1	AF
NLD	Netherlands	Europe	Western Europe	41526	1581	15864000	78.300003	371362.00	360478.00	Nederland	Constitutional Monarchy	Beatrix	5	NL
\.


--
-- Data for Name: countrylanguage; Type: TABLE DATA; Schema: public; Owner: chriskl
--

COPY countrylanguage (countrycode, "language", isofficial, percentage) FROM stdin;
AFG	Pashto	t	52.400002
BFA	Dagara	f	3.099999
USA	Portuguese	f	0.2
\.


ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (code);

ALTER TABLE ONLY countrylanguage
    ADD CONSTRAINT countrylanguage_pkey PRIMARY KEY (countrycode, "language");

ALTER TABLE ONLY country
    ADD CONSTRAINT country_capital_fkey FOREIGN KEY (capital) REFERENCES city(id);

ALTER TABLE ONLY countrylanguage
    ADD CONSTRAINT countrylanguage_countrycode_fkey FOREIGN KEY (countrycode) REFERENCES country(code);

COMMIT;

ANALYZE city;
ANALYZE country;
ANALYZE countrylanguage;
