ЧЫ
ЇЭ
9
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
Ш
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
°
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
TvaltypeИ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
п
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
8
Softmax
logits"T
softmax"T"
Ttype:
2
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.4.02
b'unknown'—÷

global_step/Initializer/zerosConst*
value	B	 R *
dtype0	*
_class
loc:@global_step*
_output_shapes
: 
П
global_step
VariableV2*
shape: *
dtype0	*
	container *
shared_name *
_class
loc:@global_step*
_output_shapes
: 
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
U
ParseExample/ConstConst*
valueB	 *
dtype0	*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_6Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_7Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_8Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_9Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_10Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_11Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_12Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_13Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_14Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_15Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_16Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_17Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_18Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_19Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_20Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_21Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_22Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_23Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_24Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_25Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_26Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_27Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_28Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_29Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_30Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_31Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_32Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_33Const*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
o
&ParseExample/ParseExample/dense_keys_0Const*
valueB Bactivity*
dtype0*
_output_shapes
: 
h
&ParseExample/ParseExample/dense_keys_1Const*
value	B Bx*
dtype0*
_output_shapes
: 
i
&ParseExample/ParseExample/dense_keys_2Const*
value
B Bx1*
dtype0*
_output_shapes
: 
j
&ParseExample/ParseExample/dense_keys_3Const*
valueB	 Bx10*
dtype0*
_output_shapes
: 
i
&ParseExample/ParseExample/dense_keys_4Const*
value
B Bx2*
dtype0*
_output_shapes
: 
i
&ParseExample/ParseExample/dense_keys_5Const*
value
B Bx3*
dtype0*
_output_shapes
: 
i
&ParseExample/ParseExample/dense_keys_6Const*
value
B Bx4*
dtype0*
_output_shapes
: 
i
&ParseExample/ParseExample/dense_keys_7Const*
value
B Bx5*
dtype0*
_output_shapes
: 
i
&ParseExample/ParseExample/dense_keys_8Const*
value
B Bx6*
dtype0*
_output_shapes
: 
i
&ParseExample/ParseExample/dense_keys_9Const*
value
B Bx7*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_10Const*
value
B Bx8*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_11Const*
value
B Bx9*
dtype0*
_output_shapes
: 
i
'ParseExample/ParseExample/dense_keys_12Const*
value	B By*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_13Const*
value
B By1*
dtype0*
_output_shapes
: 
k
'ParseExample/ParseExample/dense_keys_14Const*
valueB	 By10*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_15Const*
value
B By2*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_16Const*
value
B By3*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_17Const*
value
B By4*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_18Const*
value
B By5*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_19Const*
value
B By6*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_20Const*
value
B By7*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_21Const*
value
B By8*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_22Const*
value
B By9*
dtype0*
_output_shapes
: 
i
'ParseExample/ParseExample/dense_keys_23Const*
value	B Bz*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_24Const*
value
B Bz1*
dtype0*
_output_shapes
: 
k
'ParseExample/ParseExample/dense_keys_25Const*
valueB	 Bz10*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_26Const*
value
B Bz2*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_27Const*
value
B Bz3*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_28Const*
value
B Bz4*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_29Const*
value
B Bz5*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_30Const*
value
B Bz6*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_31Const*
value
B Bz7*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_32Const*
value
B Bz8*
dtype0*
_output_shapes
: 
j
'ParseExample/ParseExample/dense_keys_33Const*
value
B Bz9*
dtype0*
_output_shapes
: 
ѓ
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6&ParseExample/ParseExample/dense_keys_7&ParseExample/ParseExample/dense_keys_8&ParseExample/ParseExample/dense_keys_9'ParseExample/ParseExample/dense_keys_10'ParseExample/ParseExample/dense_keys_11'ParseExample/ParseExample/dense_keys_12'ParseExample/ParseExample/dense_keys_13'ParseExample/ParseExample/dense_keys_14'ParseExample/ParseExample/dense_keys_15'ParseExample/ParseExample/dense_keys_16'ParseExample/ParseExample/dense_keys_17'ParseExample/ParseExample/dense_keys_18'ParseExample/ParseExample/dense_keys_19'ParseExample/ParseExample/dense_keys_20'ParseExample/ParseExample/dense_keys_21'ParseExample/ParseExample/dense_keys_22'ParseExample/ParseExample/dense_keys_23'ParseExample/ParseExample/dense_keys_24'ParseExample/ParseExample/dense_keys_25'ParseExample/ParseExample/dense_keys_26'ParseExample/ParseExample/dense_keys_27'ParseExample/ParseExample/dense_keys_28'ParseExample/ParseExample/dense_keys_29'ParseExample/ParseExample/dense_keys_30'ParseExample/ParseExample/dense_keys_31'ParseExample/ParseExample/dense_keys_32'ParseExample/ParseExample/dense_keys_33ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9ParseExample/Const_10ParseExample/Const_11ParseExample/Const_12ParseExample/Const_13ParseExample/Const_14ParseExample/Const_15ParseExample/Const_16ParseExample/Const_17ParseExample/Const_18ParseExample/Const_19ParseExample/Const_20ParseExample/Const_21ParseExample/Const_22ParseExample/Const_23ParseExample/Const_24ParseExample/Const_25ParseExample/Const_26ParseExample/Const_27ParseExample/Const_28ParseExample/Const_29ParseExample/Const_30ParseExample/Const_31ParseExample/Const_32ParseExample/Const_33*
Nsparse *
Ndense"*
sparse_types
 *0
Tdense&
$2"	*а
dense_shapesѕ
ћ::::::::::::::::::::::::::::::::::*Ь
_output_shapesЙ
Ж:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
Н
2dnn/input_from_feature_columns/input_layer/x/ShapeShapeParseExample/ParseExample:1*
T0*
out_type0*
_output_shapes
:
К
@dnn/input_from_feature_columns/input_layer/x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
:dnn/input_from_feature_columns/input_layer/x/strided_sliceStridedSlice2dnn/input_from_feature_columns/input_layer/x/Shape@dnn/input_from_feature_columns/input_layer/x/strided_slice/stackBdnn/input_from_feature_columns/input_layer/x/strided_slice/stack_1Bdnn/input_from_feature_columns/input_layer/x/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
~
<dnn/input_from_feature_columns/input_layer/x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ц
:dnn/input_from_feature_columns/input_layer/x/Reshape/shapePack:dnn/input_from_feature_columns/input_layer/x/strided_slice<dnn/input_from_feature_columns/input_layer/x/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Ў
4dnn/input_from_feature_columns/input_layer/x/ReshapeReshapeParseExample/ParseExample:1:dnn/input_from_feature_columns/input_layer/x/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
3dnn/input_from_feature_columns/input_layer/x1/ShapeShapeParseExample/ParseExample:2*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x1/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x1/ShapeAdnn/input_from_feature_columns/input_layer/x1/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x1/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x1/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x1/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x1/strided_slice=dnn/input_from_feature_columns/input_layer/x1/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Џ
5dnn/input_from_feature_columns/input_layer/x1/ReshapeReshapeParseExample/ParseExample:2;dnn/input_from_feature_columns/input_layer/x1/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
4dnn/input_from_feature_columns/input_layer/x10/ShapeShapeParseExample/ParseExample:3*
T0*
out_type0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/x10/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
О
Ddnn/input_from_feature_columns/input_layer/x10/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
О
Ddnn/input_from_feature_columns/input_layer/x10/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
<dnn/input_from_feature_columns/input_layer/x10/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/x10/ShapeBdnn/input_from_feature_columns/input_layer/x10/strided_slice/stackDdnn/input_from_feature_columns/input_layer/x10/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/x10/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
А
>dnn/input_from_feature_columns/input_layer/x10/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ь
<dnn/input_from_feature_columns/input_layer/x10/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/x10/strided_slice>dnn/input_from_feature_columns/input_layer/x10/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
№
6dnn/input_from_feature_columns/input_layer/x10/ReshapeReshapeParseExample/ParseExample:3<dnn/input_from_feature_columns/input_layer/x10/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
3dnn/input_from_feature_columns/input_layer/x2/ShapeShapeParseExample/ParseExample:4*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x2/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x2/ShapeAdnn/input_from_feature_columns/input_layer/x2/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x2/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x2/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x2/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x2/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x2/strided_slice=dnn/input_from_feature_columns/input_layer/x2/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Џ
5dnn/input_from_feature_columns/input_layer/x2/ReshapeReshapeParseExample/ParseExample:4;dnn/input_from_feature_columns/input_layer/x2/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
3dnn/input_from_feature_columns/input_layer/x3/ShapeShapeParseExample/ParseExample:5*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x3/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x3/ShapeAdnn/input_from_feature_columns/input_layer/x3/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x3/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x3/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x3/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x3/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x3/strided_slice=dnn/input_from_feature_columns/input_layer/x3/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Џ
5dnn/input_from_feature_columns/input_layer/x3/ReshapeReshapeParseExample/ParseExample:5;dnn/input_from_feature_columns/input_layer/x3/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
3dnn/input_from_feature_columns/input_layer/x4/ShapeShapeParseExample/ParseExample:6*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x4/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x4/ShapeAdnn/input_from_feature_columns/input_layer/x4/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x4/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x4/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x4/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x4/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x4/strided_slice=dnn/input_from_feature_columns/input_layer/x4/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Џ
5dnn/input_from_feature_columns/input_layer/x4/ReshapeReshapeParseExample/ParseExample:6;dnn/input_from_feature_columns/input_layer/x4/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
3dnn/input_from_feature_columns/input_layer/x5/ShapeShapeParseExample/ParseExample:7*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x5/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x5/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x5/ShapeAdnn/input_from_feature_columns/input_layer/x5/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x5/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x5/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x5/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x5/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x5/strided_slice=dnn/input_from_feature_columns/input_layer/x5/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Џ
5dnn/input_from_feature_columns/input_layer/x5/ReshapeReshapeParseExample/ParseExample:7;dnn/input_from_feature_columns/input_layer/x5/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
3dnn/input_from_feature_columns/input_layer/x6/ShapeShapeParseExample/ParseExample:8*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x6/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x6/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x6/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x6/ShapeAdnn/input_from_feature_columns/input_layer/x6/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x6/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x6/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x6/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x6/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x6/strided_slice=dnn/input_from_feature_columns/input_layer/x6/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Џ
5dnn/input_from_feature_columns/input_layer/x6/ReshapeReshapeParseExample/ParseExample:8;dnn/input_from_feature_columns/input_layer/x6/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
3dnn/input_from_feature_columns/input_layer/x7/ShapeShapeParseExample/ParseExample:9*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x7/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x7/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x7/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x7/ShapeAdnn/input_from_feature_columns/input_layer/x7/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x7/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x7/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x7/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x7/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x7/strided_slice=dnn/input_from_feature_columns/input_layer/x7/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Џ
5dnn/input_from_feature_columns/input_layer/x7/ReshapeReshapeParseExample/ParseExample:9;dnn/input_from_feature_columns/input_layer/x7/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/x8/ShapeShapeParseExample/ParseExample:10*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x8/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x8/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x8/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x8/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x8/ShapeAdnn/input_from_feature_columns/input_layer/x8/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x8/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x8/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x8/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x8/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x8/strided_slice=dnn/input_from_feature_columns/input_layer/x8/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/x8/ReshapeReshapeParseExample/ParseExample:10;dnn/input_from_feature_columns/input_layer/x8/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/x9/ShapeShapeParseExample/ParseExample:11*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/x9/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x9/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/x9/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/x9/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/x9/ShapeAdnn/input_from_feature_columns/input_layer/x9/strided_slice/stackCdnn/input_from_feature_columns/input_layer/x9/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/x9/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/x9/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/x9/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/x9/strided_slice=dnn/input_from_feature_columns/input_layer/x9/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/x9/ReshapeReshapeParseExample/ParseExample:11;dnn/input_from_feature_columns/input_layer/x9/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
2dnn/input_from_feature_columns/input_layer/y/ShapeShapeParseExample/ParseExample:12*
T0*
out_type0*
_output_shapes
:
К
@dnn/input_from_feature_columns/input_layer/y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
:dnn/input_from_feature_columns/input_layer/y/strided_sliceStridedSlice2dnn/input_from_feature_columns/input_layer/y/Shape@dnn/input_from_feature_columns/input_layer/y/strided_slice/stackBdnn/input_from_feature_columns/input_layer/y/strided_slice/stack_1Bdnn/input_from_feature_columns/input_layer/y/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
~
<dnn/input_from_feature_columns/input_layer/y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ц
:dnn/input_from_feature_columns/input_layer/y/Reshape/shapePack:dnn/input_from_feature_columns/input_layer/y/strided_slice<dnn/input_from_feature_columns/input_layer/y/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
ў
4dnn/input_from_feature_columns/input_layer/y/ReshapeReshapeParseExample/ParseExample:12:dnn/input_from_feature_columns/input_layer/y/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y1/ShapeShapeParseExample/ParseExample:13*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y1/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y1/ShapeAdnn/input_from_feature_columns/input_layer/y1/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y1/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y1/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y1/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y1/strided_slice=dnn/input_from_feature_columns/input_layer/y1/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y1/ReshapeReshapeParseExample/ParseExample:13;dnn/input_from_feature_columns/input_layer/y1/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Р
4dnn/input_from_feature_columns/input_layer/y10/ShapeShapeParseExample/ParseExample:14*
T0*
out_type0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/y10/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
О
Ddnn/input_from_feature_columns/input_layer/y10/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
О
Ddnn/input_from_feature_columns/input_layer/y10/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
<dnn/input_from_feature_columns/input_layer/y10/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/y10/ShapeBdnn/input_from_feature_columns/input_layer/y10/strided_slice/stackDdnn/input_from_feature_columns/input_layer/y10/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/y10/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
А
>dnn/input_from_feature_columns/input_layer/y10/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ь
<dnn/input_from_feature_columns/input_layer/y10/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/y10/strided_slice>dnn/input_from_feature_columns/input_layer/y10/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Ё
6dnn/input_from_feature_columns/input_layer/y10/ReshapeReshapeParseExample/ParseExample:14<dnn/input_from_feature_columns/input_layer/y10/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y2/ShapeShapeParseExample/ParseExample:15*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y2/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y2/ShapeAdnn/input_from_feature_columns/input_layer/y2/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y2/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y2/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y2/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y2/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y2/strided_slice=dnn/input_from_feature_columns/input_layer/y2/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y2/ReshapeReshapeParseExample/ParseExample:15;dnn/input_from_feature_columns/input_layer/y2/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y3/ShapeShapeParseExample/ParseExample:16*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y3/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y3/ShapeAdnn/input_from_feature_columns/input_layer/y3/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y3/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y3/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y3/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y3/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y3/strided_slice=dnn/input_from_feature_columns/input_layer/y3/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y3/ReshapeReshapeParseExample/ParseExample:16;dnn/input_from_feature_columns/input_layer/y3/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y4/ShapeShapeParseExample/ParseExample:17*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y4/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y4/ShapeAdnn/input_from_feature_columns/input_layer/y4/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y4/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y4/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y4/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y4/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y4/strided_slice=dnn/input_from_feature_columns/input_layer/y4/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y4/ReshapeReshapeParseExample/ParseExample:17;dnn/input_from_feature_columns/input_layer/y4/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y5/ShapeShapeParseExample/ParseExample:18*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y5/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y5/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y5/ShapeAdnn/input_from_feature_columns/input_layer/y5/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y5/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y5/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y5/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y5/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y5/strided_slice=dnn/input_from_feature_columns/input_layer/y5/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y5/ReshapeReshapeParseExample/ParseExample:18;dnn/input_from_feature_columns/input_layer/y5/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y6/ShapeShapeParseExample/ParseExample:19*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y6/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y6/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y6/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y6/ShapeAdnn/input_from_feature_columns/input_layer/y6/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y6/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y6/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y6/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y6/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y6/strided_slice=dnn/input_from_feature_columns/input_layer/y6/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y6/ReshapeReshapeParseExample/ParseExample:19;dnn/input_from_feature_columns/input_layer/y6/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y7/ShapeShapeParseExample/ParseExample:20*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y7/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y7/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y7/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y7/ShapeAdnn/input_from_feature_columns/input_layer/y7/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y7/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y7/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y7/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y7/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y7/strided_slice=dnn/input_from_feature_columns/input_layer/y7/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y7/ReshapeReshapeParseExample/ParseExample:20;dnn/input_from_feature_columns/input_layer/y7/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y8/ShapeShapeParseExample/ParseExample:21*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y8/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y8/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y8/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y8/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y8/ShapeAdnn/input_from_feature_columns/input_layer/y8/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y8/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y8/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y8/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y8/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y8/strided_slice=dnn/input_from_feature_columns/input_layer/y8/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y8/ReshapeReshapeParseExample/ParseExample:21;dnn/input_from_feature_columns/input_layer/y8/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/y9/ShapeShapeParseExample/ParseExample:22*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/y9/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y9/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/y9/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/y9/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/y9/ShapeAdnn/input_from_feature_columns/input_layer/y9/strided_slice/stackCdnn/input_from_feature_columns/input_layer/y9/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/y9/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/y9/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/y9/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/y9/strided_slice=dnn/input_from_feature_columns/input_layer/y9/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/y9/ReshapeReshapeParseExample/ParseExample:22;dnn/input_from_feature_columns/input_layer/y9/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
О
2dnn/input_from_feature_columns/input_layer/z/ShapeShapeParseExample/ParseExample:23*
T0*
out_type0*
_output_shapes
:
К
@dnn/input_from_feature_columns/input_layer/z/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/z/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/z/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
:dnn/input_from_feature_columns/input_layer/z/strided_sliceStridedSlice2dnn/input_from_feature_columns/input_layer/z/Shape@dnn/input_from_feature_columns/input_layer/z/strided_slice/stackBdnn/input_from_feature_columns/input_layer/z/strided_slice/stack_1Bdnn/input_from_feature_columns/input_layer/z/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
~
<dnn/input_from_feature_columns/input_layer/z/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ц
:dnn/input_from_feature_columns/input_layer/z/Reshape/shapePack:dnn/input_from_feature_columns/input_layer/z/strided_slice<dnn/input_from_feature_columns/input_layer/z/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
ў
4dnn/input_from_feature_columns/input_layer/z/ReshapeReshapeParseExample/ParseExample:23:dnn/input_from_feature_columns/input_layer/z/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z1/ShapeShapeParseExample/ParseExample:24*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z1/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z1/ShapeAdnn/input_from_feature_columns/input_layer/z1/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z1/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z1/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z1/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z1/strided_slice=dnn/input_from_feature_columns/input_layer/z1/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z1/ReshapeReshapeParseExample/ParseExample:24;dnn/input_from_feature_columns/input_layer/z1/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Р
4dnn/input_from_feature_columns/input_layer/z10/ShapeShapeParseExample/ParseExample:25*
T0*
out_type0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/z10/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
О
Ddnn/input_from_feature_columns/input_layer/z10/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
О
Ddnn/input_from_feature_columns/input_layer/z10/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
<dnn/input_from_feature_columns/input_layer/z10/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/z10/ShapeBdnn/input_from_feature_columns/input_layer/z10/strided_slice/stackDdnn/input_from_feature_columns/input_layer/z10/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/z10/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
А
>dnn/input_from_feature_columns/input_layer/z10/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ь
<dnn/input_from_feature_columns/input_layer/z10/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/z10/strided_slice>dnn/input_from_feature_columns/input_layer/z10/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
Ё
6dnn/input_from_feature_columns/input_layer/z10/ReshapeReshapeParseExample/ParseExample:25<dnn/input_from_feature_columns/input_layer/z10/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z2/ShapeShapeParseExample/ParseExample:26*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z2/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z2/ShapeAdnn/input_from_feature_columns/input_layer/z2/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z2/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z2/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z2/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z2/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z2/strided_slice=dnn/input_from_feature_columns/input_layer/z2/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z2/ReshapeReshapeParseExample/ParseExample:26;dnn/input_from_feature_columns/input_layer/z2/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z3/ShapeShapeParseExample/ParseExample:27*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z3/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z3/ShapeAdnn/input_from_feature_columns/input_layer/z3/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z3/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z3/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z3/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z3/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z3/strided_slice=dnn/input_from_feature_columns/input_layer/z3/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z3/ReshapeReshapeParseExample/ParseExample:27;dnn/input_from_feature_columns/input_layer/z3/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z4/ShapeShapeParseExample/ParseExample:28*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z4/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z4/ShapeAdnn/input_from_feature_columns/input_layer/z4/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z4/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z4/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z4/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z4/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z4/strided_slice=dnn/input_from_feature_columns/input_layer/z4/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z4/ReshapeReshapeParseExample/ParseExample:28;dnn/input_from_feature_columns/input_layer/z4/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z5/ShapeShapeParseExample/ParseExample:29*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z5/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z5/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z5/ShapeAdnn/input_from_feature_columns/input_layer/z5/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z5/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z5/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z5/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z5/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z5/strided_slice=dnn/input_from_feature_columns/input_layer/z5/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z5/ReshapeReshapeParseExample/ParseExample:29;dnn/input_from_feature_columns/input_layer/z5/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z6/ShapeShapeParseExample/ParseExample:30*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z6/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z6/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z6/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z6/ShapeAdnn/input_from_feature_columns/input_layer/z6/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z6/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z6/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z6/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z6/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z6/strided_slice=dnn/input_from_feature_columns/input_layer/z6/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z6/ReshapeReshapeParseExample/ParseExample:30;dnn/input_from_feature_columns/input_layer/z6/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z7/ShapeShapeParseExample/ParseExample:31*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z7/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z7/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z7/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z7/ShapeAdnn/input_from_feature_columns/input_layer/z7/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z7/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z7/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z7/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z7/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z7/strided_slice=dnn/input_from_feature_columns/input_layer/z7/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z7/ReshapeReshapeParseExample/ParseExample:31;dnn/input_from_feature_columns/input_layer/z7/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z8/ShapeShapeParseExample/ParseExample:32*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z8/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z8/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z8/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z8/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z8/ShapeAdnn/input_from_feature_columns/input_layer/z8/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z8/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z8/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z8/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z8/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z8/strided_slice=dnn/input_from_feature_columns/input_layer/z8/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z8/ReshapeReshapeParseExample/ParseExample:32;dnn/input_from_feature_columns/input_layer/z8/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
П
3dnn/input_from_feature_columns/input_layer/z9/ShapeShapeParseExample/ParseExample:33*
T0*
out_type0*
_output_shapes
:
Л
Adnn/input_from_feature_columns/input_layer/z9/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z9/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cdnn/input_from_feature_columns/input_layer/z9/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
я
;dnn/input_from_feature_columns/input_layer/z9/strided_sliceStridedSlice3dnn/input_from_feature_columns/input_layer/z9/ShapeAdnn/input_from_feature_columns/input_layer/z9/strided_slice/stackCdnn/input_from_feature_columns/input_layer/z9/strided_slice/stack_1Cdnn/input_from_feature_columns/input_layer/z9/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

=dnn/input_from_feature_columns/input_layer/z9/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
щ
;dnn/input_from_feature_columns/input_layer/z9/Reshape/shapePack;dnn/input_from_feature_columns/input_layer/z9/strided_slice=dnn/input_from_feature_columns/input_layer/z9/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:
џ
5dnn/input_from_feature_columns/input_layer/z9/ReshapeReshapeParseExample/ParseExample:33;dnn/input_from_feature_columns/input_layer/z9/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
”
1dnn/input_from_feature_columns/input_layer/concatConcatV24dnn/input_from_feature_columns/input_layer/x/Reshape5dnn/input_from_feature_columns/input_layer/x1/Reshape6dnn/input_from_feature_columns/input_layer/x10/Reshape5dnn/input_from_feature_columns/input_layer/x2/Reshape5dnn/input_from_feature_columns/input_layer/x3/Reshape5dnn/input_from_feature_columns/input_layer/x4/Reshape5dnn/input_from_feature_columns/input_layer/x5/Reshape5dnn/input_from_feature_columns/input_layer/x6/Reshape5dnn/input_from_feature_columns/input_layer/x7/Reshape5dnn/input_from_feature_columns/input_layer/x8/Reshape5dnn/input_from_feature_columns/input_layer/x9/Reshape4dnn/input_from_feature_columns/input_layer/y/Reshape5dnn/input_from_feature_columns/input_layer/y1/Reshape6dnn/input_from_feature_columns/input_layer/y10/Reshape5dnn/input_from_feature_columns/input_layer/y2/Reshape5dnn/input_from_feature_columns/input_layer/y3/Reshape5dnn/input_from_feature_columns/input_layer/y4/Reshape5dnn/input_from_feature_columns/input_layer/y5/Reshape5dnn/input_from_feature_columns/input_layer/y6/Reshape5dnn/input_from_feature_columns/input_layer/y7/Reshape5dnn/input_from_feature_columns/input_layer/y8/Reshape5dnn/input_from_feature_columns/input_layer/y9/Reshape4dnn/input_from_feature_columns/input_layer/z/Reshape5dnn/input_from_feature_columns/input_layer/z1/Reshape6dnn/input_from_feature_columns/input_layer/z10/Reshape5dnn/input_from_feature_columns/input_layer/z2/Reshape5dnn/input_from_feature_columns/input_layer/z3/Reshape5dnn/input_from_feature_columns/input_layer/z4/Reshape5dnn/input_from_feature_columns/input_layer/z5/Reshape5dnn/input_from_feature_columns/input_layer/z6/Reshape5dnn/input_from_feature_columns/input_layer/z7/Reshape5dnn/input_from_feature_columns/input_layer/z8/Reshape5dnn/input_from_feature_columns/input_layer/z9/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N!*
T0*

Tidx0*'
_output_shapes
:€€€€€€€€€!
≈
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"!   d   *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
:
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *»~YЊ*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *»~Y>*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
Ъ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
ђ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
Ю
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
«
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
shape
:!d*
dtype0*
	container *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
У
&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
Ѓ
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
Ѓ
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
valueBd*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
ї
dnn/hiddenlayer_0/bias/part_0
VariableV2*
shape:d*
dtype0*
	container *
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
ю
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
§
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
s
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes

:!d
«
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€d
k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
T0*
_output_shapes
:d
Я
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€d
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€d
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:€€€€€€€€€d
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€d
h
dnn/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Н
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
†
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Ђ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"d   (   *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
:
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *чьSЊ*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *чьS>*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
Ъ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
ђ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
Ю
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
«
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
shape
:d(*
dtype0*
	container *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
У
&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
Ѓ
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
Ѓ
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueB(*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:(
ї
dnn/hiddenlayer_1/bias/part_0
VariableV2*
shape:(*
dtype0*
	container *
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:(
ю
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:(
§
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:(
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
T0*
_output_shapes

:d(
ђ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€(
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
T0*
_output_shapes
:(
Я
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€(
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€(
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:€€€€€€€€€(
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€(
j
dnn/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
†
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0*
_output_shapes
: 
≠
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"(      *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
:
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *AњЊ*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *Aњ>*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
Ъ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
ђ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
Ю
:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
«
dnn/hiddenlayer_2/kernel/part_0
VariableV2*
shape
:(*
dtype0*
	container *
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
У
&dnn/hiddenlayer_2/kernel/part_0/AssignAssigndnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
Ѓ
$dnn/hiddenlayer_2/kernel/part_0/readIdentitydnn/hiddenlayer_2/kernel/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
Ѓ
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
valueB*    *
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
ї
dnn/hiddenlayer_2/bias/part_0
VariableV2*
shape:*
dtype0*
	container *
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
ю
$dnn/hiddenlayer_2/bias/part_0/AssignAssigndnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
§
"dnn/hiddenlayer_2/bias/part_0/readIdentitydnn/hiddenlayer_2/bias/part_0*
T0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
s
dnn/hiddenlayer_2/kernelIdentity$dnn/hiddenlayer_2/kernel/part_0/read*
T0*
_output_shapes

:(
ђ
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€
k
dnn/hiddenlayer_2/biasIdentity"dnn/hiddenlayer_2/bias/part_0/read*
T0*
_output_shapes
:
Я
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:€€€€€€€€€
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€
j
dnn/zero_fraction_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
†
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
≠
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
Ј
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
:
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *  Ањ*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *  А?*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
Й
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
ю
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
Р
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
В
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
є
dnn/logits/kernel/part_0
VariableV2*
shape
:*
dtype0*
	container *
shared_name *+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
ч
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
Щ
dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
†
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB*    *
dtype0*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
≠
dnn/logits/bias/part_0
VariableV2*
shape:*
dtype0*
	container *
shared_name *)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
в
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
T0*
validate_shape(*
use_locking(*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
П
dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*
T0*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
e
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
T0*
_output_shapes

:
Ю
dnn/logits/MatMulMatMuldnn/hiddenlayer_2/Reludnn/logits/kernel*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€
]
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes
:
К
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
dnn/zero_fraction_3/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_3/zero*
T0*'
_output_shapes
:€€€€€€€€€
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*

DstT0*'
_output_shapes
:€€€€€€€€€
j
dnn/zero_fraction_3/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Я
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
g
dnn/head/logits/ShapeShapednn/logits/BiasAdd*
T0*
out_type0*
_output_shapes
:
b
 dnn/head/logits/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 
R
Jdnn/head/logits/assert_rank/assert_type/statically_determined_correct_typeNoOp
C
;dnn/head/logits/assert_rank/static_checks_determined_all_okNoOp
Ђ
#dnn/head/logits/strided_slice/stackConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
≠
%dnn/head/logits/strided_slice/stack_1Const<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
≠
%dnn/head/logits/strided_slice/stack_2Const<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
…
dnn/head/logits/strided_sliceStridedSlicednn/head/logits/Shape#dnn/head/logits/strided_slice/stack%dnn/head/logits/strided_slice/stack_1%dnn/head/logits/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
Ю
dnn/head/logits/assert_equal/xConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
value	B :*
dtype0*
_output_shapes
: 
Л
"dnn/head/logits/assert_equal/EqualEqualdnn/head/logits/assert_equal/xdnn/head/logits/strided_slice*
T0*
_output_shapes
: 
£
"dnn/head/logits/assert_equal/ConstConst<^dnn/head/logits/assert_rank/static_checks_determined_all_ok*
valueB *
dtype0*
_output_shapes
: 
§
 dnn/head/logits/assert_equal/AllAll"dnn/head/logits/assert_equal/Equal"dnn/head/logits/assert_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
К
*dnn/head/logits/assert_equal/Assert/AssertAssert dnn/head/logits/assert_equal/Alldnn/head/logits/Shape*

T
2*
	summarize
ћ
dnn/head/logitsIdentitydnn/logits/BiasAdd<^dnn/head/logits/assert_rank/static_checks_determined_all_ok+^dnn/head/logits/assert_equal/Assert/Assert*
T0*'
_output_shapes
:€€€€€€€€€
j
(dnn/head/predictions/class_ids/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
∞
dnn/head/predictions/class_idsArgMaxdnn/head/logits(dnn/head/predictions/class_ids/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:€€€€€€€€€
m
#dnn/head/predictions/ExpandDims/dimConst*
valueB:*
dtype0*
_output_shapes
:
∞
dnn/head/predictions/ExpandDims
ExpandDimsdnn/head/predictions/class_ids#dnn/head/predictions/ExpandDims/dim*
T0	*

Tdim0*'
_output_shapes
:€€€€€€€€€
С
.dnn/head/predictions/class_string_lookup/ConstConst*/
value&B$BjoggingBWalkingBStanding*
dtype0*
_output_shapes
:
o
-dnn/head/predictions/class_string_lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
v
4dnn/head/predictions/class_string_lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
v
4dnn/head/predictions/class_string_lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
.dnn/head/predictions/class_string_lookup/rangeRange4dnn/head/predictions/class_string_lookup/range/start-dnn/head/predictions/class_string_lookup/Size4dnn/head/predictions/class_string_lookup/range/delta*

Tidx0*
_output_shapes
:
Ь
0dnn/head/predictions/class_string_lookup/ToInt64Cast.dnn/head/predictions/class_string_lookup/range*

SrcT0*

DstT0	*
_output_shapes
:
і
(dnn/head/predictions/class_string_lookupHashTableV2*
	container *
shared_name *
use_node_name_sharing( *
	key_dtype0	*
value_dtype0*
_output_shapes
: 
t
0dnn/head/predictions/class_string_lookup/Const_1Const*
valueB	 BUNK*
dtype0*
_output_shapes
: 
м
3dnn/head/predictions/class_string_lookup/table_initInitializeTableV2(dnn/head/predictions/class_string_lookup0dnn/head/predictions/class_string_lookup/ToInt64.dnn/head/predictions/class_string_lookup/Const*

Tkey0	*

Tval0
Б
/dnn/head/predictions/class_string_lookup_LookupLookupTableFindV2(dnn/head/predictions/class_string_lookupdnn/head/predictions/ExpandDims0dnn/head/predictions/class_string_lookup/Const_1*	
Tin0	*

Tout0*'
_output_shapes
:€€€€€€€€€
p
"dnn/head/predictions/probabilitiesSoftmaxdnn/head/logits*
T0*'
_output_shapes
:€€€€€€€€€
p
dnn/head/ShapeShape"dnn/head/predictions/probabilities*
T0*
out_type0*
_output_shapes
:
f
dnn/head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
h
dnn/head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
h
dnn/head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¶
dnn/head/strided_sliceStridedSlicednn/head/Shapednn/head/strided_slice/stackdnn/head/strided_slice/stack_1dnn/head/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
|
dnn/head/ExpandDims/inputConst*/
value&B$BjoggingBWalkingBStanding*
dtype0*
_output_shapes
:
Y
dnn/head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
К
dnn/head/ExpandDims
ExpandDimsdnn/head/ExpandDims/inputdnn/head/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
[
dnn/head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
М
dnn/head/Tile/multiplesPackdnn/head/strided_slicednn/head/Tile/multiples/1*
N*
T0*

axis *
_output_shapes
:
З
dnn/head/TileTilednn/head/ExpandDimsdnn/head/Tile/multiples*
T0*

Tmultiples0*'
_output_shapes
:€€€€€€€€€
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_7114a7a990d0425583081c6647e85490/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
©
save/SaveV2/tensor_namesConst*№
value“Bѕ	Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
dtype0*
_output_shapes
:	
…
save/SaveV2/shape_and_slicesConst*y
valuepBn	B	100 0,100B33 100 0,33:0,100B40 0,40B100 40 0,100:0,40B3 0,3B40 3 0,40:0,3B3 0,3B3 3 0,3:0,3B *
dtype0*
_output_shapes
:	
£
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step*
dtypes
2		
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
T0*

axis *
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
z
save/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:
q
save/RestoreV2/shape_and_slicesConst*
valueBB	100 0,100*
dtype0*
_output_shapes
:
Т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:d
ƒ
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
~
save/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
:
{
!save/RestoreV2_1/shape_and_slicesConst*&
valueBB33 100 0,33:0,100*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:!d
–
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2_1*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
|
save/RestoreV2_2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:
q
!save/RestoreV2_2/shape_and_slicesConst*
valueBB40 0,40*
dtype0*
_output_shapes
:
Ш
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:(
»
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2_2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:(
~
save/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
{
!save/RestoreV2_3/shape_and_slicesConst*&
valueBB100 40 0,100:0,40*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:d(
–
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2_3*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
|
save/RestoreV2_4/tensor_namesConst*+
value"B Bdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:
o
!save/RestoreV2_4/shape_and_slicesConst*
valueBB3 0,3*
dtype0*
_output_shapes
:
Ш
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save/RestoreV2_4*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
~
save/RestoreV2_5/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
w
!save/RestoreV2_5/shape_and_slicesConst*"
valueBB40 3 0,40:0,3*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:(
–
save/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save/RestoreV2_5*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
u
save/RestoreV2_6/tensor_namesConst*$
valueBBdnn/logits/bias*
dtype0*
_output_shapes
:
o
!save/RestoreV2_6/shape_and_slicesConst*
valueBB3 0,3*
dtype0*
_output_shapes
:
Ш
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ї
save/Assign_6Assigndnn/logits/bias/part_0save/RestoreV2_6*
T0*
validate_shape(*
use_locking(*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
w
save/RestoreV2_7/tensor_namesConst*&
valueBBdnn/logits/kernel*
dtype0*
_output_shapes
:
u
!save/RestoreV2_7/shape_and_slicesConst* 
valueBB3 3 0,3:0,3*
dtype0*
_output_shapes
:
Ь
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes

:
¬
save/Assign_7Assigndnn/logits/kernel/part_0save/RestoreV2_7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
q
save/RestoreV2_8/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2	*
_output_shapes
:
†
save/Assign_8Assignglobal_stepsave/RestoreV2_8*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
®
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard

initNoOp
M
init_all_tablesNoOp4^dnn/head/predictions/class_string_lookup/table_init
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_05a1e7d8cad14a6fb08ea4d11cf41a78/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ђ
save_1/SaveV2/tensor_namesConst*№
value“Bѕ	Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
dtype0*
_output_shapes
:	
Ћ
save_1/SaveV2/shape_and_slicesConst*y
valuepBn	B	100 0,100B33 100 0,33:0,100B40 0,40B100 40 0,100:0,40B3 0,3B40 3 0,40:0,3B3 0,3B3 3 0,3:0,3B *
dtype0*
_output_shapes
:	
Ђ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step*
dtypes
2		
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
T0*

axis *
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
|
save_1/RestoreV2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_0/bias*
dtype0*
_output_shapes
:
s
!save_1/RestoreV2/shape_and_slicesConst*
valueBB	100 0,100*
dtype0*
_output_shapes
:
Ъ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:d
»
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d
А
save_1/RestoreV2_1/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_0/kernel*
dtype0*
_output_shapes
:
}
#save_1/RestoreV2_1/shape_and_slicesConst*&
valueBB33 100 0,33:0,100*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:!d
‘
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2_1*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:!d
~
save_1/RestoreV2_2/tensor_namesConst*+
value"B Bdnn/hiddenlayer_1/bias*
dtype0*
_output_shapes
:
s
#save_1/RestoreV2_2/shape_and_slicesConst*
valueBB40 0,40*
dtype0*
_output_shapes
:
†
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:(
ћ
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2_2*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:(
А
save_1/RestoreV2_3/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_1/kernel*
dtype0*
_output_shapes
:
}
#save_1/RestoreV2_3/shape_and_slicesConst*&
valueBB100 40 0,100:0,40*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:d(
‘
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2_3*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:d(
~
save_1/RestoreV2_4/tensor_namesConst*+
value"B Bdnn/hiddenlayer_2/bias*
dtype0*
_output_shapes
:
q
#save_1/RestoreV2_4/shape_and_slicesConst*
valueBB3 0,3*
dtype0*
_output_shapes
:
†
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save_1/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save_1/RestoreV2_4*
T0*
validate_shape(*
use_locking(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:
А
save_1/RestoreV2_5/tensor_namesConst*-
value$B"Bdnn/hiddenlayer_2/kernel*
dtype0*
_output_shapes
:
y
#save_1/RestoreV2_5/shape_and_slicesConst*"
valueBB40 3 0,40:0,3*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:(
‘
save_1/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save_1/RestoreV2_5*
T0*
validate_shape(*
use_locking(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:(
w
save_1/RestoreV2_6/tensor_namesConst*$
valueBBdnn/logits/bias*
dtype0*
_output_shapes
:
q
#save_1/RestoreV2_6/shape_and_slicesConst*
valueBB3 0,3*
dtype0*
_output_shapes
:
†
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Њ
save_1/Assign_6Assigndnn/logits/bias/part_0save_1/RestoreV2_6*
T0*
validate_shape(*
use_locking(*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:
y
save_1/RestoreV2_7/tensor_namesConst*&
valueBBdnn/logits/kernel*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_7/shape_and_slicesConst* 
valueBB3 3 0,3:0,3*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes

:
∆
save_1/Assign_7Assigndnn/logits/kernel/part_0save_1/RestoreV2_7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
s
save_1/RestoreV2_8/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2	*
_output_shapes
:
§
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2_8*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
Љ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"≠
	variablesЯЬ
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel!d  "!d2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneld(  "d(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias( "(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernel(  "(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0" 
global_step

global_step:0"Ё
trainable_variables≈¬
ў
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel!d  "!d2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneld(  "d(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias( "(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
ў
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernel(  "(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
√
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias "21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
ґ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:0
†
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0"„
	summaries…
∆
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0"L
table_initializer7
5
3dnn/head/predictions/class_string_lookup/table_init" 
legacy_init_op


group_deps*а
serving_defaultћ
3
inputs)
input_example_tensor:0€€€€€€€€€1
classes&
dnn/head/Tile:0€€€€€€€€€E
scores;
$dnn/head/predictions/probabilities:0€€€€€€€€€tensorflow/serving/classify*я
classificationћ
3
inputs)
input_example_tensor:0€€€€€€€€€1
classes&
dnn/head/Tile:0€€€€€€€€€E
scores;
$dnn/head/predictions/probabilities:0€€€€€€€€€tensorflow/serving/classify*э
predictс
5
examples)
input_example_tensor:0€€€€€€€€€2
logits(
dnn/head/logits:0€€€€€€€€€L
probabilities;
$dnn/head/predictions/probabilities:0€€€€€€€€€E
	class_ids8
!dnn/head/predictions/ExpandDims:0	€€€€€€€€€S
classesH
1dnn/head/predictions/class_string_lookup_Lookup:0€€€€€€€€€tensorflow/serving/predict