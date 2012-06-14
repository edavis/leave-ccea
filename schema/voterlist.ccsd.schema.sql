--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ccsd; Type: TABLE; Schema: public; Owner: eric; Tablespace: 
--

CREATE TABLE ccsd (
    first_name text,
    middle_initial text,
    last_name text,
    job_title text,
    work_location text
);


ALTER TABLE public.ccsd OWNER TO eric;

--
-- Name: ccsd_name; Type: INDEX; Schema: public; Owner: eric; Tablespace: 
--

CREATE INDEX ccsd_name ON ccsd USING btree (last_name, first_name);


--
-- PostgreSQL database dump complete
--

