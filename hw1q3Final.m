%hw1q3

clear all;

%DATA ENTRY
P_tx=27;
d_0=1;

%receiver coordinates
xy_Rx=[0	14.38
17.925	13.47
32.576	13.47
45.395	13.47
25.47	21.08
37.76	24.555
49.36	24.555
4.555	25.97];

%transmitter coordinates
xy_Tx=[8.92	14.375
15.33	14.375
24.335	14.375
31.355	14.375
36.545	14.375
44.175	14.375
24.445	19.705
27.535	25.46
34.555	25.46
39.745	25.46
7.91	17.43
7.3	23.53];
%experiment data

exp7=nan(61,8);%instantiate NaN matrices of max size (61x8)
%fill in first blocks, experimental size with relevant data
exp7(1:31,1:8)=[50	53	500	500	61	500	500	53
50	71	500	500	63	500	500	52
50	71	500	500	63	500	500	52
50	58	500	500	63	500	500	53
52	58	500	500	500	500	500	53
50	56	54	59	68	500	500	64
50	53	61	87	65	500	500	53
50	53	61	87	65	500	500	53
66	54	63	87	62	500	500	57
51	96	63	87	67	500	500	54
47	56	62	87	67	500	500	54
47	56	62	500	67	500	500	54
47	61	62	500	66	500	500	56
51	52	66	69	65	500	500	54
51	54	66	69	61	500	500	54
62	54	66	69	62	500	500	55
49	57	500	70	63	500	500	55
50	58	500	70	63	500	500	55
61	60	500	70	63	500	500	53
56	84	500	63	63	500	500	54
51	52	500	67	57	500	500	53
48	55	58	67	59	500	500	48
53	48	66	67	58	500	500	49
53	55	56	500	58	500	500	53
53	55	56	500	58	500	500	50
500	55	56	500	58	500	500	51
53	53	500	500	59	500	500	50
46	79	500	500	65	500	500	50
51	59	500	500	65	500	500	50
48	48	500	500	63	500	500	53
48	52	52	500	63	500	500	50];

exp8=nan(61,8);
exp8(1:34,1:8)=[57	36	56	66	54	500	500	500
57	34	56	59	59	67	500	66
57	34	56	59	59	67	500	66
54	38	57	64	59	67	500	66
54	42	57	65	58	500	500	70
54	76	57	65	62	500	500	70
54	76	500	63	62	500	500	70
55	36	500	62	59	500	500	63
54	36	500	62	63	500	500	67
54	36	500	62	61	500	500	67
54	84	58	63	62	500	500	64
54	35	58	65	54	500	500	64
57	34	55	59	57	500	500	64
53	39	63	63	58	500	500	69
58	37	90	63	57	500	500	69
58	37	90	61	57	500	500	67
60	35	59	61	57	500	500	60
60	36	59	61	61	500	500	60
57	37	59	62	63	500	500	72
74	68	500	61	62	500	500	67
56	38	500	62	62	500	500	67
56	76	60	62	62	500	500	67
54	36	60	59	60	500	500	62
55	35	59	59	62	500	500	61
54	34	58	59	56	500	500	61
54	93	59	500	57	500	500	67
53	37	58	60	59	500	500	66
55	36	62	60	58	500	500	65
56	36	60	60	57	500	500	65
55	37	59	60	57	500	500	63
59	38	60	57	57	500	500	63
53	39	60	57	83	500	500	62
54	80	56	61	60	500	500	62
53	78	59	59	60	500	500	66];

exp9=nan(61,8);
exp9(1:34,1:8)=[58	53	44	500	42	68	500	500
61	52	43	59	48	72	500	500
61	47	40	59	49	67	500	500
61	50	44	59	49	67	500	500
500	48	44	57	84	72	76	71
500	48	72	59	45	72	76	71
500	48	72	59	45	72	76	71
500	48	72	59	45	72	76	71
500	48	72	59	45	72	76	71
500	48	72	59	45	72	76	71
500	48	72	59	45	72	76	71
500	50	43	58	49	500	500	500
500	50	43	58	49	500	500	500
64	50	38	58	68	67	500	500
61	50	39	56	75	67	71	500
61	50	39	56	75	67	71	500
61	50	39	56	75	67	71	500
61	50	39	56	75	67	71	500
61	50	39	56	75	67	71	500
61	50	39	56	75	67	71	500
61	50	39	56	75	67	71	500
61	50	39	56	75	67	71	500
61	52	42	56	51	66	71	500
61	52	42	56	51	66	71	500
61	52	41	57	52	66	500	70
59	51	43	56	46	68	500	70
59	51	40	56	51	55	71	70
59	51	40	56	51	70	71	500
58	51	39	57	51	70	71	500
58	51	45	57	51	70	500	500
72	51	42	57	46	69	500	500
58	50	44	57	46	64	76	500
58	50	79	57	46	64	76	500
59	50	43	57	44	64	76	500];

exp10=nan(61,8);
exp10(1:37,1:8)=[59	500	28	60	62	65	74	500
59	500	32	58	63	62	77	500
59	500	32	58	63	62	77	500
59	67	29	63	58	61	77	500
59	67	29	63	58	61	77	500
81	57	34	59	60	61	500	500
57	55	30	62	64	66	78	500
59	57	30	62	66	65	76	500
59	57	41	59	66	65	76	82
59	57	32	59	63	65	76	82
500	57	30	59	66	65	78	82
63	57	31	63	66	64	78	78
61	57	31	62	65	64	78	78
69	62	33	61	60	64	500	78
60	60	29	61	61	64	500	500
61	60	32	61	61	68	500	500
58	64	30	59	58	63	66	500
58	60	31	59	61	71	66	500
59	60	32	58	61	68	66	500
59	60	34	58	64	68	500	500
57	500	31	63	62	68	500	500
57	58	35	54	62	68	74	500
57	56	33	60	60	500	75	500
500	56	73	60	60	500	75	500
500	56	32	59	60	64	75	500
500	500	30	58	63	67	500	500
500	56	30	58	63	65	500	500
55	54	39	59	63	65	500	78
52	53	71	56	500	64	500	78
55	53	78	60	500	67	500	78
54	53	31	59	57	67	500	500
51	54	28	55	60	64	76	500
55	53	78	60	500	67	500	78
53	54	31	55	63	66	76	500
54	54	90	55	63	66	76	500
54	51	31	58	61	65	500	500
54	51	84	59	62	65	79	80];

exp11=nan(61,8);
exp11(1:41,1:8)=[75	86	44	49	73	55	74	500
75	60	38	52	73	55	74	500
75	60	38	52	73	55	74	500
75	60	38	52	73	55	74	500
75	60	73	47	66	55	74	80
75	60	73	47	66	55	74	80
82	63	39	48	77	55	65	80
58	63	39	50	77	56	65	500
58	61	69	50	67	56	74	500
63	62	41	50	67	57	74	500
88	62	43	51	65	55	74	500
85	62	41	51	67	63	75	500
85	58	42	51	67	87	75	500
61	58	38	56	64	57	75	82
61	57	39	56	64	57	70	82
56	57	95	51	68	57	74	82
53	62	41	53	66	59	74	82
53	59	38	53	72	57	74	82
57	59	41	46	72	54	74	500
57	63	42	47	72	58	500	500
56	63	37	48	500	57	500	500
56	63	41	50	71	53	500	500
55	59	78	55	71	53	71	83
52	57	78	51	64	53	74	83
84	58	41	51	76	57	74	83
84	58	40	51	76	55	74	500
84	58	37	54	63	52	500	500
54	58	41	54	63	56	81	500
54	58	41	54	63	56	81	500
54	53	41	52	63	56	72	500
55	53	40	51	500	57	72	500
55	53	35	51	500	53	72	500
61	57	39	54	62	50	500	500
56	55	75	55	62	51	500	500
52	57	39	50	75	54	71	500
54	56	42	50	66	55	71	500
54	94	75	50	69	58	78	500
55	94	88	500	67	58	78	500
50	78	42	51	62	58	78	500
55	78	40	51	61	500	500	500
55	78	40	51	61	500	500	500];

exp12=nan(61,8);
exp12(1:34,1:8)=[62	68	57	31	500	62	64	500
62	68	57	31	500	62	64	500
62	65	51	67	81	62	64	500
62	65	51	67	81	62	64	500
500	65	52	51	71	69	64	500
500	65	52	51	71	69	64	500
59	63	47	34	76	63	500	500
65	63	52	33	76	64	64	86
60	63	48	86	76	73	73	86
60	500	48	31	500	61	62	86
60	69	53	31	500	64	65	500
58	62	51	33	500	64	65	500
58	62	50	31	500	64	68	86
62	62	53	34	80	64	71	86
58	69	55	39	77	69	70	86
58	74	54	39	77	69	70	86
58	74	54	34	78	63	67	86
500	69	56	34	78	63	66	500
500	69	56	40	78	70	69	93
500	69	56	40	500	66	71	93
500	69	56	40	500	66	71	93
500	63	53	34	500	66	71	93
500	63	53	34	500	66	71	93
57	63	53	34	75	63	500	500
57	63	53	34	75	63	500	500
55	67	50	30	74	60	66	500
55	67	50	30	74	60	66	500
54	65	51	77	81	60	66	500
84	65	49	68	76	63	64	500
55	65	49	76	76	63	64	500
69	66	78	28	78	64	65	86
56	68	52	30	78	72	65	86
84	66	53	35	80	72	62	86
62	71	50	29	80	58	68	500];

exp13=nan(61,8);
exp13(1:37,1:8)=[71	57	60	500	34	76	76	68
71	57	65	74	34	69	77	68
71	57	65	74	34	69	77	68
71	55	65	74	31	69	77	66
71	57	500	80	69	500	500	68
71	59	58	80	76	500	500	67
71	53	58	80	30	67	78	66
75	55	82	500	75	64	73	65
69	57	55	500	27	68	73	82
69	54	83	500	78	67	73	65
70	57	57	87	29	67	500	63
74	54	59	77	30	69	75	65
69	55	57	77	30	69	75	65
69	54	57	77	28	65	75	64
69	57	56	500	30	83	500	65
75	54	56	500	33	68	75	69
75	54	56	500	33	68	75	69
74	67	500	75	32	67	73	67
74	67	500	75	32	67	73	67
74	67	55	75	28	86	73	66
500	52	61	500	30	68	500	67
69	52	54	76	27	72	500	64
69	52	54	76	31	71	73	67
69	58	53	76	30	71	73	67
69	54	55	500	78	68	73	67
68	54	56	500	28	73	500	67
68	55	59	78	76	73	500	67
68	56	56	78	28	73	500	67
70	57	56	78	29	68	500	65
70	57	57	500	28	70	500	68
70	66	88	78	76	70	76	74
500	56	59	78	28	70	76	67
500	59	67	78	74	76	76	67
69	55	57	500	27	66	73	65
69	53	54	79	69	66	77	65
69	51	54	79	26	66	73	64
500	51	55	78	74	62	82	66];

exp14=nan(61,8);
exp14(1:61,1:8)=[500	66	63	76	54	49	61	75
500	71	63	76	54	87	61	76
500	71	63	76	54	87	61	76
500	68	64	76	54	87	65	76
500	70	62	500	500	500	65	500
500	70	64	500	51	52	57	500
87	70	57	500	45	49	52	72
87	70	57	500	45	49	52	72
77	64	57	74	53	50	55	74
77	64	57	74	53	50	55	74
77	67	500	74	50	52	56	69
86	68	59	500	96	53	57	69
86	68	59	500	96	53	57	69
81	66	60	72	47	55	55	69
81	66	60	72	47	55	55	69
81	68	62	72	47	48	88	500
82	68	58	500	48	55	57	500
82	70	58	72	51	52	55	68
82	66	61	72	47	90	54	69
82	66	61	72	47	90	54	69
500	71	61	72	45	48	55	69
500	71	61	72	45	48	55	69
77	67	60	500	46	50	56	500
77	67	60	500	46	50	56	500
76	88	60	74	62	70	55	500
76	88	60	74	62	70	55	500
76	65	58	74	83	70	55	500
76	65	58	74	83	70	55	500
78	65	58	72	48	53	55	500
78	65	58	72	48	53	55	500
78	500	58	72	45	41	52	500
78	500	58	72	45	41	52	500
78	500	500	72	46	48	48	70
78	500	62	73	45	50	54	70
78	500	62	73	45	50	54	70
78	500	63	73	51	50	68	75
500	63	58	500	51	48	56	70
500	63	58	500	51	48	56	70
500	69	87	500	73	48	63	70
500	69	87	500	73	48	63	70
78	62	87	500	50	48	63	73
78	61	500	72	49	50	56	73
78	67	500	72	47	53	57	73
500	68	500	72	46	49	95	71
500	68	500	72	46	49	95	71
500	68	57	500	48	47	95	71
500	68	57	500	48	47	95	71
80	65	61	500	48	46	56	72
80	65	61	500	48	46	56	72
89	68	61	500	48	49	56	71
89	68	61	500	48	49	56	71
89	68	61	500	47	47	53	68
89	68	61	500	47	47	53	68
500	75	59	500	45	48	63	72
500	75	59	500	45	48	63	72
81	75	59	74	48	48	61	72
81	75	59	74	48	48	61	72
81	86	65	74	46	45	62	67
81	86	65	74	46	45	62	67
500	86	64	500	46	48	57	68
500	86	64	500	46	48	57	68];

exp15=nan(61,8);
exp15(1:37,1:8)=[86	75	69	500	63	42	52	500
86	75	69	75	84	39	60	500
86	75	69	75	84	39	60	500
86	75	69	75	65	43	59	500
500	500	500	73	64	44	60	500
500	500	500	73	60	48	63	500
500	500	500	73	63	48	60	500
83	500	500	73	63	39	60	82
82	75	66	75	62	39	63	82
82	75	90	75	61	49	62	82
82	75	70	70	67	48	61	500
500	79	66	70	63	41	61	500
86	80	69	78	64	48	59	500
86	79	67	83	64	38	59	500
86	82	67	83	64	40	58	500
86	82	67	83	64	40	58	500
500	82	500	500	64	45	62	500
500	86	500	76	58	38	57	500
500	86	500	76	62	38	60	75
500	86	500	72	60	35	54	75
500	86	500	72	60	35	54	75
500	500	94	72	59	38	84	75
500	500	94	71	63	37	84	77
500	80	74	71	58	35	57	77
500	76	68	72	57	35	58	77
500	74	65	70	58	90	58	500
500	74	71	72	59	34	54	500
500	74	65	72	58	34	53	500
500	500	67	71	56	34	56	500
500	500	66	71	57	41	56	72
500	78	64	71	57	35	56	72
500	78	70	500	57	35	56	72
500	78	90	70	56	74	56	500
500	78	81	68	55	40	55	500
500	78	81	76	55	44	54	500
500	76	81	72	61	43	57	500
500	75	500	66	62	36	59	500];

exp16=nan(61,8);
exp16(1:48,1:8)=[87	78	73	64	69	39	42	500
87	78	70	64	63	45	49	500
87	78	70	64	63	45	49	500
87	75	68	64	64	50	49	76
500	77	99	70	65	42	48	76
500	77	63	69	65	40	49	76
500	86	64	69	69	48	50	500
500	86	70	72	69	44	47	500
500	77	70	72	69	45	49	500
83	78	70	72	72	45	50	500
83	78	500	71	72	41	43	82
83	71	500	66	65	42	47	77
500	71	66	66	69	40	46	77
500	74	68	64	69	43	80	77
500	74	71	67	102	40	46	500
500	74	71	67	67	38	46	500
500	72	69	67	68	37	47	500
500	72	69	69	66	43	44	500
500	72	78	69	66	71	44	500
500	500	67	69	66	39	75	500
500	71	78	69	68	80	58	500
500	73	78	65	68	40	43	500
500	73	78	65	70	42	45	500
500	73	500	65	70	38	49	500
500	500	500	68	66	44	48	500
500	500	62	68	65	40	49	80
500	500	64	68	69	44	48	80
500	500	64	500	63	47	43	80
500	79	64	66	68	45	49	500
500	79	64	66	66	76	47	500
500	76	64	66	67	40	48	500
500	79	64	500	67	81	48	500
500	79	64	500	67	38	48	500
500	75	66	500	67	44	49	500
500	75	66	69	65	41	51	500
500	75	66	69	71	42	48	500
500	500	67	69	68	41	50	500
500	76	67	500	72	41	49	500
500	99	65	65	68	45	50	500
500	99	65	79	68	45	47	500
500	99	65	79	70	46	49	500
500	77	66	71	68	45	51	500
500	82	66	71	69	45	50	500
500	82	66	66	67	44	53	500
500	82	89	69	67	47	47	500
500	76	89	65	67	43	50	500
85	76	89	64	500	45	46	500
93	79	500	70	500	48	50	500];

exp17=nan(61,8);
exp17(1:34,1:8)=[54	58	78	90	69	500	93	44
55	62	76	90	67	500	93	44
55	61	76	81	67	500	97	57
55	59	80	86	67	500	97	44
55	60	80	86	65	500	97	43
64	60	80	86	69	93	500	44
53	61	500	86	70	93	500	47
52	61	500	500	70	93	500	45
52	61	500	90	70	500	500	43
51	500	500	90	500	500	500	42
52	58	76	90	69	500	500	40
54	58	76	500	69	500	500	73
50	61	76	86	72	86	97	44
50	61	76	86	72	86	97	44
50	62	500	83	72	85	94	46
50	64	500	81	68	85	97	45
51	62	500	81	68	85	97	42
52	67	76	81	98	500	97	46
51	64	77	500	98	500	500	45
51	64	77	500	98	500	500	45
53	62	75	500	69	88	88	45
53	62	75	89	69	87	88	44
52	84	75	89	67	87	88	44
54	68	500	89	70	87	500	45
52	65	500	500	94	500	500	44
55	66	76	87	94	500	94	44
55	66	76	87	66	500	94	44
51	65	76	87	70	500	94	42
51	61	500	82	69	84	93	44
51	57	79	83	66	84	93	43
49	57	77	83	68	84	93	43
49	58	77	83	67	500	500	39
49	58	82	500	67	500	500	42
51	58	82	84	67	500	94	79];

exp18=nan(61,8);
exp18(1:39,1:8)=[59	65	500	500	69	500	500	39
60	68	500	84	64	500	500	36
60	68	500	84	64	500	500	36
61	64	500	89	63	500	500	38
64	64	79	89	63	85	500	38
62	64	79	89	61	85	500	40
61	65	79	85	63	85	81	36
60	65	500	85	59	85	81	37
58	64	500	85	63	85	81	36
60	64	500	88	59	500	500	37
62	64	500	88	62	500	500	37
62	64	500	88	62	500	500	37
61	66	500	88	54	500	500	37
61	66	500	88	54	500	500	37
61	66	500	88	54	500	500	37
61	65	77	86	63	500	500	38
61	65	77	86	63	500	500	38
61	65	77	89	63	500	500	37
61	65	77	89	63	500	500	37
54	60	74	86	63	500	86	35
55	60	74	86	64	500	93	34
56	99	75	86	65	82	93	35
56	62	74	87	61	82	95	36
56	62	74	81	61	80	87	34
55	62	78	81	62	80	87	39
60	59	78	86	65	84	86	34
58	62	78	86	62	84	86	34
64	62	500	89	62	84	87	34
55	64	81	89	60	84	87	39
55	59	81	85	60	84	93	74
56	63	81	85	58	500	93	33
58	63	500	85	58	500	93	33
57	58	79	87	60	82	90	35
53	60	79	87	61	82	90	34
55	63	76	82	61	82	90	34
57	58	500	500	60	500	500	33
60	59	77	82	60	500	500	33
60	60	76	82	61	500	500	34
60	59	77	82	60	500	500	33];

%combine all exps, big matrix
edata=[exp7'
    exp8'
    exp9'
    exp10'
    exp11'
    exp12'
    exp13'
    exp14'
    exp15'
    exp16'
    exp17'
    exp18'];

%remove erroneous measures
edata(edata==500)=NaN;

%CALCULATING DISTANCES
%calculate x distance
d_x=zeros(length(xy_Tx(:,1)),length(xy_Rx(:,1)));
for ix=1:length(xy_Tx(:,1))
    for jx=1:length(xy_Rx(:,1))
        %ix
        %jx
        d_x(ix,jx)=xy_Tx(ix,1)-xy_Rx(jx,1);
    end
end
   
%calculate y distances
d_y=zeros(length(xy_Tx(:,2)),length(xy_Rx(:,2)));
for iy=1:length(xy_Tx(:,2))
    for jy=1:length(xy_Rx(:,2))
        d_y(iy,jy)=xy_Tx(iy,2)-xy_Rx(jy,2);
    end
end

%calculate actual distance (pythagoras), dims rows V trials, cols > distance
d_xy=sqrt(d_x.^2+d_y.^2);
dxy=reshape(d_xy',[],1);

%big matrix
bfg=[dxy edata];

figure(1);
for i96=1:size(bfg,1)
    for j61=2:size(bfg,2)
        semilogx(bfg(i96,1),bfg(i96,j61),'*');
        hold on;
        grid on;
    end
end
xlabel('Log Distance from Transmitter');
ylabel('Received Power');
title('Scatter Plot of Received Power vs Distance');
hold off

%take avg for linear regression
avg=zeros(96,1);

for i96=1:size(bfg,1)
    sumrow=0;
        count=0;
    for j61=2:size(bfg,2)
        sumrow=nansum([sumrow bfg(i96,j61)]);
        if  ~isnan(bfg(i96,j61))
            count=count+1;
        end
    end
    avg(i96,1)=sumrow/count;
end

%new figure for regression
figure(2);
for i96=1:size(bfg,1)
    for j61=2:size(bfg,2)
        semilogx(bfg(i96,1),bfg(i96,j61),'*');
        hold on;
        grid on;
    end
end
xlabel('Log Distance from Transmitter');
ylabel('Received Power');
title('Plotted points and best fit linear regression');


%linear regression (degree 1 polyfit)
mdl=fitlm(bfg(:,1),avg);
coeffs = polyfit(bfg([1:5,8:14,16:end],1),avg(~isnan(avg)), 1);
%semilogx(coeffs(1)*);
%plot best fit line
x=linspace(0,100);
y=coeffs(2)+coeffs(1)*x;
semilogx(x,y);

%calculate SD and var
A=bfg(:,2:end);
sd=nanstd(A');
var=sqrt(sd); 
 

%{
Writeup:
B) Parameters are in the 'coeffs' variable.  47.6988 for a y-intercept, and
0.9264 for the slope.  Y-intercept corresponds to K value, whereas slope corresponds to Eta N.

Keep in mind all experimentla values were negative, and so these
are similarly negative in real life, in line with a decreasing Received
Power with increasing distance.

C) There are 96 values for standard deviation, in line with the 96
different 12 experiments * 8 receivers.  Values can be found in the 'sd'
variable.
First few terms pulled with [bfg(:,1) sd']:
    8.9200    4.5238
    9.0504   10.6344
   23.6733    4.4869
   36.4862    9.8520
   17.8566    3.0887
   30.5840       NaN
   41.7016       NaN
   12.3894    2.9205
   15.3300    3.7573
    2.7483   18.6356
   17.2697    8.4716

.
.
.


D) By leaving out samples corresponding to lost packets (-500 dBm in data),
we are biasing out results.  Because packets received below a power
threshold are a valid occurrence in the real world, yet we are tossing
these as outliers in our experimental analysis, we are actually tightening
the standard deviation and analyzing only the successful
packets.  With as many outliers as we saw in the experimental data, our
standard deviation would be much larger.  


%}


 
 