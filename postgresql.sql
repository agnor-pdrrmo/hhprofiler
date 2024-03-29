toc.dat                                                                                             0000600 0004000 0002000 00000312036 14257013301 0014440 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           	                z         
   hhprofiler    13.2    13.2 +   d           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         e           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         f           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         g           1262    26019 
   hhprofiler    DATABASE     l   CREATE DATABASE hhprofiler WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE hhprofiler;
                postgres    false                    1259    26758    demographies    TABLE     z  CREATE TABLE public.demographies (
    id bigint NOT NULL,
    household_controlnumber character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    firstname character varying(255) NOT NULL,
    middlename character varying(255),
    extension text,
    nuclear_family text,
    librelationshiphead_id bigint NOT NULL,
    libgender_id bigint NOT NULL,
    birthdate date NOT NULL,
    libmaritalstatu_id bigint NOT NULL,
    ethnicity_by_blood character varying(255),
    member_ip boolean NOT NULL,
    informal_settler boolean NOT NULL,
    religion character varying(255),
    person_with_special_needs boolean NOT NULL,
    libdisability_id bigint,
    is_ofw boolean NOT NULL,
    residence_3_years boolean NOT NULL,
    libnutritionalstatu_id bigint NOT NULL,
    nutrional_status_recorded date,
    current_attending_school boolean NOT NULL,
    current_attending_libgradelvl_glcode integer,
    highest_education_attainment_libgradelvl_glcode integer,
    libtscshvc_id bigint,
    can_read_write_or_atleast_hs_graduate boolean NOT NULL,
    primary_occupation character varying(255),
    libmonthlyincome_id bigint,
    sss_member boolean NOT NULL,
    gsis_member boolean NOT NULL,
    philhealth_member boolean NOT NULL,
    dependent_of_philheath_member boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.demographies;
       public         heap    postgres    false                    1259    26756    demographies_id_seq    SEQUENCE     |   CREATE SEQUENCE public.demographies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.demographies_id_seq;
       public          postgres    false    268         h           0    0    demographies_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.demographies_id_seq OWNED BY public.demographies.id;
          public          postgres    false    267         �            1259    26020    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false         �            1259    26027    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    200         i           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    201         �            1259    26029 
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
    libhhtypeofbuilding_id bigint NOT NULL,
    libhhtenuralstatu_id bigint NOT NULL,
    year_construct integer NOT NULL,
    estimated_cost integer NOT NULL,
    bedrooms integer NOT NULL,
    storey integer NOT NULL,
    access_electricity boolean NOT NULL,
    access_internet boolean NOT NULL,
    libhhroofmaterial_id bigint NOT NULL,
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
       public         heap    postgres    false         �            1259    26035    households_id_seq    SEQUENCE     z   CREATE SEQUENCE public.households_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.households_id_seq;
       public          postgres    false    202         j           0    0    households_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.households_id_seq OWNED BY public.households.id;
          public          postgres    false    203         �            1259    26037    libbarangays    TABLE       CREATE TABLE public.libbarangays (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    psgccode character varying(255) NOT NULL,
    lib_brgyname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.libbarangays;
       public         heap    postgres    false         �            1259    26043    libbarangays_id_seq    SEQUENCE     |   CREATE SEQUENCE public.libbarangays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.libbarangays_id_seq;
       public          postgres    false    204         k           0    0    libbarangays_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.libbarangays_id_seq OWNED BY public.libbarangays.id;
          public          postgres    false    205         �            1259    26045    libbuildingroofmaterials    TABLE     �   CREATE TABLE public.libbuildingroofmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.libbuildingroofmaterials;
       public         heap    postgres    false         �            1259    26048    libbuildingroofmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingroofmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.libbuildingroofmaterials_id_seq;
       public          postgres    false    206         l           0    0    libbuildingroofmaterials_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.libbuildingroofmaterials_id_seq OWNED BY public.libbuildingroofmaterials.id;
          public          postgres    false    207         �            1259    26050    libbuildingstatus    TABLE     �   CREATE TABLE public.libbuildingstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_statusname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libbuildingstatus;
       public         heap    postgres    false         �            1259    26053    libbuildingstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libbuildingstatus_id_seq;
       public          postgres    false    208         m           0    0    libbuildingstatus_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libbuildingstatus_id_seq OWNED BY public.libbuildingstatus.id;
          public          postgres    false    209         �            1259    26055    libbuildingtypes    TABLE     �   CREATE TABLE public.libbuildingtypes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tobname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.libbuildingtypes;
       public         heap    postgres    false         �            1259    26058    libbuildingtypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingtypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.libbuildingtypes_id_seq;
       public          postgres    false    210         n           0    0    libbuildingtypes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.libbuildingtypes_id_seq OWNED BY public.libbuildingtypes.id;
          public          postgres    false    211         �            1259    26060    libbuildinguses    TABLE     �   CREATE TABLE public.libbuildinguses (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_buildingusedesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.libbuildinguses;
       public         heap    postgres    false         �            1259    26063    libbuildinguses_id_seq    SEQUENCE        CREATE SEQUENCE public.libbuildinguses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.libbuildinguses_id_seq;
       public          postgres    false    212         o           0    0    libbuildinguses_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.libbuildinguses_id_seq OWNED BY public.libbuildinguses.id;
          public          postgres    false    213         �            1259    26065    libbuildingwallmaterials    TABLE     �   CREATE TABLE public.libbuildingwallmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.libbuildingwallmaterials;
       public         heap    postgres    false         �            1259    26068    libbuildingwallmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libbuildingwallmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.libbuildingwallmaterials_id_seq;
       public          postgres    false    214         p           0    0    libbuildingwallmaterials_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.libbuildingwallmaterials_id_seq OWNED BY public.libbuildingwallmaterials.id;
          public          postgres    false    215         �            1259    26070    libdisabilities    TABLE     �   CREATE TABLE public.libdisabilities (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_dname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.libdisabilities;
       public         heap    postgres    false         �            1259    26073    libdisabilities_id_seq    SEQUENCE        CREATE SEQUENCE public.libdisabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.libdisabilities_id_seq;
       public          postgres    false    216         q           0    0    libdisabilities_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.libdisabilities_id_seq OWNED BY public.libdisabilities.id;
          public          postgres    false    217         �            1259    26075    libfarmingtechs    TABLE     �   CREATE TABLE public.libfarmingtechs (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_techname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.libfarmingtechs;
       public         heap    postgres    false         �            1259    26078    libfarmingtechs_id_seq    SEQUENCE        CREATE SEQUENCE public.libfarmingtechs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.libfarmingtechs_id_seq;
       public          postgres    false    218         r           0    0    libfarmingtechs_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.libfarmingtechs_id_seq OWNED BY public.libfarmingtechs.id;
          public          postgres    false    219         �            1259    26080 
   libgenders    TABLE     �   CREATE TABLE public.libgenders (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_gname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.libgenders;
       public         heap    postgres    false         �            1259    26083    libgenders_id_seq    SEQUENCE     z   CREATE SEQUENCE public.libgenders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.libgenders_id_seq;
       public          postgres    false    220         s           0    0    libgenders_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.libgenders_id_seq OWNED BY public.libgenders.id;
          public          postgres    false    221         �            1259    26085    libgradelvls    TABLE     	  CREATE TABLE public.libgradelvls (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_glcode integer NOT NULL,
    lib_glname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.libgradelvls;
       public         heap    postgres    false         �            1259    26088    libgradelvls_id_seq    SEQUENCE     |   CREATE SEQUENCE public.libgradelvls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.libgradelvls_id_seq;
       public          postgres    false    222         t           0    0    libgradelvls_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.libgradelvls_id_seq OWNED BY public.libgradelvls.id;
          public          postgres    false    223         �            1259    26090    libhhevacuationareas    TABLE     �   CREATE TABLE public.libhhevacuationareas (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_heaname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.libhhevacuationareas;
       public         heap    postgres    false         �            1259    26093    libhhevacuationareas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhevacuationareas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libhhevacuationareas_id_seq;
       public          postgres    false    224         u           0    0    libhhevacuationareas_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libhhevacuationareas_id_seq OWNED BY public.libhhevacuationareas.id;
          public          postgres    false    225         �            1259    26095    libhhlvlwatersystems    TABLE     -  CREATE TABLE public.libhhlvlwatersystems (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_hhwatersystemlvl character varying(255) NOT NULL,
    lib_hhlvldesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.libhhlvlwatersystems;
       public         heap    postgres    false         �            1259    26101    libhhlvlwatersystems_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhlvlwatersystems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libhhlvlwatersystems_id_seq;
       public          postgres    false    226         v           0    0    libhhlvlwatersystems_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libhhlvlwatersystems_id_seq OWNED BY public.libhhlvlwatersystems.id;
          public          postgres    false    227         �            1259    26103    libhhroofmaterials    TABLE     �   CREATE TABLE public.libhhroofmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_roofmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.libhhroofmaterials;
       public         heap    postgres    false         �            1259    26106    libhhroofmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhroofmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.libhhroofmaterials_id_seq;
       public          postgres    false    228         w           0    0    libhhroofmaterials_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.libhhroofmaterials_id_seq OWNED BY public.libhhroofmaterials.id;
          public          postgres    false    229         �            1259    26108    libhhtenuralstatus    TABLE     �   CREATE TABLE public.libhhtenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_ternuralstatusdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.libhhtenuralstatus;
       public         heap    postgres    false         �            1259    26111    libhhtenuralstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhtenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.libhhtenuralstatus_id_seq;
       public          postgres    false    230         x           0    0    libhhtenuralstatus_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.libhhtenuralstatus_id_seq OWNED BY public.libhhtenuralstatus.id;
          public          postgres    false    231         �            1259    26113    libhhtypeofbuildings    TABLE     �   CREATE TABLE public.libhhtypeofbuildings (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_hhtobname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.libhhtypeofbuildings;
       public         heap    postgres    false         �            1259    26116    libhhtypeofbuildings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhtypeofbuildings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libhhtypeofbuildings_id_seq;
       public          postgres    false    232         y           0    0    libhhtypeofbuildings_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libhhtypeofbuildings_id_seq OWNED BY public.libhhtypeofbuildings.id;
          public          postgres    false    233         �            1259    26118    libhhwallconmaterials    TABLE     �   CREATE TABLE public.libhhwallconmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wallmaterialsdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.libhhwallconmaterials;
       public         heap    postgres    false         �            1259    26121    libhhwallconmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhwallconmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.libhhwallconmaterials_id_seq;
       public          postgres    false    234         z           0    0    libhhwallconmaterials_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.libhhwallconmaterials_id_seq OWNED BY public.libhhwallconmaterials.id;
          public          postgres    false    235         �            1259    26123    libhhwatertenuralstatus    TABLE     �   CREATE TABLE public.libhhwatertenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_wtdesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.libhhwatertenuralstatus;
       public         heap    postgres    false         �            1259    26126    libhhwatertenuralstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libhhwatertenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.libhhwatertenuralstatus_id_seq;
       public          postgres    false    236         {           0    0    libhhwatertenuralstatus_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.libhhwatertenuralstatus_id_seq OWNED BY public.libhhwatertenuralstatus.id;
          public          postgres    false    237         �            1259    26128    liblivelihoods    TABLE     �   CREATE TABLE public.liblivelihoods (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_livelihooddesc character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.liblivelihoods;
       public         heap    postgres    false         �            1259    26131    liblivelihoods_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.liblivelihoods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.liblivelihoods_id_seq;
       public          postgres    false    238         |           0    0    liblivelihoods_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.liblivelihoods_id_seq OWNED BY public.liblivelihoods.id;
          public          postgres    false    239         �            1259    26133    libmaritalstatus    TABLE     �   CREATE TABLE public.libmaritalstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_msname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.libmaritalstatus;
       public         heap    postgres    false         �            1259    26136    libmaritalstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libmaritalstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.libmaritalstatus_id_seq;
       public          postgres    false    240         }           0    0    libmaritalstatus_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.libmaritalstatus_id_seq OWNED BY public.libmaritalstatus.id;
          public          postgres    false    241         �            1259    26138    libmonthlyincomes    TABLE     �   CREATE TABLE public.libmonthlyincomes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_miname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libmonthlyincomes;
       public         heap    postgres    false         �            1259    26141    libmonthlyincomes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libmonthlyincomes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libmonthlyincomes_id_seq;
       public          postgres    false    242         ~           0    0    libmonthlyincomes_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libmonthlyincomes_id_seq OWNED BY public.libmonthlyincomes.id;
          public          postgres    false    243         �            1259    26143    libmunicipalities    TABLE       CREATE TABLE public.libmunicipalities (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    psgccode character varying(255) NOT NULL,
    lib_munname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libmunicipalities;
       public         heap    postgres    false         �            1259    26149    libmunicipalities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libmunicipalities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libmunicipalities_id_seq;
       public          postgres    false    244                    0    0    libmunicipalities_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libmunicipalities_id_seq OWNED BY public.libmunicipalities.id;
          public          postgres    false    245         �            1259    26151    libnutritionalstatus    TABLE     �   CREATE TABLE public.libnutritionalstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_nsname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.libnutritionalstatus;
       public         heap    postgres    false         �            1259    26154    libnutritionalstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libnutritionalstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.libnutritionalstatus_id_seq;
       public          postgres    false    246         �           0    0    libnutritionalstatus_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.libnutritionalstatus_id_seq OWNED BY public.libnutritionalstatus.id;
          public          postgres    false    247         �            1259    26156    librelationshipheads    TABLE     �   CREATE TABLE public.librelationshipheads (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_rhname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.librelationshipheads;
       public         heap    postgres    false         �            1259    26159    librelationshipheads_id_seq    SEQUENCE     �   CREATE SEQUENCE public.librelationshipheads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.librelationshipheads_id_seq;
       public          postgres    false    248         �           0    0    librelationshipheads_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.librelationshipheads_id_seq OWNED BY public.librelationshipheads.id;
          public          postgres    false    249         �            1259    26161    libreligions    TABLE     �   CREATE TABLE public.libreligions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_rname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.libreligions;
       public         heap    postgres    false         �            1259    26164    libreligions_id_seq    SEQUENCE     |   CREATE SEQUENCE public.libreligions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.libreligions_id_seq;
       public          postgres    false    250         �           0    0    libreligions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.libreligions_id_seq OWNED BY public.libreligions.id;
          public          postgres    false    251         �            1259    26166    libroofconmaterials    TABLE     �   CREATE TABLE public.libroofconmaterials (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tocmname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.libroofconmaterials;
       public         heap    postgres    false         �            1259    26169    libroofconmaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libroofconmaterials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.libroofconmaterials_id_seq;
       public          postgres    false    252         �           0    0    libroofconmaterials_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.libroofconmaterials_id_seq OWNED BY public.libroofconmaterials.id;
          public          postgres    false    253         �            1259    26171    libtenuralstatus    TABLE     �   CREATE TABLE public.libtenuralstatus (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tsname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.libtenuralstatus;
       public         heap    postgres    false         �            1259    26174    libtenuralstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libtenuralstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.libtenuralstatus_id_seq;
       public          postgres    false    254         �           0    0    libtenuralstatus_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.libtenuralstatus_id_seq OWNED BY public.libtenuralstatus.id;
          public          postgres    false    255                     1259    26176    libtscshvcs    TABLE     �   CREATE TABLE public.libtscshvcs (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tscshvcname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.libtscshvcs;
       public         heap    postgres    false                    1259    26179    libtscshvc_id_seq    SEQUENCE     z   CREATE SEQUENCE public.libtscshvc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.libtscshvc_id_seq;
       public          postgres    false    256         �           0    0    libtscshvc_id_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.libtscshvc_id_seq OWNED BY public.libtscshvcs.id;
          public          postgres    false    257                    1259    26181    libtypeofprograms    TABLE     �   CREATE TABLE public.libtypeofprograms (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_topname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.libtypeofprograms;
       public         heap    postgres    false                    1259    26184    libtypeofprograms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.libtypeofprograms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.libtypeofprograms_id_seq;
       public          postgres    false    258         �           0    0    libtypeofprograms_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.libtypeofprograms_id_seq OWNED BY public.libtypeofprograms.id;
          public          postgres    false    259                    1259    26186 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false                    1259    26189    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    260         �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    261                    1259    26191    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false                    1259    26197    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
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
       public         heap    postgres    false                    1259    26203    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    263         �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    264         	           1259    26205    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false         
           1259    26212    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    265         �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    266                    2604    26761    demographies id    DEFAULT     r   ALTER TABLE ONLY public.demographies ALTER COLUMN id SET DEFAULT nextval('public.demographies_id_seq'::regclass);
 >   ALTER TABLE public.demographies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268         �           2604    26214    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200         �           2604    26215    households id    DEFAULT     n   ALTER TABLE ONLY public.households ALTER COLUMN id SET DEFAULT nextval('public.households_id_seq'::regclass);
 <   ALTER TABLE public.households ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202         �           2604    26216    libbarangays id    DEFAULT     r   ALTER TABLE ONLY public.libbarangays ALTER COLUMN id SET DEFAULT nextval('public.libbarangays_id_seq'::regclass);
 >   ALTER TABLE public.libbarangays ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204         �           2604    26217    libbuildingroofmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libbuildingroofmaterials ALTER COLUMN id SET DEFAULT nextval('public.libbuildingroofmaterials_id_seq'::regclass);
 J   ALTER TABLE public.libbuildingroofmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206         �           2604    26218    libbuildingstatus id    DEFAULT     |   ALTER TABLE ONLY public.libbuildingstatus ALTER COLUMN id SET DEFAULT nextval('public.libbuildingstatus_id_seq'::regclass);
 C   ALTER TABLE public.libbuildingstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208         �           2604    26219    libbuildingtypes id    DEFAULT     z   ALTER TABLE ONLY public.libbuildingtypes ALTER COLUMN id SET DEFAULT nextval('public.libbuildingtypes_id_seq'::regclass);
 B   ALTER TABLE public.libbuildingtypes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210         �           2604    26220    libbuildinguses id    DEFAULT     x   ALTER TABLE ONLY public.libbuildinguses ALTER COLUMN id SET DEFAULT nextval('public.libbuildinguses_id_seq'::regclass);
 A   ALTER TABLE public.libbuildinguses ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212         �           2604    26221    libbuildingwallmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libbuildingwallmaterials ALTER COLUMN id SET DEFAULT nextval('public.libbuildingwallmaterials_id_seq'::regclass);
 J   ALTER TABLE public.libbuildingwallmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214         �           2604    26222    libdisabilities id    DEFAULT     x   ALTER TABLE ONLY public.libdisabilities ALTER COLUMN id SET DEFAULT nextval('public.libdisabilities_id_seq'::regclass);
 A   ALTER TABLE public.libdisabilities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216         �           2604    26223    libfarmingtechs id    DEFAULT     x   ALTER TABLE ONLY public.libfarmingtechs ALTER COLUMN id SET DEFAULT nextval('public.libfarmingtechs_id_seq'::regclass);
 A   ALTER TABLE public.libfarmingtechs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                     2604    26224    libgenders id    DEFAULT     n   ALTER TABLE ONLY public.libgenders ALTER COLUMN id SET DEFAULT nextval('public.libgenders_id_seq'::regclass);
 <   ALTER TABLE public.libgenders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220                    2604    26225    libgradelvls id    DEFAULT     r   ALTER TABLE ONLY public.libgradelvls ALTER COLUMN id SET DEFAULT nextval('public.libgradelvls_id_seq'::regclass);
 >   ALTER TABLE public.libgradelvls ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222                    2604    26226    libhhevacuationareas id    DEFAULT     �   ALTER TABLE ONLY public.libhhevacuationareas ALTER COLUMN id SET DEFAULT nextval('public.libhhevacuationareas_id_seq'::regclass);
 F   ALTER TABLE public.libhhevacuationareas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224                    2604    26227    libhhlvlwatersystems id    DEFAULT     �   ALTER TABLE ONLY public.libhhlvlwatersystems ALTER COLUMN id SET DEFAULT nextval('public.libhhlvlwatersystems_id_seq'::regclass);
 F   ALTER TABLE public.libhhlvlwatersystems ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226                    2604    26228    libhhroofmaterials id    DEFAULT     ~   ALTER TABLE ONLY public.libhhroofmaterials ALTER COLUMN id SET DEFAULT nextval('public.libhhroofmaterials_id_seq'::regclass);
 D   ALTER TABLE public.libhhroofmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228                    2604    26229    libhhtenuralstatus id    DEFAULT     ~   ALTER TABLE ONLY public.libhhtenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libhhtenuralstatus_id_seq'::regclass);
 D   ALTER TABLE public.libhhtenuralstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230                    2604    26230    libhhtypeofbuildings id    DEFAULT     �   ALTER TABLE ONLY public.libhhtypeofbuildings ALTER COLUMN id SET DEFAULT nextval('public.libhhtypeofbuildings_id_seq'::regclass);
 F   ALTER TABLE public.libhhtypeofbuildings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232                    2604    26231    libhhwallconmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libhhwallconmaterials ALTER COLUMN id SET DEFAULT nextval('public.libhhwallconmaterials_id_seq'::regclass);
 G   ALTER TABLE public.libhhwallconmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234                    2604    26232    libhhwatertenuralstatus id    DEFAULT     �   ALTER TABLE ONLY public.libhhwatertenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libhhwatertenuralstatus_id_seq'::regclass);
 I   ALTER TABLE public.libhhwatertenuralstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236         	           2604    26233    liblivelihoods id    DEFAULT     v   ALTER TABLE ONLY public.liblivelihoods ALTER COLUMN id SET DEFAULT nextval('public.liblivelihoods_id_seq'::regclass);
 @   ALTER TABLE public.liblivelihoods ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238         
           2604    26234    libmaritalstatus id    DEFAULT     z   ALTER TABLE ONLY public.libmaritalstatus ALTER COLUMN id SET DEFAULT nextval('public.libmaritalstatus_id_seq'::regclass);
 B   ALTER TABLE public.libmaritalstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240                    2604    26235    libmonthlyincomes id    DEFAULT     |   ALTER TABLE ONLY public.libmonthlyincomes ALTER COLUMN id SET DEFAULT nextval('public.libmonthlyincomes_id_seq'::regclass);
 C   ALTER TABLE public.libmonthlyincomes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242                    2604    26236    libmunicipalities id    DEFAULT     |   ALTER TABLE ONLY public.libmunicipalities ALTER COLUMN id SET DEFAULT nextval('public.libmunicipalities_id_seq'::regclass);
 C   ALTER TABLE public.libmunicipalities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244                    2604    26237    libnutritionalstatus id    DEFAULT     �   ALTER TABLE ONLY public.libnutritionalstatus ALTER COLUMN id SET DEFAULT nextval('public.libnutritionalstatus_id_seq'::regclass);
 F   ALTER TABLE public.libnutritionalstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246                    2604    26238    librelationshipheads id    DEFAULT     �   ALTER TABLE ONLY public.librelationshipheads ALTER COLUMN id SET DEFAULT nextval('public.librelationshipheads_id_seq'::regclass);
 F   ALTER TABLE public.librelationshipheads ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248                    2604    26239    libreligions id    DEFAULT     r   ALTER TABLE ONLY public.libreligions ALTER COLUMN id SET DEFAULT nextval('public.libreligions_id_seq'::regclass);
 >   ALTER TABLE public.libreligions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250                    2604    26240    libroofconmaterials id    DEFAULT     �   ALTER TABLE ONLY public.libroofconmaterials ALTER COLUMN id SET DEFAULT nextval('public.libroofconmaterials_id_seq'::regclass);
 E   ALTER TABLE public.libroofconmaterials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252                    2604    26241    libtenuralstatus id    DEFAULT     z   ALTER TABLE ONLY public.libtenuralstatus ALTER COLUMN id SET DEFAULT nextval('public.libtenuralstatus_id_seq'::regclass);
 B   ALTER TABLE public.libtenuralstatus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254                    2604    26242    libtscshvcs id    DEFAULT     o   ALTER TABLE ONLY public.libtscshvcs ALTER COLUMN id SET DEFAULT nextval('public.libtscshvc_id_seq'::regclass);
 =   ALTER TABLE public.libtscshvcs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256                    2604    26243    libtypeofprograms id    DEFAULT     |   ALTER TABLE ONLY public.libtypeofprograms ALTER COLUMN id SET DEFAULT nextval('public.libtypeofprograms_id_seq'::regclass);
 C   ALTER TABLE public.libtypeofprograms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258                    2604    26244    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260                    2604    26245    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263                    2604    26246    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265         a          0    26758    demographies 
   TABLE DATA           �  COPY public.demographies (id, household_controlnumber, surname, firstname, middlename, extension, nuclear_family, librelationshiphead_id, libgender_id, birthdate, libmaritalstatu_id, ethnicity_by_blood, member_ip, informal_settler, religion, person_with_special_needs, libdisability_id, is_ofw, residence_3_years, libnutritionalstatu_id, nutrional_status_recorded, current_attending_school, current_attending_libgradelvl_glcode, highest_education_attainment_libgradelvl_glcode, libtscshvc_id, can_read_write_or_atleast_hs_graduate, primary_occupation, libmonthlyincome_id, sss_member, gsis_member, philhealth_member, dependent_of_philheath_member, created_at, updated_at) FROM stdin;
    public          postgres    false    268       3425.dat           0    26020    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    200       3357.dat           0    26029 
   households 
   TABLE DATA           �  COPY public.households (id, controlnumber, libmunicipalitie_psgccode, libbarangay_psgccode, purok, latitude, longitude, respondent, dateinterview, nameenumerator, nameeditor, dateedited, libhhtypeofbuilding_id, libhhtenuralstatu_id, year_construct, estimated_cost, bedrooms, storey, access_electricity, access_internet, libhhroofmaterial_id, medical_treatment, access_watersupply, potable, libhhwatertenuralstatu_id, libhhlvlwatersystem_id, floods_occur, year_flood, experience_evacuationduringcalamity, year_evacuated, libhhevacuationarea_id, has_accesstohealthmedicalfacilities, has_accesstotelecommunications, has_accesstodrillsandsimulations, image, created_at, updated_at) FROM stdin;
    public          postgres    false    202       3359.dat !          0    26037    libbarangays 
   TABLE DATA           c   COPY public.libbarangays (id, user_id, psgccode, lib_brgyname, created_at, updated_at) FROM stdin;
    public          postgres    false    204       3361.dat #          0    26045    libbuildingroofmaterials 
   TABLE DATA           n   COPY public.libbuildingroofmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    206       3363.dat %          0    26050    libbuildingstatus 
   TABLE DATA           `   COPY public.libbuildingstatus (id, user_id, lib_statusname, created_at, updated_at) FROM stdin;
    public          postgres    false    208       3365.dat '          0    26055    libbuildingtypes 
   TABLE DATA           \   COPY public.libbuildingtypes (id, user_id, lib_tobname, created_at, updated_at) FROM stdin;
    public          postgres    false    210       3367.dat )          0    26060    libbuildinguses 
   TABLE DATA           c   COPY public.libbuildinguses (id, user_id, lib_buildingusedesc, created_at, updated_at) FROM stdin;
    public          postgres    false    212       3369.dat +          0    26065    libbuildingwallmaterials 
   TABLE DATA           n   COPY public.libbuildingwallmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    214       3371.dat -          0    26070    libdisabilities 
   TABLE DATA           Y   COPY public.libdisabilities (id, user_id, lib_dname, created_at, updated_at) FROM stdin;
    public          postgres    false    216       3373.dat /          0    26075    libfarmingtechs 
   TABLE DATA           \   COPY public.libfarmingtechs (id, user_id, lib_techname, created_at, updated_at) FROM stdin;
    public          postgres    false    218       3375.dat 1          0    26080 
   libgenders 
   TABLE DATA           T   COPY public.libgenders (id, user_id, lib_gname, created_at, updated_at) FROM stdin;
    public          postgres    false    220       3377.dat 3          0    26085    libgradelvls 
   TABLE DATA           c   COPY public.libgradelvls (id, user_id, lib_glcode, lib_glname, created_at, updated_at) FROM stdin;
    public          postgres    false    222       3379.dat 5          0    26090    libhhevacuationareas 
   TABLE DATA           `   COPY public.libhhevacuationareas (id, user_id, lib_heaname, created_at, updated_at) FROM stdin;
    public          postgres    false    224       3381.dat 7          0    26095    libhhlvlwatersystems 
   TABLE DATA           x   COPY public.libhhlvlwatersystems (id, user_id, lib_hhwatersystemlvl, lib_hhlvldesc, created_at, updated_at) FROM stdin;
    public          postgres    false    226       3383.dat 9          0    26103    libhhroofmaterials 
   TABLE DATA           h   COPY public.libhhroofmaterials (id, user_id, lib_roofmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    228       3385.dat ;          0    26108    libhhtenuralstatus 
   TABLE DATA           i   COPY public.libhhtenuralstatus (id, user_id, lib_ternuralstatusdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    230       3387.dat =          0    26113    libhhtypeofbuildings 
   TABLE DATA           b   COPY public.libhhtypeofbuildings (id, user_id, lib_hhtobname, created_at, updated_at) FROM stdin;
    public          postgres    false    232       3389.dat ?          0    26118    libhhwallconmaterials 
   TABLE DATA           k   COPY public.libhhwallconmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    234       3391.dat A          0    26123    libhhwatertenuralstatus 
   TABLE DATA           b   COPY public.libhhwatertenuralstatus (id, user_id, lib_wtdesc, created_at, updated_at) FROM stdin;
    public          postgres    false    236       3393.dat C          0    26128    liblivelihoods 
   TABLE DATA           a   COPY public.liblivelihoods (id, user_id, lib_livelihooddesc, created_at, updated_at) FROM stdin;
    public          postgres    false    238       3395.dat E          0    26133    libmaritalstatus 
   TABLE DATA           [   COPY public.libmaritalstatus (id, user_id, lib_msname, created_at, updated_at) FROM stdin;
    public          postgres    false    240       3397.dat G          0    26138    libmonthlyincomes 
   TABLE DATA           \   COPY public.libmonthlyincomes (id, user_id, lib_miname, created_at, updated_at) FROM stdin;
    public          postgres    false    242       3399.dat I          0    26143    libmunicipalities 
   TABLE DATA           g   COPY public.libmunicipalities (id, user_id, psgccode, lib_munname, created_at, updated_at) FROM stdin;
    public          postgres    false    244       3401.dat K          0    26151    libnutritionalstatus 
   TABLE DATA           _   COPY public.libnutritionalstatus (id, user_id, lib_nsname, created_at, updated_at) FROM stdin;
    public          postgres    false    246       3403.dat M          0    26156    librelationshipheads 
   TABLE DATA           _   COPY public.librelationshipheads (id, user_id, lib_rhname, created_at, updated_at) FROM stdin;
    public          postgres    false    248       3405.dat O          0    26161    libreligions 
   TABLE DATA           V   COPY public.libreligions (id, user_id, lib_rname, created_at, updated_at) FROM stdin;
    public          postgres    false    250       3407.dat Q          0    26166    libroofconmaterials 
   TABLE DATA           `   COPY public.libroofconmaterials (id, user_id, lib_tocmname, created_at, updated_at) FROM stdin;
    public          postgres    false    252       3409.dat S          0    26171    libtenuralstatus 
   TABLE DATA           [   COPY public.libtenuralstatus (id, user_id, lib_tsname, created_at, updated_at) FROM stdin;
    public          postgres    false    254       3411.dat U          0    26176    libtscshvcs 
   TABLE DATA           [   COPY public.libtscshvcs (id, user_id, lib_tscshvcname, created_at, updated_at) FROM stdin;
    public          postgres    false    256       3413.dat W          0    26181    libtypeofprograms 
   TABLE DATA           ]   COPY public.libtypeofprograms (id, user_id, lib_topname, created_at, updated_at) FROM stdin;
    public          postgres    false    258       3415.dat Y          0    26186 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    260       3417.dat [          0    26191    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    262       3419.dat \          0    26197    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    263       3420.dat ^          0    26205    users 
   TABLE DATA           {   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM stdin;
    public          postgres    false    265       3422.dat �           0    0    demographies_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.demographies_id_seq', 1, false);
          public          postgres    false    267         �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    201         �           0    0    households_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.households_id_seq', 1, false);
          public          postgres    false    203         �           0    0    libbarangays_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.libbarangays_id_seq', 1, false);
          public          postgres    false    205         �           0    0    libbuildingroofmaterials_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.libbuildingroofmaterials_id_seq', 1, false);
          public          postgres    false    207         �           0    0    libbuildingstatus_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libbuildingstatus_id_seq', 1, false);
          public          postgres    false    209         �           0    0    libbuildingtypes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.libbuildingtypes_id_seq', 1, false);
          public          postgres    false    211         �           0    0    libbuildinguses_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.libbuildinguses_id_seq', 1, false);
          public          postgres    false    213         �           0    0    libbuildingwallmaterials_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.libbuildingwallmaterials_id_seq', 1, false);
          public          postgres    false    215         �           0    0    libdisabilities_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.libdisabilities_id_seq', 1, false);
          public          postgres    false    217         �           0    0    libfarmingtechs_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.libfarmingtechs_id_seq', 1, false);
          public          postgres    false    219         �           0    0    libgenders_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.libgenders_id_seq', 1, false);
          public          postgres    false    221         �           0    0    libgradelvls_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.libgradelvls_id_seq', 1, false);
          public          postgres    false    223         �           0    0    libhhevacuationareas_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.libhhevacuationareas_id_seq', 1, false);
          public          postgres    false    225         �           0    0    libhhlvlwatersystems_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.libhhlvlwatersystems_id_seq', 1, false);
          public          postgres    false    227         �           0    0    libhhroofmaterials_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.libhhroofmaterials_id_seq', 1, false);
          public          postgres    false    229         �           0    0    libhhtenuralstatus_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.libhhtenuralstatus_id_seq', 1, false);
          public          postgres    false    231         �           0    0    libhhtypeofbuildings_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.libhhtypeofbuildings_id_seq', 6, true);
          public          postgres    false    233         �           0    0    libhhwallconmaterials_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.libhhwallconmaterials_id_seq', 1, false);
          public          postgres    false    235         �           0    0    libhhwatertenuralstatus_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.libhhwatertenuralstatus_id_seq', 1, false);
          public          postgres    false    237         �           0    0    liblivelihoods_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.liblivelihoods_id_seq', 1, false);
          public          postgres    false    239         �           0    0    libmaritalstatus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.libmaritalstatus_id_seq', 1, false);
          public          postgres    false    241         �           0    0    libmonthlyincomes_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libmonthlyincomes_id_seq', 1, false);
          public          postgres    false    243         �           0    0    libmunicipalities_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libmunicipalities_id_seq', 1, false);
          public          postgres    false    245         �           0    0    libnutritionalstatus_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.libnutritionalstatus_id_seq', 1, false);
          public          postgres    false    247         �           0    0    librelationshipheads_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.librelationshipheads_id_seq', 1, false);
          public          postgres    false    249         �           0    0    libreligions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.libreligions_id_seq', 1, false);
          public          postgres    false    251         �           0    0    libroofconmaterials_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.libroofconmaterials_id_seq', 1, false);
          public          postgres    false    253         �           0    0    libtenuralstatus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.libtenuralstatus_id_seq', 1, false);
          public          postgres    false    255         �           0    0    libtscshvc_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.libtscshvc_id_seq', 1, false);
          public          postgres    false    257         �           0    0    libtypeofprograms_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.libtypeofprograms_id_seq', 1, false);
          public          postgres    false    259         �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 68, true);
          public          postgres    false    261         �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    264         �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    266         l           2606    26766    demographies demographies_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_pkey;
       public            postgres    false    268                    2606    26248    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    200                    2606    26250 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    200                    2606    26252 *   households households_controlnumber_unique 
   CONSTRAINT     n   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_controlnumber_unique UNIQUE (controlnumber);
 T   ALTER TABLE ONLY public.households DROP CONSTRAINT households_controlnumber_unique;
       public            postgres    false    202                     2606    26254    households households_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.households DROP CONSTRAINT households_pkey;
       public            postgres    false    202         "           2606    26256    libbarangays libbarangays_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.libbarangays DROP CONSTRAINT libbarangays_pkey;
       public            postgres    false    204         $           2606    26258 )   libbarangays libbarangays_psgccode_unique 
   CONSTRAINT     h   ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_psgccode_unique UNIQUE (psgccode);
 S   ALTER TABLE ONLY public.libbarangays DROP CONSTRAINT libbarangays_psgccode_unique;
       public            postgres    false    204         &           2606    26260 6   libbuildingroofmaterials libbuildingroofmaterials_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.libbuildingroofmaterials
    ADD CONSTRAINT libbuildingroofmaterials_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.libbuildingroofmaterials DROP CONSTRAINT libbuildingroofmaterials_pkey;
       public            postgres    false    206         (           2606    26262 (   libbuildingstatus libbuildingstatus_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libbuildingstatus
    ADD CONSTRAINT libbuildingstatus_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libbuildingstatus DROP CONSTRAINT libbuildingstatus_pkey;
       public            postgres    false    208         *           2606    26264 &   libbuildingtypes libbuildingtypes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.libbuildingtypes
    ADD CONSTRAINT libbuildingtypes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.libbuildingtypes DROP CONSTRAINT libbuildingtypes_pkey;
       public            postgres    false    210         ,           2606    26266 $   libbuildinguses libbuildinguses_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.libbuildinguses
    ADD CONSTRAINT libbuildinguses_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.libbuildinguses DROP CONSTRAINT libbuildinguses_pkey;
       public            postgres    false    212         .           2606    26268 6   libbuildingwallmaterials libbuildingwallmaterials_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.libbuildingwallmaterials
    ADD CONSTRAINT libbuildingwallmaterials_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.libbuildingwallmaterials DROP CONSTRAINT libbuildingwallmaterials_pkey;
       public            postgres    false    214         0           2606    26270 $   libdisabilities libdisabilities_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.libdisabilities
    ADD CONSTRAINT libdisabilities_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.libdisabilities DROP CONSTRAINT libdisabilities_pkey;
       public            postgres    false    216         2           2606    26272 $   libfarmingtechs libfarmingtechs_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.libfarmingtechs
    ADD CONSTRAINT libfarmingtechs_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.libfarmingtechs DROP CONSTRAINT libfarmingtechs_pkey;
       public            postgres    false    218         4           2606    26274    libgenders libgenders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.libgenders
    ADD CONSTRAINT libgenders_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.libgenders DROP CONSTRAINT libgenders_pkey;
       public            postgres    false    220         6           2606    26276 +   libgradelvls libgradelvls_lib_glcode_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_lib_glcode_unique UNIQUE (lib_glcode);
 U   ALTER TABLE ONLY public.libgradelvls DROP CONSTRAINT libgradelvls_lib_glcode_unique;
       public            postgres    false    222         8           2606    26278    libgradelvls libgradelvls_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.libgradelvls DROP CONSTRAINT libgradelvls_pkey;
       public            postgres    false    222         :           2606    26280 .   libhhevacuationareas libhhevacuationareas_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libhhevacuationareas
    ADD CONSTRAINT libhhevacuationareas_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libhhevacuationareas DROP CONSTRAINT libhhevacuationareas_pkey;
       public            postgres    false    224         <           2606    26282 .   libhhlvlwatersystems libhhlvlwatersystems_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libhhlvlwatersystems
    ADD CONSTRAINT libhhlvlwatersystems_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libhhlvlwatersystems DROP CONSTRAINT libhhlvlwatersystems_pkey;
       public            postgres    false    226         >           2606    26284 *   libhhroofmaterials libhhroofmaterials_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.libhhroofmaterials
    ADD CONSTRAINT libhhroofmaterials_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.libhhroofmaterials DROP CONSTRAINT libhhroofmaterials_pkey;
       public            postgres    false    228         @           2606    26286 *   libhhtenuralstatus libhhtenuralstatus_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.libhhtenuralstatus
    ADD CONSTRAINT libhhtenuralstatus_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.libhhtenuralstatus DROP CONSTRAINT libhhtenuralstatus_pkey;
       public            postgres    false    230         B           2606    26288 .   libhhtypeofbuildings libhhtypeofbuildings_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libhhtypeofbuildings
    ADD CONSTRAINT libhhtypeofbuildings_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libhhtypeofbuildings DROP CONSTRAINT libhhtypeofbuildings_pkey;
       public            postgres    false    232         D           2606    26290 0   libhhwallconmaterials libhhwallconmaterials_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.libhhwallconmaterials
    ADD CONSTRAINT libhhwallconmaterials_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.libhhwallconmaterials DROP CONSTRAINT libhhwallconmaterials_pkey;
       public            postgres    false    234         F           2606    26292 4   libhhwatertenuralstatus libhhwatertenuralstatus_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.libhhwatertenuralstatus
    ADD CONSTRAINT libhhwatertenuralstatus_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.libhhwatertenuralstatus DROP CONSTRAINT libhhwatertenuralstatus_pkey;
       public            postgres    false    236         H           2606    26294 "   liblivelihoods liblivelihoods_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.liblivelihoods
    ADD CONSTRAINT liblivelihoods_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.liblivelihoods DROP CONSTRAINT liblivelihoods_pkey;
       public            postgres    false    238         J           2606    26296 &   libmaritalstatus libmaritalstatus_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.libmaritalstatus
    ADD CONSTRAINT libmaritalstatus_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.libmaritalstatus DROP CONSTRAINT libmaritalstatus_pkey;
       public            postgres    false    240         L           2606    26298 (   libmonthlyincomes libmonthlyincomes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libmonthlyincomes
    ADD CONSTRAINT libmonthlyincomes_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libmonthlyincomes DROP CONSTRAINT libmonthlyincomes_pkey;
       public            postgres    false    242         N           2606    26300 (   libmunicipalities libmunicipalities_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libmunicipalities DROP CONSTRAINT libmunicipalities_pkey;
       public            postgres    false    244         P           2606    26302 3   libmunicipalities libmunicipalities_psgccode_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_psgccode_unique UNIQUE (psgccode);
 ]   ALTER TABLE ONLY public.libmunicipalities DROP CONSTRAINT libmunicipalities_psgccode_unique;
       public            postgres    false    244         R           2606    26304 .   libnutritionalstatus libnutritionalstatus_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.libnutritionalstatus
    ADD CONSTRAINT libnutritionalstatus_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.libnutritionalstatus DROP CONSTRAINT libnutritionalstatus_pkey;
       public            postgres    false    246         T           2606    26306 .   librelationshipheads librelationshipheads_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.librelationshipheads
    ADD CONSTRAINT librelationshipheads_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.librelationshipheads DROP CONSTRAINT librelationshipheads_pkey;
       public            postgres    false    248         V           2606    26308    libreligions libreligions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.libreligions
    ADD CONSTRAINT libreligions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.libreligions DROP CONSTRAINT libreligions_pkey;
       public            postgres    false    250         X           2606    26310 ,   libroofconmaterials libroofconmaterials_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.libroofconmaterials
    ADD CONSTRAINT libroofconmaterials_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.libroofconmaterials DROP CONSTRAINT libroofconmaterials_pkey;
       public            postgres    false    252         Z           2606    26312 &   libtenuralstatus libtenuralstatus_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.libtenuralstatus
    ADD CONSTRAINT libtenuralstatus_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.libtenuralstatus DROP CONSTRAINT libtenuralstatus_pkey;
       public            postgres    false    254         \           2606    26314    libtscshvcs libtscshvc_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.libtscshvcs
    ADD CONSTRAINT libtscshvc_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.libtscshvcs DROP CONSTRAINT libtscshvc_pkey;
       public            postgres    false    256         ^           2606    26316 (   libtypeofprograms libtypeofprograms_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.libtypeofprograms
    ADD CONSTRAINT libtypeofprograms_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.libtypeofprograms DROP CONSTRAINT libtypeofprograms_pkey;
       public            postgres    false    258         `           2606    26318    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    260         c           2606    26320 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    263         e           2606    26322 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    263         h           2606    26324    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    265         j           2606    26326    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    265         a           1259    26327    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    262         f           1259    26328 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    263    263         �           2606    26797 F   demographies demographies_current_attending_libgradelvl_glcode_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_current_attending_libgradelvl_glcode_foreign FOREIGN KEY (current_attending_libgradelvl_glcode) REFERENCES public.libgradelvls(lib_glcode) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_current_attending_libgradelvl_glcode_foreign;
       public          postgres    false    222    3126    268         �           2606    26802 L   demographies demographies_highest_education_attainment_libgradelvl_glcode_fo    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_highest_education_attainment_libgradelvl_glcode_fo FOREIGN KEY (highest_education_attainment_libgradelvl_glcode) REFERENCES public.libgradelvls(lib_glcode) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_highest_education_attainment_libgradelvl_glcode_fo;
       public          postgres    false    222    268    3126         �           2606    26767 9   demographies demographies_household_controlnumber_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_household_controlnumber_foreign FOREIGN KEY (household_controlnumber) REFERENCES public.households(controlnumber) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_household_controlnumber_foreign;
       public          postgres    false    268    202    3102         �           2606    26787 2   demographies demographies_libdisability_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libdisability_id_foreign FOREIGN KEY (libdisability_id) REFERENCES public.libdisabilities(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_libdisability_id_foreign;
       public          postgres    false    216    268    3120         �           2606    26777 .   demographies demographies_libgender_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libgender_id_foreign FOREIGN KEY (libgender_id) REFERENCES public.libgenders(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_libgender_id_foreign;
       public          postgres    false    3124    220    268         �           2606    26782 4   demographies demographies_libmaritalstatu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libmaritalstatu_id_foreign FOREIGN KEY (libmaritalstatu_id) REFERENCES public.libmaritalstatus(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_libmaritalstatu_id_foreign;
       public          postgres    false    240    268    3146         �           2606    26812 5   demographies demographies_libmonthlyincome_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libmonthlyincome_id_foreign FOREIGN KEY (libmonthlyincome_id) REFERENCES public.libmonthlyincomes(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_libmonthlyincome_id_foreign;
       public          postgres    false    242    3148    268         �           2606    26792 8   demographies demographies_libnutritionalstatu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libnutritionalstatu_id_foreign FOREIGN KEY (libnutritionalstatu_id) REFERENCES public.libnutritionalstatus(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_libnutritionalstatu_id_foreign;
       public          postgres    false    268    246    3154         �           2606    26772 8   demographies demographies_librelationshiphead_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_librelationshiphead_id_foreign FOREIGN KEY (librelationshiphead_id) REFERENCES public.librelationshipheads(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_librelationshiphead_id_foreign;
       public          postgres    false    268    248    3156         �           2606    26807 /   demographies demographies_libtscshvc_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libtscshvc_id_foreign FOREIGN KEY (libtscshvc_id) REFERENCES public.libtscshvcs(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.demographies DROP CONSTRAINT demographies_libtscshvc_id_foreign;
       public          postgres    false    256    3164    268         m           2606    26329 2   households households_libbarangay_psgccode_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbarangay_psgccode_foreign FOREIGN KEY (libbarangay_psgccode) REFERENCES public.libbarangays(psgccode) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libbarangay_psgccode_foreign;
       public          postgres    false    204    3108    202         n           2606    26334 4   households households_libhhevacuationarea_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhevacuationarea_id_foreign FOREIGN KEY (libhhevacuationarea_id) REFERENCES public.libhhevacuationareas(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhevacuationarea_id_foreign;
       public          postgres    false    3130    224    202         o           2606    26339 4   households households_libhhlvlwatersystem_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhlvlwatersystem_id_foreign FOREIGN KEY (libhhlvlwatersystem_id) REFERENCES public.libhhlvlwatersystems(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhlvlwatersystem_id_foreign;
       public          postgres    false    3132    226    202         p           2606    26344 2   households households_libhhroofmaterial_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhroofmaterial_id_foreign FOREIGN KEY (libhhroofmaterial_id) REFERENCES public.libhhroofmaterials(id) NOT VALID;
 \   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhroofmaterial_id_foreign;
       public          postgres    false    202    3134    228         q           2606    26349 3   households households_libhhtenuralstatus_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhtenuralstatus_id_foreign FOREIGN KEY (libhhtenuralstatu_id) REFERENCES public.libhhtenuralstatus(id) NOT VALID;
 ]   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhtenuralstatus_id_foreign;
       public          postgres    false    3136    230    202         r           2606    26354 4   households households_libhhtypeofbuilding_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhtypeofbuilding_id_foreign FOREIGN KEY (libhhtypeofbuilding_id) REFERENCES public.libhhtypeofbuildings(id) NOT VALID;
 ^   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhtypeofbuilding_id_foreign;
       public          postgres    false    3138    232    202         s           2606    26359 7   households households_libhhwatertenuralstatu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhwatertenuralstatu_id_foreign FOREIGN KEY (libhhwatertenuralstatu_id) REFERENCES public.libhhwatertenuralstatus(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libhhwatertenuralstatu_id_foreign;
       public          postgres    false    3142    236    202         t           2606    26364 7   households households_libmunicipalitie_psgccode_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libmunicipalitie_psgccode_foreign FOREIGN KEY (libmunicipalitie_psgccode) REFERENCES public.libmunicipalities(psgccode) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.households DROP CONSTRAINT households_libmunicipalitie_psgccode_foreign;
       public          postgres    false    202    244    3152         u           2606    26369 )   libbarangays libbarangays_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbarangays
    ADD CONSTRAINT libbarangays_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.libbarangays DROP CONSTRAINT libbarangays_user_id_foreign;
       public          postgres    false    3178    265    204         v           2606    26374 A   libbuildingroofmaterials libbuildingroofmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingroofmaterials
    ADD CONSTRAINT libbuildingroofmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.libbuildingroofmaterials DROP CONSTRAINT libbuildingroofmaterials_user_id_foreign;
       public          postgres    false    206    3178    265         w           2606    26379 3   libbuildingstatus libbuildingstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingstatus
    ADD CONSTRAINT libbuildingstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libbuildingstatus DROP CONSTRAINT libbuildingstatus_user_id_foreign;
       public          postgres    false    3178    265    208         x           2606    26384 1   libbuildingtypes libbuildingtypes_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingtypes
    ADD CONSTRAINT libbuildingtypes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.libbuildingtypes DROP CONSTRAINT libbuildingtypes_user_id_foreign;
       public          postgres    false    265    210    3178         y           2606    26389 /   libbuildinguses libbuildinguses_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildinguses
    ADD CONSTRAINT libbuildinguses_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.libbuildinguses DROP CONSTRAINT libbuildinguses_user_id_foreign;
       public          postgres    false    265    212    3178         z           2606    26394 A   libbuildingwallmaterials libbuildingwallmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libbuildingwallmaterials
    ADD CONSTRAINT libbuildingwallmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.libbuildingwallmaterials DROP CONSTRAINT libbuildingwallmaterials_user_id_foreign;
       public          postgres    false    3178    214    265         {           2606    26399 /   libdisabilities libdisabilities_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libdisabilities
    ADD CONSTRAINT libdisabilities_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.libdisabilities DROP CONSTRAINT libdisabilities_user_id_foreign;
       public          postgres    false    3178    216    265         |           2606    26404 /   libfarmingtechs libfarmingtechs_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libfarmingtechs
    ADD CONSTRAINT libfarmingtechs_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.libfarmingtechs DROP CONSTRAINT libfarmingtechs_user_id_foreign;
       public          postgres    false    218    3178    265         }           2606    26409 %   libgenders libgenders_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libgenders
    ADD CONSTRAINT libgenders_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.libgenders DROP CONSTRAINT libgenders_user_id_foreign;
       public          postgres    false    265    220    3178         ~           2606    26414 )   libgradelvls libgradelvls_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libgradelvls
    ADD CONSTRAINT libgradelvls_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.libgradelvls DROP CONSTRAINT libgradelvls_user_id_foreign;
       public          postgres    false    265    3178    222                    2606    26419 9   libhhevacuationareas libhhevacuationareas_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhevacuationareas
    ADD CONSTRAINT libhhevacuationareas_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.libhhevacuationareas DROP CONSTRAINT libhhevacuationareas_user_id_foreign;
       public          postgres    false    224    3178    265         �           2606    26424 9   libhhlvlwatersystems libhhlvlwatersystems_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhlvlwatersystems
    ADD CONSTRAINT libhhlvlwatersystems_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.libhhlvlwatersystems DROP CONSTRAINT libhhlvlwatersystems_user_id_foreign;
       public          postgres    false    3178    265    226         �           2606    26429 5   libhhroofmaterials libhhroofmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhroofmaterials
    ADD CONSTRAINT libhhroofmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.libhhroofmaterials DROP CONSTRAINT libhhroofmaterials_user_id_foreign;
       public          postgres    false    3178    228    265         �           2606    26434 5   libhhtenuralstatus libhhtenuralstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhtenuralstatus
    ADD CONSTRAINT libhhtenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.libhhtenuralstatus DROP CONSTRAINT libhhtenuralstatus_user_id_foreign;
       public          postgres    false    3178    230    265         �           2606    26439 9   libhhtypeofbuildings libhhtypeofbuildings_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhtypeofbuildings
    ADD CONSTRAINT libhhtypeofbuildings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.libhhtypeofbuildings DROP CONSTRAINT libhhtypeofbuildings_user_id_foreign;
       public          postgres    false    232    3178    265         �           2606    26444 ;   libhhwallconmaterials libhhwallconmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhwallconmaterials
    ADD CONSTRAINT libhhwallconmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.libhhwallconmaterials DROP CONSTRAINT libhhwallconmaterials_user_id_foreign;
       public          postgres    false    234    265    3178         �           2606    26449 ?   libhhwatertenuralstatus libhhwatertenuralstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libhhwatertenuralstatus
    ADD CONSTRAINT libhhwatertenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.libhhwatertenuralstatus DROP CONSTRAINT libhhwatertenuralstatus_user_id_foreign;
       public          postgres    false    3178    236    265         �           2606    26454 -   liblivelihoods liblivelihoods_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.liblivelihoods
    ADD CONSTRAINT liblivelihoods_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.liblivelihoods DROP CONSTRAINT liblivelihoods_user_id_foreign;
       public          postgres    false    265    238    3178         �           2606    26459 1   libmaritalstatus libmaritalstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libmaritalstatus
    ADD CONSTRAINT libmaritalstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.libmaritalstatus DROP CONSTRAINT libmaritalstatus_user_id_foreign;
       public          postgres    false    265    240    3178         �           2606    26464 3   libmonthlyincomes libmonthlyincomes_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libmonthlyincomes
    ADD CONSTRAINT libmonthlyincomes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libmonthlyincomes DROP CONSTRAINT libmonthlyincomes_user_id_foreign;
       public          postgres    false    265    242    3178         �           2606    26469 3   libmunicipalities libmunicipalities_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libmunicipalities
    ADD CONSTRAINT libmunicipalities_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libmunicipalities DROP CONSTRAINT libmunicipalities_user_id_foreign;
       public          postgres    false    265    3178    244         �           2606    26474 9   libnutritionalstatus libnutritionalstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libnutritionalstatus
    ADD CONSTRAINT libnutritionalstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.libnutritionalstatus DROP CONSTRAINT libnutritionalstatus_user_id_foreign;
       public          postgres    false    3178    265    246         �           2606    26479 9   librelationshipheads librelationshipheads_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.librelationshipheads
    ADD CONSTRAINT librelationshipheads_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.librelationshipheads DROP CONSTRAINT librelationshipheads_user_id_foreign;
       public          postgres    false    3178    248    265         �           2606    26484 )   libreligions libreligions_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libreligions
    ADD CONSTRAINT libreligions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.libreligions DROP CONSTRAINT libreligions_user_id_foreign;
       public          postgres    false    265    250    3178         �           2606    26489 7   libroofconmaterials libroofconmaterials_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libroofconmaterials
    ADD CONSTRAINT libroofconmaterials_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.libroofconmaterials DROP CONSTRAINT libroofconmaterials_user_id_foreign;
       public          postgres    false    3178    265    252         �           2606    26494 1   libtenuralstatus libtenuralstatus_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libtenuralstatus
    ADD CONSTRAINT libtenuralstatus_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.libtenuralstatus DROP CONSTRAINT libtenuralstatus_user_id_foreign;
       public          postgres    false    3178    265    254         �           2606    26499 &   libtscshvcs libtscshvc_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libtscshvcs
    ADD CONSTRAINT libtscshvc_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.libtscshvcs DROP CONSTRAINT libtscshvc_user_id_foreign;
       public          postgres    false    3178    256    265         �           2606    26504 3   libtypeofprograms libtypeofprograms_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.libtypeofprograms
    ADD CONSTRAINT libtypeofprograms_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.libtypeofprograms DROP CONSTRAINT libtypeofprograms_user_id_foreign;
       public          postgres    false    265    258    3178                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3425.dat                                                                                            0000600 0004000 0002000 00000673712 14257013301 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623890768546	Olaco	Joel	Sangco	Jr.	\N	3	1	1996-09-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Mason	2	f	f	t	f	2022-06-20 23:58:00	2022-06-20 23:58:00
2	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623890768546	Olaco	Joel	Sangco	Sr.	\N	1	1	1966-12-17	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	13	\N	t	Labor	1	f	f	t	f	2022-06-21 23:58:00	2022-06-21 23:58:00
3	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623892807570	Galanida	Argie	Palos	\N	\N	3	1	2005-09-05	1	\N	f	f	Born again	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2022-06-22 23:58:00	2022-06-22 23:58:00
4	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623892807570	Galanida	Librada	Palos	\N	\N	5	2	1969-04-22	2	\N	f	f	Born again	f	\N	f	t	2	\N	f	0	19	\N	t	Labor	1	f	f	t	f	2022-06-23 23:58:00	2022-06-23 23:58:00
5	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623892807570	Galanida	Limuel Jay	Palos	\N	\N	3	1	1999-02-16	1	\N	f	f	Born again	f	\N	f	t	2	\N	t	33	0	5	f	Student	\N	f	f	t	f	2022-06-24 23:58:00	2022-06-24 23:58:00
6	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623892807570	Galanida	Manuel	Elpidas	Sr	\N	1	1	1964-11-14	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	1	f	f	t	f	2022-06-25 23:58:00	2022-06-25 23:58:00
7	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623892807570	Galanida	Manuel	Palos	Jr.	\N	3	1	1993-05-28	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	34	\N	t	Pamboy	2	t	f	t	f	2022-06-26 23:58:00	2022-06-26 23:58:00
8	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623895336712	Gumila	Anita	Bulasa	\N	\N	5	2	1961-04-20	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Labor	1	f	f	t	f	2022-06-27 23:58:00	2022-06-27 23:58:00
9	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623895336712	Gumila	Domico	Papa	\N	\N	5	1	1948-05-06	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	12	\N	t	Labor	1	f	f	t	f	2022-06-28 23:58:00	2022-06-28 23:58:00
10	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623895336712	Gumila	Madilyn	Bulasa	\N	\N	3	2	1990-08-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Sales lady	2	t	f	t	f	2022-06-29 23:58:00	2022-06-29 23:58:00
11	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623895336712	Gumila 	Nikko	Bulasa	\N	\N	3	1	2005-04-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	f	f	2022-06-30 23:58:00	2022-06-30 23:58:00
12	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623896960319	Jatico	Erenea	Gumila	\N	\N	1	2	1993-01-27	2	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	20	\N	t	Sales Associate 	2	t	f	t	f	2022-07-01 23:58:00	2022-07-01 23:58:00
13	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623896960319	Jatico	Jonkert	Gumila	\N	\N	3	1	2017-02-01	1	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	1	\N	f	Student	\N	f	f	f	f	2022-07-02 23:58:00	2022-07-02 23:58:00
14	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623896960319	Jatico	Joy Paul	Reserva	\N	\N	5	1	1996-03-29	2	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	2	t	f	t	f	2022-07-03 23:58:00	2022-07-03 23:58:00
15	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623898078840	Peñosa	Angela Chloe	Gumila	\N	\N	3	2	2012-11-24	1	\N	f	f	IFI	f	\N	f	t	2	\N	t	12	12	\N	t	Student	\N	f	f	f	f	2022-07-04 23:58:00	2022-07-04 23:58:00
16	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623898078840	Peñosa	Moises	Antiga	\N	\N	5	1	1986-07-26	2	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	18	\N	t	Driver 	1	t	f	t	f	2022-07-05 23:58:00	2022-07-05 23:58:00
17	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623898078840	Peñosa	Wilma	Gumila	\N	\N	5	2	1986-03-04	2	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	20	\N	t	BHW	1	t	f	t	f	2022-07-06 23:58:00	2022-07-06 23:58:00
18	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623899146044	Gumapac	Aira faith	Espera	\N	\N	3	2	2018-06-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	f	f	2022-07-07 23:58:00	2022-07-07 23:58:00
19	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623899146044	Gumapac	Angela	Baring	\N	\N	7	2	2009-02-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	f	f	2022-07-08 23:58:00	2022-07-08 23:58:00
20	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623899146044	Gumapac	Connie	Espera	\N	\N	5	2	1998-06-18	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2022-07-09 23:58:00	2022-07-09 23:58:00
21	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623899146044	Gumapac	Ronie	Bucag	\N	\N	5	1	1987-04-14	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Labor	1	f	f	t	f	2022-07-10 23:58:00	2022-07-10 23:58:00
22	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623900129722	Eballa	Raejaymar	Cranzo	\N	\N	3	1	2004-10-22	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2022-07-11 23:58:00	2022-07-11 23:58:00
23	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623900129722	Eballa	Ramon	Cranzo	Jr.	\N	3	1	2007-04-12	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	t	f	2022-07-12 23:58:00	2022-07-12 23:58:00
24	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623900129722	Eballa	Ramon 	Elnar	Sr	\N	5	1	1976-12-06	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Mason	1	f	f	t	f	2022-07-13 23:58:00	2022-07-13 23:58:00
25	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623900129722	Eballa	Ramsler	Cranzo	\N	\N	3	1	2015-12-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	1	1	\N	f	Student	\N	f	f	t	f	2022-07-14 23:58:00	2022-07-14 23:58:00
26	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623900129722	Eballa	Roselyn	Cranzo	\N	\N	5	2	1995-03-11	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Sari-sari store	1	f	f	t	f	2022-07-15 23:58:00	2022-07-15 23:58:00
27	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623906972430	Maravilles	Arljhun	Dumo	\N	\N	8	1	2008-05-28	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2022-07-16 23:58:00	2022-07-16 23:58:00
28	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623906972430	Beray	Jacqueline	Maravilles	\N	\N	3	2	2019-12-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-07-17 23:58:00	2022-07-17 23:58:00
29	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623906972430	Beray	Junmark	Aparejado	\N	\N	5	1	1997-10-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Farmer	1	t	f	t	f	2022-07-18 23:58:00	2022-07-18 23:58:00
30	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623906972430	Maravilles	Lea	Dumo	\N	\N	5	2	1998-11-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2022-07-19 23:58:00	2022-07-19 23:58:00
31	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623906972430	Beray	Lian Marco	Maravilles	\N	\N	3	1	2018-09-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-07-20 23:58:00	2022-07-20 23:58:00
32	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623908278056	Supas	Dexter	Aquilam	\N	\N	5	1	1999-01-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	22	7	t	Labor	2	t	f	t	f	2022-07-21 23:58:00	2022-07-21 23:58:00
33	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623908278056	Supas	Diether John	Beray	\N	\N	3	1	2018-11-22	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-07-22 23:58:00	2022-07-22 23:58:00
34	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623908278056	Beray	Jessel Jean	No middlename	\N	\N	5	2	2000-06-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	21	\N	f	Housewife	\N	f	f	t	f	2022-07-23 23:58:00	2022-07-23 23:58:00
35	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623909540502	Garde	Keziah	Piamonte	\N	\N	3	2	2021-05-16	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-07-24 23:58:00	2022-07-24 23:58:00
36	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623909540502	Garde	Noelito	No middlename	\N	\N	5	1	1997-02-09	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	22	\N	t	Labor	1	t	f	t	f	2022-07-25 23:58:00	2022-07-25 23:58:00
37	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623909540502	Piamonte	Shiela	Otacan	\N	\N	5	2	1998-11-18	1	\N	f	f	Inglesia ni Cristo	f	\N	f	t	2	\N	f	0	31	4	t	Housewife	\N	f	f	t	f	2022-07-26 23:58:00	2022-07-26 23:58:00
38	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623910307897	Flores	Felix	Cabuntokan	\N	\N	1	1	1952-07-14	4	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	16	\N	t	Labor	1	f	f	f	f	2022-07-27 23:58:00	2022-07-27 23:58:00
39	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623911071143	Flores	Jerome	Dagondon	\N	\N	8	1	1971-06-22	1	\N	f	f	Roman Catholic	t	1	f	t	2	\N	f	0	12	\N	t	No	\N	f	f	f	f	2022-07-28 23:58:00	2022-07-28 23:58:00
40	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623911071143	Dagondon	Ramona	Taladoc	\N	\N	1	2	1957-08-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	f	Street vonder	1	f	f	f	f	2022-07-29 23:58:00	2022-07-29 23:58:00
41	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623912487383	Arnego	Lemar	Magadan	\N	\N	3	1	1997-10-21	1	\N	f	f	Roman Catholiv	f	\N	f	t	2	\N	f	0	34	\N	f	DOH Region	3	t	t	t	f	2022-07-30 23:58:00	2022-07-30 23:58:00
42	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623912487383	Arnego	Linda	Magadan	\N	\N	5	2	1968-12-23	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Buy and sell	1	f	f	t	f	2022-07-31 23:58:00	2022-07-31 23:58:00
43	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623913382874	Arnego	Gelly Marceline	Magadan	\N	\N	5	2	1993-01-31	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	33	\N	t	Housewife	\N	t	f	t	f	2022-08-01 23:58:00	2022-08-01 23:58:00
44	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623913382874	Escayo	Gikeshia Micah	Arnego	\N	\N	3	2	2016-07-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-08-02 23:58:00	2022-08-02 23:58:00
45	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623913382874	Escayo	Hann Adamson	Arnego	\N	\N	3	1	2019-11-09	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-08-03 23:58:00	2022-08-03 23:58:00
46	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623913382874	Escayo	Micheal	Simangca	\N	\N	5	1	1988-01-13	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Constraction Worker	2	t	f	t	f	2022-08-04 23:58:00	2022-08-04 23:58:00
47	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623914701069	Bacquial	Gwyneth	Custan	\N	\N	4	2	2007-11-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2022-08-05 23:58:00	2022-08-05 23:58:00
48	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623914701069	Bacquial	John Carhl	Custan	\N	\N	4	1	2010-09-13	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	t	Student	\N	f	f	t	f	2022-08-06 23:58:00	2022-08-06 23:58:00
49	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623914701069	Bacquial	Johnny Chris	Custan	\N	\N	4	1	1997-02-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	34	34	\N	t	Student	\N	f	f	t	f	2022-08-07 23:58:00	2022-08-07 23:58:00
50	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623914701069	Bacquial	Rudy	Fedelis	Sr.	\N	5	1	1955-09-09	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farmer	1	f	f	t	f	2022-08-08 23:58:00	2022-08-08 23:58:00
51	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623914701069	Bacquial	Rufina	Aspe	\N	\N	5	2	1956-06-20	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2022-08-09 23:58:00	2022-08-09 23:58:00
52	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623916543210	Junio	Jemar	Morado	\N	\N	4	1	2007-10-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	f	f	2022-08-10 23:58:00	2022-08-10 23:58:00
53	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623916543210	Bacquial	Nelly	Fediles	\N	\N	5	2	1961-08-19	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	Farmer	1	f	f	t	f	2022-08-11 23:58:00	2022-08-11 23:58:00
54	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623916543210	Junio	Virgilio	Algodon	Sr.	\N	5	1	1956-03-08	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Farmer	1	f	f	t	f	2022-08-12 23:58:00	2022-08-12 23:58:00
55	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623916543210	Junio	Virgilio	Bacquial	Jr.	\N	3	1	2003-08-12	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2022-08-13 23:58:00	2022-08-13 23:58:00
56	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623918336358	Sorno	Gheane Mar	Junio	\N	\N	3	1	2012-04-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2022-08-14 23:58:00	2022-08-14 23:58:00
57	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623918336358	Junio	Jelian	No Middlename	\N	\N	3	2	2013-01-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	t	Student	\N	f	f	t	f	2022-08-15 23:58:00	2022-08-15 23:58:00
58	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623918336358	Junio	Nilber Marie 	Bacquial	\N	\N	5	2	1983-07-22	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Labor	1	f	f	f	f	2022-08-16 23:58:00	2022-08-16 23:58:00
59	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623919727280	Beray	Daisy Rose	Villaver	\N	\N	3	2	2002-06-05	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	31	31	2	t	Student	\N	f	f	t	f	2022-08-17 23:58:00	2022-08-17 23:58:00
60	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623919727280	Viray	Diosdado	Timkang	Sr.	\N	5	1	1964-06-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Municipal Guard	1	t	t	t	f	2022-08-18 23:58:00	2022-08-18 23:58:00
61	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623919727280	Villaver	Susan	Barazon	\N	\N	5	2	1968-10-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Housewife	\N	f	f	t	f	2022-08-19 23:58:00	2022-08-19 23:58:00
62	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623920772566	Beray	De Andrey	Endino	\N	\N	3	1	2017-05-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-08-20 23:58:00	2022-08-20 23:58:00
63	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623920772566	Endino	Dessery 	Tocmo	\N	\N	5	2	1994-12-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	20	20	\N	t	Housewife	\N	t	f	t	f	2022-08-21 23:58:00	2022-08-21 23:58:00
64	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623920772566	Beray	Dexter Jonh	Villaver	\N	\N	5	1	1993-11-28	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	34	34	\N	t	Welder 	2	t	f	t	f	2022-08-22 23:58:00	2022-08-22 23:58:00
65	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624053619721	Bronto	Ailene	Bacquial	\N	\N	5	2	1971-08-26	2	\N	f	f	Roman catholic	t	1	f	t	2	\N	f	0	34	\N	t	Food Vendor	1	f	f	f	f	2022-08-23 23:58:00	2022-08-23 23:58:00
66	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624053619721	Bronto	Jeliene	Bacquial	\N	\N	4	2	2006-05-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	f	Student	\N	f	f	f	f	2022-08-24 23:58:00	2022-08-24 23:58:00
67	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624053619721	Bronto	John Lloyd	Bacquial	\N	\N	3	1	2002-08-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	31	31	3	t	Student	\N	f	f	f	f	2022-08-25 23:58:00	2022-08-25 23:58:00
68	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624053619721	Bronto	Louie	Barreto	\N	\N	5	1	1971-03-29	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Food Vendor	\N	f	f	f	f	2022-08-26 23:58:00	2022-08-26 23:58:00
69	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624060237666	Oculam	Charls De	Rafols	\N	\N	4	1	2008-08-01	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2022-08-27 23:58:00	2022-08-27 23:58:00
70	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624060237666	Rafols	Jaime	Talidro	\N	\N	1	1	1960-02-10	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	14	\N	t	Farmers	1	f	f	t	f	2022-08-28 23:58:00	2022-08-28 23:58:00
71	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624060237666	Rafols 	Victorina	Bulasa	\N	\N	5	2	1963-07-16	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife	\N	f	f	t	f	2022-08-29 23:58:00	2022-08-29 23:58:00
72	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624061410914	Pitao	Charisma	Rafols	\N	\N	5	2	1983-10-03	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	1	\N	f	0	20	\N	t	Sari-sari store vendor	2	f	f	t	f	2022-08-30 23:58:00	2022-08-30 23:58:00
73	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624061410914	Pitao	Juanito	Oga	Jr.	\N	1	1	1986-04-16	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	16	\N	t	Mason	1	f	f	t	f	2022-08-31 23:58:00	2022-08-31 23:58:00
74	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624062504223	Mondano	Cris john	Man-on	\N	\N	3	1	2004-10-20	1	\N	f	f	Born Again	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2022-09-01 23:58:00	2022-09-01 23:58:00
75	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624062504223	Mondano	Criszel Mauren	Man-on	\N	\N	3	2	2018-04-24	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	0	\N	t	No	\N	f	f	t	f	2022-09-02 23:58:00	2022-09-02 23:58:00
76	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624062504223	Mondano	Maria Fe	Man-on	\N	\N	5	2	1981-12-01	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2022-09-03 23:58:00	2022-09-03 23:58:00
77	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624062504223	Mondano	Renato	Ampong	\N	\N	1	1	1979-05-22	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	32	\N	t	Farmer	1	t	f	t	f	2022-09-04 23:58:00	2022-09-04 23:58:00
78	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624063929879	Ala	Evalyn	Musca	\N	\N	5	2	1981-07-25	1	\N	f	f	INC	f	\N	f	t	2	\N	f	0	32	\N	t	Housewife	\N	f	f	f	f	2022-09-05 23:58:00	2022-09-05 23:58:00
79	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624063929879	Man-on	Rence 	Ala	\N	\N	3	1	2009-09-10	1	\N	f	f	INC	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	f	f	2022-09-06 23:58:00	2022-09-06 23:58:00
80	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624063929879	Man-on	Rex	Ala	\N	\N	3	1	2012-12-12	1	\N	f	f	INC	f	\N	f	t	2	\N	t	12	12	\N	t	Student	\N	f	f	f	f	2022-09-07 23:58:00	2022-09-07 23:58:00
81	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624063929879	Man-on	Rey	Sevella	\N	\N	1	1	1984-12-19	1	\N	f	f	INC	f	\N	f	t	1	\N	f	0	18	\N	t	Labor	1	f	f	f	f	2022-09-08 23:58:00	2022-09-08 23:58:00
82	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624063929879	Man-on	Stephanie	Ala	\N	\N	3	2	2005-10-02	1	\N	f	f	INC	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	f	f	2022-09-09 23:58:00	2022-09-09 23:58:00
83	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624063929879	Cuesta	Stephen 	Ala	\N	\N	7	1	2000-08-28	1	\N	f	f	INC	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	f	f	2022-09-10 23:58:00	2022-09-10 23:58:00
84	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624066571791	Flores	Gerry	Daguplo	\N	\N	1	1	1982-09-21	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Skilled worker	1	f	f	t	f	2022-09-11 23:58:00	2022-09-11 23:58:00
85	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624066571791	Flores	Kairos	Dingding	\N	\N	3	1	2006-04-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2022-09-12 23:58:00	2022-09-12 23:58:00
86	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624066571791	Flores	Kate Margo 	Daguplo	\N	\N	3	2	2012-03-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	12	12	\N	t	Student	\N	f	f	t	f	2022-09-13 23:58:00	2022-09-13 23:58:00
87	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624066571791	Flores	Kaye	Dingding	\N	\N	3	2	2007-06-14	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	t	18	18	\N	t	Student	\N	f	f	t	f	2022-09-14 23:58:00	2022-09-14 23:58:00
88	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624066571791	Flores	Kenlly	Dingding	\N	\N	3	1	2019-11-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-09-15 23:58:00	2022-09-15 23:58:00
89	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624066571791	Flores	Reynalyn	Dingding	\N	\N	5	2	1986-04-15	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	32	\N	t	Brgy. Treasurer	2	f	f	t	f	2022-09-16 23:58:00	2022-09-16 23:58:00
90	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624068042182	Makiling	Domingo	Mamza	Jr.	\N	1	1	1966-05-26	1	\N	f	f	Roman Catholic	t	1	f	t	2	\N	f	0	18	\N	t	No 	\N	f	f	t	f	2022-09-17 23:58:00	2022-09-17 23:58:00
91	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624068729767	Guergio	Alvino	Dacuya	Jr.	\N	3	1	1940-01-05	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Labor	1	f	f	t	f	2022-09-18 23:58:00	2022-09-18 23:58:00
92	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624068729767	Guergio	Alvino	Sangco	Sr.	\N	1	1	1950-02-06	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	14	\N	t	Farmer	1	f	f	t	f	2022-09-19 23:58:00	2022-09-19 23:58:00
93	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624068729767	Guergio	Josefina	Dacuya	\N	\N	5	2	1950-09-05	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife 	\N	f	f	t	f	2022-09-20 23:58:00	2022-09-20 23:58:00
94	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624070566388	Alcantara	Elton	No middlename	\N	\N	4	1	2003-12-20	1	\N	f	f	PACC	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	f	f	2022-09-21 23:58:00	2022-09-21 23:58:00
95	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624070566388	Junasa	Marcosa	Jumao-as	\N	\N	3	2	1949-10-23	2	\N	f	f	PACC	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	f	f	2022-09-22 23:58:00	2022-09-22 23:58:00
96	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624070566388	Junasa	Ricarte	Paler	Sr.	\N	1	1	1951-01-08	2	\N	f	f	PECC	f	\N	f	t	2	\N	f	0	18	\N	t	Farmer	1	f	f	f	f	2022-09-23 23:58:00	2022-09-23 23:58:00
97	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624070566388	Alcantara	Rico	No middlename	\N	\N	4	1	2002-09-17	1	\N	f	f	PACC	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	f	f	2022-09-24 23:58:00	2022-09-24 23:58:00
98	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624071794617	Durano	Jhonmiko	Dagondon	\N	\N	4	1	2000-04-11	1	\N	f	f	Bible Babtist	f	\N	f	t	2	\N	t	31	31	\N	t	Student	\N	t	f	t	f	2022-09-25 23:58:00	2022-09-25 23:58:00
99	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624071794617	Dagondon	Lolita	Mendoza	\N	\N	5	2	1954-08-06	2	\N	f	f	Bible Baptist	f	\N	f	t	2	\N	f	0	31	\N	t	Dressmaking	1	f	f	t	f	2022-09-26 23:58:00	2022-09-26 23:58:00
100	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624071794617	Dagondon	Victor	Taladoc	\N	\N	1	1	1953-07-21	2	\N	f	f	Bible Baptist	f	\N	f	t	2	\N	f	0	31	\N	t	Driver	1	f	f	t	f	2022-09-27 23:58:00	2022-09-27 23:58:00
101	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624077944484	Villacorta	Criselda	Panganoron	\N	\N	5	2	1973-02-20	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	19	\N	t	Brgy. Kagawad	2	f	f	t	f	2022-09-28 23:58:00	2022-09-28 23:58:00
102	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624077944484	Villacorta	Daniecris	Panganoron	\N	\N	3	1	2002-12-10	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	t	22	22	7	t	Student	\N	f	f	t	f	2022-09-29 23:58:00	2022-09-29 23:58:00
103	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624077944484	Villacorta	Daniel	Rejoy	\N	\N	1	1	1974-08-10	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	17	\N	t	Labor	2	t	f	t	f	2022-09-30 23:58:00	2022-09-30 23:58:00
104	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624077944484	Panganoron	Rhencil	No middlename	\N	\N	7	1	1995-07-09	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	33	\N	t	Job Order	3	f	f	t	f	2022-10-01 23:58:00	2022-10-01 23:58:00
105	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624079004217	Panganoron	Dionisia	Joson	\N	\N	8	2	1947-03-24	3	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	13	\N	t	No Occupation	\N	f	f	f	f	2022-10-02 23:58:00	2022-10-02 23:58:00
106	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624079004217	Aliwanag	Julia Mae	Rulida	\N	\N	3	2	2016-07-17	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	t	1	1	\N	f	Student	\N	f	f	t	f	2022-10-03 23:58:00	2022-10-03 23:58:00
107	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624079004217	Rulida	Rubymae	Panganoron	\N	\N	1	2	1992-04-30	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	34	\N	t	Sales Lady	2	t	f	t	f	2022-10-04 23:58:00	2022-10-04 23:58:00
108	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624080028682	Bacquial	Nieves	Libarios	\N	\N	5	2	1953-11-26	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	20	\N	t	Brgy. Captain	2	f	f	f	f	2022-10-05 23:58:00	2022-10-05 23:58:00
109	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624080028682	Bacquial	Oscar	Mamza	\N	\N	1	1	1953-03-23	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	16	\N	t	Farmer	2	f	f	f	f	2022-10-06 23:58:00	2022-10-06 23:58:00
110	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624080867233	Pabillore	Alma	Makiling	\N	\N	5	2	1972-08-12	2	\N	f	f	Roman Catholic	f	\N	t	t	2	\N	f	0	32	\N	t	OFW	3	t	f	t	f	2022-10-07 23:58:00	2022-10-07 23:58:00
111	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624080867233	Pabillore	Bonifacio	Baguio	\N	\N	1	1	1965-01-14	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Skilled worker	2	t	f	t	f	2022-10-08 23:58:00	2022-10-08 23:58:00
112	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624080867233	Pabillore	Jelyn	Makiling	\N	\N	3	2	1998-06-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	34	34	\N	t	Student	\N	t	f	t	f	2022-10-09 23:58:00	2022-10-09 23:58:00
113	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624270443158	Bacquial	Ely Clint	Daguplo	\N	\N	3	1	1995-04-16	1	\N	f	f	Born Again	f	\N	f	f	2	\N	f	0	17	\N	f	Labor	1	f	f	t	f	2022-10-10 23:58:00	2022-10-10 23:58:00
114	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624270443158	Bacquial	Gavino	Mamza	Jr.	\N	1	1	1966-04-19	2	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	16	\N	f	Farmer	1	f	f	t	f	2022-10-11 23:58:00	2022-10-11 23:58:00
115	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624270443158	Bacquial	Sonia	Daguplo	\N	\N	5	2	1969-09-09	2	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	Housewife 	\N	f	f	t	f	2022-10-12 23:58:00	2022-10-12 23:58:00
116	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624272461218	Bacquial	Hernanita	Mendoza	\N	\N	5	2	1952-02-16	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Farmer	1	f	f	t	f	2022-10-13 23:58:00	2022-10-13 23:58:00
117	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624272461218	Mendoza	Leonila	Suganob	\N	\N	8	2	1927-01-15	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	14	\N	t	No 	\N	f	f	t	f	2022-10-14 23:58:00	2022-10-14 23:58:00
118	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624272461218	Bacquial	Rogelio	Mamza	\N	\N	1	1	1948-06-21	2	\N	f	f	Roman Catholic	t	1	f	f	2	\N	f	0	16	\N	t	Farmer	1	f	f	t	f	2022-10-15 23:58:00	2022-10-15 23:58:00
119	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624321938643	Relabo	Merlinda	Samiao	\N	\N	1	2	1976-10-29	2	\N	f	f	Lord Jesus Christ	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2022-10-16 23:58:00	2022-10-16 23:58:00
120	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624321938643	Relabo	Teofredo	Bucabal	\N	\N	5	1	1966-01-26	2	\N	f	f	Lord Jesus Christ 	f	\N	f	t	2	\N	f	0	16	\N	t	Driver	1	f	f	t	f	2022-10-17 23:58:00	2022-10-17 23:58:00
121	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624322627355	Cabrera	Hazyl Jean	Espinola	\N	\N	5	2	1997-10-04	1	\N	f	f	Lord Jesus Christ	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	t	f	t	f	2022-10-18 23:58:00	2022-10-18 23:58:00
122	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624322627355	Relabo	Romel 	Samiao	\N	\N	1	1	1997-07-17	1	\N	f	f	Lord Jesus Christ	f	\N	f	t	2	\N	f	0	19	\N	t	Conductor 	1	t	f	t	f	2022-10-19 23:58:00	2022-10-19 23:58:00
123	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624323124333	Relabo	Chariemay	Esquadra	\N	\N	5	2	1998-05-11	2	\N	f	f	Lord Jesus Christ	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2022-10-20 23:58:00	2022-10-20 23:58:00
124	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624323124333	Relabo	Rodel	Samiao	\N	\N	1	1	1999-02-10	2	\N	f	f	Lord Jesus Christ	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	f	t	f	2022-10-21 23:58:00	2022-10-21 23:58:00
125	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624323124333	Relabo	Shaira Kim	Esquadra	\N	\N	3	2	2016-10-01	1	\N	f	f	Lord Jesus Christ	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	f	f	t	f	2022-10-22 23:58:00	2022-10-22 23:58:00
126	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624324367864	Maata	Jonalyn	Hemongala	\N	\N	5	2	1986-07-27	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2022-10-23 23:58:00	2022-10-23 23:58:00
127	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624324367864	Maata	Leonil Ritchie	Hemongala	\N	\N	3	1	2008-12-02	1	\N	f	f	Born Again	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2022-10-24 23:58:00	2022-10-24 23:58:00
128	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624324367864	Maata	Rodel	Anino	\N	\N	1	1	1984-05-13	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	20	\N	t	Driver	2	f	f	t	f	2022-10-25 23:58:00	2022-10-25 23:58:00
129	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624324367864	Maata	Shendyl Nicole	Hemongala	\N	\N	3	2	2010-04-27	1	\N	f	f	Born Again	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2022-10-26 23:58:00	2022-10-26 23:58:00
130	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624324367864	Maata	Shiela Mae	Hemongala	\N	\N	3	2	2003-09-25	1	\N	f	f	Born Again	f	\N	f	t	2	\N	t	21	21	3	t	Student	\N	f	f	t	f	2022-10-27 23:58:00	2022-10-27 23:58:00
131	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624326631636	Bestudio	James	Cabasag	\N	\N	3	1	2018-03-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	No	\N	t	f	t	f	2022-10-28 23:58:00	2022-10-28 23:58:00
132	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624326631636	Bestudio	Jeric	Cabasag	\N	\N	3	1	2015-10-02	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	t	f	t	f	2022-10-29 23:58:00	2022-10-29 23:58:00
133	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624326631636	Bestudio	Johnrussell	Cabasag	\N	\N	3	1	2014-06-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	11	11	\N	f	Student	\N	t	f	t	f	2022-10-30 23:58:00	2022-10-30 23:58:00
134	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624326631636	Bestudio	Romeo	Capistrano	Jr.	\N	1	1	1987-11-16	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Bakery	1	t	f	t	f	2022-10-31 23:58:00	2022-10-31 23:58:00
135	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624326631636	Bestudio	Sarisa	Cabasag	\N	\N	4	2	1989-10-12	2	\N	f	f	Pentecostal	f	\N	f	f	2	\N	f	0	31	\N	t	Housewife	\N	t	f	t	f	2022-11-01 23:58:00	2022-11-01 23:58:00
136	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624328092078	Sangco	Ben	Loayon	\N	\N	1	1	1976-01-02	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	2	t	f	t	f	2022-11-02 23:58:00	2022-11-02 23:58:00
137	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624328092078	Sangco	Marina	Fostanes	\N	\N	5	2	1984-03-20	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	20	\N	t	Processer 	2	t	f	t	f	2022-11-03 23:58:00	2022-11-03 23:58:00
138	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624328920787	Maquiling	Claudette Dindy	Siman	\N	\N	5	2	1989-12-09	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Babysitter	1	f	f	t	f	2022-11-04 23:58:00	2022-11-04 23:58:00
139	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624328920787	Maquiling	Judy 	Siman	\N	\N	3	2	2016-06-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	t	f	2022-11-05 23:58:00	2022-11-05 23:58:00
140	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624328920787	Maquiling	Junel	Asuzenas	\N	\N	1	1	1985-07-15	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	f	t	f	2022-11-06 23:58:00	2022-11-06 23:58:00
141	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624329554203	Himarangan	Chris	Sagaad	Jr.	\N	3	1	2010-09-25	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	f	Student	\N	f	f	t	f	2022-11-07 23:58:00	2022-11-07 23:58:00
142	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624329554203	Himarangan	Chris	Torralba	\N	\N	1	1	1989-03-24	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Water boy	2	t	f	t	f	2022-11-08 23:58:00	2022-11-08 23:58:00
143	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624329554203	Himarangan	Kristinn Mae	Sagaad	\N	\N	3	2	2009-07-24	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2022-11-09 23:58:00	2022-11-09 23:58:00
144	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624329554203	Himarangan	Marianoemi Beth	Sagaad	\N	\N	5	2	1988-06-28	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2022-11-10 23:58:00	2022-11-10 23:58:00
145	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624330673177	Judaya	Leonardo	Embeno	Jr.	\N	1	1	1961-11-21	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	17	\N	t	Farmer	1	f	f	t	f	2022-11-11 23:58:00	2022-11-11 23:58:00
146	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624330673177	Judaya	Marilyn	Padilla	\N	\N	5	2	1966-06-04	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	17	\N	t	Housekepper 	\N	f	f	t	f	2022-11-12 23:58:00	2022-11-12 23:58:00
147	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624330673177	Judaya	Shaira	Padilla	\N	\N	3	2	2003-03-11	1	\N	f	f	INC	f	\N	f	t	2	\N	t	22	22	1	t	Student	\N	f	f	t	f	2022-11-13 23:58:00	2022-11-13 23:58:00
148	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624331828256	Judaya	Jekie	Berago	\N	\N	3	1	2014-10-10	1	\N	f	f	INC	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	t	f	2022-11-14 23:58:00	2022-11-14 23:58:00
149	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624331828256	Judaya	Jhade	Padilla	\N	\N	1	1	1988-05-01	1	\N	f	f	INC	f	\N	f	t	2	\N	f	0	17	\N	t	Labor	1	f	f	t	f	2022-11-15 23:58:00	2022-11-15 23:58:00
150	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624332303456	Rontal	Concepcion	Dagondon	\N	\N	1	2	1963-12-08	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Farmer 	1	f	f	f	f	2022-11-16 23:58:00	2022-11-16 23:58:00
151	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624332303456	Rontal	Joseph	None	\N	\N	3	1	1998-07-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	34	34	\N	t	Student	\N	f	f	f	f	2022-11-17 23:58:00	2022-11-17 23:58:00
152	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624340724023	Gumapac	Magdalena	Florea	\N	\N	1	2	1941-08-28	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Dressmaker	1	f	f	f	f	2022-11-18 23:58:00	2022-11-18 23:58:00
153	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624341484983	Olivo	Christian	Suganob	\N	\N	1	1	1999-07-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	2	f	f	t	f	2022-11-19 23:58:00	2022-11-19 23:58:00
154	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624342290234	Libres	Brillalyn	Mapa	\N	\N	4	2	2003-08-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	f	f	2022-11-20 23:58:00	2022-11-20 23:58:00
155	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624342290234	Gingo	Leo Niño	Panganoron	\N	\N	3	1	2016-01-16	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2022-11-21 23:58:00	2022-11-21 23:58:00
156	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624342290234	Gingo	Leomar	Panganoron	\N	\N	3	1	2004-06-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2022-11-22 23:58:00	2022-11-22 23:58:00
157	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624342290234	Gingo	Leonides	Cabellanes	Sr.	\N	1	1	1981-11-06	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	32	\N	t	Driver 	1	f	f	t	f	2022-11-23 23:58:00	2022-11-23 23:58:00
158	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624342290234	Gingo	Leonidez	Panganoron	Jr.	\N	3	1	2011-06-28	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	t	Student	\N	f	f	t	f	2022-11-24 23:58:00	2022-11-24 23:58:00
159	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624342290234	Gingo	Marivic 	Panganoron	\N	\N	5	2	1978-06-28	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife	\N	f	f	t	f	2022-11-25 23:58:00	2022-11-25 23:58:00
160	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624344238237	Rulida	Gemma	Panganoron	\N	\N	5	2	1969-09-25	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	14	\N	t	Housekeeper	1	t	f	t	f	2022-11-26 23:58:00	2022-11-26 23:58:00
161	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624344238237	Rulida	Khiam Genesto	Panganoron	\N	\N	3	1	1989-05-27	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	20	20	\N	t	Labor	2	f	f	t	f	2022-11-27 23:58:00	2022-11-27 23:58:00
162	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624344238237	Rulida	Lourabel	Panganoron	\N	\N	3	2	2000-10-12	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	t	31	31	\N	t	Student	\N	f	f	t	f	2022-11-28 23:58:00	2022-11-28 23:58:00
163	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624344238237	Rulida	Micah Quizia	Panganoron	\N	\N	3	2	2004-06-22	1	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2022-11-29 23:58:00	2022-11-29 23:58:00
164	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624344238237	Rulida	Nestor	Lozada	\N	\N	1	1	1968-11-15	2	\N	f	f	4 Square Gospel Church	f	\N	f	t	2	\N	f	0	15	\N	t	Farmer	1	t	f	t	f	2022-11-30 23:58:00	2022-11-30 23:58:00
165	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	Dacuya	Elena	Sangco	\N	\N	5	2	1962-09-29	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2022-12-01 23:58:00	2022-12-01 23:58:00
166	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	Dacuya	Emilyn	Sangco	\N	\N	3	2	1987-11-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Sales Lady	2	t	f	t	f	2022-12-02 23:58:00	2022-12-02 23:58:00
167	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	Dacuya	Esmael	Timon	Jr.	\N	1	1	1962-12-13	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	14	\N	t	Farmer	1	f	f	t	f	2022-12-03 23:58:00	2022-12-03 23:58:00
168	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	Dacuya	Genifer	Sangco	\N	\N	3	2	2005-03-16	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2022-12-04 23:58:00	2022-12-04 23:58:00
169	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	Dacuya	Jomar	Sangco	\N	\N	3	1	1999-07-28	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	33	33	\N	t	Student	\N	f	f	t	f	2022-12-05 23:58:00	2022-12-05 23:58:00
170	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	Dacuya	Jona	Sangco	\N	\N	3	2	1990-05-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	Sales Lady	2	t	f	t	f	2022-12-06 23:58:00	2022-12-06 23:58:00
171	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624496450904	Dacuya	Jujie	Sangco	\N	\N	3	1	1992-10-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	f	Company Employee	2	f	f	t	f	2022-12-07 23:58:00	2022-12-07 23:58:00
172	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624498088993	Oculam	Pilar	Sangco	\N	\N	5	2	1959-07-31	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Housewife	\N	f	f	t	f	2022-12-08 23:58:00	2022-12-08 23:58:00
173	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624498088993	Oculam	Victor	Apigo	\N	\N	1	1	1949-12-15	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Farmer	1	f	f	t	f	2022-12-09 23:58:00	2022-12-09 23:58:00
174	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624498758406	Himarangan	Felix	Torralba	\N	\N	1	1	1967-03-04	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	32	\N	t	Farmer	1	f	f	t	f	2022-12-10 23:58:00	2022-12-10 23:58:00
175	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624498758406	Himarangan	Leonard	Mangmang	\N	\N	3	1	2001-09-08	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	31	31	\N	t	Student	\N	f	f	t	f	2022-12-11 23:58:00	2022-12-11 23:58:00
176	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624498758406	Himarangan	Ritchel	Mangmang	\N	\N	5	2	1983-01-31	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Sari-sari store vendor	1	f	f	t	f	2022-12-12 23:58:00	2022-12-12 23:58:00
177	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624499716465	Berago	Alvin	Pinahan	\N	\N	3	1	2016-04-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2022-12-13 23:58:00	2022-12-13 23:58:00
178	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624499716465	Pinahan	Jovelyn	Pinakilid	\N	\N	5	2	2000-04-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife	\N	f	f	t	f	2022-12-14 23:58:00	2022-12-14 23:58:00
179	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624499716465	Berago	Marvin	Olaco	\N	\N	1	1	1992-01-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Driver	1	f	f	t	f	2022-12-15 23:58:00	2022-12-15 23:58:00
180	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624500403678	Dumo	Arjay	Berago	\N	\N	3	1	2012-02-20	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	f	Student	\N	f	f	t	f	2022-12-16 23:58:00	2022-12-16 23:58:00
181	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624500403678	Berago	Arlyn	Olaco	\N	\N	5	2	1989-11-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2022-12-17 23:58:00	2022-12-17 23:58:00
182	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624500403678	Dumo	Jeffrey	Jalop	\N	\N	1	1	1984-12-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Labor	1	f	f	t	f	2022-12-18 23:58:00	2022-12-18 23:58:00
183	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624501066210	Villos	Aira Shen	Hinayon	\N	\N	3	2	2012-08-31	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	f	Student	\N	f	f	f	f	2022-12-19 23:58:00	2022-12-19 23:58:00
184	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624501066210	Hinayon	Lenley	Samosino	\N	\N	5	2	1981-07-24	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	f	f	2022-12-20 23:58:00	2022-12-20 23:58:00
185	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624501066210	Villos	Renante	Quimpan	\N	\N	1	1	1980-03-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Labor	1	f	f	f	f	2022-12-21 23:58:00	2022-12-21 23:58:00
186	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624501066210	Villos	Rich Lester	Hinayon	\N	\N	3	1	2009-05-13	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	f	f	2022-12-22 23:58:00	2022-12-22 23:58:00
187	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624501066210	Villos	Then Kyle	Hinayon	\N	\N	3	1	2015-08-27	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	f	f	2022-12-23 23:58:00	2022-12-23 23:58:00
188	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624502685381	Fediles	Althea Grace	Laurente	\N	\N	3	2	2006-10-20	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2022-12-24 23:58:00	2022-12-24 23:58:00
189	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624502685381	Fediles	Bernardo	Pabatang	Jr	\N	1	1	1968-03-14	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Farmer	1	f	f	t	f	2022-12-25 23:58:00	2022-12-25 23:58:00
190	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624502685381	Laurente	Elisabeth	Sajol	\N	\N	5	2	1968-07-28	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	t	f	2022-12-26 23:58:00	2022-12-26 23:58:00
191	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624502685381	Barrieces	Jessabel	Laurente	\N	\N	7	2	1997-01-13	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Maid	1	t	f	t	f	2022-12-27 23:58:00	2022-12-27 23:58:00
192	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624502685381	Laurente	Joebel	Sajol	\N	\N	3	1	1993-06-11	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	12	\N	f	Labor	1	f	f	f	f	2022-12-28 23:58:00	2022-12-28 23:58:00
193	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624503644753	Sangco	Benjie	Lacquarin	\N	\N	3	1	1989-07-05	1	\N	f	f	INC	f	\N	f	t	2	\N	f	0	34	\N	t	Minister of INC	2	f	f	t	f	2022-12-29 23:58:00	2022-12-29 23:58:00
194	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624503644753	Sangco	Juanita	Lacquarin	\N	\N	1	2	1956-06-19	3	\N	f	f	INC	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	t	f	2022-12-30 23:58:00	2022-12-30 23:58:00
195	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624504207795	Sangco	Benjamin	Lacquarin	Jr.	\N	1	1	1973-10-27	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	18	\N	t	Driver	1	f	f	t	f	2022-12-31 23:58:00	2022-12-31 23:58:00
196	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624504207795	Sangco	Marbel	Siman	\N	\N	3	2	2000-07-12	1	\N	f	f	INC	f	\N	f	t	2	\N	t	22	22	5	t	None	\N	f	f	t	f	2023-01-01 23:58:00	2023-01-01 23:58:00
197	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624504207795	Sangco	Marclen	Lacquarin	\N	\N	3	1	2010-02-05	1	\N	f	f	INC	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	t	f	2023-01-02 23:58:00	2023-01-02 23:58:00
198	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624504207795	Sangco	Marven	Lacquarin	\N	\N	3	1	2008-01-30	1	\N	f	f	INC	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2023-01-03 23:58:00	2023-01-03 23:58:00
199	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624504207795	Sangco	Rosemarie	Siman	\N	\N	5	2	1977-04-03	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	t	f	2023-01-04 23:58:00	2023-01-04 23:58:00
200	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624505474435	Sangco	Charanie	Yecyec	\N	\N	3	2	1998-03-19	1	\N	f	f	INC	f	\N	f	t	2	\N	f	34	34	\N	t	PSA	2	t	f	t	f	2023-01-05 23:58:00	2023-01-05 23:58:00
201	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624505474435	Sangco	Chelou 	Yecyec	\N	\N	3	1	1997-02-28	1	\N	f	f	INC	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	f	t	f	2023-01-06 23:58:00	2023-01-06 23:58:00
202	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624505474435	Sangco	Maria Fe	Yecyec	\N	\N	5	2	1969-05-21	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2023-01-07 23:58:00	2023-01-07 23:58:00
203	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624505474435	Sangco	Ronnie	Lacquarin	\N	\N	1	1	1976-10-21	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	18	\N	t	Mason	2	f	f	t	f	2023-01-08 23:58:00	2023-01-08 23:58:00
204	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624505474435	Sangco	Sheina	Lacquarin	\N	\N	3	2	2005-03-18	1	\N	f	f	INC	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2023-01-09 23:58:00	2023-01-09 23:58:00
205	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624506436955	Santiago	James Andrew 	Bombio	\N	\N	8	1	2016-12-05	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	f	2023-01-10 23:58:00	2023-01-10 23:58:00
206	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624506436955	Sangco	Rafael	Bacquial	\N	\N	1	1	1967-10-27	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Labor	1	f	f	t	f	2023-01-11 23:58:00	2023-01-11 23:58:00
207	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624506436955	Bombio	Susan	Lacquarin	\N	\N	5	2	1964-12-24	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Housewife	\N	f	f	t	f	2023-01-12 23:58:00	2023-01-12 23:58:00
208	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624513251746	Dediles	Evilinda	Bacquial	\N	\N	3	2	1989-05-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	12	\N	f	None	\N	f	f	t	f	2023-01-13 23:58:00	2023-01-13 23:58:00
209	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624513251746	Bacquial	Lucita	Mamza	\N	\N	1	2	1963-04-24	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housekeeper	1	f	f	t	f	2023-01-14 23:58:00	2023-01-14 23:58:00
210	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514175920	Duroy	Neo Ray	Dediles	\N	\N	3	1	2021-01-01	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-01-15 23:58:00	2023-01-15 23:58:00
211	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514175920	Dediles	Neorelyn	Bacquial	\N	\N	5	2	1992-01-01	1	\N	f	f	Born Again	f	\N	f	t	2	\N	t	34	34	\N	t	Student	\N	f	f	t	f	2023-01-16 23:58:00	2023-01-16 23:58:00
212	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514175920	Duroy	Ramon	Dumangas	\N	\N	1	1	1991-07-07	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	20	\N	t	Driver	2	f	f	f	f	2023-01-17 23:58:00	2023-01-17 23:58:00
213	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514175920	Duroy	Rex Ben	Dediles	\N	\N	3	1	2018-02-13	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-01-18 23:58:00	2023-01-18 23:58:00
214	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514875159	Servado	Junry	Abean	\N	\N	1	1	1983-08-20	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	34	\N	t	Farm Labor	1	t	f	t	f	2023-01-19 23:58:00	2023-01-19 23:58:00
215	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514875159	Servado	Marialyn	Dediles	\N	\N	5	2	1987-07-15	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	34	\N	t	Teacher	4	f	t	t	f	2023-01-20 23:58:00	2023-01-20 23:58:00
216	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624514875159	Servado	Zed	Dediles	\N	\N	3	1	2019-08-13	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-01-21 23:58:00	2023-01-21 23:58:00
217	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624515589267	Bacquial	Manuel	Mamza	\N	\N	1	1	1957-11-04	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	14	\N	t	Driver	1	f	f	t	f	2023-01-22 23:58:00	2023-01-22 23:58:00
218	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624515589267	Lacquarin	Minda	Simblante	\N	\N	5	2	1957-11-20	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	15	\N	f	Housewife	\N	f	f	t	f	2023-01-23 23:58:00	2023-01-23 23:58:00
219	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624515589267	Bacquial	Welmer	Linguez	\N	\N	3	1	1993-02-12	1	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	33	\N	t	Sales boy	2	f	f	t	f	2023-01-24 23:58:00	2023-01-24 23:58:00
220	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	Rafols	Anita	Flores	\N	\N	5	2	1970-08-21	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2023-01-25 23:58:00	2023-01-25 23:58:00
221	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	Rafols	Chary Mae	Flores	\N	\N	3	2	1998-06-05	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	34	34	\N	t	Student	\N	f	f	t	f	2023-01-26 23:58:00	2023-01-26 23:58:00
222	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	Rafols	Constancio	Talidro	\N	\N	1	1	1963-12-01	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Brgy. Kagawad	2	f	f	t	f	2023-01-27 23:58:00	2023-01-27 23:58:00
223	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	Rafols	John Paul	Flores	\N	\N	3	1	2000-06-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	32	32	\N	t	Student	\N	f	f	t	f	2023-01-28 23:58:00	2023-01-28 23:58:00
224	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	Rafols	Mark Gabriel	Flores	\N	\N	3	1	2008-10-27	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2023-01-29 23:58:00	2023-01-29 23:58:00
225	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	Rafols	Nico Rhey	Flores	\N	\N	3	1	2002-09-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	t	f	2023-01-30 23:58:00	2023-01-30 23:58:00
226	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624666523790	Rafols	Norphen	Flores	\N	\N	3	1	1991-10-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	f	Labor	1	f	f	f	t	2023-01-31 23:58:00	2023-01-31 23:58:00
227	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624668278548	Supas	Eliza	Rafols	\N	\N	5	2	1978-09-16	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife 	\N	f	f	t	f	2023-02-01 23:58:00	2023-02-01 23:58:00
228	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624668278548	Supas	Jocelle	Rafols	\N	\N	3	2	2007-04-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	t	f	2023-02-02 23:58:00	2023-02-02 23:58:00
229	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624668278548	Siman	Justiano	Supas	\N	\N	1	1	1971-08-17	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farmer	1	f	f	t	f	2023-02-03 23:58:00	2023-02-03 23:58:00
230	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624668278548	Supas	Justine	Rafols	\N	\N	3	1	2008-08-12	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2023-02-04 23:58:00	2023-02-04 23:58:00
231	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624668278548	Damalerio	Rey	Rafols	\N	\N	3	1	2001-03-10	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	f	f	2023-02-05 23:58:00	2023-02-05 23:58:00
232	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624669571976	Rafols	Aira Mae	Pogoy	\N	\N	3	2	2013-10-12	1	\N	f	f	UPC	f	\N	f	t	2	\N	t	11	11	\N	f	Student	\N	f	f	t	f	2023-02-06 23:58:00	2023-02-06 23:58:00
233	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624669571976	Rafols	Airen Jane	Pogoy	\N	\N	3	2	2010-04-22	1	\N	f	f	UPC	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2023-02-07 23:58:00	2023-02-07 23:58:00
234	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624669571976	Fafols	Irenio	Talidro	Jr.	\N	1	1	1974-02-27	2	\N	f	f	UPC	f	\N	f	t	2	\N	f	0	13	\N	f	Labor	2	t	f	t	f	2023-02-08 23:58:00	2023-02-08 23:58:00
235	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624669571976	Rafols	Jennilyn	Pogoy	\N	\N	5	2	1984-07-10	2	\N	f	f	UPC	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2023-02-09 23:58:00	2023-02-09 23:58:00
236	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624670302458	Himarangan	Alfredo	Torralba	\N	\N	1	1	1962-05-25	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Driver	1	t	f	t	f	2023-02-10 23:58:00	2023-02-10 23:58:00
237	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624670302458	Himarangan	Esmeralda	Talidro	\N	\N	5	2	1963-03-27	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	f	Housewife	\N	t	f	t	f	2023-02-11 23:58:00	2023-02-11 23:58:00
238	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624670302458	Talidro	Rosalia	Bagolor	\N	\N	8	2	1944-02-05	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	13	\N	t	Housekeeper	\N	f	f	f	t	2023-02-12 23:58:00	2023-02-12 23:58:00
239	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624671191601	Silvano	Alejandro	Cortez	\N	\N	1	1	1981-05-06	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	33	\N	t	Labor	1	f	f	t	f	2023-02-13 23:58:00	2023-02-13 23:58:00
240	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624671191601	Silvano	Andrea Mae	Man-on	\N	\N	3	2	2019-08-26	1	\N	f	f	INC	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-02-14 23:58:00	2023-02-14 23:58:00
241	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624671191601	Silvano	Jericho 	Man-on	\N	\N	3	1	2011-02-19	1	\N	f	f	INC	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	t	f	2023-02-15 23:58:00	2023-02-15 23:58:00
242	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624671191601	Silvano	Mark Andrew	Man-on	\N	\N	3	1	2009-03-06	1	\N	f	f	INC	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2023-02-16 23:58:00	2023-02-16 23:58:00
243	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624671191601	Silvano	Marlyn	Man-on	\N	\N	5	2	1987-11-19	2	\N	f	f	INC	f	\N	f	t	2	\N	f	0	17	\N	f	Housewife	\N	f	f	t	f	2023-02-17 23:58:00	2023-02-17 23:58:00
244	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624672038964	Bernaldez	Angel Kristoff	Rosal	\N	\N	3	1	2014-12-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	t	f	2023-02-18 23:58:00	2023-02-18 23:58:00
245	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624672038964	Bernaldez	Brant Angelo	Rosal	\N	\N	3	1	2003-07-31	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	t	f	2023-02-19 23:58:00	2023-02-19 23:58:00
246	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624672038964	Bernaldez	Grace	Rosal	\N	\N	5	2	1984-01-03	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2023-02-20 23:58:00	2023-02-20 23:58:00
247	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624672038964	Bernaldez	Jerace Lyne Angel	Rosal	\N	\N	3	2	2002-01-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	31	31	\N	t	Student	\N	f	f	t	f	2023-02-21 23:58:00	2023-02-21 23:58:00
248	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624672038964	Bernaldez	Jeralon	Talidro	\N	\N	1	1	1980-05-23	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Farmer	2	t	f	t	f	2023-02-22 23:58:00	2023-02-22 23:58:00
249	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624672038964	Bernaldez	Zach Angelo	Rosal	\N	\N	3	1	2017-09-27	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	1	1	\N	f	Student	\N	f	f	t	f	2023-02-23 23:58:00	2023-02-23 23:58:00
250	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Maricel	Monato	\N	\N	5	2	1981-08-26	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife	\N	f	f	t	f	2023-02-24 23:58:00	2023-02-24 23:58:00
251	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Nash Miguel	Monato	\N	\N	3	1	2011-06-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	f	Student	\N	f	f	t	f	2023-02-25 23:58:00	2023-02-25 23:58:00
252	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Nic Dharyl	Monato	\N	\N	3	1	2001-07-02	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	1	f	f	t	f	2023-02-26 23:58:00	2023-02-26 23:58:00
253	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Nikko Adrian	Monato	\N	\N	3	1	2008-12-22	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2023-02-27 23:58:00	2023-02-27 23:58:00
254	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Pepe	Padilla	Je	\N	1	1	1974-05-21	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Labor	1	f	f	t	f	2023-02-28 23:58:00	2023-02-28 23:58:00
255	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Precelle Alexa	Monato	\N	\N	3	2	2005-12-16	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	t	f	2023-03-01 23:58:00	2023-03-01 23:58:00
256	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Precioue Alliah	Monato	\N	\N	3	2	2019-11-22	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-03-02 23:58:00	2023-03-02 23:58:00
257	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624673173081	Talidro	Princess Arianne	Monato	\N	\N	3	2	2000-03-14	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	33	33	\N	t	Student	\N	f	f	t	f	2023-03-03 23:58:00	2023-03-03 23:58:00
258	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624674627997	Miking	Jhonas Raphael	Talidro	\N	\N	4	1	2007-08-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	f	f	2023-03-04 23:58:00	2023-03-04 23:58:00
259	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624674627997	Talidro	Nicanora	Padilla	\N	\N	5	2	1952-04-06	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2023-03-05 23:58:00	2023-03-05 23:58:00
260	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624674627997	Talidro	Pepe	Antigra	Sr.	\N	1	1	1947-12-08	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	1	f	f	t	f	2023-03-06 23:58:00	2023-03-06 23:58:00
261	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624675487471	Talidro	Harvey Camille	Doñas	\N	\N	3	2	2012-05-05	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	f	Student	\N	f	f	t	f	2023-03-07 23:58:00	2023-03-07 23:58:00
262	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624675487471	Talidro	Herman	Padilla	\N	\N	1	1	1977-01-13	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Employee	2	f	f	t	f	2023-03-08 23:58:00	2023-03-08 23:58:00
263	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624675487471	Talidro	Herween	Doñas	\N	\N	3	2	2011-04-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	t	f	2023-03-09 23:58:00	2023-03-09 23:58:00
264	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676266975	Bacaron	Ailyn	Oser	\N	\N	3	2	2018-11-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	f	2023-03-10 23:58:00	2023-03-10 23:58:00
265	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676266975	Bacaron	Dennis	Bolotaolo	\N	\N	1	1	1997-12-14	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Labor	2	f	f	f	f	2023-03-11 23:58:00	2023-03-11 23:58:00
266	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676266975	Oser	Mary Joy	Ballesteros	\N	\N	5	2	2000-10-13	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	f	Housewife	\N	f	f	f	f	2023-03-12 23:58:00	2023-03-12 23:58:00
267	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676771930	Bacaron	Naomi	Bolotaolo	\N	\N	5	2	1970-11-28	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Brgy. Kagawad	2	f	f	t	f	2023-03-13 23:58:00	2023-03-13 23:58:00
268	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676771930	Bacaron	Ronaldo	Maybanting	\N	\N	1	1	1973-04-03	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Farmer	2	f	f	t	f	2023-03-14 23:58:00	2023-03-14 23:58:00
269	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676771930	Bacaron	Wilben	Bolotaolo	\N	\N	3	1	2006-03-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2023-03-15 23:58:00	2023-03-15 23:58:00
270	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624676771930	Bacaron	William	Bolotaolo	\N	\N	3	1	2006-03-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2023-03-16 23:58:00	2023-03-16 23:58:00
271	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624677506547	Damalerio	Adrian Jay	Bernaldez	\N	\N	4	1	2012-07-20	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	f	Student	\N	f	f	t	f	2023-03-17 23:58:00	2023-03-17 23:58:00
272	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624677506547	Bernaldez	Bernadette	Talidro	\N	\N	1	2	1968-09-02	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	BNS	1	t	f	t	f	2023-03-18 23:58:00	2023-03-18 23:58:00
273	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624677506547	Damalerio	Brylle Mondro	Bernaldez	\N	\N	4	1	2009-10-04	1	\N	f	f	Roman Catholic	t	1	f	t	2	\N	t	16	16	\N	t	Student	\N	f	f	t	f	2023-03-19 23:58:00	2023-03-19 23:58:00
274	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624677506547	Bernaldez	Geraldo	Talidron	Sr.	\N	8	1	1945-05-19	3	\N	f	f	Roman Catholic	t	4	f	f	2	\N	f	0	13	\N	t	None	\N	f	f	f	t	2023-03-20 23:58:00	2023-03-20 23:58:00
275	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624677506547	Damalerio	Wilmarie Shane	Bernaldez	\N	\N	4	2	2008-08-28	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	f	t	2023-03-21 23:58:00	2023-03-21 23:58:00
276	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624678558507	Bacaron	Angel	Dacupa	\N	\N	3	2	2020-12-25	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	f	2023-03-22 23:58:00	2023-03-22 23:58:00
277	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624678558507	Bacaron	Josua	Bolotaolo	\N	\N	1	1	1996-11-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Farmer	2	f	f	f	f	2023-03-23 23:58:00	2023-03-23 23:58:00
278	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624678558507	Dugopa	Maria Christine	Patrio	\N	\N	5	2	2001-04-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	22	5	f	Housewife	\N	f	f	f	f	2023-03-24 23:58:00	2023-03-24 23:58:00
279	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624679035833	Dingding	James Warren	Damalerio	\N	\N	3	1	2005-11-08	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2023-03-25 23:58:00	2023-03-25 23:58:00
280	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624679035833	Dingding	Joselyn	Damalerio	\N	\N	5	2	1965-04-14	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2023-03-26 23:58:00	2023-03-26 23:58:00
281	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624679035833	Dingding	Jr	Damalerio	\N	\N	3	1	2008-04-26	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	t	18	18	\N	t	Student	\N	f	f	t	f	2023-03-27 23:58:00	2023-03-27 23:58:00
282	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624679035833	Dingding	Regie	Damalerio	\N	\N	3	1	1998-10-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	34	34	\N	t	Student	\N	f	f	t	f	2023-03-28 23:58:00	2023-03-28 23:58:00
283	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624679035833	Dingding	Renaldo	Mayola	Sr.	\N	1	1	1964-10-10	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Labor	2	f	f	t	f	2023-03-29 23:58:00	2023-03-29 23:58:00
284	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols	Edcel	Salva	\N	\N	3	1	2007-06-12	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2023-03-30 23:58:00	2023-03-30 23:58:00
285	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols	Erix	Salva	\N	\N	3	1	1998-06-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	f	f	f	2023-03-31 23:58:00	2023-03-31 23:58:00
286	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols 	Ernes	Salva	\N	\N	3	1	2000-03-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Labor	1	f	f	t	f	2023-04-01 23:58:00	2023-04-01 23:58:00
287	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols	Iregen	Salva 	\N	\N	3	1	1996-01-16	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Daycare Worker	2	t	f	t	f	2023-04-02 23:58:00	2023-04-02 23:58:00
288	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols	Irenio	Genita	Sr.	\N	1	1	1937-04-01	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Labor	1	f	f	t	f	2023-04-03 23:58:00	2023-04-03 23:58:00
289	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols	Janet	Salva	\N	\N	3	2	2003-12-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2023-04-04 23:58:00	2023-04-04 23:58:00
290	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols	Janice 	Salva	\N	\N	3	2	2002-01-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	t	f	2023-04-05 23:58:00	2023-04-05 23:58:00
291	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624683260236	Rafols	Maria	Salva	\N	\N	5	2	1972-11-09	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housekeeper	1	f	f	t	f	2023-04-06 23:58:00	2023-04-06 23:58:00
292	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684467667	Daclan	Roel	Suganob	\N	\N	1	1	1971-02-23	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Labor	1	f	f	t	f	2023-04-07 23:58:00	2023-04-07 23:58:00
293	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684819764	Ocho	Ernesto	Pineda	Jr.	\N	1	1	1985-04-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Labor	1	f	f	f	f	2023-04-08 23:58:00	2023-04-08 23:58:00
294	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684819764	Ocho	Grace	Damalerio	\N	\N	3	2	2020-10-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-04-09 23:58:00	2023-04-09 23:58:00
295	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684819764	Ocho	Mark Neri	Damalerio	\N	\N	3	1	2016-06-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	1	1	\N	f	Student	\N	f	f	t	f	2023-04-10 23:58:00	2023-04-10 23:58:00
296	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684819764	Ocho	Philip Andro	Damalerio	\N	\N	3	1	2012-12-11	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	12	12	\N	f	Student	\N	f	f	t	f	2023-04-11 23:58:00	2023-04-11 23:58:00
297	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1624684819764	Damalerio	Sarisa 	Fuentes	\N	\N	5	2	1988-06-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2023-04-12 23:58:00	2023-04-12 23:58:00
298	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625014706546	Moron	John Hezekiah	Lumay	\N	\N	3	1	2015-06-14	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	t	f	2023-04-13 23:58:00	2023-04-13 23:58:00
299	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625014706546	Moron	Jonh Real	Ravina	\N	\N	1	1	1990-04-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Line Man	2	t	f	t	f	2023-04-14 23:58:00	2023-04-14 23:58:00
300	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625014706546	Lumay	Mentchine	Rafols	\N	\N	5	2	1991-09-15	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	House wife	\N	f	f	t	f	2023-04-15 23:58:00	2023-04-15 23:58:00
301	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	Lumay	Anabelle	Rafols	\N	\N	5	2	1966-02-03	2	\N	f	f	Roman Catholic	t	4	f	t	2	\N	f	0	16	\N	t	House wife	\N	f	f	t	f	2023-04-16 23:58:00	2023-04-16 23:58:00
302	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	Lumay	Manuel	Rafols	\N	\N	3	1	2004-04-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	21	21	\N	t	Student	\N	f	f	t	f	2023-04-17 23:58:00	2023-04-17 23:58:00
303	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	Lumay	Mariel	Rafols	\N	\N	3	2	1997-08-24	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Medtech 	3	t	f	t	f	2023-04-18 23:58:00	2023-04-18 23:58:00
304	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	Lumay	Marlon	Rafols	\N	\N	3	1	2002-03-22	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	31	31	\N	t	Student	\N	f	f	t	f	2023-04-19 23:58:00	2023-04-19 23:58:00
305	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	Lumay	Marvin	Rafols	\N	\N	3	1	1999-09-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	32	32	\N	t	Student	\N	f	f	t	f	2023-04-20 23:58:00	2023-04-20 23:58:00
306	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	Lumay	Noel	Rafols	Jr.	\N	3	1	1993-02-01	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Labor	2	t	f	t	f	2023-04-21 23:58:00	2023-04-21 23:58:00
307	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625015363822	Lumay	Noel	Tulibas	Sr.	\N	1	1	1969-08-05	2	\N	f	f	Roman Catholic	t	1	f	t	2	\N	f	0	12	\N	t	Farmer	1	f	f	t	f	2023-04-22 23:58:00	2023-04-22 23:58:00
308	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625016543413	Rafols	Mario	Cubio	\N	\N	1	1	1961-04-20	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	14	\N	t	Labor	1	f	f	t	f	2023-04-23 23:58:00	2023-04-23 23:58:00
309	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625016543413	Cortes	Rosie	Malinao	\N	\N	5	2	1963-06-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	House wife	\N	f	f	f	f	2023-04-24 23:58:00	2023-04-24 23:58:00
310	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625019314131	Cabante	Asuncion	Bertudazo	\N	\N	8	2	1944-07-05	3	\N	f	f	Roman Catholic	t	5	f	t	2	\N	f	0	13	\N	t	None	\N	f	f	t	f	2023-04-25 23:58:00	2023-04-25 23:58:00
311	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625019314131	Ebrado	Divine Jane	Cabante	\N	\N	4	2	2007-07-11	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	f	f	2023-04-26 23:58:00	2023-04-26 23:58:00
312	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625019314131	Cabante	Jubilly	Junio	\N	\N	3	1	1998-02-11	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Parlor	2	t	f	f	t	2023-04-27 23:58:00	2023-04-27 23:58:00
313	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625019314131	Cabante	Soledad	Junio	\N	\N	5	2	1968-09-18	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	House wife	\N	f	f	f	f	2023-04-28 23:58:00	2023-04-28 23:58:00
314	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625019314131	Cabante	Teresito	Birtudazo	\N	\N	1	1	1967-05-21	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farmers	1	t	f	f	f	2023-04-29 23:58:00	2023-04-29 23:58:00
315	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625020656485	Gac-ang	Ariane	Cabante	\N	\N	3	2	2012-07-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	f	f	2023-04-30 23:58:00	2023-04-30 23:58:00
316	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625020656485	Cabante	Jelyn	Junio	\N	\N	5	2	1991-12-10	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	House keeper	1	f	f	f	f	2023-05-01 23:58:00	2023-05-01 23:58:00
317	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625020656485	Gac-ang	Rogen	Cabante	\N	\N	3	1	2009-11-15	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	f	f	2023-05-02 23:58:00	2023-05-02 23:58:00
318	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625020656485	Gac-ang	Roniel	Timbal	\N	\N	1	1	1990-06-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	2	f	f	f	f	2023-05-03 23:58:00	2023-05-03 23:58:00
319	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625020656485	Gac-ang	Zeira Faith	Cabante	\N	\N	3	2	2015-04-14	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	f	f	2023-05-04 23:58:00	2023-05-04 23:58:00
320	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625021697218	Varquez	Jhondel	Samon	\N	\N	3	1	2009-05-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	16	16	\N	f	Student	\N	f	f	t	f	2023-05-05 23:58:00	2023-05-05 23:58:00
321	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625021697218	Varquez	Joshua	Samon	\N	\N	3	1	2016-11-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-05-06 23:58:00	2023-05-06 23:58:00
322	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625021697218	Varquez	Junril	Rafols	Sr.	\N	1	1	1982-04-15	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Labor	1	f	f	t	f	2023-05-07 23:58:00	2023-05-07 23:58:00
323	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625021697218	Varquez	Junril	Samon	Jr.	\N	3	1	2011-05-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	t	f	2023-05-08 23:58:00	2023-05-08 23:58:00
324	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625021697218	Samon	Lilit	Diane	\N	\N	5	2	1993-10-20	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	14	\N	t	Housewife	\N	f	f	f	f	2023-05-09 23:58:00	2023-05-09 23:58:00
325	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625022555560	Aquiatan	Cris John timothy	Junio	\N	\N	3	1	1993-11-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	t	f	2023-05-10 23:58:00	2023-05-10 23:58:00
326	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625022555560	Aquiatan	Digna	Junio	\N	\N	5	2	1956-10-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	House wife	\N	f	f	t	f	2023-05-11 23:58:00	2023-05-11 23:58:00
327	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625022555560	Aquiatan	Timoteo	Quilaton	\N	\N	1	1	1951-01-24	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Welder	2	t	f	t	f	2023-05-12 23:58:00	2023-05-12 23:58:00
328	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625023501733	Higpit	Alexis Claris	Aquiatan	\N	\N	3	2	2014-10-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	11	11	\N	f	Student	\N	f	f	f	f	2023-05-13 23:58:00	2023-05-13 23:58:00
329	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625023501733	Higpit	Chona Mae	Aquiatan	\N	\N	1	2	1981-07-24	4	\N	f	f	Roman Catholic	f	\N	t	t	2	\N	f	0	20	\N	f	Domestic Helper	4	f	f	f	f	2023-05-14 23:58:00	2023-05-14 23:58:00
330	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625023501733	Higpit	Clouie Venice	Aquiatan	\N	\N	3	2	2007-01-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	f	f	2023-05-15 23:58:00	2023-05-15 23:58:00
331	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625023501733	Higpit	Crisia Mae	Aquiatan	\N	\N	3	2	2009-03-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	f	f	2023-05-16 23:58:00	2023-05-16 23:58:00
332	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625023501733	Higpit	Denise 	Aquiatan	\N	\N	3	2	2003-11-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	None	\N	f	f	f	f	2023-05-17 23:58:00	2023-05-17 23:58:00
333	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625023501733	Higpit	Shairyl Kite	Aquiatan	\N	\N	3	2	2013-03-02	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	13	13	\N	t	Student	\N	f	f	f	f	2023-05-18 23:58:00	2023-05-18 23:58:00
334	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625028813463	Fediles	Antonio	Radam	\N	\N	1	1	1972-04-25	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Labor	1	f	f	f	f	2023-05-19 23:58:00	2023-05-19 23:58:00
335	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625028813463	Fediles	Samantha	Junio	\N	\N	3	2	1998-04-11	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	None	\N	f	f	f	t	2023-05-20 23:58:00	2023-05-20 23:58:00
336	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625029396883	Cabante	Ginalyn	Junio	\N	\N	5	2	1977-01-16	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	House wife	\N	t	f	t	f	2023-05-21 23:58:00	2023-05-21 23:58:00
337	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625029396883	Cabante	J Neil	Junio	\N	\N	3	1	2017-12-31	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-05-22 23:58:00	2023-05-22 23:58:00
338	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625029396883	Cabante	Joel	Junio	\N	\N	3	2	2010-08-24	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	t	f	2023-05-23 23:58:00	2023-05-23 23:58:00
339	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625029396883	Cabante	Juneil	Junio	\N	\N	3	1	2007-06-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	f	Student	\N	f	f	t	f	2023-05-24 23:58:00	2023-05-24 23:58:00
340	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625029396883	Junio	Juvelyn	Pan	\N	\N	4	2	2007-12-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	f	f	2023-05-25 23:58:00	2023-05-25 23:58:00
341	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625029396883	Cabante	Neil	Vitudazo	\N	\N	1	1	1972-10-03	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	32	\N	t	Seaman	5	t	f	t	f	2023-05-26 23:58:00	2023-05-26 23:58:00
342	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625030816661	Gumapac	Alea	Cabante	\N	\N	3	2	2010-10-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	t	f	2023-05-27 23:58:00	2023-05-27 23:58:00
343	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625030816661	Gumapac	Izea	Cabante	\N	\N	3	2	2017-07-02	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-05-28 23:58:00	2023-05-28 23:58:00
344	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625030816661	Gumapac	Jaqueline	Cabante	\N	\N	5	2	1988-05-19	2	\N	f	f	Roman Catholic	f	\N	t	t	2	\N	f	0	20	\N	t	Domestic Helper	4	f	f	t	f	2023-05-29 23:58:00	2023-05-29 23:58:00
345	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625030816661	Gumapac	Marcelo	Flores	\N	\N	1	1	1981-07-16	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Labor	2	f	f	t	f	2023-05-30 23:58:00	2023-05-30 23:58:00
346	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Charnel	Aquiatan	\N	\N	3	1	2011-01-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	t	f	2023-05-31 23:58:00	2023-05-31 23:58:00
347	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Christopher	Aquiatan	\N	\N	3	1	2012-12-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	t	f	2023-06-01 23:58:00	2023-06-01 23:58:00
348	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Crisjohn	Aquiatan	\N	\N	3	1	1998-12-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	22	\N	t	None	\N	f	f	t	f	2023-06-02 23:58:00	2023-06-02 23:58:00
349	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Crisjohn Jay	Aquiatan	\N	\N	3	1	2000-08-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	21	21	\N	t	Student	\N	f	f	t	f	2023-06-03 23:58:00	2023-06-03 23:58:00
350	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Mary Cherry	Aquiatan	\N	\N	3	2	2021-06-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	f	f	2023-06-04 23:58:00	2023-06-04 23:58:00
351	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Mary Joy	Aquiatan	\N	\N	3	2	2014-07-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	11	11	\N	f	Student	\N	f	f	t	f	2023-06-05 23:58:00	2023-06-05 23:58:00
352	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Mary Rose	Aquiatan	\N	\N	3	2	2016-10-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-06-06 23:58:00	2023-06-06 23:58:00
353	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Noel	Vayson	\N	\N	1	1	1979-04-30	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Farmers	1	f	f	t	f	2023-06-07 23:58:00	2023-06-07 23:58:00
354	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625031851612	Rusiana	Sharon	Aquiatan	\N	\N	5	2	1978-02-05	2	\N	f	f	Roman Catholic	f	\N	t	t	2	\N	f	0	31	\N	t	Domestic Helper	4	t	f	t	f	2023-06-08 23:58:00	2023-06-08 23:58:00
355	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625033886222	Morales	Cherry Mae	Aquiatan	\N	\N	5	2	1985-08-10	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Vendor	1	f	f	f	f	2023-06-09 23:58:00	2023-06-09 23:58:00
356	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625033886222	Morales	Hillary	Aquiatan	\N	\N	3	2	2006-12-13	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	f	Student	\N	f	f	f	f	2023-06-10 23:58:00	2023-06-10 23:58:00
357	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625033886222	Morales	Ray Vincent	Aquiatan	\N	\N	3	1	2008-08-31	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	f	f	2023-06-11 23:58:00	2023-06-11 23:58:00
358	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625033886222	Morales	Raymon	Varda	\N	\N	1	1	1985-09-19	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Mason	2	t	f	t	f	2023-06-12 23:58:00	2023-06-12 23:58:00
359	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625034616506	Nepalam	Kent Lee	Supas	\N	\N	3	1	2020-08-15	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	f	2023-06-13 23:58:00	2023-06-13 23:58:00
360	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625034616506	Nepalam	Leo	Timbal	\N	\N	1	1	1998-12-14	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	f	Labor	1	f	f	f	f	2023-06-14 23:58:00	2023-06-14 23:58:00
361	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625034616506	Supas	Rosario	Fediles	\N	\N	5	2	1999-10-24	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	f	House wife	\N	f	f	f	f	2023-06-15 23:58:00	2023-06-15 23:58:00
362	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	Gac-ang	Arlene	Timbal	\N	\N	5	2	1975-12-27	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Housewife	\N	f	f	f	f	2023-06-16 23:58:00	2023-06-16 23:58:00
363	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	Gac-ang	Barwen	Canseran	\N	\N	1	1	1971-03-30	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Farmer	1	f	f	t	f	2023-06-17 23:58:00	2023-06-17 23:58:00
364	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	Gac-ang 	Barwen	Timbal	\N	\N	3	1	2007-05-16	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	t	f	2023-06-18 23:58:00	2023-06-18 23:58:00
365	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	Gac-ang	Robert	Timbal	\N	\N	3	1	1998-02-06	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	2	f	f	t	f	2023-06-19 23:58:00	2023-06-19 23:58:00
366	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	Gac-ang	Rotchel	Timbal	\N	\N	3	2	2010-11-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	t	f	2023-06-20 23:58:00	2023-06-20 23:58:00
367	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	Gac-ang	Ruby	Timbal	\N	\N	3	2	2014-12-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	1	1	\N	f	Student	\N	f	f	t	f	2023-06-21 23:58:00	2023-06-21 23:58:00
368	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625035282368	Gac-ang	Ruffa Mae	Timbal	\N	\N	3	2	2012-10-08	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	12	12	\N	f	Student	\N	f	f	t	f	2023-06-22 23:58:00	2023-06-22 23:58:00
369	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625036471054	Zamora	Franco	Olaguir	\N	\N	1	1	1992-09-08	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	2	f	f	t	f	2023-06-23 23:58:00	2023-06-23 23:58:00
370	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625036471054	Zamaro	Richelle Ann	Rosal	\N	\N	3	2	2015-06-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	t	f	2023-06-24 23:58:00	2023-06-24 23:58:00
371	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625036471054	Rosal	Sonia 	Dela Cruz	\N	\N	5	2	1998-07-23	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2023-06-25 23:58:00	2023-06-25 23:58:00
372	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	Jamero	Dave	Lumay	\N	\N	3	1	2001-08-12	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	31	31	1	t	Student	\N	f	f	t	f	2023-06-26 23:58:00	2023-06-26 23:58:00
373	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	Jamero	Jonalyn	Lumay	\N	\N	3	2	2005-12-11	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2023-06-27 23:58:00	2023-06-27 23:58:00
374	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	Jamero	Jonard 	Lumay	\N	\N	3	1	2004-01-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	21	21	7	f	Student	\N	f	f	t	f	2023-06-28 23:58:00	2023-06-28 23:58:00
375	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	Jamero	Josephine	Lumay	\N	\N	5	2	1975-05-12	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	House wife	\N	f	f	t	f	2023-06-29 23:58:00	2023-06-29 23:58:00
376	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	Jamero	Leonardo	Cagas	\N	\N	1	1	1959-11-18	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Farmer	1	t	f	t	f	2023-06-30 23:58:00	2023-06-30 23:58:00
377	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	Jamero	Melvin	Lumay	\N	\N	3	1	2012-03-23	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	t	f	2023-07-01 23:58:00	2023-07-01 23:58:00
378	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625965108446	Dando	Nenita	Tolibas	\N	\N	8	2	1944-06-25	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	None	\N	f	f	f	f	2023-07-02 23:58:00	2023-07-02 23:58:00
379	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Yllanan	Anjantte	Formilles	\N	\N	4	1	2004-04-03	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2023-07-03 23:58:00	2023-07-03 23:58:00
380	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Jaramil	Beldjan	No Middlename	\N	\N	3	1	1995-03-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	33	33	\N	t	Student	\N	f	f	t	f	2023-07-04 23:58:00	2023-07-04 23:58:00
381	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Jaramel	Beverly	No Middlename	\N	\N	3	2	1999-10-15	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	32	32	\N	t	Student	\N	f	f	t	f	2023-07-05 23:58:00	2023-07-05 23:58:00
382	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Formilles	Gary	Jaramel	\N	\N	7	1	1989-03-15	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	f	f	f	2023-07-06 23:58:00	2023-07-06 23:58:00
383	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Formilles	Harry Jhon	Jaramel	\N	\N	7	1	1987-02-02	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	f	f	f	2023-07-07 23:58:00	2023-07-07 23:58:00
384	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Jaramel	Junrel	No Middlename	\N	\N	3	1	2000-08-10	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	31	31	\N	t	Student	\N	f	f	t	f	2023-07-08 23:58:00	2023-07-08 23:58:00
385	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Jaramel	Mamica	Infile	\N	\N	3	2	1963-01-27	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	House wife	\N	f	f	t	f	2023-07-09 23:58:00	2023-07-09 23:58:00
386	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625972337078	Padilla	Protacio	Supas	\N	\N	1	1	1955-06-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Carpenter	1	f	f	t	f	2023-07-10 23:58:00	2023-07-10 23:58:00
387	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625974512170	Jaramel	Ashley Joy	Justan	\N	\N	3	1	2016-09-27	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	1	1	\N	f	Student	\N	f	f	f	f	2023-07-11 23:58:00	2023-07-11 23:58:00
388	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625974512170	Custan	Novelyn	Maturan	\N	\N	5	2	1998-11-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	House wife	\N	f	f	t	f	2023-07-12 23:58:00	2023-07-12 23:58:00
389	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625974512170	Jaramel	Promic	No Middlename	\N	\N	1	1	1991-06-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Carpenter	1	f	f	t	f	2023-07-13 23:58:00	2023-07-13 23:58:00
390	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1625974512170	Jaramel	Silver Jon	Justan	\N	\N	3	1	2018-04-15	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	f	2023-07-14 23:58:00	2023-07-14 23:58:00
391	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1626141809735	Flores	Cecilia	Constancia	\N	\N	5	2	1961-09-02	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	20	\N	t	House keeper	\N	f	f	t	f	2023-07-15 23:58:00	2023-07-15 23:58:00
392	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1626141809735	Flores	Vienido 	Cabontocan	\N	\N	1	1	1952-07-14	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	15	\N	t	Farmer	1	f	f	t	f	2023-07-16 23:58:00	2023-07-16 23:58:00
393	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627610188919	Fediles	Ashley Jude Sally	Llanos	\N	\N	3	2	2002-07-16	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	t	f	2023-07-17 23:58:00	2023-07-17 23:58:00
394	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627610188919	Fediles	Ginirita	Quarinta	\N	\N	5	2	1966-03-02	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2023-07-18 23:58:00	2023-07-18 23:58:00
395	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627610188919	Fediles	Jacinto	Pabatang	\N	\N	1	1	1965-02-12	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Farmer	1	f	f	t	f	2023-07-19 23:58:00	2023-07-19 23:58:00
396	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627610188919	Fediles	Joucel 	Llanos	\N	\N	3	1	2000-01-07	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	t	f	2023-07-20 23:58:00	2023-07-20 23:58:00
397	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627610188919	Fediles	Regine	Llanos	\N	\N	3	2	1998-06-20	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	f	t	f	2023-07-21 23:58:00	2023-07-21 23:58:00
398	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627611284239	Fediles	Daniel	Pabatang	\N	\N	1	1	1977-11-16	4	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Labor	1	f	t	t	f	2023-07-22 23:58:00	2023-07-22 23:58:00
399	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627611284239	Fediles	Deejay	Coral	\N	\N	3	1	2011-06-28	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	15	15	\N	f	Student	\N	f	f	t	f	2023-07-23 23:58:00	2023-07-23 23:58:00
400	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627611284239	Fediles	Jenifer Joy	Coral	\N	\N	3	2	2007-07-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	Student	\N	f	f	t	f	2023-07-24 23:58:00	2023-07-24 23:58:00
401	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627611284239	Fediles	Juanita	Pabatang	\N	\N	8	2	1940-04-01	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	None	\N	f	f	t	f	2023-07-25 23:58:00	2023-07-25 23:58:00
402	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627611284239	Fediles	Kirvey Jay 	Coral	\N	\N	3	1	2008-11-26	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2023-07-26 23:58:00	2023-07-26 23:58:00
403	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627612964607	Sumampong	Genalyn	Llanos	\N	\N	5	2	1995-07-28	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	32	\N	f	Housewife	\N	f	f	t	f	2023-07-27 23:58:00	2023-07-27 23:58:00
404	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627612964607	Sumampong	Wayne Gabbe	Llanos	\N	\N	3	1	2013-10-31	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	t	f	2023-07-28 23:58:00	2023-07-28 23:58:00
405	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627612964607	Sumampong	Wenceslao	Abecia	\N	\N	1	1	1992-07-03	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	PNP	4	f	f	t	f	2023-07-29 23:58:00	2023-07-29 23:58:00
406	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627612964607	Sumampong	Wenceslao	Llanos	III	\N	3	1	2019-01-21	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	t	f	2023-07-30 23:58:00	2023-07-30 23:58:00
407	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627612964607	Sumampong	Weyna faith	Llanos	\N	\N	3	2	2016-02-18	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	1	1	\N	f	Student	\N	f	f	t	f	2023-07-31 23:58:00	2023-07-31 23:58:00
408	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Ainie Rose	Padilla	\N	\N	3	2	1997-11-06	1	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	34	\N	t	Care giver	2	t	f	t	f	2023-08-01 23:58:00	2023-08-01 23:58:00
409	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Alfred	Padilla	\N	\N	3	1	1985-03-21	1	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	34	\N	t	Goverment employee	4	t	t	t	f	2023-08-02 23:58:00	2023-08-02 23:58:00
410	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Daisy Mae	Padilla	\N	\N	3	2	1988-09-02	1	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	34	\N	f	Health Worker	3	t	t	t	f	2023-08-03 23:58:00	2023-08-03 23:58:00
411	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Emmanuel	Padilla	Jr.	\N	3	1	1990-05-02	1	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	34	\N	f	PJMP	3	t	t	t	f	2023-08-04 23:58:00	2023-08-04 23:58:00
412	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Emmanuel	Sangco	Sr.	\N	1	1	1962-06-29	2	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	19	\N	t	Farmer	1	f	f	t	f	2023-08-05 23:58:00	2023-08-05 23:58:00
413	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Laselcor	Padilla	\N	\N	3	2	1992-06-16	1	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	34	\N	t	Bank employee	3	t	t	t	f	2023-08-06 23:58:00	2023-08-06 23:58:00
414	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Llamer	Padilla	\N	\N	3	1	1994-10-13	1	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	32	\N	t	None	\N	f	f	t	f	2023-08-07 23:58:00	2023-08-07 23:58:00
415	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Raymunda	Padilla	\N	\N	5	2	1962-02-09	2	\N	f	f	IFI	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2023-08-08 23:58:00	2023-08-08 23:58:00
416	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627614763262	Badiang	Sheena 	Padilla	\N	\N	3	2	2006-03-08	1	\N	f	f	IFI	f	\N	f	t	2	\N	t	20	20	\N	t	Student	\N	f	f	t	f	2023-08-09 23:58:00	2023-08-09 23:58:00
417	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627869860693	Babano	Mark	Bucag	\N	\N	3	1	2001-09-14	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	7	t	Student	\N	f	f	t	f	2023-08-10 23:58:00	2023-08-10 23:58:00
418	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627869860693	Guayan	Roselo 	Lahinao	\N	\N	1	1	1979-03-01	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Mason	1	f	f	t	f	2023-08-11 23:58:00	2023-08-11 23:58:00
419	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627869860693	Babano	Shena 	Bucag	\N	\N	3	2	2003-02-12	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	Student	\N	f	f	t	f	2023-08-12 23:58:00	2023-08-12 23:58:00
420	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627869860693	Guayan	Tonet	Bucag	\N	\N	5	2	1981-06-14	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2023-08-13 23:58:00	2023-08-13 23:58:00
421	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627872244502	Bacquial	Cherry 	Roca	\N	\N	3	2	1978-11-11	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	34	\N	t	Housewife	\N	f	f	f	f	2023-08-14 23:58:00	2023-08-14 23:58:00
422	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627872244502	Bacquial	Czianel Jedd	 Roca	\N	\N	3	2	2006-12-16	1	\N	f	f	Born Again	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	f	f	2023-08-15 23:58:00	2023-08-15 23:58:00
423	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1627872244502	Bacquial	Jonel	Libarios	\N	\N	1	1	1982-10-04	2	\N	f	f	Born Again	f	\N	f	t	2	\N	f	0	34	\N	t	Farmer	1	f	f	f	f	2023-08-16 23:58:00	2023-08-16 23:58:00
424	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628066228575	Llanos	Ariel	Logroñio	Jr.	\N	3	1	2019-04-05	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	f	2023-08-17 23:58:00	2023-08-17 23:58:00
425	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628066228575	Llanos	Ariel 	Betangcor	Sr.	\N	1	1	2021-08-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Labor	1	f	f	f	f	2023-08-18 23:58:00	2023-08-18 23:58:00
426	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628066228575	Llanos	Brylle 	Logroñio	\N	\N	3	1	2016-05-04	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	f	f	2023-08-19 23:58:00	2023-08-19 23:58:00
427	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628066228575	Logroñio	Frordeliza	Castaños	\N	\N	5	2	1995-05-09	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	1	f	f	f	f	2023-08-20 23:58:00	2023-08-20 23:58:00
428	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Alfie	Mendoza	\N	\N	1	1	1982-07-10	2	\N	f	f	Baptist Church	f	\N	f	t	2	\N	f	0	34	\N	t	Driver	2	t	f	t	f	2023-08-21 23:58:00	2023-08-21 23:58:00
429	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Keziah Gwyneth	Frias	\N	\N	3	2	2003-08-26	1	\N	f	f	Baptist Church	f	\N	f	t	2	\N	t	21	21	\N	t	Student	\N	f	f	t	f	2023-08-22 23:58:00	2023-08-22 23:58:00
430	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Liz Quian 	Frias	\N	\N	3	2	2010-07-05	1	\N	f	f	Baptist Church	f	\N	f	t	2	\N	t	16	16	\N	f	Student	\N	f	f	t	f	2023-08-23 23:58:00	2023-08-23 23:58:00
431	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Mafie Nyze	Frias	\N	\N	3	2	2009-09-18	1	\N	f	f	Baptist Church	f	\N	f	t	2	\N	t	17	17	\N	t	Student	\N	f	f	t	f	2023-08-24 23:58:00	2023-08-24 23:58:00
432	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Maria Carla	Frias	\N	\N	5	2	1982-09-18	2	\N	f	f	Baptist Church	f	\N	f	t	2	\N	f	0	34	\N	t	Manager	3	t	f	t	f	2023-08-25 23:58:00	2023-08-25 23:58:00
433	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Naz 	Frias	\N	\N	3	1	2012-07-23	1	\N	f	f	Baptist Church	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	t	f	2023-08-26 23:58:00	2023-08-26 23:58:00
434	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Prince Carl	Frias	\N	\N	3	1	2013-05-17	1	\N	f	f	Baptist Church	f	\N	f	t	2	\N	t	13	13	\N	t	Student	\N	f	f	t	f	2023-08-27 23:58:00	2023-08-27 23:58:00
435	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628072587733	Dagondon	Zeki Freya	Frias	\N	\N	3	2	2008-02-04	1	\N	f	f	Baptist Church	f	\N	f	t	2	\N	t	18	18	\N	t	Student	\N	f	f	t	f	2023-08-28 23:58:00	2023-08-28 23:58:00
436	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628079125643	Oculam	Junaira	No Middlename	\N	\N	3	2	2011-02-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	14	14	\N	f	Student	\N	f	f	t	f	2023-08-29 23:58:00	2023-08-29 23:58:00
437	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628079125643	Oculam	Shairra	No Middlename	\N	\N	3	2	2015-03-17	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	Student	\N	f	f	t	f	2023-08-30 23:58:00	2023-08-30 23:58:00
438	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1628079125643	Oculam	Sheila	Sangco	\N	\N	5	2	1980-04-29	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Bank employee	2	f	f	t	f	2023-08-31 23:58:00	2023-08-31 23:58:00
439	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	Sangco	Angelie	Lagonoy	\N	\N	2	2	1982-11-01	2	\N	f	f	Catholic	f	\N	t	f	2	\N	f	0	31	\N	t	Ofw	3	t	f	t	f	2023-09-01 23:58:00	2023-09-01 23:58:00
440	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	SANGCO	Brylle angelo	Lagonoy	\N	\N	3	1	2008-12-18	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	f	None	\N	f	f	f	t	2023-09-02 23:58:00	2023-09-02 23:58:00
441	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	Sangco	Clint lee Christopher	Lagonoy	\N	\N	3	1	2000-12-10	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	32	32	\N	t	None	\N	f	f	f	t	2023-09-03 23:58:00	2023-09-03 23:58:00
442	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	Sangco	Francis laurence	Lagonoy	\N	\N	3	1	2004-05-26	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	21	21	\N	t	None	\N	f	f	f	t	2023-09-04 23:58:00	2023-09-04 23:58:00
443	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	Sangco	James kiven	Lagonoy	\N	\N	3	1	2010-09-20	1	\N	f	f	Catholic	f	\N	f	f	3	\N	f	15	15	\N	f	None	\N	f	f	f	t	2023-09-05 23:58:00	2023-09-05 23:58:00
444	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	Sangco	Leo 	Talidro	\N	\N	1	1	1975-06-19	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	\N	t	Farm laborer	1	f	f	t	f	2023-09-06 23:58:00	2023-09-06 23:58:00
445	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	Sangco	Marc andrie	Lagonoy	\N	\N	3	1	2006-03-15	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	19	19	\N	t	None	\N	f	f	f	t	2023-09-07 23:58:00	2023-09-07 23:58:00
446	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623755461760	Sangco	Sophia cleey	Lagonoy	\N	\N	3	1	2015-05-22	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	2	2	\N	f	None	\N	f	f	f	t	2023-09-08 23:58:00	2023-09-08 23:58:00
447	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	Sangco	Cresentia 	Maraya	\N	\N	8	2	1949-01-09	3	\N	f	f	Born again christian	f	\N	f	f	2	\N	f	0	14	\N	t	None	\N	f	f	t	f	2023-09-09 23:58:00	2023-09-09 23:58:00
448	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	Sangco	Danielle	Bajen	\N	\N	3	1	2012-10-12	1	\N	f	f	Born again Christian	f	\N	f	f	3	\N	t	12	12	\N	t	None	\N	f	f	f	t	2023-09-10 23:58:00	2023-09-10 23:58:00
449	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	Sangco	Daryl	Bajen	\N	\N	3	1	2012-10-12	1	\N	f	f	Born again Christian	f	\N	f	f	3	\N	t	12	12	\N	t	None	\N	f	f	f	t	2023-09-11 23:58:00	2023-09-11 23:58:00
450	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	Sangco	Dennis	Maraya	\N	\N	1	1	1982-10-10	2	\N	f	f	Born Again Christian	f	\N	f	f	2	\N	f	0	20	\N	t	Carpenter	1	f	f	t	f	2023-09-12 23:58:00	2023-09-12 23:58:00
451	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	Sangco	Edziel	Bajen	\N	\N	3	1	2010-02-01	1	\N	f	f	Born again Christian	f	\N	f	f	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2023-09-13 23:58:00	2023-09-13 23:58:00
452	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	Sangco	Noel jade	Bajen	\N	\N	3	1	2012-04-19	1	\N	f	f	Born again Christian	f	\N	f	f	3	\N	t	2	2	\N	t	None	\N	f	f	f	t	2023-09-14 23:58:00	2023-09-14 23:58:00
453	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623891006630	Sangco	Noemi 	Bajen	\N	\N	5	2	1986-09-15	2	\N	f	f	Born Again Chrisian	f	\N	f	f	2	\N	f	0	20	\N	t	House wife	\N	f	f	f	t	2023-09-15 23:58:00	2023-09-15 23:58:00
454	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623893961251	Rosal 	Bergelyn	Palos	\N	\N	3	2	1998-06-02	1	\N	f	f	Jesus is lord	f	\N	f	t	2	\N	f	0	34	\N	t	Laborer	1	f	f	t	f	2023-09-16 23:58:00	2023-09-16 23:58:00
455	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623893961251	Rosal	Jobert	Palos	\N	\N	3	1	1985-03-20	1	\N	f	f	Jesus is lord	f	\N	f	t	2	\N	f	0	20	\N	f	Laborer	1	f	f	f	t	2023-09-17 23:58:00	2023-09-17 23:58:00
456	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623893961251	Rosal	Jobita 	Palos	\N	\N	1	2	1955-05-20	3	\N	f	f	Jesus is lord	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	1	f	f	t	f	2023-09-18 23:58:00	2023-09-18 23:58:00
457	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623893961251	Rosal	Julito	Palos	\N	\N	3	1	1992-06-15	1	\N	f	f	Jesus is lord	f	\N	f	t	2	\N	f	0	20	\N	t	Laborer	1	f	f	f	t	2023-09-19 23:58:00	2023-09-19 23:58:00
458	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623895253282	Palos	Hermenio 	Georgio	\N	\N	1	1	1972-11-23	1	\N	f	f	Born again	t	6	f	t	2	\N	f	0	23	\N	t	None	\N	f	f	t	f	2023-09-20 23:58:00	2023-09-20 23:58:00
459	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623896039675	Bansas	Marcelo	Man on	\N	\N	1	1	1933-08-10	3	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	None	\N	f	f	t	f	2023-09-21 23:58:00	2023-09-21 23:58:00
460	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623897070161	Tacoy	Edwin	Clarito	\N	\N	1	1	1972-08-19	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Tricycle driver	1	t	f	f	t	2023-09-22 23:58:00	2023-09-22 23:58:00
461	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623897070161	Tacoy	Juvy	Aplacador	\N	\N	5	2	1970-07-28	2	\N	f	f	Roman Catholic	t	1	f	t	2	\N	f	0	32	\N	t	Housewife	\N	f	f	t	f	2023-09-23 23:58:00	2023-09-23 23:58:00
462	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623897070161	Tacoy	Windel jade	Aplacador	\N	\N	3	1	2000-04-30	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	33	33	7	t	None	\N	f	f	f	t	2023-09-24 23:58:00	2023-09-24 23:58:00
463	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623898217949	Cranzo	Concordio 	Magan	\N	\N	1	1	1961-01-01	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Carpenter	1	f	f	t	f	2023-09-25 23:58:00	2023-09-25 23:58:00
464	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623898217949	Cranzo	Jason	Flores	\N	\N	3	1	1988-12-31	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	Construction	1	f	f	t	f	2023-09-26 23:58:00	2023-09-26 23:58:00
465	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623898217949	Cranzo	Junry	Flores	\N	\N	3	1	1997-06-06	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Family driver	2	t	f	t	f	2023-09-27 23:58:00	2023-09-27 23:58:00
466	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623898217949	Cranzo	Patricia	Flores	\N	\N	2	1	1963-03-17	2	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	House wife	\N	f	f	f	t	2023-09-28 23:58:00	2023-09-28 23:58:00
467	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623898217949	Cranzo	Romeo	Flores	\N	\N	3	1	1999-03-11	1	\N	f	f	Roman Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Family driver	2	t	f	t	f	2023-09-29 23:58:00	2023-09-29 23:58:00
468	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623898217949	Cranzo	Xyrel	Flores	\N	\N	3	1	2001-07-19	1	\N	f	f	Roman Catholic	f	\N	f	t	2	\N	t	21	21	\N	t	Laborer	1	f	f	f	t	2023-09-30 23:58:00	2023-09-30 23:58:00
469	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623900111612	Ganalon 	Alvin john 	Flores	\N	\N	3	1	2008-08-12	1	\N	f	f	Born again four square	f	\N	f	t	3	\N	t	17	17	\N	t	None	\N	f	f	f	t	2023-10-01 23:58:00	2023-10-01 23:58:00
470	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623900111612	Ganalon	Floramie	Flores	\N	\N	2	2	1988-05-22	2	\N	f	f	Born again four square	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	f	t	2023-10-02 23:58:00	2023-10-02 23:58:00
471	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623900111612	Ganalon 	Joemar	Flores	Junior	\N	3	1	2014-12-13	1	\N	f	f	Born again four square	f	\N	f	t	3	\N	t	2	2	\N	t	None	\N	f	f	f	f	2023-10-03 23:58:00	2023-10-03 23:58:00
472	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623900111612	Ganalon	Joemar 	Quilay	\N	\N	1	1	1986-09-16	2	\N	f	f	Born again four square	f	\N	f	t	2	\N	f	0	16	\N	f	Farm laborer	1	f	f	t	f	2023-10-04 23:58:00	2023-10-04 23:58:00
473	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623900111612	Ganalom	Marjorie	Flores	\N	\N	3	2	2013-02-23	1	\N	f	f	Born again four square	f	\N	f	t	2	\N	f	12	12	\N	t	None	\N	f	f	f	f	2023-10-05 23:58:00	2023-10-05 23:58:00
474	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623900111612	Ganalon 	Shiela mae 	Flores	\N	\N	3	2	2010-09-03	1	\N	f	f	Born again four square	f	\N	f	t	3	\N	f	15	15	\N	t	None	\N	f	f	f	t	2023-10-06 23:58:00	2023-10-06 23:58:00
475	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623901175945	Oculam	Charlotte	Rafols	\N	\N	2	2	1983-07-06	2	\N	f	f	Four square	f	\N	f	t	2	\N	f	0	34	\N	t	Barbeque vendor	1	f	f	f	t	2023-10-07 23:58:00	2023-10-07 23:58:00
476	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623901175945	Oculam	Charls de	Rafols	\N	\N	3	1	2008-08-01	1	\N	f	f	Four square	f	\N	f	t	1	\N	t	17	17	\N	t	None	\N	f	f	f	t	2023-10-08 23:58:00	2023-10-08 23:58:00
477	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623901175945	Oculam	Darwin 	Sangco	\N	\N	1	1	1978-11-06	2	\N	f	f	Four square	f	\N	f	t	2	\N	f	0	18	\N	t	Farmer	1	f	f	t	f	2023-10-09 23:58:00	2023-10-09 23:58:00
478	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623907249395	Fuentes	John Christian	Beray	\N	\N	1	1	1987-02-20	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	1	t	Sales man	2	t	f	t	f	2023-10-10 23:58:00	2023-10-10 23:58:00
479	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623907249395	Fuentes	Melody 	Dinopol	\N	\N	2	2	1992-09-23	2	\N	f	f	Jehova witnesses	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2023-10-11 23:58:00	2023-10-11 23:58:00
480	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623907249395	Fuentes	Samantha Louisse	Dinopol	\N	\N	3	2	2013-03-01	1	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	12	12	\N	t	None	\N	f	f	f	t	2023-10-12 23:58:00	2023-10-12 23:58:00
481	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623907249395	Fuentes	Yuri Sydney	Dinopol	\N	\N	3	2	2011-09-01	1	\N	f	f	Jehovah witnesses	f	\N	f	t	2	\N	t	13	13	\N	t	None	\N	f	f	f	t	2023-10-13 23:58:00	2023-10-13 23:58:00
482	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908055439	Adahar	Fe	Merigildo	\N	\N	1	2	1945-05-27	3	\N	f	f	Catholic	t	4	f	t	2	\N	f	0	15	\N	t	None	\N	f	f	f	f	2023-10-14 23:58:00	2023-10-14 23:58:00
483	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	Granza	Jasmine	Viray	\N	\N	3	2	2006-02-05	1	\N	f	f	Catholic	f	\N	f	t	3	\N	t	19	19	\N	t	None	\N	f	f	f	f	2023-10-15 23:58:00	2023-10-15 23:58:00
484	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	Granza	Jederick	Viray	\N	\N	3	1	2008-03-23	1	\N	f	f	Catholic	f	\N	f	t	3	\N	f	17	17	\N	t	None	\N	f	f	f	f	2023-10-16 23:58:00	2023-10-16 23:58:00
485	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	Granza	Jeneyah	Viray	\N	\N	3	2	2013-06-29	1	\N	f	f	Catholic	f	\N	f	t	3	\N	f	12	12	\N	t	None	\N	f	f	f	f	2023-10-17 23:58:00	2023-10-17 23:58:00
486	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	Granza	Jessa mae	Virau	\N	\N	3	2	2011-04-22	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	14	14	\N	t	None	\N	f	f	f	f	2023-10-18 23:58:00	2023-10-18 23:58:00
487	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	Granza	Jimmy	Vasqez	\N	\N	1	1	1985-10-05	2	\N	f	f	Catholic	f	\N	f	t	1	\N	f	0	16	\N	t	Laborer	2	f	f	f	f	2023-10-19 23:58:00	2023-10-19 23:58:00
488	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	Granza	Nezil	Viray	\N	\N	2	2	1984-02-08	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	f	f	2023-10-20 23:58:00	2023-10-20 23:58:00
489	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623908676326	Granza	Nyla jane	Viray	\N	\N	3	2	2014-12-25	1	\N	f	f	Catholic	f	\N	f	t	3	\N	f	2	2	\N	t	None	\N	f	f	f	f	2023-10-21 23:58:00	2023-10-21 23:58:00
490	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623909898450	Flores	Leonisa	Aparihado	\N	\N	1	2	1947-09-16	3	\N	f	f	Four square	f	\N	f	t	2	\N	f	0	13	\N	t	None	\N	f	f	t	f	2023-10-22 23:58:00	2023-10-22 23:58:00
491	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623910658728	Nolasco	Arsenia	Flores	\N	\N	2	2	1969-08-27	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2023-10-23 23:58:00	2023-10-23 23:58:00
492	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623910658728	Labe	Engelito	Gallego	\N	\N	1	1	1966-12-08	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	t	Farm laborer	1	f	f	t	f	2023-10-24 23:58:00	2023-10-24 23:58:00
493	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623910658728	Labe	Jerald 	Flores	\N	\N	3	1	2009-09-13	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	t	None	\N	f	f	f	t	2023-10-25 23:58:00	2023-10-25 23:58:00
494	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623910658728	Nolasco	John paul	Flores	\N	\N	3	1	2001-03-22	1	\N	f	f	Born again	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2023-10-26 23:58:00	2023-10-26 23:58:00
495	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623912661865	Flores	Analyn	Bagolor	\N	\N	2	2	1983-12-06	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Housewife	\N	f	f	f	t	2023-10-27 23:58:00	2023-10-27 23:58:00
496	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623912661865	Flores	Chris andre	Bagolor	\N	\N	3	1	2008-10-19	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2023-10-28 23:58:00	2023-10-28 23:58:00
497	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623912661865	Floree	Christalyn faith	Bagolor	\N	\N	3	2	2019-03-02	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2023-10-29 23:58:00	2023-10-29 23:58:00
498	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623912661865	Flores	Christopher	Bagolor	Junior	\N	3	1	2017-06-15	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2023-10-30 23:58:00	2023-10-30 23:58:00
499	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623912661865	Flores	Christopher	Constancia	\N	\N	1	1	1983-01-03	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Laborer	1	f	f	t	f	2023-10-31 23:58:00	2023-10-31 23:58:00
500	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623912661865	Flores	Mercilyn hope	Bagolor	\N	\N	3	2	2020-08-04	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2023-11-01 23:58:00	2023-11-01 23:58:00
501	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623913629257	Varquez	Angelina	Rafols	\N	\N	3	2	1976-12-12	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	None	\N	f	f	t	f	2023-11-02 23:58:00	2023-11-02 23:58:00
502	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623913629257	Quisto	Jhon paul	Varquez	\N	\N	8	1	2013-03-05	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2023-11-03 23:58:00	2023-11-03 23:58:00
503	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623913629257	Quisto	Jhon pether	Varquez	\N	\N	8	1	2018-05-26	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2023-11-04 23:58:00	2023-11-04 23:58:00
504	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623913629257	Varquez	Tarcela	Rafols	\N	\N	1	2	1942-03-25	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	None	\N	f	f	t	f	2023-11-05 23:58:00	2023-11-05 23:58:00
505	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623915345709	Lagonoy	Eleonor 	Cepeda	\N	\N	1	2	1959-06-26	3	\N	f	f	Born again Christian	f	\N	f	t	3	\N	f	0	19	\N	t	None	\N	f	f	t	f	2023-11-06 23:58:00	2023-11-06 23:58:00
506	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623915345709	Sangco	Fharies Reymond	Lagonoy	\N	\N	8	1	1990-03-20	1	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	0	23	\N	t	Dicer	2	t	f	t	f	2023-11-07 23:58:00	2023-11-07 23:58:00
507	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623915345709	Sangco	Fretsie love	Lagonoy	\N	\N	8	2	1994-04-09	1	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	0	20	\N	t	None	\N	f	f	t	f	2023-11-08 23:58:00	2023-11-08 23:58:00
508	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623973910724	Lagonoy	Jocelyn	Cepeda	\N	\N	1	2	1969-06-13	1	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	0	34	\N	f	Housewife	\N	f	f	t	f	2023-11-09 23:58:00	2023-11-09 23:58:00
509	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623973910724	Ocba	Necasio	Lalic	\N	\N	2	1	1966-10-11	1	\N	f	f	Born again Christian	f	\N	t	f	2	\N	f	0	20	\N	f	Welder	4	t	f	t	f	2023-11-10 23:58:00	2023-11-10 23:58:00
510	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623974461041	Galler	Catalina	Bucag	\N	\N	1	2	1951-11-21	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	f	f	2023-11-11 23:58:00	2023-11-11 23:58:00
511	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623974461041	Bucag 	Jessie	Cahatian	\N	\N	8	1	1960-12-16	3	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	Laborer	1	f	f	f	f	2023-11-12 23:58:00	2023-11-12 23:58:00
512	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623975556197	Bacquial	Teodorica 	Guillen	\N	\N	1	2	1945-09-02	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Housewife	\N	f	f	t	f	2023-11-13 23:58:00	2023-11-13 23:58:00
513	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623976516120	Rosales	Emancueto	Bulasa	\N	\N	3	1	1980-03-28	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Laborer	1	f	f	t	f	2023-11-14 23:58:00	2023-11-14 23:58:00
514	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623976516120	Rosales	Ematilia	Bulasa	\N	\N	2	2	1956-10-02	2	\N	f	f	Pilipinista	f	\N	f	t	2	\N	f	0	16	\N	f	Housewife	\N	f	f	f	f	2023-11-15 23:58:00	2023-11-15 23:58:00
515	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623976516120	Rosales	Norlina	Bulasa	\N	\N	3	2	1978-11-24	1	\N	f	f	Muslim	f	\N	f	t	2	\N	f	0	20	\N	t	Maid	1	f	f	t	f	2023-11-16 23:58:00	2023-11-16 23:58:00
516	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623976516120	Rosales	Pipito	Tobio	\N	\N	1	1	1949-11-26	2	\N	f	f	Pilipinista	f	\N	f	t	2	\N	f	0	16	\N	f	Farmer	1	f	f	f	f	2023-11-17 23:58:00	2023-11-17 23:58:00
517	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623977579294	Rosales	Marjon	Bulasa	\N	\N	1	1	1991-05-08	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Laborer	1	f	f	t	f	2023-11-18 23:58:00	2023-11-18 23:58:00
518	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623977579294	Rosales	Marphei jane	Supas	\N	\N	3	2	2017-12-09	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2023-11-19 23:58:00	2023-11-19 23:58:00
519	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623977579294	Rosales	Patricia	Supas	\N	\N	2	2	1998-12-08	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Vendor	1	f	f	f	t	2023-11-20 23:58:00	2023-11-20 23:58:00
520	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623978378927	Gumapac	Alicia 	Cagape	\N	\N	1	2	1965-02-12	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Maid	1	f	f	t	f	2023-11-21 23:58:00	2023-11-21 23:58:00
521	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623978378927	Cagapi	Neptali	None	\N	\N	3	1	1997-05-13	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	23	7	t	None	\N	t	f	t	f	2023-11-22 23:58:00	2023-11-22 23:58:00
522	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623978378927	Gumapac	Renz	N/a	\N	\N	3	1	2005-10-21	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2023-11-23 23:58:00	2023-11-23 23:58:00
523	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623979222649	Arconada	Cristina	Otacan	\N	\N	2	2	1978-12-07	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	f	0	19	\N	t	Housewife	\N	f	f	t	f	2023-11-24 23:58:00	2023-11-24 23:58:00
524	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623979222649	Arconada	Fidel 	Varquez	\N	\N	1	1	1961-08-21	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Farmer	1	f	f	t	f	2023-11-25 23:58:00	2023-11-25 23:58:00
525	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623979222649	Arconada	Ketdel	Piamonte	\N	\N	3	2	2003-03-20	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2023-11-26 23:58:00	2023-11-26 23:58:00
526	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623979222649	Arconada	Medel	Piamonte	\N	\N	3	1	2007-08-04	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	f	18	13	\N	t	None	\N	f	f	f	t	2023-11-27 23:58:00	2023-11-27 23:58:00
527	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623980050162	Suan	Jl luke	Piamonte	\N	\N	3	1	2007-06-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	18	17	\N	t	None	\N	f	f	f	t	2023-11-28 23:58:00	2023-11-28 23:58:00
528	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623980050162	Piamonte	Lina	Otacan	\N	\N	1	2	1985-01-23	4	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife	\N	f	f	t	f	2023-11-29 23:58:00	2023-11-29 23:58:00
529	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623980050162	Luyahan	Lp jan	Piamonte	\N	\N	3	1	2020-01-28	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2023-11-30 23:58:00	2023-11-30 23:58:00
530	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981009425	Oculam	Ariel 	Sangco	\N	\N	1	1	1983-10-08	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	32	\N	f	Farmer	1	f	f	t	f	2023-12-01 23:58:00	2023-12-01 23:58:00
531	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981009425	Oculam	Evelyn	Biray	\N	\N	2	2	1975-09-04	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	19	\N	t	Housewife	\N	f	f	t	f	2023-12-02 23:58:00	2023-12-02 23:58:00
532	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981009425	Beray	Kyrelle	None	\N	\N	3	2	2003-09-30	1	\N	f	f	Catholic	t	1	f	t	2	\N	t	21	21	\N	t	None	\N	f	f	f	t	2023-12-03 23:58:00	2023-12-03 23:58:00
533	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981948453	Beray	Ashley	None	\N	\N	3	2	2007-07-05	1	\N	f	f	Catholic	t	2	f	t	2	\N	f	0	11	\N	f	None	\N	f	f	f	t	2023-12-04 23:58:00	2023-12-04 23:58:00
534	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981948453	Beray	Dionisio	Morano	\N	\N	8	1	1937-02-08	3	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	None	\N	f	f	t	f	2023-12-05 23:58:00	2023-12-05 23:58:00
535	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623981948453	Beray	Virginsita 	Timcang	\N	\N	1	2	1978-10-06	1	\N	f	f	Catholic	t	2	f	t	2	\N	t	11	11	\N	t	Housewife	\N	f	f	t	f	2023-12-06 23:58:00	2023-12-06 23:58:00
536	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623982750599	Fuentes	April apple	Beray	\N	\N	3	2	1994-04-25	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	8	t	Call center	3	t	f	t	f	2023-12-07 23:58:00	2023-12-07 23:58:00
537	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623982750599	Fuentes	Benefredo	Oga	\N	\N	1	1	1954-01-02	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	None	\N	t	f	t	f	2023-12-08 23:58:00	2023-12-08 23:58:00
538	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623982750599	Fuentes	Francis dennis	Beray	\N	\N	3	1	1989-09-27	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Security Guard	3	t	f	t	f	2023-12-09 23:58:00	2023-12-09 23:58:00
539	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623982750599	Fuentes	Letecia	Beray	\N	\N	2	2	1966-05-03	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	19	\N	t	Manicure/pedicure	1	f	f	t	f	2023-12-10 23:58:00	2023-12-10 23:58:00
540	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623982750599	Fuentes	Rolan leonard	Beray	\N	\N	3	1	1991-08-23	1	\N	f	f	Catholic 	f	\N	f	f	2	\N	f	0	34	2	t	Construction	2	t	t	t	f	2023-12-11 23:58:00	2023-12-11 23:58:00
541	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623984849230	Panganoron	Brian 	Sahay	\N	\N	3	1	1986-11-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Farm laborer	1	f	f	t	f	2023-12-12 23:58:00	2023-12-12 23:58:00
542	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623984849230	Panganoron	Edna	Sahay	\N	\N	3	2	1990-09-16	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Farm laborer	1	f	f	t	f	2023-12-13 23:58:00	2023-12-13 23:58:00
543	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623984849230	Panganoron	Ralx raphael	None	\N	\N	8	1	2005-05-28	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2023-12-14 23:58:00	2023-12-14 23:58:00
544	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623984849230	Panganoron 	Rolina	Sahay	\N	\N	1	2	1968-07-02	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Farm laborer	1	f	f	t	f	2023-12-15 23:58:00	2023-12-15 23:58:00
545	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623984849230	Malinao	Villy 	Panganoron	\N	\N	8	1	2007-05-11	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	18	18	\N	t	None	\N	f	f	f	t	2023-12-16 23:58:00	2023-12-16 23:58:00
546	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623985881264	Sangco	James	Laquinta	\N	\N	3	1	2006-04-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2023-12-17 23:58:00	2023-12-17 23:58:00
547	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623985881264	Sangco	Jean 	Laquinta	\N	\N	3	2	1997-07-08	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	2	t	Office work	1	t	t	t	f	2023-12-18 23:58:00	2023-12-18 23:58:00
548	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623985881264	Sangco	Julieta	Laquinta	\N	\N	2	2	1973-08-08	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	f	t	2023-12-19 23:58:00	2023-12-19 23:58:00
549	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623985881264	Sangco	Rogelio	Bustillo	\N	\N	1	1	1971-03-12	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Carpenter	2	f	f	t	f	2023-12-20 23:58:00	2023-12-20 23:58:00
550	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623986783201	Bacquial	AJ Fahrel	Lacuarin	\N	\N	3	1	2008-08-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2023-12-21 23:58:00	2023-12-21 23:58:00
551	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623986783201	Bacquial	Armando	Fidelis	\N	\N	1	1	1973-04-09	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Laborer	1	f	f	t	f	2023-12-22 23:58:00	2023-12-22 23:58:00
552	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623986783201	Bacquial	Armando	Lacuarin	Junior	\N	3	1	2012-06-13	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	13	13	\N	t	None	\N	f	f	f	t	2023-12-23 23:58:00	2023-12-23 23:58:00
553	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623986783201	Bacquial	Jocelyn	Lacuarin	\N	\N	2	2	1979-12-24	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Farm laborer	1	f	f	f	t	2023-12-24 23:58:00	2023-12-24 23:58:00
554	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623986783201	Bacquial	Mike lester	Lacuarin	\N	\N	3	1	2000-09-21	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	22	\N	t	None	\N	f	f	f	t	2023-12-25 23:58:00	2023-12-25 23:58:00
555	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623986783201	Bacquial	Sheena mae	Lacuarin	\N	\N	3	2	1999-02-17	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	22	\N	t	Hotel receptionist	3	f	f	f	f	2023-12-26 23:58:00	2023-12-26 23:58:00
556	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623993453917	Sangco	Eddie	Talidro	\N	\N	1	1	1959-10-11	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Farm laborer	2	f	f	t	f	2023-12-27 23:58:00	2023-12-27 23:58:00
557	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623993453917	Sangco	Julita	Dagondon	\N	\N	2	2	1961-07-31	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	f	t	2023-12-28 23:58:00	2023-12-28 23:58:00
558	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623993453917	Sangco	Ledie 	Dagondon	\N	\N	3	2	1994-01-06	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	34	34	3	f	None	\N	f	f	f	f	2023-12-29 23:58:00	2023-12-29 23:58:00
559	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623993453917	Sangco	Ritchel	Dagondon	\N	\N	3	2	2000-07-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	32	32	\N	t	None	\N	f	f	f	t	2023-12-30 23:58:00	2023-12-30 23:58:00
560	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Archie	Tobiano	\N	\N	3	1	2001-05-26	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Laborer	1	f	f	f	t	2023-12-31 23:58:00	2023-12-31 23:58:00
561	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Arlynda	Tobiano	\N	\N	2	2	1985-08-05	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Laborer	1	f	f	f	t	2024-01-01 23:58:00	2024-01-01 23:58:00
562	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Charlie	Tobiano	\N	\N	3	1	2015-09-24	1	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	1	1	\N	t	None	\N	f	f	f	t	2024-01-02 23:58:00	2024-01-02 23:58:00
563	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Charmen joy	Tobiano	\N	\N	3	2	2009-04-04	1	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	16	16	\N	t	None	\N	f	f	f	t	2024-01-03 23:58:00	2024-01-03 23:58:00
564	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Eddie	Macaldo	\N	\N	1	1	1973-03-10	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farmers	1	t	f	t	f	2024-01-04 23:58:00	2024-01-04 23:58:00
565	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Joanna faith	Tobiano	\N	\N	3	2	2019-09-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-01-05 23:58:00	2024-01-05 23:58:00
566	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Junrel	Tobiano	\N	\N	3	1	2000-04-15	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Laborer	2	t	f	t	f	2024-01-06 23:58:00	2024-01-06 23:58:00
567	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623994256544	Simblante	Lady jane	Tobiano	\N	\N	3	2	2004-09-23	1	\N	f	f	Born again christian	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2024-01-07 23:58:00	2024-01-07 23:58:00
568	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623996402994	Samyaw	Jobert 	Pason	\N	\N	8	1	2006-04-13	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2024-01-08 23:58:00	2024-01-08 23:58:00
569	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623996402994	Samyaw	Leonardo 	Fernandes	\N	\N	1	1	1966-04-10	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Construction	2	t	f	t	f	2024-01-09 23:58:00	2024-01-09 23:58:00
570	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623996402994	Samyaw	Linita	Pason	\N	\N	2	2	1968-01-18	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	f	t	2024-01-10 23:58:00	2024-01-10 23:58:00
571	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623996402994	Samyaw	Rey 	Pason	\N	\N	3	1	2008-08-21	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	t	None	\N	f	f	f	t	2024-01-11 23:58:00	2024-01-11 23:58:00
572	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623996402994	Samyaw	Ronald	Pason	\N	\N	3	1	2004-05-31	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	None	\N	f	f	f	t	2024-01-12 23:58:00	2024-01-12 23:58:00
573	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623997357117	Vergara	Janjan	Samyaw	\N	\N	3	1	2016-10-24	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-01-13 23:58:00	2024-01-13 23:58:00
574	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623997357117	Vergara	Jayen	Samyaw	\N	\N	3	2	2021-03-02	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-01-14 23:58:00	2024-01-14 23:58:00
575	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623997357117	Samyaw	Jocel	Pason	\N	\N	2	2	1990-09-16	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2024-01-15 23:58:00	2024-01-15 23:58:00
576	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623997357117	Samyaw	Jocellyn	Pason	\N	\N	3	2	2010-11-10	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	14	14	\N	t	None	\N	f	f	f	t	2024-01-16 23:58:00	2024-01-16 23:58:00
577	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623997357117	Vergara	Loverne	Gantalaw	\N	\N	1	1	1995-09-07	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Farm laborer	1	f	f	f	f	2024-01-17 23:58:00	2024-01-17 23:58:00
578	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623998175250	Flores	Ensue	Pogoy	\N	\N	3	1	2018-09-07	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-01-18 23:58:00	2024-01-18 23:58:00
579	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623998175250	Flores	Ezrah	Pogoy	\N	\N	3	1	2021-03-17	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	 None	\N	f	f	f	t	2024-01-19 23:58:00	2024-01-19 23:58:00
580	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623998175250	Flores	Jairos	Daguplo	\N	\N	1	1	1987-01-02	1	\N	f	f	Pilipinista	f	\N	f	t	2	\N	f	0	16	\N	f	Farm labor	1	f	f	t	f	2024-01-20 23:58:00	2024-01-20 23:58:00
581	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1623998175250	Palos	Sylvia 	Pogoy	\N	\N	2	2	1981-06-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	t	f	2024-01-21 23:58:00	2024-01-21 23:58:00
582	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624000067572	Gambin	Cris andri	Fostanes	\N	\N	3	1	2011-08-10	1	\N	f	f	Catholic	f	\N	f	f	3	\N	f	13	13	\N	t	None	\N	f	f	f	f	2024-01-22 23:58:00	2024-01-22 23:58:00
583	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624000067572	Gambin	Crisistomo	Henaniban	\N	\N	1	1	1979-03-07	1	\N	f	f	Iglesi ni cristo	f	\N	f	f	2	\N	f	0	19	\N	t	Truck driver	2	t	f	f	f	2024-01-23 23:58:00	2024-01-23 23:58:00
584	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624000067572	Gambin	James andrei	Fostanes	\N	\N	3	1	2013-03-14	1	\N	f	f	Catholic	f	\N	f	f	3	\N	f	12	12	\N	t	None	\N	f	f	f	f	2024-01-24 23:58:00	2024-01-24 23:58:00
585	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624000067572	Fostanes	Janine	None	\N	\N	7	2	2008-04-26	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	17	17	\N	t	None	\N	f	f	f	f	2024-01-25 23:58:00	2024-01-25 23:58:00
586	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624000067572	Fostanes	Juana	Salaum	\N	\N	2	2	1982-08-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Barangay utility worker	1	f	f	f	f	2024-01-26 23:58:00	2024-01-26 23:58:00
587	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624001210668	Malinao	Clark 	Claridad	\N	\N	3	1	2015-11-02	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	1	1	\N	f	None	\N	f	f	f	t	2024-01-27 23:58:00	2024-01-27 23:58:00
588	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624001210668	Malinao	Jundryl	Tulang	\N	\N	1	1	1984-07-25	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farm laborer	1	f	f	t	f	2024-01-28 23:58:00	2024-01-28 23:58:00
589	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624001210668	Kamingawan	Lenie 	Claridad	\N	\N	7	2	2012-07-28	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	13	13	\N	f	None	\N	f	f	f	t	2024-01-29 23:58:00	2024-01-29 23:58:00
590	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624001210668	Claridad	Shynell	Maglasang	\N	\N	2	2	1992-10-25	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	f	Housewife	\N	f	f	t	f	2024-01-30 23:58:00	2024-01-30 23:58:00
591	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624001210668	Malinao	Xyril	Claridad	\N	\N	3	1	2020-04-26	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-01-31 23:58:00	2024-01-31 23:58:00
592	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624002236585	Quimpan	Celistino	Toralba	\N	\N	1	1	1980-05-19	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	t	Farmer	1	f	f	t	f	2024-02-01 23:58:00	2024-02-01 23:58:00
593	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624002236585	Quimpan	Leogey	Madel	\N	\N	3	1	2016-11-26	1	\N	f	f	Catholic	f	\N	f	f	3	\N	t	1	1	\N	f	None	\N	f	f	f	t	2024-02-02 23:58:00	2024-02-02 23:58:00
594	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624003158984	Quimpan	Daylinda	Toralba	\N	\N	1	2	1949-12-15	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2024-02-03 23:58:00	2024-02-03 23:58:00
595	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624004583008	Sangco	Felix	Mamsa	Junior	\N	3	1	1973-06-18	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	f	Farmer	1	f	f	f	f	2024-02-04 23:58:00	2024-02-04 23:58:00
596	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624004583008	Sangco	Felix	Mamsa	Senior	\N	1	1	1929-11-20	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	None	\N	f	f	f	f	2024-02-05 23:58:00	2024-02-05 23:58:00
597	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624062736372	Bulasa	Blaire	Cagas	\N	\N	3	2	2019-05-17	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-02-06 23:58:00	2024-02-06 23:58:00
598	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624062736372	Bulasa	Elmar 	Bolotaolo	\N	\N	1	1	1991-03-18	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Farm laborer	1	f	f	t	f	2024-02-07 23:58:00	2024-02-07 23:58:00
599	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624062736372	Cagas	Neciel	Supas	\N	\N	2	2	1996-04-22	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Housewife	\N	f	f	t	f	2024-02-08 23:58:00	2024-02-08 23:58:00
600	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaolo	Bj-boy	Jala	\N	\N	3	1	2009-07-05	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	f	None	\N	f	f	f	t	2024-02-09 23:58:00	2024-02-09 23:58:00
601	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaolo	Desmar 	Jala	\N	\N	3	1	1994-12-11	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Restaurant - cook	1	t	f	t	f	2024-02-10 23:58:00	2024-02-10 23:58:00
602	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaolo	Jeffrey	Jala	\N	\N	3	1	1998-04-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	None	\N	t	f	f	f	2024-02-11 23:58:00	2024-02-11 23:58:00
603	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaolo	Luis	Antegra	\N	\N	1	1	1964-09-28	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	None	\N	f	f	t	f	2024-02-12 23:58:00	2024-02-12 23:58:00
604	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaolo	Luis	Jala	Second	\N	3	1	1997-05-05	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Company worker- teller	2	t	f	t	f	2024-02-13 23:58:00	2024-02-13 23:58:00
605	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaolo	Marluiz	Jala	\N	\N	3	1	2015-08-01	1	\N	f	f	Catholic	t	2	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-02-14 23:58:00	2024-02-14 23:58:00
606	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaol	Maycaila	Jala	\N	\N	3	2	2004-05-05	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	21	21	\N	t	None	\N	f	f	f	t	2024-02-15 23:58:00	2024-02-15 23:58:00
607	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624063272018	Bolotaolo	Vina	Jala	\N	\N	2	2	1971-06-11	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife	\N	f	f	f	t	2024-02-16 23:58:00	2024-02-16 23:58:00
608	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624065018157	Praquiles	Gabriel 	Mansolita	\N	\N	1	1	1988-01-10	2	\N	f	f	Jehovah witnesses	f	\N	f	f	2	\N	f	0	20	\N	t	Labor	1	f	f	t	f	2024-02-17 23:58:00	2024-02-17 23:58:00
609	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624065018157	Praquiles	Josephine	Paña	\N	\N	1	1	1986-11-11	2	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	f	t	2024-02-18 23:58:00	2024-02-18 23:58:00
610	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624065018157	Praquilis	Sephriel cate	Paña	\N	\N	3	2	2017-08-06	1	\N	f	f	Jehovah witneses	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-02-19 23:58:00	2024-02-19 23:58:00
611	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624065018157	Praquilis	Uril stephan	Paña	\N	\N	3	1	2012-06-08	1	\N	f	f	Jehovah witnesses	f	\N	f	f	2	\N	t	13	13	\N	f	None	\N	f	f	f	t	2024-02-20 23:58:00	2024-02-20 23:58:00
612	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624066450774	Sangco	Arnold 	Bustillo	\N	\N	3	1	1973-01-05	1	\N	f	f	Catholic	f	\N	f	f	3	\N	f	0	14	\N	f	Farm labor	1	f	f	t	f	2024-02-21 23:58:00	2024-02-21 23:58:00
613	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624066450774	Sangco	Mario	Bustillo	\N	\N	3	1	1979-05-10	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Carpenter	2	f	f	t	f	2024-02-22 23:58:00	2024-02-22 23:58:00
614	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624066450774	Sangco	Teresita	Bustillo	\N	\N	1	2	1947-03-04	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	14	\N	t	None	\N	f	f	t	f	2024-02-23 23:58:00	2024-02-23 23:58:00
615	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067574847	Sangco	Alma	Bustillo	\N	\N	1	2	1986-07-12	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2024-02-24 23:58:00	2024-02-24 23:58:00
616	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067574847	Caballero	Cherry rose	Sangco	\N	\N	3	2	2008-06-28	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2024-02-25 23:58:00	2024-02-25 23:58:00
617	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067992659	Paña	Angelo	Custan	\N	\N	3	1	2001-08-05	1	\N	f	f	Jehovah witnesses	f	\N	f	t	2	\N	f	31	31	\N	t	None	\N	f	f	f	t	2024-02-26 23:58:00	2024-02-26 23:58:00
618	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067992659	Paña	Jodelyn	Custan	\N	\N	3	2	1995-08-11	1	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	t	34	34	\N	t	None	\N	f	f	t	f	2024-02-27 23:58:00	2024-02-27 23:58:00
619	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067992659	Paña	Julio	Lumictin	\N	\N	1	1	1964-07-22	2	\N	f	f	Jehovah witness	f	\N	f	f	2	\N	f	0	18	\N	t	Farmers	1	f	f	t	f	2024-02-28 23:58:00	2024-02-28 23:58:00
620	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624067992659	Paña	Luz	Custan	\N	\N	2	2	1964-10-16	2	\N	f	f	Jehovah's witnesses	f	\N	f	t	2	\N	f	0	20	\N	t	Housekeeper	\N	f	f	f	t	2024-02-29 23:58:00	2024-02-29 23:58:00
621	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624068937039	Paña	Duztin khim	Otto	\N	\N	3	1	2011-08-17	1	\N	f	f	Jehovah witness	f	\N	f	f	3	\N	t	13	13	\N	t	None	\N	f	f	f	t	2024-03-01 23:58:00	2024-03-01 23:58:00
622	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624068937039	Paña	Jovelyn	Otto	\N	\N	2	2	1992-05-31	2	\N	f	f	Jehovah witnesses	f	\N	t	f	2	\N	f	0	20	\N	t	Maid	4	t	f	t	f	2024-03-02 23:58:00	2024-03-02 23:58:00
623	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624068937039	Paña 	Reinz joshua	Otto	\N	\N	3	1	2013-03-02	1	\N	f	f	Jehovah witness	f	\N	f	t	3	\N	f	12	12	\N	t	None	\N	f	f	f	t	2024-03-03 23:58:00	2024-03-03 23:58:00
624	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624068937039	Paña	Richard	Custan	\N	\N	1	1	1990-10-27	2	\N	f	f	Jehovah witness	f	\N	f	f	2	\N	f	0	20	\N	t	None	\N	f	f	t	f	2024-03-04 23:58:00	2024-03-04 23:58:00
625	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	Sangco	Bernabe	Supas	\N	\N	3	1	1999-11-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	22	\N	t	None	\N	f	f	f	t	2024-03-05 23:58:00	2024-03-05 23:58:00
626	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	Sangco	Bernard	Supas	\N	\N	3	1	1998-02-05	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	\N	t	None	\N	f	f	f	t	2024-03-06 23:58:00	2024-03-06 23:58:00
627	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	Sangco	Bernardita	Supas	\N	\N	2	1	1961-11-14	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housekwife	\N	f	f	f	t	2024-03-07 23:58:00	2024-03-07 23:58:00
628	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	Sangco	Princess rona	Supas	\N	\N	3	1	2007-09-05	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	18	18	\N	t	None	\N	f	f	f	t	2024-03-08 23:58:00	2024-03-08 23:58:00
629	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	Sangco	Ricky	Supas	\N	\N	3	1	1991-03-29	1	\N	f	f	Catholic	f	\N	t	f	2	\N	f	0	34	7	f	Company maintenance operator	4	f	f	f	f	2024-03-09 23:58:00	2024-03-09 23:58:00
630	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	Sangco	Romeo	Supas	Junior	\N	3	1	1986-06-29	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Mobile fish vendor	2	t	f	f	f	2024-03-10 23:58:00	2024-03-10 23:58:00
631	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624070243875	Sangco	Romeo emiliano	Talidro	\N	\N	1	1	1957-09-04	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Farm labore	1	f	f	t	f	2024-03-11 23:58:00	2024-03-11 23:58:00
632	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624072520789	Parativo	Reynavel	Macasmot	\N	\N	2	1	1999-05-22	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	f	2024-03-12 23:58:00	2024-03-12 23:58:00
633	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624072520789	Sangco	Rhian ree	Parativo	\N	\N	3	1	2017-08-06	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	2	2	\N	f	None	\N	f	f	f	t	2024-03-13 23:58:00	2024-03-13 23:58:00
634	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624072520789	Sangco	Rhylle 	Parativo	\N	\N	3	1	2019-08-05	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-03-14 23:58:00	2024-03-14 23:58:00
635	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624072520789	Sangco	Ryan	Supas	\N	\N	1	1	1995-04-06	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	7	t	Company maintenance electrician	2	t	f	t	f	2024-03-15 23:58:00	2024-03-15 23:58:00
636	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624079732571	Bacquial	Jeverly	Ganancial	\N	\N	2	2	1984-05-21	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	32	\N	t	House wife	\N	t	f	f	t	2024-03-16 23:58:00	2024-03-16 23:58:00
637	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624079732571	Bacquial	Rodel	Guillen	\N	\N	1	1	1984-05-26	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Laborer	1	t	f	t	f	2024-03-17 23:58:00	2024-03-17 23:58:00
638	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624079732571	Bacquial	Xandra jed	Ganancial	\N	\N	3	2	2013-07-12	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	12	12	\N	t	None	\N	f	f	f	t	2024-03-18 23:58:00	2024-03-18 23:58:00
639	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624079732571	Bacquial	Xian niño	Ganancial	\N	\N	3	1	2011-12-27	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	13	13	\N	f	None	\N	f	f	f	t	2024-03-19 23:58:00	2024-03-19 23:58:00
640	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624079732571	Bacquial	Xyra may	Ganancial	\N	\N	3	2	2008-05-22	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2024-03-20 23:58:00	2024-03-20 23:58:00
641	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624079732571	Bacquial	Xyriel jeedel 	Ganancial	\N	\N	3	2	2010-07-01	1	\N	f	f	Catholic	f	\N	f	t	3	\N	f	15	15	\N	t	None	\N	f	f	f	t	2024-03-21 23:58:00	2024-03-21 23:58:00
642	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624080746080	Bernal	Abegail	Nakila	\N	\N	8	2	1962-10-16	4	\N	f	f	Penticostal	f	\N	f	t	2	\N	f	0	32	\N	f	None	\N	t	f	t	f	2024-03-22 23:58:00	2024-03-22 23:58:00
643	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624080746080	Nakila	Michael	Libarios	\N	\N	1	1	1968-09-11	1	\N	f	f	Penticostal	f	\N	f	t	2	\N	f	0	20	\N	t	Tricycle driver	2	f	f	t	f	2024-03-23 23:58:00	2024-03-23 23:58:00
644	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624081644621	Bernal	Christine rose	Tumarao	\N	\N	2	2	1989-04-03	2	\N	f	f	Penticostal	f	\N	f	t	2	\N	f	0	34	3	t	Teacher	5	f	f	t	f	2024-03-24 23:58:00	2024-03-24 23:58:00
645	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624081644621	Bernal	Godfrey	Nakila	\N	\N	1	1	1991-03-24	2	\N	f	f	Penticostal	f	\N	f	f	2	\N	f	0	34	5	t	Government employee	1	f	f	t	f	2024-03-25 23:58:00	2024-03-25 23:58:00
646	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624082448679	Jabujab	Gk	Malinao	\N	\N	8	1	2002-01-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	31	31	\N	t	None	\N	f	f	f	f	2024-03-26 23:58:00	2024-03-26 23:58:00
647	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624082448679	Malinao	Leopoldo	Sarsadillas	\N	\N	1	1	1953-07-29	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	None	\N	f	f	f	f	2024-03-27 23:58:00	2024-03-27 23:58:00
648	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624082448679	Malinao	Teresita	Tulang	\N	\N	2	2	1955-03-20	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	f	None	\N	f	f	f	f	2024-03-28 23:58:00	2024-03-28 23:58:00
649	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	Escala	Flordelisa	Antigra	\N	\N	2	2	1968-07-08	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Housewife	\N	f	f	f	t	2024-03-29 23:58:00	2024-03-29 23:58:00
650	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	Escala	Mary joy	Antegra	\N	\N	3	2	2006-09-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	19	19	\N	f	None	\N	f	f	f	t	2024-03-30 23:58:00	2024-03-30 23:58:00
651	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	Escala	Maryien	Antegra	\N	\N	3	2	2008-03-29	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	17	17	\N	f	None	\N	f	f	f	t	2024-03-31 23:58:00	2024-03-31 23:58:00
652	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	Escala	Rolando 	Alibanggo	\N	\N	1	1	1967-02-07	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	15	\N	t	Motor driver	1	f	f	t	f	2024-04-01 23:58:00	2024-04-01 23:58:00
653	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	Escala	Romel	Antegra	\N	\N	3	1	2001-10-01	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	31	\N	t	None	\N	f	f	f	t	2024-04-02 23:58:00	2024-04-02 23:58:00
654	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	Escala	Romnick	Antegra	\N	\N	3	1	2004-07-18	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	21	\N	t	None	\N	f	f	f	t	2024-04-03 23:58:00	2024-04-03 23:58:00
655	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624083375142	Escala	Ronie	Antegra	\N	\N	3	1	1996-05-07	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	f	Farm laborer	1	f	f	t	f	2024-04-04 23:58:00	2024-04-04 23:58:00
656	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624084881384	Escala	Marjorie	Antegra	\N	\N	2	2	1993-02-15	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	Housewife	\N	f	f	t	f	2024-04-05 23:58:00	2024-04-05 23:58:00
657	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624084881384	Montaño	Mc kevin	Libarnez	\N	\N	1	1	1993-04-30	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	24	\N	t	Government employee	5	t	f	t	f	2024-04-06 23:58:00	2024-04-06 23:58:00
658	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624084881384	Montaño	Mc rievin	Escala	\N	\N	3	1	2018-01-13	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-04-07 23:58:00	2024-04-07 23:58:00
659	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624085627761	Golilat	Mechell	Alipao	\N	\N	2	2	1998-10-07	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2024-04-08 23:58:00	2024-04-08 23:58:00
660	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624085627761	Escala	Reymark	Golilat	\N	\N	3	1	2019-08-26	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	t	None	\N	f	f	f	t	2024-04-09 23:58:00	2024-04-09 23:58:00
661	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624085627761	Escala	Rodel	Antegra	\N	\N	1	1	1999-06-06	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	21	\N	f	Baker	2	t	f	t	f	2024-04-10 23:58:00	2024-04-10 23:58:00
662	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624086275382	Apolinaria	Charles Ian	Patolilic	\N	\N	3	1	2003-08-29	1	\N	f	f	Premethodist	f	\N	f	f	2	\N	t	21	21	\N	f	None	\N	f	f	f	t	2024-04-11 23:58:00	2024-04-11 23:58:00
663	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624086275382	Dellosa	Felix	Nakila	\N	\N	1	1	1954-09-18	1	\N	f	f	Seventh day adventist	f	\N	f	t	2	\N	f	0	16	\N	f	Motorcycle driver	1	f	f	f	f	2024-04-12 23:58:00	2024-04-12 23:58:00
664	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624086275382	Apolinaria	Isabelita	Patulilic	\N	\N	2	2	1961-10-15	1	\N	f	f	Premethodist	f	\N	f	f	2	\N	f	0	18	\N	f	Housewife	\N	f	f	t	f	2024-04-13 23:58:00	2024-04-13 23:58:00
665	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624086275382	Apolinaria	Jhessa	Patolilic	\N	\N	3	2	2000-08-23	1	\N	f	f	Premethodist	f	\N	f	f	2	\N	f	0	31	\N	t	Laborer	1	f	f	f	f	2024-04-14 23:58:00	2024-04-14 23:58:00
666	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624086275382	Apolonaria	Mark Anthony	Patolilic	\N	\N	3	1	1995-11-23	1	\N	f	f	Premethodist	f	\N	f	t	2	\N	f	0	34	3	f	Teacher	5	f	t	t	f	2024-04-15 23:58:00	2024-04-15 23:58:00
667	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624087974601	Itliong	Francis leo	Dellosa	\N	\N	3	1	2011-04-19	1	\N	f	f	Seven day Adventist	f	\N	f	t	2	\N	t	14	14	\N	t	None	\N	f	f	f	t	2024-04-16 23:58:00	2024-04-16 23:58:00
668	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624087974601	Cagay	Johnbert	Dellosa	Junior	\N	3	1	2020-11-12	1	\N	f	f	Seventh day Adventist	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-04-17 23:58:00	2024-04-17 23:58:00
669	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624087974601	Cagay	Johnbert	Villamor	\N	\N	1	1	1989-05-13	2	\N	f	f	Born again	f	\N	f	f	2	\N	f	0	33	\N	t	Afp	5	f	f	t	f	2024-04-18 23:58:00	2024-04-18 23:58:00
670	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624087974601	Cagay	Mafil joy	Dellosa	\N	\N	2	2	1985-03-14	2	\N	f	f	Seven day Adventist	f	\N	f	f	2	\N	f	0	34	2	t	Vaccinator	3	t	f	t	f	2024-04-19 23:58:00	2024-04-19 23:58:00
671	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624087974601	Caga	Princess Aaliyah	Dellosa	\N	\N	3	2	2018-04-25	1	\N	f	f	Sevenday Adventist	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-04-20 23:58:00	2024-04-20 23:58:00
672	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624089203327	Telin	Jane	Judaya	\N	\N	2	2	1990-12-30	2	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2024-04-21 23:58:00	2024-04-21 23:58:00
673	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624089203327	Telin	Rione zarien jyn	Judaya	\N	\N	3	2	2021-03-13	1	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-04-22 23:58:00	2024-04-22 23:58:00
674	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624089203327	Telin	Ronydan	Curilan	\N	\N	1	1	1993-12-21	2	\N	f	f	Iglesias ni cristo	f	\N	f	f	2	\N	f	0	33	\N	t	Sell associate	2	t	f	t	f	2024-04-23 23:58:00	2024-04-23 23:58:00
675	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624089203327	Telin	Ryjane ynne	Judaya	\N	\N	3	2	2017-10-14	1	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-04-24 23:58:00	2024-04-24 23:58:00
676	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624234080522	Bolotaolo	Diether dritzie	Badiang	\N	\N	3	1	1997-01-06	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	33	\N	t	Labor	1	f	f	f	f	2024-04-25 23:58:00	2024-04-25 23:58:00
677	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624234080522	Bolotaolo	Edwin	Monter	\N	\N	1	1	1968-11-06	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Farmer	1	f	f	f	t	2024-04-26 23:58:00	2024-04-26 23:58:00
678	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624234080522	Bolotaolo	Teresita	Badiang	\N	\N	2	2	1966-11-25	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	32	\N	f	Labor	1	t	f	t	f	2024-04-27 23:58:00	2024-04-27 23:58:00
679	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624235130951	Libarios	Adrian 	Quimada	\N	\N	3	1	2005-05-20	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	21	21	\N	f	None	\N	f	f	f	t	2024-04-28 23:58:00	2024-04-28 23:58:00
680	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624235130951	Quimada	Jhoana marie	None	\N	\N	3	2	2002-11-25	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2024-04-29 23:58:00	2024-04-29 23:58:00
681	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624235130951	Libarios	Joemar	Mendoza	\N	\N	1	1	1969-08-12	4	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Driver	2	t	f	t	f	2024-04-30 23:58:00	2024-04-30 23:58:00
682	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624235130951	Libarios	Kiven cort	Quimada	\N	\N	3	1	2001-04-27	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	22	\N	f	Baker	2	f	f	f	f	2024-05-01 23:58:00	2024-05-01 23:58:00
683	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624235130951	Libarios	Marcilena	Mendoza	\N	\N	8	2	1946-06-21	3	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	f	None	\N	f	f	t	f	2024-05-02 23:58:00	2024-05-02 23:58:00
684	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624235130951	Libarios	Nicole joy	Quimada	\N	\N	3	2	2008-11-16	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	17	17	\N	t	None	\N	f	f	f	t	2024-05-03 23:58:00	2024-05-03 23:58:00
685	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	Client james	Beray	\N	\N	3	1	2008-04-22	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2024-05-04 23:58:00	2024-05-04 23:58:00
686	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	Dionesio	Beray	Third	\N	3	1	2013-10-31	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	11	11	\N	t	None	\N	f	f	f	t	2024-05-05 23:58:00	2024-05-05 23:58:00
687	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	Dionesio	Fediles	Junior	\N	1	1	1966-10-08	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	15	\N	f	Labor	1	f	f	t	f	2024-05-06 23:58:00	2024-05-06 23:58:00
688	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	Diseree jean	Beray	\N	\N	3	2	2010-12-16	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	14	14	\N	t	None	\N	f	f	f	t	2024-05-07 23:58:00	2024-05-07 23:58:00
689	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	John lawrence	Beray	\N	\N	3	1	2006-03-09	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	17	18	\N	f	None	\N	f	f	f	t	2024-05-08 23:58:00	2024-05-08 23:58:00
690	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	Louie jay	Beray	\N	\N	3	1	2004-03-04	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	20	20	\N	t	None	\N	f	f	f	t	2024-05-09 23:58:00	2024-05-09 23:58:00
691	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	Luzminda	Beray	\N	\N	2	2	1973-09-10	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	f	None	\N	f	f	t	f	2024-05-10 23:58:00	2024-05-10 23:58:00
692	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624236698267	Bacquial	Rixell mark	Beray	\N	\N	3	1	2001-04-07	1	\N	f	f	Born again Christian	f	\N	f	t	2	\N	t	21	21	\N	t	Labor	1	f	f	f	t	2024-05-11 23:58:00	2024-05-11 23:58:00
693	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238046234	Llobrera	Ericferd	Bacquial	\N	\N	3	1	2012-07-23	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	11	11	\N	f	None	\N	f	f	f	t	2024-05-12 23:58:00	2024-05-12 23:58:00
694	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238046234	Llobrera	Frexen 	Bacquial	\N	\N	3	2	2009-02-06	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2024-05-13 23:58:00	2024-05-13 23:58:00
695	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238046234	Bacquial	Lyxen mae	Beray	\N	\N	1	2	1992-06-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	52	\N	t	None	\N	f	f	f	f	2024-05-14 23:58:00	2024-05-14 23:58:00
696	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238599095	Tampus	Flora 	Samyaw	\N	\N	2	2	1963-08-18	2	\N	f	f	Jesus is lord	f	\N	f	f	2	\N	f	0	15	\N	t	Housewife	\N	f	f	f	t	2024-05-15 23:58:00	2024-05-15 23:58:00
697	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238599095	Tampus	Jenelyn	Samyaw	\N	\N	3	2	1996-10-27	1	\N	f	f	Jesus is lord	f	\N	f	f	2	\N	f	0	20	\N	t	Maid	2	f	f	f	f	2024-05-16 23:58:00	2024-05-16 23:58:00
698	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238599095	Tampus	Jobe 	Samyaw	\N	\N	3	2	1992-08-22	1	\N	f	t	Jesus is lord	f	\N	f	f	2	\N	f	0	20	\N	t	Maid	1	f	f	t	f	2024-05-17 23:58:00	2024-05-17 23:58:00
699	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238599095	Tampus	Jolina	Samyaw	\N	\N	3	2	1998-05-25	1	\N	f	f	Jesus is lord	f	\N	f	f	2	\N	f	0	20	\N	f	None	\N	f	f	f	f	2024-05-18 23:58:00	2024-05-18 23:58:00
700	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624238599095	Tampus	Jolito	Robles	\N	\N	1	1	1963-11-04	2	\N	f	f	Jesus is lord	f	\N	f	f	2	\N	f	0	14	\N	t	Farm labor	\N	f	f	t	f	2024-05-19 23:58:00	2024-05-19 23:58:00
701	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624239458199	Sangco	Bernabe	Villacastin	\N	\N	1	1	1958-04-30	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	None	\N	f	f	t	f	2024-05-20 23:58:00	2024-05-20 23:58:00
702	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	Arlen	Bagolor	\N	\N	2	2	1972-12-27	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	32	\N	t	Housewife	\N	f	f	f	t	2024-05-21 23:58:00	2024-05-21 23:58:00
703	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	Follyn jane	Bagolor	\N	\N	3	2	2002-01-01	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2024-05-22 23:58:00	2024-05-22 23:58:00
704	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	Jian	Bagolor	\N	\N	3	2	2008-06-19	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	17	17	\N	t	None	\N	f	f	f	t	2024-05-23 23:58:00	2024-05-23 23:58:00
705	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	Kerren rose	Bagolor	\N	\N	3	2	2013-04-11	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	12	12	\N	t	None	\N	f	f	f	t	2024-05-24 23:58:00	2024-05-24 23:58:00
706	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	Kylie jia	Bagolor	\N	\N	3	2	2015-01-13	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	2	2	\N	f	None	\N	f	f	f	t	2024-05-25 23:58:00	2024-05-25 23:58:00
707	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Botaolo	Laika	Bagolor	\N	\N	3	2	1997-04-10	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	\N	f	None	\N	f	f	t	f	2024-05-26 23:58:00	2024-05-26 23:58:00
708	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	R.A	Bagolor	\N	\N	3	1	1992-12-02	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	19	\N	f	Baker	1	t	f	t	f	2024-05-27 23:58:00	2024-05-27 23:58:00
709	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	Ram	Bagolor	\N	\N	3	2	2011-07-19	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	13	13	\N	f	None	\N	f	f	f	t	2024-05-28 23:58:00	2024-05-28 23:58:00
710	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaol	Ronald	Antegra	\N	\N	1	1	1968-10-23	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Carpenter	1	f	f	t	f	2024-05-29 23:58:00	2024-05-29 23:58:00
711	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624240081808	Bolotaolo	Ronald 	Bagolor	Junior	\N	3	1	2000-04-16	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	19	\N	t	Labor	1	t	f	t	f	2024-05-30 23:58:00	2024-05-30 23:58:00
712	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624242533982	Isaga	Arlyn	Quimpan	\N	\N	2	2	1975-08-16	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	\N	f	House wife	\N	t	f	t	f	2024-05-31 23:58:00	2024-05-31 23:58:00
713	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624242533982	Isaga	Carmelito	Danoco	\N	\N	1	1	1970-09-18	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Driver	1	f	f	f	f	2024-06-01 23:58:00	2024-06-01 23:58:00
714	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624242533982	Isaga	Princess rheen	Quimpan	\N	\N	3	2	2010-08-13	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2024-06-02 23:58:00	2024-06-02 23:58:00
715	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243094156	Mangmang	Charlito 	Ado	\N	\N	1	1	1942-07-20	4	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	None	\N	f	f	f	f	2024-06-03 23:58:00	2024-06-03 23:58:00
716	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243583520	Mangmang	Aileen	Almaiz	\N	\N	2	2	1983-09-15	2	\N	f	f	Born again christian	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	f	t	2024-06-04 23:58:00	2024-06-04 23:58:00
717	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243583520	Mangmang	Jefferson	Almais	\N	\N	3	1	2004-09-30	1	\N	f	f	Born against christian	f	\N	f	f	2	\N	t	21	21	\N	t	None	\N	f	f	f	t	2024-06-05 23:58:00	2024-06-05 23:58:00
718	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243583520	Mangmang	Jhanster 	Almais	\N	\N	3	1	2006-04-22	1	\N	f	f	Born again christian	f	\N	f	f	2	\N	f	19	19	\N	f	None	\N	f	f	f	t	2024-06-06 23:58:00	2024-06-06 23:58:00
719	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243583520	Mangmang	Junifer	Varquez	\N	\N	1	1	1982-02-23	2	\N	f	f	Born again christian	t	1	f	f	2	\N	f	0	19	\N	t	Farm labor	2	t	f	t	f	2024-06-07 23:58:00	2024-06-07 23:58:00
720	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624243583520	Mangmang	Princess angel	Almais	\N	\N	3	2	2003-09-25	1	\N	f	f	Born again christian	f	\N	f	t	2	\N	f	22	22	\N	f	None	\N	f	f	f	t	2024-06-08 23:58:00	2024-06-08 23:58:00
721	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624245206642	Mangmang	Christian lee	Manulat	\N	\N	3	1	2009-07-01	1	\N	f	f	Premethodist	f	\N	f	f	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2024-06-09 23:58:00	2024-06-09 23:58:00
722	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624245206642	Mangmang	Erlie	Manulat	\N	\N	2	2	1992-08-02	2	\N	f	f	Premethodist	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2024-06-10 23:58:00	2024-06-10 23:58:00
723	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624245206642	Mangmang	Renz	Manulat	\N	\N	3	1	2013-05-10	1	\N	f	f	Premethodist	f	\N	f	t	2	\N	f	13	13	\N	t	None	\N	f	f	f	t	2024-06-11 23:58:00	2024-06-11 23:58:00
724	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624245206642	Mangmang	Rex lee	Manulat	\N	\N	3	1	2011-05-10	1	\N	f	f	Premethodist	f	\N	f	t	2	\N	f	14	14	\N	t	None	\N	f	f	f	t	2024-06-12 23:58:00	2024-06-12 23:58:00
725	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624245206642	Mangmang	Richard	Varquez	\N	\N	1	1	1990-06-05	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	13	\N	t	Labor	1	f	f	t	f	2024-06-13 23:58:00	2024-06-13 23:58:00
726	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624246144489	Cempron	Elmar	Panganoron	\N	\N	3	1	2001-03-20	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	31	31	\N	t	None	\N	f	f	f	t	2024-06-14 23:58:00	2024-06-14 23:58:00
727	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624246144489	Cempron	Elpidio	Flores	Junior	\N	1	1	1966-09-18	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Labor	1	f	f	t	f	2024-06-15 23:58:00	2024-06-15 23:58:00
728	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624246144489	Cempron	Marilyn	Panganoron	\N	\N	2	2	1969-08-09	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Barangay kagawad	2	f	f	f	t	2024-06-16 23:58:00	2024-06-16 23:58:00
729	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624246144489	Panganoron	Paciansia	Badiang	\N	\N	8	2	1941-04-05	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	t	None	\N	f	f	f	f	2024-06-17 23:58:00	2024-06-17 23:58:00
730	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624247110667	Hemongala	Gingky	Yap	\N	\N	2	2	2000-10-11	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	22	\N	t	Housewife	\N	f	f	t	f	2024-06-18 23:58:00	2024-06-18 23:58:00
731	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624247110667	Cempron	Mariel	Panganorom	\N	\N	1	1	1996-01-27	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Carpenter	2	f	f	t	f	2024-06-19 23:58:00	2024-06-19 23:58:00
732	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624252329868	Custan	Elias	Labe	\N	\N	1	1	1974-12-19	2	\N	f	f	Jehovah witnesses	f	\N	f	t	2	\N	f	0	18	\N	t	None	\N	f	f	t	f	2024-06-20 23:58:00	2024-06-20 23:58:00
733	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624252329868	Custan	Kent harvey	Mangmang	\N	\N	3	1	2020-09-09	1	\N	f	f	Jehovah withness	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-06-21 23:58:00	2024-06-21 23:58:00
734	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624252329868	Custan 	Kim harra	Mangmang	\N	\N	3	2	2009-02-03	1	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	16	16	\N	t	None	\N	f	f	f	t	2024-06-22 23:58:00	2024-06-22 23:58:00
735	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624252329868	Custan	Kirk harold	Mangmang	\N	\N	3	1	2005-12-06	1	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2024-06-23 23:58:00	2024-06-23 23:58:00
736	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624252329868	Custan	Mapieth	Mangmang	\N	\N	2	2	1987-08-18	2	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	20	\N	f	Feeds vendor	2	t	f	t	f	2024-06-24 23:58:00	2024-06-24 23:58:00
737	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624252329868	Custan	Marcela	Labe	\N	\N	8	2	1944-01-10	3	\N	f	f	Jehovah witness	f	\N	f	f	2	\N	f	0	16	\N	f	None	\N	f	f	f	f	2024-06-25 23:58:00	2024-06-25 23:58:00
738	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254050134	Panganoron	Daniel	Badiang	\N	\N	1	1	1966-12-25	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Labor	1	f	f	t	f	2024-06-26 23:58:00	2024-06-26 23:58:00
739	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254050134	Panganoron 	Rheza	Ramos	\N	\N	3	2	2013-11-28	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	11	11	\N	t	None	\N	f	f	f	t	2024-06-27 23:58:00	2024-06-27 23:58:00
740	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254050134	Panganoron	Rhian 	Ramos	\N	\N	3	2	2018-07-18	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-06-28 23:58:00	2024-06-28 23:58:00
741	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254050134	Panganoron	Rowena 	Ramos	\N	\N	2	2	1992-11-03	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Housewife	\N	f	f	f	t	2024-06-29 23:58:00	2024-06-29 23:58:00
742	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254665595	Maata	Babe	Mesobre	\N	\N	2	2	1976-08-22	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Housewife	\N	f	f	t	f	2024-06-30 23:58:00	2024-06-30 23:58:00
743	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254665595	Maata	Nestor	Mesobre	Junior	\N	7	1	1994-05-13	1	\N	f	f	Catholic	t	2	f	f	2	\N	f	0	13	\N	t	None	\N	f	f	t	f	2024-07-01 23:58:00	2024-07-01 23:58:00
744	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624254665595	Damalerio	Welmer 	Panganoron	\N	\N	1	1	1977-04-30	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Labor	1	f	f	t	f	2024-07-02 23:58:00	2024-07-02 23:58:00
745	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	Aljun	Palos	\N	\N	3	1	2005-02-03	1	\N	f	f	Jgm	f	\N	f	t	2	\N	f	19	19	\N	t	None	\N	f	f	f	t	2024-07-03 23:58:00	2024-07-03 23:58:00
746	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	Almario	Cantor	\N	\N	1	1	1963-05-19	2	\N	f	f	Jgm	f	\N	f	t	2	\N	f	19	19	\N	t	Farm labor	1	f	f	t	f	2024-07-04 23:58:00	2024-07-04 23:58:00
747	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	Almario 	Palos	Junior	\N	3	2	2003-05-17	1	\N	f	f	Jgm	f	\N	f	f	2	\N	f	21	21	\N	t	None	\N	f	f	f	t	2024-07-05 23:58:00	2024-07-05 23:58:00
748	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	Angel mae	Palos	\N	\N	3	2	2011-03-09	1	\N	f	f	Jgm	f	\N	f	t	3	\N	f	13	13	\N	f	None	\N	f	f	f	t	2024-07-06 23:58:00	2024-07-06 23:58:00
749	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	Angeline	Palos	\N	\N	2	2	1967-07-07	2	\N	f	f	Jgm	f	\N	f	f	2	\N	f	0	20	\N	f	Housewife	\N	f	f	f	t	2024-07-07 23:58:00	2024-07-07 23:58:00
750	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	April mae	Palos	\N	\N	3	2	2001-04-05	1	\N	f	f	Jgm	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2024-07-08 23:58:00	2024-07-08 23:58:00
751	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	JC	Palos	\N	\N	3	1	2008-08-07	1	\N	f	f	Jgm	f	\N	f	f	2	\N	f	17	17	\N	t	None	\N	f	f	f	t	2024-07-09 23:58:00	2024-07-09 23:58:00
752	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624255439807	Urboda	Jeymar	Palos	\N	\N	3	1	1999-07-12	1	\N	f	f	Catholic	f	\N	f	f	3	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-07-10 23:58:00	2024-07-10 23:58:00
753	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624256673904	Delacalzada	Deylan lloyd	None	\N	\N	3	1	2011-11-22	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	13	13	\N	t	None	\N	f	f	f	t	2024-07-11 23:58:00	2024-07-11 23:58:00
754	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624256673904	Delacalzada	Merlina	Lopez	\N	\N	2	2	1966-12-09	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Housewife	\N	f	f	f	f	2024-07-12 23:58:00	2024-07-12 23:58:00
755	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624256673904	Delacalzada	Renato 	Lopez	\N	\N	1	1	1965-12-01	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	13	13	\N	t	Labor	1	t	f	f	f	2024-07-13 23:58:00	2024-07-13 23:58:00
756	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624256673904	Salar	Saliesha jerry	Delacalzada	\N	\N	8	2	2015-03-09	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	2	2	\N	f	None	\N	f	f	f	t	2024-07-14 23:58:00	2024-07-14 23:58:00
757	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624256673904	Delacalzada	Sarah jane	Lopez	\N	\N	3	2	1999-12-09	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	8	t	Sales lady	2	t	f	t	f	2024-07-15 23:58:00	2024-07-15 23:58:00
758	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624257612802	Tagle	Marc david	Delacalzada	\N	\N	3	1	2013-02-12	1	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	t	12	12	\N	f	None	\N	f	f	f	t	2024-07-16 23:58:00	2024-07-16 23:58:00
759	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624257612802	Tagle	Marjory	Delacalzada	\N	\N	2	2	1993-05-02	2	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2024-07-17 23:58:00	2024-07-17 23:58:00
760	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624257612802	Tagle	Mark joseph	Sulomon	\N	\N	1	1	1987-03-22	2	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	20	\N	t	Pump attendant	4	t	f	t	f	2024-07-18 23:58:00	2024-07-18 23:58:00
761	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624257612802	Tagle	Mhecaillah averie	Delacalzada	\N	\N	3	2	2017-10-16	1	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-07-19 23:58:00	2024-07-19 23:58:00
762	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624258309828	Platino	Angelo	Ruelo	\N	\N	3	1	2020-01-10	1	\N	f	f	Born again Christian	f	\N	f	f	2	\N	f	0	0	\N	t	None	\N	f	f	f	t	2024-07-20 23:58:00	2024-07-20 23:58:00
763	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624258309828	Platino	Antinio	Angus	\N	\N	1	1	1993-08-10	2	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	0	17	\N	t	Labor	1	f	f	t	f	2024-07-21 23:58:00	2024-07-21 23:58:00
764	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624258309828	Platino	Faith angel	Ruelo	\N	\N	3	2	2014-03-08	1	\N	f	f	Born again Christian	f	\N	f	f	2	\N	f	0	11	\N	t	None	\N	f	f	f	t	2024-07-22 23:58:00	2024-07-22 23:58:00
765	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624258309828	Platino	Gessa 	Ruelo	\N	\N	2	2	1995-03-27	2	\N	f	f	Born again	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	f	t	2024-07-23 23:58:00	2024-07-23 23:58:00
766	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624258309828	Platino	Xander	Ruelo	\N	\N	3	1	2015-06-27	1	\N	f	f	Born again Christian	f	\N	f	f	2	\N	t	2	2	\N	f	None	\N	f	f	f	t	2024-07-24 23:58:00	2024-07-24 23:58:00
767	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624259175945	Raafols	Fermo	Sangco	Senior	\N	1	1	1961-07-31	2	\N	f	f	United penticosttal church	f	\N	f	t	2	\N	f	0	13	\N	t	None	\N	f	f	t	f	2024-07-25 23:58:00	2024-07-25 23:58:00
768	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624259175945	Rafols	Fermo	Maata	\N	\N	3	1	2021-06-21	1	\N	f	f	United penticostal church	f	\N	f	t	1	\N	f	0	15	\N	f	None	\N	f	f	t	f	2024-07-26 23:58:00	2024-07-26 23:58:00
769	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624259175945	Rafols	Hazel	Maata	\N	\N	3	2	1997-10-05	1	\N	f	f	United penticostal church	f	\N	f	t	2	\N	t	34	34	\N	f	None	\N	f	f	f	f	2024-07-27 23:58:00	2024-07-27 23:58:00
770	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624259175945	Rafols	Jonpril	Maata	\N	\N	3	1	2003-04-03	1	\N	f	f	United penticostal church	f	\N	f	t	2	\N	f	0	18	\N	f	Labor	1	f	f	f	t	2024-07-28 23:58:00	2024-07-28 23:58:00
771	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624259175945	Rafols	Judith	Maata	\N	\N	2	2	1964-07-04	2	\N	f	f	United penticostal chuch	f	\N	f	f	2	\N	f	0	19	\N	t	Labor	1	f	f	f	t	2024-07-29 23:58:00	2024-07-29 23:58:00
772	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624259175945	Rafols	Jufil	Maata	\N	\N	3	1	1999-10-28	1	\N	f	f	Labor	f	\N	f	f	2	\N	f	0	18	\N	t	Labor	1	f	f	f	f	2024-07-30 23:58:00	2024-07-30 23:58:00
773	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624260263104	Dopio	Carlos Miguel	Rafols	\N	\N	3	1	2012-06-21	1	\N	f	f	United penticostal church	f	\N	f	f	2	\N	t	13	13	\N	f	None	\N	f	f	f	t	2024-07-31 23:58:00	2024-07-31 23:58:00
774	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624260263104	Dopio	Joan 	Rafols	\N	\N	1	2	1991-05-02	4	\N	f	f	United penticostal church	f	\N	f	f	2	\N	f	0	31	\N	f	Sales lady	2	f	f	t	f	2024-08-01 23:58:00	2024-08-01 23:58:00
775	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624260263104	Dopio	Julia 	Rafols	\N	\N	3	2	2013-07-07	1	\N	f	f	United penticostal church	f	\N	f	f	2	\N	f	12	12	\N	f	None	\N	f	f	f	t	2024-08-02 23:58:00	2024-08-02 23:58:00
776	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624261215810	Mendoza	Apple joy	None	\N	\N	2	2	1992-10-11	1	\N	f	f	Catholic	f	\N	t	f	2	\N	f	0	20	\N	t	Ofw	2	f	f	f	f	2024-08-03 23:58:00	2024-08-03 23:58:00
777	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624261215810	Sangco	Dirksteve	Mendoza	\N	\N	3	1	2012-01-21	1	\N	f	f	Catholic	f	\N	f	t	3	\N	t	13	13	\N	f	None	\N	f	f	f	t	2024-08-04 23:58:00	2024-08-04 23:58:00
778	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624261215810	Sangco	Divon me	Mendoza	\N	\N	3	2	2016-05-03	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	1	1	\N	f	None	\N	f	f	f	t	2024-08-05 23:58:00	2024-08-05 23:58:00
779	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624261215810	Sangco	Junphril	Fediles	\N	\N	1	1	1990-04-11	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	\N	t	Provincial jail guard	3	f	t	t	f	2024-08-06 23:58:00	2024-08-06 23:58:00
780	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624262013293	Himarangan	Annaliza	Lerio	\N	\N	2	2	1968-07-27	2	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	0	34	3	f	Housewife	\N	f	f	f	t	2024-08-07 23:58:00	2024-08-07 23:58:00
781	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624262013293	Himarangan	Gracille aira	Lerio	\N	\N	3	2	2002-10-04	1	\N	f	f	Born again Christian	f	\N	f	t	3	\N	f	22	22	\N	t	None	\N	f	f	f	t	2024-08-08 23:58:00	2024-08-08 23:58:00
782	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624262013293	Himarangan	Lira grace	Lerio	\N	\N	3	2	2000-12-15	1	\N	f	f	Born again Christian	f	\N	f	t	3	\N	t	32	32	\N	t	None	\N	f	f	f	t	2024-08-09 23:58:00	2024-08-09 23:58:00
783	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624262013293	Himarangan	Ramon	Toralba	\N	\N	1	1	1970-08-30	2	\N	f	f	Born again Christian	f	\N	f	f	2	\N	f	0	20	\N	f	Fisherman	2	f	f	t	f	2024-08-10 23:58:00	2024-08-10 23:58:00
784	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624262013293	Himarangan 	Shamma faith	Lerio	\N	\N	3	1	2005-08-15	1	\N	f	f	Born again	f	\N	f	t	2	\N	f	19	19	\N	t	None	\N	f	f	f	t	2024-08-11 23:58:00	2024-08-11 23:58:00
785	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263024047	Rulida	Alliezah amythyst	Himarangan	\N	\N	3	2	2018-02-09	1	\N	f	f	Born again Christian	f	\N	f	f	2	\N	t	0	0	\N	f	None	\N	f	f	f	t	2024-08-12 23:58:00	2024-08-12 23:58:00
786	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263024047	Rulida	Nesjemery	Panganoron	\N	\N	1	1	1995-04-20	2	\N	f	f	Born again christian	f	\N	f	t	2	\N	f	0	20	\N	f	None	\N	f	f	t	f	2024-08-13 23:58:00	2024-08-13 23:58:00
787	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263024047	Rulida	Rieshielle ann	Himarangan	\N	\N	2	2	1994-06-01	2	\N	f	f	Born again christian	f	\N	f	f	2	\N	f	0	34	3	t	Encoder	3	t	f	t	f	2024-08-14 23:58:00	2024-08-14 23:58:00
788	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263726110	España	Carmelito	Ayala	\N	\N	1	1	1949-05-05	2	\N	f	f	Born again Christian	f	\N	f	t	2	\N	f	0	20	\N	f	Farm labor	1	f	f	t	f	2024-08-15 23:58:00	2024-08-15 23:58:00
789	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263726110	España	Ivan 	Sangco	\N	\N	3	1	2002-10-31	1	\N	f	f	Born again Christian	f	\N	f	t	2	\N	t	22	22	\N	f	None	\N	f	f	f	t	2024-08-16 23:58:00	2024-08-16 23:58:00
790	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624263726110	España	Lucia	Sangco	\N	\N	2	2	1956-08-21	2	\N	f	f	Born again christian	f	\N	f	t	2	\N	f	20	20	\N	t	Housewife	\N	f	f	f	t	2024-08-17 23:58:00	2024-08-17 23:58:00
791	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624264430675	Dalanon	Irish mae	Sangco	\N	\N	2	2	1991-11-19	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	f	f	2024-08-18 23:58:00	2024-08-18 23:58:00
792	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624264430675	Dalanon	Lois antonio 	Galo	\N	\N	1	1	1992-11-08	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Construction	1	f	f	t	f	2024-08-19 23:58:00	2024-08-19 23:58:00
793	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624320972549	Bacquial	Gemma fe 	Masibag	\N	\N	2	2	1984-09-18	2	\N	f	f	Catholic	f	\N	t	t	2	\N	f	0	19	\N	f	Ofw	3	t	f	t	f	2024-08-20 23:58:00	2024-08-20 23:58:00
794	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624320972549	Masibag	Hanna michaella	None	\N	\N	3	2	2007-10-07	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	18	18	\N	t	None	\N	f	f	f	t	2024-08-21 23:58:00	2024-08-21 23:58:00
795	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624320972549	Bacquial	Rachealle	Masibag	\N	\N	3	2	2011-04-30	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	14	14	\N	f	None	\N	f	f	f	t	2024-08-22 23:58:00	2024-08-22 23:58:00
796	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624320972549	Bacquial	Renante	Poculan	\N	\N	1	1	1980-07-06	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	13	\N	t	Driver	1	f	f	t	f	2024-08-23 23:58:00	2024-08-23 23:58:00
797	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624321823133	Flores	Candelaria	Ragrag	\N	\N	2	2	1973-04-22	2	\N	f	f	Gmc	f	\N	f	f	2	\N	f	0	17	\N	f	Housewife	\N	f	f	t	f	2024-08-24 23:58:00	2024-08-24 23:58:00
798	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624321823133	Flores	Mario	Dagondon	\N	\N	1	1	1973-03-22	2	\N	f	f	Miracle crusade	f	\N	f	f	2	\N	f	0	17	\N	t	Famer	1	f	f	t	f	2024-08-25 23:58:00	2024-08-25 23:58:00
799	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624321823133	Flores	Mark Anthony	Ragrag	\N	\N	3	1	2014-02-08	1	\N	f	f	Miracle crusade	f	\N	f	t	2	\N	t	11	11	\N	f	None	\N	f	f	f	t	2024-08-26 23:58:00	2024-08-26 23:58:00
800	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624321823133	Flores	Mark daniel	Ragrag	\N	\N	3	1	1999-10-14	1	\N	f	f	Miracle crusade	f	\N	f	f	2	\N	f	0	22	\N	f	Company	1	f	f	f	f	2024-08-27 23:58:00	2024-08-27 23:58:00
801	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624321823133	Flores	Mark kniely	Ragrag	\N	\N	3	1	2000-12-02	1	\N	f	f	Miracle crusade	f	\N	f	t	2	\N	f	0	32	\N	f	None	\N	f	f	f	t	2024-08-28 23:58:00	2024-08-28 23:58:00
802	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624322749261	Damalerio	Harold 	Malaca	\N	\N	3	1	2011-01-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	15	15	\N	f	None	\N	f	f	f	t	2024-08-29 23:58:00	2024-08-29 23:58:00
803	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624322749261	Damalerio	Jemil	Malaca	\N	\N	3	1	1999-07-15	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	31	\N	t	Labor	1	f	f	f	t	2024-08-30 23:58:00	2024-08-30 23:58:00
804	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624322749261	Damalerio	Llelane	Malaca	\N	\N	3	2	2002-10-30	1	\N	f	f	Catholic	f	\N	f	f	3	\N	t	22	22	\N	t	None	\N	f	f	f	t	2024-08-31 23:58:00	2024-08-31 23:58:00
805	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624322749261	Damalerio	Melonie	Malaca	\N	\N	2	2	1969-07-11	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	f	Housewife	\N	f	f	t	f	2024-09-01 23:58:00	2024-09-01 23:58:00
806	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624322749261	Damalerio	Nathaniel	Panganoron	\N	\N	1	1	1966-04-14	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Labor	1	f	f	t	f	2024-09-02 23:58:00	2024-09-02 23:58:00
807	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	Babano	Aida	Panganoron	\N	\N	2	2	1975-10-13	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	19	\N	t	Housewife	\N	f	f	f	t	2024-09-03 23:58:00	2024-09-03 23:58:00
808	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	Babano	Ailyn mae	Panganoron	\N	\N	3	2	2003-07-19	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	21	21	\N	f	None	\N	f	f	f	t	2024-09-04 23:58:00	2024-09-04 23:58:00
809	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	Babano	Catherine	Panganoron	\N	\N	3	2	2010-08-15	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	15	15	\N	t	None	\N	f	f	f	t	2024-09-05 23:58:00	2024-09-05 23:58:00
810	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	Babano	Iries 	Panganoron	\N	\N	3	2	1997-08-25	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	None	\N	f	f	f	f	2024-09-06 23:58:00	2024-09-06 23:58:00
811	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	Babano	Jennalyn	Panganoron	\N	\N	3	2	2006-06-24	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	19	19	\N	t	None	\N	f	f	f	t	2024-09-07 23:58:00	2024-09-07 23:58:00
812	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	Babano	Lady jean	Panganoron	\N	\N	3	2	2009-02-12	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	f	None	\N	f	f	f	t	2024-09-08 23:58:00	2024-09-08 23:58:00
813	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624323481721	Babano	Renaldo	Bucag	\N	\N	1	1	1974-06-27	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	Carpenter	2	f	f	t	f	2024-09-09 23:58:00	2024-09-09 23:58:00
814	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624324863512	Panganoron	Axel rose	Jumapao	\N	\N	3	2	2011-02-08	1	\N	f	f	Pilipinista	f	\N	f	f	2	\N	t	13	13	\N	f	None	\N	f	f	f	f	2024-09-10 23:58:00	2024-09-10 23:58:00
815	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624324863512	Panganoron	Jurney	Soquite	\N	\N	1	1	1984-08-17	1	\N	f	f	Pilipinista	f	\N	f	f	2	\N	f	0	18	\N	t	Driver	1	f	f	f	f	2024-09-11 23:58:00	2024-09-11 23:58:00
816	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624324863512	Mejorada	Maria fe	Pal	\N	\N	2	2	1969-01-30	1	\N	f	f	Pilipinista	f	\N	f	f	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2024-09-12 23:58:00	2024-09-12 23:58:00
817	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624325680971	Tiempo	Ezre marie	Sangco	\N	\N	3	2	2020-08-21	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-09-13 23:58:00	2024-09-13 23:58:00
818	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624325680971	Tiempo	Marietta	Sangco	\N	\N	2	2	1984-04-15	2	\N	f	f	Catholic	f	\N	f	t	3	\N	f	0	20	\N	t	None	\N	f	f	f	t	2024-09-14 23:58:00	2024-09-14 23:58:00
819	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624325680971	Tiempo	Rene 	Almeria	\N	\N	1	1	1988-12-10	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	f	Labor	1	f	f	t	f	2024-09-15 23:58:00	2024-09-15 23:58:00
820	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624325680971	Tiempo	Rhyme venice	Sangco	\N	\N	3	2	2017-03-02	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-09-16 23:58:00	2024-09-16 23:58:00
821	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624328443679	Lagonoy	Clyde jerson	Osores	\N	\N	3	1	2005-06-25	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	20	20	\N	f	None	\N	f	f	f	t	2024-09-17 23:58:00	2024-09-17 23:58:00
822	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624328443679	Lagonoy	Iris 	Osores	\N	\N	2	2	1989-11-22	2	\N	f	f	Iglesia ni cristo	f	\N	t	f	2	\N	f	0	18	\N	f	Ofw	4	t	f	t	f	2024-09-18 23:58:00	2024-09-18 23:58:00
823	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624328443679	Lagonoy	Junel 	Cepeda	\N	\N	1	1	1986-06-09	2	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	f	0	20	\N	t	Company worker	2	t	f	t	f	2024-09-19 23:58:00	2024-09-19 23:58:00
824	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624328443679	Lagonoy	Precious janelle	Osores	\N	\N	3	2	2012-05-15	1	\N	f	f	Iglesias ni cristo	f	\N	f	f	2	\N	f	13	13	\N	t	None	\N	f	f	f	t	2024-09-20 23:58:00	2024-09-20 23:58:00
825	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624329310083	Caseres	Lea 	Himarangan	\N	\N	2	2	1980-07-19	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	3	t	Teacher	5	t	t	t	f	2024-09-21 23:58:00	2024-09-21 23:58:00
826	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624329310083	Himarangan	Leonarda	Toralba	\N	\N	8	2	1946-09-15	3	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	None	\N	f	f	t	f	2024-09-22 23:58:00	2024-09-22 23:58:00
827	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624329310083	Caseres	Marcelle lin	Himarangan	\N	\N	3	2	2017-12-23	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2024-09-23 23:58:00	2024-09-23 23:58:00
828	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624329310083	Caseres	Marcelle niño	Himarangan	\N	\N	3	1	2013-01-16	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2024-09-24 23:58:00	2024-09-24 23:58:00
829	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624329310083	Caseres	Mariel ellah	Himarangan	\N	\N	3	2	2020-07-16	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	t	None	\N	f	f	f	t	2024-09-25 23:58:00	2024-09-25 23:58:00
830	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624329310083	Caseres	Marvin	Francisco	\N	\N	1	1	1986-12-15	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Safety officer	2	t	f	t	f	2024-09-26 23:58:00	2024-09-26 23:58:00
831	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624330395926	Villos	Jose	Quimpan	\N	\N	1	1	1971-03-18	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	Labor	1	f	f	t	f	2024-09-27 23:58:00	2024-09-27 23:58:00
832	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624330395926	Villos	Juana	Sangco	\N	\N	2	2	1973-06-18	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	\N	f	Housewife	\N	f	f	f	t	2024-09-28 23:58:00	2024-09-28 23:58:00
833	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624330395926	Villos	Kenneth	Sangco	\N	\N	3	1	2000-08-10	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	32	32	\N	t	None	\N	f	f	f	t	2024-09-29 23:58:00	2024-09-29 23:58:00
834	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624330395926	Villos	Krissa	Sangco	\N	\N	3	1	2009-04-16	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	t	None	\N	f	f	f	t	2024-09-30 23:58:00	2024-09-30 23:58:00
835	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624331381156	Berago	Albert 	Olaco	\N	\N	3	1	1988-07-09	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Company	2	t	f	t	f	2024-10-01 23:58:00	2024-10-01 23:58:00
836	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624331381156	Berago 	Eden	Olaco	\N	\N	3	2	2002-11-05	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2024-10-02 23:58:00	2024-10-02 23:58:00
837	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624331381156	Berago	Edilberto	Sacurin	\N	\N	1	1	1955-04-20	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Farmer	1	f	f	t	f	2024-10-03 23:58:00	2024-10-03 23:58:00
838	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624331381156	Berago	Nenita	Olaco	\N	\N	2	2	1968-03-10	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Housewife	\N	f	f	f	t	2024-10-04 23:58:00	2024-10-04 23:58:00
839	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624331381156	Berago	Sanny	Olaco	\N	\N	3	1	2000-05-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	22	\N	t	None	\N	f	f	f	t	2024-10-05 23:58:00	2024-10-05 23:58:00
840	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624332268308	Berago	Aike	Olaco	\N	\N	1	2	1997-05-19	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Sales lady	2	t	f	t	f	2024-10-06 23:58:00	2024-10-06 23:58:00
841	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624332268308	Yamo	John lloyd	Magaseno	\N	\N	2	1	1996-01-08	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Construction	2	t	f	t	f	2024-10-07 23:58:00	2024-10-07 23:58:00
842	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624493589883	Bolotaolo	Jose omar	Antegra	\N	\N	1	1	1963-01-13	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Farmer	1	f	f	f	f	2024-10-08 23:58:00	2024-10-08 23:58:00
843	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624493589883	Bolotaolo	Jose omar 	Antonio	Junior	\N	3	1	2003-07-30	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	f	None	\N	f	f	f	f	2024-10-09 23:58:00	2024-10-09 23:58:00
844	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624493589883	Bolotaolo	Modesta	Tiempo	\N	\N	2	2	1958-03-27	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	f	Housewife	\N	f	f	t	f	2024-10-10 23:58:00	2024-10-10 23:58:00
845	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624493589883	Bolotaolo	Ricky	Antonio	\N	\N	3	1	1999-04-29	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	f	None	\N	f	f	f	f	2024-10-11 23:58:00	2024-10-11 23:58:00
846	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624493589883	Espinosa	Rosario 	Tiempo	\N	\N	7	2	1993-05-23	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	f	None	\N	f	f	t	f	2024-10-12 23:58:00	2024-10-12 23:58:00
847	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	Pamiroyan	Daisy	Gac ang	\N	\N	2	2	1975-02-09	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	24	\N	f	None	\N	f	f	t	f	2024-10-13 23:58:00	2024-10-13 23:58:00
848	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	Pamiroyan	Daniel	Gac ang	\N	\N	3	1	2001-09-12	1	\N	f	f	Born again	f	\N	f	t	2	\N	f	22	22	\N	f	None	\N	f	f	f	t	2024-10-14 23:58:00	2024-10-14 23:58:00
849	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	Pamiroyan	Danilo	Aurillo	\N	\N	1	1	1964-05-13	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	None	\N	f	f	t	f	2024-10-15 23:58:00	2024-10-15 23:58:00
850	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	Pamiroyan	Jefferson	Gac ang	\N	\N	3	1	2005-06-06	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	19	19	\N	t	None	\N	f	f	f	t	2024-10-16 23:58:00	2024-10-16 23:58:00
851	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	Pamiroyan	John paul	Gac ang	\N	\N	3	1	2009-05-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	16	16	\N	t	None	\N	f	f	f	t	2024-10-17 23:58:00	2024-10-17 23:58:00
852	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	Pamiroyan	Marchie	Gac ang	\N	\N	3	2	2000-03-28	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	32	32	\N	t	None	\N	f	f	f	t	2024-10-18 23:58:00	2024-10-18 23:58:00
853	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624494328886	Pamiroyan	Marjorie	Gac ang	\N	\N	3	2	2010-06-22	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	15	15	\N	f	None	\N	f	f	f	t	2024-10-19 23:58:00	2024-10-19 23:58:00
854	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495353461	Dagohoy	Cristina	Bulasa	\N	\N	2	2	1992-08-25	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	None	\N	f	f	t	f	2024-10-20 23:58:00	2024-10-20 23:58:00
855	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495353461	Dagohoy	Jyell wynsleth	Bulasa	\N	\N	3	2	2015-08-06	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	2	2	\N	t	None	\N	f	f	f	t	2024-10-21 23:58:00	2024-10-21 23:58:00
856	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495353461	Dagohoy	Lenjumar	Escobido	\N	\N	1	1	1991-02-12	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Construction	1	t	f	t	f	2024-10-22 23:58:00	2024-10-22 23:58:00
857	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495855028	Bulasa	Briendyl rose	Batula	\N	\N	8	2	2013-08-25	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	13	12	\N	f	None	\N	f	f	f	t	2024-10-23 23:58:00	2024-10-23 23:58:00
858	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495855028	Bulasa	Emilyn	Antegra	\N	\N	3	2	1985-06-20	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Sales lady	1	f	f	t	f	2024-10-24 23:58:00	2024-10-24 23:58:00
859	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495855028	Bulasa	Emma	Antegra	\N	\N	1	2	1961-02-14	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	None	\N	f	f	f	f	2024-10-25 23:58:00	2024-10-25 23:58:00
860	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495855028	Sangalang	Mark joven	Bulasa	\N	\N	8	1	2007-07-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2024-10-26 23:58:00	2024-10-26 23:58:00
861	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624495855028	Sangalang	Shapiqa	Bulasa	\N	\N	8	2	2013-10-08	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	13	13	\N	f	None	\N	f	f	f	t	2024-10-27 23:58:00	2024-10-27 23:58:00
862	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624496685692	Man- on 	Allane marie	Sevilla	\N	\N	3	2	2000-05-20	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	f	33	33	\N	f	None	\N	f	f	f	f	2024-10-28 23:58:00	2024-10-28 23:58:00
863	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624496685692	Mores	Desiree adriel	Man on	\N	\N	8	2	2018-08-16	1	\N	f	f	Iglesia ni Cristo	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	f	2024-10-29 23:58:00	2024-10-29 23:58:00
864	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624496685692	Donald	Donald	Joseph	\N	\N	2	1	1954-09-19	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	None	\N	f	f	f	f	2024-10-30 23:58:00	2024-10-30 23:58:00
865	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624496685692	Man on 	Hazel 	Sevilla	\N	\N	3	2	1997-05-20	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	1	\N	t	33	33	\N	f	None	\N	f	f	f	f	2024-10-31 23:58:00	2024-10-31 23:58:00
866	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624496685692	Man on	Ivan 	 Sevilla	\N	\N	3	1	2005-11-21	1	\N	f	f	Iglesias ni cristo	f	\N	f	t	2	\N	f	20	20	\N	t	None	\N	f	f	f	f	2024-11-01 23:58:00	2024-11-01 23:58:00
867	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624496685692	Plumer	Joan christy	Man - on	\N	\N	1	2	1976-04-20	2	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	f	0	33	\N	f	None	\N	f	f	f	f	2024-11-02 23:58:00	2024-11-02 23:58:00
868	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	Abejo	Cristine	Flores	\N	\N	3	2	2004-07-07	1	\N	f	f	Born again	f	\N	f	t	2	\N	f	21	21	\N	f	None	\N	f	f	f	t	2024-11-03 23:58:00	2024-11-03 23:58:00
869	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	Abejo	Gerry	Lucion	\N	\N	1	1	1975-01-22	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	Labor	1	f	f	t	f	2024-11-04 23:58:00	2024-11-04 23:58:00
870	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	Abejo	Julios	Flores	\N	\N	3	1	2002-09-01	1	\N	f	f	Born again	f	\N	f	f	2	\N	t	21	21	\N	t	Labor	1	f	f	f	t	2024-11-05 23:58:00	2024-11-05 23:58:00
871	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	Abejo	Juneil	Floree	\N	\N	3	1	2007-06-03	1	\N	f	f	Born again	f	\N	f	t	2	\N	f	17	17	\N	t	None	\N	f	f	f	t	2024-11-06 23:58:00	2024-11-06 23:58:00
872	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	Abejo	Justine	Flores	\N	\N	3	1	2001-08-01	1	\N	f	f	Born again	f	\N	f	f	2	\N	f	0	18	\N	f	Labor	1	f	f	f	t	2024-11-07 23:58:00	2024-11-07 23:58:00
873	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	Abejo	Mary rose	Flores	\N	\N	3	1	2009-11-21	1	\N	f	f	Born again	f	\N	f	f	2	\N	f	16	16	\N	f	None	\N	f	f	f	t	2024-11-08 23:58:00	2024-11-08 23:58:00
874	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624498069074	Abejo	Melca 	Flores	\N	\N	2	2	1974-04-16	2	\N	f	f	Born again	f	\N	f	f	2	\N	f	0	16	\N	t	Housewife	\N	f	f	f	t	2024-11-09 23:58:00	2024-11-09 23:58:00
875	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624499030367	Bucayon	Aeros clyde	Bolo	\N	\N	3	1	2013-09-07	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2024-11-10 23:58:00	2024-11-10 23:58:00
876	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624499030367	Bolo	Arjie mercy grace	Man-on	\N	\N	1	2	1991-07-04	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	None	\N	t	f	t	f	2024-11-11 23:58:00	2024-11-11 23:58:00
877	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624499030367	Bucayon	Justin bel	Belita	\N	\N	2	1	1987-07-16	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	2	f	Seaman	5	t	f	t	f	2024-11-12 23:58:00	2024-11-12 23:58:00
878	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500237588	Bolotaolo	Jesamae	Jala	\N	\N	1	2	1993-11-13	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	5	f	Housewife	\N	f	f	t	f	2024-11-13 23:58:00	2024-11-13 23:58:00
879	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500237588	barrientos	Kiven paul	Alejandro	\N	\N	2	1	1992-11-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	5	t	Labor	1	t	f	t	f	2024-11-14 23:58:00	2024-11-14 23:58:00
880	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500724380	España	Dave ez	Raganas	\N	\N	3	1	2013-10-09	1	\N	f	f	Born again	f	\N	f	f	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2024-11-15 23:58:00	2024-11-15 23:58:00
881	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500724380	España	Davey jean	Raganas	\N	\N	2	2	1996-07-17	2	\N	f	f	Born again	f	\N	f	f	2	\N	f	0	20	\N	t	Housekeeper	\N	f	f	t	f	2024-11-16 23:58:00	2024-11-16 23:58:00
882	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500724380	España	Shann	Raganas	\N	\N	3	1	2008-02-28	1	\N	f	f	Born again	f	\N	f	f	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2024-11-17 23:58:00	2024-11-17 23:58:00
883	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500724380	España	Tresta	Raganas	\N	\N	3	2	2012-05-16	1	\N	f	f	Birn again	f	\N	f	t	2	\N	t	13	13	\N	t	None	\N	f	f	f	t	2024-11-18 23:58:00	2024-11-18 23:58:00
884	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624500724380	España	Zigger 	Sangco	\N	\N	1	1	1994-03-03	2	\N	f	f	Born again	f	\N	f	t	2	\N	f	0	20	\N	f	Farm laborer	1	t	f	t	f	2024-11-19 23:58:00	2024-11-19 23:58:00
885	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Cel Jun	Pabatang	\N	\N	3	1	2011-05-01	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	t	14	14	\N	t	None	\N	f	f	f	t	2024-11-20 23:58:00	2024-11-20 23:58:00
886	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Clint	Pabatang	\N	\N	3	1	2003-06-08	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2024-11-21 23:58:00	2024-11-21 23:58:00
887	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Fel	Pabatang	\N	\N	3	1	2005-07-27	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2024-11-22 23:58:00	2024-11-22 23:58:00
888	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Felman jun	Pabatang	\N	\N	3	1	2009-05-08	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2024-11-23 23:58:00	2024-11-23 23:58:00
889	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Josua caile	Pabatang	\N	\N	3	1	1997-10-07	1	\N	f	f	Iglesias ni cristo	f	\N	f	f	2	\N	f	0	31	\N	f	None	\N	f	f	f	f	2024-11-24 23:58:00	2024-11-24 23:58:00
890	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Juan 	Supas	\N	\N	1	1	1971-07-19	2	\N	f	f	Iglesia ni cristo	f	\N	t	t	2	\N	f	0	17	\N	f	Ofw	5	f	f	f	t	2024-11-25 23:58:00	2024-11-25 23:58:00
891	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Junly	Pabatang	\N	\N	3	1	2014-12-17	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	11	11	\N	f	None	\N	f	f	f	t	2024-11-26 23:58:00	2024-11-26 23:58:00
892	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Liezel	Pabatang	\N	\N	2	2	1975-10-13	2	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2024-11-27 23:58:00	2024-11-27 23:58:00
893	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla 	Rede	Pabatang	\N	\N	3	1	2016-12-03	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	1	1	\N	f	None	\N	f	f	f	t	2024-11-28 23:58:00	2024-11-28 23:58:00
894	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624502845512	Padilla	Royeth 	Pabatang	\N	\N	3	1	1999-08-19	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	33	33	\N	t	None	\N	f	f	f	t	2024-11-29 23:58:00	2024-11-29 23:58:00
895	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624504692208	Sangco	Basilio	Bacquial	Junior	\N	1	1	1965-07-29	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Barangay kagawad	2	f	f	t	f	2024-11-30 23:58:00	2024-11-30 23:58:00
896	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624504692208	Sangco	Citris rose	Fedilis	\N	\N	3	2	2002-02-18	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	31	31	\N	t	None	\N	f	f	f	t	2024-12-01 23:58:00	2024-12-01 23:58:00
897	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624504692208	Sangco	Jessa mae 	Fedilis	\N	\N	3	2	1993-07-15	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Sales lady	1	f	f	t	f	2024-12-02 23:58:00	2024-12-02 23:58:00
898	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624504692208	Sangco	John paul	Fedilis	\N	\N	3	1	2004-11-21	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	22	21	\N	t	None	\N	f	f	f	t	2024-12-03 23:58:00	2024-12-03 23:58:00
899	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624504692208	Sangco	Josepina	Fedilis	\N	\N	2	1	1971-05-19	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Housewife	\N	f	f	f	t	2024-12-04 23:58:00	2024-12-04 23:58:00
900	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624512494524	Olivo	Eldefonso	Marcos	\N	\N	1	1	1948-09-15	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Labor	1	f	f	t	f	2024-12-05 23:58:00	2024-12-05 23:58:00
901	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624512494524	Olivo	Elmer 	Timbal	\N	\N	3	1	1995-08-24	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Labor	1	f	f	t	f	2024-12-06 23:58:00	2024-12-06 23:58:00
902	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624512494524	Olivo	Elsa 	Timbal	\N	\N	2	2	1957-10-12	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	11	\N	f	None	\N	f	f	f	t	2024-12-07 23:58:00	2024-12-07 23:58:00
903	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624512494524	Olivo	Elwin	Timbal	\N	\N	3	1	1998-01-04	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	17	\N	f	Labor	1	f	f	f	f	2024-12-08 23:58:00	2024-12-08 23:58:00
904	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624512494524	Olivi	Ely	Timbal	\N	\N	3	1	1992-03-07	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	None	\N	f	f	t	f	2024-12-09 23:58:00	2024-12-09 23:58:00
905	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624513315110	Rico	Edril	Escodio	\N	\N	8	1	2005-12-15	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	20	20	\N	t	None	\N	f	f	f	f	2024-12-10 23:58:00	2024-12-10 23:58:00
906	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624513315110	Britania	Glorai	Hornales	\N	\N	2	2	1959-03-08	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	15	\N	t	Housewife	\N	f	f	f	f	2024-12-11 23:58:00	2024-12-11 23:58:00
907	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624513315110	Britania	Mirabel	None	\N	\N	3	2	2001-09-17	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	None	\N	f	f	f	f	2024-12-12 23:58:00	2024-12-12 23:58:00
908	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624513315110	Daroy	Renaldo	None	\N	\N	1	1	1962-12-18	1	\N	f	f	Catholic	t	1	f	t	2	\N	f	0	13	\N	f	None	\N	f	f	t	f	2024-12-13 23:58:00	2024-12-13 23:58:00
909	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624513315110	Rico	Renaldo	Escodio	\N	\N	8	1	2008-12-20	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	17	17	\N	t	None	\N	f	f	f	f	2024-12-14 23:58:00	2024-12-14 23:58:00
910	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514279091	Quimpan	Carlos	Toralba	Junior	\N	1	1	1976-12-15	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Farmers	1	f	f	t	f	2024-12-15 23:58:00	2024-12-15 23:58:00
911	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514279091	Quimpan	John lloyd	Cole	\N	\N	3	1	2015-05-30	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	2	2	\N	f	None	\N	f	f	f	t	2024-12-16 23:58:00	2024-12-16 23:58:00
912	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514279091	Quimpan	Jonh carlo	Cole	\N	\N	3	1	2008-09-01	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2024-12-17 23:58:00	2024-12-17 23:58:00
913	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514279091	Quimpan	Lorna	Cole	\N	\N	2	2	1977-01-17	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2024-12-18 23:58:00	2024-12-18 23:58:00
914	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514957832	Badiang	Jason	Guillen	\N	\N	1	1	1992-06-06	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	Farmer 	1	f	f	t	f	2024-12-19 23:58:00	2024-12-19 23:58:00
915	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514957832	Pontillo	Maricel	Tejano	\N	\N	1	1	1998-01-14	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2024-12-20 23:58:00	2024-12-20 23:58:00
916	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624514957832	Badiang	Peterson	Pontillo	\N	\N	3	1	2017-03-17	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	1	1	\N	f	None	\N	f	f	f	t	2024-12-21 23:58:00	2024-12-21 23:58:00
917	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624515626022	Badiang	Barth jason	Guillen	\N	\N	3	1	2008-06-19	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2024-12-22 23:58:00	2024-12-22 23:58:00
918	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624515626022	Badiang	Bartolome	Sangco	\N	\N	1	1	1965-01-30	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Farmer	1	f	f	t	f	2024-12-23 23:58:00	2024-12-23 23:58:00
919	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624515626022	Badiang	Bernadith	Guillen	\N	\N	2	2	1971-05-20	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	f	Housewife	\N	f	f	t	f	2024-12-24 23:58:00	2024-12-24 23:58:00
920	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516433349	Badiang	Inie 	Guillen	\N	\N	1	2	1990-08-05	1	\N	f	f	Catholic	f	\N	f	t	1	\N	f	0	31	\N	f	Cooker	2	f	f	t	f	2024-12-25 23:58:00	2024-12-25 23:58:00
921	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516433349	Verrano	Junel 	Antonio	\N	\N	2	1	1992-10-24	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Vendor	1	f	f	f	f	2024-12-26 23:58:00	2024-12-26 23:58:00
922	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516780329	Sangco	Mark shel	Casiano	\N	\N	3	1	2006-02-18	1	\N	f	f	Catholic	f	\N	f	f	3	\N	t	19	19	\N	t	None	\N	f	f	f	t	2024-12-27 23:58:00	2024-12-27 23:58:00
923	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516780329	Sangco	Markfel 	Casiano	\N	\N	3	1	2000-05-10	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Company worker	1	f	f	f	t	2024-12-28 23:58:00	2024-12-28 23:58:00
924	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516780329	Sangco	Robelyn	Casiano	\N	\N	2	2	1979-10-05	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2024-12-29 23:58:00	2024-12-29 23:58:00
925	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516780329	Sangco	Romanico	Salazar	\N	\N	1	1	1972-12-02	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Driver	1	f	f	f	t	2024-12-30 23:58:00	2024-12-30 23:58:00
926	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624516780329	Sangco	Sheldon 	Casiano	\N	\N	3	1	2004-09-17	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	20	20	\N	f	None	\N	f	f	f	f	2024-12-31 23:58:00	2024-12-31 23:58:00
927	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624517748482	Sangco	Larita	Salazar	\N	\N	1	2	1941-12-20	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	13	\N	t	Housewife	\N	f	f	t	f	2025-01-01 23:58:00	2025-01-01 23:58:00
928	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624517748482	Lasconia	Maximo 	Daroy	\N	\N	2	1	1954-07-20	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	11	\N	f	None	\N	f	f	f	f	2025-01-02 23:58:00	2025-01-02 23:58:00
929	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518206285	Plata	Raquel	Bansas	\N	\N	3	2	1972-06-22	1	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	20	\N	f	None	\N	f	f	f	f	2025-01-03 23:58:00	2025-01-03 23:58:00
930	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518206285	Plata	Rosinda	Bansas	\N	\N	1	2	1937-04-09	3	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	17	\N	f	None	\N	f	f	f	f	2025-01-04 23:58:00	2025-01-04 23:58:00
931	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518711967	Quimpan	Christian	Custan	\N	\N	3	1	2012-10-17	1	\N	f	f	Jehovah witnesses	f	\N	f	t	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2025-01-05 23:58:00	2025-01-05 23:58:00
932	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518711967	Quimpan	Cresencio	Toralba	\N	\N	1	1	1978-06-15	2	\N	f	f	Jehovah witnesses	f	\N	f	f	2	\N	f	0	19	\N	f	Driver	\N	f	f	t	f	2025-01-06 23:58:00	2025-01-06 23:58:00
933	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518711967	Quimpan	Glendel mae	Custan	\N	\N	3	2	2010-09-13	1	\N	f	f	Jehovah witnesses	f	\N	f	t	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2025-01-07 23:58:00	2025-01-07 23:58:00
934	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518711967	Quimpan	Mary grace	Custan	\N	\N	3	2	2009-01-29	1	\N	f	f	Jehovah's witnesses	f	\N	f	t	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2025-01-08 23:58:00	2025-01-08 23:58:00
935	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624518711967	Quimpan	Medaline	Custan	\N	\N	2	2	1979-11-09	2	\N	f	f	Jehovah witnesses	f	\N	f	t	2	\N	f	0	20	\N	t	Sales lady	1	f	f	f	t	2025-01-09 23:58:00	2025-01-09 23:58:00
936	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624519496837	Paler	Rosila	Makiling	\N	\N	1	2	1961-01-09	3	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	None	\N	f	f	f	f	2025-01-10 23:58:00	2025-01-10 23:58:00
937	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520116995	Badian	Edsel lance	None	\N	\N	2	1	1998-12-01	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	32	\N	t	Laborer	2	t	f	t	f	2025-01-11 23:58:00	2025-01-11 23:58:00
938	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520116995	Daguplo	Haziel	Makiling	\N	\N	1	2	1992-12-06	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewif	\N	f	f	t	f	2025-01-12 23:58:00	2025-01-12 23:58:00
939	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520116995	Badian	Sofia kate	Daguplo	\N	\N	3	2	2019-10-28	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-01-13 23:58:00	2025-01-13 23:58:00
940	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	Daguplo	Dina	Makiling	\N	\N	2	2	1969-11-14	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	f	t	2025-01-14 23:58:00	2025-01-14 23:58:00
941	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	Daguplo	Dj	Makiling	\N	\N	3	1	1999-06-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	32	32	\N	t	None	\N	f	f	f	t	2025-01-15 23:58:00	2025-01-15 23:58:00
942	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	Orillanada 	Ember aisha belle 	Daguplo	\N	\N	3	2	2013-09-03	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	11	11	\N	t	None	\N	f	f	f	t	2025-01-16 23:58:00	2025-01-16 23:58:00
943	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	Daguplo	Hera kim gwen	Makiling	\N	\N	3	2	2010-03-28	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2025-01-17 23:58:00	2025-01-17 23:58:00
944	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	Daguplo	Jimmy	Pabillar	\N	\N	1	1	1966-08-02	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farmers	1	f	f	t	f	2025-01-18 23:58:00	2025-01-18 23:58:00
945	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	Daguplo	Kris marie	Makiling	\N	\N	3	2	2003-07-07	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	21	21	\N	t	None	\N	f	f	f	t	2025-01-19 23:58:00	2025-01-19 23:58:00
946	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624520653127	Orillanada	Marcxeb Xyler	Daguplo	\N	\N	8	1	2015-03-05	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	2	2	\N	f	None	\N	f	f	f	t	2025-01-20 23:58:00	2025-01-20 23:58:00
947	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624521753207	Patiño	Atasha maisie	Makiling	\N	\N	3	2	2019-06-12	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-01-21 23:58:00	2025-01-21 23:58:00
948	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624521753207	Makiling	Charnie ann	None	\N	\N	1	2	1994-10-13	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	f	f	2025-01-22 23:58:00	2025-01-22 23:58:00
949	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624521753207	Patiño	Robert 	Lacsina	\N	\N	2	1	1995-09-01	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Small town lottery	1	f	f	t	f	2025-01-23 23:58:00	2025-01-23 23:58:00
950	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624522281544	Pada	Ernesto	Junior	\N	\N	3	1	2022-04-24	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	f	Labor	1	f	f	f	t	2025-01-24 23:58:00	2025-01-24 23:58:00
951	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624522281544	Pada	Ernesto	Tayr	\N	\N	1	1	1975-06-17	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	13	\N	t	Labor	1	f	f	t	f	2025-01-25 23:58:00	2025-01-25 23:58:00
952	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624522281544	Pada	Precnes juna	Madel	\N	\N	3	2	2015-06-24	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-01-26 23:58:00	2025-01-26 23:58:00
953	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624522281544	Pada	Preiam 	Madel	\N	\N	3	1	2013-02-21	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-01-27 23:58:00	2025-01-27 23:58:00
954	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624522281544	Pada	Robert	Tayr	\N	\N	3	2	2004-07-18	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	14	\N	f	None	\N	f	f	f	t	2025-01-28 23:58:00	2025-01-28 23:58:00
955	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624581233698	Salva	Jomarie	Villamor	\N	\N	3	1	2014-03-23	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	11	11	\N	f	None	\N	f	f	f	t	2025-01-29 23:58:00	2025-01-29 23:58:00
956	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624581233698	Sangco	Joseph 	Villamor	\N	\N	3	1	2012-10-27	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2025-01-30 23:58:00	2025-01-30 23:58:00
957	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624581233698	Salva	Jovanie	Villamor	\N	\N	3	1	2020-01-11	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-01-31 23:58:00	2025-01-31 23:58:00
958	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624581233698	Salva	Jovanie 	Enot	\N	\N	1	1	1992-09-25	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Farmer	1	f	f	t	f	2025-02-01 23:58:00	2025-02-01 23:58:00
959	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624581233698	Salva	Rosemarie jane 	Villamor	\N	\N	2	2	1995-12-13	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	52	\N	t	Barangay health worker	1	f	f	f	t	2025-02-02 23:58:00	2025-02-02 23:58:00
960	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624582014285	Declarado	Bernita	Fediles	\N	\N	2	2	1979-07-27	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	32	\N	t	Barangay secretary	2	f	f	f	t	2025-02-03 23:58:00	2025-02-03 23:58:00
961	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624582014285	Declarado	Julius	Cabusao	\N	\N	1	1	1974-01-10	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Driver	1	f	f	t	f	2025-02-04 23:58:00	2025-02-04 23:58:00
962	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624582014285	Declarado	Nicole 	Fediles	\N	\N	3	2	2006-04-19	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-02-05 23:58:00	2025-02-05 23:58:00
963	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624582014285	Declarado	Shaina marie	Fediles	\N	\N	3	2	2005-04-23	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2025-02-06 23:58:00	2025-02-06 23:58:00
964	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584359518	Trilles	Mark john	Sangco	\N	\N	1	1	1997-12-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Chain saw operator	3	f	f	f	f	2025-02-07 23:58:00	2025-02-07 23:58:00
965	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584359518	Trilles	Rhean mariz	Colis	\N	\N	3	2	2020-10-04	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-02-08 23:58:00	2025-02-08 23:58:00
966	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584359518	Trilles	Rizzie mae	Colis	\N	\N	3	2	2018-02-20	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-02-09 23:58:00	2025-02-09 23:58:00
967	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584359518	Colis	Rochelle 	Gamil	\N	\N	2	2	1999-06-20	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Housewife	\N	f	f	t	f	2025-02-10 23:58:00	2025-02-10 23:58:00
968	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584986261	Trilles	Christian john	Sangco	\N	\N	3	1	2005-08-07	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-02-11 23:58:00	2025-02-11 23:58:00
969	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624584986261	Trilles	Maurita	Sangco	\N	\N	1	2	1962-05-17	3	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Maid	1	f	f	t	f	2025-02-12 23:58:00	2025-02-12 23:58:00
970	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624585929841	Callano	Felix	Lampong	Senior	\N	1	1	1955-06-10	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farmer	1	f	f	f	f	2025-02-13 23:58:00	2025-02-13 23:58:00
971	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624585929841	Callano	Ma. rosanna	Villos	\N	\N	2	2	1960-12-15	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	f	f	2025-02-14 23:58:00	2025-02-14 23:58:00
972	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624586610052	Callano	Felix	Villos	\N	\N	1	1	1993-10-07	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Farmer	1	f	f	f	f	2025-02-15 23:58:00	2025-02-15 23:58:00
973	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624586610052	Bulag	Marberose	Pitas	\N	\N	2	2	1997-11-18	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	None	\N	f	f	f	f	2025-02-16 23:58:00	2025-02-16 23:58:00
974	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587049166	Trilles	John carl	Imperial	\N	\N	3	1	2012-07-07	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	13	13	\N	f	None	\N	f	f	f	t	2025-02-17 23:58:00	2025-02-17 23:58:00
975	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587049166	Trilles	Joseph 	Asibes	\N	\N	1	1	1989-08-02	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Farm labor	1	f	f	t	f	2025-02-18 23:58:00	2025-02-18 23:58:00
976	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587049166	Imperial	Marisel 	Buya	\N	\N	2	2	1978-10-09	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	f	Housewife	\N	f	f	t	f	2025-02-19 23:58:00	2025-02-19 23:58:00
977	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587049166	Trilles	Marjie 	Imperial	\N	\N	3	2	2014-08-27	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	11	11	\N	f	None	\N	f	f	f	t	2025-02-20 23:58:00	2025-02-20 23:58:00
978	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587623304	Calledo	Adelyn	Siman	\N	\N	2	2	1985-09-24	2	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	f	0	19	\N	t	Housewife	\N	f	f	f	t	2025-02-21 23:58:00	2025-02-21 23:58:00
979	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587623304	Calledo	Jey-ann	Siman	\N	\N	3	2	2011-04-22	1	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	t	14	14	\N	t	None	\N	f	f	f	t	2025-02-22 23:58:00	2025-02-22 23:58:00
980	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587623304	Calledo	Joseph	Amparo	\N	\N	1	1	1996-05-16	2	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	f	0	15	\N	t	Labor	1	f	f	t	f	2025-02-23 23:58:00	2025-02-23 23:58:00
981	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624587623304	Calledo	Judy	Siman	\N	\N	3	1	2009-09-21	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2025-02-24 23:58:00	2025-02-24 23:58:00
982	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624774844111	Bacquial	Carla	Daypuyat	\N	\N	3	2	2005-09-02	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-02-25 23:58:00	2025-02-25 23:58:00
983	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624774844111	Bacquial	Carlo	Daypuyat	\N	\N	3	1	2005-09-02	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-02-26 23:58:00	2025-02-26 23:58:00
984	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624774844111	Bacquial	Elmer	Linges	\N	\N	1	1	1982-03-27	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	t	Farmer	1	f	f	f	t	2025-02-27 23:58:00	2025-02-27 23:58:00
985	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624774844111	Daypuyat	Gerald 	Rontal	\N	\N	3	1	2003-05-18	1	\N	f	f	Catholics	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2025-02-28 23:58:00	2025-02-28 23:58:00
986	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624774844111	Bacquial	Hilary	Daypuyat	\N	\N	2	2	1979-03-21	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	4	t	Househelper	2	f	f	t	f	2025-03-01 23:58:00	2025-03-01 23:58:00
987	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	Llanos	Aira mae 	Betancor	\N	\N	3	2	2014-01-21	1	\N	f	f	Penticostal	f	\N	f	f	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2025-03-02 23:58:00	2025-03-02 23:58:00
988	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	Llanos	Jhon mark	Bentancor	\N	\N	3	1	1990-11-20	1	\N	f	f	Penticostal	f	\N	f	f	2	\N	f	0	23	\N	t	Labor	1	f	f	f	f	2025-03-03 23:58:00	2025-03-03 23:58:00
989	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	Llanos	Juanito	Bentancor	\N	\N	3	1	2002-08-09	1	\N	f	f	Penticostal	f	\N	f	t	2	\N	f	0	17	\N	t	None	\N	f	f	f	t	2025-03-04 23:58:00	2025-03-04 23:58:00
990	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	Llanos	Juanito	Cuarinta	\N	\N	1	1	1963-01-21	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	11	\N	t	Rice mill operator	1	f	f	f	t	2025-03-05 23:58:00	2025-03-05 23:58:00
991	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	Llanos	Micah	Bentancor	\N	\N	3	2	1999-05-15	1	\N	f	f	Penticostal	f	\N	f	f	2	\N	f	0	20	\N	f	None	\N	f	f	f	f	2025-03-06 23:58:00	2025-03-06 23:58:00
992	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	Llanos	Rebecca	Betancor	\N	\N	2	2	1969-05-18	2	\N	f	f	Penticostal	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2025-03-07 23:58:00	2025-03-07 23:58:00
993	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624841235899	Llanos	Shaira mels 	Betancor	\N	\N	3	2	2005-01-19	1	\N	f	f	Pentecostal	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2025-03-08 23:58:00	2025-03-08 23:58:00
994	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624842743835	Llanos	Loren 	Bartal	\N	\N	2	2	1992-02-12	2	\N	f	f	Penticostal	f	\N	f	f	2	\N	f	0	31	\N	t	Housewife	\N	f	f	t	f	2025-03-09 23:58:00	2025-03-09 23:58:00
995	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624842743835	Llanos	Warren 	Betancor	\N	\N	1	1	1988-10-02	2	\N	f	f	Penticostal	f	\N	f	t	2	\N	f	0	23	\N	t	Driver	2	t	f	t	f	2025-03-10 23:58:00	2025-03-10 23:58:00
996	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624843421444	Bernardo	Akihiro nigel	Floree	\N	\N	8	1	2012-12-19	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	12	12	\N	t	None	\N	f	f	f	f	2025-03-11 23:58:00	2025-03-11 23:58:00
997	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624843421444	Flores	Fercila	Daguplo	\N	\N	1	2	1959-02-09	4	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	Farmer	\N	f	f	t	f	2025-03-12 23:58:00	2025-03-12 23:58:00
998	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844015079	Cabasag	Amparo 	Pialan	\N	\N	2	2	1960-02-03	2	\N	f	f	United apostolic church	f	\N	f	f	2	\N	f	0	16	\N	f	Housewife	\N	f	f	f	t	2025-03-13 23:58:00	2025-03-13 23:58:00
999	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844015079	Cabasag	Cherry 	Pialan	\N	\N	3	2	1982-11-24	1	\N	f	f	United apostolic church	t	1	f	f	2	\N	f	0	17	\N	t	None	\N	f	f	t	f	2025-03-14 23:58:00	2025-03-14 23:58:00
1000	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844015079	Cabasag	Martin	Sepe	\N	\N	1	1	1954-12-05	2	\N	f	f	United apostolic church	f	\N	f	t	2	\N	f	0	16	\N	f	Farmer	1	f	f	t	f	2025-03-15 23:58:00	2025-03-15 23:58:00
1001	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844973958	Sapa	Edita	Aning	\N	\N	1	2	1953-09-15	3	\N	f	f	Pilipinista	f	\N	f	t	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2025-03-16 23:58:00	2025-03-16 23:58:00
1002	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844973958	Sapa	Ella may	None	\N	\N	8	2	2013-07-31	1	\N	f	f	Pilipinista	f	\N	f	t	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2025-03-17 23:58:00	2025-03-17 23:58:00
1003	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844973958	Sapa	Jemuel	None	\N	\N	8	1	2010-09-21	1	\N	f	f	Pilipinista	f	\N	f	f	3	\N	t	14	14	\N	f	None	\N	f	f	f	t	2025-03-18 23:58:00	2025-03-18 23:58:00
1004	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624844973958	Sapa	Jene	Anino	\N	\N	3	2	1987-06-21	1	\N	f	f	Pilipinista	f	\N	f	f	2	\N	f	0	33	\N	t	Housewife	\N	f	f	t	f	2025-03-19 23:58:00	2025-03-19 23:58:00
1005	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624845716974	Sapa	Cerilo	Anino	\N	\N	1	1	1983-04-18	1	\N	f	f	Pilipinista	f	\N	f	f	2	\N	f	0	11	\N	t	Labor	1	f	f	t	f	2025-03-20 23:58:00	2025-03-20 23:58:00
1006	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624845716974	Calbo	Susan	Bolambot	\N	\N	2	2	1967-05-04	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	14	\N	f	Housewife	\N	f	f	f	f	2025-03-21 23:58:00	2025-03-21 23:58:00
1007	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624846308390	Domaug	Erlindo	Balan 	\N	\N	1	1	1949-07-14	2	\N	f	f	Saksi	f	\N	f	f	2	\N	f	0	16	\N	t	None	\N	f	f	t	f	2025-03-22 23:58:00	2025-03-22 23:58:00
1008	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624846308390	Degamon	Jocel	Sacurin	\N	\N	3	1	1987-09-09	1	\N	f	f	Jehovah witnesses	f	\N	f	t	2	\N	f	0	20	\N	t	Company worker	2	t	f	t	f	2025-03-23 23:58:00	2025-03-23 23:58:00
1009	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624846308390	Degamon	Remedios	Sacurin	\N	\N	2	2	1950-08-26	2	\N	f	f	Jehovah witness	f	\N	f	t	2	\N	f	0	20	\N	t	Barangay health worker	1	f	f	t	f	2025-03-24 23:58:00	2025-03-24 23:58:00
1010	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624847252233	Simblante	Althea jane	Boong	\N	\N	3	2	2010-01-07	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2025-03-25 23:58:00	2025-03-25 23:58:00
1011	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624847252233	Simblante	Amarah ysabelle	Boong	\N	\N	3	2	2018-06-11	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	t	None	\N	f	f	f	t	2025-03-26 23:58:00	2025-03-26 23:58:00
1012	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624847252233	Simblante	Christian 	Boong	\N	\N	3	1	2006-06-21	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	17	\N	t	None	\N	f	f	f	t	2025-03-27 23:58:00	2025-03-27 23:58:00
1013	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624847252233	Simblante	Josephine	Boong	\N	\N	2	2	1985-02-22	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	None	\N	f	f	f	t	2025-03-28 23:58:00	2025-03-28 23:58:00
1014	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624847252233	Simblante	Lebi james	Boong	\N	\N	3	1	2007-06-30	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	None	\N	f	f	f	t	2025-03-29 23:58:00	2025-03-29 23:58:00
1015	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624847252233	Simblante	Salvador	Bebis	\N	\N	1	1	1979-08-22	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	15	\N	t	Farmer	1	f	f	t	f	2025-03-30 23:58:00	2025-03-30 23:58:00
1016	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624848903701	Nabasa	Angela	Ybañez	\N	\N	4	2	2003-02-06	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	31	\N	f	None	\N	f	f	f	t	2025-03-31 23:58:00	2025-03-31 23:58:00
1017	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624848903701	Nabasa	Virginia	Bañes	\N	\N	2	2	1979-08-18	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	f	Constructual	2	t	f	t	f	2025-04-01 23:58:00	2025-04-01 23:58:00
1018	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624848903701	Olivo	Willam	Gales	\N	\N	1	1	1986-09-25	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Construction	2	t	f	t	f	2025-04-02 23:58:00	2025-04-02 23:58:00
1019	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624849510077	Ignalig	Jay	Amora	\N	\N	3	1	2020-09-10	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-04-03 23:58:00	2025-04-03 23:58:00
1020	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624849510077	Ignalig	Jeffey	Quiroben	\N	\N	1	1	1985-05-10	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	13	\N	t	Farm labor	1	f	f	t	f	2025-04-04 23:58:00	2025-04-04 23:58:00
1021	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624849510077	Amora	Rina Victoria	Sanico	\N	\N	2	2	1987-02-25	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	t	Housewife	\N	f	f	t	f	2025-04-05 23:58:00	2025-04-05 23:58:00
1022	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850156040	Bacquial	Cesar	Fediles	\N	\N	1	1	1967-08-04	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	Labor	1	f	f	t	f	2025-04-06 23:58:00	2025-04-06 23:58:00
1023	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850156040	Bacquial 	Cesar 	Fediles	Junior	\N	3	1	1990-02-14	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	18	\N	t	Labor	1	f	f	f	f	2025-04-07 23:58:00	2025-04-07 23:58:00
1024	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850156040	Bacquial	Michael angelo	Varquez	\N	\N	3	1	2002-06-16	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2025-04-08 23:58:00	2025-04-08 23:58:00
1025	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850156040	Bacquial	Rico 	Varquez	\N	\N	3	1	1996-04-09	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	20	\N	t	Hardware worker	1	f	f	f	f	2025-04-09 23:58:00	2025-04-09 23:58:00
1026	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850874162	Simblante	Andrea mae	Miramonte	\N	\N	8	2	2011-11-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2025-04-10 23:58:00	2025-04-10 23:58:00
1027	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850874162	Simblante	Angel	Miramonte	\N	\N	8	2	2004-09-09	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2025-04-11 23:58:00	2025-04-11 23:58:00
1028	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850874162	Simblante	Benigno	Tolibas	\N	\N	2	1	1952-11-20	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	12	\N	f	None	\N	f	f	t	f	2025-04-12 23:58:00	2025-04-12 23:58:00
1029	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850874162	Simblante	Devine 	Miramonte	\N	\N	8	2	2002-11-10	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2025-04-13 23:58:00	2025-04-13 23:58:00
1030	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624850874162	Simblante	Victoria	Bebis	\N	\N	1	2	1956-05-14	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	16	\N	t	Housewife	\N	f	f	t	f	2025-04-14 23:58:00	2025-04-14 23:58:00
1031	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624851797693	Simblante	Edgar	Bebis	\N	\N	1	1	1977-01-30	3	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	14	\N	f	Farmer	1	f	f	t	f	2025-04-15 23:58:00	2025-04-15 23:58:00
1032	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624851797693	Simblante	Justin	Bostillo	\N	\N	3	1	2006-11-03	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	18	18	\N	t	None	\N	f	f	f	t	2025-04-16 23:58:00	2025-04-16 23:58:00
1033	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624851797693	Simblante	Kymlie	Bustillo	\N	\N	3	2	2013-11-25	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	11	11	\N	f	None	\N	f	f	f	t	2025-04-17 23:58:00	2025-04-17 23:58:00
1034	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624851797693	Simblante	Mark dave 	Bistillos	\N	\N	3	1	2009-07-10	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2025-04-18 23:58:00	2025-04-18 23:58:00
1035	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624851797693	Simblante	Rayian	Bustillo	\N	\N	3	1	2011-04-03	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	14	14	\N	t	None	\N	f	f	f	t	2025-04-19 23:58:00	2025-04-19 23:58:00
1036	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	Junasa	Estela	Digal	\N	\N	2	2	1985-04-02	2	\N	f	f	Four square	f	\N	f	f	2	\N	f	0	20	\N	t	Labor	1	f	f	f	t	2025-04-20 23:58:00	2025-04-20 23:58:00
1037	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	Junasa	Harvey jay	Digal	\N	\N	3	1	2006-07-15	1	\N	f	f	Four square	f	\N	f	f	2	\N	t	18	18	\N	t	None	\N	f	f	f	t	2025-04-21 23:58:00	2025-04-21 23:58:00
1038	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	Digal	Jan dave	None	\N	\N	3	1	2004-11-04	1	\N	f	f	Four square	f	\N	f	f	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-04-22 23:58:00	2025-04-22 23:58:00
1039	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	Junasa	Kate dhel	Digal	\N	\N	3	2	2012-02-09	1	\N	f	f	Four square	f	\N	f	t	2	\N	t	13	13	\N	t	None	\N	f	f	f	t	2025-04-23 23:58:00	2025-04-23 23:58:00
1040	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	Junasa	Princess dhel	Digal	\N	\N	3	2	2015-01-28	1	\N	f	f	Foursquare	f	\N	f	t	2	\N	t	2	2	\N	f	None	\N	f	f	f	t	2025-04-24 23:58:00	2025-04-24 23:58:00
1041	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	Junasa	Queen dhel	Digal	\N	\N	3	2	2009-07-05	1	\N	f	f	Four square	f	\N	f	f	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2025-04-25 23:58:00	2025-04-25 23:58:00
1042	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624962613706	Junasa	Simplicio	Jumao-as	\N	\N	1	1	1984-01-16	2	\N	f	f	Four square	f	\N	f	t	2	\N	f	0	18	\N	t	Labor	1	f	f	t	f	2025-04-26 23:58:00	2025-04-26 23:58:00
1043	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624963501162	Beray	Dionisio	Timcang	\N	\N	1	1	1962-11-08	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	19	\N	t	Farmers	1	f	f	f	f	2025-04-27 23:58:00	2025-04-27 23:58:00
1044	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624963501162	Beray	Diony	Apirahado	\N	\N	3	1	2010-11-11	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	14	14	\N	t	None	\N	f	f	f	f	2025-04-28 23:58:00	2025-04-28 23:58:00
1045	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624963501162	Beray	Jeliane	Apirahado	\N	\N	3	2	2006-11-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-04-29 23:58:00	2025-04-29 23:58:00
1046	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624963501162	Beray	Jeymark 	Apirahado	\N	\N	3	1	2005-03-25	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2025-04-30 23:58:00	2025-04-30 23:58:00
1047	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624963501162	Beray	Rj	Apirahado	\N	\N	3	1	2014-04-25	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	11	11	\N	t	None	\N	f	f	f	f	2025-05-01 23:58:00	2025-05-01 23:58:00
1048	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624963501162	Aparihado	Rosalinda	Delos reyes	\N	\N	2	2	1975-06-30	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	None	\N	f	f	f	f	2025-05-02 23:58:00	2025-05-02 23:58:00
1049	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624964464171	Leones	Samuel	Terado	\N	\N	1	1	1971-08-20	4	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	20	\N	t	Farm labor	1	f	f	f	f	2025-05-03 23:58:00	2025-05-03 23:58:00
1050	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1624964464171	Leones	Zaica caryl	Gabino	\N	\N	3	2	1997-02-28	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	4	f	None	\N	f	f	f	f	2025-05-04 23:58:00	2025-05-04 23:58:00
1051	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625446792947	Beray	Democrito 	Timcang	\N	\N	1	1	1968-01-21	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	19	\N	t	Government driver	3	t	f	t	f	2025-05-05 23:58:00	2025-05-05 23:58:00
1052	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625446792947	Beray	Emelita	Aspe	\N	\N	2	2	1969-06-04	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	3	t	Teacher	5	f	t	t	f	2025-05-06 23:58:00	2025-05-06 23:58:00
1053	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625446792947	Beray	Laurence james	Aspe	\N	\N	3	1	1992-09-09	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	3	t	Military	5	f	t	t	f	2025-05-07 23:58:00	2025-05-07 23:58:00
1054	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625447601678	Beray	Dean mark	Aspe	\N	\N	1	1	1994-03-16	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	2	t	Engineer	5	f	t	t	f	2025-05-08 23:58:00	2025-05-08 23:58:00
1055	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625447601678	Beray	Katrina jane	Cabusao	\N	\N	2	2	1997-04-25	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	34	8	t	Government information technology	3	f	t	t	f	2025-05-09 23:58:00	2025-05-09 23:58:00
1056	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625447601678	Beray	Kyle vladimir	Cabusao	\N	\N	3	1	2021-02-12	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-05-10 23:58:00	2025-05-10 23:58:00
1057	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625968527929	Lepalam	Candie	Timbal	\N	\N	3	1	2008-02-01	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2025-05-11 23:58:00	2025-05-11 23:58:00
1058	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625968527929	Lepalam	Fernand	Rotante	\N	\N	1	1	1976-04-17	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	16	\N	t	Farmer	1	f	f	t	f	2025-05-12 23:58:00	2025-05-12 23:58:00
1059	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625968527929	Lepalam	Jinky	Timbal	\N	\N	3	1	2013-09-10	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	11	11	\N	t	None	\N	f	f	f	t	2025-05-13 23:58:00	2025-05-13 23:58:00
1060	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625968527929	Lepalam	Junde	Timbal	\N	\N	3	1	2011-09-21	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	12	12	\N	t	None	\N	f	f	f	t	2025-05-14 23:58:00	2025-05-14 23:58:00
1061	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625968527929	Lepalam	Louie 	Timbal	\N	\N	3	1	2000-09-12	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	21	21	\N	t	None	\N	f	f	f	t	2025-05-15 23:58:00	2025-05-15 23:58:00
1062	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625968527929	Lepalam	Merlene	Timbal	\N	\N	2	2	1980-09-12	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	18	\N	t	Housewife	\N	f	f	f	t	2025-05-16 23:58:00	2025-05-16 23:58:00
1063	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	España	Bryner	Sangco	\N	\N	1	1	1986-07-26	2	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	f	0	20	\N	t	Carpenter	2	f	f	t	f	2025-05-17 23:58:00	2025-05-17 23:58:00
1064	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	España	Chloe marris	Malana	\N	\N	3	2	2010-10-26	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2025-05-18 23:58:00	2025-05-18 23:58:00
1065	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	España	Elma 	Malana	\N	\N	2	2	1984-01-12	2	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	f	0	17	\N	f	Housewife	\N	f	f	f	t	2025-05-19 23:58:00	2025-05-19 23:58:00
1066	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	España	Glyzhell shim 	Malana	\N	\N	3	2	2016-06-03	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	1	\N	t	2	2	\N	f	None	\N	f	f	f	t	2025-05-20 23:58:00	2025-05-20 23:58:00
1067	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	Malana	Hazel mae	None	\N	\N	3	2	2000-01-14	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	f	0	31	\N	f	Sales lady	1	f	f	f	t	2025-05-21 23:58:00	2025-05-21 23:58:00
1068	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	Malana	Kenneth john	None	\N	\N	3	1	2005-01-11	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-05-22 23:58:00	2025-05-22 23:58:00
1069	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	Malana	Lyka 	None	\N	\N	3	2	2008-09-19	1	\N	f	f	Iglesia ni Cristo	f	\N	f	f	2	\N	t	17	17	\N	f	None	\N	f	f	f	t	2025-05-23 23:58:00	2025-05-23 23:58:00
1070	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	Malana	Lyza 	None	\N	\N	3	1	2008-09-19	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	17	17	\N	t	None	\N	f	f	f	t	2025-05-24 23:58:00	2025-05-24 23:58:00
1071	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1625976645832	Malana	Shains Marie	None	\N	\N	3	2	2003-12-29	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	22	22	\N	t	None	\N	f	f	f	t	2025-05-25 23:58:00	2025-05-25 23:58:00
1072	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626142641457	Betco	Lynny jelaica Faith 	Olivo	\N	\N	3	2	2019-09-12	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-05-26 23:58:00	2025-05-26 23:58:00
1073	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626142641457	Betco	Lysell joy	Olivo	\N	\N	2	2	1998-11-19	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	31	\N	t	Housewife	\N	f	f	f	t	2025-05-27 23:58:00	2025-05-27 23:58:00
1074	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626142641457	Betco	Manny	Adlao	\N	\N	1	1	1993-05-26	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	52	\N	t	Labor	1	f	f	t	f	2025-05-28 23:58:00	2025-05-28 23:58:00
1075	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143241895	Olivo	Lemmuel john	Rafols	\N	\N	3	1	2005-01-27	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2025-05-29 23:58:00	2025-05-29 23:58:00
1076	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143241895	Olivo	Louie jay	Rafols	\N	\N	3	1	2008-09-16	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	17	17	\N	f	None	\N	f	f	f	t	2025-05-30 23:58:00	2025-05-30 23:58:00
1077	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143241895	Olivo	Rasel 	Rafols	\N	\N	2	2	1979-11-28	2	\N	f	f	Catholic	f	\N	t	f	2	\N	f	0	20	\N	t	Ofw	4	f	f	t	f	2025-05-31 23:58:00	2025-05-31 23:58:00
1078	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143241895	Olivo	Yolly	Gales	\N	\N	1	1	1975-08-28	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	15	\N	t	Farmer	1	f	f	t	f	2025-06-01 23:58:00	2025-06-01 23:58:00
1079	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143927196	Fedelis	Bench	Legaspi	\N	\N	8	1	2009-02-18	1	\N	f	f	Catholic	f	\N	f	t	2	\N	t	16	16	\N	t	None	\N	f	f	f	f	2025-06-02 23:58:00	2025-06-02 23:58:00
1080	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143927196	Fediles	Jean 	Magaso	\N	\N	2	2	1976-07-04	2	\N	f	f	Catholic	f	\N	t	f	2	\N	f	0	18	\N	f	Ofw	4	t	f	t	f	2025-06-03 23:58:00	2025-06-03 23:58:00
1081	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626143927196	Fediles	Mario	Radam	\N	\N	1	1	1976-05-05	2	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	13	\N	t	Farmer	1	f	f	t	f	2025-06-04 23:58:00	2025-06-04 23:58:00
1082	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626144630287	Bolotaolo	Alexis Quinsley	Canlas	\N	\N	3	2	2020-05-25	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	0	\N	f	None	\N	f	f	f	t	2025-06-05 23:58:00	2025-06-05 23:58:00
1083	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626144630287	Bolotaolo	Haintji Fritzi	Badiang	\N	\N	1	1	1999-03-11	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	33	\N	t	Laborer	1	f	f	t	f	2025-06-06 23:58:00	2025-06-06 23:58:00
1084	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626144630287	Canlas	Rhea jane	Javier	\N	\N	2	2	1998-11-08	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	34	\N	t	None	\N	f	f	t	f	2025-06-07 23:58:00	2025-06-07 23:58:00
1085	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626145748536	Badiang	Pedro	Sangco	Jr.	\N	1	1	1959-01-29	1	\N	f	f	Catholic	f	\N	f	t	2	\N	f	0	12	\N	f	Labor	1	f	f	t	f	2025-06-08 23:58:00	2025-06-08 23:58:00
1086	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626146257887	Cagampang	Mechiel	Ocho	\N	\N	2	2	1990-02-15	2	\N	f	f	Iglesia ni Cristo	f	\N	f	f	2	\N	f	0	15	\N	f	Housewife	\N	f	f	f	t	2025-06-09 23:58:00	2025-06-09 23:58:00
1087	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626146257887	Cagampang	RR	Ocho	\N	\N	3	1	2016-06-19	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	1	1	\N	t	None	\N	f	f	f	t	2025-06-10 23:58:00	2025-06-10 23:58:00
1088	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626146257887	Cagampang	Romero	Empleo	\N	\N	1	1	1989-07-05	2	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	f	0	18	\N	t	Load man	2	t	f	t	f	2025-06-11 23:58:00	2025-06-11 23:58:00
1089	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626146257887	Cagampang	Romero 	Ocho	III	\N	3	1	2008-11-09	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	3	\N	t	16	16	\N	t	None	\N	f	f	f	t	2025-06-12 23:58:00	2025-06-12 23:58:00
1090	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626146257887	Cagampang	Rommell	Ocho	\N	\N	3	1	2011-01-23	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	15	15	\N	t	None	\N	f	f	f	t	2025-06-13 23:58:00	2025-06-13 23:58:00
1091	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626147211345	Dacolo	Adrian 	Olalo	\N	\N	3	1	2008-08-15	1	\N	f	f	Iglesia ni Cristo	f	\N	f	t	2	\N	t	14	14	\N	f	None	\N	f	f	f	f	2025-06-14 23:58:00	2025-06-14 23:58:00
1092	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626147211345	Plata	Anna mae	Sangco	\N	\N	3	2	2006-05-10	1	\N	f	f	Born again 	f	\N	f	f	2	\N	t	20	20	\N	t	None	\N	f	f	f	t	2025-06-15 23:58:00	2025-06-15 23:58:00
1093	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626147211345	Plata	Annabel	Sangco	\N	\N	2	2	1968-04-05	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	f	0	52	\N	f	Housewife	\N	f	f	t	f	2025-06-16 23:58:00	2025-06-16 23:58:00
1094	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626147211345	Plata	Dominic	Sangco	\N	\N	3	1	2008-01-22	1	\N	f	f	Iglesia ni cristo	f	\N	f	t	2	\N	t	18	18	\N	t	None	\N	f	f	f	t	2025-06-17 23:58:00	2025-06-17 23:58:00
1095	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626147211345	Dacolo	Edgardo	Jenerale	\N	\N	1	1	1978-06-09	1	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	f	0	14	\N	t	Labor	1	f	f	f	f	2025-06-18 23:58:00	2025-06-18 23:58:00
1096	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626147211345	Dacolo	Erica	Olalo	\N	\N	3	2	2012-09-20	1	\N	f	f	Iglesia ni cristo	f	\N	f	f	2	\N	t	12	12	\N	t	None	\N	f	f	f	f	2025-06-19 23:58:00	2025-06-19 23:58:00
1097	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626178377384	Siman	Carl christian	Himarangan	\N	\N	3	1	2007-03-26	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	19	19	\N	t	None	\N	f	f	f	t	2025-06-20 23:58:00	2025-06-20 23:58:00
1098	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626178377384	Siman	Dhan fegiel	Himarangan	\N	\N	3	1	1992-04-21	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	22	\N	t	Laborer	1	f	f	t	f	2025-06-21 23:58:00	2025-06-21 23:58:00
1099	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626178377384	Siman	Geraldo	Pabatang	\N	\N	1	1	1968-01-15	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	19	\N	t	Labor	1	f	f	t	f	2025-06-22 23:58:00	2025-06-22 23:58:00
1100	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626178377384	Siman	Geraldo 	Himarangan	Junior	\N	3	1	2015-10-08	1	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	2	\N	f	None	\N	f	f	f	t	2025-06-23 23:58:00	2025-06-23 23:58:00
1101	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626178377384	Siman	Lorna	Himarangan	\N	\N	2	2	1973-02-10	2	\N	f	f	Catholic	f	\N	f	f	2	\N	f	0	19	\N	t	Laborer	1	f	f	f	t	2025-06-24 23:58:00	2025-06-24 23:58:00
1102	a70c4a43-be2c-458d-aeaf-3c5a0789c220-1626178377384	Siman	Princes aira	Himarangan	\N	\N	3	2	2009-03-12	1	\N	f	f	Catholic	f	\N	f	f	2	\N	t	16	16	\N	t	None	\N	f	f	f	t	2025-06-25 23:58:00	2025-06-25 23:58:00
\.


                                                      3357.dat                                                                                            0000600 0004000 0002000 00000000005 14257013301 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3359.dat                                                                                            0000600 0004000 0002000 00000267620 14257013301 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3da7059c-f523-4b9b-bdb5-cdc423cdd8d1-1623890768546	160212000	160212005	2	9.037647578	125.5726345	Joel S. Sangco	17/06/2021	John Lloyd Bronto Bacquial	John Lloyd Bronto Bacquial	17/06/2021	1	1	2013	8000	1	1	t	f	1	\N	t	f	1	2	t	2021	t	2021	8	t	f	f	1_Joel_Olaco_1623892640596.jpeg	2022-06-20 23:58:00	2022-06-20 23:58:00
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


                                                                                                                3361.dat                                                                                            0000600 0004000 0002000 00000025342 14257013301 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	160201010	Manapa	2022-06-20 23:58:00	2022-06-20 23:58:00
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


                                                                                                                                                                                                                                                                                              3363.dat                                                                                            0000600 0004000 0002000 00000001100 14257013301 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. aluminum, tile, concrete, brick, stone, wood, plywood, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g. cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                3365.dat                                                                                            0000600 0004000 0002000 00000000163 14257013301 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Operational	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Abandoned	2022-06-21 23:58:00	2022-06-21 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                             3367.dat                                                                                            0000600 0004000 0002000 00000001007 14257013301 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Multi-unit residential (three units or more such as apartment, accessoria, condominium, etc.)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Commercial/ industrial/ agricultural building/house (e.g. office, stores, factory, or others)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Institutional living quarters (e.g. dormitories, lodging houses and others)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Other housing unit (e.g. boat, cave, trailers, barges, carts, and others)	2022-06-23 23:58:00	2022-06-23 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3369.dat                                                                                            0000600 0004000 0002000 00000000263 14257013301 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	For Rent	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	For Lease	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Others, please specify	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                             3371.dat                                                                                            0000600 0004000 0002000 00000001100 14257013301 0014233 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. aluminum, tile, concrete, brick, stone, wood, plywood, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g. cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                3373.dat                                                                                            0000600 0004000 0002000 00000000741 14257013301 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Physical Disabilities	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Intelectual/Learning Disabilities	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Psychiatric Disabilities	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Visual impairments	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Hearing impairments	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Neurological disabilities	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Other, Please specify	2022-06-26 23:58:00	2022-06-26 23:58:00
\.


                               3375.dat                                                                                            0000600 0004000 0002000 00000000247 14257013301 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Traditional	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Modern	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Ecological	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                         3377.dat                                                                                            0000600 0004000 0002000 00000000151 14257013301 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Male	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Female	2022-06-21 23:58:00	2022-06-21 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       3379.dat                                                                                            0000600 0004000 0002000 00000003153 14257013301 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	1	1	Day Care	2022-06-21 23:58:00	2022-06-21 23:58:00
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
1	1	0	Not going to school / Out of school youth / None student / Truancy 	2022-06-20 23:58:00	2022-06-20 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                     3381.dat                                                                                            0000600 0004000 0002000 00000001054 14257013301 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	School	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Church	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Covered court/gym	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Relative's House	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Neighbor or Friend's House	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Barangay/City Hall	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Multi-Purpose Hall	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Evacuation Centers	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	Other, Please specify	2022-06-28 23:58:00	2022-06-28 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    3383.dat                                                                                            0000600 0004000 0002000 00000001052 14257013301 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Level I	Stand-alone water points (e.g. hand pumps, shallow, wells, rainwater collectors) serving and average of 15 households	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Level II	Piped water with a communal water point (e.g. borewell, spring system) serving and average of 4-6 households within a 25-meter distance	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Level III	Piped water supply with a private water point ( e.g. house connection) based on a daily water demand of more than 100 liters per person	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      3385.dat                                                                                            0000600 0004000 0002000 00000001103 14257013301 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. galvanized iron, aluminum, tile concreated, brick, stone, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g. cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                             3387.dat                                                                                            0000600 0004000 0002000 00000000356 14257013301 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Fully-owned	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Owner-like possession	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Tenanted	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Leased/Rented	2022-06-23 23:58:00	2022-06-23 23:58:00
\.


                                                                                                                                                                                                                                                                                  3389.dat                                                                                            0000600 0004000 0002000 00000001141 14257013301 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Single house	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Duplex	2022-06-20 23:58:00	2022-06-20 23:58:00
3	1	Multi-unit residential (three units or more such as apartment, accessoria, condominium, etc.)	2022-06-20 23:58:00	2022-06-20 23:58:00
4	1	Commercial/ Industrial/ Building / house (e.g. office, factory, or others ) 	2022-06-20 23:58:00	2022-06-20 23:58:00
5	1	Institutional living quarters (e.g. domitories, lodging houses and others )	2022-06-20 23:58:00	2022-06-20 23:58:00
6	1	Other housing unit (e.g. boat cave, trailers, barges. catrs, and others)	2022-06-20 23:58:00	2022-06-20 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                               3391.dat                                                                                            0000600 0004000 0002000 00000001101 14257013301 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. galvanized iron, aluminum, tile, concrete, brick, stone, asbestos)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed but predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                               3393.dat                                                                                            0000600 0004000 0002000 00000000200 14257013301 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Privately-owned	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Governmently-owned	2022-06-21 23:58:00	2022-06-21 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                3395.dat                                                                                            0000600 0004000 0002000 00000003505 14257013301 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	CROP FARMING AND GARDENING such as growing of palay, corn, roots and tubers, vegetables, fruits, nuts, orchids, ornamental plants, etc.	2022-06-20 23:58:00	2022-06-20 23:58:00
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


                                                                                                                                                                                           3397.dat                                                                                            0000600 0004000 0002000 00000000337 14257013301 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Single	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Married	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Widowed	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Divorced/Separated	2022-06-23 23:58:00	2022-06-23 23:58:00
\.


                                                                                                                                                                                                                                                                                                 3399.dat                                                                                            0000600 0004000 0002000 00000000463 14257013301 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Php 1-5,000	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Php 5,001-10,000	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Php 10,001-15,000	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Php 15,001-20,000	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Php 20,001-Above	2022-06-24 23:58:00	2022-06-24 23:58:00
\.


                                                                                                                                                                                                             3401.dat                                                                                            0000600 0004000 0002000 00000001276 14257013301 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	160201000	Buenavista	2022-06-21 23:58:00	2022-06-21 23:58:00
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


                                                                                                                                                                                                                                                                                                                                  3403.dat                                                                                            0000600 0004000 0002000 00000000247 14257013301 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Overweight	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Normal	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Underweight	2022-06-22 23:58:00	2022-06-22 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                         3405.dat                                                                                            0000600 0004000 0002000 00000000733 14257013301 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Head	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Spouse	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Son/Daughter	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Son-in-law/Daughter-in-law	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Father/Mother	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Housemaid/Boy	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Stepson/Stepdaughter	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Other, Relatives	2022-06-27 23:58:00	2022-06-27 23:58:00
\.


                                     3407.dat                                                                                            0000600 0004000 0002000 00000000005 14257013301 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3409.dat                                                                                            0000600 0004000 0002000 00000001104 14257013301 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Strong materials (e.g. galvanized iron, aluminum, tile, concrete, brick, stone, asbestor)	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Light materials (e.g.  cogon, nipa, anahaw)	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Salvaged/makeshift materials (e.g. tarpaulin, tent)	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Mixed but predominantly strong materials	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Mixed but predominantly light materials	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Mixed buty predominantly salvaged materials	2022-06-25 23:58:00	2022-06-25 23:58:00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                            3411.dat                                                                                            0000600 0004000 0002000 00000001304 14257013301 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Fully-owned	2022-06-20 23:58:00	2022-06-20 23:58:00
2	1	Owner-like possession	2022-06-21 23:58:00	2022-06-21 23:58:00
3	1	Tenanted	2022-06-22 23:58:00	2022-06-22 23:58:00
4	1	Leased/Rented	2022-06-23 23:58:00	2022-06-23 23:58:00
5	1	Rent Free	2022-06-24 23:58:00	2022-06-24 23:58:00
6	1	Held under Certificate of Land Transfer (CLT) or Certificate of Land Ownership (CLOA)	2022-06-25 23:58:00	2022-06-25 23:58:00
7	1	Held under Certificate of Ancestral Domain Title (CADT)	2022-06-26 23:58:00	2022-06-26 23:58:00
8	1	Held under Community-Based Forest Management Agreement (CBFMA) Sterwardship	2022-06-27 23:58:00	2022-06-27 23:58:00
9	1	Other, Please specify	2022-06-28 23:58:00	2022-06-28 23:58:00
\.


                                                                                                                                                                                                                                                                                                                            3413.dat                                                                                            0000600 0004000 0002000 00000001251 14257013301 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Accountancy, Business and Management	2022-06-20 23:58:00	2022-06-20 23:58:00
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


                                                                                                                                                                                                                                                                                                                                                       3415.dat                                                                                            0000600 0004000 0002000 00000001651 14257013301 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Sustainable Livelihood Program	2022-06-20 23:58:00	2022-06-20 23:58:00
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


                                                                                       3417.dat                                                                                            0000600 0004000 0002000 00000003571 14257013301 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2014_10_12_000000_create_users_table	1
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
28	2022_06_21_020837_create_libtypeofprograms_table	4
29	2022_06_21_020933_create_librelationshipheads_table	4
30	2022_06_21_021126_create_libtenuralstatus_table	4
31	2022_06_21_021210_create_libroofconmaterials_table	4
38	2022_06_21_033439_create_libhhlvlwatersystems_table	5
54	2022_06_21_015108_create_libgradelvls_table	6
55	2022_06_21_065513_create_libmunicipalities_table	6
56	2022_06_21_065600_create_libbarangays_table	6
63	2022_06_21_065635_create_households_table	7
64	2022_06_28_120343_create_libhhtypeofbuildings_table	8
65	2022_06_21_020751_create_libtscshvcs_table	9
68	2022_06_29_011151_create_demographies_table	10
\.


                                                                                                                                       3419.dat                                                                                            0000600 0004000 0002000 00000000005 14257013301 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3420.dat                                                                                            0000600 0004000 0002000 00000000005 14257013301 0014231 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3422.dat                                                                                            0000600 0004000 0002000 00000000237 14257013301 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Roel Damalerio	damalerioroel@gmail.com	\N	$2y$10$OHme4sX5GMfqcN43zVBrd.7v0todTk/CVfj0jpLpa8E72o7pWa0Nm	\N	2022-06-20 23:58:25	2022-06-20 23:58:25	Admin
\.


                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000240222 14257013301 0015362 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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
-- Name: demographies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demographies (
    id bigint NOT NULL,
    household_controlnumber character varying(255) NOT NULL,
    surname character varying(255) NOT NULL,
    firstname character varying(255) NOT NULL,
    middlename character varying(255),
    extension text,
    nuclear_family text,
    librelationshiphead_id bigint NOT NULL,
    libgender_id bigint NOT NULL,
    birthdate date NOT NULL,
    libmaritalstatu_id bigint NOT NULL,
    ethnicity_by_blood character varying(255),
    member_ip boolean NOT NULL,
    informal_settler boolean NOT NULL,
    religion character varying(255),
    person_with_special_needs boolean NOT NULL,
    libdisability_id bigint,
    is_ofw boolean NOT NULL,
    residence_3_years boolean NOT NULL,
    libnutritionalstatu_id bigint NOT NULL,
    nutrional_status_recorded date,
    current_attending_school boolean NOT NULL,
    current_attending_libgradelvl_glcode integer,
    highest_education_attainment_libgradelvl_glcode integer,
    libtscshvc_id bigint,
    can_read_write_or_atleast_hs_graduate boolean NOT NULL,
    primary_occupation character varying(255),
    libmonthlyincome_id bigint,
    sss_member boolean NOT NULL,
    gsis_member boolean NOT NULL,
    philhealth_member boolean NOT NULL,
    dependent_of_philheath_member boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.demographies OWNER TO postgres;

--
-- Name: demographies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demographies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demographies_id_seq OWNER TO postgres;

--
-- Name: demographies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demographies_id_seq OWNED BY public.demographies.id;


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
    libhhtypeofbuilding_id bigint NOT NULL,
    libhhtenuralstatu_id bigint NOT NULL,
    year_construct integer NOT NULL,
    estimated_cost integer NOT NULL,
    bedrooms integer NOT NULL,
    storey integer NOT NULL,
    access_electricity boolean NOT NULL,
    access_internet boolean NOT NULL,
    libhhroofmaterial_id bigint NOT NULL,
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
-- Name: libhhtypeofbuildings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libhhtypeofbuildings (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_hhtobname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libhhtypeofbuildings OWNER TO postgres;

--
-- Name: libhhtypeofbuildings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.libhhtypeofbuildings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libhhtypeofbuildings_id_seq OWNER TO postgres;

--
-- Name: libhhtypeofbuildings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.libhhtypeofbuildings_id_seq OWNED BY public.libhhtypeofbuildings.id;


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
-- Name: libtscshvcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.libtscshvcs (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    lib_tscshvcname character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.libtscshvcs OWNER TO postgres;

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

ALTER SEQUENCE public.libtscshvc_id_seq OWNED BY public.libtscshvcs.id;


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
-- Name: demographies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies ALTER COLUMN id SET DEFAULT nextval('public.demographies_id_seq'::regclass);


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
-- Name: libhhtypeofbuildings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhtypeofbuildings ALTER COLUMN id SET DEFAULT nextval('public.libhhtypeofbuildings_id_seq'::regclass);


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
-- Name: libtscshvcs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtscshvcs ALTER COLUMN id SET DEFAULT nextval('public.libtscshvc_id_seq'::regclass);


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
-- Data for Name: demographies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.demographies (id, household_controlnumber, surname, firstname, middlename, extension, nuclear_family, librelationshiphead_id, libgender_id, birthdate, libmaritalstatu_id, ethnicity_by_blood, member_ip, informal_settler, religion, person_with_special_needs, libdisability_id, is_ofw, residence_3_years, libnutritionalstatu_id, nutrional_status_recorded, current_attending_school, current_attending_libgradelvl_glcode, highest_education_attainment_libgradelvl_glcode, libtscshvc_id, can_read_write_or_atleast_hs_graduate, primary_occupation, libmonthlyincome_id, sss_member, gsis_member, philhealth_member, dependent_of_philheath_member, created_at, updated_at) FROM stdin;
\.
COPY public.demographies (id, household_controlnumber, surname, firstname, middlename, extension, nuclear_family, librelationshiphead_id, libgender_id, birthdate, libmaritalstatu_id, ethnicity_by_blood, member_ip, informal_settler, religion, person_with_special_needs, libdisability_id, is_ofw, residence_3_years, libnutritionalstatu_id, nutrional_status_recorded, current_attending_school, current_attending_libgradelvl_glcode, highest_education_attainment_libgradelvl_glcode, libtscshvc_id, can_read_write_or_atleast_hs_graduate, primary_occupation, libmonthlyincome_id, sss_member, gsis_member, philhealth_member, dependent_of_philheath_member, created_at, updated_at) FROM '$$PATH$$/3425.dat';

--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.
COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM '$$PATH$$/3357.dat';

--
-- Data for Name: households; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.households (id, controlnumber, libmunicipalitie_psgccode, libbarangay_psgccode, purok, latitude, longitude, respondent, dateinterview, nameenumerator, nameeditor, dateedited, libhhtypeofbuilding_id, libhhtenuralstatu_id, year_construct, estimated_cost, bedrooms, storey, access_electricity, access_internet, libhhroofmaterial_id, medical_treatment, access_watersupply, potable, libhhwatertenuralstatu_id, libhhlvlwatersystem_id, floods_occur, year_flood, experience_evacuationduringcalamity, year_evacuated, libhhevacuationarea_id, has_accesstohealthmedicalfacilities, has_accesstotelecommunications, has_accesstodrillsandsimulations, image, created_at, updated_at) FROM stdin;
\.
COPY public.households (id, controlnumber, libmunicipalitie_psgccode, libbarangay_psgccode, purok, latitude, longitude, respondent, dateinterview, nameenumerator, nameeditor, dateedited, libhhtypeofbuilding_id, libhhtenuralstatu_id, year_construct, estimated_cost, bedrooms, storey, access_electricity, access_internet, libhhroofmaterial_id, medical_treatment, access_watersupply, potable, libhhwatertenuralstatu_id, libhhlvlwatersystem_id, floods_occur, year_flood, experience_evacuationduringcalamity, year_evacuated, libhhevacuationarea_id, has_accesstohealthmedicalfacilities, has_accesstotelecommunications, has_accesstodrillsandsimulations, image, created_at, updated_at) FROM '$$PATH$$/3359.dat';

--
-- Data for Name: libbarangays; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbarangays (id, user_id, psgccode, lib_brgyname, created_at, updated_at) FROM stdin;
\.
COPY public.libbarangays (id, user_id, psgccode, lib_brgyname, created_at, updated_at) FROM '$$PATH$$/3361.dat';

--
-- Data for Name: libbuildingroofmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingroofmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingroofmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3363.dat';

--
-- Data for Name: libbuildingstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingstatus (id, user_id, lib_statusname, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingstatus (id, user_id, lib_statusname, created_at, updated_at) FROM '$$PATH$$/3365.dat';

--
-- Data for Name: libbuildingtypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingtypes (id, user_id, lib_tobname, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingtypes (id, user_id, lib_tobname, created_at, updated_at) FROM '$$PATH$$/3367.dat';

--
-- Data for Name: libbuildinguses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildinguses (id, user_id, lib_buildingusedesc, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildinguses (id, user_id, lib_buildingusedesc, created_at, updated_at) FROM '$$PATH$$/3369.dat';

--
-- Data for Name: libbuildingwallmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libbuildingwallmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libbuildingwallmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3371.dat';

--
-- Data for Name: libdisabilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libdisabilities (id, user_id, lib_dname, created_at, updated_at) FROM stdin;
\.
COPY public.libdisabilities (id, user_id, lib_dname, created_at, updated_at) FROM '$$PATH$$/3373.dat';

--
-- Data for Name: libfarmingtechs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libfarmingtechs (id, user_id, lib_techname, created_at, updated_at) FROM stdin;
\.
COPY public.libfarmingtechs (id, user_id, lib_techname, created_at, updated_at) FROM '$$PATH$$/3375.dat';

--
-- Data for Name: libgenders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libgenders (id, user_id, lib_gname, created_at, updated_at) FROM stdin;
\.
COPY public.libgenders (id, user_id, lib_gname, created_at, updated_at) FROM '$$PATH$$/3377.dat';

--
-- Data for Name: libgradelvls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libgradelvls (id, user_id, lib_glcode, lib_glname, created_at, updated_at) FROM stdin;
\.
COPY public.libgradelvls (id, user_id, lib_glcode, lib_glname, created_at, updated_at) FROM '$$PATH$$/3379.dat';

--
-- Data for Name: libhhevacuationareas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhevacuationareas (id, user_id, lib_heaname, created_at, updated_at) FROM stdin;
\.
COPY public.libhhevacuationareas (id, user_id, lib_heaname, created_at, updated_at) FROM '$$PATH$$/3381.dat';

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
COPY public.libhhroofmaterials (id, user_id, lib_roofmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3385.dat';

--
-- Data for Name: libhhtenuralstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhtenuralstatus (id, user_id, lib_ternuralstatusdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhtenuralstatus (id, user_id, lib_ternuralstatusdesc, created_at, updated_at) FROM '$$PATH$$/3387.dat';

--
-- Data for Name: libhhtypeofbuildings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhtypeofbuildings (id, user_id, lib_hhtobname, created_at, updated_at) FROM stdin;
\.
COPY public.libhhtypeofbuildings (id, user_id, lib_hhtobname, created_at, updated_at) FROM '$$PATH$$/3389.dat';

--
-- Data for Name: libhhwallconmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhwallconmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhwallconmaterials (id, user_id, lib_wallmaterialsdesc, created_at, updated_at) FROM '$$PATH$$/3391.dat';

--
-- Data for Name: libhhwatertenuralstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libhhwatertenuralstatus (id, user_id, lib_wtdesc, created_at, updated_at) FROM stdin;
\.
COPY public.libhhwatertenuralstatus (id, user_id, lib_wtdesc, created_at, updated_at) FROM '$$PATH$$/3393.dat';

--
-- Data for Name: liblivelihoods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.liblivelihoods (id, user_id, lib_livelihooddesc, created_at, updated_at) FROM stdin;
\.
COPY public.liblivelihoods (id, user_id, lib_livelihooddesc, created_at, updated_at) FROM '$$PATH$$/3395.dat';

--
-- Data for Name: libmaritalstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libmaritalstatus (id, user_id, lib_msname, created_at, updated_at) FROM stdin;
\.
COPY public.libmaritalstatus (id, user_id, lib_msname, created_at, updated_at) FROM '$$PATH$$/3397.dat';

--
-- Data for Name: libmonthlyincomes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libmonthlyincomes (id, user_id, lib_miname, created_at, updated_at) FROM stdin;
\.
COPY public.libmonthlyincomes (id, user_id, lib_miname, created_at, updated_at) FROM '$$PATH$$/3399.dat';

--
-- Data for Name: libmunicipalities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libmunicipalities (id, user_id, psgccode, lib_munname, created_at, updated_at) FROM stdin;
\.
COPY public.libmunicipalities (id, user_id, psgccode, lib_munname, created_at, updated_at) FROM '$$PATH$$/3401.dat';

--
-- Data for Name: libnutritionalstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libnutritionalstatus (id, user_id, lib_nsname, created_at, updated_at) FROM stdin;
\.
COPY public.libnutritionalstatus (id, user_id, lib_nsname, created_at, updated_at) FROM '$$PATH$$/3403.dat';

--
-- Data for Name: librelationshipheads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.librelationshipheads (id, user_id, lib_rhname, created_at, updated_at) FROM stdin;
\.
COPY public.librelationshipheads (id, user_id, lib_rhname, created_at, updated_at) FROM '$$PATH$$/3405.dat';

--
-- Data for Name: libreligions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libreligions (id, user_id, lib_rname, created_at, updated_at) FROM stdin;
\.
COPY public.libreligions (id, user_id, lib_rname, created_at, updated_at) FROM '$$PATH$$/3407.dat';

--
-- Data for Name: libroofconmaterials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libroofconmaterials (id, user_id, lib_tocmname, created_at, updated_at) FROM stdin;
\.
COPY public.libroofconmaterials (id, user_id, lib_tocmname, created_at, updated_at) FROM '$$PATH$$/3409.dat';

--
-- Data for Name: libtenuralstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libtenuralstatus (id, user_id, lib_tsname, created_at, updated_at) FROM stdin;
\.
COPY public.libtenuralstatus (id, user_id, lib_tsname, created_at, updated_at) FROM '$$PATH$$/3411.dat';

--
-- Data for Name: libtscshvcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libtscshvcs (id, user_id, lib_tscshvcname, created_at, updated_at) FROM stdin;
\.
COPY public.libtscshvcs (id, user_id, lib_tscshvcname, created_at, updated_at) FROM '$$PATH$$/3413.dat';

--
-- Data for Name: libtypeofprograms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.libtypeofprograms (id, user_id, lib_topname, created_at, updated_at) FROM stdin;
\.
COPY public.libtypeofprograms (id, user_id, lib_topname, created_at, updated_at) FROM '$$PATH$$/3415.dat';

--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.
COPY public.migrations (id, migration, batch) FROM '$$PATH$$/3417.dat';

--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.
COPY public.password_resets (email, token, created_at) FROM '$$PATH$$/3419.dat';

--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.
COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM '$$PATH$$/3420.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM stdin;
\.
COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role) FROM '$$PATH$$/3422.dat';

--
-- Name: demographies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demographies_id_seq', 1, false);


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
-- Name: libhhtypeofbuildings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.libhhtypeofbuildings_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.migrations_id_seq', 68, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: demographies demographies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_pkey PRIMARY KEY (id);


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
-- Name: libhhtypeofbuildings libhhtypeofbuildings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhtypeofbuildings
    ADD CONSTRAINT libhhtypeofbuildings_pkey PRIMARY KEY (id);


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
-- Name: libtscshvcs libtscshvc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtscshvcs
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
-- Name: demographies demographies_current_attending_libgradelvl_glcode_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_current_attending_libgradelvl_glcode_foreign FOREIGN KEY (current_attending_libgradelvl_glcode) REFERENCES public.libgradelvls(lib_glcode) ON DELETE CASCADE;


--
-- Name: demographies demographies_highest_education_attainment_libgradelvl_glcode_fo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_highest_education_attainment_libgradelvl_glcode_fo FOREIGN KEY (highest_education_attainment_libgradelvl_glcode) REFERENCES public.libgradelvls(lib_glcode) ON DELETE CASCADE;


--
-- Name: demographies demographies_household_controlnumber_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_household_controlnumber_foreign FOREIGN KEY (household_controlnumber) REFERENCES public.households(controlnumber) ON DELETE CASCADE;


--
-- Name: demographies demographies_libdisability_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libdisability_id_foreign FOREIGN KEY (libdisability_id) REFERENCES public.libdisabilities(id) ON DELETE CASCADE;


--
-- Name: demographies demographies_libgender_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libgender_id_foreign FOREIGN KEY (libgender_id) REFERENCES public.libgenders(id) ON DELETE CASCADE;


--
-- Name: demographies demographies_libmaritalstatu_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libmaritalstatu_id_foreign FOREIGN KEY (libmaritalstatu_id) REFERENCES public.libmaritalstatus(id) ON DELETE CASCADE;


--
-- Name: demographies demographies_libmonthlyincome_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libmonthlyincome_id_foreign FOREIGN KEY (libmonthlyincome_id) REFERENCES public.libmonthlyincomes(id) ON DELETE CASCADE;


--
-- Name: demographies demographies_libnutritionalstatu_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libnutritionalstatu_id_foreign FOREIGN KEY (libnutritionalstatu_id) REFERENCES public.libnutritionalstatus(id) ON DELETE CASCADE;


--
-- Name: demographies demographies_librelationshiphead_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_librelationshiphead_id_foreign FOREIGN KEY (librelationshiphead_id) REFERENCES public.librelationshipheads(id) ON DELETE CASCADE;


--
-- Name: demographies demographies_libtscshvc_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demographies
    ADD CONSTRAINT demographies_libtscshvc_id_foreign FOREIGN KEY (libtscshvc_id) REFERENCES public.libtscshvcs(id) ON DELETE CASCADE;


--
-- Name: households households_libbarangay_psgccode_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libbarangay_psgccode_foreign FOREIGN KEY (libbarangay_psgccode) REFERENCES public.libbarangays(psgccode) ON DELETE CASCADE;


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
-- Name: households households_libhhroofmaterial_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhroofmaterial_id_foreign FOREIGN KEY (libhhroofmaterial_id) REFERENCES public.libhhroofmaterials(id) NOT VALID;


--
-- Name: households households_libhhtenuralstatus_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhtenuralstatus_id_foreign FOREIGN KEY (libhhtenuralstatu_id) REFERENCES public.libhhtenuralstatus(id) NOT VALID;


--
-- Name: households households_libhhtypeofbuilding_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.households
    ADD CONSTRAINT households_libhhtypeofbuilding_id_foreign FOREIGN KEY (libhhtypeofbuilding_id) REFERENCES public.libhhtypeofbuildings(id) NOT VALID;


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
-- Name: libhhtypeofbuildings libhhtypeofbuildings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libhhtypeofbuildings
    ADD CONSTRAINT libhhtypeofbuildings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


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
-- Name: libtscshvcs libtscshvc_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtscshvcs
    ADD CONSTRAINT libtscshvc_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: libtypeofprograms libtypeofprograms_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.libtypeofprograms
    ADD CONSTRAINT libtypeofprograms_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              