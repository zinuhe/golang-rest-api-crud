--
-- PostgreSQL port of the MySQL "usershop" database.
--

BEGIN;

-- SET client_encoding = 'LATIN1';

CREATE TABLE users (
                        id integer NOT NULL,
                        firstname text NOT NULL,
                        lastname text NOT NULL,
                        age integer NOT NULL
);

CREATE TABLE products (
                         id integer NOT NULL,
                         name text NOT NULL,
                         quantity integer NOT NULL
);

CREATE TABLE wishlists (
                         idUser integer NOT NULL,
                         idProduct integer NOT NULL,
                         quantity integer NOT NULL
);

COPY users (id, firstname, lastname, age) FROM stdin;
1	Teresa	Rayford	25
2	Tomy	Freeman	30
3	Hope	Chan	35
4	Maryjane	Hummel	40
5	Gary	Coyle	45
\.


-- CREATE TABLE country (
--                          code character(3) NOT NULL,
--                          name text NOT NULL,
--                          continent text NOT NULL,
--                          region text NOT NULL,
--                          surfacearea real NOT NULL,
--                          indepyear smallint,
--                          population integer NOT NULL,
--                          lifeexpectancy real,
--                          gnp numeric(10,2),
--                          gnpold numeric(10,2),
--                          localname text NOT NULL,
--                          governmentform text NOT NULL,
--                          headofstate text,
--                          capital integer,
--                          code2 character(2) NOT NULL,
--                          CONSTRAINT country_continent_check CHECK ((((((((continent = 'Asia'::text) OR (continent = 'Europe'::text)) OR (continent = 'North America'::text)) OR (continent = 'Africa'::text)) OR (continent = 'Oceania'::text)) OR (continent = 'Antarctica'::text)) OR (continent = 'South America'::text)))
-- );

-- CREATE TABLE countrylanguage (
--                                  countrycode character(3) NOT NULL,
--                                  "language" text NOT NULL,
--                                  isofficial boolean NOT NULL,
--                                  percentage real NOT NULL
-- );

-- COPY city (id, name, countrycode, district, population) FROM stdin;
-- 1	Kabul	AFG	Kabol	1780000
-- 2	Qandahar	AFG	Qandahar	237500
-- 3	Herat	AFG	Herat	186800
-- 4	Mazar-e-Sharif	AFG	Balkh	127800
-- 5	Amsterdam	NLD	Noord-Holland	731200
-- 4078	Nablus	PSE	Nablus	100231
-- 4079	Rafah	PSE	Rafah	92020
-- \.


--
-- Data for Name: countrylanguage; Type: TABLE DATA; Schema: public; Owner: chriskl
--

-- COPY countrylanguage (countrycode, "language", isofficial, percentage) FROM stdin;
-- AFG	Pashto	t	52.400002
-- BFA	Dagara	f	3.099999
-- USA	Portuguese	f	0.2
-- \.


ALTER TABLE ONLY users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);

ALTER TABLE ONLY products
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);

ALTER TABLE ONLY wishlists
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (idUser, idProduct);

-- ALTER TABLE ONLY country
--     ADD CONSTRAINT country_capital_fkey FOREIGN KEY (capital) REFERENCES city(id);
--
-- ALTER TABLE ONLY countrylanguage
--     ADD CONSTRAINT countrylanguage_countrycode_fkey FOREIGN KEY (countrycode) REFERENCES country(code);

COMMIT;

-- ANALYZE users;
-- ANALYZE products;
-- ANALYZE wishlists;
