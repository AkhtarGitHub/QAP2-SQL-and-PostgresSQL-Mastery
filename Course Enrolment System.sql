PGDMP  ,                	    |           UniEnrollment    16.4    17.0 :    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            T           1262    16590    UniEnrollment    DATABASE     q   CREATE DATABASE "UniEnrollment" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "UniEnrollment";
                     postgres    false            �            1259    16606    courses    TABLE     �   CREATE TABLE public.courses (
    id integer NOT NULL,
    course_name character varying(100),
    course_description text,
    professor_id integer
);
    DROP TABLE public.courses;
       public         heap r       postgres    false            �            1259    16605    courses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.courses_id_seq;
       public               postgres    false    220            U           0    0    courses_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;
          public               postgres    false    219            �            1259    16619    enrollments    TABLE        CREATE TABLE public.enrollments (
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    enrollment_date date
);
    DROP TABLE public.enrollments;
       public         heap r       postgres    false            �            1259    16599 
   professors    TABLE     �   CREATE TABLE public.professors (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    department character varying(100)
);
    DROP TABLE public.professors;
       public         heap r       postgres    false            �            1259    16598    professors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.professors_id_seq;
       public               postgres    false    218            V           0    0    professors_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.professors_id_seq OWNED BY public.professors.id;
          public               postgres    false    217            �            1259    16592    students    TABLE     �   CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    school_enrollment_date date
);
    DROP TABLE public.students;
       public         heap r       postgres    false            �            1259    16591    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public               postgres    false    216            W           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public               postgres    false    215            �            1259    16650    ucourses    TABLE     �   CREATE TABLE public.ucourses (
    id integer NOT NULL,
    course_name character varying(100),
    course_description text,
    professor_id integer
);
    DROP TABLE public.ucourses;
       public         heap r       postgres    false            �            1259    16649    ucourses_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ucourses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ucourses_id_seq;
       public               postgres    false    227            X           0    0    ucourses_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ucourses_id_seq OWNED BY public.ucourses.id;
          public               postgres    false    226            �            1259    16663    uenrollments    TABLE     �   CREATE TABLE public.uenrollments (
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    enrollment_date date
);
     DROP TABLE public.uenrollments;
       public         heap r       postgres    false            �            1259    16643    uprofessors    TABLE     �   CREATE TABLE public.uprofessors (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    department character varying(100)
);
    DROP TABLE public.uprofessors;
       public         heap r       postgres    false            �            1259    16642    uprofessors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.uprofessors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.uprofessors_id_seq;
       public               postgres    false    225            Y           0    0    uprofessors_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.uprofessors_id_seq OWNED BY public.uprofessors.id;
          public               postgres    false    224            �            1259    16636 	   ustudents    TABLE     �   CREATE TABLE public.ustudents (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    school_enrollment_date date
);
    DROP TABLE public.ustudents;
       public         heap r       postgres    false            �            1259    16635    ustudents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ustudents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ustudents_id_seq;
       public               postgres    false    223            Z           0    0    ustudents_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ustudents_id_seq OWNED BY public.ustudents.id;
          public               postgres    false    222            �           2604    16609 
   courses id    DEFAULT     h   ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);
 9   ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16602    professors id    DEFAULT     n   ALTER TABLE ONLY public.professors ALTER COLUMN id SET DEFAULT nextval('public.professors_id_seq'::regclass);
 <   ALTER TABLE public.professors ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16595    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    216    215    216            �           2604    16653    ucourses id    DEFAULT     j   ALTER TABLE ONLY public.ucourses ALTER COLUMN id SET DEFAULT nextval('public.ucourses_id_seq'::regclass);
 :   ALTER TABLE public.ucourses ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    227    227            �           2604    16646    uprofessors id    DEFAULT     p   ALTER TABLE ONLY public.uprofessors ALTER COLUMN id SET DEFAULT nextval('public.uprofessors_id_seq'::regclass);
 =   ALTER TABLE public.uprofessors ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    225    225            �           2604    16639    ustudents id    DEFAULT     l   ALTER TABLE ONLY public.ustudents ALTER COLUMN id SET DEFAULT nextval('public.ustudents_id_seq'::regclass);
 ;   ALTER TABLE public.ustudents ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    222    223            F          0    16606    courses 
   TABLE DATA           T   COPY public.courses (id, course_name, course_description, professor_id) FROM stdin;
    public               postgres    false    220   �B       G          0    16619    enrollments 
   TABLE DATA           M   COPY public.enrollments (student_id, course_id, enrollment_date) FROM stdin;
    public               postgres    false    221   �B       D          0    16599 
   professors 
   TABLE DATA           K   COPY public.professors (id, first_name, last_name, department) FROM stdin;
    public               postgres    false    218   �B       B          0    16592    students 
   TABLE DATA           \   COPY public.students (id, first_name, last_name, email, school_enrollment_date) FROM stdin;
    public               postgres    false    216   �B       M          0    16650    ucourses 
   TABLE DATA           U   COPY public.ucourses (id, course_name, course_description, professor_id) FROM stdin;
    public               postgres    false    227   C       N          0    16663    uenrollments 
   TABLE DATA           N   COPY public.uenrollments (student_id, course_id, enrollment_date) FROM stdin;
    public               postgres    false    228   �C       K          0    16643    uprofessors 
   TABLE DATA           L   COPY public.uprofessors (id, first_name, last_name, department) FROM stdin;
    public               postgres    false    225   �C       I          0    16636 	   ustudents 
   TABLE DATA           ]   COPY public.ustudents (id, first_name, last_name, email, school_enrollment_date) FROM stdin;
    public               postgres    false    223   AD       [           0    0    courses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.courses_id_seq', 1, false);
          public               postgres    false    219            \           0    0    professors_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.professors_id_seq', 1, false);
          public               postgres    false    217            ]           0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 1, false);
          public               postgres    false    215            ^           0    0    ucourses_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ucourses_id_seq', 3, true);
          public               postgres    false    226            _           0    0    uprofessors_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.uprofessors_id_seq', 4, true);
          public               postgres    false    224            `           0    0    ustudents_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ustudents_id_seq', 5, true);
          public               postgres    false    222            �           2606    16613    courses courses_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public                 postgres    false    220            �           2606    16623    enrollments enrollments_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (student_id, course_id);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public                 postgres    false    221    221            �           2606    16604    professors professors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.professors DROP CONSTRAINT professors_pkey;
       public                 postgres    false    218            �           2606    16597    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public                 postgres    false    216            �           2606    16657    ucourses ucourses_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ucourses
    ADD CONSTRAINT ucourses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ucourses DROP CONSTRAINT ucourses_pkey;
       public                 postgres    false    227            �           2606    16667    uenrollments uenrollments_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.uenrollments
    ADD CONSTRAINT uenrollments_pkey PRIMARY KEY (student_id, course_id);
 H   ALTER TABLE ONLY public.uenrollments DROP CONSTRAINT uenrollments_pkey;
       public                 postgres    false    228    228            �           2606    16648    uprofessors uprofessors_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.uprofessors
    ADD CONSTRAINT uprofessors_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.uprofessors DROP CONSTRAINT uprofessors_pkey;
       public                 postgres    false    225            �           2606    16641    ustudents ustudents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ustudents
    ADD CONSTRAINT ustudents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.ustudents DROP CONSTRAINT ustudents_pkey;
       public                 postgres    false    223            �           2606    16614 !   courses courses_professor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.professors(id);
 K   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_professor_id_fkey;
       public               postgres    false    218    3487    220            �           2606    16629 &   enrollments enrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_course_id_fkey;
       public               postgres    false    220    3489    221            �           2606    16624 '   enrollments enrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);
 Q   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
       public               postgres    false    221    3485    216            �           2606    16658 #   ucourses ucourses_professor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ucourses
    ADD CONSTRAINT ucourses_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.uprofessors(id);
 M   ALTER TABLE ONLY public.ucourses DROP CONSTRAINT ucourses_professor_id_fkey;
       public               postgres    false    3495    227    225            �           2606    16673 (   uenrollments uenrollments_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uenrollments
    ADD CONSTRAINT uenrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.ucourses(id);
 R   ALTER TABLE ONLY public.uenrollments DROP CONSTRAINT uenrollments_course_id_fkey;
       public               postgres    false    227    228    3497            �           2606    16668 )   uenrollments uenrollments_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.uenrollments
    ADD CONSTRAINT uenrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.ustudents(id);
 S   ALTER TABLE ONLY public.uenrollments DROP CONSTRAINT uenrollments_student_id_fkey;
       public               postgres    false    223    3493    228            F      x������ � �      G      x������ � �      D      x������ � �      B      x������ � �      M   |   x�-�A
�0E�3�����@Ep'd�ʹ�1�$%3Az{�t��{|�M�%�9xd�ŵYcZhWk-�rJ108��Z���Y��tL?���5����'���������'����"�K�3�D���-n      N   .   x�3�4�4202�5��50�2�4Bp��L8�\.SdYS�=... Z$
e      K   Y   x�3������t�O��,����2��J�K���,� 2���9�2�3�R8���@B��E�%\&����9��!��9�E�!�>\1z\\\ y�      I   �   x�m���0E�����t`㹰2��$m��ZD�|�v�n�H>��q��ܥ!'�l����}L|�M��RWB*�j�p�L�á�cB��b+Q%��N��[�|(g�"<β�h�%�8�h�n���K5���i��5)�o�ѿ:����ῑ���3}*O@     