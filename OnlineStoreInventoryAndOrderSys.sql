PGDMP  ,    /            	    |           OnlineStoreInventoryAndOrderSys    16.4    17.0 _    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16683    OnlineStoreInventoryAndOrderSys    DATABASE     �   CREATE DATABASE "OnlineStoreInventoryAndOrderSys" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
 1   DROP DATABASE "OnlineStoreInventoryAndOrderSys";
                     postgres    false            �            1259    16692 	   customers    TABLE     �   CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �            1259    16691    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public               postgres    false    218            �           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public               postgres    false    217            �            1259    16732    on_products    TABLE     �   CREATE TABLE public.on_products (
    id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL
);
    DROP TABLE public.on_products;
       public         heap r       postgres    false            �            1259    16731    on_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.on_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.on_products_id_seq;
       public               postgres    false    223            �           0    0    on_products_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.on_products_id_seq OWNED BY public.on_products.id;
          public               postgres    false    222            �            1259    16771    online_customers    TABLE     �   CREATE TABLE public.online_customers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);
 $   DROP TABLE public.online_customers;
       public         heap r       postgres    false            �            1259    16770    online_customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.online_customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.online_customers_id_seq;
       public               postgres    false    227            �           0    0    online_customers_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.online_customers_id_seq OWNED BY public.online_customers.id;
          public               postgres    false    226            �            1259    16791    online_order_items    TABLE     �   CREATE TABLE public.online_order_items (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL
);
 &   DROP TABLE public.online_order_items;
       public         heap r       postgres    false            �            1259    16780    online_orders    TABLE        CREATE TABLE public.online_orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL
);
 !   DROP TABLE public.online_orders;
       public         heap r       postgres    false            �            1259    16779    online_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.online_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.online_orders_id_seq;
       public               postgres    false    229            �           0    0    online_orders_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.online_orders_id_seq OWNED BY public.online_orders.id;
          public               postgres    false    228            �            1259    16764    online_products    TABLE     �   CREATE TABLE public.online_products (
    id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL
);
 #   DROP TABLE public.online_products;
       public         heap r       postgres    false            �            1259    16763    online_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.online_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.online_products_id_seq;
       public               postgres    false    225            �           0    0    online_products_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.online_products_id_seq OWNED BY public.online_products.id;
          public               postgres    false    224            �            1259    16815    onlinestore_customers    TABLE     �   CREATE TABLE public.onlinestore_customers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);
 )   DROP TABLE public.onlinestore_customers;
       public         heap r       postgres    false            �            1259    16814    onlinestore_customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.onlinestore_customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.onlinestore_customers_id_seq;
       public               postgres    false    234            �           0    0    onlinestore_customers_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.onlinestore_customers_id_seq OWNED BY public.onlinestore_customers.id;
          public               postgres    false    233            �            1259    16835    onlinestore_order_items    TABLE     �   CREATE TABLE public.onlinestore_order_items (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL
);
 +   DROP TABLE public.onlinestore_order_items;
       public         heap r       postgres    false            �            1259    16824    onlinestore_orders    TABLE     �   CREATE TABLE public.onlinestore_orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL
);
 &   DROP TABLE public.onlinestore_orders;
       public         heap r       postgres    false            �            1259    16823    onlinestore_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.onlinestore_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.onlinestore_orders_id_seq;
       public               postgres    false    236            �           0    0    onlinestore_orders_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.onlinestore_orders_id_seq OWNED BY public.onlinestore_orders.id;
          public               postgres    false    235            �            1259    16808    onlinestore_products    TABLE     �   CREATE TABLE public.onlinestore_products (
    id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL
);
 (   DROP TABLE public.onlinestore_products;
       public         heap r       postgres    false            �            1259    16807    onlinestore_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.onlinestore_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.onlinestore_products_id_seq;
       public               postgres    false    232            �           0    0    onlinestore_products_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.onlinestore_products_id_seq OWNED BY public.onlinestore_products.id;
          public               postgres    false    231            �            1259    16712    order_items    TABLE     �   CREATE TABLE public.order_items (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL
);
    DROP TABLE public.order_items;
       public         heap r       postgres    false            �            1259    16701    orders    TABLE     x   CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date date NOT NULL
);
    DROP TABLE public.orders;
       public         heap r       postgres    false            �            1259    16700    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public               postgres    false    220            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public               postgres    false    219            �            1259    16685    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock_quantity integer NOT NULL
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    16684    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    216            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    215            �           2604    16695    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16735    on_products id    DEFAULT     p   ALTER TABLE ONLY public.on_products ALTER COLUMN id SET DEFAULT nextval('public.on_products_id_seq'::regclass);
 =   ALTER TABLE public.on_products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    223    223            �           2604    16774    online_customers id    DEFAULT     z   ALTER TABLE ONLY public.online_customers ALTER COLUMN id SET DEFAULT nextval('public.online_customers_id_seq'::regclass);
 B   ALTER TABLE public.online_customers ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    227    227            �           2604    16783    online_orders id    DEFAULT     t   ALTER TABLE ONLY public.online_orders ALTER COLUMN id SET DEFAULT nextval('public.online_orders_id_seq'::regclass);
 ?   ALTER TABLE public.online_orders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    229    228    229            �           2604    16767    online_products id    DEFAULT     x   ALTER TABLE ONLY public.online_products ALTER COLUMN id SET DEFAULT nextval('public.online_products_id_seq'::regclass);
 A   ALTER TABLE public.online_products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    225    225            �           2604    16818    onlinestore_customers id    DEFAULT     �   ALTER TABLE ONLY public.onlinestore_customers ALTER COLUMN id SET DEFAULT nextval('public.onlinestore_customers_id_seq'::regclass);
 G   ALTER TABLE public.onlinestore_customers ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    233    234            �           2604    16827    onlinestore_orders id    DEFAULT     ~   ALTER TABLE ONLY public.onlinestore_orders ALTER COLUMN id SET DEFAULT nextval('public.onlinestore_orders_id_seq'::regclass);
 D   ALTER TABLE public.onlinestore_orders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    235    236            �           2604    16811    onlinestore_products id    DEFAULT     �   ALTER TABLE ONLY public.onlinestore_products ALTER COLUMN id SET DEFAULT nextval('public.onlinestore_products_id_seq'::regclass);
 F   ALTER TABLE public.onlinestore_products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    16704 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    16688    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    216    215    216            s          0    16692 	   customers 
   TABLE DATA           E   COPY public.customers (id, first_name, last_name, email) FROM stdin;
    public               postgres    false    218   7t       x          0    16732    on_products 
   TABLE DATA           N   COPY public.on_products (id, product_name, price, stock_quantity) FROM stdin;
    public               postgres    false    223   �t       |          0    16771    online_customers 
   TABLE DATA           L   COPY public.online_customers (id, first_name, last_name, email) FROM stdin;
    public               postgres    false    227   �t                 0    16791    online_order_items 
   TABLE DATA           L   COPY public.online_order_items (order_id, product_id, quantity) FROM stdin;
    public               postgres    false    230   �t       ~          0    16780    online_orders 
   TABLE DATA           D   COPY public.online_orders (id, customer_id, order_date) FROM stdin;
    public               postgres    false    229   u       z          0    16764    online_products 
   TABLE DATA           R   COPY public.online_products (id, product_name, price, stock_quantity) FROM stdin;
    public               postgres    false    225   (u       �          0    16815    onlinestore_customers 
   TABLE DATA           Q   COPY public.onlinestore_customers (id, first_name, last_name, email) FROM stdin;
    public               postgres    false    234   Eu       �          0    16835    onlinestore_order_items 
   TABLE DATA           Q   COPY public.onlinestore_order_items (order_id, product_id, quantity) FROM stdin;
    public               postgres    false    237   �u       �          0    16824    onlinestore_orders 
   TABLE DATA           I   COPY public.onlinestore_orders (id, customer_id, order_date) FROM stdin;
    public               postgres    false    236   v       �          0    16808    onlinestore_products 
   TABLE DATA           W   COPY public.onlinestore_products (id, product_name, price, stock_quantity) FROM stdin;
    public               postgres    false    232   Bv       v          0    16712    order_items 
   TABLE DATA           E   COPY public.order_items (order_id, product_id, quantity) FROM stdin;
    public               postgres    false    221   �v       u          0    16701    orders 
   TABLE DATA           =   COPY public.orders (id, customer_id, order_date) FROM stdin;
    public               postgres    false    220   �v       q          0    16685    products 
   TABLE DATA           K   COPY public.products (id, product_name, price, stock_quantity) FROM stdin;
    public               postgres    false    216   0w       �           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 4, true);
          public               postgres    false    217            �           0    0    on_products_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.on_products_id_seq', 1, false);
          public               postgres    false    222            �           0    0    online_customers_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.online_customers_id_seq', 1, false);
          public               postgres    false    226            �           0    0    online_orders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.online_orders_id_seq', 1, false);
          public               postgres    false    228            �           0    0    online_products_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.online_products_id_seq', 1, false);
          public               postgres    false    224            �           0    0    onlinestore_customers_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.onlinestore_customers_id_seq', 4, true);
          public               postgres    false    233            �           0    0    onlinestore_orders_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.onlinestore_orders_id_seq', 5, true);
          public               postgres    false    235            �           0    0    onlinestore_products_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.onlinestore_products_id_seq', 5, true);
          public               postgres    false    231            �           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 5, true);
          public               postgres    false    219            �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 5, true);
          public               postgres    false    215            �           2606    16699    customers customers_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_email_key;
       public                 postgres    false    218            �           2606    16697    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public                 postgres    false    218            �           2606    16737    on_products on_products_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.on_products
    ADD CONSTRAINT on_products_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.on_products DROP CONSTRAINT on_products_pkey;
       public                 postgres    false    223            �           2606    16778 +   online_customers online_customers_email_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.online_customers
    ADD CONSTRAINT online_customers_email_key UNIQUE (email);
 U   ALTER TABLE ONLY public.online_customers DROP CONSTRAINT online_customers_email_key;
       public                 postgres    false    227            �           2606    16776 &   online_customers online_customers_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.online_customers
    ADD CONSTRAINT online_customers_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.online_customers DROP CONSTRAINT online_customers_pkey;
       public                 postgres    false    227            �           2606    16795 *   online_order_items online_order_items_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.online_order_items
    ADD CONSTRAINT online_order_items_pkey PRIMARY KEY (order_id, product_id);
 T   ALTER TABLE ONLY public.online_order_items DROP CONSTRAINT online_order_items_pkey;
       public                 postgres    false    230    230            �           2606    16785     online_orders online_orders_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.online_orders
    ADD CONSTRAINT online_orders_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.online_orders DROP CONSTRAINT online_orders_pkey;
       public                 postgres    false    229            �           2606    16769 $   online_products online_products_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.online_products
    ADD CONSTRAINT online_products_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.online_products DROP CONSTRAINT online_products_pkey;
       public                 postgres    false    225            �           2606    16822 5   onlinestore_customers onlinestore_customers_email_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.onlinestore_customers
    ADD CONSTRAINT onlinestore_customers_email_key UNIQUE (email);
 _   ALTER TABLE ONLY public.onlinestore_customers DROP CONSTRAINT onlinestore_customers_email_key;
       public                 postgres    false    234            �           2606    16820 0   onlinestore_customers onlinestore_customers_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.onlinestore_customers
    ADD CONSTRAINT onlinestore_customers_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.onlinestore_customers DROP CONSTRAINT onlinestore_customers_pkey;
       public                 postgres    false    234            �           2606    16839 4   onlinestore_order_items onlinestore_order_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.onlinestore_order_items
    ADD CONSTRAINT onlinestore_order_items_pkey PRIMARY KEY (order_id, product_id);
 ^   ALTER TABLE ONLY public.onlinestore_order_items DROP CONSTRAINT onlinestore_order_items_pkey;
       public                 postgres    false    237    237            �           2606    16829 *   onlinestore_orders onlinestore_orders_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.onlinestore_orders
    ADD CONSTRAINT onlinestore_orders_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.onlinestore_orders DROP CONSTRAINT onlinestore_orders_pkey;
       public                 postgres    false    236            �           2606    16813 .   onlinestore_products onlinestore_products_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.onlinestore_products
    ADD CONSTRAINT onlinestore_products_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.onlinestore_products DROP CONSTRAINT onlinestore_products_pkey;
       public                 postgres    false    232            �           2606    16716    order_items order_items_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_id, product_id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public                 postgres    false    221    221            �           2606    16706    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public                 postgres    false    220            �           2606    16690    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    216            �           2606    16796 3   online_order_items online_order_items_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.online_order_items
    ADD CONSTRAINT online_order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.online_orders(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.online_order_items DROP CONSTRAINT online_order_items_order_id_fkey;
       public               postgres    false    230    229    3531            �           2606    16801 5   online_order_items online_order_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.online_order_items
    ADD CONSTRAINT online_order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.online_products(id);
 _   ALTER TABLE ONLY public.online_order_items DROP CONSTRAINT online_order_items_product_id_fkey;
       public               postgres    false    225    230    3525            �           2606    16786 ,   online_orders online_orders_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.online_orders
    ADD CONSTRAINT online_orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.online_customers(id);
 V   ALTER TABLE ONLY public.online_orders DROP CONSTRAINT online_orders_customer_id_fkey;
       public               postgres    false    3529    227    229            �           2606    16840 =   onlinestore_order_items onlinestore_order_items_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.onlinestore_order_items
    ADD CONSTRAINT onlinestore_order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.onlinestore_orders(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.onlinestore_order_items DROP CONSTRAINT onlinestore_order_items_order_id_fkey;
       public               postgres    false    237    3541    236            �           2606    16845 ?   onlinestore_order_items onlinestore_order_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.onlinestore_order_items
    ADD CONSTRAINT onlinestore_order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.onlinestore_products(id);
 i   ALTER TABLE ONLY public.onlinestore_order_items DROP CONSTRAINT onlinestore_order_items_product_id_fkey;
       public               postgres    false    232    237    3535            �           2606    16830 6   onlinestore_orders onlinestore_orders_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.onlinestore_orders
    ADD CONSTRAINT onlinestore_orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.onlinestore_customers(id);
 `   ALTER TABLE ONLY public.onlinestore_orders DROP CONSTRAINT onlinestore_orders_customer_id_fkey;
       public               postgres    false    234    3539    236            �           2606    16717 %   order_items order_items_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_order_id_fkey;
       public               postgres    false    220    3519    221            �           2606    16722 '   order_items order_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);
 Q   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_product_id_fkey;
       public               postgres    false    216    221    3513            �           2606    16707    orders orders_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customer_id_fkey;
       public               postgres    false    3517    220    218            s   m   x�U��
�0E盏yP�hqr���%�IH�
)��T�l���<0�M����&<��70�U�Y'�;���/H�b�<1����%AW#YS�x��ǅ�t�0bh���RJ�a4�      x      x������ � �      |      x������ � �            x������ � �      ~      x������ � �      z      x������ � �      �   m   x�U��
�0E盏yP�hqr���%�IH�
)��T�l���<0�M����&<��70�U�Y'�;���/H�b�<1����%AW#YS�x��ǅ�t�0bh���RJ�a4�      �   0   x���	 0���;�I�uD�Y�QX������2�T�=H{���E      �   0   x�3�4�4202�54�50�2�4BpM�L8M�\C#.S$ņ�\1z\\\ VK
H      �   ^   x�-�;
�0��z�0a�B�`a��ͪ�j���bl��a��䘎��Y1�0Y�2o��դ=�*o)K���'�^rI��֐Cd�.�wY��I�J�      v   0   x���	 0���;�I�uD�Y�QX������2�T�=H{���E      u   0   x�3�4�4202�54�50�2�4BpM�L8M�\C#.S$ņ�\1z\\\ VK
H      q   ^   x�-�;
�0��z�0�yA�����6�R�	������f4�]Βc:<s��d0ʼ�[�r䪼�,旎z�%e(][K]�����e�����K     