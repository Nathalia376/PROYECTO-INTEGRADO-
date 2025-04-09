PGDMP         ;                }            postgres    13.20    13.20 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     W   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es-MX';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3031                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            �            1259    16397 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre_categoria character varying(255) NOT NULL,
    descripcion text
);
    DROP TABLE public.categoria;
       public         heap    postgres    false    4            �            1259    16395    categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_id_categoria_seq;
       public          postgres    false    4    202            �           0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;
          public          postgres    false    201            �            1259    16423    destino    TABLE     �   CREATE TABLE public.destino (
    id_destino integer NOT NULL,
    id_categoria integer NOT NULL,
    nombre_destino "char",
    "descripción " text,
    pais "char"[]
);
    DROP TABLE public.destino;
       public         heap    postgres    false    4            �            1259    16421    destino_id_destino_seq    SEQUENCE     �   CREATE SEQUENCE public.destino_id_destino_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.destino_id_destino_seq;
       public          postgres    false    4    204            �           0    0    destino_id_destino_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.destino_id_destino_seq OWNED BY public.destino.id_destino;
          public          postgres    false    203            �            1259    16452    reseñas    TABLE     �   CREATE TABLE public."reseñas" (
    id integer NOT NULL,
    destino_id integer NOT NULL,
    usuario "char",
    calificacion integer,
    comentario text
);
    DROP TABLE public."reseñas";
       public         heap    postgres    false    4            �            1259    16450    reseñas_id_seq    SEQUENCE     �   CREATE SEQUENCE public."reseñas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."reseñas_id_seq";
       public          postgres    false    208    4            �           0    0    reseñas_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."reseñas_id_seq" OWNED BY public."reseñas".id;
          public          postgres    false    207            �            1259    16434    usuarios    TABLE     _   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre "char",
    email "char"
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false    4            �            1259    16432    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    206    4            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    205            8           2604    16400    categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    201    202    202            9           2604    16426    destino id_destino    DEFAULT     x   ALTER TABLE ONLY public.destino ALTER COLUMN id_destino SET DEFAULT nextval('public.destino_id_destino_seq'::regclass);
 A   ALTER TABLE public.destino ALTER COLUMN id_destino DROP DEFAULT;
       public          postgres    false    203    204    204            ;           2604    16455    reseñas id    DEFAULT     n   ALTER TABLE ONLY public."reseñas" ALTER COLUMN id SET DEFAULT nextval('public."reseñas_id_seq"'::regclass);
 <   ALTER TABLE public."reseñas" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            :           2604    16437    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            �          0    16397 	   categoria 
   TABLE DATA           P   COPY public.categoria (id_categoria, nombre_categoria, descripcion) FROM stdin;
    public          postgres    false    202   �)       �          0    16423    destino 
   TABLE DATA           b   COPY public.destino (id_destino, id_categoria, nombre_destino, "descripción ", pais) FROM stdin;
    public          postgres    false    204   *       �          0    16452    reseñas 
   TABLE DATA           W   COPY public."reseñas" (id, destino_id, usuario, calificacion, comentario) FROM stdin;
    public          postgres    false    208   #*       �          0    16434    usuarios 
   TABLE DATA           5   COPY public.usuarios (id, nombre, email) FROM stdin;
    public          postgres    false    206   @*       �           0    0    categoria_id_categoria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 1, false);
          public          postgres    false    201            �           0    0    destino_id_destino_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.destino_id_destino_seq', 1, false);
          public          postgres    false    203            �           0    0    reseñas_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."reseñas_id_seq"', 1, false);
          public          postgres    false    207            �           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);
          public          postgres    false    205            =           2606    16405    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    202            ?           2606    16431    destino destino_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.destino
    ADD CONSTRAINT destino_pkey PRIMARY KEY (id_destino);
 >   ALTER TABLE ONLY public.destino DROP CONSTRAINT destino_pkey;
       public            postgres    false    204            C           2606    16460    reseñas reseñas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."reseñas"
    ADD CONSTRAINT "reseñas_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."reseñas" DROP CONSTRAINT "reseñas_pkey";
       public            postgres    false    208            A           2606    16439    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    206            F           2606    16461    reseñas destino_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."reseñas"
    ADD CONSTRAINT destino_id FOREIGN KEY (destino_id) REFERENCES public.destino(id_destino);
 ?   ALTER TABLE ONLY public."reseñas" DROP CONSTRAINT destino_id;
       public          postgres    false    208    204    2879            G           2606    16466    reseñas id    FK CONSTRAINT     t   ALTER TABLE ONLY public."reseñas"
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.usuarios(id) NOT VALID;
 7   ALTER TABLE ONLY public."reseñas" DROP CONSTRAINT id;
       public          postgres    false    206    2881    208            D           2606    16440    categoria id_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT id_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria) NOT VALID;
 @   ALTER TABLE ONLY public.categoria DROP CONSTRAINT id_categoria;
       public          postgres    false    202    202    2877            E           2606    16445    destino id_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.destino
    ADD CONSTRAINT id_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria) NOT VALID;
 >   ALTER TABLE ONLY public.destino DROP CONSTRAINT id_categoria;
       public          postgres    false    202    204    2877            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     