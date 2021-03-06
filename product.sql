PGDMP                     	    w            product    11.5    11.5     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            B           1262    16393    product    DATABASE     e   CREATE DATABASE product WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE product;
             postgres    false            C           0    0    DATABASE product    COMMENT     J   COMMENT ON DATABASE product IS 'Build product app with reactjs + nodejs';
                  postgres    false    3138            �            1259    16412    product_info    TABLE     �   CREATE TABLE public.product_info (
    id bigint NOT NULL,
    product_name text,
    product_price bigint NOT NULL,
    image text
);
     DROP TABLE public.product_info;
       public         postgres    false            �            1259    16408    product_info_id_seq    SEQUENCE     |   CREATE SEQUENCE public.product_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_info_id_seq;
       public       postgres    false    198            D           0    0    product_info_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_info_id_seq OWNED BY public.product_info.id;
            public       postgres    false    196            �            1259    16410    product_info_product_price_seq    SEQUENCE     �   CREATE SEQUENCE public.product_info_product_price_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.product_info_product_price_seq;
       public       postgres    false    198            E           0    0    product_info_product_price_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.product_info_product_price_seq OWNED BY public.product_info.product_price;
            public       postgres    false    197            �           2604    16415    product_info id    DEFAULT     r   ALTER TABLE ONLY public.product_info ALTER COLUMN id SET DEFAULT nextval('public.product_info_id_seq'::regclass);
 >   ALTER TABLE public.product_info ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    196    198            �           2604    16416    product_info product_price    DEFAULT     �   ALTER TABLE ONLY public.product_info ALTER COLUMN product_price SET DEFAULT nextval('public.product_info_product_price_seq'::regclass);
 I   ALTER TABLE public.product_info ALTER COLUMN product_price DROP DEFAULT;
       public       postgres    false    198    197    198            <          0    16412    product_info 
   TABLE DATA               N   COPY public.product_info (id, product_name, product_price, image) FROM stdin;
    public       postgres    false    198          F           0    0    product_info_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_info_id_seq', 13, true);
            public       postgres    false    196            G           0    0    product_info_product_price_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.product_info_product_price_seq', 1, false);
            public       postgres    false    197            �           2606    16421    product_info product_info_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_info
    ADD CONSTRAINT product_info_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_info DROP CONSTRAINT product_info_pkey;
       public         postgres    false    198            <      x��z���Ȓ�}�)��V�o�,�
�;YܪX���dqߗw�)9�Ɛ 2��6d4���7�?�W=�Q,f&#3����H�����װ�B� �%��n� ,A��m�uyP�A��OQ[e�M���Um@QY2S�|LsDA�q~(>�y����&��b����:��3��������c
�l����>�|_����_�B�1)Df�R:Eҧ�Ԋ5T��/��Y�L���m\�1	�G�Y\��.]���߿����Oc�vE�2���NA  �Q ����h&��[������3��v�fGy�VߺS����	�$��#D�����G��
���7�����ӫ��a�+���A0���~q���?��?E_����YI՟p��#j�)i��wb`����>��@���X�������?�_��~����Ϫ���>������`��Z��[�ӹ�99$FB8�� yňϥ�/گ�y�:����O;|��8�C�^ꧥ��&�se�G���$��F?��G
�?���}ğԏ�u���0>�7����T��/������������N������d_��Ӧi%]5�'��\�����C�N�[�<&�wCx�� I`���n ���~���;��lV�����t�����wi~:����}�L���W,�7�\���y��_�_��_��׿5_��N������p��t�1���Rކ��������^�a���ܗ?��ڠ�O�h���dG~?5կ��d�R�_�����ɦ������vE4�C2~��z�� �`�r���͛C�l����isN� B��2@��;��_��k��/�>�:M��ɋ_�[�Um��O�%��/߷��%ٿ�1���/ �(�.}��(�2��w�)�W���R�7��r�|�;o�w~s?��}�[����SܳL��J<�%��e�����8V��=��b���U�4��0�b�E��T��Qζ���������α���|�����=�j
P�I�&�4��RF1�ɱ�)EE�d4mr�e��?��8��"��^'��B�T&qLf*�L�ܛ�ԉt�e�Z�x:��'Xm,���أ��.dY��k¹�n1Qw��%�OTe�C�"�x�������>��Ͽ��G G1�ubeN�Z5�O�i�<�䚫92}����t���(je�s9S�(��fʒ8,���*Wh��^P^v+��~��jZ�q�)��Y|2q=P=z������ъ�+Q<�c���m�D�����V�i������❉Ԛ�"�ݔ�� K'���ѿ��Vv��M<���fZ7��mIV���δ�h���	�rܗΝE�j�p��R#��<�)�T1-�T(�<�|mVIspt��[?Ł��׵1�Ӡ�n�h�
�kU[մw��a�?̧����+)�L\2�f`���Ը�� Zdܨ�l��/��If��d����[R�O|:��&�d�byE�\|J�d�\��	J�$ʱ��� _P��?��P��m[Ty���o�����
�� B��mS��ݶm���"�gN�}6�e*���&��L��(��H��J(Tdt+_,��9<�3^%�"qR؋x���3])����lC�53@�এkpW�KӅ��K:�HV����Ű=��mkͭS��	��M����H�<ݍ��K&7[�L�14���.�Ko 8�OR���󈯈'����q�!\�e����yH��;�*n ,��f���d6fB9��p��#��z7��΀Jw|'����Σ#�#z�ӄ��+{�j��&+�U�
^\&��=�����+	�o=��	qd�d�W��� �W��b�e\����Im��=|�#�az=A��ʷΞ.'���{�N�uޒ���n3������n�V�s�5�P���F�v�����Z��ޞ"�i4�	�w�"�ECV�r̹52�<X[���4>����J�L�2��X'�+�y��� ����u�up�S
�����s��'���Yғ�J�n���I�L�X�3H���jF�nčo�)��ۚZ��".|����LC�j��+߸U��Ōݖ+�-2d�H҉Ek���K�?�3��M2�&8���h��/+�F�i�Э�_Jh#�<�@�%�}։�Vb}�䟏�y�n�zMG���ʄ�>���<Z����'IKaQ\b.�v��'(7A-Ǳ,�A淇G��2���D�^*	�{�k��hxѩ;4��\@F��ބ�6�Q\� �L���߮�w�m�jI�n�;$��:���1J��_%Y�lS�i|7s=��[r/��Hǹ?�P�ė֜��6�^�LƓU/-ԧ����ّ,��m� R���c��t�)�ܮs�.6_Į����F	d��]�dIFˇ/���Xr�\ؚ��
��{eX4ߥ{7�uH�L�n��l<q���%<��y>A��j���S���"�U��vi�G�L��
�ć<p+�����^J��o	Q�\��[GHl��WicH��ȜX+�]l�����]8Z�m�_���g���{�>���ԋ����c6�E�f��ǭ�Ϛ���J�G�l����\����zC�����RU�aG�di!R?>��E��*�����X�H>:�¤iP��b���\`���IP�k1`Up�<�5��,
�aD@%�����4���p2w�q�y���F�6��)?��m��݂^Q)sWE���V�ឦ��_.Z�x\^���n�I��ֶ��
�h��Y��rx��˄�]�k�Z�V��]lP|�
�(M��6��Y.)]A��q�υ�D>x�lc���\2w��`��nʎ&��nEԐ�a�q�{�gl�n�P�;�3��sh�3�)]�	��`�l��B�� �t��h���츘u�	]h3zGv���^f��:� [�g�Z�ѭ�$nA������5��^_���7����-�t����_H(��"0�n�\D�[���Ф�o�/���.�Ё�%ӯ�@$�z%x�8C_���8���ⵖ�/�z;��]ŵ�yym�u!�.�����h�L%$%0����%�_�] >�'T�6�+�f��.��2h�u�(��Z����AW�`)��(�>=y>�W;+)���%���
o�����q�Y��<͖wnvD��X�2�~�x5o�*ۻ��>*��ϲ�?B=Hl�p�0i��U#Fh�S�������*�1{-���-^�Х'
JP�� ҋ⨮�������<Csj�Q��f�\����F�W�:,oCJ/%�l��Ħ�<�����a�q�u���e�ң̸{uz����Rop�����&ez\��ZG~��@O���A��e̥�w,��%������6b�2I6'3���&?/A1�[#�<O�Pf�:�3�>��].��խ�KnO��R9��v��(ݰ�ӽe=�+�yT'˪3��Rh���ږ�<̩9x(��h��rOi��i�� �v��aQD=b��U �M�Q���H�!���8*CCO� ���Ŧ>�zUs�y�M[���B�q\l
x4f�n%��-˔LA�䋭XC��,W�$���b0�n�z�^7�Wl�HeF��ԚIb�M+M����6ڑ˹>�=���.<���.�ʞQz5�25C��[���;��Y�#b'�ڤF�?r^45�റ,�R�"~�2�+�k�D!�.�4���a�"x7�);�.v�l�x�w��[t��P��Ÿ�\U�	��;zm#�U;p�+yw/
��gź����l�W�E�$�٥�c�d�M�w"���9���T���"�n�4,	��V�]�n5!�a� {4����W��Oc���C���ؔ+Dx��a&$�d�jF-E�'�9�nc�G8��֔t��+��4N�u��Ȯ��8��I����YO)$�7M���
v��h���ŧo�3-�5s^�gh��
�����:��m���qj���rbp�l)�[�����j��R�0�@sh�|�]!ʇF�VpK��8uk�HIx��	^�E�$���W*�*�4�H��R<��h���`�J��ME-�� 7  JT����y��ft��֡��e��OOJ�Jc k(gf&ӛ<�q���~���)�t���*�׳������N��~H�8Ԗ�� �ߪhW$+]D�d�m�О�r��8kOiF�y]f�b�^��!ޢ�&���X�s����n�l=nORI��L��<�͍Wo,#�l��ɣ:��Z�4���3q��l��2�g�.�m����������%
�D�P�<��g�B�#! E��R���օ�kX�9� ��X�����kٙDݓYt�������������/�� �S��w5�g=��ӟ�ɲҏ��S�]�PWzr��v�Z
&��ON��2���u�Y�8�=���}k*n�P��R��e��{2��a�b����/?_dne|�ģk���u=�+�+�Q2�Z�/cʩ�dk;H�\?��X���L�m,Լ##ˈ���C���y�z���|=a��C7ѱs(B� �d[E�E,�M��EO"�L|'	�"��i?B��#�o���W���WL�S3�w{cXsӜ�B��MM�+�4ٲfxp�7�3�1��0�ю����$k(v���]�L�T(������M�՘�E��1{~��q�+X땽u�y��� ��(���H�I�xR%�RN7��\½d�g��
��^�鷅��w�w�l�ɺVE��g1ۙ�ǈ*��q��t����J��<�H7��e�B���M�a��DR��~H[#��M�9<�8=�2���0(�#^.�΄���0~�0�NoQuڋ����p T����! �-�8e�X�L<�:������B�t	��_��=�V����'��R��cx�ӈmn����z��p��`P�x���1��d�N'�Π��>^�����5.�s�c��(��N9<J��m8(��K`��R�gT��k��!�p6Q����$k�������Ʉ}��(�� `g&4�.�*����L	8"k�����s�,u1�I��Fo֌����A�
��Z�E�0*��-��{��]Ǎ�.�I�(gGQ�g�)��Fbk�s_ �:?L�����z�j�E�u5O{�,��^�j�cG�� ��0�;�}�i_eT��j��o����d	�VF�a����>��
�0��&�B3�Z2���1(�,��VPɳ�r��y4�޳Vܧϡ�sȓ�V�H��&����z����0�v�c/��z�be@x�/���i�ע},<�k/{����W�i�M�O��w3��)���[�N��A���|Ϛ=��q��F�֖y�%��9�KO�!����+g��l���틌%��ϡ[̄ �+���{m�ta#�����/����e1�����Hq!�H*��K��U�dca���l7z#B�m�;�lGL��_��a����d78=����(�|N�0��Bs��?��D�Ĥ�;*ѵ�0�aZJ�VUy��Q�ů��x��K�d�6nc�x��O�LQ˻{��<nʌHמ��ҳ�d亅���m����I�1p+v]����ռ4NJ�a��dÇ�S�����hc�k����Wm42M�z�`�6C���{x�Zm�[*�æ�/�~>�Зq=7X��W{��"�f%�<X���U=��N�ِp���,�{]�gI�@��EW���M��9�1�j���}w�`wm���9@��1�6�
4�U��m9�Ңم�C3zw�`^��)=�W�[��|Ö�3_�X���#�C�)�96�Fah�4�s�>�7�t+@�GU��[��E��g�;EWY͒��Zq?������g)���.�|Lm��*G&:Q�ä�u���z��kD�g >À\r	˟��m-�4p��^,T�TG�>Y�"2@]���H��a��w�i��r\�דCG���ڏj`Lh��tdY��D{'�-�pTSJk���G�\�jT[r������~���M�n�[�C�I\a���R�q2"or���{##��-��j����aP�6���b�D�R��΄5�c<=�$��9�CtA�*O����J�I��|a �\�9�g�������s5��~{��K��w�����4t�;�A�nAy�\_��8JS.�>~��0��{�ֳJ������d���	
[��ʗL��ǲ��+n�'�޴1�,;�=VE"����v�r�G]o����rq�vO�B��бv�U�JLu3��/ǡ�[�vL�z���_&H'�x�W/$�h8��R,^Se!(���c����I1"��
�ͫ@��Lt�V��
т�} �In}=��,�h]Czڱ���0�~��4�~���I��9u?�3K�Sz& �����#&ʈe�8�w�F|�úrO�E���O�����������\�%ڀ!��G:�g뉄ҵ�s0^�H��@o��!%t���*���#���ݭ�Rx�z9v=ȷN&��/`���A���e=�Eyt���{3,�v�bD��l�N݀ŝ߳��F�)!p�#1G/j�jOF�n��K���O�+�O�sG^\	ұ1|n� ����,N���<Z9cTz�7RIT�u�Ť��F�&n{k�t��#'��Ŵ#tڥ��0ެ�y��L3:8VA[�I��';�Nqk0��PO�&w	aH�9�t�-0O�P�b����+��.�h\�f��rh�����=l�(�3c��Mՙ��1��ur���0R��H��n��_�9��'g��X�T�ݨ�	�;�Э}�aw^4U��Wp��qَo�Kq�8X�j����)���[\��n�������/.y%�8W��3����:2L����ߎ���ڋ���eY?�+$��x[w_�n���bl[���,�,+
=3OIP�2X��MYf��2e�v� �2�m�d�wK��,iݢe�2-YVru��{%��+ @�����o?���5��ݙ����kR�[i�v�y]��%�(�����~�"
�<��qz%� D�b����>��B��P ���A �~��"���?v_�����}�A�~�~��?~�Nh�	�������M�S?�p������u�uπ�;'�pf9m���A�n|{7��A�{����߰o�0��O?����Ϗף     