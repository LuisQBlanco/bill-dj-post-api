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

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres1
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
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres1
--



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
-- Data for Name: core_taxtype; Type: TABLE DATA; Schema: public; Owner: postgres1
--

INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (1, 'hst', 13.00);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (2, 're', 6.00);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (3, 'federal', 5.30);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (4, 'regional gas', 0.50);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (5, 'regional ambiente', 2.00);
INSERT INTO public.core_taxtype ("TaxTypeID", "TaxType", "TaxPercentage") VALUES (6, 'local City', 5.40);


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
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres1
--



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
-- PostgreSQL database dump complete
--

