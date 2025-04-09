PGDMP         $                }            postgres    13.20    13.20     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13442    postgres    DATABASE     W   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es-MX';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3016                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16397 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre_categoria character varying(255) NOT NULL,
    descripcion text
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    16395    categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_id_categoria_seq;
       public          postgres    false    202            �           0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;
          public          postgres    false    201            �            1259    16423    destino    TABLE     �   CREATE TABLE public.destino (
    id_destino integer NOT NULL,
    id_categoria integer,
    nombre_destino "char",
    "descripción " text,
    pais "char"[]
);
    DROP TABLE public.destino;
       public         heap    postgres    false            �            1259    16421    destino_id_destino_seq    SEQUENCE     �   CREATE SEQUENCE public.destino_id_destino_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.destino_id_destino_seq;
       public          postgres    false    206            �           0    0    destino_id_destino_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.destino_id_destino_seq OWNED BY public.destino.id_destino;
          public          postgres    false    205            �            1259    16407    destinos    TABLE     �   CREATE TABLE public.destinos (
    id_destino integer NOT NULL,
    id_categoria integer,
    nombre_destino "char",
    descripcion text,
    pais "char"
);
    DROP TABLE public.destinos;
       public         heap    postgres    false            �            1259    16410    destinos_id_destino_seq    SEQUENCE     �   CREATE SEQUENCE public.destinos_id_destino_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.destinos_id_destino_seq;
       public          postgres    false    203            �           0    0    destinos_id_destino_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.destinos_id_destino_seq OWNED BY public.destinos.id_destino;
          public          postgres    false    204            2           2604    16400    categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    201    202    202            4           2604    16426    destino id_destino    DEFAULT     x   ALTER TABLE ONLY public.destino ALTER COLUMN id_destino SET DEFAULT nextval('public.destino_id_destino_seq'::regclass);
 A   ALTER TABLE public.destino ALTER COLUMN id_destino DROP DEFAULT;
       public          postgres    false    206    205    206            3           2604    16412    destinos id_destino    DEFAULT     z   ALTER TABLE ONLY public.destinos ALTER COLUMN id_destino SET DEFAULT nextval('public.destinos_id_destino_seq'::regclass);
 B   ALTER TABLE public.destinos ALTER COLUMN id_destino DROP DEFAULT;
       public          postgres    false    204    203            �          0    16397 	   categoria 
   TABLE DATA           P   COPY public.categoria (id_categoria, nombre_categoria, descripcion) FROM stdin;
    public          postgres    false    202   c       �          0    16423    destino 
   TABLE DATA           b   COPY public.destino (id_destino, id_categoria, nombre_destino, "descripción ", pais) FROM stdin;
    public          postgres    false    206   �       �          0    16407    destinos 
   TABLE DATA           _   COPY public.destinos (id_destino, id_categoria, nombre_destino, descripcion, pais) FROM stdin;
    public          postgres    false    203   �       �           0    0    categoria_id_categoria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 1, false);
          public          postgres    false    201            �           0    0    destino_id_destino_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.destino_id_destino_seq', 1, false);
          public          postgres    false    205            �           0    0    destinos_id_destino_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.destinos_id_destino_seq', 1, false);
          public          postgres    false    204            6           2606    16405    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    202            :           2606    16431    destino destino_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.destino
    ADD CONSTRAINT destino_pkey PRIMARY KEY (id_destino);
 >   ALTER TABLE ONLY public.destino DROP CONSTRAINT destino_pkey;
       public            postgres    false    206            8           2606    16417    destinos destinos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.destinos
    ADD CONSTRAINT destinos_pkey PRIMARY KEY (id_destino);
 @   ALTER TABLE ONLY public.destinos DROP CONSTRAINT destinos_pkey;
       public            postgres    false    203            �      x������ � �      �      x������ � �      �      x������ � �     