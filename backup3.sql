--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres1;

--
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
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres1;

--
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
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
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
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
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
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres1;

--
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
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
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
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres1;

--
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
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: core_billdetail; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_billdetail (
    "BillDetailID" integer NOT NULL,
    "BillID_id" integer NOT NULL,
    "ProductID_id" integer NOT NULL
);


ALTER TABLE public.core_billdetail OWNER TO postgres1;

--
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
-- Name: core_billdetail_BillDetailID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_billdetail_BillDetailID_seq" OWNED BY public.core_billdetail."BillDetailID";


--
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
-- Name: core_customer_CustomerID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_customer_CustomerID_seq" OWNED BY public.core_customer."CustomerID";


--
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
-- Name: core_headbill_HeadBillID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_headbill_HeadBillID_seq" OWNED BY public.core_headbill."HeadBillID";


--
-- Name: core_product; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_product (
    "ProductID" integer NOT NULL,
    "NameProduct" character varying(200) NOT NULL,
    "PriceProduct" numeric(8,2) NOT NULL
);


ALTER TABLE public.core_product OWNER TO postgres1;

--
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
-- Name: core_product_ProductID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_product_ProductID_seq" OWNED BY public.core_product."ProductID";


--
-- Name: core_relationshiptaxproduct; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_relationshiptaxproduct (
    "RelationshipTaxProductID" integer NOT NULL,
    "ProductsID_id" integer NOT NULL,
    "TaxesTypeID_id" integer NOT NULL
);


ALTER TABLE public.core_relationshiptaxproduct OWNER TO postgres1;

--
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
-- Name: core_relationshiptaxproduct_RelationshipTaxProductID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_relationshiptaxproduct_RelationshipTaxProductID_seq" OWNED BY public.core_relationshiptaxproduct."RelationshipTaxProductID";


--
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
-- Name: core_subscription_SubscriptionID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_subscription_SubscriptionID_seq" OWNED BY public.core_subscription."SubscriptionID";


--
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
-- Name: core_taxstatic_TaxStaticID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_taxstatic_TaxStaticID_seq" OWNED BY public.core_taxstatic."TaxStaticID";


--
-- Name: core_taxtype; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.core_taxtype (
    "TaxTypeID" integer NOT NULL,
    "TaxType" character varying(200) NOT NULL,
    "TaxPercentage" numeric(4,2) NOT NULL
);


ALTER TABLE public.core_taxtype OWNER TO postgres1;

--
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
-- Name: core_taxtype_TaxTypeID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public."core_taxtype_TaxTypeID_seq" OWNED BY public.core_taxtype."TaxTypeID";


--
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
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres1;

--
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
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
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
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres1
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres1
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres1;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: core_billdetail BillDetailID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail ALTER COLUMN "BillDetailID" SET DEFAULT nextval('public."core_billdetail_BillDetailID_seq"'::regclass);


--
-- Name: core_customer CustomerID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_customer ALTER COLUMN "CustomerID" SET DEFAULT nextval('public."core_customer_CustomerID_seq"'::regclass);


--
-- Name: core_headbill HeadBillID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill ALTER COLUMN "HeadBillID" SET DEFAULT nextval('public."core_headbill_HeadBillID_seq"'::regclass);


--
-- Name: core_product ProductID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_product ALTER COLUMN "ProductID" SET DEFAULT nextval('public."core_product_ProductID_seq"'::regclass);


--
-- Name: core_relationshiptaxproduct RelationshipTaxProductID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct ALTER COLUMN "RelationshipTaxProductID" SET DEFAULT nextval('public."core_relationshiptaxproduct_RelationshipTaxProductID_seq"'::regclass);


--
-- Name: core_subscription SubscriptionID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription ALTER COLUMN "SubscriptionID" SET DEFAULT nextval('public."core_subscription_SubscriptionID_seq"'::regclass);


--
-- Name: core_taxstatic TaxStaticID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxstatic ALTER COLUMN "TaxStaticID" SET DEFAULT nextval('public."core_taxstatic_TaxStaticID_seq"'::regclass);


--
-- Name: core_taxtype TaxTypeID; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxtype ALTER COLUMN "TaxTypeID" SET DEFAULT nextval('public."core_taxtype_TaxTypeID_seq"'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add customer', 7, 'add_customer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change customer', 7, 'change_customer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete customer', 7, 'delete_customer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view customer', 7, 'view_customer');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add head bill', 8, 'add_headbill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change head bill', 8, 'change_headbill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete head bill', 8, 'delete_headbill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view head bill', 8, 'view_headbill');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add product', 9, 'add_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change product', 9, 'change_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete product', 9, 'delete_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view product', 9, 'view_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add subscription', 10, 'add_subscription');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change subscription', 10, 'change_subscription');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete subscription', 10, 'delete_subscription');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view subscription', 10, 'view_subscription');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add tax type', 11, 'add_taxtype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change tax type', 11, 'change_taxtype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete tax type', 11, 'delete_taxtype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view tax type', 11, 'view_taxtype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add relationship tax product', 12, 'add_relationshiptaxproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change relationship tax product', 12, 'change_relationshiptaxproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete relationship tax product', 12, 'delete_relationshiptaxproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view relationship tax product', 12, 'view_relationshiptaxproduct');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add tax static', 13, 'add_taxstatic');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change tax static', 13, 'change_taxstatic');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete tax static', 13, 'delete_taxstatic');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view tax static', 13, 'view_taxstatic');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add bill detail', 14, 'add_billdetail');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change bill detail', 14, 'change_billdetail');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete bill detail', 14, 'delete_billdetail');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view bill detail', 14, 'view_billdetail');


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Data for Name: core_billdetail; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (1, 1, 11);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (4, 1, 5);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (5, 1, 5);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (10, 4, 12);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (12, 2, 11);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (6, 1, 12);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (7, 1, 2);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (8, 4, 1);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (9, 4, 5);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (11, 2, 2);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (2, 1, 5);
INSERT INTO public.core_billdetail ("BillDetailID", "BillID_id", "ProductID_id") VALUES (3, 1, 12);


--
-- Data for Name: core_customer; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (1, 'Luis A', 'Quinones', 'test@test.com', '2012-01-01', 'test', '123456', 'ontario');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (2, 'David', 'Quinones', 'test1@test.com', '2012-01-02', 'test_mod', '123456', 'millan');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (6, 'Luis1 Gabriel', 'Quinones', 'test4@test.com', '2010-03-09', 'test', '123456', 'ontario');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (8, 'Luis8 Gabriel', 'Quinones', 'test4@test.com', '2010-03-09', 'test', '123456', 'ontario');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (9, 'Luis9 Gabriel', 'agua', 'test4@test.com', '2010-03-09', 'test', '123456', 'ontario');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (7, 'Luis9 Gabriel', 'Herr', 'test4@test.com', '2010-03-09', 'test', '123456', 'ontario');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (11, 'F', 'D', 'test4@test.com', '2010-03-09', 'test', '123456', 'ontario');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (10, 'Luis9 Gabriel', 'Herr', 'test4@test.com', '2010-03-09', 'test', '123456', 'caracas');
INSERT INTO public.core_customer ("CustomerID", "FirstName", "LastName", "Email", "Birthday", "Address", "PostalCode", "Province") VALUES (5, 'Luis9 Gabriel', 'Loagua', 'test4@test.com', '2010-03-09', 'test', '123456', 'Falcon');


--
-- Data for Name: core_headbill; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") VALUES (1, 1, '2020-01-01', '1');
INSERT INTO public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") VALUES (3, 2, '2020-04-24', '2');
INSERT INTO public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") VALUES (2, 2, '2020-02-02', '3');
INSERT INTO public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") VALUES (4, 7, '2020-04-24', '4');
INSERT INTO public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") VALUES (6, 1, '2020-04-23', '5');
INSERT INTO public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") VALUES (7, 1, '2020-04-23', '6');
INSERT INTO public.core_headbill ("HeadBillID", "CustomerID_id", "BillDate", "BillNumber") VALUES (8, 1, '2020-04-23', '7');


--
-- Data for Name: core_product; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (1, 'rice', 12.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (2, 'pasta', 5.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (4, 'pasta12', 5.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (5, 'pasta12', 5.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (6, 'fish', 9.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (7, 'fish2', 9.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (8, 'Bean 500gr', 3.20);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (9, 'Bean 900gr', 6.20);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (10, 'chickpea 450gr', 2.80);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (11, 'chickpea 900gr', 4.80);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (3, 'pasta 200gr', 5.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (12, 'oreo', 5.30);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (13, 'oOreo', 4.80);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (14, 'Sugar 300gr', 4.80);
INSERT INTO public.core_product ("ProductID", "NameProduct", "PriceProduct") VALUES (15, 'corn 300gr', 4.80);


--
-- Data for Name: core_relationshiptaxproduct; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (1, 1, 1);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (2, 1, 2);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (3, 2, 2);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (4, 12, 3);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (5, 12, 2);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (6, 12, 4);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (7, 11, 1);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (8, 11, 2);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (9, 2, 2);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (10, 5, 4);
INSERT INTO public.core_relationshiptaxproduct ("RelationshipTaxProductID", "ProductsID_id", "TaxesTypeID_id") VALUES (11, 12, 2);


--
-- Data for Name: core_subscription; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (4, '123', '2020-04-08', '2020-04-30', 1);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (6, '1234', '2020-04-03', '2020-04-30', 1);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (9, '4321', '2020-04-23', '2022-04-26', 7);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (8, '321', '2015-04-21', '2020-04-26', 2);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (11, '4323', '2020-04-23', '2022-04-26', 9);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (12, '4324', '2020-04-23', '2022-04-26', 9);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (13, '4325', '2020-04-23', '2022-04-26', 7);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (14, '4326', '2020-04-23', '2022-07-26', 2);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (15, '4327', '2020-04-23', '2022-07-26', 2);
INSERT INTO public.core_subscription ("SubscriptionID", "SubscriptionCard", "CreateDate", "ExpDate", "CustomersID_id") VALUES (16, '4224', '2020-04-20', '2022-04-26', 9);


--
-- Data for Name: core_taxstatic; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Data for Name: core_taxtype; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (1, 'hst', 13.00);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (2, 're', 6.00);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (3, 'federal', 5.30);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (4, 'regional gas', 0.50);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (5, 'regional ambiente', 2.00);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (6, 'local City', 5.40);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'core', 'customer');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'core', 'headbill');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'core', 'product');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'core', 'subscription');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'core', 'taxtype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'core', 'relationshiptaxproduct');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'core', 'taxstatic');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'core', 'billdetail');


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-04-21 02:20:33.779275+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-04-21 02:20:34.804366+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2020-04-21 02:20:35.048253+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-04-21 02:20:35.082536+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-21 02:20:35.104394+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-04-21 02:20:35.136647+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-04-21 02:20:35.158796+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-04-21 02:20:35.190936+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-04-21 02:20:35.210719+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-04-21 02:20:35.235165+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-04-21 02:20:35.248392+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-21 02:20:35.283812+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-04-21 02:20:35.359966+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-21 02:20:35.402319+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'core', '0001_initial', '2020-04-21 02:20:36.052117+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'sessions', '0001_initial', '2020-04-21 02:20:36.339082+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'core', '0002_auto_20200421_0305', '2020-04-21 03:05:07.231967+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (50, 'core', '0003_auto_20200421_0327', '2020-04-21 03:27:47.901653+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (51, 'core', '0004_auto_20200421_0343', '2020-04-21 03:43:41.012616+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (52, 'core', '0005_relationshiptaxproduct', '2020-04-21 04:11:47.259597+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (53, 'core', '0006_auto_20200421_0435', '2020-04-21 04:35:30.993637+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (54, 'core', '0007_billdetail_taxstatic', '2020-04-23 12:37:52.44622+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (55, 'core', '0008_auto_20200423_1706', '2020-04-23 17:06:22.765474+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (56, 'core', '0009_auto_20200423_1853', '2020-04-23 18:53:08.740428+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (57, 'core', '0010_auto_20200423_1944', '2020-04-23 19:44:49.054521+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (58, 'core', '0011_auto_20200423_2010', '2020-04-23 20:10:53.106774+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (59, 'core', '0012_auto_20200423_2011', '2020-04-23 20:11:55.828302+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (60, 'core', '0013_auto_20200423_2013', '2020-04-23 20:13:54.571947+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (61, 'core', '0014_auto_20200423_2032', '2020-04-23 20:32:44.889471+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (62, 'core', '0015_auto_20200424_0026', '2020-04-24 00:27:11.488794+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (63, 'core', '0016_auto_20200424_0029', '2020-04-24 00:30:04.065418+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (64, 'core', '0017_auto_20200424_0416', '2020-04-24 04:20:10.412605+00');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres1
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: core_billdetail_BillDetailID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_billdetail_BillDetailID_seq"', 10, true);


--
-- Name: core_customer_CustomerID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_customer_CustomerID_seq"', 11, true);


--
-- Name: core_headbill_HeadBillID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_headbill_HeadBillID_seq"', 8, true);


--
-- Name: core_product_ProductID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_product_ProductID_seq"', 15, true);


--
-- Name: core_relationshiptaxproduct_RelationshipTaxProductID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_relationshiptaxproduct_RelationshipTaxProductID_seq"', 12, true);


--
-- Name: core_subscription_SubscriptionID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_subscription_SubscriptionID_seq"', 16, true);


--
-- Name: core_taxstatic_TaxStaticID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_taxstatic_TaxStaticID_seq"', 1, false);


--
-- Name: core_taxtype_TaxTypeID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public."core_taxtype_TaxTypeID_seq"', 7, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres1
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 64, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: core_billdetail core_billdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail
    ADD CONSTRAINT core_billdetail_pkey PRIMARY KEY ("BillDetailID");


--
-- Name: core_customer core_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_customer
    ADD CONSTRAINT core_customer_pkey PRIMARY KEY ("CustomerID");


--
-- Name: core_headbill core_headbill_BillNumber_fee65252_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill
    ADD CONSTRAINT "core_headbill_BillNumber_fee65252_uniq" UNIQUE ("BillNumber");


--
-- Name: core_headbill core_headbill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill
    ADD CONSTRAINT core_headbill_pkey PRIMARY KEY ("HeadBillID");


--
-- Name: core_product core_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_product
    ADD CONSTRAINT core_product_pkey PRIMARY KEY ("ProductID");


--
-- Name: core_relationshiptaxproduct core_relationshiptaxproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct
    ADD CONSTRAINT core_relationshiptaxproduct_pkey PRIMARY KEY ("RelationshipTaxProductID");


--
-- Name: core_subscription core_subscription_SubscriptionCard_56e5e8a9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription
    ADD CONSTRAINT "core_subscription_SubscriptionCard_56e5e8a9_uniq" UNIQUE ("SubscriptionCard");


--
-- Name: core_subscription core_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription
    ADD CONSTRAINT core_subscription_pkey PRIMARY KEY ("SubscriptionID");


--
-- Name: core_taxstatic core_taxstatic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxstatic
    ADD CONSTRAINT core_taxstatic_pkey PRIMARY KEY ("TaxStaticID");


--
-- Name: core_taxtype core_taxtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxtype
    ADD CONSTRAINT core_taxtype_pkey PRIMARY KEY ("TaxTypeID");


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: core_billdetail_BillID_id_777ec771; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_billdetail_BillID_id_777ec771" ON public.core_billdetail USING btree ("BillID_id");


--
-- Name: core_billdetail_ProductID_id_220c43fc; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_billdetail_ProductID_id_220c43fc" ON public.core_billdetail USING btree ("ProductID_id");


--
-- Name: core_headbill_BillNumber_fee65252_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_headbill_BillNumber_fee65252_like" ON public.core_headbill USING btree ("BillNumber" varchar_pattern_ops);


--
-- Name: core_headbill_CustomerID_id_c3b41424; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_headbill_CustomerID_id_c3b41424" ON public.core_headbill USING btree ("CustomerID_id");


--
-- Name: core_relationshiptaxproduct_ProductsID_id_78eddd8a; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_relationshiptaxproduct_ProductsID_id_78eddd8a" ON public.core_relationshiptaxproduct USING btree ("ProductsID_id");


--
-- Name: core_relationshiptaxproduct_TaxesTypeID_id_8e8fef11; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_relationshiptaxproduct_TaxesTypeID_id_8e8fef11" ON public.core_relationshiptaxproduct USING btree ("TaxesTypeID_id");


--
-- Name: core_subscription_CustomerID_id_dff7600f; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_subscription_CustomerID_id_dff7600f" ON public.core_subscription USING btree ("CustomersID_id");


--
-- Name: core_subscription_SubscriptionCard_56e5e8a9_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_subscription_SubscriptionCard_56e5e8a9_like" ON public.core_subscription USING btree ("SubscriptionCard" varchar_pattern_ops);


--
-- Name: core_taxstatic_BillDetailID_id_ffebf4d8; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX "core_taxstatic_BillDetailID_id_ffebf4d8" ON public.core_taxstatic USING btree ("BillDetailID_id");


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres1
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_billdetail core_billdetail_BillID_id_777ec771_fk_core_headbill_HeadBillID; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail
    ADD CONSTRAINT "core_billdetail_BillID_id_777ec771_fk_core_headbill_HeadBillID" FOREIGN KEY ("BillID_id") REFERENCES public.core_headbill("HeadBillID") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_billdetail core_billdetail_ProductID_id_220c43fc_fk_core_product_ProductID; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_billdetail
    ADD CONSTRAINT "core_billdetail_ProductID_id_220c43fc_fk_core_product_ProductID" FOREIGN KEY ("ProductID_id") REFERENCES public.core_product("ProductID") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_headbill core_headbill_CustomerID_id_c3b41424_fk_core_cust; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_headbill
    ADD CONSTRAINT "core_headbill_CustomerID_id_c3b41424_fk_core_cust" FOREIGN KEY ("CustomerID_id") REFERENCES public.core_customer("CustomerID") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_relationshiptaxproduct core_relationshiptax_ProductsID_id_78eddd8a_fk_core_prod; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct
    ADD CONSTRAINT "core_relationshiptax_ProductsID_id_78eddd8a_fk_core_prod" FOREIGN KEY ("ProductsID_id") REFERENCES public.core_product("ProductID") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_relationshiptaxproduct core_relationshiptax_TaxesTypeID_id_8e8fef11_fk_core_taxt; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_relationshiptaxproduct
    ADD CONSTRAINT "core_relationshiptax_TaxesTypeID_id_8e8fef11_fk_core_taxt" FOREIGN KEY ("TaxesTypeID_id") REFERENCES public.core_taxtype("TaxTypeID") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_subscription core_subscription_CustomersID_id_941aac5d_fk_core_cust; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_subscription
    ADD CONSTRAINT "core_subscription_CustomersID_id_941aac5d_fk_core_cust" FOREIGN KEY ("CustomersID_id") REFERENCES public.core_customer("CustomerID") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_taxstatic core_taxstatic_BillDetailID_id_ffebf4d8_fk_core_bill; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.core_taxstatic
    ADD CONSTRAINT "core_taxstatic_BillDetailID_id_ffebf4d8_fk_core_bill" FOREIGN KEY ("BillDetailID_id") REFERENCES public.core_billdetail("BillDetailID") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres1
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

