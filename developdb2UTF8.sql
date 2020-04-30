--
-- PostgreSQL database cluster dump
--

-- Started on 2020-04-29 21:15:54 EDT

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres1;
ALTER ROLE postgres1 WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5c8cd3bc24a9c704a18a3d61336544d65';






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg19.10+1)

-- Started on 2020-04-29 21:15:54 EDT

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

-- Completed on 2020-04-29 21:15:55 EDT

--
-- PostgreSQL database dump complete
--

--
-- Database "app" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg19.10+1)

-- Started on 2020-04-29 21:15:55 EDT

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

--
-- TOC entry 3173 (class 1262 OID 16384)
-- Name: app; Type: DATABASE; Schema: -; Owner: postgres1
--

CREATE DATABASE app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE app OWNER TO postgres1;

\connect app

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
-- TOC entry 209 (class 1259 OID 16416)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres1;

--
-- TOC entry 208 (class 1259 OID 16414)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres1;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 16426)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres1;

--
-- TOC entry 210 (class 1259 OID 16424)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres1;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 16408)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres1;

--
-- TOC entry 206 (class 1259 OID 16406)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres1;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 213 (class 1259 OID 16434)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres1;

--
-- TOC entry 215 (class 1259 OID 16444)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres1;

--
-- TOC entry 214 (class 1259 OID 16442)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres1;

--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 16432)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres1;

--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 217 (class 1259 OID 16452)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres1;

--
-- TOC entry 216 (class 1259 OID 16450)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres1;

--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 234 (class 1259 OID 32771)
-- Name: core_billdetail; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_billdetail (
    "BillDetailID" integer NOT NULL,
    "BillID_id" integer NOT NULL,
    "ProductID_id" integer NOT NULL
);


ALTER TABLE public.core_billdetail OWNER TO postgres1;

--
-- TOC entry 233 (class 1259 OID 32769)
-- Name: core_billdetail_BillDetailID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_billdetail_BillDetailID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_billdetail_BillDetailID_seq" OWNER TO postgres1;

--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 233
-- Name: core_billdetail_BillDetailID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_billdetail_BillDetailID_seq" OWNED BY public.core_billdetail."BillDetailID";


--
-- TOC entry 221 (class 1259 OID 16542)
-- Name: core_customer; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_customer (
    "CustomerID" integer NOT NULL,
    "FirstName" character varying(200) NOT NULL,
    "LastName" character varying(200) NOT NULL,
    "Email" character varying(200) NOT NULL,
    "Birthday" date NOT NULL,
    "Address" character varying(255) NOT NULL,
    "PostalCode" character varying(10) NOT NULL,
    "Province" character varying(10) NOT NULL
);


ALTER TABLE public.core_customer OWNER TO postgres1;

--
-- TOC entry 220 (class 1259 OID 16540)
-- Name: core_customer_CustomerID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_customer_CustomerID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_customer_CustomerID_seq" OWNER TO postgres1;

--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 220
-- Name: core_customer_CustomerID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_customer_CustomerID_seq" OWNED BY public.core_customer."CustomerID";


--
-- TOC entry 223 (class 1259 OID 16553)
-- Name: core_headbill; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_headbill (
    "HeadBillID" integer NOT NULL,
    "CustomerID_id" integer NOT NULL,
    "BillDate" date NOT NULL,
    "BillNumber" character varying(45) NOT NULL
);


ALTER TABLE public.core_headbill OWNER TO postgres1;

--
-- TOC entry 222 (class 1259 OID 16551)
-- Name: core_headbill_HeadBillID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_headbill_HeadBillID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_headbill_HeadBillID_seq" OWNER TO postgres1;

--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 222
-- Name: core_headbill_HeadBillID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_headbill_HeadBillID_seq" OWNED BY public.core_headbill."HeadBillID";


--
-- TOC entry 225 (class 1259 OID 16561)
-- Name: core_product; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_product (
    "ProductID" integer NOT NULL,
    "NameProduct" character varying(200) NOT NULL,
    "PriceProduct" numeric(8,2) NOT NULL
);


ALTER TABLE public.core_product OWNER TO postgres1;

--
-- TOC entry 224 (class 1259 OID 16559)
-- Name: core_product_ProductID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_product_ProductID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_product_ProductID_seq" OWNER TO postgres1;

--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 224
-- Name: core_product_ProductID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_product_ProductID_seq" OWNED BY public.core_product."ProductID";


--
-- TOC entry 232 (class 1259 OID 24587)
-- Name: core_relationshiptaxproduct; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_relationshiptaxproduct (
    "RelationshipTaxProductID" integer NOT NULL,
    "ProductsID_id" integer NOT NULL,
    "TaxesTypeID_id" integer NOT NULL
);


ALTER TABLE public.core_relationshiptaxproduct OWNER TO postgres1;

--
-- TOC entry 231 (class 1259 OID 24585)
-- Name: core_relationshiptaxproduct_RelationshipTaxProductID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_relationshiptaxproduct_RelationshipTaxProductID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_relationshiptaxproduct_RelationshipTaxProductID_seq" OWNER TO postgres1;

--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 231
-- Name: core_relationshiptaxproduct_RelationshipTaxProductID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_relationshiptaxproduct_RelationshipTaxProductID_seq" OWNED BY public.core_relationshiptaxproduct."RelationshipTaxProductID";


--
-- TOC entry 227 (class 1259 OID 16569)
-- Name: core_subscription; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_subscription (
    "SubscriptionID" integer NOT NULL,
    "SubscriptionCard" character varying(200) NOT NULL,
    "CreateDate" date NOT NULL,
    "ExpDate" date NOT NULL,
    "CustomersID_id" integer NOT NULL
);


ALTER TABLE public.core_subscription OWNER TO postgres1;

--
-- TOC entry 226 (class 1259 OID 16567)
-- Name: core_subscription_SubscriptionID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_subscription_SubscriptionID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_subscription_SubscriptionID_seq" OWNER TO postgres1;

--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 226
-- Name: core_subscription_SubscriptionID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_subscription_SubscriptionID_seq" OWNED BY public.core_subscription."SubscriptionID";


--
-- TOC entry 236 (class 1259 OID 32779)
-- Name: core_taxstatic; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_taxstatic (
    "TaxStaticID" integer NOT NULL,
    "TaxTypeStatic" character varying(200) NOT NULL,
    "TaxPercentageStatic" numeric(4,2) NOT NULL,
    "BillDetailID_id" integer NOT NULL
);


ALTER TABLE public.core_taxstatic OWNER TO postgres1;

--
-- TOC entry 235 (class 1259 OID 32777)
-- Name: core_taxstatic_TaxStaticID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_taxstatic_TaxStaticID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_taxstatic_TaxStaticID_seq" OWNER TO postgres1;

--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 235
-- Name: core_taxstatic_TaxStaticID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_taxstatic_TaxStaticID_seq" OWNED BY public.core_taxstatic."TaxStaticID";


--
-- TOC entry 229 (class 1259 OID 16577)
-- Name: core_taxtype; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_taxtype (
    "TaxTypeID" integer NOT NULL,
    "TaxType" character varying(200) NOT NULL,
    "TaxPercentage" numeric(4,2) NOT NULL
);


ALTER TABLE public.core_taxtype OWNER TO postgres1;

--
-- TOC entry 228 (class 1259 OID 16575)
-- Name: core_taxtype_TaxTypeID_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public."core_taxtype_TaxTypeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."core_taxtype_TaxTypeID_seq" OWNER TO postgres1;

--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 228
-- Name: core_taxtype_TaxTypeID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_taxtype_TaxTypeID_seq" OWNED BY public.core_taxtype."TaxTypeID";


--
-- TOC entry 219 (class 1259 OID 16512)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres1
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


ALTER TABLE public.django_admin_log OWNER TO postgres1;

--
-- TOC entry 218 (class 1259 OID 16510)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres1;

--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 16398)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres1;

--
-- TOC entry 204 (class 1259 OID 16396)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres1;

--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 16387)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres1;

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres1
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres1;

--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 230 (class 1259 OID 16589)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres1;

--
-- TOC entry 2900 (class 2604 OID 16419)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 16429)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2899 (class 2604 OID 16411)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 16437)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 16447)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 16455)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2913 (class 2604 OID 32774)
-- Name: core_billdetail BillDetailID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail ALTER COLUMN "BillDetailID" SET DEFAULT nextval('public."core_billdetail_BillDetailID_seq"'::regclass);


--
-- TOC entry 2907 (class 2604 OID 16545)
-- Name: core_customer CustomerID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_customer ALTER COLUMN "CustomerID" SET DEFAULT nextval('public."core_customer_CustomerID_seq"'::regclass);


--
-- TOC entry 2908 (class 2604 OID 16556)
-- Name: core_headbill HeadBillID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill ALTER COLUMN "HeadBillID" SET DEFAULT nextval('public."core_headbill_HeadBillID_seq"'::regclass);


--
-- TOC entry 2909 (class 2604 OID 16564)
-- Name: core_product ProductID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_product ALTER COLUMN "ProductID" SET DEFAULT nextval('public."core_product_ProductID_seq"'::regclass);


--
-- TOC entry 2912 (class 2604 OID 24590)
-- Name: core_relationshiptaxproduct RelationshipTaxProductID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct ALTER COLUMN "RelationshipTaxProductID" SET DEFAULT nextval('public."core_relationshiptaxproduct_RelationshipTaxProductID_seq"'::regclass);


--
-- TOC entry 2910 (class 2604 OID 16572)
-- Name: core_subscription SubscriptionID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription ALTER COLUMN "SubscriptionID" SET DEFAULT nextval('public."core_subscription_SubscriptionID_seq"'::regclass);


--
-- TOC entry 2914 (class 2604 OID 32782)
-- Name: core_taxstatic TaxStaticID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxstatic ALTER COLUMN "TaxStaticID" SET DEFAULT nextval('public."core_taxstatic_TaxStaticID_seq"'::regclass);


--
-- TOC entry 2911 (class 2604 OID 16580)
-- Name: core_taxtype TaxTypeID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxtype ALTER COLUMN "TaxTypeID" SET DEFAULT nextval('public."core_taxtype_TaxTypeID_seq"'::regclass);


--
-- TOC entry 2905 (class 2604 OID 16515)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 16401)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2897 (class 2604 OID 16390)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3140 (class 0 OID 16416)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3142 (class 0 OID 16426)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3138 (class 0 OID 16408)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres1
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
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add customer	7	add_customer
26	Can change customer	7	change_customer
27	Can delete customer	7	delete_customer
28	Can view customer	7	view_customer
29	Can add head bill	8	add_headbill
30	Can change head bill	8	change_headbill
31	Can delete head bill	8	delete_headbill
32	Can view head bill	8	view_headbill
33	Can add product	9	add_product
34	Can change product	9	change_product
35	Can delete product	9	delete_product
36	Can view product	9	view_product
37	Can add subscription	10	add_subscription
38	Can change subscription	10	change_subscription
39	Can delete subscription	10	delete_subscription
40	Can view subscription	10	view_subscription
41	Can add tax type	11	add_taxtype
42	Can change tax type	11	change_taxtype
43	Can delete tax type	11	delete_taxtype
44	Can view tax type	11	view_taxtype
45	Can add relationship tax product	12	add_relationshiptaxproduct
46	Can change relationship tax product	12	change_relationshiptaxproduct
47	Can delete relationship tax product	12	delete_relationshiptaxproduct
48	Can view relationship tax product	12	view_relationshiptaxproduct
49	Can add tax static	13	add_taxstatic
50	Can change tax static	13	change_taxstatic
51	Can delete tax static	13	delete_taxstatic
52	Can view tax static	13	view_taxstatic
53	Can add bill detail	14	add_billdetail
54	Can change bill detail	14	change_billdetail
55	Can delete bill detail	14	delete_billdetail
56	Can view bill detail	14	view_billdetail
\.


--
-- TOC entry 3144 (class 0 OID 16434)
-- Dependencies: 213
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3146 (class 0 OID 16444)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3148 (class 0 OID 16452)
-- Dependencies: 217
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3165 (class 0 OID 32771)
-- Dependencies: 234
-- Data for Name: core_billdetail; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") FROM stdin;
1	1	11
4	1	5
5	1	5
10	4	12
12	2	11
6	1	12
7	1	2
8	4	1
9	4	5
11	2	2
2	1	5
3	1	12
\.


--
-- TOC entry 3152 (class 0 OID 16542)
-- Dependencies: 221
-- Data for Name: core_customer; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") FROM stdin;
1	Luis A	Quinones	test@test.com	2012-01-01	test	123456	ontario
2	David	Quinones	test1@test.com	2012-01-02	test_mod	123456	millan
6	Luis1 Gabriel	Quinones	test4@test.com	2010-03-09	test	123456	ontario
8	Luis8 Gabriel	Quinones	test4@test.com	2010-03-09	test	123456	ontario
9	Luis9 Gabriel	agua	test4@test.com	2010-03-09	test	123456	ontario
7	Luis9 Gabriel	Herr	test4@test.com	2010-03-09	test	123456	ontario
11	F	D	test4@test.com	2010-03-09	test	123456	ontario
10	Luis9 Gabriel	Herr	test4@test.com	2010-03-09	test	123456	caracas
5	Luis9 Gabriel	Loagua	test4@test.com	2010-03-09	test	123456	Falcon
\.


--
-- TOC entry 3154 (class 0 OID 16553)
-- Dependencies: 223
-- Data for Name: core_headbill; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") FROM stdin;
1	1	2020-01-01	1
3	2	2020-04-24	2
2	2	2020-02-02	3
4	7	2020-04-24	4
6	1	2020-04-23	5
7	1	2020-04-23	6
8	1	2020-04-23	7
\.


--
-- TOC entry 3156 (class 0 OID 16561)
-- Dependencies: 225
-- Data for Name: core_product; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_product ("ProductID", "NameProduct", "PriceProduct") FROM stdin;
1	rice	12.30
2	pasta	5.30
4	pasta12	5.30
5	pasta12	5.30
6	fish	9.30
7	fish2	9.30
8	Bean 500gr	3.20
9	Bean 900gr	6.20
10	chickpea 450gr	2.80
11	chickpea 900gr	4.80
3	pasta 200gr	5.30
12	oreo	5.30
13	oOreo	4.80
14	Sugar 300gr	4.80
15	corn 300gr	4.80
\.


--
-- TOC entry 3163 (class 0 OID 24587)
-- Dependencies: 232
-- Data for Name: core_relationshiptaxproduct; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") FROM stdin;
1	1	1
2	1	2
3	2	2
4	12	3
5	12	2
6	12	4
7	11	1
8	11	2
9	2	2
10	5	4
11	12	2
\.


--
-- TOC entry 3158 (class 0 OID 16569)
-- Dependencies: 227
-- Data for Name: core_subscription; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") FROM stdin;
4	123	2020-04-08	2020-04-30	1
6	1234	2020-04-03	2020-04-30	1
9	4321	2020-04-23	2022-04-26	7
8	321	2015-04-21	2020-04-26	2
11	4323	2020-04-23	2022-04-26	9
12	4324	2020-04-23	2022-04-26	9
13	4325	2020-04-23	2022-04-26	7
14	4326	2020-04-23	2022-07-26	2
15	4327	2020-04-23	2022-07-26	2
16	4224	2020-04-20	2022-04-26	9
\.


--
-- TOC entry 3167 (class 0 OID 32779)
-- Dependencies: 236
-- Data for Name: core_taxstatic; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_taxstatic ("TaxStaticID", "TaxTypeStatic", "TaxPercentageStatic", "BillDetailID_id") FROM stdin;
\.


--
-- TOC entry 3160 (class 0 OID 16577)
-- Dependencies: 229
-- Data for Name: core_taxtype; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") FROM stdin;
1	hst	13.00
2	re	6.00
3	federal	5.30
4	regional gas	0.50
5	regional ambiente	2.00
6	local City	5.40
\.


--
-- TOC entry 3150 (class 0 OID 16512)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3136 (class 0 OID 16398)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	core	customer
8	core	headbill
9	core	product
10	core	subscription
11	core	taxtype
12	core	relationshiptaxproduct
13	core	taxstatic
14	core	billdetail
\.


--
-- TOC entry 3134 (class 0 OID 16387)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-21 02:20:33.779275+00
2	auth	0001_initial	2020-04-21 02:20:34.804366+00
3	admin	0001_initial	2020-04-21 02:20:35.048253+00
4	admin	0002_logentry_remove_auto_add	2020-04-21 02:20:35.082536+00
5	admin	0003_logentry_add_action_flag_choices	2020-04-21 02:20:35.104394+00
6	contenttypes	0002_remove_content_type_name	2020-04-21 02:20:35.136647+00
7	auth	0002_alter_permission_name_max_length	2020-04-21 02:20:35.158796+00
8	auth	0003_alter_user_email_max_length	2020-04-21 02:20:35.190936+00
9	auth	0004_alter_user_username_opts	2020-04-21 02:20:35.210719+00
10	auth	0005_alter_user_last_login_null	2020-04-21 02:20:35.235165+00
11	auth	0006_require_contenttypes_0002	2020-04-21 02:20:35.248392+00
12	auth	0007_alter_validators_add_error_messages	2020-04-21 02:20:35.283812+00
13	auth	0008_alter_user_username_max_length	2020-04-21 02:20:35.359966+00
14	auth	0009_alter_user_last_name_max_length	2020-04-21 02:20:35.402319+00
15	core	0001_initial	2020-04-21 02:20:36.052117+00
16	sessions	0001_initial	2020-04-21 02:20:36.339082+00
17	core	0002_auto_20200421_0305	2020-04-21 03:05:07.231967+00
50	core	0003_auto_20200421_0327	2020-04-21 03:27:47.901653+00
51	core	0004_auto_20200421_0343	2020-04-21 03:43:41.012616+00
52	core	0005_relationshiptaxproduct	2020-04-21 04:11:47.259597+00
53	core	0006_auto_20200421_0435	2020-04-21 04:35:30.993637+00
54	core	0007_billdetail_taxstatic	2020-04-23 12:37:52.44622+00
55	core	0008_auto_20200423_1706	2020-04-23 17:06:22.765474+00
56	core	0009_auto_20200423_1853	2020-04-23 18:53:08.740428+00
57	core	0010_auto_20200423_1944	2020-04-23 19:44:49.054521+00
58	core	0011_auto_20200423_2010	2020-04-23 20:10:53.106774+00
59	core	0012_auto_20200423_2011	2020-04-23 20:11:55.828302+00
60	core	0013_auto_20200423_2013	2020-04-23 20:13:54.571947+00
61	core	0014_auto_20200423_2032	2020-04-23 20:32:44.889471+00
62	core	0015_auto_20200424_0026	2020-04-24 00:27:11.488794+00
63	core	0016_auto_20200424_0029	2020-04-24 00:30:04.065418+00
64	core	0017_auto_20200424_0416	2020-04-24 04:20:10.412605+00
\.


--
-- TOC entry 3161 (class 0 OID 16589)
-- Dependencies: 230
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres1
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 233
-- Name: core_billdetail_BillDetailID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_billdetail_BillDetailID_seq"', 10, true);


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 220
-- Name: core_customer_CustomerID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_customer_CustomerID_seq"', 11, true);


--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 222
-- Name: core_headbill_HeadBillID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_headbill_HeadBillID_seq"', 8, true);


--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 224
-- Name: core_product_ProductID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_product_ProductID_seq"', 15, true);


--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 231
-- Name: core_relationshiptaxproduct_RelationshipTaxProductID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_relationshiptaxproduct_RelationshipTaxProductID_seq"', 12, true);


--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 226
-- Name: core_subscription_SubscriptionID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_subscription_SubscriptionID_seq"', 16, true);


--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 235
-- Name: core_taxstatic_TaxStaticID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_taxstatic_TaxStaticID_seq"', 1, false);


--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 228
-- Name: core_taxtype_TaxTypeID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_taxtype_TaxTypeID_seq"', 7, true);


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 64, true);


--
-- TOC entry 2928 (class 2606 OID 16423)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2933 (class 2606 OID 16478)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2936 (class 2606 OID 16431)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2930 (class 2606 OID 16421)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2923 (class 2606 OID 16464)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2925 (class 2606 OID 16413)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2944 (class 2606 OID 16449)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2947 (class 2606 OID 16493)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2938 (class 2606 OID 16439)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2950 (class 2606 OID 16457)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2953 (class 2606 OID 16507)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2941 (class 2606 OID 16535)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2987 (class 2606 OID 32776)
-- Name: core_billdetail core_billdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail
    ADD CONSTRAINT core_billdetail_pkey PRIMARY KEY ("BillDetailID");


--
-- TOC entry 2959 (class 2606 OID 16550)
-- Name: core_customer core_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_customer
    ADD CONSTRAINT core_customer_pkey PRIMARY KEY ("CustomerID");


--
-- TOC entry 2962 (class 2606 OID 32806)
-- Name: core_headbill core_headbill_BillNumber_fee65252_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill
    ADD CONSTRAINT "core_headbill_BillNumber_fee65252_uniq" UNIQUE ("BillNumber");


--
-- TOC entry 2965 (class 2606 OID 16558)
-- Name: core_headbill core_headbill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill
    ADD CONSTRAINT core_headbill_pkey PRIMARY KEY ("HeadBillID");


--
-- TOC entry 2967 (class 2606 OID 16566)
-- Name: core_product core_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_product
    ADD CONSTRAINT core_product_pkey PRIMARY KEY ("ProductID");


--
-- TOC entry 2983 (class 2606 OID 24592)
-- Name: core_relationshiptaxproduct core_relationshiptaxproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct
    ADD CONSTRAINT core_relationshiptaxproduct_pkey PRIMARY KEY ("RelationshipTaxProductID");


--
-- TOC entry 2971 (class 2606 OID 24583)
-- Name: core_subscription core_subscription_SubscriptionCard_56e5e8a9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription
    ADD CONSTRAINT "core_subscription_SubscriptionCard_56e5e8a9_uniq" UNIQUE ("SubscriptionCard");


--
-- TOC entry 2973 (class 2606 OID 16574)
-- Name: core_subscription core_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription
    ADD CONSTRAINT core_subscription_pkey PRIMARY KEY ("SubscriptionID");


--
-- TOC entry 2990 (class 2606 OID 32784)
-- Name: core_taxstatic core_taxstatic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxstatic
    ADD CONSTRAINT core_taxstatic_pkey PRIMARY KEY ("TaxStaticID");


--
-- TOC entry 2975 (class 2606 OID 16582)
-- Name: core_taxtype core_taxtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxtype
    ADD CONSTRAINT core_taxtype_pkey PRIMARY KEY ("TaxTypeID");


--
-- TOC entry 2956 (class 2606 OID 16521)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2918 (class 2606 OID 16405)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2920 (class 2606 OID 16403)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 16395)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2978 (class 2606 OID 16596)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2926 (class 1259 OID 16466)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2931 (class 1259 OID 16479)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2934 (class 1259 OID 16480)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2921 (class 1259 OID 16465)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2942 (class 1259 OID 16495)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2945 (class 1259 OID 16494)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2948 (class 1259 OID 16509)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2951 (class 1259 OID 16508)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2939 (class 1259 OID 16536)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2984 (class 1259 OID 32790)
-- Name: core_billdetail_BillID_id_777ec771; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_billdetail_BillID_id_777ec771" ON public.core_billdetail USING btree ("BillID_id");


--
-- TOC entry 2985 (class 1259 OID 32808)
-- Name: core_billdetail_ProductID_id_220c43fc; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_billdetail_ProductID_id_220c43fc" ON public.core_billdetail USING btree ("ProductID_id");


--
-- TOC entry 2960 (class 1259 OID 32807)
-- Name: core_headbill_BillNumber_fee65252_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_headbill_BillNumber_fee65252_like" ON public.core_headbill USING btree ("BillNumber" varchar_pattern_ops);


--
-- TOC entry 2963 (class 1259 OID 32797)
-- Name: core_headbill_CustomerID_id_c3b41424; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_headbill_CustomerID_id_c3b41424" ON public.core_headbill USING btree ("CustomerID_id");


--
-- TOC entry 2980 (class 1259 OID 24603)
-- Name: core_relationshiptaxproduct_ProductsID_id_78eddd8a; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_relationshiptaxproduct_ProductsID_id_78eddd8a" ON public.core_relationshiptaxproduct USING btree ("ProductsID_id");


--
-- TOC entry 2981 (class 1259 OID 24604)
-- Name: core_relationshiptaxproduct_TaxesTypeID_id_8e8fef11; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_relationshiptaxproduct_TaxesTypeID_id_8e8fef11" ON public.core_relationshiptaxproduct USING btree ("TaxesTypeID_id");


--
-- TOC entry 2968 (class 1259 OID 16588)
-- Name: core_subscription_CustomerID_id_dff7600f; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_subscription_CustomerID_id_dff7600f" ON public.core_subscription USING btree ("CustomersID_id");


--
-- TOC entry 2969 (class 1259 OID 24584)
-- Name: core_subscription_SubscriptionCard_56e5e8a9_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_subscription_SubscriptionCard_56e5e8a9_like" ON public.core_subscription USING btree ("SubscriptionCard" varchar_pattern_ops);


--
-- TOC entry 2988 (class 1259 OID 32796)
-- Name: core_taxstatic_BillDetailID_id_ffebf4d8; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_taxstatic_BillDetailID_id_ffebf4d8" ON public.core_taxstatic USING btree ("BillDetailID_id");


--
-- TOC entry 2954 (class 1259 OID 16532)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2957 (class 1259 OID 16533)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2976 (class 1259 OID 16598)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2979 (class 1259 OID 16597)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2993 (class 2606 OID 16472)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2992 (class 2606 OID 16467)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2991 (class 2606 OID 16458)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2995 (class 2606 OID 16487)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2994 (class 2606 OID 16482)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2997 (class 2606 OID 16501)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2996 (class 2606 OID 16496)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3004 (class 2606 OID 32785)
-- Name: core_billdetail core_billdetail_BillID_id_777ec771_fk_core_headbill_HeadBillID; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail
    ADD CONSTRAINT "core_billdetail_BillID_id_777ec771_fk_core_headbill_HeadBillID" FOREIGN KEY ("BillID_id") REFERENCES public.core_headbill("HeadBillID") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3005 (class 2606 OID 32809)
-- Name: core_billdetail core_billdetail_ProductID_id_220c43fc_fk_core_product_ProductID; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail
    ADD CONSTRAINT "core_billdetail_ProductID_id_220c43fc_fk_core_product_ProductID" FOREIGN KEY ("ProductID_id") REFERENCES public.core_product("ProductID") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3000 (class 2606 OID 32798)
-- Name: core_headbill core_headbill_CustomerID_id_c3b41424_fk_core_cust; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill
    ADD CONSTRAINT "core_headbill_CustomerID_id_c3b41424_fk_core_cust" FOREIGN KEY ("CustomerID_id") REFERENCES public.core_customer("CustomerID") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3002 (class 2606 OID 24593)
-- Name: core_relationshiptaxproduct core_relationshiptax_ProductsID_id_78eddd8a_fk_core_prod; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct
    ADD CONSTRAINT "core_relationshiptax_ProductsID_id_78eddd8a_fk_core_prod" FOREIGN KEY ("ProductsID_id") REFERENCES public.core_product("ProductID") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3003 (class 2606 OID 24598)
-- Name: core_relationshiptaxproduct core_relationshiptax_TaxesTypeID_id_8e8fef11_fk_core_taxt; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct
    ADD CONSTRAINT "core_relationshiptax_TaxesTypeID_id_8e8fef11_fk_core_taxt" FOREIGN KEY ("TaxesTypeID_id") REFERENCES public.core_taxtype("TaxTypeID") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3001 (class 2606 OID 24577)
-- Name: core_subscription core_subscription_CustomersID_id_941aac5d_fk_core_cust; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription
    ADD CONSTRAINT "core_subscription_CustomersID_id_941aac5d_fk_core_cust" FOREIGN KEY ("CustomersID_id") REFERENCES public.core_customer("CustomerID") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3006 (class 2606 OID 32791)
-- Name: core_taxstatic core_taxstatic_BillDetailID_id_ffebf4d8_fk_core_bill; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxstatic
    ADD CONSTRAINT "core_taxstatic_BillDetailID_id_ffebf4d8_fk_core_bill" FOREIGN KEY ("BillDetailID_id") REFERENCES public.core_billdetail("BillDetailID") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2998 (class 2606 OID 16522)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2999 (class 2606 OID 16527)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-04-29 21:15:55 EDT

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg19.10+1)

-- Started on 2020-04-29 21:15:55 EDT

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

-- Completed on 2020-04-29 21:15:55 EDT

--
-- PostgreSQL database dump complete
--

-- Completed on 2020-04-29 21:15:55 EDT

--
-- PostgreSQL database cluster dump complete
--

