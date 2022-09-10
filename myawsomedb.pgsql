--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1.pgdg100+1)
-- Dumped by pg_dump version 13.2 (Debian 13.2-1.pgdg100+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO gradayuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO gradayuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO gradayuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO gradayuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO gradayuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO gradayuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authentication_user; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.authentication_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(254) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    "rememberMe" boolean NOT NULL,
    "fullName" character varying(255),
    terms boolean,
    is_available boolean NOT NULL
);


ALTER TABLE public.authentication_user OWNER TO gradayuser;

--
-- Name: authentication_user_groups; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.authentication_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.authentication_user_groups OWNER TO gradayuser;

--
-- Name: authentication_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.authentication_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_user_groups_id_seq OWNER TO gradayuser;

--
-- Name: authentication_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.authentication_user_groups_id_seq OWNED BY public.authentication_user_groups.id;


--
-- Name: authentication_user_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.authentication_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_user_id_seq OWNER TO gradayuser;

--
-- Name: authentication_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.authentication_user_id_seq OWNED BY public.authentication_user.id;


--
-- Name: authentication_user_user_permissions; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.authentication_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.authentication_user_user_permissions OWNER TO gradayuser;

--
-- Name: authentication_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.authentication_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_user_user_permissions_id_seq OWNER TO gradayuser;

--
-- Name: authentication_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.authentication_user_user_permissions_id_seq OWNED BY public.authentication_user_user_permissions.id;


--
-- Name: authentication_usernotification; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.authentication_usernotification (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    label character varying(255),
    user_id integer,
    email character varying(254) NOT NULL
);


ALTER TABLE public.authentication_usernotification OWNER TO gradayuser;

--
-- Name: authentication_usernotification_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.authentication_usernotification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentication_usernotification_id_seq OWNER TO gradayuser;

--
-- Name: authentication_usernotification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.authentication_usernotification_id_seq OWNED BY public.authentication_usernotification.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO gradayuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO gradayuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO gradayuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO gradayuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO gradayuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO gradayuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO gradayuser;

--
-- Name: profile_permission; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.profile_permission (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    view character varying(255) NOT NULL,
    app character varying(255) NOT NULL,
    view_perm character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.profile_permission OWNER TO gradayuser;

--
-- Name: profile_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.profile_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_permission_id_seq OWNER TO gradayuser;

--
-- Name: profile_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.profile_permission_id_seq OWNED BY public.profile_permission.id;


--
-- Name: profile_profile; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.profile_profile (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    bio text NOT NULL,
    image character varying(512),
    role_id integer,
    user_id integer NOT NULL,
    branch character varying(256),
    city character varying(256),
    "firstName" character varying(256),
    "lastName" character varying(256),
    "pdfResult" character varying(256),
    school character varying(256),
    tel character varying(256),
    "fullName" character varying(256),
    image_base64 text
);


ALTER TABLE public.profile_profile OWNER TO gradayuser;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.profile_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_profile_id_seq OWNER TO gradayuser;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.profile_profile_id_seq OWNED BY public.profile_profile.id;


--
-- Name: profile_role; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.profile_role (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    role character varying(255) NOT NULL
);


ALTER TABLE public.profile_role OWNER TO gradayuser;

--
-- Name: profile_role_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.profile_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_role_id_seq OWNER TO gradayuser;

--
-- Name: profile_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.profile_role_id_seq OWNED BY public.profile_role.id;


--
-- Name: profile_role_permission; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.profile_role_permission (
    id integer NOT NULL,
    role_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.profile_role_permission OWNER TO gradayuser;

--
-- Name: profile_role_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.profile_role_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_role_permission_id_seq OWNER TO gradayuser;

--
-- Name: profile_role_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.profile_role_permission_id_seq OWNED BY public.profile_role_permission.id;


--
-- Name: resultat_resulatapersona; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.resultat_resulatapersona (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    pourcentage double precision,
    description text,
    resultat_persona_id integer NOT NULL
);


ALTER TABLE public.resultat_resulatapersona OWNER TO gradayuser;

--
-- Name: resultat_resulatapersona_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.resultat_resulatapersona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultat_resulatapersona_id_seq OWNER TO gradayuser;

--
-- Name: resultat_resulatapersona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.resultat_resulatapersona_id_seq OWNED BY public.resultat_resulatapersona.id;


--
-- Name: resultat_resulatmetier; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.resultat_resulatmetier (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    pourcentage double precision,
    description text,
    resultat_metier_id integer NOT NULL
);


ALTER TABLE public.resultat_resulatmetier OWNER TO gradayuser;

--
-- Name: resultat_resulatmetier_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.resultat_resulatmetier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultat_resulatmetier_id_seq OWNER TO gradayuser;

--
-- Name: resultat_resulatmetier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.resultat_resulatmetier_id_seq OWNED BY public.resultat_resulatmetier.id;


--
-- Name: resultat_resultat; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.resultat_resultat (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    membre_id integer NOT NULL,
    test_id integer NOT NULL,
    creatif double precision,
    entreprenant double precision,
    investigateur double precision,
    methodique double precision,
    metier1 double precision,
    metier10 double precision,
    metier11 double precision,
    metier12 double precision,
    metier13 double precision,
    metier14 double precision,
    metier2 double precision,
    metier3 double precision,
    metier4 double precision,
    metier5 double precision,
    metier6 double precision,
    metier7 double precision,
    metier8 double precision,
    metier9 double precision,
    pratique double precision,
    social double precision,
    "creatifDesc" text,
    "entreprenantDesc" text,
    "investigateurDesc" text,
    "methodiqueDesc" text,
    "pratiqueDesc" text,
    "socialDesc" text,
    "imagePdf" character varying(100)
);


ALTER TABLE public.resultat_resultat OWNER TO gradayuser;

--
-- Name: resultat_resultat_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.resultat_resultat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultat_resultat_id_seq OWNER TO gradayuser;

--
-- Name: resultat_resultat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.resultat_resultat_id_seq OWNED BY public.resultat_resultat.id;


--
-- Name: test_element; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_element (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(255)
);


ALTER TABLE public.test_element OWNER TO gradayuser;

--
-- Name: test_element_questions; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_element_questions (
    id integer NOT NULL,
    element_id integer NOT NULL,
    question_id integer NOT NULL
);


ALTER TABLE public.test_element_questions OWNER TO gradayuser;

--
-- Name: test_element_columns_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_element_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_element_columns_id_seq OWNER TO gradayuser;

--
-- Name: test_element_columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_element_columns_id_seq OWNED BY public.test_element_questions.id;


--
-- Name: test_element_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_element_id_seq OWNER TO gradayuser;

--
-- Name: test_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_element_id_seq OWNED BY public.test_element.id;


--
-- Name: test_elementparam; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_elementparam (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(255),
    param character varying(255) NOT NULL,
    param_value character varying(255) NOT NULL
);


ALTER TABLE public.test_elementparam OWNER TO gradayuser;

--
-- Name: test_elementparam_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_elementparam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_elementparam_id_seq OWNER TO gradayuser;

--
-- Name: test_elementparam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_elementparam_id_seq OWNED BY public.test_elementparam.id;


--
-- Name: test_page; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_page (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(255),
    title character varying(255),
    description text NOT NULL,
    test_id integer NOT NULL
);


ALTER TABLE public.test_page OWNER TO gradayuser;

--
-- Name: test_page_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_page_id_seq OWNER TO gradayuser;

--
-- Name: test_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_page_id_seq OWNED BY public.test_page.id;


--
-- Name: test_question; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_question (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.test_question OWNER TO gradayuser;

--
-- Name: test_question_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_question_id_seq OWNER TO gradayuser;

--
-- Name: test_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_question_id_seq OWNED BY public.test_question.id;


--
-- Name: test_question_params; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_question_params (
    id integer NOT NULL,
    question_id integer NOT NULL,
    resultparam_id integer NOT NULL
);


ALTER TABLE public.test_question_params OWNER TO gradayuser;

--
-- Name: test_question_params_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_question_params_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_question_params_id_seq OWNER TO gradayuser;

--
-- Name: test_question_params_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_question_params_id_seq OWNED BY public.test_question_params.id;


--
-- Name: test_resultparam; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_resultparam (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.test_resultparam OWNER TO gradayuser;

--
-- Name: test_resultparam_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_resultparam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_resultparam_id_seq OWNER TO gradayuser;

--
-- Name: test_resultparam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_resultparam_id_seq OWNED BY public.test_resultparam.id;


--
-- Name: test_test; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_test (
    id integer NOT NULL,
    name character varying(255),
    membre_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    question1 character varying(255),
    question10 character varying(255),
    question11 character varying(255),
    question12 character varying(255),
    question13 character varying(255),
    question14 character varying(255),
    question15 character varying(255),
    question16 character varying(255),
    question17 character varying(255),
    question18 character varying(255),
    question19 character varying(255),
    question2 character varying(255),
    question20 character varying(255),
    question3 character varying(255),
    question4 character varying(255),
    question5 character varying(255),
    question6 character varying(255),
    question7 character varying(255),
    question8 character varying(255),
    question9 character varying(255),
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.test_test OWNER TO gradayuser;

--
-- Name: test_test_elements; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_test_elements (
    id integer NOT NULL,
    test_id integer NOT NULL,
    element_id integer NOT NULL
);


ALTER TABLE public.test_test_elements OWNER TO gradayuser;

--
-- Name: test_test_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_test_elements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_elements_id_seq OWNER TO gradayuser;

--
-- Name: test_test_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_test_elements_id_seq OWNED BY public.test_test_elements.id;


--
-- Name: test_test_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_test_id_seq OWNER TO gradayuser;

--
-- Name: test_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_test_id_seq OWNED BY public.test_test.id;


--
-- Name: test_typeelement; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_typeelement (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(255)
);


ALTER TABLE public.test_typeelement OWNER TO gradayuser;

--
-- Name: test_typeelement_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_typeelement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_typeelement_id_seq OWNER TO gradayuser;

--
-- Name: test_typeelement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_typeelement_id_seq OWNED BY public.test_typeelement.id;


--
-- Name: test_typeelement_param; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_typeelement_param (
    id integer NOT NULL,
    typeelement_id integer NOT NULL,
    elementparam_id integer NOT NULL
);


ALTER TABLE public.test_typeelement_param OWNER TO gradayuser;

--
-- Name: test_typeelement_param_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_typeelement_param_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_typeelement_param_id_seq OWNER TO gradayuser;

--
-- Name: test_typeelement_param_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_typeelement_param_id_seq OWNED BY public.test_typeelement_param.id;


--
-- Name: test_typetest; Type: TABLE; Schema: public; Owner: gradayuser
--

CREATE TABLE public.test_typetest (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.test_typetest OWNER TO gradayuser;

--
-- Name: test_typetest_id_seq; Type: SEQUENCE; Schema: public; Owner: gradayuser
--

CREATE SEQUENCE public.test_typetest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_typetest_id_seq OWNER TO gradayuser;

--
-- Name: test_typetest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gradayuser
--

ALTER SEQUENCE public.test_typetest_id_seq OWNED BY public.test_typetest.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: authentication_user id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user ALTER COLUMN id SET DEFAULT nextval('public.authentication_user_id_seq'::regclass);


--
-- Name: authentication_user_groups id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_groups ALTER COLUMN id SET DEFAULT nextval('public.authentication_user_groups_id_seq'::regclass);


--
-- Name: authentication_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.authentication_user_user_permissions_id_seq'::regclass);


--
-- Name: authentication_usernotification id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_usernotification ALTER COLUMN id SET DEFAULT nextval('public.authentication_usernotification_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: profile_permission id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_permission ALTER COLUMN id SET DEFAULT nextval('public.profile_permission_id_seq'::regclass);


--
-- Name: profile_profile id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_profile ALTER COLUMN id SET DEFAULT nextval('public.profile_profile_id_seq'::regclass);


--
-- Name: profile_role id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_role ALTER COLUMN id SET DEFAULT nextval('public.profile_role_id_seq'::regclass);


--
-- Name: profile_role_permission id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_role_permission ALTER COLUMN id SET DEFAULT nextval('public.profile_role_permission_id_seq'::regclass);


--
-- Name: resultat_resulatapersona id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resulatapersona ALTER COLUMN id SET DEFAULT nextval('public.resultat_resulatapersona_id_seq'::regclass);


--
-- Name: resultat_resulatmetier id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resulatmetier ALTER COLUMN id SET DEFAULT nextval('public.resultat_resulatmetier_id_seq'::regclass);


--
-- Name: resultat_resultat id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resultat ALTER COLUMN id SET DEFAULT nextval('public.resultat_resultat_id_seq'::regclass);


--
-- Name: test_element id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_element ALTER COLUMN id SET DEFAULT nextval('public.test_element_id_seq'::regclass);


--
-- Name: test_element_questions id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_element_questions ALTER COLUMN id SET DEFAULT nextval('public.test_element_columns_id_seq'::regclass);


--
-- Name: test_elementparam id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_elementparam ALTER COLUMN id SET DEFAULT nextval('public.test_elementparam_id_seq'::regclass);


--
-- Name: test_page id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_page ALTER COLUMN id SET DEFAULT nextval('public.test_page_id_seq'::regclass);


--
-- Name: test_question id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_question ALTER COLUMN id SET DEFAULT nextval('public.test_question_id_seq'::regclass);


--
-- Name: test_question_params id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_question_params ALTER COLUMN id SET DEFAULT nextval('public.test_question_params_id_seq'::regclass);


--
-- Name: test_resultparam id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_resultparam ALTER COLUMN id SET DEFAULT nextval('public.test_resultparam_id_seq'::regclass);


--
-- Name: test_test id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test ALTER COLUMN id SET DEFAULT nextval('public.test_test_id_seq'::regclass);


--
-- Name: test_test_elements id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test_elements ALTER COLUMN id SET DEFAULT nextval('public.test_test_elements_id_seq'::regclass);


--
-- Name: test_typeelement id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typeelement ALTER COLUMN id SET DEFAULT nextval('public.test_typeelement_id_seq'::regclass);


--
-- Name: test_typeelement_param id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typeelement_param ALTER COLUMN id SET DEFAULT nextval('public.test_typeelement_param_id_seq'::regclass);


--
-- Name: test_typetest id; Type: DEFAULT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typetest ALTER COLUMN id SET DEFAULT nextval('public.test_typetest_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add permission	7	add_permission
26	Can change permission	7	change_permission
27	Can delete permission	7	delete_permission
28	Can view permission	7	view_permission
29	Can add role	8	add_role
30	Can change role	8	change_role
31	Can delete role	8	delete_role
32	Can view role	8	view_role
33	Can add profile	9	add_profile
34	Can change profile	9	change_profile
35	Can delete profile	9	delete_profile
36	Can view profile	9	view_profile
37	Can add element param	10	add_elementparam
38	Can change element param	10	change_elementparam
39	Can delete element param	10	delete_elementparam
40	Can view element param	10	view_elementparam
41	Can add type test	11	add_typetest
42	Can change type test	11	change_typetest
43	Can delete type test	11	delete_typetest
44	Can view type test	11	view_typetest
45	Can add type element	12	add_typeelement
46	Can change type element	12	change_typeelement
47	Can delete type element	12	delete_typeelement
48	Can view type element	12	view_typeelement
49	Can add test	13	add_test
50	Can change test	13	change_test
51	Can delete test	13	delete_test
52	Can view test	13	view_test
53	Can add page	14	add_page
54	Can change page	14	change_page
55	Can delete page	14	delete_page
56	Can view page	14	view_page
57	Can add element	15	add_element
58	Can change element	15	change_element
59	Can delete element	15	delete_element
60	Can view element	15	view_element
61	Can add question	16	add_question
62	Can change question	16	change_question
63	Can delete question	16	delete_question
64	Can view question	16	view_question
65	Can add resultparam	17	add_resultparam
66	Can change resultparam	17	change_resultparam
67	Can delete resultparam	17	delete_resultparam
68	Can view resultparam	17	view_resultparam
69	Can add resultat	18	add_resultat
70	Can change resultat	18	change_resultat
71	Can delete resultat	18	delete_resultat
72	Can view resultat	18	view_resultat
73	Can add resulat metier	19	add_resulatmetier
74	Can change resulat metier	19	change_resulatmetier
75	Can delete resulat metier	19	delete_resulatmetier
76	Can view resulat metier	19	view_resulatmetier
77	Can add resulata persona	20	add_resulatapersona
78	Can change resulata persona	20	change_resulatapersona
79	Can delete resulata persona	20	delete_resulatapersona
80	Can view resulata persona	20	view_resulatapersona
81	Can add user notification	21	add_usernotification
82	Can change user notification	21	change_usernotification
83	Can delete user notification	21	delete_usernotification
84	Can view user notification	21	view_usernotification
\.


--
-- Data for Name: authentication_user; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.authentication_user (id, password, last_login, is_superuser, created_at, updated_at, username, email, is_active, is_staff, "rememberMe", "fullName", terms, is_available) FROM stdin;
1	pbkdf2_sha256$216000$qT5Nfc2pP4Hw$3QEje5nlvRJzRLBu04ggFcQW8gt8wgHuuCtM1awzhrY=	\N	t	2021-04-01 13:32:17.891612+00	2021-04-01 13:32:17.891641+00	admin@example.com	adnane	t	t	f	\N	t	f
2	pbkdf2_sha256$216000$PpGnZQpls5Mk$ZmMeH3UsQOBUG6624BNl9u4ViLuyuvTVAWmK/LM9TlM=	\N	f	2021-04-08 21:17:33.948365+00	2021-04-08 21:17:33.948562+00	amine bouchikhi	amine00@gmail.com	t	f	f	amine bouchikhi	t	f
3	pbkdf2_sha256$216000$tCxuQziWrvVV$pvgSaySS+C/2vgWpjfsVUoeDZQ1ffukaJxqaifTXgZA=	\N	f	2021-04-11 17:29:50.84893+00	2021-04-11 17:29:50.848968+00	test	ndndkdl@gmail.com	t	f	f	test	t	f
4	pbkdf2_sha256$216000$QvWwjmyaj626$6H4bgRVVC9UGEqpiUS/q6apIKlZza5TmvWbfSBWoaxg=	\N	f	2021-04-11 17:37:57.597456+00	2021-04-11 17:37:57.597489+00	user user	user@gmail.com	t	f	f	user user	t	f
5	pbkdf2_sha256$216000$eyRPuUMfxEBc$Qj8KeSm+ltjOiklqsDWnSaXWewhN277cHLHx4RxRnmk=	\N	f	2021-04-11 18:38:19.008736+00	2021-04-11 18:38:19.008864+00	testa	ndandkdl@gmail.com	t	f	f	testa	t	f
6	pbkdf2_sha256$216000$vnz1kcPYyosx$WQ2KG7lfiGKKV/KcdSDRZSqRBLpo3GVbclPptDkt3Ps=	\N	f	2021-04-11 19:11:18.653807+00	2021-04-11 19:11:18.653838+00	adnane	example@example.com	t	f	f	adnane	t	f
38	pbkdf2_sha256$216000$Wde5PyjjJFJ2$gO4/rbNKi+Cc5AnqDRkGsRgC/Asbc4e6WMy76ZwCHsw=	\N	f	2021-05-09 17:18:12.190159+00	2021-05-09 17:18:12.190212+00	Larbi Alaoui	alaouiarbi@gmail.com	t	f	f	Larbi Alaoui	t	f
7	pbkdf2_sha256$216000$mj0t2ALmKcl4$MRnP0jvFLtlRD1ncaq/Avldt3B7abgHWTp1GFpTyMso=	2021-04-11 21:46:55.06762+00	t	2021-04-11 21:46:30.305636+00	2021-04-11 21:46:30.305667+00	root@root.com	root@root.com	t	t	f	root@root.com	t	f
8	pbkdf2_sha256$216000$jHPgBBP6U9MY$3nF6Tl5ox4SQCXkcH9lmdZfWDPlMVrVCdXwW/EhA/Vc=	\N	f	2021-04-12 16:17:21.005181+00	2021-04-12 16:17:21.005212+00	adnan mojahid	mojahid@gmail.com	t	f	f	adnan mojahid	t	f
11	pbkdf2_sha256$216000$GfpBn3yfgBpY$cmHUQYbpA+jeoq0Va0c6WHURquk8k+WuY7Z4PDyYt68=	\N	f	2021-04-13 15:40:33.436268+00	2021-04-13 15:40:33.436315+00	ttst	jhghghff.jgfjj@gmail.com	t	f	f	ttst	t	f
12	pbkdf2_sha256$216000$PKQBKa3xYzww$Bhvbg58/OMBcXpwJaHamMdyWuFlDPaSFXhrp6pWlbPA=	\N	f	2021-04-13 15:40:52.285945+00	2021-04-13 15:40:52.285979+00	Mohamed Amine Bouchikhi	bouchikhi00ma@gmail.com	t	f	f	Mohamed Amine Bouchikhi	t	f
13	pbkdf2_sha256$216000$aaapVjqodzMe$JGv7yYaPWK7wbEQ5KQqNXfzmwUbV9cO4y9RtaIvM+4k=	\N	f	2021-04-13 16:42:53.512819+00	2021-04-13 16:42:53.512898+00	kamal	kamal.ji@gmail.com	t	f	f	kamal	t	f
14	pbkdf2_sha256$216000$mcupc40F5h55$f3qiBC4iuNr0Pd4NGAHAiDsCL7VgAEkhV32MQX77XRY=	\N	f	2021-04-13 16:52:49.679099+00	2021-04-13 16:52:49.679172+00	makan ilias	test12@gmail.com	t	f	f	makan ilias	t	f
15	pbkdf2_sha256$216000$DB11b7QaclRp$Vsxtpfrkbk0IoFKcjp2L9XG3x8L6/Vq5DsGRrtOYtU8=	\N	f	2021-04-13 19:09:27.786849+00	2021-04-13 19:09:27.78722+00	karim adio	kakakaka.test@gmail.com	t	f	f	karim adio	t	f
16	pbkdf2_sha256$216000$r8DBvhNzYDrK$tB4GoXqYRD5Fjr38XP/Qtgtpyex7/GH7F1P2N5+Ftkw=	\N	f	2021-04-16 23:22:54.208861+00	2021-04-16 23:22:54.208893+00	Halim Bakkali	bakkali@gmail.com	t	f	f	Halim Bakkali	t	f
17	pbkdf2_sha256$216000$bEJbkPs8P9Vx$x56poKkb+MB1d2/3UgkQ7Te2N0OUEIfvTlAC21tjN6I=	\N	f	2021-04-17 22:10:03.983788+00	2021-04-17 22:10:03.983841+00	mohamed amine bouch	amine@gmail.com	t	f	f	mohamed amine bouch	t	f
18	pbkdf2_sha256$216000$j2yvmZZVp1Xw$HHETFG+qt+IIEZC09H/49O/m3Jd5uvL3TlwkrA6ZHww=	\N	f	2021-04-18 12:41:23.32377+00	2021-04-18 12:41:23.324102+00	test7	jhgh7ff.jgfjj@gmail.com	t	f	f	test7	t	f
19	pbkdf2_sha256$216000$7JIqCmWigM3q$nSpoWBAEsEnj3Qs3liWaoDAvFQzwttsUe/Y/mr8pPMM=	\N	f	2021-04-18 14:00:17.774994+00	2021-04-18 14:00:17.775348+00	adil test	adil-test@gmail.com	t	f	f	adil test	t	f
20	pbkdf2_sha256$216000$TsAS37khXX9V$Xe+RYGgbenO4P2YXRqZ0Fu8l7r2sDMszVJCSxo+Q9/c=	\N	f	2021-04-18 23:26:04.966555+00	2021-04-18 23:26:04.966989+00	test5	jh6ghff.jgfjj@gmail.com	t	f	f	test5	t	f
21	pbkdf2_sha256$216000$SbiBX45MpjiT$N+sJQtqzArnfbTxwOhvMR/p6QB3Ia2AO7bs02noiXw0=	\N	f	2021-04-19 11:34:11.449175+00	2021-04-19 11:34:11.449457+00	zakar6	ndn6dkdl@gmail.com	t	f	f	zakar6	t	f
22	pbkdf2_sha256$216000$i2XnBveVad6m$5T5m3cd6lea/dv7PZbRFwtVR+dO9yLuJPb24wBPyPWI=	\N	f	2021-04-19 16:11:19.729446+00	2021-04-19 16:11:19.72949+00	aimane serhani	serhani@gmail.com	t	f	f	aimane serhani	t	f
23	pbkdf2_sha256$216000$V7tJ0GH82kvO$ppJK/g+i6g08C3+8kgTd7IEdMV6FOykTNxwLzpC5xoE=	\N	f	2021-04-21 04:12:12.737776+00	2021-04-21 04:12:12.73795+00	Test User	Phone@gmail.com	t	f	f	Test User	t	f
24	pbkdf2_sha256$216000$5ugDqJ9lnwMx$99JODfMQM4X4qdb2Dr3x3kA9EMY9swKd7bwUPo9o6sU=	\N	f	2021-04-26 18:59:16.715838+00	2021-04-26 18:59:16.715892+00	zakar4	ghff.jgfjj@gmail.com	t	f	f	zakar4	t	f
25	pbkdf2_sha256$216000$LYUHzqUFxJ7Q$tcFoq+Dk0AKAt43OvMyKcJ4wvYYySpQiqOkKVn9hAGQ=	\N	f	2021-04-27 15:20:30.104332+00	2021-04-27 15:20:30.10439+00	test user 1	testuser@gmail.com	t	f	f	test user 1	t	f
26	pbkdf2_sha256$216000$uH7Di46yXMeo$9jWGye+/j+072bwUPiH2Gzy2zLWJj7qFgyO3jKnVsUw=	\N	f	2021-05-03 12:57:32.160622+00	2021-05-03 12:57:32.160649+00	mohamed amine bouchbouch	bouch00ma@gmail.com	t	f	f	mohamed amine bouchbouch	t	f
27	pbkdf2_sha256$216000$cQ9eV2mQbrOs$7HGk6rfH7f20MXSz8Zqspko2k+t/y79kZv/A614D4WI=	\N	f	2021-05-03 18:35:01.906754+00	2021-05-03 18:35:01.906798+00	zakar1	ndnxnxnx@gmail.com	t	f	f	zakar1	t	f
28	pbkdf2_sha256$216000$S0uI1yda0rl8$EXuCxNuh1SsB9vocetdZKcK6pt8UO440VSCxPklj2xM=	\N	f	2021-05-03 21:13:10.819327+00	2021-05-03 21:13:10.819537+00	test user	bouchikhi000ma@gmail.com	t	f	f	test user	t	f
31	pbkdf2_sha256$216000$J5I7fPyRcHsl$+T8jAWVim/zqWOJKp5Ig7KmVUQGx9MQycX54FVclaI4=	\N	f	2021-05-05 13:48:10.887435+00	2021-05-05 13:48:10.887691+00	yuamij	kdkdkdkdd@gmail.com	t	f	f	yuamij	t	f
32	pbkdf2_sha256$216000$C6vZXzjlEWV6$FQHZRLvDhdrFrP25C01prxoTwf/bAzGsBHqKC4UrGWw=	\N	f	2021-05-05 15:32:43.305273+00	2021-05-05 15:32:43.305324+00	Mohamed Amine Test	aminux@gmail.com	t	f	f	Mohamed Amine Test	t	f
33	pbkdf2_sha256$216000$7W4G4xpNPRqr$liVGTOizxsJ210vCz0zOTRhZIq96Nfm2sh99BFZ5r9M=	\N	f	2021-05-05 17:50:15.628724+00	2021-05-05 17:50:15.628756+00	qpqr test	pqdqt@gmail.com	t	f	f	qpqr test	t	f
34	pbkdf2_sha256$216000$C7Fh3ywlfqSV$iuxJRwchzmZ38T+MS3IOk2sFSxNtS8wr710TczoEsfc=	\N	f	2021-05-05 18:49:31.582552+00	2021-05-05 18:49:31.582856+00	jbejkvbqkej	bouchikhi0000ma@gmail.com	t	f	f	jbejkvbqkej	t	f
35	pbkdf2_sha256$216000$zws9YdeN2ET1$7ZMLVrYa0pz589o70+/8WvIq55hPlYRBuVSLrEET3po=	\N	f	2021-05-05 22:50:03.029939+00	2021-05-05 22:50:03.030925+00	Test ays	Maytesrt@gmail.com	t	f	f	Test ays	t	f
36	pbkdf2_sha256$216000$7yhe1snXVA2a$0XlWm++Z6ju7wqShTNniqFvuiiaf5d7Qrf/tV+wJJWQ=	\N	f	2021-05-06 01:25:46.657864+00	2021-05-06 01:25:46.657932+00	bouchikhi aminem	Aminem@gmail.com	t	f	f	bouchikhi aminem	t	f
37	pbkdf2_sha256$216000$WXJFpayHVLUc$5fj4fuVcubMTznR/5FwdAOSa191hWgK7ccHa2t949HQ=	\N	f	2021-05-06 16:43:56.965423+00	2021-05-06 16:43:56.965478+00	testyt	tatatagaga@gmail.com	t	f	f	testyt	t	f
39	pbkdf2_sha256$216000$p9MUj0Xqie69$zn+adROK6GPl2KJ2hIIH9sb7Oq9hupakFCV6nOtzAXo=	\N	f	2021-05-10 17:57:26.130605+00	2021-05-10 17:57:26.130655+00	test4	tasyjfkfkfk@gmail.com	t	f	f	test4	t	f
40	pbkdf2_sha256$216000$IqTBMyCkWhXB$rDPffjHhykhD1HNisCudoOvUMxjhmdlBK/LLJ7Lq+zc=	\N	f	2021-05-10 17:59:34.63189+00	2021-05-10 17:59:34.631927+00	mohamed aimane	aimane@gmail.com	t	f	f	mohamed aimane	t	f
43	pbkdf2_sha256$216000$YOS5zGuuinwH$3hw2oxYvFC6omrxr9RSltsFhEdOb0kR8cHIqy7OYcGc=	\N	f	2021-05-11 22:37:34.620749+00	2021-05-11 22:37:34.620777+00	test userr	eafljenfkaejf@gmail.com	t	f	f	test userr	t	f
44	pbkdf2_sha256$216000$zSvQzActYMti$cFUKdPcmlFzY1etbsT3oyl9CRP7KQiX4FMEgnhBPixI=	\N	f	2021-05-11 23:29:02.575385+00	2021-05-11 23:29:02.575725+00	zakarghh	jhghff.jgfjghjjhj@gmail.com	t	f	f	zakarghh	t	f
45	pbkdf2_sha256$216000$ZTiDIweEVVwC$Ky833foxwlWpv7eYCvtHgMJHfQl/LciDx6YYZwzgIKM=	\N	f	2021-05-11 23:30:51.12003+00	2021-05-11 23:30:51.120087+00	test makan	jhhhgff.jgfjj@gmail.com	t	f	f	test makan	t	f
46	pbkdf2_sha256$216000$3xjMW6CMHRph$x1PdWKtPeYuc3xYf5scUf8g5HqQnrSaG05xmw0chQYA=	\N	f	2021-05-11 23:33:34.375483+00	2021-05-11 23:33:34.37554+00	qopa limar	jhgyghff.jgfjj@gmail.com	t	f	f	qopa limar	t	f
47	pbkdf2_sha256$216000$zJlP11O5xzkK$aiJqrt2/YIoA+GS40rcmQCvvTZaV6CvI3jN6HabOxCI=	\N	f	2021-05-12 12:24:24.672124+00	2021-05-12 12:24:24.672514+00	makj kdjkx	jhgghhff.jgfjj@gmail.com	t	f	f	makj kdjkx	t	f
48	pbkdf2_sha256$216000$sPkumTiwggzw$YCAmGx/E7ZH+bJGihrbWq0gmh3I0He0x/nnUTT4tJd8=	\N	f	2021-05-12 21:48:54.431719+00	2021-05-12 21:48:54.431775+00	test user user	useruser@gmail.com	t	f	f	test user user	t	f
49	pbkdf2_sha256$216000$243w4a5kyTuM$0C1LRzfyYrr1sfuumjyQ6q34KEBpsQ0OdBBgWis5xDU=	\N	f	2021-05-12 22:22:54.94011+00	2021-05-12 22:22:54.940169+00	test lebra	jhgerhff.jgfjj@gmail.com	t	f	f	test lebra	t	f
50	pbkdf2_sha256$216000$X3wMG7xp7EXV$twYrGD7towQAuYKiz+pC5bp4YZNP97FccS6t0gfFxxA=	\N	f	2021-05-13 11:25:10.223471+00	2021-05-13 11:25:10.223762+00	test  kobra	jhghhff.jgfjj@gmail.com	t	f	f	test  kobra	t	f
51	pbkdf2_sha256$216000$7XTIsYh15o9X$MYhzVc514lPda8wuoPjhxFI5+R7BuVxtU8QSVBXo5UY=	\N	f	2021-05-13 20:58:19.60413+00	2021-05-13 20:58:19.604182+00	salma bouchikhi	salma@gmail.com	t	f	f	salma bouchikhi	t	f
52	pbkdf2_sha256$216000$C3NabPGkUSBx$mTmpHXHm5dQ2X6qJOG0nRFaRAkf2fxvj1ezBga7My0U=	\N	f	2021-05-13 21:23:33.555528+00	2021-05-13 21:23:33.555628+00	gdihi adnan	gdihi@gmail.com	t	f	f	gdihi adnan	t	f
53	pbkdf2_sha256$216000$1z6JCO86IWay$fexsoF/pUNRfA5zrOTgvAbpM1o1tjBt5MxuOh1NpqUw=	\N	f	2021-05-13 21:34:55.981301+00	2021-05-13 21:34:55.981663+00	makqn lobra	jhgff.jgfjuj@gmail.com	t	f	f	makqn lobra	t	f
54	pbkdf2_sha256$216000$jeU3acbN6NFD$oc2IbjqW37cv7nhSt97oT2l98eI2+sMATyp8izZ6ytg=	\N	f	2021-05-13 22:01:27.674629+00	2021-05-13 22:01:27.674964+00	Adnane GDIHI	gdihi@example.com	t	f	f	Adnane GDIHI	t	f
57	pbkdf2_sha256$216000$4e2lVcVu8MqZ$St9ekQ+qZ9XV2HfpF7SHCce6kz7NVV7xZ5buaJP4180=	\N	f	2021-05-14 18:48:18.431673+00	2021-05-14 18:48:18.431754+00	karim adiw	jsksdjljs.jhsjhs@gmail.com	t	f	f	karim adiw	t	f
58	pbkdf2_sha256$216000$Xs1SOMTD7LFW$eBv9e+6K/0lAyQlTA83T5q2nmBD4U9pDT1s8J/xR5s8=	\N	f	2021-05-14 19:10:46.887228+00	2021-05-14 19:10:46.887282+00	test kskdj	jhgghff.jgfjj@gmail.com	t	f	f	test kskdj	t	f
59	pbkdf2_sha256$216000$14dTz052dVC9$GlM3OJKqfG2nESAxu+cHQjXK6xjJCGO2NpzahSG1by0=	\N	f	2021-05-14 19:24:18.100247+00	2021-05-14 19:24:18.100339+00	zakar ghjk	jhghff.jgfjjg@gmail.com	t	f	f	zakar ghjk	t	f
60	pbkdf2_sha256$216000$AV7eJ8Nv7ckB$f/YWONJV3gcr6eFZTGQm2MAM5cLNzLisBs/tedsy1Cg=	\N	f	2021-05-14 19:31:07.584512+00	2021-05-14 19:31:07.584598+00	karim adip	kjqekjqdlljqd@gmail.com	t	f	f	karim adip	t	f
61	pbkdf2_sha256$216000$HyBtMZBJk4K6$MC268XMWY5Fk+UQgsXpEZke25A7x+FyOAadJ9kh9jlE=	\N	f	2021-05-15 11:59:15.321832+00	2021-05-15 11:59:15.322272+00	karim adiob	jhkhkhkhkh@gmail.com	t	f	f	karim adiob	t	f
62	pbkdf2_sha256$216000$kDZoGky6dP6T$6vJ7L9yqM/QE2t1Pal1mnMVL0vK8At9YsHxOBVjxvuM=	\N	f	2021-05-16 15:59:50.533342+00	2021-05-16 15:59:50.533694+00	Jaiain lmoop	Pploa@gmail.com	t	f	f	Jaiain lmoop	t	f
63	pbkdf2_sha256$216000$bymWhS3Jt8EO$o0wYvevCWUvdLUH6luHQqbEfQ2bvfuIotavtRLQA4eo=	\N	f	2021-05-16 16:42:56.177612+00	2021-05-16 16:42:56.177647+00	kalou dialou	jhgfuf.jgfjj@gmail.com	t	f	f	kalou dialou	t	f
64	pbkdf2_sha256$216000$1C9t2aGy3Aqa$YZCnddT38VOp0o0fwvrCcS9QkXCAe8fU+14EpYsUX4Y=	\N	f	2021-05-17 01:20:42.105447+00	2021-05-17 01:20:42.10548+00	Jhon bouch	jhon@gmail.com	t	f	f	Jhon bouch	t	f
65	pbkdf2_sha256$216000$MglILLpGX0Dm$GVlZFtVy67i0q5/K9E+J9PDaU9/MbGVWv7y+wNEyk0E=	\N	f	2021-05-17 02:14:10.161903+00	2021-05-17 02:14:10.161949+00	inass majdoubi	majdoubi@gmail.com	t	f	f	inass majdoubi	t	f
66	pbkdf2_sha256$216000$k3bN34r3aoBd$bgeMeX7LGQyaHDDNkpgmm2IIPOCUiEpOJVmk3m8eTts=	\N	f	2021-05-17 13:03:12.424665+00	2021-05-17 13:03:12.42508+00	Karim Rouifi	Karim@gmail.com	t	f	f	Karim Rouifi	t	f
67	pbkdf2_sha256$216000$sORxPhG0qVh0$ZMvVb7X6uro3O5M3x1rv19cUBkxgDfBfKXjqt4cyirg=	\N	f	2021-05-17 14:08:55.533811+00	2021-05-17 14:08:55.53411+00	tester1	tester1@tester.com	t	f	f	tester1	t	f
68	pbkdf2_sha256$216000$J8q979oWkhDH$zRC07O0qkg2w4U9Ub5zDfrPiqzKf4ySFxQoR4DbuROs=	\N	f	2021-05-17 15:14:47.881748+00	2021-05-17 15:14:47.881886+00	nnnnnn	nnnn@gmail.com	t	f	f	nnnnnn	t	f
69	pbkdf2_sha256$216000$cn70R2kzRoDM$QHQMNNHmPzaJ9MmmjPRaiQDJK5vJtfuOljLSvX0HVuA=	\N	f	2021-05-17 16:40:43.673137+00	2021-05-17 16:40:43.673192+00	karim adiov	svsvsvsv@gmail.com	t	f	f	karim adiov	t	f
70	pbkdf2_sha256$216000$kSH4vBRKgHBJ$B6XOxiS7v3rpFiVpmDo85ioLWzlYbK1T6UYMeI04foI=	\N	f	2021-05-17 16:45:38.971288+00	2021-05-17 16:45:38.971498+00	hicham aroi	hicham@gmail.com	t	f	f	hicham aroi	t	f
71	pbkdf2_sha256$216000$nX534MqSmZRV$OHaAtyDK9OXL+qVPjbf4C0gk3qg/KV6KlCOSJ4ZA8TM=	\N	f	2021-05-17 16:45:50.195088+00	2021-05-17 16:45:50.195125+00	zakar gaga	jhghff.jgj@gmail.com	t	f	f	zakar gaga	t	f
72	pbkdf2_sha256$216000$xYt2m0nzw6wJ$yDNpcz5zhD+tdS3qhlgb2DkbVYcx775ebXHe6tH7Al8=	\N	f	2021-05-17 16:49:03.722759+00	2021-05-17 16:49:03.722799+00	karim adiom	jgjgjgjg.jk@outlook.com	t	f	f	karim adiom	t	f
73	pbkdf2_sha256$216000$Vqwe7N44tVPV$Tuk79X1OPHA8XbJLP97X2+0nzWlABDsSbVZ53l2Lxwk=	\N	f	2021-05-17 16:51:50.093503+00	2021-05-17 16:51:50.093556+00	yuam lala	jff.jgfjj@gmail.com	t	f	f	yuam lala	t	f
74	pbkdf2_sha256$216000$cVHfe3W6Hpol$n2HhIyuaymz2Mls1FI8mvG6k/IQtuUIr2MctX8ONLRE=	\N	f	2021-05-17 16:55:22.649687+00	2021-05-17 16:55:22.649719+00	karim adiox	sdsd@outlook.fr	t	f	f	karim adiox	t	f
\.


--
-- Data for Name: authentication_user_groups; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.authentication_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: authentication_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.authentication_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authentication_usernotification; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.authentication_usernotification (id, created_at, updated_at, label, user_id, email) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-04-11 22:17:18.159991+00	1	A	1	[{"added": {}}]	17	7
2	2021-04-11 22:49:26.956709+00	2	B	1	[{"added": {}}]	17	7
3	2021-04-11 22:49:33.389852+00	3	C	1	[{"added": {}}]	17	7
4	2021-04-11 22:49:37.884998+00	4	D	1	[{"added": {}}]	17	7
5	2021-04-11 22:49:42.826288+00	5	E	1	[{"added": {}}]	17	7
6	2021-04-11 22:49:52.368778+00	6	F	1	[{"added": {}}]	17	7
7	2021-04-11 22:50:01.397858+00	7	G	1	[{"added": {}}]	17	7
8	2021-04-11 22:50:06.611645+00	8	H	1	[{"added": {}}]	17	7
9	2021-04-11 22:50:14.264521+00	9	I	1	[{"added": {}}]	17	7
10	2021-04-11 22:50:21.710334+00	10	J	1	[{"added": {}}]	17	7
11	2021-04-11 22:50:26.686557+00	11	K	1	[{"added": {}}]	17	7
12	2021-04-11 22:50:32.425245+00	12	L	1	[{"added": {}}]	17	7
13	2021-04-11 22:50:38.343188+00	13	M	1	[{"added": {}}]	17	7
14	2021-04-11 22:50:43.900589+00	14	N	1	[{"added": {}}]	17	7
15	2021-04-11 22:50:56.856512+00	15	CREATIF	1	[{"added": {}}]	17	7
16	2021-04-11 22:51:05.484384+00	16	METHODIQUE	1	[{"added": {}}]	17	7
17	2021-04-11 22:51:13.219666+00	17	ENTREPRENANT	1	[{"added": {}}]	17	7
18	2021-04-11 22:51:24.103606+00	18	INVESTIGATEUR	1	[{"added": {}}]	17	7
19	2021-04-11 22:51:32.810847+00	19	SOCIAL	1	[{"added": {}}]	17	7
20	2021-04-11 22:52:06.396443+00	20	PRATIQUE	1	[{"added": {}}]	17	7
21	2021-04-12 04:59:03.835111+00	1	DESSINER OU PEINDRE	1	[{"added": {}}]	16	7
22	2021-04-12 04:59:55.216973+00	2	JOUER AUX ÉCHECS	1	[{"added": {}}]	16	7
23	2021-04-12 05:00:16.661707+00	3	MONTER UN PUZZLE	1	[{"added": {}}]	16	7
24	2021-04-12 05:00:38.840447+00	4	TONDRE UNE PELOUSE	1	[{"added": {}}]	16	7
25	2021-04-12 05:00:51.679594+00	5	AIDER LES AUTRES	1	[{"added": {}}]	16	7
26	2021-04-12 05:01:03.142161+00	6	DIRIGER UN GROUPE	1	[{"added": {}}]	16	7
27	2021-04-12 05:01:13.434113+00	7	JOUER UN INSTRUMENT	1	[{"added": {}}]	16	7
28	2021-04-12 05:01:24.009638+00	8	PENSER CRITIQUE	1	[{"added": {}}]	16	7
29	2021-04-12 05:01:38.652603+00	9	ACTION HUMANITAIRE	1	[{"added": {}}]	16	7
30	2021-04-12 05:02:16.086341+00	10	LIRE UN OUVRAGE SCIENTIFIQUE	1	[{"added": {}}]	16	7
31	2021-04-12 05:04:46.635588+00	11	LISTEZ MES COURSES	1	[{"added": {}}]	16	7
32	2021-04-12 05:04:49.36485+00	12	JEU DE ROLE	1	[{"added": {}}]	16	7
33	2021-04-12 05:04:52.034841+00	13	RÉPARER UN OBJET	1	[{"added": {}}]	16	7
34	2021-04-12 05:04:54.092886+00	14	LIRE UN ROMAN	1	[{"added": {}}]	16	7
35	2021-04-12 05:04:57.332315+00	15	SUIVRE VOS DEPENSES	1	[{"added": {}}]	16	7
36	2021-04-12 05:04:58.931771+00	16	VOUS DÉPENSER PHYSIQUEMENT	1	[{"added": {}}]	16	7
37	2021-04-12 05:05:02.185755+00	17	ORGANIZER VOTRE SEMAINE	1	[{"added": {}}]	16	7
38	2021-04-12 05:05:03.949903+00	18	AUTOFORMATION	1	[{"added": {}}]	16	7
39	2021-04-12 05:05:05.209856+00	19	MENER UNE ENQUÊTE	1	[{"added": {}}]	16	7
40	2021-04-12 05:08:38.304227+00	20	IMAGINEZ UN FILM	1	[{"added": {}}]	16	7
41	2021-04-12 05:08:40.122488+00	21	CONVAINCRE LES AUTRES	1	[{"added": {}}]	16	7
42	2021-04-12 05:08:41.0333+00	22	ECHANGER EN GROUPE	1	[{"added": {}}]	16	7
43	2021-04-12 05:08:42.017188+00	23	CONDUIRE UN CAMION	1	[{"added": {}}]	16	7
44	2021-04-12 05:08:42.646833+00	24	JEU DE RÉFLEXION	1	[{"added": {}}]	16	7
45	2021-04-12 05:08:43.79577+00	25	LIRE UN ARTICLE	1	[{"added": {}}]	16	7
46	2021-04-12 05:08:44.88162+00	26	AIDER AU DÉMÉNAGEMENT	1	[{"added": {}}]	16	7
47	2021-04-12 05:08:46.179122+00	27	RELEVER UN DÉFI	1	[{"added": {}}]	16	7
48	2021-04-12 05:08:47.937416+00	28	EXPLIQUER UN MYSTÈRE!	1	[{"added": {}}]	16	7
49	2021-04-12 05:08:48.862281+00	29	MONTER UN LEGO	1	[{"added": {}}]	16	7
50	2021-04-12 05:08:50.630131+00	30	NÉGOCIER LE PRIX	1	[{"added": {}}]	16	7
51	2021-04-12 05:12:14.680219+00	31	PRÉVOIR VOS TÂCHES	1	[{"added": {}}]	16	7
52	2021-04-12 05:12:18.420588+00	32	LANCER DES IDÉES	1	[{"added": {}}]	16	7
53	2021-04-12 05:12:19.607534+00	33	PRENDRE DES RISQUES	1	[{"added": {}}]	16	7
54	2021-04-12 05:12:20.538167+00	34	ADHÉRER UNE ASSOCIATION	1	[{"added": {}}]	16	7
55	2021-04-12 05:12:21.463755+00	35	GÉRER VOTRE BUDGET	1	[{"added": {}}]	16	7
56	2021-04-12 05:12:22.199505+00	36	RÉPARER UN OBJET	1	[{"added": {}}]	16	7
57	2021-04-12 05:12:22.995989+00	37	DÉVELLOPER VOTRE RÉSEAU	1	[{"added": {}}]	16	7
58	2021-04-12 05:12:23.984036+00	38	PRENDRE DES DÉCISIONS	1	[{"added": {}}]	16	7
59	2021-04-12 05:12:25.142815+00	39	PERSONNALISER VOTRE CHAMBRE	1	[{"added": {}}]	16	7
60	2021-04-12 05:12:25.77919+00	40	LANCER UN PROJET	1	[{"added": {}}]	16	7
61	2021-04-12 05:12:27.009097+00	41	ORGANISER VOTRE VOYAGE	1	[{"added": {}}]	16	7
62	2021-04-12 05:14:44.390847+00	42	RÉPARER UNE VOITURE	1	[{"added": {}}]	16	7
63	2021-04-12 05:14:46.528141+00	43	RASSEMBLER UN APPAREIL	1	[{"added": {}}]	16	7
64	2021-04-12 05:14:48.293383+00	44	RÉCONFORTER UN PROCHE	1	[{"added": {}}]	16	7
65	2021-04-12 05:14:49.177303+00	45	LISTER VOS COURSES	1	[{"added": {}}]	16	7
66	2021-04-12 05:14:50.063893+00	46	RÉNOVER VOTRE MAISON	1	[{"added": {}}]	16	7
67	2021-04-12 05:14:50.774055+00	47	PARTICIPER AUX COMPÉTIONS	1	[{"added": {}}]	16	7
68	2021-04-12 05:14:51.617784+00	48	S'HABILLER DIFFÉREMMENT	1	[{"added": {}}]	16	7
69	2021-04-12 05:14:56.166573+00	49	COLLECTIONNER DES OBJETS	1	[{"added": {}}]	16	7
70	2021-04-12 05:14:58.089836+00	50	S'INFORMER SUR INTERNET	1	[{"added": {}}]	16	7
71	2021-04-12 05:15:00.256213+00	51	ENSEIGNER UN ÉLÈVE	1	[{"added": {}}]	16	7
72	2021-04-12 05:16:52.692015+00	52	ORGANISER VOS AFFAIRES	1	[{"added": {}}]	16	7
73	2021-04-12 05:16:56.462184+00	53	CONVAINCRE LES AUTRES	1	[{"added": {}}]	16	7
74	2021-04-12 05:16:58.08904+00	54	ACTIVITÉE PHYSIQUE	1	[{"added": {}}]	16	7
75	2021-04-12 05:16:59.020253+00	55	LIBÉREZ VOTRE IMAGINATION	1	[{"added": {}}]	16	7
76	2021-04-12 05:17:00.204139+00	56	SOIGNER UNE PERSONNE	1	[{"added": {}}]	16	7
77	2021-04-12 05:17:01.761035+00	57	STRUCTURER VOTRE PLANNING	1	[{"added": {}}]	16	7
78	2021-04-12 05:17:04.213817+00	58	CRÉATION ARTISTIQUE	1	[{"added": {}}]	16	7
79	2021-04-12 05:17:11.131608+00	59	PRÉSENTER UN EXPOSÉ	1	[{"added": {}}]	16	7
80	2021-04-12 05:17:19.770438+00	60	RELANCER UNE DISCUSSION	1	[{"added": {}}]	16	7
81	2021-04-12 13:45:03.456015+00	10	LIRE UN OUVRAGE SCIENTIFIQUE	2	[{"changed": {"fields": ["Params"]}}]	16	7
82	2021-04-12 13:46:47.314738+00	1	DESSINER OU PEINDRE	2	[{"changed": {"fields": ["Params"]}}]	16	7
83	2021-04-12 13:47:47.11582+00	2	JOUER AUX ÉCHECS	2	[{"changed": {"fields": ["Params"]}}]	16	7
84	2021-04-12 13:48:20.75699+00	3	MONTER UN PUZZLE	2	[{"changed": {"fields": ["Params"]}}]	16	7
85	2021-04-12 13:48:54.07339+00	4	TONDRE UNE PELOUSE	2	[{"changed": {"fields": ["Params"]}}]	16	7
86	2021-04-12 13:49:35.831325+00	5	AIDER LES AUTRES	2	[{"changed": {"fields": ["Params"]}}]	16	7
87	2021-04-12 13:50:17.72194+00	6	DIRIGER UN GROUPE	2	[{"changed": {"fields": ["Params"]}}]	16	7
88	2021-04-12 13:50:51.403868+00	7	JOUER UN INSTRUMENT	2	[{"changed": {"fields": ["Params"]}}]	16	7
89	2021-04-12 13:51:25.355399+00	8	PENSER CRITIQUE	2	[{"changed": {"fields": ["Params"]}}]	16	7
90	2021-04-12 13:52:02.400871+00	9	ACTION HUMANITAIRE	2	[{"changed": {"fields": ["Params"]}}]	16	7
91	2021-04-12 14:03:52.763255+00	11	LISTEZ MES COURSES	2	[{"changed": {"fields": ["Params"]}}]	16	7
92	2021-04-12 14:04:44.955577+00	12	JEU DE ROLE	2	[{"changed": {"fields": ["Params"]}}]	16	7
93	2021-04-12 14:05:27.407809+00	13	RÉPARER UN OBJET	2	[{"changed": {"fields": ["Params"]}}]	16	7
94	2021-04-12 14:06:08.195962+00	14	LIRE UN ROMAN	2	[{"changed": {"fields": ["Params"]}}]	16	7
95	2021-04-12 14:09:11.478191+00	15	SUIVRE VOS DEPENSES	2	[{"changed": {"fields": ["Params"]}}]	16	7
96	2021-04-12 14:09:46.678903+00	16	VOUS DÉPENSER PHYSIQUEMENT	2	[{"changed": {"fields": ["Params"]}}]	16	7
97	2021-04-12 14:10:30.780209+00	17	ORGANIZER VOTRE SEMAINE	2	[{"changed": {"fields": ["Params"]}}]	16	7
98	2021-04-12 14:11:15.935021+00	18	AUTOFORMATION	2	[{"changed": {"fields": ["Params"]}}]	16	7
99	2021-04-12 14:11:47.836322+00	19	MENER UNE ENQUÊTE	2	[{"changed": {"fields": ["Params"]}}]	16	7
100	2021-04-12 14:12:17.059983+00	20	IMAGINEZ UN FILM	2	[{"changed": {"fields": ["Params"]}}]	16	7
101	2021-04-12 14:12:48.295153+00	21	CONVAINCRE LES AUTRES	2	[{"changed": {"fields": ["Params"]}}]	16	7
102	2021-04-12 14:15:52.790898+00	21	CONVAINCRE LES AUTRES	2	[]	16	7
103	2021-04-12 14:18:56.906402+00	22	ECHANGER EN GROUPE	2	[{"changed": {"fields": ["Params"]}}]	16	7
104	2021-04-12 14:19:23.744498+00	23	CONDUIRE UN CAMION	2	[{"changed": {"fields": ["Params"]}}]	16	7
105	2021-04-12 14:19:57.064547+00	24	JEU DE RÉFLEXION	2	[{"changed": {"fields": ["Params"]}}]	16	7
106	2021-04-12 14:20:46.10779+00	25	LIRE UN ARTICLE	2	[{"changed": {"fields": ["Params"]}}]	16	7
107	2021-04-12 14:29:35.200773+00	26	AIDER AU DÉMÉNAGEMENT	2	[{"changed": {"fields": ["Params"]}}]	16	7
108	2021-04-12 14:31:09.054248+00	27	RELEVER UN DÉFI	2	[{"changed": {"fields": ["Params"]}}]	16	7
109	2021-04-12 14:32:39.012982+00	28	EXPLIQUER UN MYSTÈRE!	2	[{"changed": {"fields": ["Params"]}}]	16	7
110	2021-04-12 14:33:14.369531+00	29	MONTER UN LEGO	2	[{"changed": {"fields": ["Params"]}}]	16	7
111	2021-04-12 14:33:53.550305+00	30	NÉGOCIER LE PRIX	2	[{"changed": {"fields": ["Params"]}}]	16	7
112	2021-04-12 14:34:37.811629+00	31	PRÉVOIR VOS TÂCHES	2	[{"changed": {"fields": ["Params"]}}]	16	7
113	2021-04-12 14:35:25.93309+00	32	LANCER DES IDÉES	2	[{"changed": {"fields": ["Params"]}}]	16	7
114	2021-04-12 14:36:23.901837+00	33	PRENDRE DES RISQUES	2	[{"changed": {"fields": ["Params"]}}]	16	7
115	2021-04-12 14:37:14.811264+00	34	ADHÉRER UNE ASSOCIATION	2	[{"changed": {"fields": ["Params"]}}]	16	7
116	2021-04-12 14:37:54.115931+00	35	GÉRER VOTRE BUDGET	2	[{"changed": {"fields": ["Params"]}}]	16	7
117	2021-04-12 14:38:26.7266+00	36	RÉPARER UN OBJET	2	[{"changed": {"fields": ["Params"]}}]	16	7
118	2021-04-12 14:38:43.654141+00	37	DÉVELLOPER VOTRE RÉSEAU	2	[{"changed": {"fields": ["Params"]}}]	16	7
119	2021-04-12 14:39:19.496614+00	38	PRENDRE DES DÉCISIONS	2	[{"changed": {"fields": ["Params"]}}]	16	7
120	2021-04-12 14:39:47.030049+00	39	PERSONNALISER VOTRE CHAMBRE	2	[{"changed": {"fields": ["Params"]}}]	16	7
121	2021-04-12 14:40:04.185178+00	40	LANCER UN PROJET	2	[{"changed": {"fields": ["Params"]}}]	16	7
122	2021-04-12 14:40:40.305564+00	41	ORGANISER VOTRE VOYAGE	2	[{"changed": {"fields": ["Params"]}}]	16	7
123	2021-04-12 15:02:31.069009+00	42	RÉPARER UNE VOITURE	2	[{"changed": {"fields": ["Params"]}}]	16	7
124	2021-04-12 15:03:08.238295+00	43	RASSEMBLER UN APPAREIL	2	[{"changed": {"fields": ["Params"]}}]	16	7
125	2021-04-12 15:03:26.181515+00	44	RÉCONFORTER UN PROCHE	2	[{"changed": {"fields": ["Params"]}}]	16	7
126	2021-04-12 15:03:52.644094+00	45	LISTER VOS COURSES	2	[{"changed": {"fields": ["Params"]}}]	16	7
127	2021-04-12 15:04:39.854588+00	46	RÉNOVER VOTRE MAISON	2	[{"changed": {"fields": ["Params"]}}]	16	7
128	2021-04-12 15:05:35.849278+00	47	PARTICIPER AUX COMPÉTIONS	2	[{"changed": {"fields": ["Params"]}}]	16	7
129	2021-04-12 15:06:14.369312+00	48	S'HABILLER DIFFÉREMMENT	2	[{"changed": {"fields": ["Params"]}}]	16	7
130	2021-04-12 15:08:18.065318+00	49	COLLECTIONNER DES OBJETS	2	[{"changed": {"fields": ["Params"]}}]	16	7
131	2021-04-12 15:08:58.328722+00	50	S'INFORMER SUR INTERNET	2	[{"changed": {"fields": ["Params"]}}]	16	7
132	2021-04-12 15:09:38.990688+00	51	ENSEIGNER UN ÉLÈVE	2	[{"changed": {"fields": ["Params"]}}]	16	7
133	2021-04-12 15:10:21.729276+00	52	ORGANISER VOS AFFAIRES	2	[{"changed": {"fields": ["Params"]}}]	16	7
134	2021-04-12 15:11:44.772693+00	53	CONVAINCRE LES AUTRES	2	[{"changed": {"fields": ["Params"]}}]	16	7
135	2021-04-12 15:12:28.329611+00	54	ACTIVITÉE PHYSIQUE	2	[{"changed": {"fields": ["Params"]}}]	16	7
136	2021-04-12 15:13:32.006053+00	55	LIBÉREZ VOTRE IMAGINATION	2	[{"changed": {"fields": ["Params"]}}]	16	7
137	2021-04-12 15:13:55.000055+00	56	SOIGNER UNE PERSONNE	2	[{"changed": {"fields": ["Params"]}}]	16	7
138	2021-04-12 15:14:47.469883+00	57	STRUCTURER VOTRE PLANNING	2	[{"changed": {"fields": ["Params"]}}]	16	7
139	2021-04-12 15:15:16.350857+00	58	CRÉATION ARTISTIQUE	2	[{"changed": {"fields": ["Params"]}}]	16	7
140	2021-04-12 15:15:53.130807+00	60	RELANCER UNE DISCUSSION	2	[{"changed": {"fields": ["Params"]}}]	16	7
141	2021-04-12 15:17:21.365612+00	59	PRÉSENTER UN EXPOSÉ	2	[{"changed": {"fields": ["Params"]}}]	16	7
142	2021-04-12 16:18:38.183654+00	8	adnan mojahid	2	[{"changed": {"fields": ["FullName"]}}]	9	7
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authentication	user
7	profile	permission
8	profile	role
9	profile	profile
10	test	elementparam
11	test	typetest
12	test	typeelement
13	test	test
14	test	page
15	test	element
16	test	question
17	test	resultparam
18	resultat	resultat
19	resultat	resulatmetier
20	resultat	resulatapersona
21	authentication	usernotification
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-01 13:29:52.640964+00
2	contenttypes	0002_remove_content_type_name	2021-04-01 13:29:52.657912+00
3	auth	0001_initial	2021-04-01 13:29:52.692653+00
4	auth	0002_alter_permission_name_max_length	2021-04-01 13:29:52.750856+00
5	auth	0003_alter_user_email_max_length	2021-04-01 13:29:52.760482+00
6	auth	0004_alter_user_username_opts	2021-04-01 13:29:52.771084+00
7	auth	0005_alter_user_last_login_null	2021-04-01 13:29:52.782128+00
8	auth	0006_require_contenttypes_0002	2021-04-01 13:29:52.785075+00
9	auth	0007_alter_validators_add_error_messages	2021-04-01 13:29:52.795504+00
10	auth	0008_alter_user_username_max_length	2021-04-01 13:29:52.806599+00
11	auth	0009_alter_user_last_name_max_length	2021-04-01 13:29:52.817302+00
12	auth	0010_alter_group_name_max_length	2021-04-01 13:29:52.828897+00
13	auth	0011_update_proxy_permissions	2021-04-01 13:29:52.839571+00
14	auth	0012_alter_user_first_name_max_length	2021-04-01 13:29:52.852437+00
15	authentication	0001_initial	2021-04-01 13:29:52.879659+00
16	admin	0001_initial	2021-04-01 13:29:52.950049+00
17	admin	0002_logentry_remove_auto_add	2021-04-01 13:29:52.971622+00
18	admin	0003_logentry_add_action_flag_choices	2021-04-01 13:29:52.985475+00
19	authentication	0002_user_rememberme	2021-04-01 13:29:53.00028+00
20	authentication	0003_user_fullname	2021-04-01 13:29:53.017675+00
21	authentication	0004_auto_20210331_1512	2021-04-01 13:29:53.075152+00
22	authentication	0005_user_terms	2021-04-01 13:29:53.137434+00
23	authentication	0006_auto_20210331_1518	2021-04-01 13:29:53.160081+00
24	profile	0001_initial	2021-04-01 13:29:53.215314+00
25	profile	0002_auto_20210330_0240	2021-04-01 13:29:53.385683+00
26	test	0001_initial	2021-04-01 13:29:53.514264+00
27	resultat	0001_initial	2021-04-01 13:29:53.588219+00
28	resultat	0002_auto_20210221_1451	2021-04-01 13:29:54.103259+00
29	resultat	0003_auto_20210401_0219	2021-04-01 13:29:54.243084+00
30	sessions	0001_initial	2021-04-01 13:29:54.253777+00
31	test	0002_auto_20210219_2059	2021-04-01 13:29:54.314874+00
32	test	0003_auto_20210219_2100	2021-04-01 13:29:54.407366+00
33	test	0004_auto_20210308_1633	2021-04-01 13:29:54.645839+00
34	test	0005_auto_20210308_1636	2021-04-01 13:29:54.738494+00
35	test	0006_auto_20210308_2332	2021-04-01 13:29:55.015259+00
36	test	0007_auto_20210401_0110	2021-04-01 13:29:55.638929+00
37	test	0008_auto_20210401_0120	2021-04-01 13:29:55.691099+00
38	authentication	0007_auto_20210408_1523	2021-04-11 18:40:31.522406+00
39	authentication	0008_auto_20210408_1918	2021-04-11 18:40:31.55019+00
40	profile	0003_auto_20210412_0009	2021-04-12 15:59:38.248615+00
41	profile	0004_auto_20210412_0031	2021-04-12 15:59:38.295869+00
42	profile	0005_auto_20210412_0404	2021-04-12 15:59:38.322947+00
43	resultat	0004_auto_20210412_0045	2021-04-12 15:59:39.284892+00
44	resultat	0005_auto_20210412_0046	2021-04-12 15:59:40.059208+00
45	resultat	0006_auto_20210412_0404	2021-04-12 15:59:40.215377+00
46	profile	0006_profile_image_base64	2021-05-04 16:34:48.198623+00
47	profile	0007_auto_20210428_1601	2021-05-04 16:34:48.242483+00
48	resultat	0007_auto_20210507_0021	2021-05-07 01:30:50.061351+00
49	authentication	0009_usernotification	2021-05-09 15:55:01.476036+00
50	authentication	0010_auto_20210509_1343	2021-05-09 15:55:01.682548+00
51	resultat	0008_auto_20210509_1545	2021-05-09 15:55:01.846145+00
52	resultat	0009_auto_20210509_1548	2021-05-09 15:55:01.984712+00
53	authentication	0011_user_is_available	2021-05-17 01:19:20.55475+00
54	profile	0008_auto_20210510_0229	2021-05-17 01:19:20.590448+00
55	profile	0009_auto_20210516_1808	2021-05-17 01:19:20.666542+00
56	resultat	0010_auto_20210516_1423	2021-05-17 01:19:20.700996+00
57	resultat	0011_auto_20210516_1424	2021-05-17 01:19:20.805087+00
58	resultat	0012_auto_20210516_1808	2021-05-17 01:19:20.84199+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
t7ibpn9y1u8eksz7rs5d2p34nzc5t6jx	.eJxVjDsOwjAQBe_iGllO4i8lfc5g7a43OIBsKU4qxN1JpBTQzsx7bxFhW3PcGi9xTuIqnLj8MgR6cjlEekC5V0m1rMuM8kjkaZsca-LX7Wz_DjK0vK_ZDgwm4DSozhnHHPrkkwbNBogmH0j1TiMab61XameWuxA8ORpQuyA-X_gxOCI:1lVhux:Fy9_YrI9_j96_Ijm5-2pXpKGH02xvWy3d_yEuJAU_hs	2021-04-25 21:46:55.07153+00
\.


--
-- Data for Name: profile_permission; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.profile_permission (id, created_at, updated_at, view, app, view_perm, description) FROM stdin;
\.


--
-- Data for Name: profile_profile; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.profile_profile (id, created_at, updated_at, bio, image, role_id, user_id, branch, city, "firstName", "lastName", "pdfResult", school, tel, "fullName", image_base64) FROM stdin;
1	2021-04-01 13:32:17.895386+00	2021-04-01 13:32:17.89541+00			\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	2021-04-11 17:29:50.853812+00	2021-04-11 17:29:50.853845+00			\N	3	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	2021-04-11 17:37:57.601309+00	2021-04-11 17:37:57.601355+00			\N	4	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	2021-04-11 18:38:19.126304+00	2021-04-11 18:38:19.126362+00			\N	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	2021-04-11 19:11:18.66111+00	2021-04-11 19:11:18.661166+00			\N	6	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	2021-04-11 21:46:30.329747+00	2021-04-11 21:46:30.329799+00			\N	7	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	2021-04-12 16:17:21.010427+00	2021-04-12 16:17:21.010479+00			\N	8	\N	\N	\N	\N	\N	\N	\N	adnan mojahid	\N
10	2021-04-13 15:40:52.293551+00	2021-04-13 15:40:52.293599+00			\N	12	\N	\N	\N	\N	\N	\N	\N	Mohamed Amine Bouchikhi	\N
11	2021-04-13 16:42:53.517934+00	2021-04-13 16:42:53.517977+00			\N	13	\N	\N	\N	\N	\N	\N	\N	kamal	\N
12	2021-04-13 16:52:49.691294+00	2021-04-13 16:52:49.691344+00			\N	14	\N	\N	\N	\N	\N	\N	\N	makan ilias	\N
13	2021-04-13 19:09:27.801823+00	2021-04-13 19:09:27.801878+00			\N	15	\N	\N	\N	\N	\N	\N	\N	karim adio	\N
2	2021-04-08 21:17:33.959101+00	2021-04-08 21:17:33.959149+00		/assets/images/eva.png	\N	2	science math	Tanger	\N	\N	\N	Tangerine	0666863425	User2	\N
14	2021-04-16 23:22:54.217088+00	2021-04-16 23:22:54.217126+00			\N	16	\N	\N	\N	\N	\N	\N	\N	Halim Bakkali	\N
15	2021-04-17 22:10:03.998195+00	2021-04-17 22:10:03.998255+00			\N	17	\N	\N	\N	\N	\N	\N	\N	mohamed amine bouch	\N
16	2021-04-18 12:41:23.335226+00	2021-04-18 12:41:23.335267+00			\N	18	\N	\N	\N	\N	\N	\N	\N	test7	\N
17	2021-04-18 14:00:17.78424+00	2021-04-18 14:00:17.784281+00			\N	19	\N	\N	\N	\N	\N	\N	\N	adil test	\N
18	2021-04-18 23:26:04.977654+00	2021-04-18 23:26:04.977709+00			\N	20	\N	\N	\N	\N	\N	\N	\N	test5	\N
19	2021-04-19 11:34:11.460628+00	2021-04-19 11:34:11.460682+00			\N	21	\N	\N	\N	\N	\N	\N	\N	zakar6	\N
20	2021-04-19 16:11:19.734229+00	2021-04-19 16:11:19.73427+00			\N	22	\N	\N	\N	\N	\N	\N	\N	aimane serhani	\N
21	2021-04-21 04:12:12.747068+00	2021-04-21 04:12:12.74712+00			\N	23	\N	\N	\N	\N	\N	\N	\N	Test User	\N
22	2021-04-26 18:59:16.720786+00	2021-04-26 18:59:16.720846+00			\N	24	\N	\N	\N	\N	\N	\N	\N	zakar4	\N
23	2021-04-27 15:20:30.126622+00	2021-04-27 15:20:30.126659+00			\N	25	\N	\N	\N	\N	\N	\N	\N	test user 1	\N
24	2021-05-03 12:57:32.165376+00	2021-05-03 12:57:32.165421+00			\N	26	\N	\N	\N	\N	\N	\N	\N	\N	\N
25	2021-05-03 18:35:01.913666+00	2021-05-03 18:35:01.913723+00			\N	27	\N	\N	\N	\N	\N	\N	\N	\N	\N
26	2021-05-03 21:13:10.826304+00	2021-05-03 21:13:10.826342+00			\N	28	\N	\N	\N	\N	\N	\N	\N	\N	\N
27	2021-05-05 13:48:10.896985+00	2021-05-05 13:48:10.897077+00			\N	31	\N	\N	\N	\N	\N	\N	\N	yuamij	\N
28	2021-05-05 15:32:43.309861+00	2021-05-05 15:32:43.309893+00			\N	32	\N	\N	\N	\N	\N	\N	\N	Mohamed Amine Test	\N
29	2021-05-05 17:50:15.632662+00	2021-05-05 17:50:15.632691+00			\N	33	\N	\N	\N	\N	\N	\N	\N	qpqr test	\N
30	2021-05-05 18:49:31.588315+00	2021-05-05 18:49:31.588357+00			\N	34	\N	\N	\N	\N	\N	\N	\N	jbejkvbqkej	\N
31	2021-05-05 22:50:03.064488+00	2021-05-05 22:50:03.064566+00			\N	35	\N	\N	\N	\N	\N	\N	\N	Test ays	\N
32	2021-05-06 01:25:46.665718+00	2021-05-06 01:25:46.665753+00			\N	36	\N	\N	\N	\N	\N	\N	\N	bouchikhi aminem	\N
33	2021-05-06 16:43:56.971175+00	2021-05-06 16:43:56.971222+00			\N	37	\N	\N	\N	\N	\N	\N	\N	testyt	\N
34	2021-05-09 17:18:12.203221+00	2021-05-09 17:18:12.203265+00			\N	38	\N	\N	\N	\N	\N	\N	\N	Larbi Alaoui	\N
35	2021-05-10 17:57:26.141955+00	2021-05-10 17:57:26.142011+00			\N	39	\N	\N	\N	\N	\N	\N	\N	test4	\N
36	2021-05-10 17:59:34.636212+00	2021-05-10 17:59:34.636256+00			\N	40	\N	\N	\N	\N	\N	\N	\N	mohamed aimane	\N
37	2021-05-11 22:37:34.624471+00	2021-05-11 22:37:34.624501+00			\N	43	\N	\N	\N	\N	\N	\N	\N	test userr	\N
38	2021-05-11 23:29:02.583931+00	2021-05-11 23:29:02.583969+00			\N	44	\N	\N	\N	\N	\N	\N	\N	zakarghh	\N
39	2021-05-11 23:30:51.222182+00	2021-05-11 23:30:51.222224+00			\N	45	\N	\N	\N	\N	\N	\N	\N	test makan	\N
40	2021-05-11 23:33:34.380025+00	2021-05-11 23:33:34.380071+00			\N	46	\N	\N	\N	\N	\N	\N	\N	qopa limar	\N
41	2021-05-12 12:24:24.683453+00	2021-05-12 12:24:24.683489+00			\N	47	\N	\N	\N	\N	\N	\N	\N	makj kdjkx	\N
42	2021-05-12 21:48:54.457351+00	2021-05-12 21:48:54.457422+00			\N	48	\N	\N	\N	\N	\N	\N	\N	test user user	\N
43	2021-05-12 22:22:54.954042+00	2021-05-12 22:22:54.954092+00			\N	49	\N	\N	\N	\N	\N	\N	\N	test lebra	\N
44	2021-05-13 11:25:10.241474+00	2021-05-13 11:25:10.241531+00			\N	50	\N	\N	\N	\N	\N	\N	\N	test  kobra	\N
45	2021-05-13 20:58:19.614074+00	2021-05-13 20:58:19.614124+00			\N	51	40	Rabat	\N	\N	\N	Ibn Ghazi	0666863425	salma bouchikhi	\N
46	2021-05-13 21:23:33.562779+00	2021-05-13 21:23:33.562839+00			\N	52	22	Rabat	\N	\N	\N	Ibn Ghazi	0666863425	gdihi adnan	\N
48	2021-05-13 22:01:27.683434+00	2021-05-13 22:01:27.683506+00			\N	54	51	tanger	\N	\N	\N	mohammadi	06666666666	Adnane GDIHI	\N
49	2021-05-14 18:48:18.437445+00	2021-05-14 18:48:18.437496+00			\N	57	22	rabat	\N	\N	\N		0600000000	karim adiw	\N
50	2021-05-14 19:10:46.891744+00	2021-05-14 19:10:46.891779+00			\N	58	\N	\N	\N	\N	\N	\N	\N	test kskdj	\N
47	2021-05-13 21:34:55.989233+00	2021-05-13 21:34:55.989268+00			\N	53			\N	\N	\N		\N	makqn lobra	\N
51	2021-05-14 19:24:18.105961+00	2021-05-14 19:24:18.106011+00			\N	59	\N	\N	\N	\N	\N	\N	\N	zakar ghjk	\N
52	2021-05-14 19:31:07.590798+00	2021-05-14 19:31:07.590898+00			\N	60			\N	\N	\N		\N	karim adip	\N
53	2021-05-15 11:59:15.33609+00	2021-05-15 11:59:15.336131+00			\N	61			\N	\N	\N		\N	karim adiob	\N
54	2021-05-16 15:59:50.543627+00	2021-05-16 15:59:50.543676+00			\N	62			\N	\N	\N		\N	Jaiain lmoop	\N
55	2021-05-16 16:42:56.18766+00	2021-05-16 16:42:56.187722+00			\N	63	\N	\N	\N	\N	\N	\N	\N	kalou dialou	\N
9	2021-04-13 15:40:33.439503+00	2021-04-13 15:40:33.439528+00			\N	11	23		\N	\N	\N		\N	ttst	\N
56	2021-05-17 01:20:42.166524+00	2021-05-17 01:20:42.166645+00			\N	64	3	Rabat	\N	\N	\N	Ibn Ghazi	0666863425	Jhon bouch	\N
57	2021-05-17 02:14:10.168418+00	2021-05-17 02:14:10.16847+00			\N	65	\N	\N	\N	\N	\N	\N	\N	inass majdoubi	\N
58	2021-05-17 13:03:12.44129+00	2021-05-17 13:03:12.441346+00			\N	66	\N	\N	\N	\N	\N	\N	\N	Karim Rouifi	\N
59	2021-05-17 14:08:55.542393+00	2021-05-17 14:08:55.542438+00			\N	67	2	RABAT	\N	\N	\N	testing school	0666666666	tester1	\N
61	2021-05-17 16:40:43.701673+00	2021-05-17 16:40:43.701748+00			\N	69			\N	\N	\N		\N	karim adiov	\N
60	2021-05-17 15:14:47.889284+00	2021-05-17 15:14:47.889321+00			\N	68	3	Rabat	\N	\N	\N	tanger	0666863425	amine amine	\N
63	2021-05-17 16:45:50.203707+00	2021-05-17 16:45:50.203766+00			\N	71	\N	\N	\N	\N	\N	\N	\N	zakar gaga	\N
64	2021-05-17 16:49:03.72788+00	2021-05-17 16:49:03.727931+00			\N	72			\N	\N	\N		\N	karim adiom	\N
62	2021-05-17 16:45:38.97924+00	2021-05-17 16:45:38.979289+00			\N	70	21	Rabat	\N	\N	\N	Ibn Ghazi	0666863425	amine amineg	\N
65	2021-05-17 16:51:50.097503+00	2021-05-17 16:51:50.097568+00			\N	73	\N	\N	\N	\N	\N	\N	\N	yuam lala	\N
66	2021-05-17 16:55:22.654522+00	2021-05-17 16:55:22.654559+00			\N	74	23		\N	\N	\N		\N		\N
\.


--
-- Data for Name: profile_role; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.profile_role (id, created_at, updated_at, role) FROM stdin;
\.


--
-- Data for Name: profile_role_permission; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.profile_role_permission (id, role_id, permission_id) FROM stdin;
\.


--
-- Data for Name: resultat_resulatapersona; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.resultat_resulatapersona (id, name, pourcentage, description, resultat_persona_id) FROM stdin;
\.


--
-- Data for Name: resultat_resulatmetier; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.resultat_resulatmetier (id, name, pourcentage, description, resultat_metier_id) FROM stdin;
\.


--
-- Data for Name: resultat_resultat; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.resultat_resultat (id, name, description, membre_id, test_id, creatif, entreprenant, investigateur, methodique, metier1, metier10, metier11, metier12, metier13, metier14, metier2, metier3, metier4, metier5, metier6, metier7, metier8, metier9, pratique, social, "creatifDesc", "entreprenantDesc", "investigateurDesc", "methodiqueDesc", "pratiqueDesc", "socialDesc", "imagePdf") FROM stdin;
1	amine	\N	8	1	70.74074074074073	61.25000000000001	74.44444444444444	58.2051282051282	42.58620689655173	47.432432432432435	47.5	40.64102564102564	46.70731707317073	43.205128205128204	51.11111111111111	41.470588235294116	54.39393939393939	39.13793103448276	55.625	59	52.93103448275862	40	58.26086956521739	76.15384615384615	\N	\N	\N	\N	\N	\N	
2	amine	\N	8	2	59.62962962962963	58.12500000000001	68.88888888888889	68.46153846153847	59.827586206896555	47.432432432432435	55.00000000000001	56.02564102564103	46.70731707317073	48.33333333333333	53.888888888888886	53.23529411764706	60.45454545454545	49.48275862068966	58.75	59	42.58620689655173	53.888888888888886	71.30434782608695	53.07692307692308	\N	\N	\N	\N	\N	\N	
3	amine	\N	9	3	70.74074074074073	73.75	74.44444444444444	65.8974358974359	46.03448275862069	55.54054054054054	50	50.8974358974359	54.024390243902445	56.02564102564103	48.33333333333333	56.1764705882353	51.36363636363637	56.37931034482758	55.625	47	49.48275862068966	56.666666666666664	69.1304347826087	72.3076923076923	\N	\N	\N	\N	\N	\N	
4	amine	\N	10	4	67.03703703703702	76.875	63.33333333333333	63.33333333333333	46.03448275862069	52.83783783783784	42.50000000000001	53.46153846153846	54.024390243902445	53.46153846153846	51.11111111111111	53.23529411764706	48.33333333333333	63.275862068965516	46.25	43.00000000000001	49.48275862068966	59.44444444444444	62.60869565217391	72.3076923076923	\N	\N	\N	\N	\N	\N	
5	amine	\N	9	5	70.74074074074073	76.875	74.44444444444444	65.8974358974359	46.03448275862069	55.54054054054054	50	53.46153846153846	54.024390243902445	56.02564102564103	51.11111111111111	59.11764705882353	48.33333333333333	56.37931034482758	55.625	47	49.48275862068966	53.888888888888886	66.95652173913042	76.15384615384615	\N	\N	\N	\N	\N	\N	
6	amine	\N	11	6	74.44444444444444	70.625	80	60.769230769230774	46.03448275862069	42.02702702702703	50	45.769230769230774	41.82926829268293	48.33333333333333	53.888888888888886	41.470588235294116	54.39393939393939	39.13793103448276	71.25	59	59.827586206896555	48.33333333333333	64.78260869565217	60.769230769230774	\N	\N	\N	\N	\N	\N	
7	amine	\N	12	7	67.03703703703702	64.375	57.77777777777777	58.2051282051282	42.58620689655173	47.432432432432435	44.99999999999999	45.769230769230774	49.146341463414636	45.769230769230774	48.33333333333333	44.41176470588235	51.36363636363637	56.37931034482758	49.375	39	42.58620689655173	53.888888888888886	51.73913043478261	80	\N	\N	\N	\N	\N	\N	
8	amine	\N	13	8	70.74074074074073	73.75	68.88888888888889	63.33333333333333	46.03448275862069	52.83783783783784	47.5	50.8974358974359	56.46341463414634	56.02564102564103	53.888888888888886	53.23529411764706	51.36363636363637	56.37931034482758	49.375	43.00000000000001	52.93103448275862	53.888888888888886	60.434782608695656	76.15384615384615	\N	\N	\N	\N	\N	\N	
9	amine	\N	8	9	59.62962962962963	73.75	57.77777777777777	68.46153846153847	49.48275862068966	50.13513513513514	47.5	48.33333333333333	51.58536585365854	53.46153846153846	45.55555555555556	50.294117647058826	33.18181818181818	49.48275862068966	40	39	56.37931034482758	51.11111111111111	66.95652173913042	64.61538461538461	\N	\N	\N	\N	\N	\N	
10	amine	\N	8	10	70.74074074074073	61.25000000000001	85.55555555555556	68.46153846153847	52.93103448275862	52.83783783783784	44.99999999999999	50.8974358974359	44.26829268292683	43.205128205128204	62.22222222222222	50.294117647058826	51.36363636363637	46.03448275862069	58.75	55.00000000000001	56.37931034482758	51.11111111111111	71.30434782608695	53.07692307692308	\N	\N	\N	\N	\N	\N	
11	amine	\N	9	11	70.74074074074073	76.875	74.44444444444444	65.8974358974359	46.03448275862069	55.54054054054054	50	53.46153846153846	54.024390243902445	56.02564102564103	51.11111111111111	59.11764705882353	48.33333333333333	56.37931034482758	55.625	47	49.48275862068966	53.888888888888886	66.95652173913042	76.15384615384615	\N	\N	\N	\N	\N	\N	
12	amine	\N	9	12	70.74074074074073	76.875	74.44444444444444	65.8974358974359	46.03448275862069	55.54054054054054	50	53.46153846153846	54.024390243902445	56.02564102564103	51.11111111111111	59.11764705882353	48.33333333333333	56.37931034482758	55.625	47	49.48275862068966	53.888888888888886	66.95652173913042	76.15384615384615	\N	\N	\N	\N	\N	\N	
13	amine	\N	9	13	70.74074074074073	76.875	74.44444444444444	65.8974358974359	46.03448275862069	55.54054054054054	50	53.46153846153846	54.024390243902445	56.02564102564103	51.11111111111111	59.11764705882353	48.33333333333333	56.37931034482758	55.625	47	49.48275862068966	53.888888888888886	66.95652173913042	76.15384615384615	\N	\N	\N	\N	\N	\N	
14	amine	\N	10	14	70.74074074074073	76.875	68.88888888888889	58.2051282051282	49.48275862068966	55.54054054054054	44.99999999999999	53.46153846153846	54.024390243902445	53.46153846153846	51.11111111111111	56.1764705882353	45.3030303030303	63.275862068965516	46.25	47	52.93103448275862	59.44444444444444	62.60869565217391	83.84615384615384	\N	\N	\N	\N	\N	\N	
15	amine	\N	18	15	70.74074074074073	76.875	74.44444444444444	65.8974358974359	46.03448275862069	55.54054054054054	50	53.46153846153846	54.024390243902445	56.02564102564103	51.11111111111111	59.11764705882353	48.33333333333333	56.37931034482758	55.625	47	49.48275862068966	53.888888888888886	66.95652173913042	76.15384615384615	\N	\N	\N	\N	\N	\N	
16	amine	\N	19	16	67.03703703703702	73.75	68.88888888888889	63.33333333333333	46.03448275862069	55.54054054054054	47.5	50.8974358974359	54.024390243902445	56.02564102564103	48.33333333333333	59.11764705882353	42.27272727272727	56.37931034482758	49.375	39	46.03448275862069	51.11111111111111	62.60869565217391	76.15384615384615	\N	\N	\N	\N	\N	\N	
17	amine	\N	18	17	33.7037037037037	33.125	30	32.56410256410256	15	15	17.5	17.564102564102562	15	15	17.777777777777775	17.941176470588236	15	15	18.125	15	15	15	30	33.84615384615385	\N	\N	\N	\N	\N	\N	
18	amine	\N	23	18	59.62962962962963	73.75	57.77777777777777	71.02564102564102	56.37931034482758	47.432432432432435	47.5	53.46153846153846	49.146341463414636	53.46153846153846	51.11111111111111	56.1764705882353	42.27272727272727	56.37931034482758	43.125	43.00000000000001	56.37931034482758	53.888888888888886	66.95652173913042	64.61538461538461	\N	\N	\N	\N	\N	\N	
19	amine	\N	28	19	70	70	68	63	46	50	52	48	58	58	48	50	39	42	46	47	59	48	62	72	\N	\N	\N	\N	\N	\N	
20	amine	\N	28	20	30	30	30	30	15	15	15	15	15	15	15	15	15	15	15	15	15	15	30	30	\N	\N	\N	\N	\N	\N	
21	amine	\N	28	21	30	30	30	30	15	15	15	15	15	15	15	15	15	15	15	15	15	15	30	30	\N	\N	\N	\N	\N	\N	
22	amine	\N	28	22	30	30	30	30	15	15	15	15	15	15	15	15	15	15	15	15	15	15	30	30	\N	\N	\N	\N	\N	\N	
23	amine	\N	27	23	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	
24	amine	\N	29	24	70	80	80	65	56	55	47	58	51	56	65	59	51	56	68	59	56	53	62	76	\N	\N	\N	\N	\N	\N	
25	amine	\N	32	25	67	61	80	60	49	50	47	50	54	50	56	50	60	46	49	43	52	40	58	64	\N	\N	\N	\N	\N	\N	
26	amine	\N	32	26	30	30	30	30	15	15	15	15	15	15	15	15	15	15	15	15	15	15	30	30	\N	\N	\N	\N	\N	\N	
27	amine	\N	32	27	63	67	57	65	52	52	55	45	46	45	48	50	42	49	43	47	59	40	60	64	\N	\N	\N	\N	\N	\N	
28	amine	\N	32	28	52	58	63	73	52	55	52	53	54	45	51	50	51	42	46	59	56	40	64	56	\N	\N	\N	\N	\N	\N	
29	amine	\N	32	29	30	30	30	32	15	15	15	17	17	17	15	15	18	15	15	15	15	17	32	30	\N	\N	\N	\N	\N	\N	
30	amine	\N	33	30	63	64	57	58	56	47	42	48	44	45	48	44	36	46	43	43	39	45	49	68	\N	\N	\N	\N	\N	\N	
31	amine	\N	24	31	33	45	41	42	28	25	22	25	19	20	26	29	18	25	24	23	21	20	36	41	\N	\N	\N	\N	\N	\N	
32	amine	\N	24	32	30	30	30	30	15	15	15	15	15	15	15	15	15	15	15	15	15	15	30	30	\N	\N	\N	\N	\N	\N	
33	amine	\N	24	33	30	30	30	30	15	15	15	15	15	15	15	15	15	15	15	15	15	15	30	30	\N	\N	\N	\N	\N	\N	
34	amine	\N	29	34	70	73	80	71	59	52	44	53	41	43	62	47	48	39	65	63	59	45	66	53	\N	\N	\N	\N	\N	\N	
35	amine	\N	34	35	55	67	57	68	42	52	44	56	56	61	45	56	42	56	43	39	52	56	71	60	\N	\N	\N	\N	\N	\N	/test1.pdf
36	amine	\N	3	36	63	55	68	71	42	52	50	50	49	43	48	50	57	39	55	63	52	42	69	53	\N	\N	\N	\N	\N	\N	/test1.pdf
37	amine	\N	27	37	55	73	63	71	49	50	47	45	49	50	48	53	30	46	43	43	52	48	66	64	\N	\N	\N	\N	\N	\N	/test1.pdf
38	amine	\N	3	38	67	64	63	63	49	44	52	53	51	53	45	53	45	49	46	35	46	48	64	68	\N	\N	\N	\N	\N	\N	/test1.pdf
39	amine	\N	3	39	67	70	57	63	35	47	50	53	54	53	42	44	57	63	52	43	39	62	64	80	\N	\N	\N	\N	\N	\N	/test1.pdf
40	amine	\N	3	40	67	70	85	65	46	58	44	56	56	56	53	59	51	52	55	47	52	53	71	68	\N	\N	\N	\N	\N	\N	/test1.pdf
41	amine	\N	3	41	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
42	amine	\N	37	42	59	73	57	68	49	50	47	48	51	53	45	50	33	49	40	39	56	51	66	64	\N	\N	\N	\N	\N	\N	/test1.pdf
43	amine	\N	39	43	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
44	amine	\N	40	44	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
45	amine	\N	40	45	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
46	amine	\N	41	46	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
47	amine	\N	43	47	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
48	amine	\N	33	48	70	76	57	63	46	58	47	45	51	53	51	53	48	63	52	47	46	56	62	80	\N	\N	\N	\N	\N	\N	/test1.pdf
49	amine	\N	43	49	59	67	80	76	56	66	44	58	58	56	56	65	48	52	58	55	59	51	66	60	\N	\N	\N	\N	\N	\N	/test1.pdf
50	amine	\N	43	50	67	70	57	60	49	47	57	53	49	56	48	47	57	49	52	51	59	48	75	64	\N	\N	\N	\N	\N	\N	/test1.pdf
51	amine	\N	44	51	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
52	amine	\N	45	52	70	70	68	63	39	50	52	48	49	48	45	50	51	52	55	51	46	51	62	80	\N	\N	\N	\N	\N	\N	/test1.pdf
53	amine	\N	45	53	55	70	63	71	49	52	47	50	54	56	45	53	36	49	43	43	56	51	69	60	\N	\N	\N	\N	\N	\N	/test1.pdf
54	amine	\N	46	54	59	76	63	71	56	50	47	53	49	53	51	56	39	52	46	43	59	51	66	64	\N	\N	\N	\N	\N	\N	/test1.pdf
55	amine	\N	47	55	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
56	amine	\N	48	56	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
57	amine	\N	49	57	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
58	amine	\N	47	58	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
59	amine	\N	52	59	59	58	68	68	59	47	55	56	46	48	53	53	60	49	58	59	42	53	71	53	\N	\N	\N	\N	\N	\N	/test1.pdf
60	amine	\N	53	60	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
61	amine	\N	53	61	67	73	74	60	49	58	50	53	56	58	48	59	48	59	49	35	49	53	64	80	\N	\N	\N	\N	\N	\N	/test1.pdf
62	amine	\N	54	62	52	64	68	60	46	47	50	48	49	53	48	53	42	56	52	51	49	53	69	68	\N	\N	\N	\N	\N	\N	/test1.pdf
63	amine	\N	9	63	70	67	74	71	46	50	44	53	51	50	48	53	48	49	61	47	39	56	64	64	\N	\N	\N	\N	\N	\N	/test1.pdf
64	amine	\N	9	64	63	64	63	73	49	55	47	56	51	50	45	59	57	56	52	43	52	56	73	60	\N	\N	\N	\N	\N	\N	/test1.pdf
65	amine	\N	9	65	70	64	63	53	42	39	47	35	41	45	45	38	48	39	49	47	42	51	66	76	\N	\N	\N	\N	\N	\N	/test1.pdf
66	amine	\N	56	66	67	76	63	65	49	52	52	48	51	56	48	53	39	49	49	47	56	45	64	72	\N	\N	\N	\N	\N	\N	
67	amine	\N	57	67	59	73	57	68	49	50	47	48	51	53	45	50	33	49	40	39	56	51	66	64	\N	\N	\N	\N	\N	\N	
68	amine	\N	58	68	67	73	57	63	46	50	44	53	56	56	45	53	48	59	43	35	46	56	60	72	\N	\N	\N	\N	\N	\N	
69	amine	\N	59	69	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	
70	amine	\N	59	70	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	
71	amine	\N	59	71	70	76	74	65	46	55	50	53	54	56	51	59	48	56	55	47	49	53	66	76	\N	\N	\N	\N	\N	\N	
72	amine	\N	60	72	67	67	80	65	52	52	52	50	54	56	51	56	42	46	55	51	59	48	64	76	\N	\N	\N	\N	\N	\N	
73	amine	\N	61	73	74	73	80	65	46	52	50	50	54	56	51	59	48	52	58	47	49	53	64	76	\N	\N	\N	\N	\N	\N	
74	amine	\N	63	74	70	67	68	63	46	47	60	56	49	58	53	56	69	59	55	51	63	51	71	68	\N	\N	\N	\N	\N	\N	
75	amine	\N	62	75	67	73	57	63	35	50	44	53	54	50	45	47	51	63	55	47	39	65	62	80	\N	\N	\N	\N	\N	\N	
76	amine	\N	64	76	59	67	68	60	46	47	52	50	49	50	45	47	45	46	58	51	52	51	69	80	\N	\N	\N	\N	\N	\N	
77	amine	\N	65	77	67	64	68	63	52	52	52	48	49	56	48	56	51	56	58	59	49	56	69	72	\N	\N	\N	\N	\N	\N	
78	amine	\N	66	78	59	73	80	71	56	55	42	61	54	56	53	56	42	49	55	51	56	51	62	60	\N	\N	\N	\N	\N	\N	
79	amine	\N	66	79	63	67	63	60	63	58	52	58	54	56	56	56	51	63	49	43	49	48	56	76	\N	\N	\N	\N	\N	\N	
\.


--
-- Data for Name: test_element; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_element (id, created_at, updated_at, name) FROM stdin;
\.


--
-- Data for Name: test_element_questions; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_element_questions (id, element_id, question_id) FROM stdin;
\.


--
-- Data for Name: test_elementparam; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_elementparam (id, created_at, updated_at, name, param, param_value) FROM stdin;
\.


--
-- Data for Name: test_page; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_page (id, created_at, updated_at, name, title, description, test_id) FROM stdin;
\.


--
-- Data for Name: test_question; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_question (id, name) FROM stdin;
10	LIRE UN OUVRAGE SCIENTIFIQUE
1	DESSINER OU PEINDRE
2	JOUER AUX ÉCHECS
3	MONTER UN PUZZLE
4	TONDRE UNE PELOUSE
5	AIDER LES AUTRES
6	DIRIGER UN GROUPE
7	JOUER UN INSTRUMENT
8	PENSER CRITIQUE
9	ACTION HUMANITAIRE
11	LISTEZ MES COURSES
12	JEU DE ROLE
13	RÉPARER UN OBJET
14	LIRE UN ROMAN
15	SUIVRE VOS DEPENSES
16	VOUS DÉPENSER PHYSIQUEMENT
17	ORGANIZER VOTRE SEMAINE
18	AUTOFORMATION
19	MENER UNE ENQUÊTE
20	IMAGINEZ UN FILM
21	CONVAINCRE LES AUTRES
22	ECHANGER EN GROUPE
23	CONDUIRE UN CAMION
24	JEU DE RÉFLEXION
25	LIRE UN ARTICLE
26	AIDER AU DÉMÉNAGEMENT
27	RELEVER UN DÉFI
28	EXPLIQUER UN MYSTÈRE!
29	MONTER UN LEGO
30	NÉGOCIER LE PRIX
31	PRÉVOIR VOS TÂCHES
32	LANCER DES IDÉES
33	PRENDRE DES RISQUES
34	ADHÉRER UNE ASSOCIATION
35	GÉRER VOTRE BUDGET
36	RÉPARER UN OBJET
37	DÉVELLOPER VOTRE RÉSEAU
38	PRENDRE DES DÉCISIONS
39	PERSONNALISER VOTRE CHAMBRE
40	LANCER UN PROJET
41	ORGANISER VOTRE VOYAGE
42	RÉPARER UNE VOITURE
43	RASSEMBLER UN APPAREIL
44	RÉCONFORTER UN PROCHE
45	LISTER VOS COURSES
46	RÉNOVER VOTRE MAISON
47	PARTICIPER AUX COMPÉTIONS
48	S'HABILLER DIFFÉREMMENT
49	COLLECTIONNER DES OBJETS
50	S'INFORMER SUR INTERNET
51	ENSEIGNER UN ÉLÈVE
52	ORGANISER VOS AFFAIRES
53	CONVAINCRE LES AUTRES
54	ACTIVITÉE PHYSIQUE
55	LIBÉREZ VOTRE IMAGINATION
56	SOIGNER UNE PERSONNE
57	STRUCTURER VOTRE PLANNING
58	CRÉATION ARTISTIQUE
60	RELANCER UNE DISCUSSION
59	PRÉSENTER UN EXPOSÉ
\.


--
-- Data for Name: test_question_params; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_question_params (id, question_id, resultparam_id) FROM stdin;
4	1	4
6	1	6
9	1	9
11	1	11
15	1	15
16	1	16
20	1	20
22	2	2
23	2	3
24	2	4
26	2	6
30	2	10
32	2	12
36	2	16
38	2	18
40	2	20
42	3	2
43	3	3
46	3	6
51	3	11
52	3	12
55	3	15
56	3	16
57	3	17
59	3	19
64	4	4
66	4	6
69	4	9
71	4	11
75	4	15
76	4	16
80	4	20
81	5	1
82	5	2
85	5	5
88	5	8
89	5	9
90	5	10
97	5	17
99	5	19
100	5	20
101	6	1
102	6	2
103	6	3
105	6	5
106	6	6
107	6	7
108	6	8
109	6	9
110	6	10
111	6	11
112	6	12
113	6	13
114	6	14
116	6	16
117	6	17
119	6	19
120	6	20
123	7	3
124	7	4
126	7	6
131	7	11
134	7	14
139	7	19
140	7	20
141	8	1
142	8	2
143	8	3
148	8	8
150	8	10
152	8	12
153	8	13
156	8	16
158	8	18
160	8	20
161	9	1
163	9	3
165	9	5
170	9	10
171	9	11
176	9	16
177	9	17
179	9	19
181	10	1
182	10	2
183	10	3
186	10	6
187	10	7
190	10	10
192	10	12
196	10	16
198	10	18
206	11	6
209	11	9
212	11	12
213	11	13
214	11	14
216	11	16
220	11	20
223	12	3
224	12	4
225	12	5
228	12	8
230	12	10
231	12	11
234	12	14
235	12	15
239	12	19
240	12	20
244	13	4
246	13	6
247	13	7
248	13	8
251	13	11
255	13	15
256	13	16
260	13	20
263	14	3
268	14	8
271	14	11
273	14	13
274	14	14
275	14	15
276	14	16
279	14	19
283	15	3
285	15	5
289	15	9
292	15	12
293	15	13
294	15	14
296	15	16
297	15	17
300	15	20
301	16	1
303	16	3
304	16	4
305	16	5
306	16	6
307	16	7
308	16	8
309	16	9
310	16	10
311	16	11
312	16	12
313	16	13
314	16	14
316	16	16
320	16	20
321	17	1
323	17	3
325	17	5
327	17	7
328	17	8
329	17	9
330	17	10
332	17	12
336	17	16
337	17	17
340	17	20
341	18	1
342	18	2
343	18	3
344	18	4
346	18	6
347	18	7
348	18	8
350	18	10
351	18	11
352	18	12
353	18	13
354	18	14
356	18	16
357	18	17
358	18	18
360	18	20
361	19	1
362	19	2
369	19	9
370	19	10
372	19	12
373	19	13
374	19	14
375	19	15
376	19	16
378	19	18
380	19	20
384	20	4
386	20	6
387	20	7
388	20	8
391	20	11
395	20	15
398	20	18
399	20	19
403	21	3
404	21	4
405	21	5
409	21	9
410	21	10
412	21	12
413	21	13
414	21	14
416	21	16
417	21	17
419	21	19
422	22	2
424	22	4
425	22	5
430	22	10
431	22	11
432	22	12
433	22	13
434	22	14
437	22	17
439	22	19
440	22	20
447	23	7
449	23	9
450	23	10
453	23	13
454	23	14
456	23	16
457	23	17
460	23	20
462	24	2
464	24	4
466	24	6
467	24	7
470	24	10
475	24	15
476	24	16
477	24	17
480	24	20
481	25	1
482	25	2
483	25	3
490	25	10
491	25	11
492	25	12
493	25	13
494	25	14
496	25	16
497	25	17
498	25	18
500	25	20
504	26	4
505	26	5
507	26	7
509	26	9
510	26	10
511	26	11
512	26	12
513	26	13
516	26	16
519	26	19
520	26	20
521	27	1
522	27	2
523	27	3
525	27	5
528	27	8
529	27	9
530	27	10
531	27	11
532	27	12
533	27	13
534	27	14
535	27	15
537	27	17
538	27	18
540	27	20
541	28	1
542	28	2
543	28	3
550	28	10
551	28	11
552	28	12
553	28	13
555	28	15
556	28	16
558	28	18
562	29	2
563	29	3
564	29	4
565	29	5
568	29	8
571	29	11
572	29	12
573	29	13
574	29	14
575	29	15
576	29	16
580	29	20
585	30	5
586	30	6
587	30	7
589	30	9
592	30	12
593	30	13
594	30	14
595	30	15
597	30	17
599	30	19
601	31	1
602	31	2
603	31	3
604	31	4
605	31	5
606	31	6
607	31	7
608	31	8
609	31	9
610	31	10
611	31	11
612	31	12
613	31	13
614	31	14
616	31	16
617	31	17
620	31	20
621	32	1
622	32	2
624	32	4
625	32	5
626	32	6
628	32	8
629	32	9
630	32	10
631	32	11
632	32	12
633	32	13
634	32	14
635	32	15
637	32	17
639	32	19
641	33	1
642	33	2
644	33	4
646	33	6
647	33	7
648	33	8
650	33	10
652	33	12
653	33	13
654	33	14
656	33	16
657	33	17
660	33	20
661	34	1
664	34	4
668	34	8
671	34	11
672	34	12
673	34	13
674	34	14
677	34	17
679	34	19
680	34	20
682	35	2
684	35	4
685	35	5
687	35	7
688	35	8
689	35	9
690	35	10
691	35	11
692	35	12
693	35	13
694	35	14
696	35	16
697	35	17
700	35	20
702	36	2
704	36	4
706	36	6
707	36	7
709	36	9
712	36	12
717	36	17
718	36	18
720	36	20
721	37	1
722	37	2
723	37	3
724	37	4
725	37	5
726	37	6
727	37	7
728	37	8
729	37	9
730	37	10
731	37	11
732	37	12
733	37	13
734	37	14
735	37	15
737	37	17
738	37	18
739	37	19
740	37	20
741	38	1
742	38	2
743	38	3
744	38	4
748	38	8
750	38	10
752	38	12
753	38	13
754	38	14
755	38	15
756	38	16
757	38	17
763	39	3
766	39	6
769	39	9
770	39	10
771	39	11
773	39	13
774	39	14
775	39	15
776	39	16
780	39	20
781	40	1
782	40	2
783	40	3
784	40	4
785	40	5
786	40	6
787	40	7
788	40	8
789	40	9
790	40	10
791	40	11
792	40	12
793	40	13
794	40	14
796	40	16
797	40	17
799	40	19
800	40	20
804	41	4
807	41	7
808	41	8
809	41	9
811	41	11
813	41	13
815	41	15
817	41	17
819	41	19
820	41	20
822	42	2
823	42	3
824	42	4
826	42	6
827	42	7
829	42	9
830	42	10
833	42	13
836	42	16
838	42	18
840	42	20
842	43	2
843	43	3
846	43	6
847	43	7
849	43	9
856	43	16
858	43	18
860	43	20
861	44	1
865	44	5
869	44	9
870	44	10
875	44	15
879	44	19
884	45	4
889	45	9
892	45	12
893	45	13
894	45	14
896	45	16
900	45	20
902	46	2
904	46	4
905	46	5
906	46	6
907	46	7
909	46	9
911	46	11
912	46	12
914	46	14
915	46	15
917	46	17
920	46	20
921	47	1
922	47	2
923	47	3
925	47	5
928	47	8
930	47	10
931	47	11
934	47	14
936	47	16
937	47	17
939	47	19
940	47	20
942	48	2
944	48	4
945	48	5
949	48	9
951	48	11
953	48	13
954	48	14
955	48	15
957	48	17
959	48	19
962	49	2
964	49	4
966	49	6
967	49	7
971	49	11
973	49	13
974	49	14
977	49	17
979	49	19
980	49	20
981	50	1
982	50	2
983	50	3
986	50	6
988	50	8
990	50	10
991	50	11
992	50	12
993	50	13
994	50	14
995	50	15
996	50	16
997	50	17
998	50	18
1000	50	20
1001	51	1
1002	51	2
1003	51	3
1005	51	5
1009	51	9
1010	51	10
1012	51	12
1013	51	13
1014	51	14
1016	51	16
1019	51	19
1020	51	20
1021	52	1
1022	52	2
1026	52	6
1027	52	7
1028	52	8
1030	52	10
1031	52	11
1032	52	12
1033	52	13
1034	52	14
1036	52	16
1037	52	17
1040	52	20
1041	53	1
1042	53	2
1043	53	3
1045	53	5
1046	53	6
1048	53	8
1049	53	9
1050	53	10
1051	53	11
1052	53	12
1053	53	13
1054	53	14
1055	53	15
1058	53	18
1059	53	19
1060	53	20
1061	54	1
1063	54	3
1064	54	4
1065	54	5
1066	54	6
1067	54	7
1068	54	8
1069	54	9
1070	54	10
1071	54	11
1072	54	12
1073	54	13
1076	54	16
1080	54	20
1082	55	2
1084	55	4
1085	55	5
1086	55	6
1089	55	9
1091	55	11
1092	55	12
1093	55	13
1094	55	14
1095	55	15
1098	55	18
1101	56	1
1102	56	2
1111	56	11
1118	56	18
1119	56	19
1120	56	20
1121	57	1
1122	57	2
1123	57	3
1124	57	4
1125	57	5
1126	57	6
1127	57	7
1128	57	8
1129	57	9
1130	57	10
1131	57	11
1132	57	12
1133	57	13
1134	57	14
1136	57	16
1137	57	17
1140	57	20
1143	58	3
1146	58	6
1148	58	8
1149	58	9
1151	58	11
1153	58	13
1154	58	14
1155	58	15
1158	58	18
1159	58	19
1161	59	1
1162	59	2
1163	59	3
1164	59	4
1165	59	5
1169	59	9
1171	59	11
1172	59	12
1173	59	13
1174	59	14
1175	59	15
1176	59	16
1180	59	20
1183	60	3
1185	60	5
1188	60	8
1189	60	9
1190	60	10
1191	60	11
1192	60	12
1193	60	13
1194	60	14
1197	60	17
1199	60	19
1200	60	20
\.


--
-- Data for Name: test_resultparam; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_resultparam (id, name) FROM stdin;
1	A
2	B
3	C
4	D
5	E
6	F
7	G
8	H
9	I
10	J
11	K
12	L
13	M
14	N
15	CREATIF
16	METHODIQUE
17	ENTREPRENANT
18	INVESTIGATEUR
19	SOCIAL
20	PRATIQUE
\.


--
-- Data for Name: test_test; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_test (id, name, membre_id, created_at, question1, question10, question11, question12, question13, question14, question15, question16, question17, question18, question19, question2, question20, question3, question4, question5, question6, question7, question8, question9, updated_at) FROM stdin;
1	t8	8	2021-04-12 16:20:19.610088+00	JOUER AUX ÉCHECS	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	PENSER CRITIQUE	JEU DE ROLE	LIRE UN ROMAN	AUTOFORMATION	IMAGINEZ UN FILM	JEU DE RÉFLEXION	AIDER AU DÉMÉNAGEMENT	2021-04-12 16:20:19.610131+00
2	t8	8	2021-04-12 16:23:48.250799+00	DESSINER OU PEINDRE	EXPLIQUER UN MYSTÈRE!	PRÉVOIR VOS TÂCHES	ADHÉRER UNE ASSOCIATION	DÉVELLOPER VOTRE RÉSEAU	LANCER UN PROJET	RASSEMBLER UN APPAREIL	RÉNOVER VOTRE MAISON	PRÉSENTER UN EXPOSÉ	ENSEIGNER UN ÉLÈVE	ACTIVITÉE PHYSIQUE	TONDRE UNE PELOUSE	STRUCTURER VOTRE PLANNING	JOUER UN INSTRUMENT	LIRE UN OUVRAGE SCIENTIFIQUE	RÉPARER UN OBJET	VOUS DÉPENSER PHYSIQUEMENT	MENER UNE ENQUÊTE	ECHANGER EN GROUPE	LIRE UN ARTICLE	2021-04-12 16:23:48.250845+00
3	t9	9	2021-04-13 15:41:36.379875+00	DESSINER OU PEINDRE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-13 15:41:36.379993+00
4	t10	10	2021-04-13 15:42:16.407908+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	LIBÉREZ VOTRE IMAGINATION	AIDER LES AUTRES	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-04-13 15:42:16.407989+00
5	t9	9	2021-04-13 15:42:45.216603+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-13 15:42:45.216651+00
6	t11	11	2021-04-13 16:45:48.844006+00	DESSINER OU PEINDRE	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	LANCER UN PROJET	RASSEMBLER UN APPAREIL	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	LIBÉREZ VOTRE IMAGINATION	AIDER LES AUTRES	CRÉATION ARTISTIQUE	JOUER UN INSTRUMENT	LISTEZ MES COURSES	RÉPARER UN OBJET	AUTOFORMATION	IMAGINEZ UN FILM	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-13 16:45:48.844082+00
7	t12	12	2021-04-13 17:35:52.168989+00	MONTER UN PUZZLE	PRENDRE DES DÉCISIONS	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	LIBÉREZ VOTRE IMAGINATION	STRUCTURER VOTRE PLANNING	\N	\N	AIDER LES AUTRES	\N	ACTION HUMANITAIRE	LISTEZ MES COURSES	LIRE UN ROMAN	CONVAINCRE LES AUTRES	AIDER AU DÉMÉNAGEMENT	LANCER DES IDÉES	RÉPARER UN OBJET	2021-04-13 17:35:52.169257+00
8	t13	13	2021-04-13 19:11:26.818483+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	LIBÉREZ VOTRE IMAGINATION	AIDER LES AUTRES	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	LISTEZ MES COURSES	LIRE UN ROMAN	AUTOFORMATION	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-04-13 19:11:26.819015+00
9	t8	8	2021-04-14 13:21:57.754653+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	AIDER LES AUTRES	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-04-14 13:21:57.75525+00
10	t8	8	2021-04-14 14:47:43.747045+00	JOUER AUX ÉCHECS	MONTER UN LEGO	LANCER DES IDÉES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LANCER UN PROJET	RASSEMBLER UN APPAREIL	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ENSEIGNER UN ÉLÈVE	AIDER LES AUTRES	LIBÉREZ VOTRE IMAGINATION	PENSER CRITIQUE	LIRE UN OUVRAGE SCIENTIFIQUE	RÉPARER UN OBJET	VOUS DÉPENSER PHYSIQUEMENT	MENER UNE ENQUÊTE	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-14 14:47:43.747152+00
11	t9	9	2021-04-16 15:36:57.087895+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-16 15:36:57.088389+00
12	t9	9	2021-04-16 22:37:53.172906+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-16 22:37:53.173394+00
13	t9	9	2021-04-16 22:39:29.51587+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-16 22:39:29.516307+00
14	t10	10	2021-04-18 23:17:29.258714+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	PENSER CRITIQUE	JEU DE ROLE	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-04-18 23:17:29.258809+00
15	t18	18	2021-04-18 23:26:47.302308+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-18 23:26:47.302565+00
16	t19	19	2021-04-19 11:36:48.201953+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	RELANCER UNE DISCUSSION	DIRIGER UN GROUPE	\N	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-04-19 11:36:48.202619+00
17	t18	18	2021-04-26 18:56:12.034101+00	MONTER UN PUZZLE	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-04-26 18:56:12.034193+00
18	t23	23	2021-04-27 15:21:55.633435+00	MONTER UN PUZZLE	MONTER UN LEGO	PRÉVOIR VOS TÂCHES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	LANCER UN PROJET	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	PRÉSENTER UN EXPOSÉ	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	AIDER LES AUTRES	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-04-27 15:21:55.633513+00
19	tundefined	28	2021-05-05 15:34:35.303607+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	PENSER CRITIQUE	JEU DE ROLE	LIRE UN ROMAN	AUTOFORMATION	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-05-05 15:34:35.303749+00
20	tundefined	28	2021-05-05 15:35:22.50878+00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-05-05 15:35:22.508818+00
21	tundefined	28	2021-05-05 16:37:53.913524+00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-05-05 16:37:53.913668+00
22	tundefined	28	2021-05-05 16:38:34.723226+00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-05-05 16:38:34.723428+00
23	tundefined	27	2021-05-05 17:48:14.752674+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-05 17:48:14.752957+00
24	tundefined	29	2021-05-05 22:53:58.827717+00	MONTER UN PUZZLE	JEU DE RÉFLEXION	RELEVER UN DÉFI	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	PRENDRE DES DÉCISIONS	LANCER UN PROJET	RASSEMBLER UN APPAREIL	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	DIRIGER UN GROUPE	LIBÉREZ VOTRE IMAGINATION	AIDER LES AUTRES	DIRIGER UN GROUPE	JOUER UN INSTRUMENT	LIRE UN OUVRAGE SCIENTIFIQUE	RÉPARER UN OBJET	AUTOFORMATION	CONVAINCRE LES AUTRES	2021-05-05 22:53:58.828131+00
25	tundefined	32	2021-05-06 01:41:34.373427+00	JOUER AUX ÉCHECS	MONTER UN LEGO	PRENDRE DES RISQUES	ADHÉRER UNE ASSOCIATION	PRENDRE DES DÉCISIONS	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	LIBÉREZ VOTRE IMAGINATION	TONDRE UNE PELOUSE	STRUCTURER VOTRE PLANNING	PENSER CRITIQUE	LIRE UN OUVRAGE SCIENTIFIQUE	LIRE UN ROMAN	AUTOFORMATION	IMAGINEZ UN FILM	ECHANGER EN GROUPE	RELEVER UN DÉFI	2021-05-06 01:41:34.373861+00
26	tundefined	32	2021-05-06 01:42:22.835137+00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-05-06 01:42:22.835447+00
27	tundefined	32	2021-05-06 03:52:40.948541+00	MONTER UN PUZZLE	MONTER UN LEGO	PRÉVOIR VOS TÂCHES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	RÉCONFORTER UN PROCHE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	AIDER LES AUTRES	ACTIVITÉE PHYSIQUE	ACTION HUMANITAIRE	LIRE UN OUVRAGE SCIENTIFIQUE	LIRE UN ROMAN	AUTOFORMATION	IMAGINEZ UN FILM	ECHANGER EN GROUPE	RELEVER UN DÉFI	2021-05-06 03:52:40.948849+00
28	tundefined	32	2021-05-06 16:20:03.676385+00	JOUER AUX ÉCHECS	EXPLIQUER UN MYSTÈRE!	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	PRÉSENTER UN EXPOSÉ	ORGANISER VOS AFFAIRES	ACTIVITÉE PHYSIQUE	DIRIGER UN GROUPE	STRUCTURER VOTRE PLANNING	PENSER CRITIQUE	LIRE UN OUVRAGE SCIENTIFIQUE	LIRE UN ROMAN	AUTOFORMATION	IMAGINEZ UN FILM	ECHANGER EN GROUPE	AIDER AU DÉMÉNAGEMENT	2021-05-06 16:20:03.676961+00
29	tundefined	32	2021-05-06 16:23:03.339311+00	LISTER VOS COURSES	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-05-06 16:23:03.339537+00
30	tundefined	33	2021-05-06 16:46:33.146306+00	MONTER UN PUZZLE	ADHÉRER UNE ASSOCIATION	PRENDRE DES DÉCISIONS	LANCER UN PROJET	RÉCONFORTER UN PROCHE	RÉNOVER VOTRE MAISON	COLLECTIONNER DES OBJETS	ENSEIGNER UN ÉLÈVE	LIBÉREZ VOTRE IMAGINATION	CRÉATION ARTISTIQUE	\N	DIRIGER UN GROUPE	\N	ACTION HUMANITAIRE	LIRE UN OUVRAGE SCIENTIFIQUE	ORGANIZER VOTRE SEMAINE	MENER UNE ENQUÊTE	CONDUIRE UN CAMION	EXPLIQUER UN MYSTÈRE!	LANCER DES IDÉES	2021-05-06 16:46:33.146346+00
31	tundefined	24	2021-05-06 16:48:40.12598+00	MONTER UN PUZZLE	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	AIDER LES AUTRES	\N	ACTION HUMANITAIRE	LIRE UN OUVRAGE SCIENTIFIQUE	SUIVRE VOS DEPENSES	AUTOFORMATION	\N	\N	\N	2021-05-06 16:48:40.126355+00
32	tundefined	24	2021-05-06 16:49:45.087751+00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-05-06 16:49:45.087857+00
33	tundefined	24	2021-05-06 17:31:40.521278+00	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2021-05-06 17:31:40.521358+00
34	tundefined	29	2021-05-06 19:11:44.887435+00	DESSINER OU PEINDRE	JEU DE RÉFLEXION	RELEVER UN DÉFI	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	LANCER UN PROJET	RASSEMBLER UN APPAREIL	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	MONTER UN PUZZLE	ORGANISER VOS AFFAIRES	AIDER LES AUTRES	PENSER CRITIQUE	LIRE UN OUVRAGE SCIENTIFIQUE	RÉPARER UN OBJET	VOUS DÉPENSER PHYSIQUEMENT	AUTOFORMATION	MENER UNE ENQUÊTE	2021-05-06 19:11:44.88752+00
35	tundefined	34	2021-05-09 17:21:09.191766+00	JOUER AUX ÉCHECS	MONTER UN LEGO	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ENSEIGNER UN ÉLÈVE	LIBÉREZ VOTRE IMAGINATION	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	JOUER UN INSTRUMENT	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-05-09 17:21:09.191872+00
36	tundefined	3	2021-05-09 17:59:59.465913+00	JOUER AUX ÉCHECS	EXPLIQUER UN MYSTÈRE!	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	RÉNOVER VOTRE MAISON	PRÉSENTER UN EXPOSÉ	ORGANISER VOS AFFAIRES	ACTIVITÉE PHYSIQUE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	PENSER CRITIQUE	JEU DE ROLE	LIRE UN ROMAN	AUTOFORMATION	IMAGINEZ UN FILM	JEU DE RÉFLEXION	AIDER AU DÉMÉNAGEMENT	2021-05-09 17:59:59.465964+00
37	tundefined	27	2021-05-10 05:34:21.22585+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	RASSEMBLER UN APPAREIL	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	AIDER LES AUTRES	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	LIRE UN ARTICLE	2021-05-10 05:34:21.225911+00
38	tundefined	3	2021-05-10 17:27:20.202418+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	ADHÉRER UNE ASSOCIATION	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	RÉNOVER VOTRE MAISON	S'INFORMER SUR INTERNET	ENSEIGNER UN ÉLÈVE	SOIGNER UNE PERSONNE	TONDRE UNE PELOUSE	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LIRE UN OUVRAGE SCIENTIFIQUE	SUIVRE VOS DEPENSES	VOUS DÉPENSER PHYSIQUEMENT	CONVAINCRE LES AUTRES	ECHANGER EN GROUPE	RELEVER UN DÉFI	2021-05-10 17:27:20.202547+00
39	tundefined	3	2021-05-10 22:31:20.321728+00	JOUER AUX ÉCHECS	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	TONDRE UNE PELOUSE	LIBÉREZ VOTRE IMAGINATION	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	ECHANGER EN GROUPE	AIDER AU DÉMÉNAGEMENT	2021-05-10 22:31:20.321952+00
40	tundefined	3	2021-05-10 22:32:10.121207+00	JOUER AUX ÉCHECS	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	PENSER CRITIQUE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-10 22:32:10.121247+00
41	tundefined	3	2021-05-10 23:00:58.291263+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-10 23:00:58.291323+00
42	tundefined	37	2021-05-11 22:38:25.319008+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	AIDER LES AUTRES	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-05-11 22:38:25.319059+00
43	tundefined	39	2021-05-11 23:31:22.540121+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-11 23:31:22.540915+00
44	tundefined	40	2021-05-11 23:34:16.060125+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-11 23:34:16.060199+00
45	tundefined	40	2021-05-11 23:34:45.805287+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-11 23:34:45.805353+00
46	tundefined	41	2021-05-12 12:25:03.364862+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-12 12:25:03.366023+00
47	tundefined	43	2021-05-12 22:23:25.583139+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-12 22:23:25.583205+00
48	tundefined	33	2021-05-12 23:07:47.179754+00	MONTER UN PUZZLE	JEU DE RÉFLEXION	RELEVER UN DÉFI	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	DIRIGER UN GROUPE	CONVAINCRE LES AUTRES	AIDER LES AUTRES	TONDRE UNE PELOUSE	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	2021-05-12 23:07:47.180142+00
49	tundefined	43	2021-05-12 23:10:57.560003+00	JOUER AUX ÉCHECS	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	ACTIVITÉE PHYSIQUE	DIRIGER UN GROUPE	STRUCTURER VOTRE PLANNING	PENSER CRITIQUE	LIRE UN OUVRAGE SCIENTIFIQUE	LIRE UN ROMAN	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-12 23:10:57.560413+00
50	tundefined	43	2021-05-12 23:51:18.595185+00	DESSINER OU PEINDRE	MONTER UN LEGO	PRENDRE DES RISQUES	ADHÉRER UNE ASSOCIATION	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	RÉNOVER VOTRE MAISON	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	STRUCTURER VOTRE PLANNING	JOUER UN INSTRUMENT	JEU DE ROLE	RÉPARER UN OBJET	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	ECHANGER EN GROUPE	RELEVER UN DÉFI	2021-05-12 23:51:18.595898+00
51	tundefined	44	2021-05-13 11:25:40.382395+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-13 11:25:40.383036+00
52	tundefined	45	2021-05-13 20:59:21.542225+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	IMAGINEZ UN FILM	JEU DE RÉFLEXION	AIDER AU DÉMÉNAGEMENT	2021-05-13 20:59:21.542275+00
53	tundefined	45	2021-05-13 21:00:42.171761+00	JOUER AUX ÉCHECS	MONTER UN LEGO	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-05-13 21:00:42.171843+00
54	tundefined	46	2021-05-13 21:24:42.785641+00	MONTER UN PUZZLE	MONTER UN LEGO	PRÉVOIR VOS TÂCHES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	LANCER UN PROJET	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	AIDER LES AUTRES	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-05-13 21:24:42.785715+00
55	tundefined	47	2021-05-13 21:35:55.845081+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-13 21:35:55.845157+00
56	tundefined	48	2021-05-13 22:08:49.226445+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-13 22:08:49.226892+00
57	tundefined	49	2021-05-14 18:49:28.540483+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-14 18:49:28.540569+00
58	tundefined	47	2021-05-14 19:11:48.676654+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-14 19:11:48.67677+00
59	tundefined	52	2021-05-14 19:35:02.520545+00	DESSINER OU PEINDRE	EXPLIQUER UN MYSTÈRE!	PRÉVOIR VOS TÂCHES	ADHÉRER UNE ASSOCIATION	DÉVELLOPER VOTRE RÉSEAU	LANCER UN PROJET	RASSEMBLER UN APPAREIL	RÉNOVER VOTRE MAISON	PRÉSENTER UN EXPOSÉ	ENSEIGNER UN ÉLÈVE	ACTIVITÉE PHYSIQUE	TONDRE UNE PELOUSE	STRUCTURER VOTRE PLANNING	JOUER UN INSTRUMENT	LIRE UN OUVRAGE SCIENTIFIQUE	RÉPARER UN OBJET	VOUS DÉPENSER PHYSIQUEMENT	MENER UNE ENQUÊTE	ECHANGER EN GROUPE	LIRE UN ARTICLE	2021-05-14 19:35:02.520654+00
60	tundefined	53	2021-05-15 12:01:19.457256+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-15 12:01:19.457306+00
61	tundefined	53	2021-05-15 12:56:16.130073+00	JOUER AUX ÉCHECS	NÉGOCIER LE PRIX	LANCER DES IDÉES	ADHÉRER UNE ASSOCIATION	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-15 12:56:16.130492+00
62	tundefined	54	2021-05-16 16:00:34.601517+00	DESSINER OU PEINDRE	NÉGOCIER LE PRIX	PRÉVOIR VOS TÂCHES	GÉRER VOTRE BUDGET	DÉVELLOPER VOTRE RÉSEAU	RÉPARER UNE VOITURE	RASSEMBLER UN APPAREIL	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ENSEIGNER UN ÉLÈVE	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	JOUER UN INSTRUMENT	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	VOUS DÉPENSER PHYSIQUEMENT	IMAGINEZ UN FILM	ECHANGER EN GROUPE	RELEVER UN DÉFI	2021-05-16 16:00:34.601608+00
63	tundefined	9	2021-05-16 16:44:48.349828+00	MONTER UN PUZZLE	RELEVER UN DÉFI	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	TONDRE UNE PELOUSE	SOIGNER UNE PERSONNE	ACTION HUMANITAIRE	LISTEZ MES COURSES	LIRE UN OUVRAGE SCIENTIFIQUE	SUIVRE VOS DEPENSES	VOUS DÉPENSER PHYSIQUEMENT	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	2021-05-16 16:44:48.349903+00
64	tundefined	9	2021-05-16 16:46:27.191587+00	JOUER AUX ÉCHECS	MONTER UN LEGO	PRENDRE DES RISQUES	ADHÉRER UNE ASSOCIATION	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	PRÉSENTER UN EXPOSÉ	CONVAINCRE LES AUTRES	ACTIVITÉE PHYSIQUE	TONDRE UNE PELOUSE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	LISTEZ MES COURSES	RÉPARER UN OBJET	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-16 16:46:27.191629+00
65	tundefined	9	2021-05-16 21:30:24.287182+00	DESSINER OU PEINDRE	NÉGOCIER LE PRIX	LANCER DES IDÉES	ADHÉRER UNE ASSOCIATION	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	RASSEMBLER UN APPAREIL	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	ENSEIGNER UN ÉLÈVE	SOIGNER UNE PERSONNE	AIDER LES AUTRES	CRÉATION ARTISTIQUE	JOUER UN INSTRUMENT	JEU DE ROLE	RÉPARER UN OBJET	ORGANIZER VOTRE SEMAINE	MENER UNE ENQUÊTE	JEU DE RÉFLEXION	LIRE UN ARTICLE	2021-05-16 21:30:24.287537+00
66	tundefined	56	2021-05-17 01:26:09.204024+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-17 01:26:09.204144+00
67	inass majdoubi	57	2021-05-17 02:14:55.324216+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	GÉRER VOTRE BUDGET	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	AIDER LES AUTRES	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-05-17 02:14:55.324287+00
68	Karim Rouifi	58	2021-05-17 13:04:05.479404+00	MONTER UN PUZZLE	MONTER UN LEGO	PRENDRE DES RISQUES	ADHÉRER UNE ASSOCIATION	PRENDRE DES DÉCISIONS	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	LIBÉREZ VOTRE IMAGINATION	TONDRE UNE PELOUSE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	RELEVER UN DÉFI	2021-05-17 13:04:05.479455+00
69	tester1	59	2021-05-17 14:09:36.234193+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-17 14:09:36.234287+00
70	tester1	59	2021-05-17 14:12:25.102839+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-17 14:12:25.102914+00
71	tester1	59	2021-05-17 14:46:20.193294+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-17 14:46:20.193761+00
72	nnnnnn	60	2021-05-17 15:15:40.410907+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	DÉVELLOPER VOTRE RÉSEAU	RÉPARER UNE VOITURE	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	PENSER CRITIQUE	JEU DE ROLE	LIRE UN ROMAN	VOUS DÉPENSER PHYSIQUEMENT	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	LIRE UN ARTICLE	2021-05-17 15:15:40.410977+00
73	karim adiov	61	2021-05-17 16:41:30.852417+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	PRENDRE DES RISQUES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	S'INFORMER SUR INTERNET	CONVAINCRE LES AUTRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	ACTION HUMANITAIRE	JEU DE ROLE	SUIVRE VOS DEPENSES	AUTOFORMATION	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	RELEVER UN DÉFI	2021-05-17 16:41:30.852471+00
74	zakar gaga	63	2021-05-17 16:46:28.32988+00	DESSINER OU PEINDRE	MONTER UN LEGO	PRÉVOIR VOS TÂCHES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	LANCER UN PROJET	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	PRÉSENTER UN EXPOSÉ	CONVAINCRE LES AUTRES	LIBÉREZ VOTRE IMAGINATION	DIRIGER UN GROUPE	RELANCER UNE DISCUSSION	JOUER UN INSTRUMENT	JEU DE ROLE	RÉPARER UN OBJET	AUTOFORMATION	IMAGINEZ UN FILM	ECHANGER EN GROUPE	RELEVER UN DÉFI	2021-05-17 16:46:28.32992+00
75	hicham aroi	62	2021-05-17 16:46:50.430604+00	MONTER UN PUZZLE	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PERSONNALISER VOTRE CHAMBRE	RÉPARER UNE VOITURE	LISTER VOS COURSES	S'HABILLER DIFFÉREMMENT	COLLECTIONNER DES OBJETS	CONVAINCRE LES AUTRES	LIBÉREZ VOTRE IMAGINATION	AIDER LES AUTRES	RELANCER UNE DISCUSSION	ACTION HUMANITAIRE	LISTEZ MES COURSES	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	JEU DE RÉFLEXION	AIDER AU DÉMÉNAGEMENT	2021-05-17 16:46:50.430649+00
76	karim adiom	64	2021-05-17 16:49:59.674149+00	JOUER AUX ÉCHECS	NÉGOCIER LE PRIX	LANCER DES IDÉES	ADHÉRER UNE ASSOCIATION	PERSONNALISER VOTRE CHAMBRE	ORGANISER VOTRE VOYAGE	RASSEMBLER UN APPAREIL	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	JOUER UN INSTRUMENT	LISTEZ MES COURSES	RÉPARER UN OBJET	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	ECHANGER EN GROUPE	AIDER AU DÉMÉNAGEMENT	2021-05-17 16:49:59.674203+00
77	yuam lala	65	2021-05-17 16:52:18.213369+00	DESSINER OU PEINDRE	NÉGOCIER LE PRIX	PRÉVOIR VOS TÂCHES	RÉPARER UN OBJET	DÉVELLOPER VOTRE RÉSEAU	RÉPARER UNE VOITURE	RÉCONFORTER UN PROCHE	RÉNOVER VOTRE MAISON	S'INFORMER SUR INTERNET	ENSEIGNER UN ÉLÈVE	SOIGNER UNE PERSONNE	DIRIGER UN GROUPE	STRUCTURER VOTRE PLANNING	JOUER UN INSTRUMENT	JEU DE ROLE	LIRE UN ROMAN	VOUS DÉPENSER PHYSIQUEMENT	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	LIRE UN ARTICLE	2021-05-17 16:52:18.213437+00
78	karim adiox	66	2021-05-17 16:56:02.270103+00	JOUER AUX ÉCHECS	NÉGOCIER LE PRIX	LANCER DES IDÉES	RÉPARER UN OBJET	PRENDRE DES DÉCISIONS	LANCER UN PROJET	LISTER VOS COURSES	PARTICIPER AUX COMPÉTIONS	S'INFORMER SUR INTERNET	ORGANISER VOS AFFAIRES	LIBÉREZ VOTRE IMAGINATION	DIRIGER UN GROUPE	CRÉATION ARTISTIQUE	PENSER CRITIQUE	LIRE UN OUVRAGE SCIENTIFIQUE	SUIVRE VOS DEPENSES	ORGANIZER VOTRE SEMAINE	CONVAINCRE LES AUTRES	CONDUIRE UN CAMION	LIRE UN ARTICLE	2021-05-17 16:56:02.270165+00
79	karim adiox	66	2021-05-17 17:45:28.255691+00	JOUER AUX ÉCHECS	EXPLIQUER UN MYSTÈRE!	LANCER DES IDÉES	ADHÉRER UNE ASSOCIATION	PRENDRE DES DÉCISIONS	LANCER UN PROJET	RÉCONFORTER UN PROCHE	RÉNOVER VOTRE MAISON	COLLECTIONNER DES OBJETS	ENSEIGNER UN ÉLÈVE	LIBÉREZ VOTRE IMAGINATION	DIRIGER UN GROUPE	STRUCTURER VOTRE PLANNING	ACTION HUMANITAIRE	LIRE UN OUVRAGE SCIENTIFIQUE	LIRE UN ROMAN	VOUS DÉPENSER PHYSIQUEMENT	CONVAINCRE LES AUTRES	ECHANGER EN GROUPE	RELEVER UN DÉFI	2021-05-17 17:45:28.25573+00
\.


--
-- Data for Name: test_test_elements; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_test_elements (id, test_id, element_id) FROM stdin;
\.


--
-- Data for Name: test_typeelement; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_typeelement (id, created_at, updated_at, name) FROM stdin;
\.


--
-- Data for Name: test_typeelement_param; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_typeelement_param (id, typeelement_id, elementparam_id) FROM stdin;
\.


--
-- Data for Name: test_typetest; Type: TABLE DATA; Schema: public; Owner: gradayuser
--

COPY public.test_typetest (id, created_at, updated_at, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- Name: authentication_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.authentication_user_groups_id_seq', 1, false);


--
-- Name: authentication_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.authentication_user_id_seq', 74, true);


--
-- Name: authentication_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.authentication_user_user_permissions_id_seq', 1, false);


--
-- Name: authentication_usernotification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.authentication_usernotification_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 142, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 58, true);


--
-- Name: profile_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.profile_permission_id_seq', 1, false);


--
-- Name: profile_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.profile_profile_id_seq', 66, true);


--
-- Name: profile_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.profile_role_id_seq', 1, false);


--
-- Name: profile_role_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.profile_role_permission_id_seq', 1, false);


--
-- Name: resultat_resulatapersona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.resultat_resulatapersona_id_seq', 1, false);


--
-- Name: resultat_resulatmetier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.resultat_resulatmetier_id_seq', 1, false);


--
-- Name: resultat_resultat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.resultat_resultat_id_seq', 79, true);


--
-- Name: test_element_columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_element_columns_id_seq', 1, false);


--
-- Name: test_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_element_id_seq', 1, false);


--
-- Name: test_elementparam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_elementparam_id_seq', 1, false);


--
-- Name: test_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_page_id_seq', 1, false);


--
-- Name: test_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_question_id_seq', 60, true);


--
-- Name: test_question_params_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_question_params_id_seq', 1200, true);


--
-- Name: test_resultparam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_resultparam_id_seq', 20, true);


--
-- Name: test_test_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_test_elements_id_seq', 1, false);


--
-- Name: test_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_test_id_seq', 79, true);


--
-- Name: test_typeelement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_typeelement_id_seq', 1, false);


--
-- Name: test_typeelement_param_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_typeelement_param_id_seq', 1, false);


--
-- Name: test_typetest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gradayuser
--

SELECT pg_catalog.setval('public.test_typetest_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authentication_user authentication_user_email_key; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user
    ADD CONSTRAINT authentication_user_email_key UNIQUE (email);


--
-- Name: authentication_user_groups authentication_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user_groups_pkey PRIMARY KEY (id);


--
-- Name: authentication_user_groups authentication_user_groups_user_id_group_id_8af031ac_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user_groups_user_id_group_id_8af031ac_uniq UNIQUE (user_id, group_id);


--
-- Name: authentication_user authentication_user_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user
    ADD CONSTRAINT authentication_user_pkey PRIMARY KEY (id);


--
-- Name: authentication_user_user_permissions authentication_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: authentication_user_user_permissions authentication_user_user_user_id_permission_id_ec51b09f_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user_user_user_id_permission_id_ec51b09f_uniq UNIQUE (user_id, permission_id);


--
-- Name: authentication_user authentication_user_username_a09a089e_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user
    ADD CONSTRAINT authentication_user_username_a09a089e_uniq UNIQUE (username);


--
-- Name: authentication_usernotification authentication_usernotification_email_key; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_usernotification
    ADD CONSTRAINT authentication_usernotification_email_key UNIQUE (email);


--
-- Name: authentication_usernotification authentication_usernotification_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_usernotification
    ADD CONSTRAINT authentication_usernotification_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: profile_permission profile_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_permission
    ADD CONSTRAINT profile_permission_pkey PRIMARY KEY (id);


--
-- Name: profile_profile profile_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_profile
    ADD CONSTRAINT profile_profile_pkey PRIMARY KEY (id);


--
-- Name: profile_profile profile_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_profile
    ADD CONSTRAINT profile_profile_user_id_key UNIQUE (user_id);


--
-- Name: profile_role_permission profile_role_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_role_permission
    ADD CONSTRAINT profile_role_permission_pkey PRIMARY KEY (id);


--
-- Name: profile_role_permission profile_role_permission_role_id_permission_id_a6cb2120_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_role_permission
    ADD CONSTRAINT profile_role_permission_role_id_permission_id_a6cb2120_uniq UNIQUE (role_id, permission_id);


--
-- Name: profile_role profile_role_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_role
    ADD CONSTRAINT profile_role_pkey PRIMARY KEY (id);


--
-- Name: resultat_resulatapersona resultat_resulatapersona_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resulatapersona
    ADD CONSTRAINT resultat_resulatapersona_pkey PRIMARY KEY (id);


--
-- Name: resultat_resulatmetier resultat_resulatmetier_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resulatmetier
    ADD CONSTRAINT resultat_resulatmetier_pkey PRIMARY KEY (id);


--
-- Name: resultat_resultat resultat_resultat_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resultat
    ADD CONSTRAINT resultat_resultat_pkey PRIMARY KEY (id);


--
-- Name: test_element_questions test_element_columns_element_id_question_id_b073fbee_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_element_questions
    ADD CONSTRAINT test_element_columns_element_id_question_id_b073fbee_uniq UNIQUE (element_id, question_id);


--
-- Name: test_element_questions test_element_columns_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_element_questions
    ADD CONSTRAINT test_element_columns_pkey PRIMARY KEY (id);


--
-- Name: test_element test_element_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_element
    ADD CONSTRAINT test_element_pkey PRIMARY KEY (id);


--
-- Name: test_elementparam test_elementparam_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_elementparam
    ADD CONSTRAINT test_elementparam_pkey PRIMARY KEY (id);


--
-- Name: test_page test_page_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_page
    ADD CONSTRAINT test_page_pkey PRIMARY KEY (id);


--
-- Name: test_question_params test_question_params_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_question_params
    ADD CONSTRAINT test_question_params_pkey PRIMARY KEY (id);


--
-- Name: test_question_params test_question_params_question_id_resultparam_id_5711f231_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_question_params
    ADD CONSTRAINT test_question_params_question_id_resultparam_id_5711f231_uniq UNIQUE (question_id, resultparam_id);


--
-- Name: test_question test_question_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT test_question_pkey PRIMARY KEY (id);


--
-- Name: test_resultparam test_resultparam_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_resultparam
    ADD CONSTRAINT test_resultparam_pkey PRIMARY KEY (id);


--
-- Name: test_test_elements test_test_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test_elements
    ADD CONSTRAINT test_test_elements_pkey PRIMARY KEY (id);


--
-- Name: test_test_elements test_test_elements_test_id_element_id_9bf492d9_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test_elements
    ADD CONSTRAINT test_test_elements_test_id_element_id_9bf492d9_uniq UNIQUE (test_id, element_id);


--
-- Name: test_test test_test_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test
    ADD CONSTRAINT test_test_pkey PRIMARY KEY (id);


--
-- Name: test_typeelement_param test_typeelement_param_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typeelement_param
    ADD CONSTRAINT test_typeelement_param_pkey PRIMARY KEY (id);


--
-- Name: test_typeelement_param test_typeelement_param_typeelement_id_elementpa_be297f90_uniq; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typeelement_param
    ADD CONSTRAINT test_typeelement_param_typeelement_id_elementpa_be297f90_uniq UNIQUE (typeelement_id, elementparam_id);


--
-- Name: test_typeelement test_typeelement_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typeelement
    ADD CONSTRAINT test_typeelement_pkey PRIMARY KEY (id);


--
-- Name: test_typetest test_typetest_pkey; Type: CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typetest
    ADD CONSTRAINT test_typetest_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authentication_user_email_2220eff5_like; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_user_email_2220eff5_like ON public.authentication_user USING btree (email varchar_pattern_ops);


--
-- Name: authentication_user_groups_group_id_6b5c44b7; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_user_groups_group_id_6b5c44b7 ON public.authentication_user_groups USING btree (group_id);


--
-- Name: authentication_user_groups_user_id_30868577; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_user_groups_user_id_30868577 ON public.authentication_user_groups USING btree (user_id);


--
-- Name: authentication_user_user_permissions_permission_id_ea6be19a; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_user_user_permissions_permission_id_ea6be19a ON public.authentication_user_user_permissions USING btree (permission_id);


--
-- Name: authentication_user_user_permissions_user_id_736ebf7e; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_user_user_permissions_user_id_736ebf7e ON public.authentication_user_user_permissions USING btree (user_id);


--
-- Name: authentication_user_username_a09a089e_like; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_user_username_a09a089e_like ON public.authentication_user USING btree (username varchar_pattern_ops);


--
-- Name: authentication_usernotification_email_a980fe49_like; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_usernotification_email_a980fe49_like ON public.authentication_usernotification USING btree (email varchar_pattern_ops);


--
-- Name: authentication_usernotification_user_id_47131956; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX authentication_usernotification_user_id_47131956 ON public.authentication_usernotification USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: profile_profile_role_id_6d5f5a09; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX profile_profile_role_id_6d5f5a09 ON public.profile_profile USING btree (role_id);


--
-- Name: profile_role_permission_permission_id_c46c176f; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX profile_role_permission_permission_id_c46c176f ON public.profile_role_permission USING btree (permission_id);


--
-- Name: profile_role_permission_role_id_f77febba; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX profile_role_permission_role_id_f77febba ON public.profile_role_permission USING btree (role_id);


--
-- Name: resultat_resulatapersona_resultat_persona_id_24081eb0; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX resultat_resulatapersona_resultat_persona_id_24081eb0 ON public.resultat_resulatapersona USING btree (resultat_persona_id);


--
-- Name: resultat_resulatmetier_resultat_metier_id_512a5e60; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX resultat_resulatmetier_resultat_metier_id_512a5e60 ON public.resultat_resulatmetier USING btree (resultat_metier_id);


--
-- Name: resultat_resultat_membre_id_89c651f6; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX resultat_resultat_membre_id_89c651f6 ON public.resultat_resultat USING btree (membre_id);


--
-- Name: resultat_resultat_test_id_1a32352b; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX resultat_resultat_test_id_1a32352b ON public.resultat_resultat USING btree (test_id);


--
-- Name: test_element_columns_element_id_9381e88f; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_element_columns_element_id_9381e88f ON public.test_element_questions USING btree (element_id);


--
-- Name: test_element_columns_question_id_0869f3fc; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_element_columns_question_id_0869f3fc ON public.test_element_questions USING btree (question_id);


--
-- Name: test_page_test_id_2b5b7cbc; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_page_test_id_2b5b7cbc ON public.test_page USING btree (test_id);


--
-- Name: test_question_params_question_id_27edd37b; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_question_params_question_id_27edd37b ON public.test_question_params USING btree (question_id);


--
-- Name: test_question_params_resultparam_id_b85536ae; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_question_params_resultparam_id_b85536ae ON public.test_question_params USING btree (resultparam_id);


--
-- Name: test_test_elements_element_id_c1dbccb8; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_test_elements_element_id_c1dbccb8 ON public.test_test_elements USING btree (element_id);


--
-- Name: test_test_elements_test_id_a7d76ff3; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_test_elements_test_id_a7d76ff3 ON public.test_test_elements USING btree (test_id);


--
-- Name: test_test_membre_id_7295ace7; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_test_membre_id_7295ace7 ON public.test_test USING btree (membre_id);


--
-- Name: test_typeelement_param_elementparam_id_be4c7ca1; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_typeelement_param_elementparam_id_be4c7ca1 ON public.test_typeelement_param USING btree (elementparam_id);


--
-- Name: test_typeelement_param_typeelement_id_bc47c5b4; Type: INDEX; Schema: public; Owner: gradayuser
--

CREATE INDEX test_typeelement_param_typeelement_id_bc47c5b4 ON public.test_typeelement_param USING btree (typeelement_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_user_permissions authentication_user__permission_id_ea6be19a_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user__permission_id_ea6be19a_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_groups authentication_user__user_id_30868577_fk_authentic; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user__user_id_30868577_fk_authentic FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_user_permissions authentication_user__user_id_736ebf7e_fk_authentic; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_user_permissions
    ADD CONSTRAINT authentication_user__user_id_736ebf7e_fk_authentic FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_user_groups authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_user_groups
    ADD CONSTRAINT authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authentication_usernotification authentication_usern_user_id_47131956_fk_authentic; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.authentication_usernotification
    ADD CONSTRAINT authentication_usern_user_id_47131956_fk_authentic FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_authentication_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_authentication_user_id FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_profile profile_profile_role_id_6d5f5a09_fk_profile_role_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_profile
    ADD CONSTRAINT profile_profile_role_id_6d5f5a09_fk_profile_role_id FOREIGN KEY (role_id) REFERENCES public.profile_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_profile profile_profile_user_id_7b0aedd8_fk_authentication_user_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_profile
    ADD CONSTRAINT profile_profile_user_id_7b0aedd8_fk_authentication_user_id FOREIGN KEY (user_id) REFERENCES public.authentication_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_role_permission profile_role_permiss_permission_id_c46c176f_fk_profile_p; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_role_permission
    ADD CONSTRAINT profile_role_permiss_permission_id_c46c176f_fk_profile_p FOREIGN KEY (permission_id) REFERENCES public.profile_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_role_permission profile_role_permission_role_id_f77febba_fk_profile_role_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.profile_role_permission
    ADD CONSTRAINT profile_role_permission_role_id_f77febba_fk_profile_role_id FOREIGN KEY (role_id) REFERENCES public.profile_role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resultat_resulatapersona resultat_resulataper_resultat_persona_id_24081eb0_fk_resultat_; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resulatapersona
    ADD CONSTRAINT resultat_resulataper_resultat_persona_id_24081eb0_fk_resultat_ FOREIGN KEY (resultat_persona_id) REFERENCES public.resultat_resultat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resultat_resulatmetier resultat_resulatmeti_resultat_metier_id_512a5e60_fk_resultat_; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resulatmetier
    ADD CONSTRAINT resultat_resulatmeti_resultat_metier_id_512a5e60_fk_resultat_ FOREIGN KEY (resultat_metier_id) REFERENCES public.resultat_resultat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resultat_resultat resultat_resultat_membre_id_89c651f6_fk_profile_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resultat
    ADD CONSTRAINT resultat_resultat_membre_id_89c651f6_fk_profile_profile_id FOREIGN KEY (membre_id) REFERENCES public.profile_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: resultat_resultat resultat_resultat_test_id_1a32352b_fk_test_test_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.resultat_resultat
    ADD CONSTRAINT resultat_resultat_test_id_1a32352b_fk_test_test_id FOREIGN KEY (test_id) REFERENCES public.test_test(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_element_questions test_element_questions_element_id_6d33be67_fk_test_element_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_element_questions
    ADD CONSTRAINT test_element_questions_element_id_6d33be67_fk_test_element_id FOREIGN KEY (element_id) REFERENCES public.test_element(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_element_questions test_element_questions_question_id_648356bb_fk_test_question_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_element_questions
    ADD CONSTRAINT test_element_questions_question_id_648356bb_fk_test_question_id FOREIGN KEY (question_id) REFERENCES public.test_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_page test_page_test_id_2b5b7cbc_fk_test_test_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_page
    ADD CONSTRAINT test_page_test_id_2b5b7cbc_fk_test_test_id FOREIGN KEY (test_id) REFERENCES public.test_test(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_question_params test_question_params_question_id_27edd37b_fk_test_question_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_question_params
    ADD CONSTRAINT test_question_params_question_id_27edd37b_fk_test_question_id FOREIGN KEY (question_id) REFERENCES public.test_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_question_params test_question_params_resultparam_id_b85536ae_fk_test_resu; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_question_params
    ADD CONSTRAINT test_question_params_resultparam_id_b85536ae_fk_test_resu FOREIGN KEY (resultparam_id) REFERENCES public.test_resultparam(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_test_elements test_test_elements_element_id_c1dbccb8_fk_test_element_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test_elements
    ADD CONSTRAINT test_test_elements_element_id_c1dbccb8_fk_test_element_id FOREIGN KEY (element_id) REFERENCES public.test_element(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_test_elements test_test_elements_test_id_a7d76ff3_fk_test_test_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test_elements
    ADD CONSTRAINT test_test_elements_test_id_a7d76ff3_fk_test_test_id FOREIGN KEY (test_id) REFERENCES public.test_test(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_test test_test_membre_id_7295ace7_fk_profile_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_test
    ADD CONSTRAINT test_test_membre_id_7295ace7_fk_profile_profile_id FOREIGN KEY (membre_id) REFERENCES public.profile_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_typeelement_param test_typeelement_par_elementparam_id_be4c7ca1_fk_test_elem; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typeelement_param
    ADD CONSTRAINT test_typeelement_par_elementparam_id_be4c7ca1_fk_test_elem FOREIGN KEY (elementparam_id) REFERENCES public.test_elementparam(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: test_typeelement_param test_typeelement_par_typeelement_id_bc47c5b4_fk_test_type; Type: FK CONSTRAINT; Schema: public; Owner: gradayuser
--

ALTER TABLE ONLY public.test_typeelement_param
    ADD CONSTRAINT test_typeelement_par_typeelement_id_bc47c5b4_fk_test_type FOREIGN KEY (typeelement_id) REFERENCES public.test_typeelement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

