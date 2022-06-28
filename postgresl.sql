toc.dat                                                                                             0000600 0004000 0002000 00000264025 14256542426 0014462 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       %                    z         
   hhprofiler    13.2    13.2    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         E           1262    24348 
   hhprofiler    DATABASE     l   CREATE DATABASE hhprofiler WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE hhprofiler;
                postgres    false         �            1259    24379    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false         �            1259    24377    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    206         F           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    205                    1259    25962 
   households    TABLE     A  CREATE TABLE public.households (
    id bigint NOT NULL,
    controlnumber character varying(255) NOT NULL,
    libmunicipalitie_psgccode character varying(255) NOT NULL,
    libbarangay_psgccode character varying(255) NOT NULL,
    purok character varying(255),
    latitude character varying(255) NOT NULL,
    longitude character varying(255) NOT NULL,
    respondent character varying(255) NOT NULL,
    dateinterview text NOT NULL,
    nameenumerator character varying(255) NOT NULL,
    nameeditor character varying(255) NOT NULL,
    dateedited text NOT NULL,
    libbuildingtype_id bigint NOT NULL,
    libtenuralstatu_id bigint NOT NULL,
    year_construct integer NOT NULL,
    estimated_cost integer NOT NULL,
    bedrooms integer NOT NULL,
    storey integer NOT NULL,
    access_electricity boolean NOT NULL,
    access_internet boolean NOT NULL,
    libbuildingroofmaterial_id bigint NOT NULL,
    medical_treatment character varying(255),
    access_watersupply boolean NOT NULL,
    potable boolean NOT NULL,
    libhhwatertenuralstatu_id bigint NOT NULL,
    libhhlvlwatersystem_id bigint NOT NULL,
    floods_occur boolean NOT NULL,
    year_flood integer,
    experience_evacuationduringcalamity boolean NOT NULL,
    year_evacuated integer,
    libhhevacuationarea_id bigint NOT NULL,
    has_accesstohealthmedicalfacilities boolean NOT NULL,
    has_accesstotelecommunications boolean NOT NULL,
    has_accesstodrillsandsimulations boolean NOT NULL,
    image character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.households;
       public         heap    postgres    false                    1259    25960    households_id_seq    SEQUENCE     z   CREATE SEQUENCE public.households_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.households_id_seq;
       public          postgres    false    264         G           0    0    households_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.households_id_seq OWNED BY public.households.id;
          public          postgres    false    263                    1259    25473    libbarangays    TABLE       CREATE TABLE public.libbarangays (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    psgccode character varying(255) NOT NULL,
    lib_brgyname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.libbarangays;
       public         heap    postgres    false                    1259    25471    libbarangays_id_seq    SEQUENCE     |   CREATE SEQUENCE public.libbarangays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.libbarangays_id_seq;
       public          postgres    false    262         H           0    0    libbarangays_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.libbarangays_id_seq OWNED BY public.libbarangays.id;
          public          postgres    false    261         �            1259    24408    libbuildingroofmaterials    TABLE     �   CREATE TABLE public.libbuildingroofmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.libbuildingroofmaterials;
       public         heap    postgres    false         �            1259    24406    libbuildingroofmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingroofmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.libbuildingroofmaterials_id_seq;
       public          postgres    false    210         I           0    0    libbuildingroofmaterials_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.libbuildingroofmaterials_id_seq OWNED BY public.libbuildingroofmaterials.id;
          public          postgres    false    209         �            1259    24421    libbuildingstatus    TABLE     �   CREATE TABLE public.libbuildingstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_statusname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libbuildingstatus;
       public         heap    postgres    false         �            1259    24419    libbuildingstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libbuildingstatus_id_seq;
       public          postgres    false    212         J           0    0    libbuildingstatus_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libbuildingstatus_id_seq OWNED BY public.libbuildingstatus.id;
          public          postgres    false    211         �            1259    24434    libbuildingtypes    TABLE     �   CREATE TABLE public.libbuildingtypes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tobname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.libbuildingtypes;
       public         heap    postgres    false         �            1259    24432    libbuildingtypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingtypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.libbuildingtypes_id_seq;
       public          postgres    false    214         K           0    0    libbuildingtypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.libbuildingtypes_id_seq OWNED BY public.libbuildingtypes.id;
          public          postgres    false    213         �            1259    24447    libbuildinguses    TABLE     �   CREATE TABLE public.libbuildinguses (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_buildingusedesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.libbuildinguses;
       public         heap    postgres    false         �            1259    24445    libbuildinguses_id_seq    SEQUENCE        CREATE SEQUENCE public.libbuildinguses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.libbuildinguses_id_seq;
       public          postgres    false    216         L           0    0    libbuildinguses_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.libbuildinguses_id_seq OWNED BY public.libbuildinguses.id;
          public          postgres    false    215         �            1259    24460    libbuildingwallmaterials    TABLE     �   CREATE TABLE public.libbuildingwallmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.libbuildingwallmaterials;
       public         heap    postgres    false         �            1259    24458    libbuildingwallmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingwallmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.libbuildingwallmaterials_id_seq;
       public          postgres    false    218         M           0    0    libbuildingwallmaterials_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.libbuildingwallmaterials_id_seq OWNED BY public.libbuildingwallmaterials.id;
          public          postgres    false    217         �            1259    24473    libdisabilities    TABLE     �   CREATE TABLE public.libdisabilities (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_dname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.libdisabilities;
       public         heap    postgres    false         �            1259    24471    libdisabilities_id_seq    SEQUENCE        CREATE SEQUENCE public.libdisabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.libdisabilities_id_seq;
       public          postgres    false    220         N           0    0    libdisabilities_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.libdisabilities_id_seq OWNED BY public.libdisabilities.id;
          public          postgres    false    219         �            1259    24486    libfarmingtechs    TABLE     �   CREATE TABLE public.libfarmingtechs (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_techname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.libfarmingtechs;
       public         heap    postgres    false         �            1259    24484    libfarmingtechs_id_seq    SEQUENCE        CREATE SEQUENCE public.libfarmingtechs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.libfarmingtechs_id_seq;
       public          postgres    false    222         O           0    0    libfarmingtechs_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.libfarmingtechs_id_seq OWNED BY public.libfarmingtechs.id;
          public          postgres    false    221         �            1259    24499 
   libgenders    TABLE     �   CREATE TABLE public.libgenders (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_gname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.libgenders;
       public         heap    postgres    false         �            1259    24497    libgenders_id_seq    SEQUENCE     z   CREATE SEQUENCE public.libgenders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.libgenders_id_seq;
       public          postgres    false    224         P           0    0    libgenders_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.libgenders_id_seq OWNED BY public.libgenders.id;
          public          postgres    false    223                    1259    25440    libgradelvls    TABLE     	  CREATE TABLE public.libgradelvls (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_glcode integer NOT NULL,
    lib_glname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.libgradelvls;
       public         heap    postgres    false                    1259    25438    libgradelvls_id_seq    SEQUENCE     |   CREATE SEQUENCE public.libgradelvls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.libgradelvls_id_seq;
       public          postgres    false    258         Q           0    0    libgradelvls_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.libgradelvls_id_seq OWNED BY public.libgradelvls.id;
          public          postgres    false    257         �            1259    24525    libhhevacuationareas    TABLE     �   CREATE TABLE public.libhhevacuationareas (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_heaname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.libhhevacuationareas;
       public         heap    postgres    false         �            1259    24523    libhhevacuationareas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhevacuationareas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libhhevacuationareas_id_seq;
       public          postgres    false    226         R           0    0    libhhevacuationareas_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libhhevacuationareas_id_seq OWNED BY public.libhhevacuationareas.id;
          public          postgres    false    225                     1259    24996    libhhlvlwatersystems    TABLE     -  CREATE TABLE public.libhhlvlwatersystems (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_hhwatersystemlvl character varying(255) NOT NULL,
    lib_hhlvldesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.libhhlvlwatersystems;
       public         heap    postgres    false         �            1259    24994    libhhlvlwatersystems_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhlvlwatersystems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libhhlvlwatersystems_id_seq;
       public          postgres    false    256         S           0    0    libhhlvlwatersystems_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libhhlvlwatersystems_id_seq OWNED BY public.libhhlvlwatersystems.id;
          public          postgres    false    255         �            1259    24551    libhhroofmaterials    TABLE     �   CREATE TABLE public.libhhroofmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_roofmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.libhhroofmaterials;
       public         heap    postgres    false         �            1259    24549    libhhroofmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhroofmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.libhhroofmaterials_id_seq;
       public          postgres    false    228         T           0    0    libhhroofmaterials_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.libhhroofmaterials_id_seq OWNED BY public.libhhroofmaterials.id;
          public          postgres    false    227         �            1259    24564    libhhtenuralstatus    TABLE     �   CREATE TABLE public.libhhtenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_ternuralstatusdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.libhhtenuralstatus;
       public         heap    postgres    false         �            1259    24562    libhhtenuralstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhtenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.libhhtenuralstatus_id_seq;
       public          postgres    false    230         U           0    0    libhhtenuralstatus_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.libhhtenuralstatus_id_seq OWNED BY public.libhhtenuralstatus.id;
          public          postgres    false    229         �            1259    24590    libhhwallconmaterials    TABLE     �   CREATE TABLE public.libhhwallconmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.libhhwallconmaterials;
       public         heap    postgres    false         �            1259    24588    libhhwallconmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhwallconmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.libhhwallconmaterials_id_seq;
       public          postgres    false    232         V           0    0    libhhwallconmaterials_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.libhhwallconmaterials_id_seq OWNED BY public.libhhwallconmaterials.id;
          public          postgres    false    231         �            1259    24603    libhhwatertenuralstatus    TABLE     �   CREATE TABLE public.libhhwatertenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wtdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.libhhwatertenuralstatus;
       public         heap    postgres    false         �            1259    24601    libhhwatertenuralstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhwatertenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.libhhwatertenuralstatus_id_seq;
       public          postgres    false    234         W           0    0    libhhwatertenuralstatus_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.libhhwatertenuralstatus_id_seq OWNED BY public.libhhwatertenuralstatus.id;
          public          postgres    false    233         �            1259    24616    liblivelihoods    TABLE     �   CREATE TABLE public.liblivelihoods (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_livelihooddesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.liblivelihoods;
       public         heap    postgres    false         �            1259    24614    liblivelihoods_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.liblivelihoods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.liblivelihoods_id_seq;
       public          postgres    false    236         X           0    0    liblivelihoods_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.liblivelihoods_id_seq OWNED BY public.liblivelihoods.id;
          public          postgres    false    235         �            1259    24629    libmaritalstatus    TABLE     �   CREATE TABLE public.libmaritalstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_msname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.libmaritalstatus;
       public         heap    postgres    false         �            1259    24627    libmaritalstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libmaritalstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.libmaritalstatus_id_seq;
       public          postgres    false    238         Y           0    0    libmaritalstatus_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.libmaritalstatus_id_seq OWNED BY public.libmaritalstatus.id;
          public          postgres    false    237         �            1259    24642    libmonthlyincomes    TABLE     �   CREATE TABLE public.libmonthlyincomes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_miname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libmonthlyincomes;
       public         heap    postgres    false         �            1259    24640    libmonthlyincomes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libmonthlyincomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libmonthlyincomes_id_seq;
       public          postgres    false    240         Z           0    0    libmonthlyincomes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libmonthlyincomes_id_seq OWNED BY public.libmonthlyincomes.id;
          public          postgres    false    239                    1259    25455    libmunicipalities    TABLE       CREATE TABLE public.libmunicipalities (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    psgccode character varying(255) NOT NULL,
    lib_munname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libmunicipalities;
       public         heap    postgres    false                    1259    25453    libmunicipalities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libmunicipalities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libmunicipalities_id_seq;
       public          postgres    false    260         [           0    0    libmunicipalities_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libmunicipalities_id_seq OWNED BY public.libmunicipalities.id;
          public          postgres    false    259         �            1259    24655    libnutritionalstatus    TABLE     �   CREATE TABLE public.libnutritionalstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_nsname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.libnutritionalstatus;
       public         heap    postgres    false         �            1259    24653    libnutritionalstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libnutritionalstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libnutritionalstatus_id_seq;
       public          postgres    false    242         \           0    0    libnutritionalstatus_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libnutritionalstatus_id_seq OWNED BY public.libnutritionalstatus.id;
          public          postgres    false    241         �            1259    24707    librelationshipheads    TABLE     �   CREATE TABLE public.librelationshipheads (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_rhname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.librelationshipheads;
       public         heap    postgres    false         �            1259    24705    librelationshipheads_id_seq    SEQUENCE     �   CREATE SEQUENCE public.librelationshipheads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.librelationshipheads_id_seq;
       public          postgres    false    250         ]           0    0    librelationshipheads_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.librelationshipheads_id_seq OWNED BY public.librelationshipheads.id;
          public          postgres    false    249         �            1259    24668    libreligions    TABLE     �   CREATE TABLE public.libreligions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_rname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.libreligions;
       public         heap    postgres    false         �            1259    24666    libreligions_id_seq    SEQUENCE     |   CREATE SEQUENCE public.libreligions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.libreligions_id_seq;
       public          postgres    false    244         ^           0    0    libreligions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.libreligions_id_seq OWNED BY public.libreligions.id;
          public          postgres    false    243         �            1259    24733    libroofconmaterials    TABLE     �   CREATE TABLE public.libroofconmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tocmname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.libroofconmaterials;
       public         heap    postgres    false         �            1259    24731    libroofconmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libroofconmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.libroofconmaterials_id_seq;
       public          postgres    false    254         _           0    0    libroofconmaterials_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.libroofconmaterials_id_seq OWNED BY public.libroofconmaterials.id;
          public          postgres    false    253         �            1259    24720    libtenuralstatus    TABLE     �   CREATE TABLE public.libtenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tsname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.libtenuralstatus;
       public         heap    postgres    false         �            1259    24718    libtenuralstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libtenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.libtenuralstatus_id_seq;
       public          postgres    false    252         `           0    0    libtenuralstatus_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.libtenuralstatus_id_seq OWNED BY public.libtenuralstatus.id;
          public          postgres    false    251         �            1259    24681 
   libtscshvc    TABLE     �   CREATE TABLE public.libtscshvc (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tscshvcname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.libtscshvc;
       public         heap    postgres    false         �            1259    24679    libtscshvc_id_seq    SEQUENCE     z   CREATE SEQUENCE public.libtscshvc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.libtscshvc_id_seq;
       public          postgres    false    246         a           0    0    libtscshvc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.libtscshvc_id_seq OWNED BY public.libtscshvc.id;
          public          postgres    false    245         �            1259    24694    libtypeofprograms    TABLE     �   CREATE TABLE public.libtypeofprograms (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_topname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libtypeofprograms;
       public         heap    postgres    false         �            1259    24692    libtypeofprograms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libtypeofprograms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libtypeofprograms_id_seq;
       public          postgres    false    248         b           0    0    libtypeofprograms_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libtypeofprograms_id_seq OWNED BY public.libtypeofprograms.id;
          public          postgres    false    247         �            1259    24351 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false         �            1259    24349    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    201         c           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    200         �            1259    24370    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false         �            1259    24393    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false         �            1259    24391    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    208         d           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    207         �            1259    24359    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role character varying(255) DEFAULT 'User'::character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    24357    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203         e           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202         �           2604    24382    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206         	           2604    25965    households id    DEFAULT     n   ALTER TABLE ONLY public.households ALTER COLUMN id SET DEFAULT nextval('public.households_id_seq'::regclass);
 <   ALTER TABLE public.households ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264                    2604    25476    libbarangays id    DEFAULT     r   ALTER TABLE ONLY public.libbarangays ALTER COLUMN id SET DEFAULT nextval('public.libbarangays_id_seq'::regclass);
 >   ALTER TABLE public.libbarangays ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262         �           2604    24411    libbuildingroofmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libbuildingroofmaterials ALTER COLUMN id SET DEFAULT nextval('public.libbuildingroofmaterials_id_seq'::regclass);
 J   ALTER TABLE public.libbuildingroofmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210         �           2604    24424    libbuildingstatus id    DEFAULT     |   ALTER TABLE ONLY public.libbuildingstatus ALTER COLUMN id SET DEFAULT nextval('public.libbuildingstatus_id_seq'::regclass);
 C   ALTER TABLE public.libbuildingstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212         �           2604    24437    libbuildingtypes id    DEFAULT     z   ALTER TABLE ONLY public.libbuildingtypes ALTER COLUMN id SET DEFAULT nextval('public.libbuildingtypes_id_seq'::regclass);
 B   ALTER TABLE public.libbuildingtypes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214         �           2604    24450    libbuildinguses id    DEFAULT     x   ALTER TABLE ONLY public.libbuildinguses ALTER COLUMN id SET DEFAULT nextval('public.libbuildinguses_id_seq'::regclass);
 A   ALTER TABLE public.libbuildinguses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216         �           2604    24463    libbuildingwallmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libbuildingwallmaterials ALTER COLUMN id SET DEFAULT nextval('public.libbuildingwallmaterials_id_seq'::regclass);
 J   ALTER TABLE public.libbuildingwallmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218         �           2604    24476    libdisabilities id    DEFAULT     x   ALTER TABLE ONLY public.libdisabilities ALTER COLUMN id SET DEFAULT nextval('public.libdisabilities_id_seq'::regclass);
 A   ALTER TABLE public.libdisabilities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220         �           2604    24489    libfarmingtechs id    DEFAULT     x   ALTER TABLE ONLY public.libfarmingtechs ALTER COLUMN id SET DEFAULT nextval('public.libfarmingtechs_id_seq'::regclass);
 A   ALTER TABLE public.libfarmingtechs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222         �           2604    24502    libgenders id    DEFAULT     n   ALTER TABLE ONLY public.libgenders ALTER COLUMN id SET DEFAULT nextval('public.libgenders_id_seq'::regclass);
 <   ALTER TABLE public.libgenders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224                    2604    25443    libgradelvls id    DEFAULT     r   ALTER TABLE ONLY public.libgradelvls ALTER COLUMN id SET DEFAULT nextval('public.libgradelvls_id_seq'::regclass);
 >   ALTER TABLE public.libgradelvls ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258         �           2604    24528    libhhevacuationareas id    DEFAULT     �   ALTER TABLE ONLY public.libhhevacuationareas ALTER COLUMN id SET DEFAULT nextval('public.libhhevacuationareas_id_seq'::regclass);
 F   ALTER TABLE public.libhhevacuationareas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226                    2604    24999    libhhlvlwatersystems id    DEFAULT     �   ALTER TABLE ONLY public.libhhlvlwatersystems ALTER COLUMN id SET DEFAULT nextval('public.libhhlvlwatersystems_id_seq'::regclass);
 F   ALTER TABLE public.libhhlvlwatersystems ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256         �           2604    24554    libhhroofmaterials id    DEFAULT     ~   ALTER TABLE ONLY public.libhhroofmaterials ALTER COLUMN id SET DEFAULT nextval('public.libhhroofmaterials_id_seq'::regclass);
 D   ALTER TABLE public.libhhroofmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228         �           2604    24567    libhhtenuralstatus id    DEFAULT     ~   ALTER TABLE ONLY public.libhhtenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libhhtenuralstatus_id_seq'::regclass);
 D   ALTER TABLE public.libhhtenuralstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230         �           2604    24593    libhhwallconmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libhhwallconmaterials ALTER COLUMN id SET DEFAULT nextval('public.libhhwallconmaterials_id_seq'::regclass);
 G   ALTER TABLE public.libhhwallconmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232         �           2604    24606    libhhwatertenuralstatus id    DEFAULT     �   ALTER TABLE ONLY public.libhhwatertenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libhhwatertenuralstatus_id_seq'::regclass);
 I   ALTER TABLE public.libhhwatertenuralstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234         �           2604    24619    liblivelihoods id    DEFAULT     v   ALTER TABLE ONLY public.liblivelihoods ALTER COLUMN id SET DEFAULT nextval('public.liblivelihoods_id_seq'::regclass);
 @   ALTER TABLE public.liblivelihoods ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236         �           2604    24632    libmaritalstatus id    DEFAULT     z   ALTER TABLE ONLY public.libmaritalstatus ALTER COLUMN id SET DEFAULT nextval('public.libmaritalstatus_id_seq'::regclass);
 B   ALTER TABLE public.libmaritalstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238         �           2604    24645    libmonthlyincomes id    DEFAULT     |   ALTER TABLE ONLY public.libmonthlyincomes ALTER COLUMN id SET DEFAULT nextval('public.libmonthlyincomes_id_seq'::regclass);
 C   ALTER TABLE public.libmonthlyincomes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240                    2604    25458    libmunicipalities id    DEFAULT     |   ALTER TABLE ONLY public.libmunicipalities ALTER COLUMN id SET DEFAULT nextval('public.libmunicipalities_id_seq'::regclass);
 C   ALTER TABLE public.libmunicipalities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260         �           2604    24658    libnutritionalstatus id    DEFAULT     �   ALTER TABLE ONLY public.libnutritionalstatus ALTER COLUMN id SET DEFAULT nextval('public.libnutritionalstatus_id_seq'::regclass);
 F   ALTER TABLE public.libnutritionalstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242                    2604    24710    librelationshipheads id    DEFAULT     �   ALTER TABLE ONLY public.librelationshipheads ALTER COLUMN id SET DEFAULT nextval('public.librelationshipheads_id_seq'::regclass);
 F   ALTER TABLE public.librelationshipheads ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250         �           2604    24671    libreligions id    DEFAULT     r   ALTER TABLE ONLY public.libreligions ALTER COLUMN id SET DEFAULT nextval('public.libreligions_id_seq'::regclass);
 >   ALTER TABLE public.libreligions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244                    2604    24736    libroofconmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libroofconmaterials ALTER COLUMN id SET DEFAULT nextval('public.libroofconmaterials_id_seq'::regclass);
 E   ALTER TABLE public.libroofconmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254                    2604    24723    libtenuralstatus id    DEFAULT     z   ALTER TABLE ONLY public.libtenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libtenuralstatus_id_seq'::regclass);
 B   ALTER TABLE public.libtenuralstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252                     2604    24684    libtscshvc id    DEFAULT     n   ALTER TABLE ONLY public.libtscshvc ALTER COLUMN id SET DEFAULT nextval('public.libtscshvc_id_seq'::regclass);
 <   ALTER TABLE public.libtscshvc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246                    2604    24697    libtypeofprograms id    DEFAULT     |   ALTER TABLE ONLY public.libtypeofprograms ALTER COLUMN id SET DEFAULT nextval('public.libtypeofprograms_id_seq'::regclass);
 C   ALTER TABLE public.libtypeofprograms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248         �           2604    24354    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201         �           2604    24396    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208         �           2604    24362    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                   0    24379    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    206       3333.dat ?          0    25962 
   households 
   TABLE DATA           �  COPY public.households (id, controlnumber, libmunicipalitie_psgccode, libbarangay_psgccode, purok, latitude, longitude, respondent, dateinterview, nameenumerator, nameeditor, dateedited, libbuildingtype_id, libtenuralstatu_id, year_construct, estimated_cost, bedrooms, storey, access_electricity, access_internet, libbuildingroofmaterial_id, medical_treatment, access_watersupply, potable, libhhwatertenuralstatu_id, libhhlvlwatersystem_id, floods_occur, year_flood, experience_evacuationduringcalamity, year_evacuated, libhhevacuationarea_id, has_accesstohealthmedicalfacilities, has_accesstotelecommunications, has_accesstodrillsandsimulations, image, created_at, updated_at) FROM stdin;
    public          postgres    false    264       3391.dat =          0    25473    libbarangays 
   TABLE DATA           c   COPY public.libbarangays (id, user_id, psgccode, lib_brgyname, created_at, updated_at) FROM stdin;
    public          postgres    false    262       3389.dat 	          0    24408    libbuildingroofmaterials 
   TABLE DATA           n   COPY public.libbuildingroofmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    210       3337.dat           0    24421    libbuildingstatus 
   TABLE DATA           `   COPY public.libbuildingstatus (id, user_id, lib_statusname, created_at, updated_at) FROM stdin;
    public          postgres    false    212       3339.dat           0    24434    libbuildingtypes 
   TABLE DATA           \   COPY public.libbuildingtypes (id, user_id, lib_tobname, created_at, updated_at) FROM stdin;
    public          postgres    false    214       3341.dat           0    24447    libbuildinguses 
   TABLE DATA           c   COPY public.libbuildinguses (id, user_id, lib_buildingusedesc, created_at, updated_at) FROM stdin;
    public          postgres    false    216       3343.dat           0    24460    libbuildingwallmaterials 
   TABLE DATA           n   COPY public.libbuildingwallmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    218       3345.dat           0    24473    libdisabilities 
   TABLE DATA           Y   COPY public.libdisabilities (id, user_id, lib_dname, created_at, updated_at) FROM stdin;
    public          postgres    false    220       3347.dat           0    24486    libfarmingtechs 
   TABLE DATA           \   COPY public.libfarmingtechs (id, user_id, lib_techname, created_at, updated_at) FROM stdin;
    public          postgres    false    222       3349.dat           0    24499 
   libgenders 
   TABLE DATA           T   COPY public.libgenders (id, user_id, lib_gname, created_at, updated_at) FROM stdin;
    public          postgres    false    224       3351.dat 9          0    25440    libgradelvls 
   TABLE DATA           c   COPY public.libgradelvls (id, user_id, lib_glcode, lib_glname, created_at, updated_at) FROM stdin;
    public          postgres    false    258       3385.dat           0    24525    libhhevacuationareas 
   TABLE DATA           `   COPY public.libhhevacuationareas (id, user_id, lib_heaname, created_at, updated_at) FROM stdin;
    public          postgres    false    226       3353.dat 7          0    24996    libhhlvlwatersystems 
   TABLE DATA           x   COPY public.libhhlvlwatersystems (id, user_id, lib_hhwatersystemlvl, lib_hhlvldesc, created_at, updated_at) FROM stdin;
    public          postgres    false    256       3383.dat           0    24551    libhhroofmaterials 
   TABLE DATA           h   COPY public.libhhroofmaterials (id, user_id, lib_roofmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    228       3355.dat           0    24564    libhhtenuralstatus 
   TABLE DATA           i   COPY public.libhhtenuralstatus (id, user_id, lib_ternuralstatusdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    230       3357.dat           0    24590    libhhwallconmaterials 
   TABLE DATA           k   COPY public.libhhwallconmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    232       3359.dat !          0    24603    libhhwatertenuralstatus 
   TABLE DATA           b   COPY public.libhhwatertenuralstatus (id, user_id, lib_wtdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    234       3361.dat #          0    24616    liblivelihoods 
   TABLE DATA           a   COPY public.liblivelihoods (id, user_id, lib_livelihooddesc, created_at, updated_at) FROM stdin;
    public          postgres    false    236       3363.dat %          0    24629    libmaritalstatus 
   TABLE DATA           [   COPY public.libmaritalstatus (id, user_id, lib_msname, created_at, updated_at) FROM stdin;
    public          postgres    false    238       3365.dat '          0    24642    libmonthlyincomes 
   TABLE DATA           \   COPY public.libmonthlyincomes (id, user_id, lib_miname, created_at, updated_at) FROM stdin;
    public          postgres    false    240       3367.dat ;          0    25455    libmunicipalities 
   TABLE DATA           g   COPY public.libmunicipalities (id, user_id, psgccode, lib_munname, created_at, updated_at) FROM stdin;
    public          postgres    false    260       3387.dat )          0    24655    libnutritionalstatus 
   TABLE DATA           _   COPY public.libnutritionalstatus (id, user_id, lib_nsname, created_at, updated_at) FROM stdin;
    public          postgres    false    242       3369.dat 1          0    24707    librelationshipheads 
   TABLE DATA           _   COPY public.librelationshipheads (id, user_id, lib_rhname, created_at, updated_at) FROM stdin;
    public          postgres    false    250       3377.dat +          0    24668    libreligions 
   TABLE DATA           V   COPY public.libreligions (id, user_id, lib_rname, created_at, updated_at) FROM stdin;
    public          postgres    false    244       3371.dat 5          0    24733    libroofconmaterials 
   TABLE DATA           `   COPY public.libroofconmaterials (id, user_id, lib_tocmname, created_at, updated_at) FROM stdin;
    public          postgres    false    254       3381.dat 3          0    24720    libtenuralstatus 
   TABLE DATA           [   COPY public.libtenuralstatus (id, user_id, lib_tsname, created_at, updated_at) FROM stdin;
    public          postgres    false    252       3379.dat -          0    24681 
   libtscshvc 
   TABLE DATA           Z   COPY public.libtscshvc (id, user_id, lib_tscshvcname, created_at, updated_at) FROM stdin;
    public          postgres    false    246       3373.dat /          0    24694    libtypeofprograms 
   TABLE DATA           ]   COPY public.libtypeofprograms (id, user_id, lib_topname, created_at, updated_at) FROM stdin;
    public          postgres    false    248       3375.dat            0    24351 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    201       3328.dat           0    24370    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    204       3331.dat           0    24393    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    208       3335.dat           0    24359    users 
   TABLE DATA           {   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM stdin;
    public          postgres    false    203       3330.dat f           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    205         g           0    0    households_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.households_id_seq', 1, false);
          public          postgres    false    263         h           0    0    libbarangays_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.libbarangays_id_seq', 1, false);
          public          postgres    false    261         i           0    0    libbuildingroofmaterials_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.libbuildingroofmaterials_id_seq', 1, false);
          public          postgres    false    209         j           0    0    libbuildingstatus_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libbuildingstatus_id_seq', 1, false);
          public          postgres    false    211         k           0    0    libbuildingtypes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.libbuildingtypes_id_seq', 1, false);
          public          postgres    false    213         l           0    0    libbuildinguses_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.libbuildinguses_id_seq', 1, false);
          public          postgres    false    215         m           0    0    libbuildingwallmaterials_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.libbuildingwallmaterials_id_seq', 1, false);
          public          postgres    false    217         n           0    0    libdisabilities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.libdisabilities_id_seq', 1, false);
          public          postgres    false    219         o           0    0    libfarmingtechs_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.libfarmingtechs_id_seq', 1, false);
          public          postgres    false    221         p           0    0    libgenders_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.libgenders_id_seq', 1, false);
          public          postgres    false    223         q           0    0    libgradelvls_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.libgradelvls_id_seq', 1, false);
          public          postgres    false    257         r           0    0    libhhevacuationareas_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.libhhevacuationareas_id_seq', 1, false);
          public          postgres    false    225         s           0    0    libhhlvlwatersystems_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.libhhlvlwatersystems_id_seq', 1, false);
          public          postgres    false    255         t           0    0    libhhroofmaterials_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.libhhroofmaterials_id_seq', 1, false);
          public          postgres    false    227         u           0    0    libhhtenuralstatus_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.libhhtenuralstatus_id_seq', 1, false);
          public          postgres    false    229         v           0    0    libhhwallconmaterials_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.libhhwallconmaterials_id_seq', 1, false);
          public          postgres    false    231         w           0    0    libhhwatertenuralstatus_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.libhhwatertenuralstatus_id_seq', 1, false);
          public          postgres    false    233         x           0    0    liblivelihoods_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.liblivelihoods_id_seq', 1, false);
          public          postgres    false    235         y           0    0    libmaritalstatus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.libmaritalstatus_id_seq', 1, false);
          public          postgres    false    237         z           0    0    libmonthlyincomes_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libmonthlyincomes_id_seq', 1, false);
          public          postgres    false    239         {           0    0    libmunicipalities_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libmunicipalities_id_seq', 1, false);
          public          postgres    false    259         |           0    0    libnutritionalstatus_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.libnutritionalstatus_id_seq', 1, false);
          public          postgres    false    241         }           0    0    librelationshipheads_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.librelationshipheads_id_seq', 1, false);
          public          postgres    false    249         ~           0    0    libreligions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.libreligions_id_seq', 1, false);
          public          postgres    false    243                    0    0    libroofconmaterials_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.libroofconmaterials_id_seq', 1, false);
          public          postgres    false    253         �           0    0    libtenuralstatus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.libtenuralstatus_id_seq', 1, false);
          public          postgres    false    251         �           0    0    libtscshvc_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.libtscshvc_id_seq', 1, false);
          public          postgres    false    245         �           0    0    libtypeofprograms_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libtypeofprograms_id_seq', 1, false);
          public          postgres    false    247         �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 63, true);
          public          postgres    false    200         �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    207         �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    202                    2606    24388    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    206                    2606    24390 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    206         W           2606    26012 *   households households_controlnumber_unique 
   CONSTRAINT     n   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_controlnumber_unique UNIQUE (controlnumber);
 T   ALTER TABLE ONLY public.households DROP CONSTRAINT households_controlnumber_unique;
       public            postgres    false    264         Y           2606    25970    households households_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.households DROP CONSTRAINT households_pkey;
       public            postgres    false    264         S           2606    25481    libbarangays libbarangays_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.libbarangays DROP CONSTRAINT libbarangays_pkey;
       public            postgres    false    262         U           2606    25488 )   libbarangays libbarangays_psgccode_unique 
   CONSTRAINT     h   ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_psgccode_unique UNIQUE (psgccode);
 S   ALTER TABLE ONLY public.libbarangays DROP CONSTRAINT libbarangays_psgccode_unique;
       public            postgres    false    262                    2606    24413 6   libbuildingroofmaterials libbuildingroofmaterials_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.libbuildingroofmaterials
    ADD CONSTRAINT libbuildingroofmaterials_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.libbuildingroofmaterials DROP CONSTRAINT libbuildingroofmaterials_pkey;
       public            postgres    false    210                    2606    24426 (   libbuildingstatus libbuildingstatus_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libbuildingstatus
    ADD CONSTRAINT libbuildingstatus_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libbuildingstatus DROP CONSTRAINT libbuildingstatus_pkey;
       public            postgres    false    212                    2606    24439 &   libbuildingtypes libbuildingtypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.libbuildingtypes
    ADD CONSTRAINT libbuildingtypes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.libbuildingtypes DROP CONSTRAINT libbuildingtypes_pkey;
       public            postgres    false    214         !           2606    24452 $   libbuildinguses libbuildinguses_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.libbuildinguses
    ADD CONSTRAINT libbuildinguses_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.libbuildinguses DROP CONSTRAINT libbuildinguses_pkey;
       public            postgres    false    216         #           2606    24465 6   libbuildingwallmaterials libbuildingwallmaterials_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.libbuildingwallmaterials
    ADD CONSTRAINT libbuildingwallmaterials_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.libbuildingwallmaterials DROP CONSTRAINT libbuildingwallmaterials_pkey;
       public            postgres    false    218         %           2606    24478 $   libdisabilities libdisabilities_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.libdisabilities
    ADD CONSTRAINT libdisabilities_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.libdisabilities DROP CONSTRAINT libdisabilities_pkey;
       public            postgres    false    220         '           2606    24491 $   libfarmingtechs libfarmingtechs_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.libfarmingtechs
    ADD CONSTRAINT libfarmingtechs_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.libfarmingtechs DROP CONSTRAINT libfarmingtechs_pkey;
       public            postgres    false    222         )           2606    24504    libgenders libgenders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.libgenders
    ADD CONSTRAINT libgenders_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.libgenders DROP CONSTRAINT libgenders_pkey;
       public            postgres    false    224         K           2606    25452 +   libgradelvls libgradelvls_lib_glcode_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_lib_glcode_unique UNIQUE (lib_glcode);
 U   ALTER TABLE ONLY public.libgradelvls DROP CONSTRAINT libgradelvls_lib_glcode_unique;
       public            postgres    false    258         M           2606    25445    libgradelvls libgradelvls_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.libgradelvls DROP CONSTRAINT libgradelvls_pkey;
       public            postgres    false    258         +           2606    24530 .   libhhevacuationareas libhhevacuationareas_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libhhevacuationareas
    ADD CONSTRAINT libhhevacuationareas_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libhhevacuationareas DROP CONSTRAINT libhhevacuationareas_pkey;
       public            postgres    false    226         I           2606    25004 .   libhhlvlwatersystems libhhlvlwatersystems_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libhhlvlwatersystems
    ADD CONSTRAINT libhhlvlwatersystems_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libhhlvlwatersystems DROP CONSTRAINT libhhlvlwatersystems_pkey;
       public            postgres    false    256         -           2606    24556 *   libhhroofmaterials libhhroofmaterials_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.libhhroofmaterials
    ADD CONSTRAINT libhhroofmaterials_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.libhhroofmaterials DROP CONSTRAINT libhhroofmaterials_pkey;
       public            postgres    false    228         /           2606    24569 *   libhhtenuralstatus libhhtenuralstatus_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.libhhtenuralstatus
    ADD CONSTRAINT libhhtenuralstatus_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.libhhtenuralstatus DROP CONSTRAINT libhhtenuralstatus_pkey;
       public            postgres    false    230         1           2606    24595 0   libhhwallconmaterials libhhwallconmaterials_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.libhhwallconmaterials
    ADD CONSTRAINT libhhwallconmaterials_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.libhhwallconmaterials DROP CONSTRAINT libhhwallconmaterials_pkey;
       public            postgres    false    232         3           2606    24608 4   libhhwatertenuralstatus libhhwatertenuralstatus_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.libhhwatertenuralstatus
    ADD CONSTRAINT libhhwatertenuralstatus_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.libhhwatertenuralstatus DROP CONSTRAINT libhhwatertenuralstatus_pkey;
       public            postgres    false    234         5           2606    24621 "   liblivelihoods liblivelihoods_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.liblivelihoods
    ADD CONSTRAINT liblivelihoods_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.liblivelihoods DROP CONSTRAINT liblivelihoods_pkey;
       public            postgres    false    236         7           2606    24634 &   libmaritalstatus libmaritalstatus_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.libmaritalstatus
    ADD CONSTRAINT libmaritalstatus_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.libmaritalstatus DROP CONSTRAINT libmaritalstatus_pkey;
       public            postgres    false    238         9           2606    24647 (   libmonthlyincomes libmonthlyincomes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libmonthlyincomes
    ADD CONSTRAINT libmonthlyincomes_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libmonthlyincomes DROP CONSTRAINT libmonthlyincomes_pkey;
       public            postgres    false    240         O           2606    25463 (   libmunicipalities libmunicipalities_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libmunicipalities DROP CONSTRAINT libmunicipalities_pkey;
       public            postgres    false    260         Q           2606    25470 3   libmunicipalities libmunicipalities_psgccode_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_psgccode_unique UNIQUE (psgccode);
 ]   ALTER TABLE ONLY public.libmunicipalities DROP CONSTRAINT libmunicipalities_psgccode_unique;
       public            postgres    false    260         ;           2606    24660 .   libnutritionalstatus libnutritionalstatus_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libnutritionalstatus
    ADD CONSTRAINT libnutritionalstatus_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libnutritionalstatus DROP CONSTRAINT libnutritionalstatus_pkey;
       public            postgres    false    242         C           2606    24712 .   librelationshipheads librelationshipheads_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.librelationshipheads
    ADD CONSTRAINT librelationshipheads_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.librelationshipheads DROP CONSTRAINT librelationshipheads_pkey;
       public            postgres    false    250         =           2606    24673    libreligions libreligions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.libreligions
    ADD CONSTRAINT libreligions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.libreligions DROP CONSTRAINT libreligions_pkey;
       public            postgres    false    244         G           2606    24738 ,   libroofconmaterials libroofconmaterials_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.libroofconmaterials
    ADD CONSTRAINT libroofconmaterials_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.libroofconmaterials DROP CONSTRAINT libroofconmaterials_pkey;
       public            postgres    false    254         E           2606    24725 &   libtenuralstatus libtenuralstatus_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.libtenuralstatus
    ADD CONSTRAINT libtenuralstatus_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.libtenuralstatus DROP CONSTRAINT libtenuralstatus_pkey;
       public            postgres    false    252         ?           2606    24686    libtscshvc libtscshvc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.libtscshvc
    ADD CONSTRAINT libtscshvc_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.libtscshvc DROP CONSTRAINT libtscshvc_pkey;
       public            postgres    false    246         A           2606    24699 (   libtypeofprograms libtypeofprograms_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libtypeofprograms
    ADD CONSTRAINT libtypeofprograms_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libtypeofprograms DROP CONSTRAINT libtypeofprograms_pkey;
       public            postgres    false    248                    2606    24356    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    201                    2606    24401 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    208                    2606    24404 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    208                    2606    24369    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    203                    2606    24367    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203                    1259    24376    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    204                    1259    24402 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    208    208         w           2606    25976 2   households households_libbarangay_psgccode_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbarangay_psgccode_foreign FOREIGN KEY (libbarangay_psgccode) REFERENCES public.libbarangays(psgccode) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libbarangay_psgccode_foreign;
       public          postgres    false    262    3157    264         y           2606    25991 8   households households_libbuildingroofmaterial_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbuildingroofmaterial_id_foreign FOREIGN KEY (libbuildingroofmaterial_id) REFERENCES public.libbuildingroofmaterials(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libbuildingroofmaterial_id_foreign;
       public          postgres    false    210    264    3099         x           2606    25981 0   households households_libbuildingtype_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbuildingtype_id_foreign FOREIGN KEY (libbuildingtype_id) REFERENCES public.libbuildingtypes(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libbuildingtype_id_foreign;
       public          postgres    false    3103    264    214         |           2606    26006 4   households households_libhhevacuationarea_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhevacuationarea_id_foreign FOREIGN KEY (libhhevacuationarea_id) REFERENCES public.libhhevacuationareas(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhevacuationarea_id_foreign;
       public          postgres    false    226    3115    264         {           2606    26001 4   households households_libhhlvlwatersystem_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhlvlwatersystem_id_foreign FOREIGN KEY (libhhlvlwatersystem_id) REFERENCES public.libhhlvlwatersystems(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhlvlwatersystem_id_foreign;
       public          postgres    false    264    256    3145         u           2606    26014 3   households households_libhhtenuralstatus_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhtenuralstatus_id_foreign FOREIGN KEY (libtenuralstatu_id) REFERENCES public.libhhtenuralstatus(id) NOT VALID;
 ]   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhtenuralstatus_id_foreign;
       public          postgres    false    3119    264    230         z           2606    25996 7   households households_libhhwatertenuralstatu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhwatertenuralstatu_id_foreign FOREIGN KEY (libhhwatertenuralstatu_id) REFERENCES public.libhhwatertenuralstatus(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhwatertenuralstatu_id_foreign;
       public          postgres    false    264    3123    234         v           2606    25971 7   households households_libmunicipalitie_psgccode_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libmunicipalitie_psgccode_foreign FOREIGN KEY (libmunicipalitie_psgccode) REFERENCES public.libmunicipalities(psgccode) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libmunicipalitie_psgccode_foreign;
       public          postgres    false    3153    264    260         t           2606    25482 )   libbarangays libbarangays_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.libbarangays DROP CONSTRAINT libbarangays_user_id_foreign;
       public          postgres    false    3087    262    203         Z           2606    24414 A   libbuildingroofmaterials libbuildingroofmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingroofmaterials
    ADD CONSTRAINT libbuildingroofmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.libbuildingroofmaterials DROP CONSTRAINT libbuildingroofmaterials_user_id_foreign;
       public          postgres    false    210    3087    203         [           2606    24427 3   libbuildingstatus libbuildingstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingstatus
    ADD CONSTRAINT libbuildingstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libbuildingstatus DROP CONSTRAINT libbuildingstatus_user_id_foreign;
       public          postgres    false    212    3087    203         \           2606    24440 1   libbuildingtypes libbuildingtypes_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingtypes
    ADD CONSTRAINT libbuildingtypes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.libbuildingtypes DROP CONSTRAINT libbuildingtypes_user_id_foreign;
       public          postgres    false    214    203    3087         ]           2606    24453 /   libbuildinguses libbuildinguses_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildinguses
    ADD CONSTRAINT libbuildinguses_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.libbuildinguses DROP CONSTRAINT libbuildinguses_user_id_foreign;
       public          postgres    false    3087    216    203         ^           2606    24466 A   libbuildingwallmaterials libbuildingwallmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingwallmaterials
    ADD CONSTRAINT libbuildingwallmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.libbuildingwallmaterials DROP CONSTRAINT libbuildingwallmaterials_user_id_foreign;
       public          postgres    false    203    3087    218         _           2606    24479 /   libdisabilities libdisabilities_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libdisabilities
    ADD CONSTRAINT libdisabilities_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.libdisabilities DROP CONSTRAINT libdisabilities_user_id_foreign;
       public          postgres    false    3087    203    220         `           2606    24492 /   libfarmingtechs libfarmingtechs_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libfarmingtechs
    ADD CONSTRAINT libfarmingtechs_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.libfarmingtechs DROP CONSTRAINT libfarmingtechs_user_id_foreign;
       public          postgres    false    203    3087    222         a           2606    24505 %   libgenders libgenders_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libgenders
    ADD CONSTRAINT libgenders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.libgenders DROP CONSTRAINT libgenders_user_id_foreign;
       public          postgres    false    3087    203    224         r           2606    25446 )   libgradelvls libgradelvls_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.libgradelvls DROP CONSTRAINT libgradelvls_user_id_foreign;
       public          postgres    false    258    203    3087         b           2606    24531 9   libhhevacuationareas libhhevacuationareas_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhevacuationareas
    ADD CONSTRAINT libhhevacuationareas_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.libhhevacuationareas DROP CONSTRAINT libhhevacuationareas_user_id_foreign;
       public          postgres    false    226    3087    203         q           2606    25005 9   libhhlvlwatersystems libhhlvlwatersystems_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhlvlwatersystems
    ADD CONSTRAINT libhhlvlwatersystems_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.libhhlvlwatersystems DROP CONSTRAINT libhhlvlwatersystems_user_id_foreign;
       public          postgres    false    256    203    3087         c           2606    24557 5   libhhroofmaterials libhhroofmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhroofmaterials
    ADD CONSTRAINT libhhroofmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.libhhroofmaterials DROP CONSTRAINT libhhroofmaterials_user_id_foreign;
       public          postgres    false    3087    228    203         d           2606    24570 5   libhhtenuralstatus libhhtenuralstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhtenuralstatus
    ADD CONSTRAINT libhhtenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.libhhtenuralstatus DROP CONSTRAINT libhhtenuralstatus_user_id_foreign;
       public          postgres    false    3087    230    203         e           2606    24596 ;   libhhwallconmaterials libhhwallconmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhwallconmaterials
    ADD CONSTRAINT libhhwallconmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.libhhwallconmaterials DROP CONSTRAINT libhhwallconmaterials_user_id_foreign;
       public          postgres    false    203    232    3087         f           2606    24609 ?   libhhwatertenuralstatus libhhwatertenuralstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhwatertenuralstatus
    ADD CONSTRAINT libhhwatertenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.libhhwatertenuralstatus DROP CONSTRAINT libhhwatertenuralstatus_user_id_foreign;
       public          postgres    false    3087    203    234         g           2606    24622 -   liblivelihoods liblivelihoods_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.liblivelihoods
    ADD CONSTRAINT liblivelihoods_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.liblivelihoods DROP CONSTRAINT liblivelihoods_user_id_foreign;
       public          postgres    false    236    3087    203         h           2606    24635 1   libmaritalstatus libmaritalstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libmaritalstatus
    ADD CONSTRAINT libmaritalstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.libmaritalstatus DROP CONSTRAINT libmaritalstatus_user_id_foreign;
       public          postgres    false    3087    203    238         i           2606    24648 3   libmonthlyincomes libmonthlyincomes_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libmonthlyincomes
    ADD CONSTRAINT libmonthlyincomes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libmonthlyincomes DROP CONSTRAINT libmonthlyincomes_user_id_foreign;
       public          postgres    false    203    240    3087         s           2606    25464 3   libmunicipalities libmunicipalities_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libmunicipalities DROP CONSTRAINT libmunicipalities_user_id_foreign;
       public          postgres    false    260    3087    203         j           2606    24661 9   libnutritionalstatus libnutritionalstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libnutritionalstatus
    ADD CONSTRAINT libnutritionalstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.libnutritionalstatus DROP CONSTRAINT libnutritionalstatus_user_id_foreign;
       public          postgres    false    242    203    3087         n           2606    24713 9   librelationshipheads librelationshipheads_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.librelationshipheads
    ADD CONSTRAINT librelationshipheads_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.librelationshipheads DROP CONSTRAINT librelationshipheads_user_id_foreign;
       public          postgres    false    3087    203    250         k           2606    24674 )   libreligions libreligions_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libreligions
    ADD CONSTRAINT libreligions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.libreligions DROP CONSTRAINT libreligions_user_id_foreign;
       public          postgres    false    203    3087    244         p           2606    24739 7   libroofconmaterials libroofconmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libroofconmaterials
    ADD CONSTRAINT libroofconmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.libroofconmaterials DROP CONSTRAINT libroofconmaterials_user_id_foreign;
       public          postgres    false    254    203    3087         o           2606    24726 1   libtenuralstatus libtenuralstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libtenuralstatus
    ADD CONSTRAINT libtenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.libtenuralstatus DROP CONSTRAINT libtenuralstatus_user_id_foreign;
       public          postgres    false    3087    252    203         l           2606    24687 %   libtscshvc libtscshvc_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libtscshvc
    ADD CONSTRAINT libtscshvc_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.libtscshvc DROP CONSTRAINT libtscshvc_user_id_foreign;
       public          postgres    false    203    3087    246         m           2606    24700 3   libtypeofprograms libtypeofprograms_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libtypeofprograms
    ADD CONSTRAINT libtypeofprograms_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libtypeofprograms DROP CONSTRAINT libtypeofprograms_user_id_foreign;
       public          postgres    false    203    3087    248                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3333.dat                                                                                            0000600 0004000 0002000 00000000005 14256542426 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3391.dat                                                                                            0000600 0004000 0002000 00000267620 14256542426 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623890768546	160212000	160212005	2	9.037647578	125.5726345	Joel S. Sangco	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2013	8000	1	1	t	f	1	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	1_Joel_Olaco_1623892640596.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
2	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623892807570	160212000	160212005	2	9.037680689	125.5727508	Manuel L. Galanida Sr.	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2009	30000	2	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	f	f	t	2_1623893400866.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
3	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623895336712	160212000	160212005	\N	9.037740952	125.5728933	Anita B. Gumila	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2017	200000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	3_Anita_Gumila_1623896923631.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
4	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623896960319	160212000	160212005	2	9.037681351	125.5729275	Erenea G. Jatico	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2004	50000	1	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	4_Erenea_Jatico_1623898019480.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
5	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623898078840	160212000	160212005	\N	9.037739627	125.5729003	Wilma G. Peñosa	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	2	2017	200000	2	1	t	f	1	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	5_Wilma_Peñosa_1623898852587.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
6	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623899146044	160212000	160212005	2	9.037972731	125.5735189	Ronie B. Gumapac	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2010	10000	2	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	6_Ronie_Gumapac_1623900081884.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
7	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623900129722	160212000	160212005	2	9.037862801	125.5735045	Ramon E. Eballa Sr.	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2004	50000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	7_Ramon _Eballa_1623901491919.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
8	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623906972430	160212000	160212005	2	9.037705854	125.573425	Junmark A. Beray	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	4	2015	50000	1	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	8_Junmark_Beray_1623908181284.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
9	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623908278056	160212000	160212005	2	9.037696251	125.5737821	Jessel Jean Beray	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2019	10000	1	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	9_Jessel Jean_Beray_1623909122571.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
10	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623909540502	160212000	160212005	2	9.037647246	125.5736637	Shiela O. Piamonte	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	2	2005	100000	4	1	t	f	4	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	10_Shiela_Piamonte_1623910304848.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
11	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623910307897	160212000	160212005	2	9.037587646	125.5737456	Felix C. Flores	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2021	7000	1	1	f	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	11_Felix_Flores_1623911068057.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
12	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623911071143	160212000	160212005	2	9.037251896	125.5737999	Ramona T. Dagondon	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	2	2015	40000	2	1	t	f	4	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	12_Ramona_Dagondon_1623912061860.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
13	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623912487383	160212000	160212005	2	9.037553872	125.573469	Linda M. Arnego	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2004	50000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	13_Linda_Arnego_1623913371707.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
14	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623913382874	160212000	160212005	2	9.037547581	125.5734757	Gelly Marceline M. Arnego	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2004	50000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	14_Gelly Marceline_Arnego_1623914173847.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
15	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623914701069	160212000	160212005	2	9.037537648	125.5730002	Rudy F. Bacquial	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	1990	90000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	15_Rudy_Bacquial_1623916009509.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
16	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623916543210	160212000	160212005	2	9.037036672	125.5728256	Virgilio A. Junio Sr.	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	1986	100000	3	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	16_Virgilio_Junio_1623917731382.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
17	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623918336358	160212000	160212005	2	9.037048923	125.5728215	Nilber Marie B. Junio	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	2	1986	100000	3	1	t	f	5	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	17_Nilber Marie _Junio_1623919232960.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
18	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623919727280	160212000	160212005	2	9.037186005	125.5731494	Diosdado T. Viray	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2000	100000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	18_1623920621443.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
19	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623920772566	160212000	160212005	2	9.037174416	125.5731417	Dexter Jonh V. Beray	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	2	2000	100000	2	1	t	f	4	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	19_Dexter Jonh_Beray_1623921455319.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
20	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624053619721	160212000	160212005	1	9.03898991	125.5726737	Ailene B. Bronto	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	1990	300000	4	1	t	f	4	\N	t	f	1	1	t	2021	t	2021	8	f	f	t	20_Ailene_Bronto_1627598679880.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
21	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624060237666	160212000	160212005	2	9.03740156	125.5726626	Jaime T. Rafols	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2000	50000	1	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	21_Jaime_Rafols_1624061407779.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
22	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624061410914	160212000	160212005	2	9.037368449	125.5726673	Juanito O. Pitao Jr.	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2015	40000	1	2	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	22_Juanito_Pitao_1624062200315.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
23	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624062504223	160212000	160212005	2	9.038384636	125.5737489	Renato A. Mondano	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2011	50000	2	1	t	f	4	\N	t	f	1	1	t	2021	t	2021	8	t	f	f	23_1624063926905.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
24	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624063929879	160212000	160212005	2	9.038473374	125.5737194	Rey S. Man-on	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	2	2013	60000	2	1	t	f	2	\N	t	f	2	1	t	2021	t	2021	8	t	f	f	24_Rey_Man-on_1624064933756.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
25	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624066571791	160212000	160212005	3	9.037057532	125.5724313	Gerry D. Flores	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2009	30000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	25_Gerry_Flores_1624067623421.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
26	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624068042182	160212000	160212005	3	9.037008196	125.5723629	Domingo M. Makiling Jr.	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	1991	40000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	26_Domingo_Makiling_1624068682290.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
27	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624068729767	160212000	160212005	3	9.036981045	125.5722817	Alvino S. Guergio Sr.	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	1992	50000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	27_Alvino_Guergio_1624069583020.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
28	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624069585983	160212000	160212005	3	9.037063824	125.5719481	Emmanuel S. Badiang	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	1988	100000	4	2	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	28_1624070493774.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
29	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624070566388	160212000	160212005	3	9.037453545	125.5718291	Ricarte P. Junasa	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2019	200000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	29_Ricarte_Junasa_1624071710195.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
30	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624071794617	160212000	160212005	3	9.037489636	125.5716424	Victor T. Dagondon	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2016	1000000	3	2	t	t	4	\N	t	f	1	1	t	2021	t	2021	8	t	f	f	30_Victor_Dagondon_1624072972722.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
31	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624077944484	160212000	160212005	3	9.037270108	125.5718704	Daniel R. Villacorta	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2000	150000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	31_Daniel_Villacorta_1624079001123.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
32	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624079004217	160212000	160212005	3	9.037272757	125.5718613	Rubymae P. Rulida	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2000	150000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	32_Rubymae_Rulida_1624079892009.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
33	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624080028682	160212000	160212005	3	9.037511159	125.5720142	Oscar M. Bacquial	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	1982	200000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	33_Oscar_Bacquial_1624080838154.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
34	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624080867233	160212000	160212005	3	9.037570759	125.5719103	 Bonifacio B. Pabillore	19/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	19/06/2021	1	1	2020	10000	1	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	34_Bonifacio_Pabillore_1624081627474.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
35	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624270443158	160212000	160212005	1	9.039079311	125.5727826	Gavino M. Bacquial	21/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	21/06/2021	1	1	2005	150000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	35_Gavino_Bacquial_1627598802683.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
36	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624272461218	160212000	160212005	1	9.038977328	125.572672	Rogelio M. Bacquial	21/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	21/06/2021	1	1	1986	700000	4	1	t	f	4	\N	t	f	1	1	t	2021	t	2021	4	f	f	f	36_Rogelio_Bacquial_1627875624522.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
37	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624321938643	160212000	160212005	7	9.038009816	125.5706614	Merlinda S. Relabo	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2020	50000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	37_Merlinda_Relabo_1624322614440.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
38	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624322627355	160212000	160212005	7	9.037990942	125.5706738	Romel S. Relabo	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2020	50000	2	1	t	f	5	\N	t	f	1	2	t	2020	t	2021	8	t	f	f	38_1624323121370.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
39	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624323124333	160212000	160212005	4	9.037168787	125.5710281	Rodel S. Relabo	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2020	40000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	39_Rodel_Relabo_1624324194826.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
40	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624324367864	160212000	160212005	7	9.037781016	125.5705135	Rodel A. Maata	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2016	25000	2	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	40_Rodel_Maata_1624325302500.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
41	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624326631636	160212000	160212005	7	9.038466421	125.5703231	Romeo C. Bestudio	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2016	30000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	41_Romeo_Bestudio_1624327621522.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
42	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624328092078	160212000	160212005	4	9.037417122	125.5709148	Ben L. Sangco	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2018	30000	1	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	42_Ben_Sangco_1624328750828.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
43	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624328920787	160212000	160212005	4	9.037189316	125.5707143	Junel A. Maquiling	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2020	20000	1	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	43_Junel_Maquiling_1624329551268.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
44	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624329554203	160212000	160212005	4	9.036861513	125.5706318	Chris T. Himarangan	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	1998	100000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	44_Chris_Himarangan_1624330339237.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
45	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624330673177	160212000	160212005	4	9.037165476	125.5711291	Leonardo E. Judaya	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2016	70000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	45_Leonardo_Judaya_1624331583551.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
46	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624331828256	160212000	160212005	4	9.037163489	125.5711291	Jhade P. Judaya	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2016	70000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	46_Jhade_Judaya_1624332300585.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
47	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624332303456	160212000	160212005	4	9.037224083	125.571296	Concepcion D. Rontal	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2015	50000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	47_Concepcion_Rontal_1624333129473.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
48	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624340724023	160212000	160212005	4	9.037447585	125.5714546	Magdalena F. Gumapac	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2021	40000	1	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	48_Magdalena_Gumapac_1624341481954.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
49	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624341484983	160212000	160212005	3	9.037694265	125.5716477	Christian S. Olivo	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2017	300000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	49_Christian_Olivo_1624341999691.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
50	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624342290234	160212000	160212005	4	9.03770784	125.5712431	Leonides C. Gingo	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2013	50000	3	2	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	50_Leonides_Gingo_1624343139372.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
51	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624344238237	160212000	160212005	3	9.037202891	125.5719146	Nestor L. Rulida	22/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	22/06/2021	1	1	2008	20000	3	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	51_Nestor_Rulida_1624345112506.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
52	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	160212000	160212005	4	9.036778072	125.570489	Esmael T. Dacuya Jr.	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	1987	50000	3	2	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	52_Esmael_Dacuya_1624497014170.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
53	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624498088993	160212000	160212005	4	9.036740656	125.5704069	Victor A. Oculam	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	1985	100000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	53_Victor_Oculam_1624498467994.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
54	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624498758406	160212000	160212005	4	9.036685691	125.5703345	Felix T. Himarangan	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2006	50000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	54_Felix_Himarangan_1624499579152.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
55	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624499716465	160212000	160212005	4	9.03629928	125.5697916	Marvin O. Berago	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2002	40000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	55_Marvin_Berago_1624500377919.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
56	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624500403678	160212000	160212005	4	9.036396959	125.5696411	Jeffrey J. Dumo	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2018	20000	1	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	56_Jeffrey_Dumo_1624500923115.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
57	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624501066210	160212000	160212005	4	9.036148291	125.5695077	Renante Q. Villos	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	2	2018	40000	1	1	t	f	4	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	57_Renante_Villos_1624501884763.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
58	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624502685381	160212000	160212005	4	9.035618507	125.568868	Bernardo P. Fediles Jr.	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2016	60000	2	2	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	58_Bernardo_Fediles_1624503641759.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
59	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624503644753	160212000	160212005	4	9.035811878	125.5685092	Juanita L. Sangco	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2000	50000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	59_Juanita_Sangco_1624504168435.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
60	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624504207795	160212000	160212005	4	9.035840354	125.5684348	Benjamin L. Sangco Jr.	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2007	30000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	60_Benjamin_Sangco_1624504882766.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
61	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624505474435	160212000	160212005	4	9.035883068	125.5683292	Ronnie L. Sangco	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2014	20000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	61_Ronnie_Sangco_1624506431158.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
62	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624506436955	160212000	160212005	4	9.035904922	125.5681867	Rafael B. Sangco	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2004	20000	1	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	62_Rafael_Sangco_1624507016577.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
63	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624513251746	160212000	160212005	3	9.038662109	125.5723082	Lucita M. Bacquial	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2010	50000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	63_Lucita_Bacquial_1624514165833.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
64	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514175920	160212000	160212005	3	9.038666082	125.5723166	Ramon D. Duroy	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2010	50000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	64_Ramon_Duroy_1624514872156.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
65	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514875159	160212000	160212005	3	9.038759125	125.5722838	Junry A. Servado	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2019	100000	1	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	65_Junry_Servado_1624515523188.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
66	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624515589267	160212000	160212005	3	9.03862668	125.5722368	Manuel M. Bacquial	24/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	24/06/2021	1	1	2019	50000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	66_Manuel_Bacquial_1624516385993.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
67	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	160212000	160212005	1	9.039074344	125.5730307	Constancio T. Rafols	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2009	70000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	67_Constancio_Rafols_1624668073483.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
68	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624668278548	160212000	160212005	1	9.038874021	125.5731246	Justiano S. Siman	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2008	30000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	68_Justiano_Siman_1624669514751.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
69	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624669571976	160212000	160212005	1	9.039217716	125.5729194	Irenio T. Rafols Jr.	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2012	30000	2	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	69_Irenio_Fafols_1624670254053.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
70	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624670302458	160212000	160212005	1	9.039363736	125.5731578	Alfredo T. Himarangan	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2017	100000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	70_Alfredo_Himarangan_1624671188693.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
71	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624671191601	160212000	160212005	\N	9.039468699	125.5732094	Alejandro C. Silvano	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	2	2016	20000	1	1	t	f	4	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	71_Alejandro_Silvano_1624672035895.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
72	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624672038964	160212000	160212005	1	9.039616375	125.5733181	Jeralon T. Bernaldez	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2007	200000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	72_Jeralon_Bernaldez_1624673144710.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
73	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	160212000	160212005	1	9.039481281	125.5734555	Pepe P. Talidro Jr.	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2014	30000	2	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	73_Pepe_Talidro_1624674625024.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
74	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624674627997	160212000	160212005	1	9.039690875	125.5733848	Pepe A. Talidro Sr.	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	1999	35000	3	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	74_Pepe_Talidro_1624675484405.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
75	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624675487471	160212000	160212005	1	9.039690709	125.5733846	Herman P. Talidro	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	1999	30000	3	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	75_Herman_Talidro_1624676196249.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
76	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676266975	160212000	160212005	1	9.039728953	125.5734579	Dennis B. Bacaron	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2020	25000	1	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	76_Dennis_Bacaron_1624676769022.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
77	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676771930	160212000	160212005	1	9.039718026	125.5730727	Ronaldo M. Bacaron	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2014	800000	2	2	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	77_Ronaldo_Bacaron_1624677425910.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
78	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624677506547	160212000	160212005	1	9.039878946	125.5731846	Bernadette T. Bernaldez	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2009	80000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	78_Bernadette_Bernaldez_1624678549247.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
79	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624678558507	160212000	160212005	1	9.039701139	125.5730763	Josua B. Bacaron	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	2	2014	800000	2	1	t	f	4	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	79_Josua_Bacaron_1624679032929.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
80	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624679035833	160212000	160212005	1	9.039989869	125.5732011	Reynaldo M. Dingding	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2019	200000	2	2	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	80_Renaldo_Dingding_1624683257150.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
81	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	160212000	160212005	1	9.040132247	125.5732581	Irenio G. Rafols	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2000	20000	2	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	81_Irenio_Rafols_1624684464629.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
82	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684467667	160212000	160212005	1	9.040077613	125.5736534	Roel S. Daclan	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2005	30000	2	1	t	f	2	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	82_Roel_Daclan_1624684816631.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
83	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684819764	160212000	160212005	1	9.040071653	125.5736373	Ernesto P. Ocho Jr.	26/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	26/06/2021	1	1	2020	50000	2	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	83_Ernesto_Ocho_1624685596097.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
84	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625014706546	160212000	160212005	1	9.040763676	125.5741881	Jonh Real R. Moron	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	4	2004	40000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	84_Jonh Real_Moron_1625015357528.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
85	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	160212000	160212005	1	9.040804734	125.5742371	Noel T. Lumay Sr.	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2002	300000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	85_Noel_Lumay_1625016437438.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
86	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625016543413	160212000	160212005	1	9.040599114	125.5740684	Mario C. Rafols	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	2	2011	20000	1	1	t	f	2	\N	t	f	2	2	t	2021	t	2021	8	t	f	f	86_Mario_Rafols_1625017161299.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
87	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625019314131	160212000	160212005	6	9.043121178	125.5839232	Teresito B. Cabante	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2006	50000	2	1	t	f	4	\N	t	f	1	1	f	\N	f	\N	8	t	f	f	87_Teresito_Cabante_1625020647223.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
88	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625020656485	160212000	160212005	6	9.042682459	125.5832902	Roniel T. Gac-ang	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2019	50000	2	1	t	f	4	\N	t	f	1	1	t	2021	f	\N	4	f	f	f	88_Roniel_Gac-ang_1625021639562.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
89	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625021697218	160212000	160212005	6	9.043021514	125.5835785	Junril R. Varquez	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2019	20000	1	1	t	f	5	\N	t	f	1	1	t	2021	t	2021	8	t	f	f	89_Junril_Varquez_1625022508278.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
90	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625022555560	160212000	160212005	6	9.042846358	125.5835688	Timoteo Q. Aquiatan	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2014	200000	2	2	t	f	4	\N	t	f	1	1	f	2021	f	\N	8	f	f	f	90_Timoteo_Aquiatan_1625023493234.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
91	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625023501733	160212000	160212005	6	9.042851655	125.5835574	Chona Mae A. Higpit	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2012	200000	2	2	t	f	4	\N	t	f	1	1	f	\N	f	\N	8	f	f	f	91_Chona Mae_Higpit_1625024859562.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
92	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625028813463	160212000	160212005	6	9.043032772	125.5839369	Antonio J. Fediles	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2006	100000	2	1	f	f	4	\N	t	t	1	1	f	\N	f	\N	8	f	f	f	92_Antonio_Fediles_1625029347994.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
93	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625029396883	160212000	160212005	6	9.04304999	125.5837877	Neil V. Cabante	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2009	300000	3	1	t	f	4	\N	t	t	1	1	f	\N	f	\N	8	f	f	f	93_Neil_Cabante_1625030813354.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
94	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625030816661	160212000	160212005	6	9.042880131	125.5839051	Marcelo F. Gumapac	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2007	35000	1	1	t	f	4	\N	t	t	1	1	f	\N	f	\N	8	f	f	f	94_Marcelo_Gumapac_1625031800609.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
95	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	160212000	160212005	6	9.042769209	125.5834243	Noel B. Rusiana	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2019	200000	1	1	t	f	4	\N	t	t	1	1	t	2021	f	\N	4	f	f	f	95_Noel_Rusiana_1625033799384.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
96	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625033886222	160212000	160212005	6	9.042841722	125.5835598	Raymon	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2014	200000	3	2	t	f	4	\N	t	t	1	1	f	\N	f	\N	8	f	f	f	96_Raymon_Morales_1625034613492.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
97	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625034616506	160212000	160212005	6	9.043297659	125.5841334	Leo T. Nepalam	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2010	30000	2	1	t	f	5	\N	t	t	1	1	f	\N	f	\N	8	f	f	f	97_Leo_Nepalam_1625035177180.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
98	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	160212000	160212005	6	9.043377456	125.5842424	Barwen C. Gac-ang	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2012	40000	2	1	t	f	4	\N	t	t	1	1	t	2021	t	2021	6	t	f	f	98_Barwen_Gac-ang_1625036464884.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
99	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625036471054	160212000	160212005	6	9.042243408	125.5831715	Franco O. Zamora	30/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/06/2021	1	1	2019	20000	2	1	f	f	4	\N	t	t	1	1	t	2021	t	2021	6	t	f	f	99_Franco_Zamora_1625037356990.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
100	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	160212000	160212005	1	9.045033326	125.5765498	Leonardo C. Jamero	11/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	11/07/2021	1	2	2005	35000	2	1	t	f	5	\N	t	f	2	1	f	\N	t	2021	8	f	f	f	100_Leonardo_Jamero_1625966308221.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
101	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	160212000	160212005	3	9.035235737	125.5716622	Protacio S. Padilla	11/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	11/07/2021	1	1	2000	15000	2	1	t	f	2	\N	t	f	1	1	t	2021	t	2021	8	t	f	f	101_Protacio_Padilla_1625974452805.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
102	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625974512170	160212000	160212005	3	9.035234081	125.5716618	Promic Jaramel	11/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	11/07/2021	1	1	2000	15000	2	1	t	f	2	\N	t	f	1	1	t	2021	t	2021	8	t	f	f	102_1625975575165.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
103	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1626141809735	160212000	160212005	6	9.040340185	125.5814334	Vienido C. flores	13/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	13/07/2021	1	1	2011	100000	2	1	f	f	4	\N	t	f	1	1	t	2021	t	2021	8	t	f	f	103_Vienido _Flores_1627608322808.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
104	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627610188919	160212000	160212005	4	9.028350114	125.5703539	Jacinto P. Fediles	30/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/07/2021	1	1	2009	100000	2	1	t	f	2	\N	t	t	1	1	t	2021	t	2021	8	f	f	f	104_Jacinto_Fediles_1628067528666.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
105	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627611284239	160212000	160212005	4	9.036261533	125.5700857	Daniel P. Fediles	30/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/07/2021	1	1	1999	50000	2	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	f	f	f	105_Daniel_Fediles_1627612185543.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
106	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627612964607	160212000	160212005	1	9.030407702	125.5699593	Wenceslao A. Sumampong Jr.	30/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/07/2021	1	1	2020	30000	1	1	f	f	5	\N	f	f	1	1	t	2021	t	2021	8	f	f	f	106_1627614021170.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
107	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	160212000	160212005	3	9.037067466	125.5719599	Emmanuel S. Sangco	30/07/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	30/07/2021	1	1	1986	100000	2	2	t	t	4	\N	t	t	1	1	t	2021	t	2021	8	f	f	t	107_Emmanuel_Badiang_1627616267557.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
108	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627869860693	160212000	160212005	7	9.038543239	125.5702818	Roselo L. Guayan	02/08/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	02/08/2021	1	1	2015	40000	1	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	f	f	f	108_Roselo _Guayan_1627870743567.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
109	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627872244502	160212000	160212005	3	9.038743563	125.5719465	Jonel L. Bacquial	02/08/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	02/08/2021	1	1	2009	60000	3	2	t	t	2	\N	t	f	1	1	t	2021	t	2021	8	f	f	f	109_1627872965295.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
110	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628066228575	160212000	160212005	1	9.03027426	125.5701708	Ariel B. Llanos	04/08/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	04/08/2021	1	1	2016	60000	1	1	t	f	2	\N	f	f	1	1	t	2021	t	2021	8	f	f	f	110_Ariel _Llanos_1628066782485.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
111	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	160212000	160212005	2	9.037310172	125.5734981	Alfie M. Dagondon	04/08/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	04/08/2021	1	1	1998	800000	3	1	t	f	4	\N	t	f	1	2	t	2021	t	2021	8	f	f	f	111_Alfie_Dagondon_1628231364125.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
112	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628079125643	160212000	160212005	4	9.037200574	125.5711887	Sheila S. Oculam	04/08/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	04/08/2021	1	1	2019	50000	1	1	t	f	5	\N	t	f	1	2	t	2021	t	2021	8	f	f	f	112_Sheila_Oculam_1628232676588.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
113	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	160212000	160212005	2	9.038310136	125.5732936	Leo sangco	15/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	15/06/2021	1	1	2006	80000	2	1	t	f	5	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	1_Leo _Sangco_1624525778680.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
114	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	160212000	160212005	2	9.037628373	125.57268	Dennis Sangco	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	2	2001	40000	2	1	t	f	5	\N	t	t	2	1	t	2021	t	2021	8	t	f	t	2_Dennis_Sangco_1623893678457.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
115	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623893961251	160212000	160212005	2	9.037591288	125.5727961	Jobita P. Rosal	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	1	2011	18000	1	1	t	f	2	\N	t	t	1	2	t	2021	t	2021	8	t	f	f	3_Jobita _Rosal_1623895250159.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
116	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623895253282	160212000	160212005	2	9.037606188	125.572842	Hermenio G. Palos	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	1	2020	10000	1	1	t	f	2	Brain maintenance	t	t	1	2	t	2021	t	2021	8	f	f	f	4_Hermenio _Palos_1623895942402.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
117	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623896039675	160212000	160212005	2	9.037780354	125.572952	Marcelo M. Bansas	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	1	2000	70000	2	1	t	f	5	Blindness	t	t	1	2	t	2021	t	2021	8	t	f	f	5_Marcelo_Bansas_1623896841012.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
118	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623897070161	160212000	160212005	2	9.037878364	125.5731025	Edwin C. Tacoy	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	1	2015	30000	1	1	t	f	5	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	6_Edwin_Tacoy_1623898070769.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
119	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623898217949	160212000	160212005	2	9.038056503	125.5734512	Concordio M. Cranzo	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	2012	20000	2	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	7_Concordio _Cranzo_1623899933759.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
120	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623900111612	160212000	160212005	2	9.037976705	125.5737218	Joemar Q. Ganalon	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	2013	50000	1	1	t	f	2	Mayoma	t	t	1	2	t	2021	t	2021	8	t	f	f	8_Joemar _Ganalon_1623901172594.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
121	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623901175945	160212000	160212005	2	9.03827272	125.5733959	Darwin S. Oculam	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	1	2008	100000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	t	9_Darwin _Oculam_1623902064035.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
122	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623907249395	160212000	160212005	2	9.037819426	125.5735695	John christian B. Fuentes	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	2013	22000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	10_John Christian_Fuentes_1623908051435.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
123	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908055439	160212000	160212005	2	9.037759825	125.5735876	Fe M. Adahar	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	2013	12000	3	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	11_Fe_Adahar_1623908672822.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
124	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	160212000	160212005	2	9.037822406	125.5737358	Jimmy V. Granza	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	2017	15000	1	1	t	f	2	Goiter	t	t	1	2	t	2021	t	2021	8	t	f	f	12_Jimmy_Granza_1623909895572.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
125	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623909898450	160212000	160212005	2	9.037488643	125.5737013	Leinisa A. Flores	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	2018	30000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	13_Leonisa_Flores_1623910654892.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
126	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623910658728	160212000	160212005	2	9.037413149	125.5737221	Engelito G. Labe	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	2010	20000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	14_Engelito_Labe_1623911845028.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
127	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623912661865	160212000	160212005	2	9.037502881	125.5734032	Christopher C. Flores	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	1	2014	20000	2	1	t	f	2	Diabetes	t	t	1	2	t	2021	t	2021	8	t	f	f	15_Christopher_Flores_1623913625435.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
128	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623913629257	160212000	160212005	2	9.037383018	125.5731578	Tarcela R. Varquez	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	1	1999	100000	2	1	t	f	4	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	16_Tarcela_Varquez_1623915341715.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
129	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623915345709	160212000	160212005	2	9.037217461	125.572846	Eleonor C. Lagonoy	17/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	17/06/2021	1	3	1984	60000	2	2	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	f	f	f	17_Eleonor _Lagonoy_1623916441795.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
130	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623973910724	160212000	160212005	2	9.037197925	125.572844	Jocelyn C. Lagonoy	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	1984	60000	2	2	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	18_Jocelyn_Lagonoy_1623974457116.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
131	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623974461041	160212000	160212005	2	9.037217129	125.5727562	Catalina B. Galler	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2012	20000	4	2	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	19_Catalina_Galler_1623975500473.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
132	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623975556197	160212000	160212005	3	9.037149582	125.5721406	Teodorica G. Bacquial	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	2	1983	50000	4	2	t	f	4	Heart	t	t	2	2	t	2021	t	2021	8	t	f	f	20_Teodorica _Bacquial_1623976125856.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
133	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623976516120	160212000	160212005	2	9.037722078	125.572837	Pipito T. Rosales	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2003	30000	2	1	t	f	1	Brain	t	t	1	2	t	2021	t	2021	8	f	t	t	21_Pipito_Rosales_1623977575553.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
134	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623977579294	160212000	160212005	2	9.037702045	125.5728458	Marjon B. Rosales	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2003	30000	2	1	t	f	1	Bones	t	t	1	2	t	2021	f	\N	8	t	t	f	22_Marjon_Rosales_1623978375818.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
135	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623978378927	160212000	160212005	2	9.037561819	125.5736738	Alicia C. Gumapac	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2006	20000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	23_Alicia _Gumapac_1623979219016.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
136	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623979222649	160212000	160212005	2	9.037659498	125.5736399	Fidel V. Arconada	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2004	30000	3	1	t	f	4	Lupos	t	t	1	2	t	2021	t	2021	8	t	t	f	24_Fidel _Arconada_1623980047098.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
137	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623980050162	160212000	160212005	2	9.037659332	125.5736398	Lina O. Piamonte	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2003	30000	2	1	t	f	4	Gall stone	t	t	1	2	t	2021	t	2021	8	t	t	f	25_Lina_Piamonte_1623980512989.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
138	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981009425	160212000	160212005	2	9.037420765	125.5732339	Ariel S. Oculam	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	1988	50000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	26_Ariel _Oculam_1623981686760.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
139	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981948453	160212000	160212005	2	9.037419771	125.5732477	Virginsita T. Beray	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	1988	50000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	27_Virginsita _Beray_1623982488687.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
140	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623982750599	160212000	160212005	\N	9.037172098	125.5730468	Benefredo O. Fuentes	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	1999	80000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	28_Benefredo_Fuentes_1623984034810.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
141	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623984849230	160212000	160212005	2	9.037272757	125.573307	Rolina S. Panganoron	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	2005	20000	2	1	t	f	1	Nerve damage	t	t	1	2	t	2021	t	2021	8	t	f	f	29_Rolina_Panganoron _1623985877476.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
142	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623985881264	160212000	160212005	2	9.037227725	125.5732477	Rogelio B. Sangco	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	2002	100000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	f	2021	8	t	f	f	30_Rogelio_Sangco_1623986669845.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
143	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623986783201	160212000	160212005	2	9.037338979	125.5735655	Armando F. Bacquial	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	2008	15000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	31_Armando_Bacquial_1623987757586.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
144	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623993453917	160212000	160212005	2	9.038202855	125.5733489	Eddie T. Sangco	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	2008	30000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	32_Eddie_Sangco_1623994252857.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
145	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	160212000	160212005	2	9.03741944	125.5738381	Eddie M. Simblante	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2009	20000	2	1	t	f	2	High blood	t	t	1	2	t	2021	t	2021	8	t	t	f	33_Eddie_Simblante_1623995821458.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
146	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623996402994	160212000	160212005	2	9.037264479	125.5739933	Leonardo F. Samyaw	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2017	10000	1	1	t	f	5	Sugar	t	t	1	2	t	2021	t	2021	8	t	t	f	34_Leonardo _Samyaw_1623997353959.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
147	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623997357117	160212000	160212005	2	9.037171436	125.5740436	Loverne G. Vergara	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2019	6000	1	1	t	f	2	Diabetics	t	t	1	2	t	2021	t	2021	8	t	t	f	35_Loverne_Vergara_1623998172048.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
148	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623998175250	160212000	160212005	2	9.037027732	125.5744543	Jairos D. Floree	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	3	2018	10000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	f	\N	8	t	t	f	36_Jairos_Flores_1623999142042.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
149	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624000067572	160212000	160212005	2	9.03730951	125.5733898	Crisistomo H. Gambin	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	2	2002	20000	2	1	t	f	1	Kidney stone	t	t	2	2	t	2021	t	2021	8	t	f	f	37_Crisistomo_Gambin_1624001207370.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
150	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624001210668	160212000	160212005	3	9.036877406	125.5725148	Jundryl T. Malinao	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	2	1985	700000	2	1	t	f	1	Highblood	t	t	2	2	t	2021	t	2021	8	t	f	f	38_Jundryl_Malinao_1624002232711.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
151	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624002236585	160212000	160212005	3	9.036763172	125.5721926	Celistino T. Quimpan	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	1990	30000	2	2	t	f	1	Diabetes	t	t	1	2	t	2021	t	2021	8	t	f	f	39_Celistino_Quimpan_1624003155015.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
152	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624003158984	160212000	160212005	3	9.036763005	125.5721921	Daylinda T. Toralba	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	1990	30000	2	2	t	f	1	Highblood 	t	t	1	2	t	2021	t	2021	8	t	f	f	40_Daylinda_Quimpan_1624003555383.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
153	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624004583008	160212000	160212005	3	9.03689926	125.5720581	Felix M. Sangco	18/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	18/06/2021	1	1	2018	70000	1	2	t	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	f	f	41_Felix_Sangco_1624005152103.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
154	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624062736372	160212000	160212005	2	9.038390596	125.5740902	Elmar B. Bulasa	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	3	2021	10000	1	1	f	f	2	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	42_Elmar _Bulasa_1624063267992.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
155	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	160212000	160212005	2	9.038548868	125.5744087	Luis A. Bolotaolo	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	3	2004	70000	3	1	t	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	43_Luis_Bolotaolo_1624065014702.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
156	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624065018157	160212000	160212005	2	9.037757838	125.5730861	Gabriel M. Praquilies	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	2020	30000	1	1	t	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	44_Gabriel _Praquiles_1624066447632.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
157	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624066450774	160212000	160212005	2	9.036822441	125.5723672	Teresita B. Sangco	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	1990	30000	2	1	t	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	45_Teresita_Sangco_1624067571008.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
158	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067574847	160212000	160212005	3	9.036822275	125.5723667	Alma B. Sangco	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	1990	30000	2	1	t	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	f	f	46_Alma_Sangco_1624067989317.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
159	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067992659	160212000	160212005	3	9.03681019	125.5722643	Julio L. Paña	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	2015	30000	3	1	t	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	f	f	47_Julio_Paña_1624068933954.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
160	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624068937039	160212000	160212005	7	9.038344903	125.5708595	Richard C. Paña	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	3	2021	30000	2	1	f	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	48_Richard_Paña_1624070240811.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
161	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	160212000	160212005	3	9.037276399	125.571988	Romeo emiliano T. Sangco	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	3	2020	500000	3	2	t	f	1	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	49_Romeo emiliano_Sangco_1624072517685.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
162	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624072520789	160212000	160212005	3	9.037319444	125.5719585	Ryan S. Sangco	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	2	2020	500000	4	2	t	f	1	\N	t	t	2	2	t	2021	t	2021	8	t	f	f	50_Ryan_Sangco_1624073429507.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
163	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624079732571	160212000	160212005	3	9.037375733	125.5720621	Rodel G. Bacquial	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	2008	30000	1	1	t	f	2	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	51_Rodel_Bacquial_1624080742170.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
164	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624080746080	160212000	160212005	3	9.037629366	125.5721734	Michael L. Nakila	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	1982	40000	3	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	t	52_Michael_Nakila_1624081640931.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
165	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624081644621	160212000	160212005	3	9.037629199	125.5721733	Godfrey N. Bernal	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	2	1982	40000	3	1	t	f	1	Diabetes	t	t	2	2	t	2021	t	2021	8	t	f	f	53_Godfrey_Bernal_1624082162589.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
166	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624082448679	160212000	160212005	3	9.038273051	125.5720363	Leopoldo S. Malinao	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	2	2013	40000	1	2	t	f	1	Highblood	t	t	2	2	t	2021	t	2021	8	t	t	f	54_Leopoldo_Malinao_1624083371517.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
167	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	160212000	160212005	3	9.038384305	125.5717138	Rolando A. Escala	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	2015	50000	2	1	t	f	4	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	55_Rolando _Escala_1624084878061.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
168	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624084881384	160212000	160212005	3	9.038527346	125.5717523	Mc kevin L. Montaño	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	2019	100000	1	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	56_Mc kevin_Montaño_1624085624733.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
169	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624085627761	160212000	160212005	3	9.038514432	125.571686	Rodel A. Escala	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	2	2020	8000	1	1	t	f	2	Highblood	t	t	2	2	t	2021	t	2021	8	t	t	f	57_Rodel_Escala_1624086272225.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
170	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624086275382	160212000	160212005	3	9.038188617	125.5714013	Felix N. Dellosa	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	2017	150000	3	1	t	f	1	Heart	t	f	1	2	t	2021	t	2021	8	t	t	f	58_Felix_Dellosa_1624087971341.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
171	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624087974601	160212000	160212005	3	9.038232324	125.5713232	Johnbert V. Cagay	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	2	2021	40000	1	1	t	f	2	Brain	t	t	2	2	t	2021	t	2021	8	t	t	f	59_Johnbert_Cagay_1624089200357.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
172	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624089203327	160212000	160212005	3	9.03805551	125.5714841	Ronydan C. Telin	19/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	19/06/2021	1	1	2017	30000	1	1	t	f	1	Bones	t	t	1	2	t	2021	f	\N	8	t	t	f	60_Ronydan_Telin_1624090025557.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
173	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624234080522	160212000	160212005	3	9.038318413	125.5716202	Edwin M Bolotaolo	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	1	2019	100000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	f	\N	8	t	t	f	61_Edwin_Bolotaolo_1624235126733.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
174	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624235130951	160212000	160212005	3	9.037881675	125.5714063	Joemar M. Libarios	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	1	2008	40000	2	1	t	f	1	Lupos	t	t	1	2	t	2021	t	2021	8	t	t	f	62_Joemar_Libarios_1624236278480.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
175	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	160212000	160212005	4	9.037821412	125.5712521	Dionesio F. Bacquial jr.	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2013	40000	2	1	t	f	4	Gall stone	t	t	1	2	t	2021	t	2021	8	t	f	f	63_Dionesio_Bacquial_1624237608774.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
176	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238046234	160212000	160212005	4	9.03785055	125.5712317	Lyxen mae B. Bacquial	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2013	40000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	64_Lyxen mae_Bacquial_1624238595328.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
177	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238599095	160212000	160212005	4	9.037876377	125.5711157	Jolito R. Tampus	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2020	50000	2	1	t	f	4	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	65_Jolito_Tampus_1624239454264.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
178	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624239458199	160212000	160212005	3	9.037737309	125.5715381	Bernabe V. Sangco Jr.	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	1	2019	500000	3	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	f	f	66_Bernabe_Sangco_1624240077357.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
179	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	160212000	160212005	4	9.037925051	125.5708726	Ronald A. Bolotaolo	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2020	300000	3	1	t	f	1	Nerve damage	t	t	1	2	t	2021	t	2021	8	t	t	f	67_Ronald_Bolotaol_1624241393702.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
180	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624242533982	160212000	160212005	3	9.038358809	125.5711324	Carmelito D. Isaga	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2013	20000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	68_Carmelito_Isaga_1624243090171.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
181	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243094156	160212000	160212005	7	9.038262786	125.5708592	Charlito A. Mangmang	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2020	14000	1	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	69_Charlito _Mangmang_1624243579849.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
182	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243583520	160212000	160212005	7	9.038279011	125.5709266	Junifer V. Mangmang	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2013	300000	3	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	70_Junifer_Mangmang_1624245135070.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
183	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624245206642	160212000	160212005	7	9.038391258	125.5709105	Richard V. Mangmang	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2020	20000	2	1	t	f	1	High blood	t	t	1	1	t	2021	t	2021	8	t	t	f	71_Richard_Mangmang_1624246140406.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
184	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624246144489	160212000	160212005	4	9.037787639	125.5711341	Elpidio F. Cempron jr.	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2016	100000	2	1	t	f	1	Sugar	t	t	1	1	t	2021	t	2021	8	t	t	f	72_Elpidio_Cempron_1624247106999.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
185	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624247110667	160212000	160212005	4	9.037787472	125.5711339	Mariel P. Cempron	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2016	100000	2	1	t	f	1	Diabetics	t	t	1	1	t	2021	t	2021	8	t	t	f	73_Mariel_Cempron_1624247571808.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
186	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624252329868	160212000	160212005	2	9.037789294	125.5733861	Elias L. Custan	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	1	2007	10000	1	1	t	f	2	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	74_Elias_Custan_1624253220937.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
187	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254050134	160212000	160212005	7	9.03876972	125.5706543	Daniel B Panganoron	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2017	30000	1	1	t	f	1	Kidney stone	t	t	1	1	t	2021	t	2021	8	t	t	f	75_Daniel_Panganoron_1624254661978.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
188	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254665595	160212000	160212005	7	9.038375696	125.5708022	Welmer P. Damalerio	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2018	50000	3	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	76_Welmer _Damalerio_1624255436709.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
189	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	160212000	160212005	7	9.03818067	125.5706868	Almario C. Urboda sr.	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2013	15000	2	1	t	f	1	Diabetes	t	t	1	1	t	2021	t	2021	8	t	f	f	77_Almario_Urboda_1624256670708.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
190	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624256673904	160212000	160212005	7	9.038098885	125.5705688	Renato L. Delacalzada	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2017	200000	3	1	t	f	1	Highblood 	t	t	1	1	t	2021	t	2021	8	t	t	f	78_Renato _Delacalzada_1624257609840.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
191	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624257612802	160212000	160212005	7	9.038150539	125.570546	Mark joseph S. Tagle	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2020	18000	2	1	t	f	2	\N	t	t	1	1	t	2021	f	\N	8	t	f	f	79_Mark joseph_Tagle_1624258306806.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
192	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624258309828	160212000	160212005	7	9.038280335	125.5706329	Antonio A. Platino	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2018	20000	2	1	t	f	2	Lupos	t	t	1	1	t	2021	t	2021	8	t	t	f	80_Antinio_Platino_1624259172964.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
193	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624259175945	160212000	160212005	7	9.038236297	125.5702895	Fermo S. Rafols	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2015	40000	3	2	t	f	1	Gall stone	t	t	1	1	t	2021	t	2021	8	t	t	f	81_Fermo_Raafols_1624260259975.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
194	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624260263104	160212000	160212005	7	9.038236131	125.5702894	Joan R. Dopio	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2013	20000	3	2	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	82_1624260440403.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
195	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624261215810	160212000	160212005	7	9.038089283	125.5704327	Junphril f. Sangco	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2021	40000	1	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	83_Junphril_Sangco_1624262009315.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
196	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624262013293	160212000	160212005	7	9.038106832	125.570255	Ramon T. Himarangan	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2000	20000	1	1	t	f	2	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	84_Ramon_Himarangan_1624263020320.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
197	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263024047	160212000	160212005	7	9.038100872	125.5702473	Nesjemery P. Rulida	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	3	2000	20000	2	1	t	f	2	Nerve damage	t	t	1	1	t	2021	t	2021	8	t	f	f	85_Nesjemery_Rulida_1624263722984.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
198	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263726110	160212000	160212005	4	9.037279048	125.5708535	Carmelito A. España	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	1	1986	30000	2	1	t	f	1	Highblood	t	t	1	2	t	2021	t	2021	8	t	t	f	86_Carmelito_España_1624500698913.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
199	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624264430675	160212000	160212005	4	9.03603207	125.569561	Luis Antonio G. Dalanon	21/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	21/06/2021	1	2	2019	30000	2	1	t	f	1	Highblood	t	t	2	1	t	2021	t	2021	8	t	t	f	87_Lois antonio _Dalanon_1624504602934.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
200	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624320972549	160212000	160212005	4	9.038021736	125.571111	Renante P. Bacquial	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2013	80000	2	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	88_Renante_Bacquial_1624321819711.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
201	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624321823133	160212000	160212005	7	9.037893264	125.5705678	Mario D. Flores	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2012	50000	2	1	t	f	1	High blood	t	t	1	1	t	2021	t	2021	8	t	f	f	89_Mario_Flores_1624322746234.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
202	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624322749261	160212000	160212005	7	9.038272058	125.5707019	Nathaniel P. Damalerio	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2020	40000	2	1	t	f	1	Sugar	t	t	1	1	t	2021	t	2021	8	t	t	f	90_Nathaniel_Damalerio_1624323478717.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
203	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	160212000	160212005	7	9.038796209	125.5707408	Renaldo B. Babano	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2013	100000	1	1	t	f	1	Diabetics	t	t	1	1	t	2021	t	2021	8	t	t	f	91_Renaldo_Babano_1624324583790.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
204	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624324863512	160212000	160212005	7	9.037746249	125.5702741	Jurney S. Panganoron	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2015	20000	1	1	t	f	4	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	92_Jurney_Panganoron_1624325585820.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
205	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624325680971	160212000	160212005	7	9.037726714	125.570421	Rene A. Tiempo	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2020	20000	1	1	f	f	1	Kidney stone	t	t	1	1	t	2021	t	2021	8	t	f	f	93_Rene _Tiempo_1624326640403.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
206	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624328443679	160212000	160212005	4	9.037493279	125.5708082	Junel C. Lagonoy	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2019	300000	3	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	f	f	94_Junel _Lagonoy_1624329306135.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
207	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624329310083	160212000	160212005	4	9.037077068	125.5707301	Marvin F. Caseres	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2016	150000	2	1	t	f	1	Diabetes	t	t	1	1	t	2021	t	2021	8	t	f	f	95_Marvin_Caseres_1624330392220.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
208	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624330395926	160212000	160212005	4	9.037074419	125.5710536	Jose Q. Villos	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2013	70000	3	1	t	f	1	Highblood 	t	t	1	1	t	2021	t	2021	8	t	t	f	96_Jose_Villos_1624331377958.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
209	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624331381156	160212000	160212005	4	9.037307855	125.571461	Edilberto S. Berago	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2021	200000	3	1	t	f	4	\N	t	t	1	2	t	2021	t	2021	8	t	t	f	97_Edilberto_Berago_1624332265036.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
210	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624332268308	160212000	160212005	4	9.037307688	125.5714608	Aike O. Berago	22/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	22/06/2021	1	3	2021	200000	3	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	98_Aike_Berago_1624332681906.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
211	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624493589883	160212000	160212005	2	9.037965778	125.5744738	Jose  Omar A. Bolotaolo	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	1996	60000	2	1	t	f	5	\N	t	t	1	1	t	2021	f	\N	8	t	t	f	99_Jose omar_Bolotaolo_1624494324549.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
212	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	160212000	160212005	2	9.038206828	125.5738304	Danilo A. Pamiroyan	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2013	50000	2	1	t	f	4	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	100_Danilo_Pamiroyan_1624495350195.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
213	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495353461	160212000	160212005	2	9.038471388	125.5739367	Lenjumar E. Dagohoy	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2017	30000	2	1	t	f	5	\N	t	t	1	1	t	2021	t	2020	8	t	t	f	101_Lenjumar_Dagohoy_1624495851244.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
214	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495855028	160212000	160212005	2	9.040975256	125.5793252	Emma A. Bulasa	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2009	5000	1	1	f	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	102_Emma_Bulasa_1624496682212.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
215	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624496685692	160212000	160212005	2	9.0387429	125.5735394	Joan Christy M. Plumer	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2010	1000000	6	1	t	f	1	Nerve damage	t	t	1	1	t	2021	f	\N	8	t	t	f	103_Joan christy_Plumer_1624498065069.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
216	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	160212000	160212005	2	9.03813299	125.5736865	Gerry L. Abejo	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2020	40000	3	1	f	f	5	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	104_Gerry_Abejo_1624499027305.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
217	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624499030367	160212000	160212005	4	9.037425069	125.5713446	Arjie mercy grace M. Bolo	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2018	300000	2	1	f	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	105_Arjie mercy grace_Bolo_1624499851927.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
218	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500237588	160212000	160212005	4	9.037497914	125.5710077	Jesamae j. Boloatolo	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2021	100000	1	2	f	f	1	Highblood	t	t	1	1	t	2021	f	\N	8	t	t	f	106_Jesamae_Bolotaolo_1624500589592.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
219	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500724380	160212000	160212005	4	9.037238321	125.5708243	Zigger S. España	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2008	15000	2	1	t	f	1	High blood	t	t	1	1	t	2021	t	2021	8	t	t	f	107_Zigger _España_1624501226655.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
220	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	160212000	160212005	4	9.036989985	125.5709145	Juan S. Padilia jr.	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2000	100000	2	1	t	f	1	Sugar	t	t	1	1	t	2021	t	2021	8	t	t	f	108_Juan _Padilla_1624504278172.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
221	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624504692208	160212000	160212005	4	9.036083062	125.5697625	Basilio B. Sangco jr.	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	1991	150000	3	2	t	f	1	Diabetics	t	t	1	1	t	2021	t	2021	8	t	t	f	109_Basilio_Sangco_1624505550638.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
222	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624512494524	160212000	160212005	5	9.039767362	125.5617581	Eldefonso M. Olivo	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2002	30000	1	1	f	f	2	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	110_Eldefonso_Olivo_1624513310986.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
223	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624513315110	160212000	160212005	5	9.041058033	125.5611965	Renaldo Daroy	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2015	30000	2	1	t	f	1	Kidney stone	t	t	1	1	t	2021	t	2021	8	t	t	f	111_Renaldo_Daroy_1624514275813.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
224	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514279091	160212000	160212005	5	9.038947197	125.5640635	Carlos T. Quimpan jr.	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2015	100000	2	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	112_Carlos_Quimpan_1624514954782.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
225	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514957832	160212000	160212005	5	9.039053153	125.5648601	Jason G. Badiang	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2019	20000	1	1	t	f	2	Diabetes	t	t	1	1	t	2021	t	2021	8	t	t	f	113_Jason_Badiang_1624515622941.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
226	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624515626022	160212000	160212005	5	9.038845545	125.5648393	Bartolome  S. Badiang	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2011	100000	2	1	t	f	1	Highblood 	t	t	1	1	t	2021	t	2021	8	t	t	f	114_Bartolome_Badiang_1624516430344.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
227	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516433349	160212000	160212005	5	9.03907302	125.5647836	Inie G. Badiang	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2020	10000	1	1	f	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	115_Inie _Badiang_1624516777332.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
228	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516780329	160212000	160212005	5	9.038072727	125.5651518	Romanico S. Sangco jr.	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2015	45000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	116_Romanico_Sangco_1624517745512.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
229	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624517748482	160212000	160212005	5	9.037882668	125.5651015	Larita S. Sangco	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2019	30000	1	1	t	f	2	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	117_Larita_Sangco_1624518203165.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
230	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518206285	160212000	160212005	5	9.037730025	125.5651658	Rosinda B. Plata	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2000	50000	2	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	118_Rosinda_Plata_1624518708976.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
231	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518711967	160212000	160212005	5	9.037643935	125.5653134	Cresencio T. Quimpan	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2008	10000	2	1	t	f	2	High blood	t	t	1	1	t	2021	t	2021	8	t	t	f	119_Cresencio_Quimpan_1624519493727.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
232	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624519496837	160212000	160212005	5	9.037449903	125.5656818	Rosela M. Paler	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2014	20000	1	1	t	f	2	Sugar	t	t	1	1	t	2021	t	2021	8	t	t	f	120_Rosila_Paler_1624520113773.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
233	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520116995	160212000	160212005	5	9.037356197	125.565945	Haziel M. Daguplo	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2017	10000	1	1	f	f	2	Diabetics	t	t	1	1	t	2021	t	2021	8	t	t	f	121_Haziel_Daguplo_1624520649995.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
234	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	160212000	160212005	5	9.037614466	125.5656453	Jimmy P. Daguplo	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2009	30000	1	1	t	f	2	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	122_Jimmy_Daguplo_1624521750040.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
235	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624521753207	160212000	160212005	5	9.037566124	125.5656892	Charnie ann makiling	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	1	2009	30000	1	1	t	f	2	Kidney stone	t	t	1	1	t	2021	t	2021	8	t	t	f	123_Charnie ann_Makiling_1624522278462.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
236	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624522281544	160212000	160212005	5	9.039470685	125.5633577	Ernesto Pada	24/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	24/06/2021	1	3	2009	10000	1	1	t	f	2	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	124_Ernesto_Pada_1624523446993.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
237	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624581233698	160212000	160212005	4	9.037642611	125.5709084	Jovanie I. Salva	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	3	2020	40000	2	1	f	f	1	Diabetes	t	t	1	1	t	2021	t	2021	8	t	t	f	125_Jovanie _Salva_1624583927763.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
238	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624582014285	160212000	160212005	4	9.036080082	125.5697551	Julius C. Declarado	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	1	2006	50000	3	1	t	f	1	Highblood 	t	t	1	1	t	2021	t	2021	8	t	t	t	126_Julius_Declarado_1624583205417.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
239	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584359518	160212000	160212005	4	9.035667512	125.5683593	Mark john S. Trilles	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	1	2020	15000	1	1	t	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	127_Mark john_Trilles_1624584982203.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
240	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584986261	160212000	160212005	4	9.035872472	125.5680794	Maurita S. Trilles	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	1	2019	40000	2	1	t	f	4	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	128_Maurita_Trilles_1624585593565.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
241	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624585929841	160212000	160212005	4	9.03628438	125.5683322	Felix L. Callano	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	3	2005	80000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	129_Felix_Callano_1624586606284.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
242	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624586610052	160212000	160212005	4	9.036284711	125.5683241	Felix V. Callano jr.	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	3	2005	80000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	130_Felix_Callano_1624587045276.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
243	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587049166	160212000	160212005	4	9.035862539	125.5679936	Joseph A. Trilles	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	3	2012	5000	1	1	f	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	131_Joseph _Trilles_1624587619234.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
244	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587623304	160212000	160212005	4	9.035719828	125.5692059	Joseph A. Calledo	25/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	25/06/2021	1	1	2002	155000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	132_Joseph_Calledo_1624588649493.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
245	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624774844111	160212000	160212005	2	9.037619102	125.5725587	Elmer L. Bacquial	27/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	27/06/2021	1	3	2000	50000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	133_Elmer_Bacquial_1624775599873.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
246	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	160212000	160212005	1	9.046206436	125.5774728	Juanito C. Allanos	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2010	30000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	134_Juanito_Llanos_1624843274377.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
247	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624842743835	160212000	160212005	1	9.046594492	125.5771681	Warren B. Llanos	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2017	80000	1	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	135_Warren _Llanos_1624843186214.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
248	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624843421444	160212000	160212005	1	9.045687924	125.5772807	Fercila D. Flores	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2013	20000	1	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	136_Fercila_Flores_1624844011884.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
249	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844015079	160212000	160212005	1	9.04520517	125.5767195	Martin S. Cabasag	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2002	20000	2	1	t	f	5	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	137_Martin_Cabasag_1624844970177.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
250	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844973958	160212000	160212005	1	9.043263886	125.5755014	Edita A. Sapa	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2002	50000	3	1	t	f	1	Kidney stone	t	t	1	1	t	2021	t	2021	8	t	t	f	138_Edita_Sapa_1624845713023.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
251	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624845716974	160212000	160212005	1	9.043227795	125.57544	Cerilo A. Sapa	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2021	4000	1	1	t	f	2	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	139_Cerilo_Sapa_1624846304570.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
252	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624846308390	160212000	160212005	1	9.042833113	125.575206	Erlindo B. Domaug	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2000	30000	1	1	t	f	2	Diabetes	t	t	1	1	t	2021	t	2021	8	t	t	f	140_Erlindo_Domaug_1624848835119.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
253	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624847252233	160212000	160212005	\N	9.042741396	125.5749391	Salvador B. Simblante	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	2	2014	50000	2	1	t	f	1	Highblood 	t	t	2	1	t	2021	t	2015	8	t	t	f	141_Salvador_Simblante_1624848142490.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
254	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624848903701	160212000	160212005	1	9.042842384	125.5748986	Willam G. Olivo	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	4	2000	100000	1	1	t	f	1	\N	t	t	1	1	t	2021	t	2015	8	t	t	f	142_Willam_Olivo_1624849506155.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
255	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624849510077	160212000	160212005	1	9.042343403	125.5748996	Jeffrey Q. Ignalig	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2010	20000	1	1	t	f	2	\N	t	t	1	1	t	2021	f	\N	8	t	t	f	143_Jeffey_Ignalig_1624850152691.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
256	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850156040	160212000	160212005	1	9.042139108	125.5750981	Cesar F. Bacquial	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2000	30000	1	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	144_Cesar_Bacquial_1624850870164.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
257	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850874162	160212000	160212005	1	9.041995075	125.5748188	Victoria B. Simblante	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	1	2008	400000	2	1	t	f	1	Highblood	t	t	1	1	t	2021	t	2021	8	t	t	f	145_Victoria_Simblante_1624851794123.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
258	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624851797693	160212000	160212005	1	9.042258639	125.5748771	Edgar B. Simblante	28/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	28/06/2021	1	3	2010	10000	1	1	t	f	2	Diabetes	t	t	1	1	t	2021	t	2021	8	t	t	f	146_Edgar_Simblante_1624852876723.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
259	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	160212000	160212005	2	9.038084648	125.573648	Simplicio J. Junasa	29/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	29/06/2021	1	3	2012	40000	2	1	t	f	1	Highblood 	t	t	1	1	t	2021	t	2021	8	t	t	f	147_Simplicio_Junasa_1626153033427.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
260	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624963501162	160212000	160212005	2	9.038160969	125.5737558	Dionisio T. Beray	29/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	29/06/2021	1	3	2010	15000	2	1	t	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	148_Dionisio_Beray_1626152980664.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
261	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624964464171	160212000	160212005	2	9.038972693	125.5738629	Samuel T. Leones	29/06/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	29/06/2021	1	3	2007	10000	1	1	t	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	t	f	149_Samuel_Leones_1626153191053.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
262	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625446792947	160212000	160212005	3	9.038053192	125.5721151	Democrito T. Beray	05/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	05/07/2021	1	1	2009	300000	2	1	t	f	1	Diabetes	t	t	1	1	t	2021	f	\N	8	t	f	f	null	2022-06-20 23:58:00	2022-06-20 23:58:00
263	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625447601678	160212000	160212005	3	9.038038954	125.5720997	Dean mark A. Beray	05/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	05/07/2021	1	2	2009	30000	2	1	t	f	1	\N	t	t	2	1	t	2021	f	\N	8	t	f	f	null	2022-06-20 23:58:00	2022-06-20 23:58:00
264	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625968527929	160212000	160212005	6	9.043294017	125.5841421	Fernand R. Lepalam	11/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	11/07/2021	1	3	1995	30000	2	1	t	f	2	Highblood 	t	t	1	1	t	2021	f	\N	8	t	f	f	152_Fernand_Lepalam_1625969415342.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
265	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	160212000	160212005	4	9.035771151	125.5678266	Bryner S. España	11/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	11/07/2021	1	1	2007	11000	2	1	t	f	2	\N	t	t	1	1	t	2021	t	2021	8	f	t	f	153_Bryner_España_1626584530558.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
266	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626142641457	160212000	160212005	1	9.042865893	125.5750028	Manny A. Betco	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	3	2018	30000	2	1	t	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	154_Manny_Betco_1626143237765.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
267	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143241895	160212000	160212005	7	9.038181664	125.5705333	Yolly G. Olivi	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	3	2018	60000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	155_Yolly_Olivo_1626143923459.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
268	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143927196	160212000	160212005	7	9.037974718	125.5703281	Mario R. Fediles	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	3	2018	80000	1	1	t	f	1	\N	t	t	1	1	t	2021	f	2021	8	t	f	f	156_Mario_Fediles_1626144626464.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
269	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626144630287	160212000	160212005	3	9.038264275	125.5716013	Haintji Fritzi B. Bolotaolo	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	1	2018	50000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	157_Haintji Fritzi_Bolotaolo_1626145744681.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
270	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626145748536	160212000	160212005	\N	9.036892637	125.5706305	Pedro S. Badiang	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	1	1986	70000	2	1	t	f	4	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	158_Pedro_Badiang_1626146254047.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
271	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626146257887	160212000	160212005	4	9.036559701	125.5705475	Romero E. Cagampang II	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	2	2010	40000	2	1	t	f	1	\N	f	t	2	1	t	2021	f	2021	8	t	t	f	159_Romero_Cagampang_1626147207316.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
272	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626147211345	160212000	160212005	5	9.036042665	125.5667772	Edgardo G. Dacolo	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	3	2020	20000	2	2	f	f	2	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	160_Edgardo_Dacolo_1626148543604.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
273	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626178377384	160212000	160212005	4	9.037081373	125.5706369	Geraldo P. Siman	13/07/2021	CLINT LEE CHRISTOPHER Sangco Lagonoy	CLINT LEE CHRISTOPHER Sangco Lagonoy	13/07/2021	1	3	2015	40000	2	1	t	f	1	\N	t	t	1	1	t	2021	t	2021	8	t	f	f	161_Geraldo_Siman_1626584800797.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
\.


                                                                                                                3389.dat                                                                                            0000600 0004000 0002000 00000025342 14256542426 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	160201010	Manapa	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	160201001	Abilan	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	160201011	Matabao	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	160201018	Poblacion 6	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	160201022	Poblacion 10	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	160201008	Malapong	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	160201015	Poblacion 3	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	160201028	Simbalan	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	160201004	Guinabsan	2022-06-28 23:58:00	2022-06-28 23:58:00
10	1	160201014	Poblacion 2	2022-06-29 23:58:00	2022-06-29 23:58:00
11	1	160201017	Poblacion 5	2022-06-30 23:58:00	2022-06-30 23:58:00
12	1	160201021	Poblacion 9	2022-07-01 23:58:00	2022-07-01 23:58:00
13	1	160201016	Poblacion 4	2022-07-02 23:58:00	2022-07-02 23:58:00
14	1	160201007	Macalang	2022-07-03 23:58:00	2022-07-03 23:58:00
15	1	160201027	Lower Olave	2022-07-04 23:58:00	2022-07-04 23:58:00
16	1	160201025	Sangay	2022-07-05 23:58:00	2022-07-05 23:58:00
17	1	160201009	Malpoc	2022-07-06 23:58:00	2022-07-06 23:58:00
18	1	160201002	Agong-ong	2022-07-07 23:58:00	2022-07-07 23:58:00
19	1	160201024	Sacol	2022-07-08 23:58:00	2022-07-08 23:58:00
20	1	160201019	Poblacion 7	2022-07-09 23:58:00	2022-07-09 23:58:00
21	1	160201023	Rizal	2022-07-10 23:58:00	2022-07-10 23:58:00
22	1	160201003	Alubijid	2022-07-11 23:58:00	2022-07-11 23:58:00
23	1	160201013	Poblacion 1	2022-07-12 23:58:00	2022-07-12 23:58:00
24	1	160201026	Talo-ao	2022-07-13 23:58:00	2022-07-13 23:58:00
25	1	160201020	Poblacion 8	2022-07-14 23:58:00	2022-07-14 23:58:00
26	1	160203009	Cabinet	2022-07-15 23:58:00	2022-07-15 23:58:00
27	1	160203007	Caasinan	2022-07-16 23:58:00	2022-07-16 23:58:00
28	1	160203011	Calibunan	2022-07-17 23:58:00	2022-07-17 23:58:00
29	1	160203040	Tolosa	2022-07-18 23:58:00	2022-07-18 23:58:00
30	1	160203018	La Union	2022-07-19 23:58:00	2022-07-19 23:58:00
31	1	160203032	Poblacion 9	2022-07-20 23:58:00	2022-07-20 23:58:00
32	1	160203016	Katugasan	2022-07-21 23:58:00	2022-07-21 23:58:00
33	1	160203019	Mabini	2022-07-22 23:58:00	2022-07-22 23:58:00
34	1	160203028	Poblacion 5	2022-07-23 23:58:00	2022-07-23 23:58:00
35	1	160203005	Bay-ang	2022-07-24 23:58:00	2022-07-24 23:58:00
36	1	160203038	Soriano	2022-07-25 23:58:00	2022-07-25 23:58:00
37	1	160203037	Sanghan	2022-07-26 23:58:00	2022-07-26 23:58:00
38	1	160203013	Concepcion	2022-07-27 23:58:00	2022-07-27 23:58:00
39	1	160203002	Antonio Luna	2022-07-28 23:58:00	2022-07-28 23:58:00
40	1	160203014	Del Pilar	2022-07-29 23:58:00	2022-07-29 23:58:00
41	1	160203006	Bayabas	2022-07-30 23:58:00	2022-07-30 23:58:00
42	1	160203010	Calamba	2022-07-31 23:58:00	2022-07-31 23:58:00
43	1	160203041	Mahaba	2022-08-01 23:58:00	2022-08-01 23:58:00
44	1	160203033	Puting Bato	2022-08-02 23:58:00	2022-08-02 23:58:00
45	1	160203012	Comagascas	2022-08-03 23:58:00	2022-08-03 23:58:00
46	1	160203024	Poblacion 12	2022-08-04 23:58:00	2022-08-04 23:58:00
47	1	160203021	Poblacion 1	2022-08-05 23:58:00	2022-08-05 23:58:00
48	1	160203031	Poblacion 8	2022-08-06 23:58:00	2022-08-06 23:58:00
49	1	160203023	Poblacion 11	2022-08-07 23:58:00	2022-08-07 23:58:00
50	1	160203030	Poblacion 7	2022-08-08 23:58:00	2022-08-08 23:58:00
51	1	160203026	Poblacion 3	2022-08-09 23:58:00	2022-08-09 23:58:00
52	1	160203027	Poblacion 4	2022-08-10 23:58:00	2022-08-10 23:58:00
53	1	160203022	Poblacion 10	2022-08-11 23:58:00	2022-08-11 23:58:00
54	1	160203029	Poblacion 6	2022-08-12 23:58:00	2022-08-12 23:58:00
55	1	160203025	Poblacion 2	2022-08-13 23:58:00	2022-08-13 23:58:00
56	1	160203017	Kauswagan	2022-08-14 23:58:00	2022-08-14 23:58:00
57	1	160204001	Cahayagan	2022-08-15 23:58:00	2022-08-15 23:58:00
58	1	160204012	Tagcatong	2022-08-16 23:58:00	2022-08-16 23:58:00
59	1	160204014	Vinapor	2022-08-17 23:58:00	2022-08-17 23:58:00
60	1	160204002	Gosoon	2022-08-18 23:58:00	2022-08-18 23:58:00
61	1	160204010	Rojales	2022-08-19 23:58:00	2022-08-19 23:58:00
62	1	160204009	Poblacion	2022-08-20 23:58:00	2022-08-20 23:58:00
63	1	160204004	Manoligao	2022-08-21 23:58:00	2022-08-21 23:58:00
64	1	160204011	San Agustin	2022-08-22 23:58:00	2022-08-22 23:58:00
65	1	160205012	San Jose	2022-08-23 23:58:00	2022-08-23 23:58:00
66	1	160205014	San Vicente	2022-08-24 23:58:00	2022-08-24 23:58:00
67	1	160205015	Santo Niño	2022-08-25 23:58:00	2022-08-25 23:58:00
68	1	160205008	Magdagooc	2022-08-26 23:58:00	2022-08-26 23:58:00
69	1	160205009	Magsaysay	2022-08-27 23:58:00	2022-08-27 23:58:00
70	1	160205004	Bunga	2022-08-28 23:58:00	2022-08-28 23:58:00
71	1	160205003	Beltran	2022-08-29 23:58:00	2022-08-29 23:58:00
72	1	160205006	Cuyago	2022-08-30 23:58:00	2022-08-30 23:58:00
73	1	160205001	Baleguian	2022-08-31 23:58:00	2022-08-31 23:58:00
74	1	160205007	Libas	2022-09-01 23:58:00	2022-09-01 23:58:00
75	1	160205002	Bangonay	2022-09-02 23:58:00	2022-09-02 23:58:00
76	1	160205010	Maraiging	2022-09-03 23:58:00	2022-09-03 23:58:00
77	1	160205013	San Pablo	2022-09-04 23:58:00	2022-09-04 23:58:00
78	1	160205011	Poblacion	2022-09-05 23:58:00	2022-09-05 23:58:00
79	1	160205005	Colorado	2022-09-06 23:58:00	2022-09-06 23:58:00
80	1	160206004	Jaliobong	2022-09-07 23:58:00	2022-09-07 23:58:00
81	1	160206010	Crossing	2022-09-08 23:58:00	2022-09-08 23:58:00
82	1	160206008	San Roque	2022-09-09 23:58:00	2022-09-09 23:58:00
83	1	160206002	Canaway	2022-09-10 23:58:00	2022-09-10 23:58:00
84	1	160206006	Poblacion	2022-09-11 23:58:00	2022-09-11 23:58:00
85	1	160206011	Songkoy	2022-09-12 23:58:00	2022-09-12 23:58:00
86	1	160206001	Bangayan	2022-09-13 23:58:00	2022-09-13 23:58:00
87	1	160206007	San Isidro	2022-09-14 23:58:00	2022-09-14 23:58:00
88	1	160206005	Mahayahay	2022-09-15 23:58:00	2022-09-15 23:58:00
89	1	160206009	Sangay	2022-09-16 23:58:00	2022-09-16 23:58:00
90	1	160206003	Hinimbangan	2022-09-17 23:58:00	2022-09-17 23:58:00
91	1	160207001	Ambacon	2022-09-18 23:58:00	2022-09-18 23:58:00
92	1	160207016	E.G. Montilla	2022-09-19 23:58:00	2022-09-19 23:58:00
93	1	160207013	San Isidro	2022-09-20 23:58:00	2022-09-20 23:58:00
94	1	160207011	Poblacion	2022-09-21 23:58:00	2022-09-21 23:58:00
95	1	160207010	Pinana-an	2022-09-22 23:58:00	2022-09-22 23:58:00
96	1	160207014	Tinucoran	2022-09-23 23:58:00	2022-09-23 23:58:00
97	1	160207017	Durian	2022-09-24 23:58:00	2022-09-24 23:58:00
98	1	160207021	Casiklan	2022-09-25 23:58:00	2022-09-25 23:58:00
99	1	160207004	Katipunan	2022-09-26 23:58:00	2022-09-26 23:58:00
100	1	160207008	Marcos Calo	2022-09-27 23:58:00	2022-09-27 23:58:00
101	1	160207020	San Roque	2022-09-28 23:58:00	2022-09-28 23:58:00
102	1	160207002	Bonifacio	2022-09-29 23:58:00	2022-09-29 23:58:00
103	1	160207006	Malicato	2022-09-30 23:58:00	2022-09-30 23:58:00
104	1	160207022	Lawan-lawan	2022-10-01 23:58:00	2022-10-01 23:58:00
105	1	160207018	Ibuan	2022-10-02 23:58:00	2022-10-02 23:58:00
106	1	160207015	Balungagan	2022-10-03 23:58:00	2022-10-03 23:58:00
107	1	160207005	Lingayao	2022-10-04 23:58:00	2022-10-04 23:58:00
108	1	160207007	Maningalao	2022-10-05 23:58:00	2022-10-05 23:58:00
109	1	160207003	Consorcia	2022-10-06 23:58:00	2022-10-06 23:58:00
110	1	160207009	Mat-i	2022-10-07 23:58:00	2022-10-07 23:58:00
111	1	160207019	Rosario	2022-10-08 23:58:00	2022-10-08 23:58:00
112	1	160208003	Guiasan	2022-10-09 23:58:00	2022-10-09 23:58:00
113	1	160208011	Santo Rosario	2022-10-10 23:58:00	2022-10-10 23:58:00
114	1	160208010	Santo Niño	2022-10-11 23:58:00	2022-10-11 23:58:00
115	1	160208005	Poblacion	2022-10-12 23:58:00	2022-10-12 23:58:00
116	1	160208001	Buhang	2022-10-13 23:58:00	2022-10-13 23:58:00
117	1	160208009	Marcos	2022-10-14 23:58:00	2022-10-14 23:58:00
118	1	160208002	Caloc-an	2022-10-15 23:58:00	2022-10-15 23:58:00
119	1	160208008	Taod-oy	2022-10-16 23:58:00	2022-10-16 23:58:00
120	1	160209001	Aclan	2022-10-17 23:58:00	2022-10-17 23:58:00
121	1	160209002	Amontay	2022-10-18 23:58:00	2022-10-18 23:58:00
122	1	160209009	Kinabjangan	2022-10-19 23:58:00	2022-10-19 23:58:00
123	1	160209019	Talisay	2022-10-20 23:58:00	2022-10-20 23:58:00
124	1	160209014	Barangay 5 (Pob.)	2022-10-21 23:58:00	2022-10-21 23:58:00
125	1	160209018	Santa Ana	2022-10-22 23:58:00	2022-10-22 23:58:00
126	1	160209005	Camagong	2022-10-23 23:58:00	2022-10-23 23:58:00
127	1	160209017	Punta	2022-10-24 23:58:00	2022-10-24 23:58:00
128	1	160209004	Ata-atahon	2022-10-25 23:58:00	2022-10-25 23:58:00
129	1	160209013	Barangay 4 (Pob.)	2022-10-26 23:58:00	2022-10-26 23:58:00
130	1	160209010	Barangay 1 (Pob.)	2022-10-27 23:58:00	2022-10-27 23:58:00
131	1	160209012	Barangay 3 (Pob.)	2022-10-28 23:58:00	2022-10-28 23:58:00
132	1	160209015	Barangay 6 (Pob.)	2022-10-29 23:58:00	2022-10-29 23:58:00
133	1	160209006	Cubi-cubi	2022-10-30 23:58:00	2022-10-30 23:58:00
134	1	160209007	Culit	2022-10-31 23:58:00	2022-10-31 23:58:00
135	1	160209020	Triangulo	2022-11-01 23:58:00	2022-11-01 23:58:00
136	1	160209016	Barangay 7 (Pob.)	2022-11-02 23:58:00	2022-11-02 23:58:00
137	1	160209011	Barangay 2 (Pob.)	2022-11-03 23:58:00	2022-11-03 23:58:00
138	1	160209008	Jaguimitan	2022-11-04 23:58:00	2022-11-04 23:58:00
139	1	160212004	Humilog	2022-11-05 23:58:00	2022-11-05 23:58:00
140	1	160212007	Tagbongabong	2022-11-06 23:58:00	2022-11-06 23:58:00
141	1	160212003	Basilisa	2022-11-07 23:58:00	2022-11-07 23:58:00
142	1	160212008	Poblacion II	2022-11-08 23:58:00	2022-11-08 23:58:00
143	1	160212001	Poblacion I (Agay)	2022-11-09 23:58:00	2022-11-09 23:58:00
144	1	160212006	San Antonio	2022-11-10 23:58:00	2022-11-10 23:58:00
145	1	160212005	Panaytayon	2022-11-11 23:58:00	2022-11-11 23:58:00
146	1	160212002	Balang-balang	2022-11-12 23:58:00	2022-11-12 23:58:00
147	1	160210007	Poblacion I	2022-11-13 23:58:00	2022-11-13 23:58:00
148	1	160210009	Tagbuyacan	2022-11-14 23:58:00	2022-11-14 23:58:00
149	1	160210002	Curva	2022-11-15 23:58:00	2022-11-15 23:58:00
150	1	160210003	Jagupit	2022-11-16 23:58:00	2022-11-16 23:58:00
151	1	160210008	San Isidro	2022-11-17 23:58:00	2022-11-17 23:58:00
152	1	160210005	La Paz	2022-11-18 23:58:00	2022-11-18 23:58:00
153	1	160210010	Estanislao Morgado	2022-11-19 23:58:00	2022-11-19 23:58:00
154	1	160210011	Poblacion II	2022-11-20 23:58:00	2022-11-20 23:58:00
155	1	160211011	Tinigbasan	2022-11-21 23:58:00	2022-11-21 23:58:00
156	1	160211005	Lawigan	2022-11-22 23:58:00	2022-11-22 23:58:00
157	1	160211001	Binuangan	2022-11-23 23:58:00	2022-11-23 23:58:00
158	1	160211010	Tagpangahoy	2022-11-24 23:58:00	2022-11-24 23:58:00
159	1	160211007	Poblacion 2	2022-11-25 23:58:00	2022-11-25 23:58:00
160	1	160211004	La Fraternidad	2022-11-26 23:58:00	2022-11-26 23:58:00
161	1	160211002	Cabayawa	2022-11-27 23:58:00	2022-11-27 23:58:00
162	1	160211006	Poblacion 1	2022-11-28 23:58:00	2022-11-28 23:58:00
163	1	160211013	Doña Telesfora	2022-11-29 23:58:00	2022-11-29 23:58:00
164	1	160211003	Doña Rosario	2022-11-30 23:58:00	2022-11-30 23:58:00
165	1	160211012	Victory	2022-12-01 23:58:00	2022-12-01 23:58:00
166	1	160211008	Santa Ana	2022-12-02 23:58:00	2022-12-02 23:58:00
167	1	160211009	Tagmamarkay	2022-12-03 23:58:00	2022-12-03 23:58:00
\.


                                                                                                                                                                                                                                                                                              3337.dat                                                                                            0000600 0004000 0002000 00000001100 14256542426 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. aluminum, tile, concrete, brick, stone, wood, plywood, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g. cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                3339.dat                                                                                            0000600 0004000 0002000 00000000163 14256542426 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Operational	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Abandoned	2022-06-21 23:58:00	2022-06-21 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                             3341.dat                                                                                            0000600 0004000 0002000 00000001007 14256542426 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Multi-unit residential (three units or more such as apartment, accessoria, condominium, etc.)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Commercial/ industrial/ agricultural building/house (e.g. office, stores, factory, or others)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Institutional living quarters (e.g. dormitories, lodging houses and others)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Other housing unit (e.g. boat, cave, trailers, barges, carts, and others)	2022-06-23 23:58:00	2022-06-23 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3343.dat                                                                                            0000600 0004000 0002000 00000000263 14256542426 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	For Rent	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	For Lease	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Others, please specify	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                             3345.dat                                                                                            0000600 0004000 0002000 00000001100 14256542426 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. aluminum, tile, concrete, brick, stone, wood, plywood, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g. cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                3347.dat                                                                                            0000600 0004000 0002000 00000000741 14256542426 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Physical Disabilities	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Intelectual/Learning Disabilities	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Psychiatric Disabilities	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Visual impairments	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Hearing impairments	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Neurological disabilities	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Other, Please specify	2022-06-26 23:58:00	2022-06-26 23:58:00
\.


                               3349.dat                                                                                            0000600 0004000 0002000 00000000247 14256542426 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Traditional	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Modern	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Ecological	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                         3351.dat                                                                                            0000600 0004000 0002000 00000000151 14256542426 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Male	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Female	2022-06-21 23:58:00	2022-06-21 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       3385.dat                                                                                            0000600 0004000 0002000 00000003060 14256542426 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	0	No Grade	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	1	Day Care	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	2	Kindergarten	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	11	GRADE 1	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	12	GRADE II	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	13	GRADE III	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	14	GRADE IV	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	15	GRADE V	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	16	GRADE VI	2022-06-28 23:58:00	2022-06-28 23:58:00
10	1	17	GRADE VII	2022-06-29 23:58:00	2022-06-29 23:58:00
11	1	18	GRADE VIII	2022-06-30 23:58:00	2022-06-30 23:58:00
12	1	19	GRADE IX	2022-07-01 23:58:00	2022-07-01 23:58:00
13	1	20	GRADE X	2022-07-02 23:58:00	2022-07-02 23:58:00
14	1	21	GRADE XI	2022-07-03 23:58:00	2022-07-03 23:58:00
15	1	22	GRADE XII	2022-07-04 23:58:00	2022-07-04 23:58:00
16	1	23	1st Year PS/N-T/TV	2022-07-05 23:58:00	2022-07-05 23:58:00
17	1	24	2nd Year PS/N-T/TV	2022-07-06 23:58:00	2022-07-06 23:58:00
18	1	31	1st Year College	2022-07-07 23:58:00	2022-07-07 23:58:00
19	1	32	2nd year College	2022-07-08 23:58:00	2022-07-08 23:58:00
20	1	33	3rd Year College	2022-07-09 23:58:00	2022-07-09 23:58:00
21	1	34	4th Year College or College Graduate	2022-07-10 23:58:00	2022-07-10 23:58:00
22	1	51	ALS Elementary	2022-07-11 23:58:00	2022-07-11 23:58:00
23	1	52	ALS Secondary	2022-07-12 23:58:00	2022-07-12 23:58:00
24	1	53	SPED Elementary	2022-07-13 23:58:00	2022-07-13 23:58:00
25	1	54	SPED Secondary	2022-07-14 23:58:00	2022-07-14 23:58:00
26	1	41	Post Grad/Units	2022-07-15 23:58:00	2022-07-15 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                3353.dat                                                                                            0000600 0004000 0002000 00000001054 14256542426 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	School	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Church	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Covered court/gym	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Relative's House	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Neighbor or Friend's House	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Barangay/City Hall	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Multi-Purpose Hall	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Evacuation Centers	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	Other, Please specify	2022-06-28 23:58:00	2022-06-28 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3383.dat                                                                                            0000600 0004000 0002000 00000001052 14256542426 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Level I	Stand-alone water points (e.g. hand pumps, shallow, wells, rainwater collectors) serving and average of 15 households	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Level II	Piped water with a communal water point (e.g. borewell, spring system) serving and average of 4-6 households within a 25-meter distance	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Level III	Piped water supply with a private water point ( e.g. house connection) based on a daily water demand of more than 100 liters per person	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3355.dat                                                                                            0000600 0004000 0002000 00000001103 14256542426 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. galvanized iron, aluminum, tile concreated, brick, stone, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g. cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                             3357.dat                                                                                            0000600 0004000 0002000 00000000356 14256542426 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Fully-owned	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Owner-like possession	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Tenanted	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Leased/Rented	2022-06-23 23:58:00	2022-06-23 23:58:00
\.


                                                                                                                                                                                                                                                                                  3359.dat                                                                                            0000600 0004000 0002000 00000001101 14256542426 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. galvanized iron, aluminum, tile, concrete, brick, stone, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                               3361.dat                                                                                            0000600 0004000 0002000 00000000200 14256542426 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Privately-owned	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Governmently-owned	2022-06-21 23:58:00	2022-06-21 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                3363.dat                                                                                            0000600 0004000 0002000 00000003505 14256542426 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	CROP FARMING AND GARDENING such as growing of palay, corn, roots and tubers, vegetables, fruits, nuts, orchids, ornamental plants, etc.	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	LIVESTOCK AND POULTRY RAISING such as raising of carabaos, cattle, hogs, horses, chicken, dunks, etc., and the production of fresh milk, eggs, etc.	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	FISHING such as capturing fish (with a boat of three tons or less); gathering of fry , shells, seaweeds, etc,; and culturing fish, oysters, mussel, etc.	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	FORESTRY AND HUNTING suc as tree planting (ipil-ipil), firewook gathering, small-scale logging (excluding concessionnaires), charcoal making, forestry product gathering (cogon, nipa, rattan, bamboo, resin, gum, etc.) or wild animals/birds hunting	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	WHOLESALE AND RETAIL including market vending sidewalk vending, and peddling	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	MANUFACTURING such as mat weaving, tailoring dressmaking, bagoong making, fish drying, etc.	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	COMMUNITY, SOCIAL, RECREATIONAL, AND PERSONAL SERVICES such as medical and dental practice, practice of trade, operation of schools, restuarants and hotels, etc.	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	TRANSPORTATION, STORAGE AND COMMUNICATION SERVICERS such as jeepney or taxi operations, storage and warehousing activities, messengerial services, etc.	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	MINING AND QUARRYING such as mineral extration like salt making, gold mining, gravel, sand and stone quarrying, etc.	2022-06-28 23:58:00	2022-06-28 23:58:00
10	1	ACTIVITIES NOT ELSEWHERE CLASSIFIED including electricity, gas and water; financial, insurance, real estate, and business services	2022-06-29 23:58:00	2022-06-29 23:58:00
\.


                                                                                                                                                                                           3365.dat                                                                                            0000600 0004000 0002000 00000000337 14256542426 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Single	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Married	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Widowed	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Divorced/Separated	2022-06-23 23:58:00	2022-06-23 23:58:00
\.


                                                                                                                                                                                                                                                                                                 3367.dat                                                                                            0000600 0004000 0002000 00000000463 14256542426 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Php 1-5,000	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Php 5,001-10,000	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Php 10,001-15,000	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Php 15,001-20,000	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Php 20,001-Above	2022-06-24 23:58:00	2022-06-24 23:58:00
\.


                                                                                                                                                                                                             3387.dat                                                                                            0000600 0004000 0002000 00000001276 14256542426 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	160201000	Buenavista	2022-06-21 23:58:00	2022-06-21 23:58:00
2	1	160203000	Cabadbaran City	2022-06-22 23:58:00	2022-06-22 23:58:00
3	1	160204000	Carmen	2022-06-23 23:58:00	2022-06-23 23:58:00
4	1	160205000	Jabonga	2022-06-24 23:58:00	2022-06-24 23:58:00
5	1	160206000	Kitcharao	2022-06-25 23:58:00	2022-06-25 23:58:00
6	1	160207000	Las Nieves	2022-06-26 23:58:00	2022-06-26 23:58:00
7	1	160208000	Magallanes	2022-06-27 23:58:00	2022-06-27 23:58:00
8	1	160209000	Nasipit	2022-06-28 23:58:00	2022-06-28 23:58:00
9	1	160210000	Santiago	2022-06-29 23:58:00	2022-06-29 23:58:00
10	1	160211000	Tubay	2022-06-30 23:58:00	2022-06-30 23:58:00
11	1	160212000	RTR	2022-07-01 23:58:00	2022-07-01 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                  3369.dat                                                                                            0000600 0004000 0002000 00000000247 14256542426 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Overweight	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Normal	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Underweight	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                         3377.dat                                                                                            0000600 0004000 0002000 00000000740 14256542426 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Head	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Spouse	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Son/Daughter	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Son-in-law/Daughter-in-law	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Father/Mother	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Housemaid/Boy	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Stepson/Stepdaughter	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Other, Please specify	2022-06-27 23:58:00	2022-06-27 23:58:00
\.


                                3371.dat                                                                                            0000600 0004000 0002000 00000000005 14256542426 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3381.dat                                                                                            0000600 0004000 0002000 00000001104 14256542426 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. galvanized iron, aluminum, tile, concrete, brick, stone, asbestor)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g.  cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed buty predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                            3379.dat                                                                                            0000600 0004000 0002000 00000001304 14256542426 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Fully-owned	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Owner-like possession	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Tenanted	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Leased/Rented	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Rent Free	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Held under Certificate of Land Transfer (CLT) or Certificate of Land Ownership (CLOA)	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Held under Certificate of Ancestral Domain Title (CADT)	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Held under Community-Based Forest Management Agreement (CBFMA) Sterwardship	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	Other, Please specify	2022-06-28 23:58:00	2022-06-28 23:58:00
\.


                                                                                                                                                                                                                                                                                                                            3373.dat                                                                                            0000600 0004000 0002000 00000001251 14256542426 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Accountancy, Business and Management	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Science, Technology, Engineering	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	humanities and Social Sciences	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	General Academic	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Home economics	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Agri-Forestry	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Industrial Arts	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Information and Communications Technology or ICT	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	Sports	2022-06-28 23:58:00	2022-06-28 23:58:00
10	1	Arts and Design	2022-06-29 23:58:00	2022-06-29 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                       3375.dat                                                                                            0000600 0004000 0002000 00000001651 14256542426 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Sustainable Livelihood Program	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Food for Work	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Cash for Work	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Social Pension for the Indegent Senior Citizens	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Pantawid Pamilyang Pilipinon Program (4ps)	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Other health insurance (Maxicare/Medicare/etc.)	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Health assistance	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Supplemental feeding	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	Education/Scholars hip Program	2022-06-28 23:58:00	2022-06-28 23:58:00
10	1	Skills/Livelihood Training Program	2022-06-29 23:58:00	2022-06-29 23:58:00
11	1	Credit Program	2022-06-30 23:58:00	2022-06-30 23:58:00
12	1	Housing Program	2022-07-01 23:58:00	2022-07-01 23:58:00
13	1	Other, Please specify	2022-07-02 23:58:00	2022-07-02 23:58:00
\.


                                                                                       3328.dat                                                                                            0000600 0004000 0002000 00000003415 14256542426 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
5	2022_06_16_082543_add_role_to_users_table	1
6	2022_06_21_013304_create_libbuildingroofmaterials_table	2
7	2022_06_21_014104_create_libbuildingstatus_table	3
8	2022_06_21_014509_create_libbuildingtypes_table	4
9	2022_06_21_014600_create_libbuildinguses_table	4
10	2022_06_21_014718_create_libbuildingwallmaterials_table	4
11	2022_06_21_014811_create_libdisabilities_table	4
12	2022_06_21_014900_create_libfarmingtechs_table	4
13	2022_06_21_015018_create_libgenders_table	4
15	2022_06_21_015248_create_libhhevacuationareas_table	4
16	2022_06_21_015333_create_libhhlvlwatersystems_table	4
17	2022_06_21_015827_create_libhhroofmaterials_table	4
18	2022_06_21_015923_create_libhhtenuralstatus_table	4
20	2022_06_21_020112_create_libhhwallconmaterials_table	4
21	2022_06_21_020210_create_libhhwatertenuralstatus_table	4
22	2022_06_21_020301_create_liblivelihoods_table	4
23	2022_06_21_020359_create_libmaritalstatus_table	4
24	2022_06_21_020454_create_libmonthlyincomes_table	4
25	2022_06_21_020542_create_libnutritionalstatus_table	4
26	2022_06_21_020623_create_libreligions_table	4
27	2022_06_21_020751_create_libtscshvc_table	4
28	2022_06_21_020837_create_libtypeofprograms_table	4
29	2022_06_21_020933_create_librelationshipheads_table	4
30	2022_06_21_021126_create_libtenuralstatus_table	4
31	2022_06_21_021210_create_libroofconmaterials_table	4
38	2022_06_21_033439_create_libhhlvlwatersystems_table	5
54	2022_06_21_015108_create_libgradelvls_table	6
55	2022_06_21_065513_create_libmunicipalities_table	6
56	2022_06_21_065600_create_libbarangays_table	6
63	2022_06_21_065635_create_households_table	7
\.


                                                                                                                                                                                                                                                   3331.dat                                                                                            0000600 0004000 0002000 00000000005 14256542426 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3335.dat                                                                                            0000600 0004000 0002000 00000000005 14256542426 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3330.dat                                                                                            0000600 0004000 0002000 00000000237 14256542426 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Roel Damalerio	damalerioroel@gmail.com	\N	$2y$10$OHme4sX5GMfqcN43zVBrd.7v0todTk/CVfj0jpLpa8E72o7pWa0Nm	\N	2022-06-20 23:58:25	2022-06-20 23:58:25	Admin
\.


                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000216013 14256542426 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

DROP DATABASE hhprofiler;
--
-- Name: hhprofiler; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE hhprofiler WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';


ALTER DATABASE hhprofiler OWNER TO postgres;

\connect hhprofiler

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
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: households; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.households (
    id bigint NOT NULL,
    controlnumber character varying(255) NOT NULL,
    libmunicipalitie_psgccode character varying(255) NOT NULL,
    libbarangay_psgccode character varying(255) NOT NULL,
    purok character varying(255),
    latitude character varying(255) NOT NULL,
    longitude character varying(255) NOT NULL,
    respondent character varying(255) NOT NULL,
    dateinterview text NOT NULL,
    nameenumerator character varying(255) NOT NULL,
    nameeditor character varying(255) NOT NULL,
    dateedited text NOT NULL,
    libbuildingtype_id bigint NOT NULL,
    libtenuralstatu_id bigint NOT NULL,
    year_construct integer NOT NULL,
    estimated_cost integer NOT NULL,
    bedrooms integer NOT NULL,
    storey integer NOT NULL,
    access_electricity boolean NOT NULL,
    access_internet boolean NOT NULL,
    libbuildingroofmaterial_id bigint NOT NULL,
    medical_treatment character varying(255),
    access_watersupply boolean NOT NULL,
    potable boolean NOT NULL,
    libhhwatertenuralstatu_id bigint NOT NULL,
    libhhlvlwatersystem_id bigint NOT NULL,
    floods_occur boolean NOT NULL,
    year_flood integer,
    experience_evacuationduringcalamity boolean NOT NULL,
    year_evacuated integer,
    libhhevacuationarea_id bigint NOT NULL,
    has_accesstohealthmedicalfacilities boolean NOT NULL,
    has_accesstotelecommunications boolean NOT NULL,
    has_accesstodrillsandsimulations boolean NOT NULL,
    image character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.households OWNER TO postgres;

--
-- Name: households_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.households_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.households_id_seq OWNER TO postgres;

--
-- Name: households_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.households_id_seq OWNED BY public.households.id;


--
-- Name: libbarangays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libbarangays (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    psgccode character varying(255) NOT NULL,
    lib_brgyname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libbarangays OWNER TO postgres;

--
-- Name: libbarangays_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libbarangays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libbarangays_id_seq OWNER TO postgres;

--
-- Name: libbarangays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libbarangays_id_seq OWNED BY public.libbarangays.id;


--
-- Name: libbuildingroofmaterials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libbuildingroofmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libbuildingroofmaterials OWNER TO postgres;

--
-- Name: libbuildingroofmaterials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libbuildingroofmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libbuildingroofmaterials_id_seq OWNER TO postgres;

--
-- Name: libbuildingroofmaterials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libbuildingroofmaterials_id_seq OWNED BY public.libbuildingroofmaterials.id;


--
-- Name: libbuildingstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libbuildingstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_statusname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libbuildingstatus OWNER TO postgres;

--
-- Name: libbuildingstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libbuildingstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libbuildingstatus_id_seq OWNER TO postgres;

--
-- Name: libbuildingstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libbuildingstatus_id_seq OWNED BY public.libbuildingstatus.id;


--
-- Name: libbuildingtypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libbuildingtypes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tobname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libbuildingtypes OWNER TO postgres;

--
-- Name: libbuildingtypes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libbuildingtypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libbuildingtypes_id_seq OWNER TO postgres;

--
-- Name: libbuildingtypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libbuildingtypes_id_seq OWNED BY public.libbuildingtypes.id;


--
-- Name: libbuildinguses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libbuildinguses (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_buildingusedesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libbuildinguses OWNER TO postgres;

--
-- Name: libbuildinguses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libbuildinguses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libbuildinguses_id_seq OWNER TO postgres;

--
-- Name: libbuildinguses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libbuildinguses_id_seq OWNED BY public.libbuildinguses.id;


--
-- Name: libbuildingwallmaterials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libbuildingwallmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libbuildingwallmaterials OWNER TO postgres;

--
-- Name: libbuildingwallmaterials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libbuildingwallmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libbuildingwallmaterials_id_seq OWNER TO postgres;

--
-- Name: libbuildingwallmaterials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libbuildingwallmaterials_id_seq OWNED BY public.libbuildingwallmaterials.id;


--
-- Name: libdisabilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libdisabilities (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_dname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libdisabilities OWNER TO postgres;

--
-- Name: libdisabilities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libdisabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libdisabilities_id_seq OWNER TO postgres;

--
-- Name: libdisabilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libdisabilities_id_seq OWNED BY public.libdisabilities.id;


--
-- Name: libfarmingtechs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libfarmingtechs (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_techname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libfarmingtechs OWNER TO postgres;

--
-- Name: libfarmingtechs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libfarmingtechs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libfarmingtechs_id_seq OWNER TO postgres;

--
-- Name: libfarmingtechs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libfarmingtechs_id_seq OWNED BY public.libfarmingtechs.id;


--
-- Name: libgenders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libgenders (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_gname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libgenders OWNER TO postgres;

--
-- Name: libgenders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libgenders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libgenders_id_seq OWNER TO postgres;

--
-- Name: libgenders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libgenders_id_seq OWNED BY public.libgenders.id;


--
-- Name: libgradelvls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libgradelvls (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_glcode integer NOT NULL,
    lib_glname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libgradelvls OWNER TO postgres;

--
-- Name: libgradelvls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libgradelvls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libgradelvls_id_seq OWNER TO postgres;

--
-- Name: libgradelvls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libgradelvls_id_seq OWNED BY public.libgradelvls.id;


--
-- Name: libhhevacuationareas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libhhevacuationareas (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_heaname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libhhevacuationareas OWNER TO postgres;

--
-- Name: libhhevacuationareas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libhhevacuationareas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libhhevacuationareas_id_seq OWNER TO postgres;

--
-- Name: libhhevacuationareas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libhhevacuationareas_id_seq OWNED BY public.libhhevacuationareas.id;


--
-- Name: libhhlvlwatersystems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libhhlvlwatersystems (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_hhwatersystemlvl character varying(255) NOT NULL,
    lib_hhlvldesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libhhlvlwatersystems OWNER TO postgres;

--
-- Name: libhhlvlwatersystems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libhhlvlwatersystems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libhhlvlwatersystems_id_seq OWNER TO postgres;

--
-- Name: libhhlvlwatersystems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libhhlvlwatersystems_id_seq OWNED BY public.libhhlvlwatersystems.id;


--
-- Name: libhhroofmaterials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libhhroofmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_roofmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libhhroofmaterials OWNER TO postgres;

--
-- Name: libhhroofmaterials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libhhroofmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libhhroofmaterials_id_seq OWNER TO postgres;

--
-- Name: libhhroofmaterials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libhhroofmaterials_id_seq OWNED BY public.libhhroofmaterials.id;


--
-- Name: libhhtenuralstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libhhtenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_ternuralstatusdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libhhtenuralstatus OWNER TO postgres;

--
-- Name: libhhtenuralstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libhhtenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libhhtenuralstatus_id_seq OWNER TO postgres;

--
-- Name: libhhtenuralstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libhhtenuralstatus_id_seq OWNED BY public.libhhtenuralstatus.id;


--
-- Name: libhhwallconmaterials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libhhwallconmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libhhwallconmaterials OWNER TO postgres;

--
-- Name: libhhwallconmaterials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libhhwallconmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libhhwallconmaterials_id_seq OWNER TO postgres;

--
-- Name: libhhwallconmaterials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libhhwallconmaterials_id_seq OWNED BY public.libhhwallconmaterials.id;


--
-- Name: libhhwatertenuralstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libhhwatertenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wtdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libhhwatertenuralstatus OWNER TO postgres;

--
-- Name: libhhwatertenuralstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libhhwatertenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libhhwatertenuralstatus_id_seq OWNER TO postgres;

--
-- Name: libhhwatertenuralstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libhhwatertenuralstatus_id_seq OWNED BY public.libhhwatertenuralstatus.id;


--
-- Name: liblivelihoods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.liblivelihoods (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_livelihooddesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.liblivelihoods OWNER TO postgres;

--
-- Name: liblivelihoods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.liblivelihoods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.liblivelihoods_id_seq OWNER TO postgres;

--
-- Name: liblivelihoods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.liblivelihoods_id_seq OWNED BY public.liblivelihoods.id;


--
-- Name: libmaritalstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libmaritalstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_msname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libmaritalstatus OWNER TO postgres;

--
-- Name: libmaritalstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libmaritalstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libmaritalstatus_id_seq OWNER TO postgres;

--
-- Name: libmaritalstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libmaritalstatus_id_seq OWNED BY public.libmaritalstatus.id;


--
-- Name: libmonthlyincomes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libmonthlyincomes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_miname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libmonthlyincomes OWNER TO postgres;

--
-- Name: libmonthlyincomes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libmonthlyincomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libmonthlyincomes_id_seq OWNER TO postgres;

--
-- Name: libmonthlyincomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libmonthlyincomes_id_seq OWNED BY public.libmonthlyincomes.id;


--
-- Name: libmunicipalities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libmunicipalities (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    psgccode character varying(255) NOT NULL,
    lib_munname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libmunicipalities OWNER TO postgres;

--
-- Name: libmunicipalities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libmunicipalities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libmunicipalities_id_seq OWNER TO postgres;

--
-- Name: libmunicipalities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libmunicipalities_id_seq OWNED BY public.libmunicipalities.id;


--
-- Name: libnutritionalstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libnutritionalstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_nsname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libnutritionalstatus OWNER TO postgres;

--
-- Name: libnutritionalstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libnutritionalstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libnutritionalstatus_id_seq OWNER TO postgres;

--
-- Name: libnutritionalstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libnutritionalstatus_id_seq OWNED BY public.libnutritionalstatus.id;


--
-- Name: librelationshipheads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.librelationshipheads (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_rhname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.librelationshipheads OWNER TO postgres;

--
-- Name: librelationshipheads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.librelationshipheads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.librelationshipheads_id_seq OWNER TO postgres;

--
-- Name: librelationshipheads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.librelationshipheads_id_seq OWNED BY public.librelationshipheads.id;


--
-- Name: libreligions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libreligions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_rname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libreligions OWNER TO postgres;

--
-- Name: libreligions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libreligions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libreligions_id_seq OWNER TO postgres;

--
-- Name: libreligions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libreligions_id_seq OWNED BY public.libreligions.id;


--
-- Name: libroofconmaterials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libroofconmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tocmname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libroofconmaterials OWNER TO postgres;

--
-- Name: libroofconmaterials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libroofconmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libroofconmaterials_id_seq OWNER TO postgres;

--
-- Name: libroofconmaterials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libroofconmaterials_id_seq OWNED BY public.libroofconmaterials.id;


--
-- Name: libtenuralstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libtenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tsname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libtenuralstatus OWNER TO postgres;

--
-- Name: libtenuralstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libtenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libtenuralstatus_id_seq OWNER TO postgres;

--
-- Name: libtenuralstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libtenuralstatus_id_seq OWNED BY public.libtenuralstatus.id;


--
-- Name: libtscshvc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libtscshvc (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tscshvcname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libtscshvc OWNER TO postgres;

--
-- Name: libtscshvc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libtscshvc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libtscshvc_id_seq OWNER TO postgres;

--
-- Name: libtscshvc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libtscshvc_id_seq OWNED BY public.libtscshvc.id;


--
-- Name: libtypeofprograms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libtypeofprograms (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_topname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libtypeofprograms OWNER TO postgres;

--
-- Name: libtypeofprograms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libtypeofprograms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libtypeofprograms_id_seq OWNER TO postgres;

--
-- Name: libtypeofprograms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libtypeofprograms_id_seq OWNED BY public.libtypeofprograms.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role character varying(255) DEFAULT 'User'::character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: households id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households ALTER COLUMN id SET DEFAULT nextval('public.households_id_seq'::regclass);


--
-- Name: libbarangays id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbarangays ALTER COLUMN id SET DEFAULT nextval('public.libbarangays_id_seq'::regclass);


--
-- Name: libbuildingroofmaterials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingroofmaterials ALTER COLUMN id SET DEFAULT nextval('public.libbuildingroofmaterials_id_seq'::regclass);


--
-- Name: libbuildingstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingstatus ALTER COLUMN id SET DEFAULT nextval('public.libbuildingstatus_id_seq'::regclass);


--
-- Name: libbuildingtypes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingtypes ALTER COLUMN id SET DEFAULT nextval('public.libbuildingtypes_id_seq'::regclass);


--
-- Name: libbuildinguses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildinguses ALTER COLUMN id SET DEFAULT nextval('public.libbuildinguses_id_seq'::regclass);


--
-- Name: libbuildingwallmaterials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingwallmaterials ALTER COLUMN id SET DEFAULT nextval('public.libbuildingwallmaterials_id_seq'::regclass);


--
-- Name: libdisabilities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libdisabilities ALTER COLUMN id SET DEFAULT nextval('public.libdisabilities_id_seq'::regclass);


--
-- Name: libfarmingtechs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libfarmingtechs ALTER COLUMN id SET DEFAULT nextval('public.libfarmingtechs_id_seq'::regclass);


--
-- Name: libgenders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libgenders ALTER COLUMN id SET DEFAULT nextval('public.libgenders_id_seq'::regclass);


--
-- Name: libgradelvls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libgradelvls ALTER COLUMN id SET DEFAULT nextval('public.libgradelvls_id_seq'::regclass);


--
-- Name: libhhevacuationareas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhevacuationareas ALTER COLUMN id SET DEFAULT nextval('public.libhhevacuationareas_id_seq'::regclass);


--
-- Name: libhhlvlwatersystems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhlvlwatersystems ALTER COLUMN id SET DEFAULT nextval('public.libhhlvlwatersystems_id_seq'::regclass);


--
-- Name: libhhroofmaterials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhroofmaterials ALTER COLUMN id SET DEFAULT nextval('public.libhhroofmaterials_id_seq'::regclass);


--
-- Name: libhhtenuralstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhtenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libhhtenuralstatus_id_seq'::regclass);


--
-- Name: libhhwallconmaterials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhwallconmaterials ALTER COLUMN id SET DEFAULT nextval('public.libhhwallconmaterials_id_seq'::regclass);


--
-- Name: libhhwatertenuralstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhwatertenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libhhwatertenuralstatus_id_seq'::regclass);


--
-- Name: liblivelihoods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liblivelihoods ALTER COLUMN id SET DEFAULT nextval('public.liblivelihoods_id_seq'::regclass);


--
-- Name: libmaritalstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmaritalstatus ALTER COLUMN id SET DEFAULT nextval('public.libmaritalstatus_id_seq'::regclass);


--
-- Name: libmonthlyincomes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmonthlyincomes ALTER COLUMN id SET DEFAULT nextval('public.libmonthlyincomes_id_seq'::regclass);


--
-- Name: libmunicipalities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmunicipalities ALTER COLUMN id SET DEFAULT nextval('public.libmunicipalities_id_seq'::regclass);


--
-- Name: libnutritionalstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libnutritionalstatus ALTER COLUMN id SET DEFAULT nextval('public.libnutritionalstatus_id_seq'::regclass);


--
-- Name: librelationshipheads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.librelationshipheads ALTER COLUMN id SET DEFAULT nextval('public.librelationshipheads_id_seq'::regclass);


--
-- Name: libreligions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libreligions ALTER COLUMN id SET DEFAULT nextval('public.libreligions_id_seq'::regclass);


--
-- Name: libroofconmaterials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libroofconmaterials ALTER COLUMN id SET DEFAULT nextval('public.libroofconmaterials_id_seq'::regclass);


--
-- Name: libtenuralstatus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libtenuralstatus_id_seq'::regclass);


--
-- Name: libtscshvc id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtscshvc ALTER COLUMN id SET DEFAULT nextval('public.libtscshvc_id_seq'::regclass);


--
-- Name: libtypeofprograms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtypeofprograms ALTER COLUMN id SET DEFAULT nextval('public.libtypeofprograms_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.
COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM '$$PATH$$/3333.dat';

--
-- Data for Name: households; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.households (id, controlnumber, libmunicipalitie_psgccode, libbarangay_psgccode, purok, latitude, longitude, respondent, dateinterview, nameenumerator, nameeditor, dateedited, libbuildingtype_id, libtenuralstatu_id, year_construct, estimated_cost, bedrooms, storey, access_electricity, access_internet, libbuildingroofmaterial_id, medical_treatment, access_watersupply, potable, libhhwatertenuralstatu_id, libhhlvlwatersystem_id, floods_occur, year_flood, experience_evacuationduringcalamity, year_evacuated, libhhevacuationarea_id, has_accesstohealthmedicalfacilities, has_accesstotelecommunications, has_accesstodrillsandsimulations, image, created_at, updated_at) FROM stdin;
\.
COPY public.households (id, controlnumber, libmunicipalitie_psgccode, libbarangay_psgccode, purok, latitude, longitude, respondent, dateinterview, nameenumerator, nameeditor, dateedited, libbuildingtype_id, libtenuralstatu_id, year_construct, estimated_cost, bedrooms, storey, access_electricity, access_internet, libbuildingroofmaterial_id, medical_treatment, access_watersupply, potable, libhhwatertenuralstatu_id, libhhlvlwatersystem_id, floods_occur, year_flood, experience_evacuationduringcalamity, year_evacuated, libhhevacuationarea_id, has_accesstohealthmedicalfacilities, has_accesstotelecommunications, has_accesstodrillsandsimulations, image, created_at, updated_at) FROM '$$PATH$$/3391.dat';

--
-- Data for Name: libbarangays; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbarangays (id, user_id, psgccode, lib_brgyname, created_at, updated_at) FROM stdin;
\.
COPY public.libbarangays (id, user_id, psgccode, lib_brgyname, created_at, updated_at) FROM '$$PATH$$/3389.dat';

--
-- Data for Name: libbuildingroofmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingroofmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingroofmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3337.dat';

--
-- Data for Name: libbuildingstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingstatus (id, user_id, lib_statusname, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingstatus (id, user_id, lib_statusname, created_at, updated_at) FROM '$$PATH$$/3339.dat';

--
-- Data for Name: libbuildingtypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingtypes (id, user_id, lib_tobname, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingtypes (id, user_id, lib_tobname, created_at, updated_at) FROM '$$PATH$$/3341.dat';

--
-- Data for Name: libbuildinguses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildinguses (id, user_id, lib_buildingusedesc, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildinguses (id, user_id, lib_buildingusedesc, created_at, updated_at) FROM '$$PATH$$/3343.dat';

--
-- Data for Name: libbuildingwallmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingwallmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingwallmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3345.dat';

--
-- Data for Name: libdisabilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libdisabilities (id, user_id, lib_dname, created_at, updated_at) FROM stdin;
\.
COPY public.libdisabilities (id, user_id, lib_dname, created_at, updated_at) FROM '$$PATH$$/3347.dat';

--
-- Data for Name: libfarmingtechs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libfarmingtechs (id, user_id, lib_techname, created_at, updated_at) FROM stdin;
\.
COPY public.libfarmingtechs (id, user_id, lib_techname, created_at, updated_at) FROM '$$PATH$$/3349.dat';

--
-- Data for Name: libgenders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libgenders (id, user_id, lib_gname, created_at, updated_at) FROM stdin;
\.
COPY public.libgenders (id, user_id, lib_gname, created_at, updated_at) FROM '$$PATH$$/3351.dat';

--
-- Data for Name: libgradelvls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libgradelvls (id, user_id, lib_glcode, lib_glname, created_at, updated_at) FROM stdin;
\.
COPY public.libgradelvls (id, user_id, lib_glcode, lib_glname, created_at, updated_at) FROM '$$PATH$$/3385.dat';

--
-- Data for Name: libhhevacuationareas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhevacuationareas (id, user_id, lib_heaname, created_at, updated_at) FROM stdin;
\.
COPY public.libhhevacuationareas (id, user_id, lib_heaname, created_at, updated_at) FROM '$$PATH$$/3353.dat';

--
-- Data for Name: libhhlvlwatersystems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhlvlwatersystems (id, user_id, lib_hhwatersystemlvl, lib_hhlvldesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhlvlwatersystems (id, user_id, lib_hhwatersystemlvl, lib_hhlvldesc, created_at, updated_at) FROM '$$PATH$$/3383.dat';

--
-- Data for Name: libhhroofmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhroofmaterials (id, user_id, lib_roofmaterialsdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhroofmaterials (id, user_id, lib_roofmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3355.dat';

--
-- Data for Name: libhhtenuralstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhtenuralstatus (id, user_id, lib_ternuralstatusdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhtenuralstatus (id, user_id, lib_ternuralstatusdesc, created_at, updated_at) FROM '$$PATH$$/3357.dat';

--
-- Data for Name: libhhwallconmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhwallconmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhwallconmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3359.dat';

--
-- Data for Name: libhhwatertenuralstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhwatertenuralstatus (id, user_id, lib_wtdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhwatertenuralstatus (id, user_id, lib_wtdesc, created_at, updated_at) FROM '$$PATH$$/3361.dat';

--
-- Data for Name: liblivelihoods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liblivelihoods (id, user_id, lib_livelihooddesc, created_at, updated_at) FROM stdin;
\.
COPY public.liblivelihoods (id, user_id, lib_livelihooddesc, created_at, updated_at) FROM '$$PATH$$/3363.dat';

--
-- Data for Name: libmaritalstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libmaritalstatus (id, user_id, lib_msname, created_at, updated_at) FROM stdin;
\.
COPY public.libmaritalstatus (id, user_id, lib_msname, created_at, updated_at) FROM '$$PATH$$/3365.dat';

--
-- Data for Name: libmonthlyincomes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libmonthlyincomes (id, user_id, lib_miname, created_at, updated_at) FROM stdin;
\.
COPY public.libmonthlyincomes (id, user_id, lib_miname, created_at, updated_at) FROM '$$PATH$$/3367.dat';

--
-- Data for Name: libmunicipalities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libmunicipalities (id, user_id, psgccode, lib_munname, created_at, updated_at) FROM stdin;
\.
COPY public.libmunicipalities (id, user_id, psgccode, lib_munname, created_at, updated_at) FROM '$$PATH$$/3387.dat';

--
-- Data for Name: libnutritionalstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libnutritionalstatus (id, user_id, lib_nsname, created_at, updated_at) FROM stdin;
\.
COPY public.libnutritionalstatus (id, user_id, lib_nsname, created_at, updated_at) FROM '$$PATH$$/3369.dat';

--
-- Data for Name: librelationshipheads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.librelationshipheads (id, user_id, lib_rhname, created_at, updated_at) FROM stdin;
\.
COPY public.librelationshipheads (id, user_id, lib_rhname, created_at, updated_at) FROM '$$PATH$$/3377.dat';

--
-- Data for Name: libreligions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libreligions (id, user_id, lib_rname, created_at, updated_at) FROM stdin;
\.
COPY public.libreligions (id, user_id, lib_rname, created_at, updated_at) FROM '$$PATH$$/3371.dat';

--
-- Data for Name: libroofconmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libroofconmaterials (id, user_id, lib_tocmname, created_at, updated_at) FROM stdin;
\.
COPY public.libroofconmaterials (id, user_id, lib_tocmname, created_at, updated_at) FROM '$$PATH$$/3381.dat';

--
-- Data for Name: libtenuralstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libtenuralstatus (id, user_id, lib_tsname, created_at, updated_at) FROM stdin;
\.
COPY public.libtenuralstatus (id, user_id, lib_tsname, created_at, updated_at) FROM '$$PATH$$/3379.dat';

--
-- Data for Name: libtscshvc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libtscshvc (id, user_id, lib_tscshvcname, created_at, updated_at) FROM stdin;
\.
COPY public.libtscshvc (id, user_id, lib_tscshvcname, created_at, updated_at) FROM '$$PATH$$/3373.dat';

--
-- Data for Name: libtypeofprograms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libtypeofprograms (id, user_id, lib_topname, created_at, updated_at) FROM stdin;
\.
COPY public.libtypeofprograms (id, user_id, lib_topname, created_at, updated_at) FROM '$$PATH$$/3375.dat';

--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.
COPY public.migrations (id, migration, batch) FROM '$$PATH$$/3328.dat';

--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.
COPY public.password_resets (email, token, created_at) FROM '$$PATH$$/3331.dat';

--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.
COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM '$$PATH$$/3335.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM stdin;
\.
COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM '$$PATH$$/3330.dat';

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: households_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.households_id_seq', 1, false);


--
-- Name: libbarangays_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libbarangays_id_seq', 1, false);


--
-- Name: libbuildingroofmaterials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libbuildingroofmaterials_id_seq', 1, false);


--
-- Name: libbuildingstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libbuildingstatus_id_seq', 1, false);


--
-- Name: libbuildingtypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libbuildingtypes_id_seq', 1, false);


--
-- Name: libbuildinguses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libbuildinguses_id_seq', 1, false);


--
-- Name: libbuildingwallmaterials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libbuildingwallmaterials_id_seq', 1, false);


--
-- Name: libdisabilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libdisabilities_id_seq', 1, false);


--
-- Name: libfarmingtechs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libfarmingtechs_id_seq', 1, false);


--
-- Name: libgenders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libgenders_id_seq', 1, false);


--
-- Name: libgradelvls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libgradelvls_id_seq', 1, false);


--
-- Name: libhhevacuationareas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libhhevacuationareas_id_seq', 1, false);


--
-- Name: libhhlvlwatersystems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libhhlvlwatersystems_id_seq', 1, false);


--
-- Name: libhhroofmaterials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libhhroofmaterials_id_seq', 1, false);


--
-- Name: libhhtenuralstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libhhtenuralstatus_id_seq', 1, false);


--
-- Name: libhhwallconmaterials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libhhwallconmaterials_id_seq', 1, false);


--
-- Name: libhhwatertenuralstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libhhwatertenuralstatus_id_seq', 1, false);


--
-- Name: liblivelihoods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.liblivelihoods_id_seq', 1, false);


--
-- Name: libmaritalstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libmaritalstatus_id_seq', 1, false);


--
-- Name: libmonthlyincomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libmonthlyincomes_id_seq', 1, false);


--
-- Name: libmunicipalities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libmunicipalities_id_seq', 1, false);


--
-- Name: libnutritionalstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libnutritionalstatus_id_seq', 1, false);


--
-- Name: librelationshipheads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.librelationshipheads_id_seq', 1, false);


--
-- Name: libreligions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libreligions_id_seq', 1, false);


--
-- Name: libroofconmaterials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libroofconmaterials_id_seq', 1, false);


--
-- Name: libtenuralstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libtenuralstatus_id_seq', 1, false);


--
-- Name: libtscshvc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libtscshvc_id_seq', 1, false);


--
-- Name: libtypeofprograms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libtypeofprograms_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 63, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: households households_controlnumber_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_controlnumber_unique UNIQUE (controlnumber);


--
-- Name: households households_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_pkey PRIMARY KEY (id);


--
-- Name: libbarangays libbarangays_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_pkey PRIMARY KEY (id);


--
-- Name: libbarangays libbarangays_psgccode_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_psgccode_unique UNIQUE (psgccode);


--
-- Name: libbuildingroofmaterials libbuildingroofmaterials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingroofmaterials
    ADD CONSTRAINT libbuildingroofmaterials_pkey PRIMARY KEY (id);


--
-- Name: libbuildingstatus libbuildingstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingstatus
    ADD CONSTRAINT libbuildingstatus_pkey PRIMARY KEY (id);


--
-- Name: libbuildingtypes libbuildingtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingtypes
    ADD CONSTRAINT libbuildingtypes_pkey PRIMARY KEY (id);


--
-- Name: libbuildinguses libbuildinguses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildinguses
    ADD CONSTRAINT libbuildinguses_pkey PRIMARY KEY (id);


--
-- Name: libbuildingwallmaterials libbuildingwallmaterials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingwallmaterials
    ADD CONSTRAINT libbuildingwallmaterials_pkey PRIMARY KEY (id);


--
-- Name: libdisabilities libdisabilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libdisabilities
    ADD CONSTRAINT libdisabilities_pkey PRIMARY KEY (id);


--
-- Name: libfarmingtechs libfarmingtechs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libfarmingtechs
    ADD CONSTRAINT libfarmingtechs_pkey PRIMARY KEY (id);


--
-- Name: libgenders libgenders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libgenders
    ADD CONSTRAINT libgenders_pkey PRIMARY KEY (id);


--
-- Name: libgradelvls libgradelvls_lib_glcode_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_lib_glcode_unique UNIQUE (lib_glcode);


--
-- Name: libgradelvls libgradelvls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_pkey PRIMARY KEY (id);


--
-- Name: libhhevacuationareas libhhevacuationareas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhevacuationareas
    ADD CONSTRAINT libhhevacuationareas_pkey PRIMARY KEY (id);


--
-- Name: libhhlvlwatersystems libhhlvlwatersystems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhlvlwatersystems
    ADD CONSTRAINT libhhlvlwatersystems_pkey PRIMARY KEY (id);


--
-- Name: libhhroofmaterials libhhroofmaterials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhroofmaterials
    ADD CONSTRAINT libhhroofmaterials_pkey PRIMARY KEY (id);


--
-- Name: libhhtenuralstatus libhhtenuralstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhtenuralstatus
    ADD CONSTRAINT libhhtenuralstatus_pkey PRIMARY KEY (id);


--
-- Name: libhhwallconmaterials libhhwallconmaterials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhwallconmaterials
    ADD CONSTRAINT libhhwallconmaterials_pkey PRIMARY KEY (id);


--
-- Name: libhhwatertenuralstatus libhhwatertenuralstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhwatertenuralstatus
    ADD CONSTRAINT libhhwatertenuralstatus_pkey PRIMARY KEY (id);


--
-- Name: liblivelihoods liblivelihoods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liblivelihoods
    ADD CONSTRAINT liblivelihoods_pkey PRIMARY KEY (id);


--
-- Name: libmaritalstatus libmaritalstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmaritalstatus
    ADD CONSTRAINT libmaritalstatus_pkey PRIMARY KEY (id);


--
-- Name: libmonthlyincomes libmonthlyincomes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmonthlyincomes
    ADD CONSTRAINT libmonthlyincomes_pkey PRIMARY KEY (id);


--
-- Name: libmunicipalities libmunicipalities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_pkey PRIMARY KEY (id);


--
-- Name: libmunicipalities libmunicipalities_psgccode_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_psgccode_unique UNIQUE (psgccode);


--
-- Name: libnutritionalstatus libnutritionalstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libnutritionalstatus
    ADD CONSTRAINT libnutritionalstatus_pkey PRIMARY KEY (id);


--
-- Name: librelationshipheads librelationshipheads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.librelationshipheads
    ADD CONSTRAINT librelationshipheads_pkey PRIMARY KEY (id);


--
-- Name: libreligions libreligions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libreligions
    ADD CONSTRAINT libreligions_pkey PRIMARY KEY (id);


--
-- Name: libroofconmaterials libroofconmaterials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libroofconmaterials
    ADD CONSTRAINT libroofconmaterials_pkey PRIMARY KEY (id);


--
-- Name: libtenuralstatus libtenuralstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtenuralstatus
    ADD CONSTRAINT libtenuralstatus_pkey PRIMARY KEY (id);


--
-- Name: libtscshvc libtscshvc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtscshvc
    ADD CONSTRAINT libtscshvc_pkey PRIMARY KEY (id);


--
-- Name: libtypeofprograms libtypeofprograms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtypeofprograms
    ADD CONSTRAINT libtypeofprograms_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: households households_libbarangay_psgccode_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbarangay_psgccode_foreign FOREIGN KEY (libbarangay_psgccode) REFERENCES public.libbarangays(psgccode) ON DELETE CASCADE;


--
-- Name: households households_libbuildingroofmaterial_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbuildingroofmaterial_id_foreign FOREIGN KEY (libbuildingroofmaterial_id) REFERENCES public.libbuildingroofmaterials(id) ON DELETE CASCADE;


--
-- Name: households households_libbuildingtype_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbuildingtype_id_foreign FOREIGN KEY (libbuildingtype_id) REFERENCES public.libbuildingtypes(id) ON DELETE CASCADE;


--
-- Name: households households_libhhevacuationarea_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhevacuationarea_id_foreign FOREIGN KEY (libhhevacuationarea_id) REFERENCES public.libhhevacuationareas(id) ON DELETE CASCADE;


--
-- Name: households households_libhhlvlwatersystem_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhlvlwatersystem_id_foreign FOREIGN KEY (libhhlvlwatersystem_id) REFERENCES public.libhhlvlwatersystems(id) ON DELETE CASCADE;


--
-- Name: households households_libhhtenuralstatus_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhtenuralstatus_id_foreign FOREIGN KEY (libtenuralstatu_id) REFERENCES public.libhhtenuralstatus(id) NOT VALID;


--
-- Name: households households_libhhwatertenuralstatu_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhwatertenuralstatu_id_foreign FOREIGN KEY (libhhwatertenuralstatu_id) REFERENCES public.libhhwatertenuralstatus(id) ON DELETE CASCADE;


--
-- Name: households households_libmunicipalitie_psgccode_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libmunicipalitie_psgccode_foreign FOREIGN KEY (libmunicipalitie_psgccode) REFERENCES public.libmunicipalities(psgccode) ON DELETE CASCADE;


--
-- Name: libbarangays libbarangays_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libbuildingroofmaterials libbuildingroofmaterials_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingroofmaterials
    ADD CONSTRAINT libbuildingroofmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libbuildingstatus libbuildingstatus_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingstatus
    ADD CONSTRAINT libbuildingstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libbuildingtypes libbuildingtypes_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingtypes
    ADD CONSTRAINT libbuildingtypes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libbuildinguses libbuildinguses_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildinguses
    ADD CONSTRAINT libbuildinguses_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libbuildingwallmaterials libbuildingwallmaterials_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libbuildingwallmaterials
    ADD CONSTRAINT libbuildingwallmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libdisabilities libdisabilities_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libdisabilities
    ADD CONSTRAINT libdisabilities_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libfarmingtechs libfarmingtechs_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libfarmingtechs
    ADD CONSTRAINT libfarmingtechs_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libgenders libgenders_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libgenders
    ADD CONSTRAINT libgenders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libgradelvls libgradelvls_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libhhevacuationareas libhhevacuationareas_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhevacuationareas
    ADD CONSTRAINT libhhevacuationareas_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libhhlvlwatersystems libhhlvlwatersystems_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhlvlwatersystems
    ADD CONSTRAINT libhhlvlwatersystems_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libhhroofmaterials libhhroofmaterials_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhroofmaterials
    ADD CONSTRAINT libhhroofmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libhhtenuralstatus libhhtenuralstatus_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhtenuralstatus
    ADD CONSTRAINT libhhtenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libhhwallconmaterials libhhwallconmaterials_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhwallconmaterials
    ADD CONSTRAINT libhhwallconmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libhhwatertenuralstatus libhhwatertenuralstatus_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhwatertenuralstatus
    ADD CONSTRAINT libhhwatertenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: liblivelihoods liblivelihoods_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.liblivelihoods
    ADD CONSTRAINT liblivelihoods_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libmaritalstatus libmaritalstatus_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmaritalstatus
    ADD CONSTRAINT libmaritalstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libmonthlyincomes libmonthlyincomes_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmonthlyincomes
    ADD CONSTRAINT libmonthlyincomes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libmunicipalities libmunicipalities_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libnutritionalstatus libnutritionalstatus_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libnutritionalstatus
    ADD CONSTRAINT libnutritionalstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: librelationshipheads librelationshipheads_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.librelationshipheads
    ADD CONSTRAINT librelationshipheads_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libreligions libreligions_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libreligions
    ADD CONSTRAINT libreligions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libroofconmaterials libroofconmaterials_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libroofconmaterials
    ADD CONSTRAINT libroofconmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libtenuralstatus libtenuralstatus_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtenuralstatus
    ADD CONSTRAINT libtenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libtscshvc libtscshvc_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtscshvc
    ADD CONSTRAINT libtscshvc_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libtypeofprograms libtypeofprograms_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtypeofprograms
    ADD CONSTRAINT libtypeofprograms_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     