       �K"	  @xZ�Abrain.Event:2i�Y�[�     ddF	�tGxZ�A"��

X
x_inputPlaceholder*
dtype0*
_output_shapes

:*
shape
:
X
y_inputPlaceholder*
dtype0*
_output_shapes

:*
shape
:
_
rnn_init_statePlaceholder*
dtype0*
_output_shapes

:*
shape
:
�
weight1/initial_valueConst*
dtype0*
_output_shapes

:*i
value`B^"P��?�	d>�k�;��T?��H?3A?hY0?1�?�/f?e��=�F?9�>�`�>JOe?�?U�>���>[�T?�`�=�
?
{
weight1
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
weight1/AssignAssignweight1weight1/initial_value*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@weight1*
use_locking(
f
weight1/readIdentityweight1*
T0*
_output_shapes

:*
_class
loc:@weight1
w
Variable/initial_valueConst*
dtype0*
_output_shapes

:*)
value B"                
|
Variable
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
Variable/AssignAssignVariableVariable/initial_value*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@Variable*
use_locking(
i
Variable/readIdentityVariable*
T0*
_output_shapes

:*
_class
loc:@Variable
�
weight2/initial_valueConst*
dtype0*
_output_shapes

:*9
value0B." ��V=���=m~�>[�W?h�p?�v�>8�b?)��=
{
weight2
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
weight2/AssignAssignweight2weight2/initial_value*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@weight2*
use_locking(
f
weight2/readIdentityweight2*
T0*
_output_shapes

:*
_class
loc:@weight2
q
Variable_1/initial_valueConst*
dtype0*
_output_shapes

:*!
valueB"        
~

Variable_1
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@Variable_1*
use_locking(
o
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes

:*
_class
loc:@Variable_1
S
weights/tagConst*
dtype0*
_output_shapes
: *
valueB Bweights
W
weightsHistogramSummaryweights/tagweight1/read*
T0*
_output_shapes
: 
�
input_seriesUnpackx_input*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis
�
labels_seriesUnpacky_input*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis
d
current_input/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
r
current_inputReshapeinput_seriescurrent_input/shape*
T0*
_output_shapes

:*
Tshape0
Y
input_state_concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concatConcatV2current_inputrnn_init_stateinput_state_concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMulMatMulinput_state_concatweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
J
addAddMatMulVariable/read*
T0*
_output_shapes

:
@

next_stateTanhadd*
T0*
_output_shapes

:
f
current_input_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_1Reshapeinput_series:1current_input_1/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_1ConcatV2current_input_1
next_stateinput_state_concat_1/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_1MatMulinput_state_concat_1weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_1AddMatMul_1Variable/read*
T0*
_output_shapes

:
D
next_state_1Tanhadd_1*
T0*
_output_shapes

:
f
current_input_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_2Reshapeinput_series:2current_input_2/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_2ConcatV2current_input_2next_state_1input_state_concat_2/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_2MatMulinput_state_concat_2weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_2AddMatMul_2Variable/read*
T0*
_output_shapes

:
D
next_state_2Tanhadd_2*
T0*
_output_shapes

:
f
current_input_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_3Reshapeinput_series:3current_input_3/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_3/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_3ConcatV2current_input_3next_state_2input_state_concat_3/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_3MatMulinput_state_concat_3weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_3AddMatMul_3Variable/read*
T0*
_output_shapes

:
D
next_state_3Tanhadd_3*
T0*
_output_shapes

:
f
current_input_4/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_4Reshapeinput_series:4current_input_4/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_4/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_4ConcatV2current_input_4next_state_3input_state_concat_4/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_4MatMulinput_state_concat_4weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_4AddMatMul_4Variable/read*
T0*
_output_shapes

:
D
next_state_4Tanhadd_4*
T0*
_output_shapes

:
f
current_input_5/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_5Reshapeinput_series:5current_input_5/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_5/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_5ConcatV2current_input_5next_state_4input_state_concat_5/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_5MatMulinput_state_concat_5weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_5AddMatMul_5Variable/read*
T0*
_output_shapes

:
D
next_state_5Tanhadd_5*
T0*
_output_shapes

:
f
current_input_6/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_6Reshapeinput_series:6current_input_6/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_6/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_6ConcatV2current_input_6next_state_5input_state_concat_6/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_6MatMulinput_state_concat_6weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_6AddMatMul_6Variable/read*
T0*
_output_shapes

:
D
next_state_6Tanhadd_6*
T0*
_output_shapes

:
f
current_input_7/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_7Reshapeinput_series:7current_input_7/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_7/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_7ConcatV2current_input_7next_state_6input_state_concat_7/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_7MatMulinput_state_concat_7weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_7AddMatMul_7Variable/read*
T0*
_output_shapes

:
D
next_state_7Tanhadd_7*
T0*
_output_shapes

:
f
current_input_8/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_8Reshapeinput_series:8current_input_8/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_8/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_8ConcatV2current_input_8next_state_7input_state_concat_8/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_8MatMulinput_state_concat_8weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_8AddMatMul_8Variable/read*
T0*
_output_shapes

:
D
next_state_8Tanhadd_8*
T0*
_output_shapes

:
f
current_input_9/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_9Reshapeinput_series:9current_input_9/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_9/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_9ConcatV2current_input_9next_state_8input_state_concat_9/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_9MatMulinput_state_concat_9weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
N
add_9AddMatMul_9Variable/read*
T0*
_output_shapes

:
D
next_state_9Tanhadd_9*
T0*
_output_shapes

:
g
current_input_10/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_10Reshapeinput_series:10current_input_10/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_10/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_10ConcatV2current_input_10next_state_9input_state_concat_10/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_10MatMulinput_state_concat_10weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
P
add_10Add	MatMul_10Variable/read*
T0*
_output_shapes

:
F
next_state_10Tanhadd_10*
T0*
_output_shapes

:
g
current_input_11/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_11Reshapeinput_series:11current_input_11/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_11/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_11ConcatV2current_input_11next_state_10input_state_concat_11/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_11MatMulinput_state_concat_11weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
P
add_11Add	MatMul_11Variable/read*
T0*
_output_shapes

:
F
next_state_11Tanhadd_11*
T0*
_output_shapes

:
g
current_input_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_12Reshapeinput_series:12current_input_12/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_12/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_12ConcatV2current_input_12next_state_11input_state_concat_12/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_12MatMulinput_state_concat_12weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
P
add_12Add	MatMul_12Variable/read*
T0*
_output_shapes

:
F
next_state_12Tanhadd_12*
T0*
_output_shapes

:
g
current_input_13/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_13Reshapeinput_series:13current_input_13/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_13/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_13ConcatV2current_input_13next_state_12input_state_concat_13/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_13MatMulinput_state_concat_13weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
P
add_13Add	MatMul_13Variable/read*
T0*
_output_shapes

:
F
next_state_13Tanhadd_13*
T0*
_output_shapes

:
g
current_input_14/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_14Reshapeinput_series:14current_input_14/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_14/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_14ConcatV2current_input_14next_state_13input_state_concat_14/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_14MatMulinput_state_concat_14weight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
P
add_14Add	MatMul_14Variable/read*
T0*
_output_shapes

:
F
next_state_14Tanhadd_14*
T0*
_output_shapes

:
|
	MatMul_15MatMul
next_stateweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_15Add	MatMul_15Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_16MatMulnext_state_1weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_16Add	MatMul_16Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_17MatMulnext_state_2weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_17Add	MatMul_17Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_18MatMulnext_state_3weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_18Add	MatMul_18Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_19MatMulnext_state_4weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_19Add	MatMul_19Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_20MatMulnext_state_5weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_20Add	MatMul_20Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_21MatMulnext_state_6weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_21Add	MatMul_21Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_22MatMulnext_state_7weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_22Add	MatMul_22Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_23MatMulnext_state_8weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_23Add	MatMul_23Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_24MatMulnext_state_9weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_24Add	MatMul_24Variable_1/read*
T0*
_output_shapes

:

	MatMul_25MatMulnext_state_10weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_25Add	MatMul_25Variable_1/read*
T0*
_output_shapes

:

	MatMul_26MatMulnext_state_11weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_26Add	MatMul_26Variable_1/read*
T0*
_output_shapes

:

	MatMul_27MatMulnext_state_12weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_27Add	MatMul_27Variable_1/read*
T0*
_output_shapes

:

	MatMul_28MatMulnext_state_13weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_28Add	MatMul_28Variable_1/read*
T0*
_output_shapes

:

	MatMul_29MatMulnext_state_14weight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b( 
R
add_29Add	MatMul_29Variable_1/read*
T0*
_output_shapes

:
C
SoftmaxSoftmaxadd_15*
T0*
_output_shapes

:
E
	Softmax_1Softmaxadd_16*
T0*
_output_shapes

:
E
	Softmax_2Softmaxadd_17*
T0*
_output_shapes

:
E
	Softmax_3Softmaxadd_18*
T0*
_output_shapes

:
E
	Softmax_4Softmaxadd_19*
T0*
_output_shapes

:
E
	Softmax_5Softmaxadd_20*
T0*
_output_shapes

:
E
	Softmax_6Softmaxadd_21*
T0*
_output_shapes

:
E
	Softmax_7Softmaxadd_22*
T0*
_output_shapes

:
E
	Softmax_8Softmaxadd_23*
T0*
_output_shapes

:
E
	Softmax_9Softmaxadd_24*
T0*
_output_shapes

:
F

Softmax_10Softmaxadd_25*
T0*
_output_shapes

:
F

Softmax_11Softmaxadd_26*
T0*
_output_shapes

:
F

Softmax_12Softmaxadd_27*
T0*
_output_shapes

:
F

Softmax_13Softmaxadd_28*
T0*
_output_shapes

:
F

Softmax_14Softmaxadd_29*
T0*
_output_shapes

:
s
)SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_15labels_series*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_1/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_16labels_series:1*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_2/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_17labels_series:2*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_3/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_18labels_series:3*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_4/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_19labels_series:4*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_5/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_20labels_series:5*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_6/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_21labels_series:6*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_7/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_22labels_series:7*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_8/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_23labels_series:8*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_9/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_24labels_series:9*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_10/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_25labels_series:10*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_11/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_26labels_series:11*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_12/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_27labels_series:12*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_13/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_28labels_series:13*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_14/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_29labels_series:14*
Tlabels0*
T0*$
_output_shapes
::
�	
Rank/packedPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes

:*
N*

axis 
F
RankConst*
dtype0*
_output_shapes
: *
value	B :
M
range/startConst*
dtype0*
_output_shapes
: *
value	B : 
M
range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
V
rangeRangerange/startRankrange/delta*
_output_shapes
:*

Tidx0
�	
total_loss/inputPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes

:*
N*

axis 
i

total_lossMeantotal_loss/inputrange*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
T
gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
p
gradients/total_loss_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
`
gradients/total_loss_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
p
gradients/total_loss_grad/addAddrangegradients/total_loss_grad/Size*
T0*
_output_shapes
:
�
gradients/total_loss_grad/modFloorModgradients/total_loss_grad/addgradients/total_loss_grad/Size*
T0*
_output_shapes
:
k
!gradients/total_loss_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
g
%gradients/total_loss_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
g
%gradients/total_loss_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/total_loss_grad/rangeRange%gradients/total_loss_grad/range/startgradients/total_loss_grad/Size%gradients/total_loss_grad/range/delta*
_output_shapes
:*

Tidx0
f
$gradients/total_loss_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/total_loss_grad/FillFill!gradients/total_loss_grad/Shape_1$gradients/total_loss_grad/Fill/value*
T0*
_output_shapes
:
�
'gradients/total_loss_grad/DynamicStitchDynamicStitchgradients/total_loss_grad/rangegradients/total_loss_grad/modgradients/total_loss_grad/Shapegradients/total_loss_grad/Fill*
T0*#
_output_shapes
:���������*
N
e
#gradients/total_loss_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
!gradients/total_loss_grad/MaximumMaximum'gradients/total_loss_grad/DynamicStitch#gradients/total_loss_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
"gradients/total_loss_grad/floordivFloorDivgradients/total_loss_grad/Shape!gradients/total_loss_grad/Maximum*
T0*
_output_shapes
:
�
!gradients/total_loss_grad/ReshapeReshapegradients/Fill'gradients/total_loss_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
gradients/total_loss_grad/TileTile!gradients/total_loss_grad/Reshape"gradients/total_loss_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
r
!gradients/total_loss_grad/Shape_2Const*
dtype0*
_output_shapes
:*
valueB"      
d
!gradients/total_loss_grad/Shape_3Const*
dtype0*
_output_shapes
: *
valueB 
i
gradients/total_loss_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
gradients/total_loss_grad/ProdProd!gradients/total_loss_grad/Shape_2gradients/total_loss_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
k
!gradients/total_loss_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
 gradients/total_loss_grad/Prod_1Prod!gradients/total_loss_grad/Shape_3!gradients/total_loss_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
g
%gradients/total_loss_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
#gradients/total_loss_grad/Maximum_1Maximum gradients/total_loss_grad/Prod_1%gradients/total_loss_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
$gradients/total_loss_grad/floordiv_1FloorDivgradients/total_loss_grad/Prod#gradients/total_loss_grad/Maximum_1*
T0*
_output_shapes
: 
|
gradients/total_loss_grad/CastCast$gradients/total_loss_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
!gradients/total_loss_grad/truedivRealDivgradients/total_loss_grad/Tilegradients/total_loss_grad/Cast*
T0*
_output_shapes

:
�
'gradients/total_loss/input_grad/unstackUnpack!gradients/total_loss_grad/truediv*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis 
b
0gradients/total_loss/input_grad/tuple/group_depsNoOp(^gradients/total_loss/input_grad/unstack
�
8gradients/total_loss/input_grad/tuple/control_dependencyIdentity'gradients/total_loss/input_grad/unstack1^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_1Identity)gradients/total_loss/input_grad/unstack:11^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_2Identity)gradients/total_loss/input_grad/unstack:21^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_3Identity)gradients/total_loss/input_grad/unstack:31^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_4Identity)gradients/total_loss/input_grad/unstack:41^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_5Identity)gradients/total_loss/input_grad/unstack:51^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_6Identity)gradients/total_loss/input_grad/unstack:61^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_7Identity)gradients/total_loss/input_grad/unstack:71^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_8Identity)gradients/total_loss/input_grad/unstack:81^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_9Identity)gradients/total_loss/input_grad/unstack:91^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_10Identity*gradients/total_loss/input_grad/unstack:101^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_11Identity*gradients/total_loss/input_grad/unstack:111^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_12Identity*gradients/total_loss/input_grad/unstack:121^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_13Identity*gradients/total_loss/input_grad/unstack:131^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_14Identity*gradients/total_loss/input_grad/unstack:141^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims8gradients/total_loss/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_1	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_2	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_3	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_4	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_5	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_6	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_7	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_8	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_9	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_10	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_11	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_12	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_13	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_14	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
l
gradients/add_15_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_15_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_15_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_15_grad/Shapegradients/add_15_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_15_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_15_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_15_grad/ReshapeReshapegradients/add_15_grad/Sumgradients/add_15_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_15_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_15_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_15_grad/Reshape_1Reshapegradients/add_15_grad/Sum_1gradients/add_15_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_15_grad/tuple/group_depsNoOp^gradients/add_15_grad/Reshape ^gradients/add_15_grad/Reshape_1
�
.gradients/add_15_grad/tuple/control_dependencyIdentitygradients/add_15_grad/Reshape'^gradients/add_15_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_15_grad/Reshape
�
0gradients/add_15_grad/tuple/control_dependency_1Identitygradients/add_15_grad/Reshape_1'^gradients/add_15_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_15_grad/Reshape_1
l
gradients/add_16_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_16_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_16_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_16_grad/Shapegradients/add_16_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_16_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_16_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_16_grad/ReshapeReshapegradients/add_16_grad/Sumgradients/add_16_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_16_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_16_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_16_grad/Reshape_1Reshapegradients/add_16_grad/Sum_1gradients/add_16_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_16_grad/tuple/group_depsNoOp^gradients/add_16_grad/Reshape ^gradients/add_16_grad/Reshape_1
�
.gradients/add_16_grad/tuple/control_dependencyIdentitygradients/add_16_grad/Reshape'^gradients/add_16_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_16_grad/Reshape
�
0gradients/add_16_grad/tuple/control_dependency_1Identitygradients/add_16_grad/Reshape_1'^gradients/add_16_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_16_grad/Reshape_1
l
gradients/add_17_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_17_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_17_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_17_grad/Shapegradients/add_17_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_17_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_17_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_17_grad/ReshapeReshapegradients/add_17_grad/Sumgradients/add_17_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_17_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_17_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_17_grad/Reshape_1Reshapegradients/add_17_grad/Sum_1gradients/add_17_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_17_grad/tuple/group_depsNoOp^gradients/add_17_grad/Reshape ^gradients/add_17_grad/Reshape_1
�
.gradients/add_17_grad/tuple/control_dependencyIdentitygradients/add_17_grad/Reshape'^gradients/add_17_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_17_grad/Reshape
�
0gradients/add_17_grad/tuple/control_dependency_1Identitygradients/add_17_grad/Reshape_1'^gradients/add_17_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_17_grad/Reshape_1
l
gradients/add_18_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_18_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_18_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_18_grad/Shapegradients/add_18_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_18_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_18_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_18_grad/ReshapeReshapegradients/add_18_grad/Sumgradients/add_18_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_18_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_18_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_18_grad/Reshape_1Reshapegradients/add_18_grad/Sum_1gradients/add_18_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_18_grad/tuple/group_depsNoOp^gradients/add_18_grad/Reshape ^gradients/add_18_grad/Reshape_1
�
.gradients/add_18_grad/tuple/control_dependencyIdentitygradients/add_18_grad/Reshape'^gradients/add_18_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_18_grad/Reshape
�
0gradients/add_18_grad/tuple/control_dependency_1Identitygradients/add_18_grad/Reshape_1'^gradients/add_18_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_18_grad/Reshape_1
l
gradients/add_19_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_19_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_19_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_19_grad/Shapegradients/add_19_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_19_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_19_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_19_grad/ReshapeReshapegradients/add_19_grad/Sumgradients/add_19_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_19_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_19_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_19_grad/Reshape_1Reshapegradients/add_19_grad/Sum_1gradients/add_19_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_19_grad/tuple/group_depsNoOp^gradients/add_19_grad/Reshape ^gradients/add_19_grad/Reshape_1
�
.gradients/add_19_grad/tuple/control_dependencyIdentitygradients/add_19_grad/Reshape'^gradients/add_19_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_19_grad/Reshape
�
0gradients/add_19_grad/tuple/control_dependency_1Identitygradients/add_19_grad/Reshape_1'^gradients/add_19_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_19_grad/Reshape_1
l
gradients/add_20_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_20_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_20_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_20_grad/Shapegradients/add_20_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_20_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_20_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_20_grad/ReshapeReshapegradients/add_20_grad/Sumgradients/add_20_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_20_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_20_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_20_grad/Reshape_1Reshapegradients/add_20_grad/Sum_1gradients/add_20_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_20_grad/tuple/group_depsNoOp^gradients/add_20_grad/Reshape ^gradients/add_20_grad/Reshape_1
�
.gradients/add_20_grad/tuple/control_dependencyIdentitygradients/add_20_grad/Reshape'^gradients/add_20_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_20_grad/Reshape
�
0gradients/add_20_grad/tuple/control_dependency_1Identitygradients/add_20_grad/Reshape_1'^gradients/add_20_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_20_grad/Reshape_1
l
gradients/add_21_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_21_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_21_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_21_grad/Shapegradients/add_21_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_21_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_21_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_21_grad/ReshapeReshapegradients/add_21_grad/Sumgradients/add_21_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_21_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_21_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_21_grad/Reshape_1Reshapegradients/add_21_grad/Sum_1gradients/add_21_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_21_grad/tuple/group_depsNoOp^gradients/add_21_grad/Reshape ^gradients/add_21_grad/Reshape_1
�
.gradients/add_21_grad/tuple/control_dependencyIdentitygradients/add_21_grad/Reshape'^gradients/add_21_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_21_grad/Reshape
�
0gradients/add_21_grad/tuple/control_dependency_1Identitygradients/add_21_grad/Reshape_1'^gradients/add_21_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_21_grad/Reshape_1
l
gradients/add_22_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_22_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_22_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_22_grad/Shapegradients/add_22_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_22_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_22_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_22_grad/ReshapeReshapegradients/add_22_grad/Sumgradients/add_22_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_22_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_22_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_22_grad/Reshape_1Reshapegradients/add_22_grad/Sum_1gradients/add_22_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_22_grad/tuple/group_depsNoOp^gradients/add_22_grad/Reshape ^gradients/add_22_grad/Reshape_1
�
.gradients/add_22_grad/tuple/control_dependencyIdentitygradients/add_22_grad/Reshape'^gradients/add_22_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_22_grad/Reshape
�
0gradients/add_22_grad/tuple/control_dependency_1Identitygradients/add_22_grad/Reshape_1'^gradients/add_22_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_22_grad/Reshape_1
l
gradients/add_23_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_23_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_23_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_23_grad/Shapegradients/add_23_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_23_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_23_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_23_grad/ReshapeReshapegradients/add_23_grad/Sumgradients/add_23_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_23_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_23_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_23_grad/Reshape_1Reshapegradients/add_23_grad/Sum_1gradients/add_23_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_23_grad/tuple/group_depsNoOp^gradients/add_23_grad/Reshape ^gradients/add_23_grad/Reshape_1
�
.gradients/add_23_grad/tuple/control_dependencyIdentitygradients/add_23_grad/Reshape'^gradients/add_23_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_23_grad/Reshape
�
0gradients/add_23_grad/tuple/control_dependency_1Identitygradients/add_23_grad/Reshape_1'^gradients/add_23_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_23_grad/Reshape_1
l
gradients/add_24_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_24_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_24_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_24_grad/Shapegradients/add_24_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_24_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_24_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_24_grad/ReshapeReshapegradients/add_24_grad/Sumgradients/add_24_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_24_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_24_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_24_grad/Reshape_1Reshapegradients/add_24_grad/Sum_1gradients/add_24_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_24_grad/tuple/group_depsNoOp^gradients/add_24_grad/Reshape ^gradients/add_24_grad/Reshape_1
�
.gradients/add_24_grad/tuple/control_dependencyIdentitygradients/add_24_grad/Reshape'^gradients/add_24_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_24_grad/Reshape
�
0gradients/add_24_grad/tuple/control_dependency_1Identitygradients/add_24_grad/Reshape_1'^gradients/add_24_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_24_grad/Reshape_1
l
gradients/add_25_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_25_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_25_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_25_grad/Shapegradients/add_25_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_25_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_25_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_25_grad/ReshapeReshapegradients/add_25_grad/Sumgradients/add_25_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_25_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_25_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_25_grad/Reshape_1Reshapegradients/add_25_grad/Sum_1gradients/add_25_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_25_grad/tuple/group_depsNoOp^gradients/add_25_grad/Reshape ^gradients/add_25_grad/Reshape_1
�
.gradients/add_25_grad/tuple/control_dependencyIdentitygradients/add_25_grad/Reshape'^gradients/add_25_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_25_grad/Reshape
�
0gradients/add_25_grad/tuple/control_dependency_1Identitygradients/add_25_grad/Reshape_1'^gradients/add_25_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_25_grad/Reshape_1
l
gradients/add_26_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_26_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_26_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_26_grad/Shapegradients/add_26_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_26_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_26_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_26_grad/ReshapeReshapegradients/add_26_grad/Sumgradients/add_26_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_26_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_26_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_26_grad/Reshape_1Reshapegradients/add_26_grad/Sum_1gradients/add_26_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_26_grad/tuple/group_depsNoOp^gradients/add_26_grad/Reshape ^gradients/add_26_grad/Reshape_1
�
.gradients/add_26_grad/tuple/control_dependencyIdentitygradients/add_26_grad/Reshape'^gradients/add_26_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_26_grad/Reshape
�
0gradients/add_26_grad/tuple/control_dependency_1Identitygradients/add_26_grad/Reshape_1'^gradients/add_26_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_26_grad/Reshape_1
l
gradients/add_27_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_27_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_27_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_27_grad/Shapegradients/add_27_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_27_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_27_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_27_grad/ReshapeReshapegradients/add_27_grad/Sumgradients/add_27_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_27_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_27_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_27_grad/Reshape_1Reshapegradients/add_27_grad/Sum_1gradients/add_27_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_27_grad/tuple/group_depsNoOp^gradients/add_27_grad/Reshape ^gradients/add_27_grad/Reshape_1
�
.gradients/add_27_grad/tuple/control_dependencyIdentitygradients/add_27_grad/Reshape'^gradients/add_27_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_27_grad/Reshape
�
0gradients/add_27_grad/tuple/control_dependency_1Identitygradients/add_27_grad/Reshape_1'^gradients/add_27_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_27_grad/Reshape_1
l
gradients/add_28_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_28_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_28_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_28_grad/Shapegradients/add_28_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_28_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_28_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_28_grad/ReshapeReshapegradients/add_28_grad/Sumgradients/add_28_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_28_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_28_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_28_grad/Reshape_1Reshapegradients/add_28_grad/Sum_1gradients/add_28_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_28_grad/tuple/group_depsNoOp^gradients/add_28_grad/Reshape ^gradients/add_28_grad/Reshape_1
�
.gradients/add_28_grad/tuple/control_dependencyIdentitygradients/add_28_grad/Reshape'^gradients/add_28_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_28_grad/Reshape
�
0gradients/add_28_grad/tuple/control_dependency_1Identitygradients/add_28_grad/Reshape_1'^gradients/add_28_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_28_grad/Reshape_1
l
gradients/add_29_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_29_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_29_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_29_grad/Shapegradients/add_29_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_29_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_29_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_29_grad/ReshapeReshapegradients/add_29_grad/Sumgradients/add_29_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_29_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_29_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_29_grad/Reshape_1Reshapegradients/add_29_grad/Sum_1gradients/add_29_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_29_grad/tuple/group_depsNoOp^gradients/add_29_grad/Reshape ^gradients/add_29_grad/Reshape_1
�
.gradients/add_29_grad/tuple/control_dependencyIdentitygradients/add_29_grad/Reshape'^gradients/add_29_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_29_grad/Reshape
�
0gradients/add_29_grad/tuple/control_dependency_1Identitygradients/add_29_grad/Reshape_1'^gradients/add_29_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_29_grad/Reshape_1
�
gradients/MatMul_15_grad/MatMulMatMul.gradients/add_15_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_15_grad/MatMul_1MatMul
next_state.gradients/add_15_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_15_grad/tuple/group_depsNoOp ^gradients/MatMul_15_grad/MatMul"^gradients/MatMul_15_grad/MatMul_1
�
1gradients/MatMul_15_grad/tuple/control_dependencyIdentitygradients/MatMul_15_grad/MatMul*^gradients/MatMul_15_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_15_grad/MatMul
�
3gradients/MatMul_15_grad/tuple/control_dependency_1Identity!gradients/MatMul_15_grad/MatMul_1*^gradients/MatMul_15_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_15_grad/MatMul_1
�
gradients/MatMul_16_grad/MatMulMatMul.gradients/add_16_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_16_grad/MatMul_1MatMulnext_state_1.gradients/add_16_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_16_grad/tuple/group_depsNoOp ^gradients/MatMul_16_grad/MatMul"^gradients/MatMul_16_grad/MatMul_1
�
1gradients/MatMul_16_grad/tuple/control_dependencyIdentitygradients/MatMul_16_grad/MatMul*^gradients/MatMul_16_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_16_grad/MatMul
�
3gradients/MatMul_16_grad/tuple/control_dependency_1Identity!gradients/MatMul_16_grad/MatMul_1*^gradients/MatMul_16_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_16_grad/MatMul_1
�
gradients/MatMul_17_grad/MatMulMatMul.gradients/add_17_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_17_grad/MatMul_1MatMulnext_state_2.gradients/add_17_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_17_grad/tuple/group_depsNoOp ^gradients/MatMul_17_grad/MatMul"^gradients/MatMul_17_grad/MatMul_1
�
1gradients/MatMul_17_grad/tuple/control_dependencyIdentitygradients/MatMul_17_grad/MatMul*^gradients/MatMul_17_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_17_grad/MatMul
�
3gradients/MatMul_17_grad/tuple/control_dependency_1Identity!gradients/MatMul_17_grad/MatMul_1*^gradients/MatMul_17_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_17_grad/MatMul_1
�
gradients/MatMul_18_grad/MatMulMatMul.gradients/add_18_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_18_grad/MatMul_1MatMulnext_state_3.gradients/add_18_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_18_grad/tuple/group_depsNoOp ^gradients/MatMul_18_grad/MatMul"^gradients/MatMul_18_grad/MatMul_1
�
1gradients/MatMul_18_grad/tuple/control_dependencyIdentitygradients/MatMul_18_grad/MatMul*^gradients/MatMul_18_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_18_grad/MatMul
�
3gradients/MatMul_18_grad/tuple/control_dependency_1Identity!gradients/MatMul_18_grad/MatMul_1*^gradients/MatMul_18_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_18_grad/MatMul_1
�
gradients/MatMul_19_grad/MatMulMatMul.gradients/add_19_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_19_grad/MatMul_1MatMulnext_state_4.gradients/add_19_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_19_grad/tuple/group_depsNoOp ^gradients/MatMul_19_grad/MatMul"^gradients/MatMul_19_grad/MatMul_1
�
1gradients/MatMul_19_grad/tuple/control_dependencyIdentitygradients/MatMul_19_grad/MatMul*^gradients/MatMul_19_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_19_grad/MatMul
�
3gradients/MatMul_19_grad/tuple/control_dependency_1Identity!gradients/MatMul_19_grad/MatMul_1*^gradients/MatMul_19_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_19_grad/MatMul_1
�
gradients/MatMul_20_grad/MatMulMatMul.gradients/add_20_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_20_grad/MatMul_1MatMulnext_state_5.gradients/add_20_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_20_grad/tuple/group_depsNoOp ^gradients/MatMul_20_grad/MatMul"^gradients/MatMul_20_grad/MatMul_1
�
1gradients/MatMul_20_grad/tuple/control_dependencyIdentitygradients/MatMul_20_grad/MatMul*^gradients/MatMul_20_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_20_grad/MatMul
�
3gradients/MatMul_20_grad/tuple/control_dependency_1Identity!gradients/MatMul_20_grad/MatMul_1*^gradients/MatMul_20_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_20_grad/MatMul_1
�
gradients/MatMul_21_grad/MatMulMatMul.gradients/add_21_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_21_grad/MatMul_1MatMulnext_state_6.gradients/add_21_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_21_grad/tuple/group_depsNoOp ^gradients/MatMul_21_grad/MatMul"^gradients/MatMul_21_grad/MatMul_1
�
1gradients/MatMul_21_grad/tuple/control_dependencyIdentitygradients/MatMul_21_grad/MatMul*^gradients/MatMul_21_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_21_grad/MatMul
�
3gradients/MatMul_21_grad/tuple/control_dependency_1Identity!gradients/MatMul_21_grad/MatMul_1*^gradients/MatMul_21_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_21_grad/MatMul_1
�
gradients/MatMul_22_grad/MatMulMatMul.gradients/add_22_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_22_grad/MatMul_1MatMulnext_state_7.gradients/add_22_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_22_grad/tuple/group_depsNoOp ^gradients/MatMul_22_grad/MatMul"^gradients/MatMul_22_grad/MatMul_1
�
1gradients/MatMul_22_grad/tuple/control_dependencyIdentitygradients/MatMul_22_grad/MatMul*^gradients/MatMul_22_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_22_grad/MatMul
�
3gradients/MatMul_22_grad/tuple/control_dependency_1Identity!gradients/MatMul_22_grad/MatMul_1*^gradients/MatMul_22_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_22_grad/MatMul_1
�
gradients/MatMul_23_grad/MatMulMatMul.gradients/add_23_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_23_grad/MatMul_1MatMulnext_state_8.gradients/add_23_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_23_grad/tuple/group_depsNoOp ^gradients/MatMul_23_grad/MatMul"^gradients/MatMul_23_grad/MatMul_1
�
1gradients/MatMul_23_grad/tuple/control_dependencyIdentitygradients/MatMul_23_grad/MatMul*^gradients/MatMul_23_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_23_grad/MatMul
�
3gradients/MatMul_23_grad/tuple/control_dependency_1Identity!gradients/MatMul_23_grad/MatMul_1*^gradients/MatMul_23_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_23_grad/MatMul_1
�
gradients/MatMul_24_grad/MatMulMatMul.gradients/add_24_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_24_grad/MatMul_1MatMulnext_state_9.gradients/add_24_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_24_grad/tuple/group_depsNoOp ^gradients/MatMul_24_grad/MatMul"^gradients/MatMul_24_grad/MatMul_1
�
1gradients/MatMul_24_grad/tuple/control_dependencyIdentitygradients/MatMul_24_grad/MatMul*^gradients/MatMul_24_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_24_grad/MatMul
�
3gradients/MatMul_24_grad/tuple/control_dependency_1Identity!gradients/MatMul_24_grad/MatMul_1*^gradients/MatMul_24_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_24_grad/MatMul_1
�
gradients/MatMul_25_grad/MatMulMatMul.gradients/add_25_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_25_grad/MatMul_1MatMulnext_state_10.gradients/add_25_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_25_grad/tuple/group_depsNoOp ^gradients/MatMul_25_grad/MatMul"^gradients/MatMul_25_grad/MatMul_1
�
1gradients/MatMul_25_grad/tuple/control_dependencyIdentitygradients/MatMul_25_grad/MatMul*^gradients/MatMul_25_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_25_grad/MatMul
�
3gradients/MatMul_25_grad/tuple/control_dependency_1Identity!gradients/MatMul_25_grad/MatMul_1*^gradients/MatMul_25_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_25_grad/MatMul_1
�
gradients/MatMul_26_grad/MatMulMatMul.gradients/add_26_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_26_grad/MatMul_1MatMulnext_state_11.gradients/add_26_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_26_grad/tuple/group_depsNoOp ^gradients/MatMul_26_grad/MatMul"^gradients/MatMul_26_grad/MatMul_1
�
1gradients/MatMul_26_grad/tuple/control_dependencyIdentitygradients/MatMul_26_grad/MatMul*^gradients/MatMul_26_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_26_grad/MatMul
�
3gradients/MatMul_26_grad/tuple/control_dependency_1Identity!gradients/MatMul_26_grad/MatMul_1*^gradients/MatMul_26_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_26_grad/MatMul_1
�
gradients/MatMul_27_grad/MatMulMatMul.gradients/add_27_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_27_grad/MatMul_1MatMulnext_state_12.gradients/add_27_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_27_grad/tuple/group_depsNoOp ^gradients/MatMul_27_grad/MatMul"^gradients/MatMul_27_grad/MatMul_1
�
1gradients/MatMul_27_grad/tuple/control_dependencyIdentitygradients/MatMul_27_grad/MatMul*^gradients/MatMul_27_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_27_grad/MatMul
�
3gradients/MatMul_27_grad/tuple/control_dependency_1Identity!gradients/MatMul_27_grad/MatMul_1*^gradients/MatMul_27_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_27_grad/MatMul_1
�
gradients/MatMul_28_grad/MatMulMatMul.gradients/add_28_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_28_grad/MatMul_1MatMulnext_state_13.gradients/add_28_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_28_grad/tuple/group_depsNoOp ^gradients/MatMul_28_grad/MatMul"^gradients/MatMul_28_grad/MatMul_1
�
1gradients/MatMul_28_grad/tuple/control_dependencyIdentitygradients/MatMul_28_grad/MatMul*^gradients/MatMul_28_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_28_grad/MatMul
�
3gradients/MatMul_28_grad/tuple/control_dependency_1Identity!gradients/MatMul_28_grad/MatMul_1*^gradients/MatMul_28_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_28_grad/MatMul_1
�
gradients/MatMul_29_grad/MatMulMatMul.gradients/add_29_grad/tuple/control_dependencyweight2/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_29_grad/MatMul_1MatMulnext_state_14.gradients/add_29_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_29_grad/tuple/group_depsNoOp ^gradients/MatMul_29_grad/MatMul"^gradients/MatMul_29_grad/MatMul_1
�
1gradients/MatMul_29_grad/tuple/control_dependencyIdentitygradients/MatMul_29_grad/MatMul*^gradients/MatMul_29_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_29_grad/MatMul
�
3gradients/MatMul_29_grad/tuple/control_dependency_1Identity!gradients/MatMul_29_grad/MatMul_1*^gradients/MatMul_29_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_29_grad/MatMul_1
�
gradients/AddNAddN0gradients/add_15_grad/tuple/control_dependency_10gradients/add_16_grad/tuple/control_dependency_10gradients/add_17_grad/tuple/control_dependency_10gradients/add_18_grad/tuple/control_dependency_10gradients/add_19_grad/tuple/control_dependency_10gradients/add_20_grad/tuple/control_dependency_10gradients/add_21_grad/tuple/control_dependency_10gradients/add_22_grad/tuple/control_dependency_10gradients/add_23_grad/tuple/control_dependency_10gradients/add_24_grad/tuple/control_dependency_10gradients/add_25_grad/tuple/control_dependency_10gradients/add_26_grad/tuple/control_dependency_10gradients/add_27_grad/tuple/control_dependency_10gradients/add_28_grad/tuple/control_dependency_10gradients/add_29_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_15_grad/Reshape_1*
N
�
%gradients/next_state_14_grad/TanhGradTanhGradnext_state_141gradients/MatMul_29_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
gradients/AddN_1AddN3gradients/MatMul_15_grad/tuple/control_dependency_13gradients/MatMul_16_grad/tuple/control_dependency_13gradients/MatMul_17_grad/tuple/control_dependency_13gradients/MatMul_18_grad/tuple/control_dependency_13gradients/MatMul_19_grad/tuple/control_dependency_13gradients/MatMul_20_grad/tuple/control_dependency_13gradients/MatMul_21_grad/tuple/control_dependency_13gradients/MatMul_22_grad/tuple/control_dependency_13gradients/MatMul_23_grad/tuple/control_dependency_13gradients/MatMul_24_grad/tuple/control_dependency_13gradients/MatMul_25_grad/tuple/control_dependency_13gradients/MatMul_26_grad/tuple/control_dependency_13gradients/MatMul_27_grad/tuple/control_dependency_13gradients/MatMul_28_grad/tuple/control_dependency_13gradients/MatMul_29_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_15_grad/MatMul_1*
N
l
gradients/add_14_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_14_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_14_grad/SumSum%gradients/next_state_14_grad/TanhGrad+gradients/add_14_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_14_grad/Sum_1Sum%gradients/next_state_14_grad/TanhGrad-gradients/add_14_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
�
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_14_grad/Reshape
�
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1
�
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_14_grad/MatMul_1MatMulinput_state_concat_14.gradients/add_14_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
�
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul
�
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1
k
)gradients/input_state_concat_14_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_14_grad/modFloorModinput_state_concat_14/axis)gradients/input_state_concat_14_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_14_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_14_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_14_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_14_grad/mod*gradients/input_state_concat_14_grad/Shape,gradients/input_state_concat_14_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_14_grad/SliceSlice1gradients/MatMul_14_grad/tuple/control_dependency1gradients/input_state_concat_14_grad/ConcatOffset*gradients/input_state_concat_14_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_14_grad/Slice_1Slice1gradients/MatMul_14_grad/tuple/control_dependency3gradients/input_state_concat_14_grad/ConcatOffset:1,gradients/input_state_concat_14_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_14_grad/tuple/group_depsNoOp+^gradients/input_state_concat_14_grad/Slice-^gradients/input_state_concat_14_grad/Slice_1
�
=gradients/input_state_concat_14_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_14_grad/Slice6^gradients/input_state_concat_14_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_14_grad/Slice
�
?gradients/input_state_concat_14_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_14_grad/Slice_16^gradients/input_state_concat_14_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_14_grad/Slice_1
�
gradients/AddN_2AddN1gradients/MatMul_28_grad/tuple/control_dependency?gradients/input_state_concat_14_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_28_grad/MatMul*
N
{
%gradients/next_state_13_grad/TanhGradTanhGradnext_state_13gradients/AddN_2*
T0*
_output_shapes

:
l
gradients/add_13_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_13_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_13_grad/SumSum%gradients/next_state_13_grad/TanhGrad+gradients/add_13_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_13_grad/Sum_1Sum%gradients/next_state_13_grad/TanhGrad-gradients/add_13_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
�
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_13_grad/Reshape
�
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1
�
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_13_grad/MatMul_1MatMulinput_state_concat_13.gradients/add_13_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
�
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
�
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1
k
)gradients/input_state_concat_13_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_13_grad/modFloorModinput_state_concat_13/axis)gradients/input_state_concat_13_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_13_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_13_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_13_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_13_grad/mod*gradients/input_state_concat_13_grad/Shape,gradients/input_state_concat_13_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_13_grad/SliceSlice1gradients/MatMul_13_grad/tuple/control_dependency1gradients/input_state_concat_13_grad/ConcatOffset*gradients/input_state_concat_13_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_13_grad/Slice_1Slice1gradients/MatMul_13_grad/tuple/control_dependency3gradients/input_state_concat_13_grad/ConcatOffset:1,gradients/input_state_concat_13_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_13_grad/tuple/group_depsNoOp+^gradients/input_state_concat_13_grad/Slice-^gradients/input_state_concat_13_grad/Slice_1
�
=gradients/input_state_concat_13_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_13_grad/Slice6^gradients/input_state_concat_13_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_13_grad/Slice
�
?gradients/input_state_concat_13_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_13_grad/Slice_16^gradients/input_state_concat_13_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_13_grad/Slice_1
�
gradients/AddN_3AddN1gradients/MatMul_27_grad/tuple/control_dependency?gradients/input_state_concat_13_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_27_grad/MatMul*
N
{
%gradients/next_state_12_grad/TanhGradTanhGradnext_state_12gradients/AddN_3*
T0*
_output_shapes

:
l
gradients/add_12_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_12_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_12_grad/SumSum%gradients/next_state_12_grad/TanhGrad+gradients/add_12_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_12_grad/Sum_1Sum%gradients/next_state_12_grad/TanhGrad-gradients/add_12_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
�
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_12_grad/Reshape
�
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1
�
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_12_grad/MatMul_1MatMulinput_state_concat_12.gradients/add_12_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
�
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
�
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1
k
)gradients/input_state_concat_12_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_12_grad/modFloorModinput_state_concat_12/axis)gradients/input_state_concat_12_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_12_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_12_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_12_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_12_grad/mod*gradients/input_state_concat_12_grad/Shape,gradients/input_state_concat_12_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_12_grad/SliceSlice1gradients/MatMul_12_grad/tuple/control_dependency1gradients/input_state_concat_12_grad/ConcatOffset*gradients/input_state_concat_12_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_12_grad/Slice_1Slice1gradients/MatMul_12_grad/tuple/control_dependency3gradients/input_state_concat_12_grad/ConcatOffset:1,gradients/input_state_concat_12_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_12_grad/tuple/group_depsNoOp+^gradients/input_state_concat_12_grad/Slice-^gradients/input_state_concat_12_grad/Slice_1
�
=gradients/input_state_concat_12_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_12_grad/Slice6^gradients/input_state_concat_12_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_12_grad/Slice
�
?gradients/input_state_concat_12_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_12_grad/Slice_16^gradients/input_state_concat_12_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_12_grad/Slice_1
�
gradients/AddN_4AddN1gradients/MatMul_26_grad/tuple/control_dependency?gradients/input_state_concat_12_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_26_grad/MatMul*
N
{
%gradients/next_state_11_grad/TanhGradTanhGradnext_state_11gradients/AddN_4*
T0*
_output_shapes

:
l
gradients/add_11_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_11_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_11_grad/SumSum%gradients/next_state_11_grad/TanhGrad+gradients/add_11_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_11_grad/Sum_1Sum%gradients/next_state_11_grad/TanhGrad-gradients/add_11_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
�
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_11_grad/Reshape
�
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1
�
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_11_grad/MatMul_1MatMulinput_state_concat_11.gradients/add_11_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
�
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
�
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1
k
)gradients/input_state_concat_11_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_11_grad/modFloorModinput_state_concat_11/axis)gradients/input_state_concat_11_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_11_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_11_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_11_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_11_grad/mod*gradients/input_state_concat_11_grad/Shape,gradients/input_state_concat_11_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_11_grad/SliceSlice1gradients/MatMul_11_grad/tuple/control_dependency1gradients/input_state_concat_11_grad/ConcatOffset*gradients/input_state_concat_11_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_11_grad/Slice_1Slice1gradients/MatMul_11_grad/tuple/control_dependency3gradients/input_state_concat_11_grad/ConcatOffset:1,gradients/input_state_concat_11_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_11_grad/tuple/group_depsNoOp+^gradients/input_state_concat_11_grad/Slice-^gradients/input_state_concat_11_grad/Slice_1
�
=gradients/input_state_concat_11_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_11_grad/Slice6^gradients/input_state_concat_11_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_11_grad/Slice
�
?gradients/input_state_concat_11_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_11_grad/Slice_16^gradients/input_state_concat_11_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_11_grad/Slice_1
�
gradients/AddN_5AddN1gradients/MatMul_25_grad/tuple/control_dependency?gradients/input_state_concat_11_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_25_grad/MatMul*
N
{
%gradients/next_state_10_grad/TanhGradTanhGradnext_state_10gradients/AddN_5*
T0*
_output_shapes

:
l
gradients/add_10_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_10_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_10_grad/SumSum%gradients/next_state_10_grad/TanhGrad+gradients/add_10_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_10_grad/Sum_1Sum%gradients/next_state_10_grad/TanhGrad-gradients/add_10_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
�
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_10_grad/Reshape
�
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1
�
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
!gradients/MatMul_10_grad/MatMul_1MatMulinput_state_concat_10.gradients/add_10_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
�
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
�
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1
k
)gradients/input_state_concat_10_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_10_grad/modFloorModinput_state_concat_10/axis)gradients/input_state_concat_10_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_10_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_10_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_10_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_10_grad/mod*gradients/input_state_concat_10_grad/Shape,gradients/input_state_concat_10_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_10_grad/SliceSlice1gradients/MatMul_10_grad/tuple/control_dependency1gradients/input_state_concat_10_grad/ConcatOffset*gradients/input_state_concat_10_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_10_grad/Slice_1Slice1gradients/MatMul_10_grad/tuple/control_dependency3gradients/input_state_concat_10_grad/ConcatOffset:1,gradients/input_state_concat_10_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_10_grad/tuple/group_depsNoOp+^gradients/input_state_concat_10_grad/Slice-^gradients/input_state_concat_10_grad/Slice_1
�
=gradients/input_state_concat_10_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_10_grad/Slice6^gradients/input_state_concat_10_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_10_grad/Slice
�
?gradients/input_state_concat_10_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_10_grad/Slice_16^gradients/input_state_concat_10_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_10_grad/Slice_1
�
gradients/AddN_6AddN1gradients/MatMul_24_grad/tuple/control_dependency?gradients/input_state_concat_10_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_24_grad/MatMul*
N
y
$gradients/next_state_9_grad/TanhGradTanhGradnext_state_9gradients/AddN_6*
T0*
_output_shapes

:
k
gradients/add_9_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_9_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_9_grad/SumSum$gradients/next_state_9_grad/TanhGrad*gradients/add_9_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_9_grad/Sum_1Sum$gradients/next_state_9_grad/TanhGrad,gradients/add_9_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
�
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_9_grad/Reshape
�
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1
�
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_9_grad/MatMul_1MatMulinput_state_concat_9-gradients/add_9_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
�
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
�
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1
j
(gradients/input_state_concat_9_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_9_grad/modFloorModinput_state_concat_9/axis(gradients/input_state_concat_9_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_9_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_9_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_9_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_9_grad/mod)gradients/input_state_concat_9_grad/Shape+gradients/input_state_concat_9_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_9_grad/SliceSlice0gradients/MatMul_9_grad/tuple/control_dependency0gradients/input_state_concat_9_grad/ConcatOffset)gradients/input_state_concat_9_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_9_grad/Slice_1Slice0gradients/MatMul_9_grad/tuple/control_dependency2gradients/input_state_concat_9_grad/ConcatOffset:1+gradients/input_state_concat_9_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_9_grad/tuple/group_depsNoOp*^gradients/input_state_concat_9_grad/Slice,^gradients/input_state_concat_9_grad/Slice_1
�
<gradients/input_state_concat_9_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_9_grad/Slice5^gradients/input_state_concat_9_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_9_grad/Slice
�
>gradients/input_state_concat_9_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_9_grad/Slice_15^gradients/input_state_concat_9_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_9_grad/Slice_1
�
gradients/AddN_7AddN1gradients/MatMul_23_grad/tuple/control_dependency>gradients/input_state_concat_9_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_23_grad/MatMul*
N
y
$gradients/next_state_8_grad/TanhGradTanhGradnext_state_8gradients/AddN_7*
T0*
_output_shapes

:
k
gradients/add_8_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_8_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_8_grad/SumSum$gradients/next_state_8_grad/TanhGrad*gradients/add_8_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_8_grad/Sum_1Sum$gradients/next_state_8_grad/TanhGrad,gradients/add_8_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
�
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_8_grad/Reshape
�
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1
�
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_8_grad/MatMul_1MatMulinput_state_concat_8-gradients/add_8_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
�
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
�
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1
j
(gradients/input_state_concat_8_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_8_grad/modFloorModinput_state_concat_8/axis(gradients/input_state_concat_8_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_8_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_8_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_8_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_8_grad/mod)gradients/input_state_concat_8_grad/Shape+gradients/input_state_concat_8_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_8_grad/SliceSlice0gradients/MatMul_8_grad/tuple/control_dependency0gradients/input_state_concat_8_grad/ConcatOffset)gradients/input_state_concat_8_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_8_grad/Slice_1Slice0gradients/MatMul_8_grad/tuple/control_dependency2gradients/input_state_concat_8_grad/ConcatOffset:1+gradients/input_state_concat_8_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_8_grad/tuple/group_depsNoOp*^gradients/input_state_concat_8_grad/Slice,^gradients/input_state_concat_8_grad/Slice_1
�
<gradients/input_state_concat_8_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_8_grad/Slice5^gradients/input_state_concat_8_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_8_grad/Slice
�
>gradients/input_state_concat_8_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_8_grad/Slice_15^gradients/input_state_concat_8_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_8_grad/Slice_1
�
gradients/AddN_8AddN1gradients/MatMul_22_grad/tuple/control_dependency>gradients/input_state_concat_8_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_22_grad/MatMul*
N
y
$gradients/next_state_7_grad/TanhGradTanhGradnext_state_7gradients/AddN_8*
T0*
_output_shapes

:
k
gradients/add_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_7_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_7_grad/SumSum$gradients/next_state_7_grad/TanhGrad*gradients/add_7_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_7_grad/Sum_1Sum$gradients/next_state_7_grad/TanhGrad,gradients/add_7_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
�
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_7_grad/Reshape
�
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1
�
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_7_grad/MatMul_1MatMulinput_state_concat_7-gradients/add_7_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
�
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
�
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1
j
(gradients/input_state_concat_7_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_7_grad/modFloorModinput_state_concat_7/axis(gradients/input_state_concat_7_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_7_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_7_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_7_grad/mod)gradients/input_state_concat_7_grad/Shape+gradients/input_state_concat_7_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_7_grad/SliceSlice0gradients/MatMul_7_grad/tuple/control_dependency0gradients/input_state_concat_7_grad/ConcatOffset)gradients/input_state_concat_7_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_7_grad/Slice_1Slice0gradients/MatMul_7_grad/tuple/control_dependency2gradients/input_state_concat_7_grad/ConcatOffset:1+gradients/input_state_concat_7_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_7_grad/tuple/group_depsNoOp*^gradients/input_state_concat_7_grad/Slice,^gradients/input_state_concat_7_grad/Slice_1
�
<gradients/input_state_concat_7_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_7_grad/Slice5^gradients/input_state_concat_7_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_7_grad/Slice
�
>gradients/input_state_concat_7_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_7_grad/Slice_15^gradients/input_state_concat_7_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_7_grad/Slice_1
�
gradients/AddN_9AddN1gradients/MatMul_21_grad/tuple/control_dependency>gradients/input_state_concat_7_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_21_grad/MatMul*
N
y
$gradients/next_state_6_grad/TanhGradTanhGradnext_state_6gradients/AddN_9*
T0*
_output_shapes

:
k
gradients/add_6_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_6_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_6_grad/SumSum$gradients/next_state_6_grad/TanhGrad*gradients/add_6_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_6_grad/Sum_1Sum$gradients/next_state_6_grad/TanhGrad,gradients/add_6_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
�
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_6_grad/Reshape
�
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1
�
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_6_grad/MatMul_1MatMulinput_state_concat_6-gradients/add_6_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
�
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
�
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1
j
(gradients/input_state_concat_6_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_6_grad/modFloorModinput_state_concat_6/axis(gradients/input_state_concat_6_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_6_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_6_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_6_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_6_grad/mod)gradients/input_state_concat_6_grad/Shape+gradients/input_state_concat_6_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_6_grad/SliceSlice0gradients/MatMul_6_grad/tuple/control_dependency0gradients/input_state_concat_6_grad/ConcatOffset)gradients/input_state_concat_6_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_6_grad/Slice_1Slice0gradients/MatMul_6_grad/tuple/control_dependency2gradients/input_state_concat_6_grad/ConcatOffset:1+gradients/input_state_concat_6_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_6_grad/tuple/group_depsNoOp*^gradients/input_state_concat_6_grad/Slice,^gradients/input_state_concat_6_grad/Slice_1
�
<gradients/input_state_concat_6_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_6_grad/Slice5^gradients/input_state_concat_6_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_6_grad/Slice
�
>gradients/input_state_concat_6_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_6_grad/Slice_15^gradients/input_state_concat_6_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_6_grad/Slice_1
�
gradients/AddN_10AddN1gradients/MatMul_20_grad/tuple/control_dependency>gradients/input_state_concat_6_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_20_grad/MatMul*
N
z
$gradients/next_state_5_grad/TanhGradTanhGradnext_state_5gradients/AddN_10*
T0*
_output_shapes

:
k
gradients/add_5_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_5_grad/SumSum$gradients/next_state_5_grad/TanhGrad*gradients/add_5_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_5_grad/Sum_1Sum$gradients/next_state_5_grad/TanhGrad,gradients/add_5_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
�
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_5_grad/Reshape
�
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
�
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_5_grad/MatMul_1MatMulinput_state_concat_5-gradients/add_5_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
�
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
�
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1
j
(gradients/input_state_concat_5_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_5_grad/modFloorModinput_state_concat_5/axis(gradients/input_state_concat_5_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_5_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_5_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_5_grad/mod)gradients/input_state_concat_5_grad/Shape+gradients/input_state_concat_5_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_5_grad/SliceSlice0gradients/MatMul_5_grad/tuple/control_dependency0gradients/input_state_concat_5_grad/ConcatOffset)gradients/input_state_concat_5_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_5_grad/Slice_1Slice0gradients/MatMul_5_grad/tuple/control_dependency2gradients/input_state_concat_5_grad/ConcatOffset:1+gradients/input_state_concat_5_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_5_grad/tuple/group_depsNoOp*^gradients/input_state_concat_5_grad/Slice,^gradients/input_state_concat_5_grad/Slice_1
�
<gradients/input_state_concat_5_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_5_grad/Slice5^gradients/input_state_concat_5_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_5_grad/Slice
�
>gradients/input_state_concat_5_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_5_grad/Slice_15^gradients/input_state_concat_5_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_5_grad/Slice_1
�
gradients/AddN_11AddN1gradients/MatMul_19_grad/tuple/control_dependency>gradients/input_state_concat_5_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_19_grad/MatMul*
N
z
$gradients/next_state_4_grad/TanhGradTanhGradnext_state_4gradients/AddN_11*
T0*
_output_shapes

:
k
gradients/add_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_4_grad/SumSum$gradients/next_state_4_grad/TanhGrad*gradients/add_4_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_4_grad/Sum_1Sum$gradients/next_state_4_grad/TanhGrad,gradients/add_4_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_4_grad/Reshape
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
�
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_4_grad/MatMul_1MatMulinput_state_concat_4-gradients/add_4_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
�
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
�
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1
j
(gradients/input_state_concat_4_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_4_grad/modFloorModinput_state_concat_4/axis(gradients/input_state_concat_4_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_4_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_4_grad/mod)gradients/input_state_concat_4_grad/Shape+gradients/input_state_concat_4_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_4_grad/SliceSlice0gradients/MatMul_4_grad/tuple/control_dependency0gradients/input_state_concat_4_grad/ConcatOffset)gradients/input_state_concat_4_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_4_grad/Slice_1Slice0gradients/MatMul_4_grad/tuple/control_dependency2gradients/input_state_concat_4_grad/ConcatOffset:1+gradients/input_state_concat_4_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_4_grad/tuple/group_depsNoOp*^gradients/input_state_concat_4_grad/Slice,^gradients/input_state_concat_4_grad/Slice_1
�
<gradients/input_state_concat_4_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_4_grad/Slice5^gradients/input_state_concat_4_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_4_grad/Slice
�
>gradients/input_state_concat_4_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_4_grad/Slice_15^gradients/input_state_concat_4_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_4_grad/Slice_1
�
gradients/AddN_12AddN1gradients/MatMul_18_grad/tuple/control_dependency>gradients/input_state_concat_4_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_18_grad/MatMul*
N
z
$gradients/next_state_3_grad/TanhGradTanhGradnext_state_3gradients/AddN_12*
T0*
_output_shapes

:
k
gradients/add_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_3_grad/SumSum$gradients/next_state_3_grad/TanhGrad*gradients/add_3_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_3_grad/Sum_1Sum$gradients/next_state_3_grad/TanhGrad,gradients/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_3_grad/Reshape
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
�
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_3_grad/MatMul_1MatMulinput_state_concat_3-gradients/add_3_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
�
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
�
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1
j
(gradients/input_state_concat_3_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_3_grad/modFloorModinput_state_concat_3/axis(gradients/input_state_concat_3_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_3_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_3_grad/mod)gradients/input_state_concat_3_grad/Shape+gradients/input_state_concat_3_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_3_grad/SliceSlice0gradients/MatMul_3_grad/tuple/control_dependency0gradients/input_state_concat_3_grad/ConcatOffset)gradients/input_state_concat_3_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_3_grad/Slice_1Slice0gradients/MatMul_3_grad/tuple/control_dependency2gradients/input_state_concat_3_grad/ConcatOffset:1+gradients/input_state_concat_3_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_3_grad/tuple/group_depsNoOp*^gradients/input_state_concat_3_grad/Slice,^gradients/input_state_concat_3_grad/Slice_1
�
<gradients/input_state_concat_3_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_3_grad/Slice5^gradients/input_state_concat_3_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_3_grad/Slice
�
>gradients/input_state_concat_3_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_3_grad/Slice_15^gradients/input_state_concat_3_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_3_grad/Slice_1
�
gradients/AddN_13AddN1gradients/MatMul_17_grad/tuple/control_dependency>gradients/input_state_concat_3_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_17_grad/MatMul*
N
z
$gradients/next_state_2_grad/TanhGradTanhGradnext_state_2gradients/AddN_13*
T0*
_output_shapes

:
k
gradients/add_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_2_grad/SumSum$gradients/next_state_2_grad/TanhGrad*gradients/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_2_grad/Sum_1Sum$gradients/next_state_2_grad/TanhGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_2_grad/Reshape
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
�
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_2_grad/MatMul_1MatMulinput_state_concat_2-gradients/add_2_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
�
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
�
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1
j
(gradients/input_state_concat_2_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_2_grad/modFloorModinput_state_concat_2/axis(gradients/input_state_concat_2_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_2_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_2_grad/mod)gradients/input_state_concat_2_grad/Shape+gradients/input_state_concat_2_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_2_grad/SliceSlice0gradients/MatMul_2_grad/tuple/control_dependency0gradients/input_state_concat_2_grad/ConcatOffset)gradients/input_state_concat_2_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_2_grad/Slice_1Slice0gradients/MatMul_2_grad/tuple/control_dependency2gradients/input_state_concat_2_grad/ConcatOffset:1+gradients/input_state_concat_2_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_2_grad/tuple/group_depsNoOp*^gradients/input_state_concat_2_grad/Slice,^gradients/input_state_concat_2_grad/Slice_1
�
<gradients/input_state_concat_2_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_2_grad/Slice5^gradients/input_state_concat_2_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_2_grad/Slice
�
>gradients/input_state_concat_2_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_2_grad/Slice_15^gradients/input_state_concat_2_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_2_grad/Slice_1
�
gradients/AddN_14AddN1gradients/MatMul_16_grad/tuple/control_dependency>gradients/input_state_concat_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_16_grad/MatMul*
N
z
$gradients/next_state_1_grad/TanhGradTanhGradnext_state_1gradients/AddN_14*
T0*
_output_shapes

:
k
gradients/add_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_1_grad/SumSum$gradients/next_state_1_grad/TanhGrad*gradients/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_1_grad/Sum_1Sum$gradients/next_state_1_grad/TanhGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_1_grad/Reshape
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
 gradients/MatMul_1_grad/MatMul_1MatMulinput_state_concat_1-gradients/add_1_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
j
(gradients/input_state_concat_1_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_1_grad/modFloorModinput_state_concat_1/axis(gradients/input_state_concat_1_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_1_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_1_grad/mod)gradients/input_state_concat_1_grad/Shape+gradients/input_state_concat_1_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_1_grad/SliceSlice0gradients/MatMul_1_grad/tuple/control_dependency0gradients/input_state_concat_1_grad/ConcatOffset)gradients/input_state_concat_1_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_1_grad/Slice_1Slice0gradients/MatMul_1_grad/tuple/control_dependency2gradients/input_state_concat_1_grad/ConcatOffset:1+gradients/input_state_concat_1_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_1_grad/tuple/group_depsNoOp*^gradients/input_state_concat_1_grad/Slice,^gradients/input_state_concat_1_grad/Slice_1
�
<gradients/input_state_concat_1_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_1_grad/Slice5^gradients/input_state_concat_1_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_1_grad/Slice
�
>gradients/input_state_concat_1_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_1_grad/Slice_15^gradients/input_state_concat_1_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_1_grad/Slice_1
�
gradients/AddN_15AddN1gradients/MatMul_15_grad/tuple/control_dependency>gradients/input_state_concat_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_15_grad/MatMul*
N
v
"gradients/next_state_grad/TanhGradTanhGrad
next_stategradients/AddN_15*
T0*
_output_shapes

:
i
gradients/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
k
gradients/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSum"gradients/next_state_grad/TanhGrad(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_grad/Sum_1Sum"gradients/next_state_grad/TanhGrad*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*-
_class#
!loc:@gradients/add_grad/Reshape
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_grad/Reshape_1
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyweight1/read*
transpose_a( *
_output_shapes

:*
T0*
transpose_b(
�
gradients/MatMul_grad/MatMul_1MatMulinput_state_concat+gradients/add_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
T0*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
�
gradients/AddN_16AddN0gradients/add_14_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1*
N
�
gradients/AddN_17AddN3gradients/MatMul_14_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_10gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1*
N
�
!weight1/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@weight1*
_output_shapes

:*
valueB*���=
�
weight1/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@weight1*
shared_name 
�
weight1/Adagrad/AssignAssignweight1/Adagrad!weight1/Adagrad/Initializer/Const*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@weight1*
use_locking(
v
weight1/Adagrad/readIdentityweight1/Adagrad*
T0*
_output_shapes

:*
_class
loc:@weight1
�
"Variable/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@Variable*
_output_shapes

:*
valueB*���=
�
Variable/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@Variable*
shared_name 
�
Variable/Adagrad/AssignAssignVariable/Adagrad"Variable/Adagrad/Initializer/Const*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@Variable*
use_locking(
y
Variable/Adagrad/readIdentityVariable/Adagrad*
T0*
_output_shapes

:*
_class
loc:@Variable
�
!weight2/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@weight2*
_output_shapes

:*
valueB*���=
�
weight2/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@weight2*
shared_name 
�
weight2/Adagrad/AssignAssignweight2/Adagrad!weight2/Adagrad/Initializer/Const*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@weight2*
use_locking(
v
weight2/Adagrad/readIdentityweight2/Adagrad*
T0*
_output_shapes

:*
_class
loc:@weight2
�
$Variable_1/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@Variable_1*
_output_shapes

:*
valueB*���=
�
Variable_1/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@Variable_1*
shared_name 
�
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
T0*
validate_shape(*
_output_shapes

:*
_class
loc:@Variable_1*
use_locking(

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
T0*
_output_shapes

:*
_class
loc:@Variable_1
[
training/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *���>
�
$training/update_weight1/ApplyAdagradApplyAdagradweight1weight1/Adagradtraining/learning_rategradients/AddN_17*
T0*
_output_shapes

:*
_class
loc:@weight1*
use_locking( 
�
%training/update_Variable/ApplyAdagradApplyAdagradVariableVariable/Adagradtraining/learning_rategradients/AddN_16*
T0*
_output_shapes

:*
_class
loc:@Variable*
use_locking( 
�
$training/update_weight2/ApplyAdagradApplyAdagradweight2weight2/Adagradtraining/learning_rategradients/AddN_1*
T0*
_output_shapes

:*
_class
loc:@weight2*
use_locking( 
�
'training/update_Variable_1/ApplyAdagradApplyAdagrad
Variable_1Variable_1/Adagradtraining/learning_rategradients/AddN*
T0*
_output_shapes

:*
_class
loc:@Variable_1*
use_locking( 
�
trainingNoOp%^training/update_weight1/ApplyAdagrad&^training/update_Variable/ApplyAdagrad%^training/update_weight2/ApplyAdagrad(^training/update_Variable_1/ApplyAdagrad"p����     �A��	O�xZ�AJӅ
��
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	��
�
ApplyAdagrad
var"T�
accum"T�
lr"T	
grad"T
out"T�"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
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
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
,
Tanh
x"T
y"T"
Ttype:	
2
8
TanhGrad
x"T
y"T
z"T"
Ttype:	
2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.1.02v1.1.0-rc0-61-g1ec6ed5��

X
x_inputPlaceholder*
dtype0*
_output_shapes

:*
shape
:
X
y_inputPlaceholder*
dtype0*
_output_shapes

:*
shape
:
_
rnn_init_statePlaceholder*
dtype0*
_output_shapes

:*
shape
:
�
weight1/initial_valueConst*
dtype0*
_output_shapes

:*i
value`B^"P��?�	d>�k�;��T?��H?3A?hY0?1�?�/f?e��=�F?9�>�`�>JOe?�?U�>���>[�T?�`�=�
?
{
weight1
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
weight1/AssignAssignweight1weight1/initial_value*
T0*
_class
loc:@weight1*
_output_shapes

:*
validate_shape(*
use_locking(
f
weight1/readIdentityweight1*
T0*
_output_shapes

:*
_class
loc:@weight1
w
Variable/initial_valueConst*
dtype0*
_output_shapes

:*)
value B"                
|
Variable
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
Variable/AssignAssignVariableVariable/initial_value*
T0*
_class
loc:@Variable*
_output_shapes

:*
validate_shape(*
use_locking(
i
Variable/readIdentityVariable*
T0*
_output_shapes

:*
_class
loc:@Variable
�
weight2/initial_valueConst*
dtype0*
_output_shapes

:*9
value0B." ��V=���=m~�>[�W?h�p?�v�>8�b?)��=
{
weight2
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
weight2/AssignAssignweight2weight2/initial_value*
T0*
_class
loc:@weight2*
_output_shapes

:*
validate_shape(*
use_locking(
f
weight2/readIdentityweight2*
T0*
_output_shapes

:*
_class
loc:@weight2
q
Variable_1/initial_valueConst*
dtype0*
_output_shapes

:*!
valueB"        
~

Variable_1
VariableV2*
dtype0*
	container *
_output_shapes

:*
shape
:*
shared_name 
�
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
T0*
_class
loc:@Variable_1*
_output_shapes

:*
validate_shape(*
use_locking(
o
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes

:*
_class
loc:@Variable_1
S
weights/tagConst*
dtype0*
_output_shapes
: *
valueB Bweights
W
weightsHistogramSummaryweights/tagweight1/read*
T0*
_output_shapes
: 
�
input_seriesUnpackx_input*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis
�
labels_seriesUnpacky_input*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis
d
current_input/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
r
current_inputReshapeinput_seriescurrent_input/shape*
T0*
_output_shapes

:*
Tshape0
Y
input_state_concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concatConcatV2current_inputrnn_init_stateinput_state_concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMulMatMulinput_state_concatweight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
J
addAddMatMulVariable/read*
T0*
_output_shapes

:
@

next_stateTanhadd*
T0*
_output_shapes

:
f
current_input_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_1Reshapeinput_series:1current_input_1/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_1ConcatV2current_input_1
next_stateinput_state_concat_1/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_1MatMulinput_state_concat_1weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_1AddMatMul_1Variable/read*
T0*
_output_shapes

:
D
next_state_1Tanhadd_1*
T0*
_output_shapes

:
f
current_input_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_2Reshapeinput_series:2current_input_2/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_2ConcatV2current_input_2next_state_1input_state_concat_2/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_2MatMulinput_state_concat_2weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_2AddMatMul_2Variable/read*
T0*
_output_shapes

:
D
next_state_2Tanhadd_2*
T0*
_output_shapes

:
f
current_input_3/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_3Reshapeinput_series:3current_input_3/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_3/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_3ConcatV2current_input_3next_state_2input_state_concat_3/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_3MatMulinput_state_concat_3weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_3AddMatMul_3Variable/read*
T0*
_output_shapes

:
D
next_state_3Tanhadd_3*
T0*
_output_shapes

:
f
current_input_4/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_4Reshapeinput_series:4current_input_4/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_4/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_4ConcatV2current_input_4next_state_3input_state_concat_4/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_4MatMulinput_state_concat_4weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_4AddMatMul_4Variable/read*
T0*
_output_shapes

:
D
next_state_4Tanhadd_4*
T0*
_output_shapes

:
f
current_input_5/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_5Reshapeinput_series:5current_input_5/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_5/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_5ConcatV2current_input_5next_state_4input_state_concat_5/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_5MatMulinput_state_concat_5weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_5AddMatMul_5Variable/read*
T0*
_output_shapes

:
D
next_state_5Tanhadd_5*
T0*
_output_shapes

:
f
current_input_6/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_6Reshapeinput_series:6current_input_6/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_6/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_6ConcatV2current_input_6next_state_5input_state_concat_6/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_6MatMulinput_state_concat_6weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_6AddMatMul_6Variable/read*
T0*
_output_shapes

:
D
next_state_6Tanhadd_6*
T0*
_output_shapes

:
f
current_input_7/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_7Reshapeinput_series:7current_input_7/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_7/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_7ConcatV2current_input_7next_state_6input_state_concat_7/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_7MatMulinput_state_concat_7weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_7AddMatMul_7Variable/read*
T0*
_output_shapes

:
D
next_state_7Tanhadd_7*
T0*
_output_shapes

:
f
current_input_8/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_8Reshapeinput_series:8current_input_8/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_8/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_8ConcatV2current_input_8next_state_7input_state_concat_8/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_8MatMulinput_state_concat_8weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_8AddMatMul_8Variable/read*
T0*
_output_shapes

:
D
next_state_8Tanhadd_8*
T0*
_output_shapes

:
f
current_input_9/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
x
current_input_9Reshapeinput_series:9current_input_9/shape*
T0*
_output_shapes

:*
Tshape0
[
input_state_concat_9/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_9ConcatV2current_input_9next_state_8input_state_concat_9/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
MatMul_9MatMulinput_state_concat_9weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
N
add_9AddMatMul_9Variable/read*
T0*
_output_shapes

:
D
next_state_9Tanhadd_9*
T0*
_output_shapes

:
g
current_input_10/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_10Reshapeinput_series:10current_input_10/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_10/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_10ConcatV2current_input_10next_state_9input_state_concat_10/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_10MatMulinput_state_concat_10weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
P
add_10Add	MatMul_10Variable/read*
T0*
_output_shapes

:
F
next_state_10Tanhadd_10*
T0*
_output_shapes

:
g
current_input_11/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_11Reshapeinput_series:11current_input_11/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_11/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_11ConcatV2current_input_11next_state_10input_state_concat_11/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_11MatMulinput_state_concat_11weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
P
add_11Add	MatMul_11Variable/read*
T0*
_output_shapes

:
F
next_state_11Tanhadd_11*
T0*
_output_shapes

:
g
current_input_12/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_12Reshapeinput_series:12current_input_12/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_12/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_12ConcatV2current_input_12next_state_11input_state_concat_12/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_12MatMulinput_state_concat_12weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
P
add_12Add	MatMul_12Variable/read*
T0*
_output_shapes

:
F
next_state_12Tanhadd_12*
T0*
_output_shapes

:
g
current_input_13/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_13Reshapeinput_series:13current_input_13/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_13/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_13ConcatV2current_input_13next_state_12input_state_concat_13/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_13MatMulinput_state_concat_13weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
P
add_13Add	MatMul_13Variable/read*
T0*
_output_shapes

:
F
next_state_13Tanhadd_13*
T0*
_output_shapes

:
g
current_input_14/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
{
current_input_14Reshapeinput_series:14current_input_14/shape*
T0*
_output_shapes

:*
Tshape0
\
input_state_concat_14/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
input_state_concat_14ConcatV2current_input_14next_state_13input_state_concat_14/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
	MatMul_14MatMulinput_state_concat_14weight1/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
P
add_14Add	MatMul_14Variable/read*
T0*
_output_shapes

:
F
next_state_14Tanhadd_14*
T0*
_output_shapes

:
|
	MatMul_15MatMul
next_stateweight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_15Add	MatMul_15Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_16MatMulnext_state_1weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_16Add	MatMul_16Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_17MatMulnext_state_2weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_17Add	MatMul_17Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_18MatMulnext_state_3weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_18Add	MatMul_18Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_19MatMulnext_state_4weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_19Add	MatMul_19Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_20MatMulnext_state_5weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_20Add	MatMul_20Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_21MatMulnext_state_6weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_21Add	MatMul_21Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_22MatMulnext_state_7weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_22Add	MatMul_22Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_23MatMulnext_state_8weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_23Add	MatMul_23Variable_1/read*
T0*
_output_shapes

:
~
	MatMul_24MatMulnext_state_9weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_24Add	MatMul_24Variable_1/read*
T0*
_output_shapes

:

	MatMul_25MatMulnext_state_10weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_25Add	MatMul_25Variable_1/read*
T0*
_output_shapes

:

	MatMul_26MatMulnext_state_11weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_26Add	MatMul_26Variable_1/read*
T0*
_output_shapes

:

	MatMul_27MatMulnext_state_12weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_27Add	MatMul_27Variable_1/read*
T0*
_output_shapes

:

	MatMul_28MatMulnext_state_13weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_28Add	MatMul_28Variable_1/read*
T0*
_output_shapes

:

	MatMul_29MatMulnext_state_14weight2/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes

:
R
add_29Add	MatMul_29Variable_1/read*
T0*
_output_shapes

:
C
SoftmaxSoftmaxadd_15*
T0*
_output_shapes

:
E
	Softmax_1Softmaxadd_16*
T0*
_output_shapes

:
E
	Softmax_2Softmaxadd_17*
T0*
_output_shapes

:
E
	Softmax_3Softmaxadd_18*
T0*
_output_shapes

:
E
	Softmax_4Softmaxadd_19*
T0*
_output_shapes

:
E
	Softmax_5Softmaxadd_20*
T0*
_output_shapes

:
E
	Softmax_6Softmaxadd_21*
T0*
_output_shapes

:
E
	Softmax_7Softmaxadd_22*
T0*
_output_shapes

:
E
	Softmax_8Softmaxadd_23*
T0*
_output_shapes

:
E
	Softmax_9Softmaxadd_24*
T0*
_output_shapes

:
F

Softmax_10Softmaxadd_25*
T0*
_output_shapes

:
F

Softmax_11Softmaxadd_26*
T0*
_output_shapes

:
F

Softmax_12Softmaxadd_27*
T0*
_output_shapes

:
F

Softmax_13Softmaxadd_28*
T0*
_output_shapes

:
F

Softmax_14Softmaxadd_29*
T0*
_output_shapes

:
s
)SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_15labels_series*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_1/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_16labels_series:1*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_2/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_17labels_series:2*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_3/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_18labels_series:3*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_4/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_19labels_series:4*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_5/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_20labels_series:5*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_6/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_21labels_series:6*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_7/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_22labels_series:7*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_8/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_23labels_series:8*
Tlabels0*
T0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_9/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_24labels_series:9*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_10/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_25labels_series:10*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_11/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_26labels_series:11*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_12/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_27labels_series:12*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_13/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_28labels_series:13*
Tlabels0*
T0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_14/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_29labels_series:14*
Tlabels0*
T0*$
_output_shapes
::
�	
Rank/packedPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes

:*
N*

axis 
F
RankConst*
dtype0*
_output_shapes
: *
value	B :
M
range/startConst*
dtype0*
_output_shapes
: *
value	B : 
M
range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
V
rangeRangerange/startRankrange/delta*
_output_shapes
:*

Tidx0
�	
total_loss/inputPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes

:*
N*

axis 
i

total_lossMeantotal_loss/inputrange*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
T
gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
p
gradients/total_loss_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
`
gradients/total_loss_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
p
gradients/total_loss_grad/addAddrangegradients/total_loss_grad/Size*
T0*
_output_shapes
:
�
gradients/total_loss_grad/modFloorModgradients/total_loss_grad/addgradients/total_loss_grad/Size*
T0*
_output_shapes
:
k
!gradients/total_loss_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
g
%gradients/total_loss_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
g
%gradients/total_loss_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/total_loss_grad/rangeRange%gradients/total_loss_grad/range/startgradients/total_loss_grad/Size%gradients/total_loss_grad/range/delta*
_output_shapes
:*

Tidx0
f
$gradients/total_loss_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
�
gradients/total_loss_grad/FillFill!gradients/total_loss_grad/Shape_1$gradients/total_loss_grad/Fill/value*
T0*
_output_shapes
:
�
'gradients/total_loss_grad/DynamicStitchDynamicStitchgradients/total_loss_grad/rangegradients/total_loss_grad/modgradients/total_loss_grad/Shapegradients/total_loss_grad/Fill*
T0*#
_output_shapes
:���������*
N
e
#gradients/total_loss_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
!gradients/total_loss_grad/MaximumMaximum'gradients/total_loss_grad/DynamicStitch#gradients/total_loss_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
"gradients/total_loss_grad/floordivFloorDivgradients/total_loss_grad/Shape!gradients/total_loss_grad/Maximum*
T0*
_output_shapes
:
�
!gradients/total_loss_grad/ReshapeReshapegradients/Fill'gradients/total_loss_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
gradients/total_loss_grad/TileTile!gradients/total_loss_grad/Reshape"gradients/total_loss_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
r
!gradients/total_loss_grad/Shape_2Const*
dtype0*
_output_shapes
:*
valueB"      
d
!gradients/total_loss_grad/Shape_3Const*
dtype0*
_output_shapes
: *
valueB 
i
gradients/total_loss_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
gradients/total_loss_grad/ProdProd!gradients/total_loss_grad/Shape_2gradients/total_loss_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
k
!gradients/total_loss_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
 gradients/total_loss_grad/Prod_1Prod!gradients/total_loss_grad/Shape_3!gradients/total_loss_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
g
%gradients/total_loss_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
#gradients/total_loss_grad/Maximum_1Maximum gradients/total_loss_grad/Prod_1%gradients/total_loss_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
$gradients/total_loss_grad/floordiv_1FloorDivgradients/total_loss_grad/Prod#gradients/total_loss_grad/Maximum_1*
T0*
_output_shapes
: 
|
gradients/total_loss_grad/CastCast$gradients/total_loss_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
!gradients/total_loss_grad/truedivRealDivgradients/total_loss_grad/Tilegradients/total_loss_grad/Cast*
T0*
_output_shapes

:
�
'gradients/total_loss/input_grad/unstackUnpack!gradients/total_loss_grad/truediv*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis 
b
0gradients/total_loss/input_grad/tuple/group_depsNoOp(^gradients/total_loss/input_grad/unstack
�
8gradients/total_loss/input_grad/tuple/control_dependencyIdentity'gradients/total_loss/input_grad/unstack1^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_1Identity)gradients/total_loss/input_grad/unstack:11^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_2Identity)gradients/total_loss/input_grad/unstack:21^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_3Identity)gradients/total_loss/input_grad/unstack:31^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_4Identity)gradients/total_loss/input_grad/unstack:41^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_5Identity)gradients/total_loss/input_grad/unstack:51^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_6Identity)gradients/total_loss/input_grad/unstack:61^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_7Identity)gradients/total_loss/input_grad/unstack:71^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_8Identity)gradients/total_loss/input_grad/unstack:81^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
:gradients/total_loss/input_grad/tuple/control_dependency_9Identity)gradients/total_loss/input_grad/unstack:91^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_10Identity*gradients/total_loss/input_grad/unstack:101^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_11Identity*gradients/total_loss/input_grad/unstack:111^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_12Identity*gradients/total_loss/input_grad/unstack:121^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_13Identity*gradients/total_loss/input_grad/unstack:131^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
;gradients/total_loss/input_grad/tuple/control_dependency_14Identity*gradients/total_loss/input_grad/unstack:141^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims8gradients/total_loss/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_1	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_2	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_3	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_4	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_5	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_6	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_7	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_8	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_9	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_10	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_11	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_12	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_13	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
�
gradients/zeros_like_14	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
l
gradients/add_15_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_15_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_15_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_15_grad/Shapegradients/add_15_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_15_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_15_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_15_grad/ReshapeReshapegradients/add_15_grad/Sumgradients/add_15_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_15_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_15_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_15_grad/Reshape_1Reshapegradients/add_15_grad/Sum_1gradients/add_15_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_15_grad/tuple/group_depsNoOp^gradients/add_15_grad/Reshape ^gradients/add_15_grad/Reshape_1
�
.gradients/add_15_grad/tuple/control_dependencyIdentitygradients/add_15_grad/Reshape'^gradients/add_15_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_15_grad/Reshape
�
0gradients/add_15_grad/tuple/control_dependency_1Identitygradients/add_15_grad/Reshape_1'^gradients/add_15_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_15_grad/Reshape_1
l
gradients/add_16_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_16_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_16_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_16_grad/Shapegradients/add_16_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_16_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_16_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_16_grad/ReshapeReshapegradients/add_16_grad/Sumgradients/add_16_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_16_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_16_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_16_grad/Reshape_1Reshapegradients/add_16_grad/Sum_1gradients/add_16_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_16_grad/tuple/group_depsNoOp^gradients/add_16_grad/Reshape ^gradients/add_16_grad/Reshape_1
�
.gradients/add_16_grad/tuple/control_dependencyIdentitygradients/add_16_grad/Reshape'^gradients/add_16_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_16_grad/Reshape
�
0gradients/add_16_grad/tuple/control_dependency_1Identitygradients/add_16_grad/Reshape_1'^gradients/add_16_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_16_grad/Reshape_1
l
gradients/add_17_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_17_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_17_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_17_grad/Shapegradients/add_17_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_17_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_17_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_17_grad/ReshapeReshapegradients/add_17_grad/Sumgradients/add_17_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_17_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_17_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_17_grad/Reshape_1Reshapegradients/add_17_grad/Sum_1gradients/add_17_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_17_grad/tuple/group_depsNoOp^gradients/add_17_grad/Reshape ^gradients/add_17_grad/Reshape_1
�
.gradients/add_17_grad/tuple/control_dependencyIdentitygradients/add_17_grad/Reshape'^gradients/add_17_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_17_grad/Reshape
�
0gradients/add_17_grad/tuple/control_dependency_1Identitygradients/add_17_grad/Reshape_1'^gradients/add_17_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_17_grad/Reshape_1
l
gradients/add_18_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_18_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_18_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_18_grad/Shapegradients/add_18_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_18_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_18_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_18_grad/ReshapeReshapegradients/add_18_grad/Sumgradients/add_18_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_18_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_18_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_18_grad/Reshape_1Reshapegradients/add_18_grad/Sum_1gradients/add_18_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_18_grad/tuple/group_depsNoOp^gradients/add_18_grad/Reshape ^gradients/add_18_grad/Reshape_1
�
.gradients/add_18_grad/tuple/control_dependencyIdentitygradients/add_18_grad/Reshape'^gradients/add_18_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_18_grad/Reshape
�
0gradients/add_18_grad/tuple/control_dependency_1Identitygradients/add_18_grad/Reshape_1'^gradients/add_18_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_18_grad/Reshape_1
l
gradients/add_19_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_19_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_19_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_19_grad/Shapegradients/add_19_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_19_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_19_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_19_grad/ReshapeReshapegradients/add_19_grad/Sumgradients/add_19_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_19_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_19_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_19_grad/Reshape_1Reshapegradients/add_19_grad/Sum_1gradients/add_19_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_19_grad/tuple/group_depsNoOp^gradients/add_19_grad/Reshape ^gradients/add_19_grad/Reshape_1
�
.gradients/add_19_grad/tuple/control_dependencyIdentitygradients/add_19_grad/Reshape'^gradients/add_19_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_19_grad/Reshape
�
0gradients/add_19_grad/tuple/control_dependency_1Identitygradients/add_19_grad/Reshape_1'^gradients/add_19_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_19_grad/Reshape_1
l
gradients/add_20_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_20_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_20_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_20_grad/Shapegradients/add_20_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_20_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_20_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_20_grad/ReshapeReshapegradients/add_20_grad/Sumgradients/add_20_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_20_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_20_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_20_grad/Reshape_1Reshapegradients/add_20_grad/Sum_1gradients/add_20_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_20_grad/tuple/group_depsNoOp^gradients/add_20_grad/Reshape ^gradients/add_20_grad/Reshape_1
�
.gradients/add_20_grad/tuple/control_dependencyIdentitygradients/add_20_grad/Reshape'^gradients/add_20_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_20_grad/Reshape
�
0gradients/add_20_grad/tuple/control_dependency_1Identitygradients/add_20_grad/Reshape_1'^gradients/add_20_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_20_grad/Reshape_1
l
gradients/add_21_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_21_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_21_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_21_grad/Shapegradients/add_21_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_21_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_21_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_21_grad/ReshapeReshapegradients/add_21_grad/Sumgradients/add_21_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_21_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_21_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_21_grad/Reshape_1Reshapegradients/add_21_grad/Sum_1gradients/add_21_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_21_grad/tuple/group_depsNoOp^gradients/add_21_grad/Reshape ^gradients/add_21_grad/Reshape_1
�
.gradients/add_21_grad/tuple/control_dependencyIdentitygradients/add_21_grad/Reshape'^gradients/add_21_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_21_grad/Reshape
�
0gradients/add_21_grad/tuple/control_dependency_1Identitygradients/add_21_grad/Reshape_1'^gradients/add_21_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_21_grad/Reshape_1
l
gradients/add_22_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_22_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_22_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_22_grad/Shapegradients/add_22_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_22_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_22_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_22_grad/ReshapeReshapegradients/add_22_grad/Sumgradients/add_22_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_22_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_22_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_22_grad/Reshape_1Reshapegradients/add_22_grad/Sum_1gradients/add_22_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_22_grad/tuple/group_depsNoOp^gradients/add_22_grad/Reshape ^gradients/add_22_grad/Reshape_1
�
.gradients/add_22_grad/tuple/control_dependencyIdentitygradients/add_22_grad/Reshape'^gradients/add_22_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_22_grad/Reshape
�
0gradients/add_22_grad/tuple/control_dependency_1Identitygradients/add_22_grad/Reshape_1'^gradients/add_22_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_22_grad/Reshape_1
l
gradients/add_23_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_23_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_23_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_23_grad/Shapegradients/add_23_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_23_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_23_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_23_grad/ReshapeReshapegradients/add_23_grad/Sumgradients/add_23_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_23_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_23_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_23_grad/Reshape_1Reshapegradients/add_23_grad/Sum_1gradients/add_23_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_23_grad/tuple/group_depsNoOp^gradients/add_23_grad/Reshape ^gradients/add_23_grad/Reshape_1
�
.gradients/add_23_grad/tuple/control_dependencyIdentitygradients/add_23_grad/Reshape'^gradients/add_23_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_23_grad/Reshape
�
0gradients/add_23_grad/tuple/control_dependency_1Identitygradients/add_23_grad/Reshape_1'^gradients/add_23_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_23_grad/Reshape_1
l
gradients/add_24_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_24_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_24_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_24_grad/Shapegradients/add_24_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_24_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_24_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_24_grad/ReshapeReshapegradients/add_24_grad/Sumgradients/add_24_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_24_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_24_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_24_grad/Reshape_1Reshapegradients/add_24_grad/Sum_1gradients/add_24_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_24_grad/tuple/group_depsNoOp^gradients/add_24_grad/Reshape ^gradients/add_24_grad/Reshape_1
�
.gradients/add_24_grad/tuple/control_dependencyIdentitygradients/add_24_grad/Reshape'^gradients/add_24_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_24_grad/Reshape
�
0gradients/add_24_grad/tuple/control_dependency_1Identitygradients/add_24_grad/Reshape_1'^gradients/add_24_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_24_grad/Reshape_1
l
gradients/add_25_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_25_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_25_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_25_grad/Shapegradients/add_25_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_25_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_25_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_25_grad/ReshapeReshapegradients/add_25_grad/Sumgradients/add_25_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_25_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_25_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_25_grad/Reshape_1Reshapegradients/add_25_grad/Sum_1gradients/add_25_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_25_grad/tuple/group_depsNoOp^gradients/add_25_grad/Reshape ^gradients/add_25_grad/Reshape_1
�
.gradients/add_25_grad/tuple/control_dependencyIdentitygradients/add_25_grad/Reshape'^gradients/add_25_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_25_grad/Reshape
�
0gradients/add_25_grad/tuple/control_dependency_1Identitygradients/add_25_grad/Reshape_1'^gradients/add_25_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_25_grad/Reshape_1
l
gradients/add_26_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_26_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_26_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_26_grad/Shapegradients/add_26_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_26_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_26_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_26_grad/ReshapeReshapegradients/add_26_grad/Sumgradients/add_26_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_26_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_26_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_26_grad/Reshape_1Reshapegradients/add_26_grad/Sum_1gradients/add_26_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_26_grad/tuple/group_depsNoOp^gradients/add_26_grad/Reshape ^gradients/add_26_grad/Reshape_1
�
.gradients/add_26_grad/tuple/control_dependencyIdentitygradients/add_26_grad/Reshape'^gradients/add_26_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_26_grad/Reshape
�
0gradients/add_26_grad/tuple/control_dependency_1Identitygradients/add_26_grad/Reshape_1'^gradients/add_26_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_26_grad/Reshape_1
l
gradients/add_27_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_27_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_27_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_27_grad/Shapegradients/add_27_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_27_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_27_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_27_grad/ReshapeReshapegradients/add_27_grad/Sumgradients/add_27_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_27_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_27_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_27_grad/Reshape_1Reshapegradients/add_27_grad/Sum_1gradients/add_27_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_27_grad/tuple/group_depsNoOp^gradients/add_27_grad/Reshape ^gradients/add_27_grad/Reshape_1
�
.gradients/add_27_grad/tuple/control_dependencyIdentitygradients/add_27_grad/Reshape'^gradients/add_27_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_27_grad/Reshape
�
0gradients/add_27_grad/tuple/control_dependency_1Identitygradients/add_27_grad/Reshape_1'^gradients/add_27_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_27_grad/Reshape_1
l
gradients/add_28_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_28_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_28_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_28_grad/Shapegradients/add_28_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_28_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_28_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_28_grad/ReshapeReshapegradients/add_28_grad/Sumgradients/add_28_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_28_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_28_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_28_grad/Reshape_1Reshapegradients/add_28_grad/Sum_1gradients/add_28_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_28_grad/tuple/group_depsNoOp^gradients/add_28_grad/Reshape ^gradients/add_28_grad/Reshape_1
�
.gradients/add_28_grad/tuple/control_dependencyIdentitygradients/add_28_grad/Reshape'^gradients/add_28_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_28_grad/Reshape
�
0gradients/add_28_grad/tuple/control_dependency_1Identitygradients/add_28_grad/Reshape_1'^gradients/add_28_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_28_grad/Reshape_1
l
gradients/add_29_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_29_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_29_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_29_grad/Shapegradients/add_29_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_29_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_29_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_29_grad/ReshapeReshapegradients/add_29_grad/Sumgradients/add_29_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_29_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_29_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_29_grad/Reshape_1Reshapegradients/add_29_grad/Sum_1gradients/add_29_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_29_grad/tuple/group_depsNoOp^gradients/add_29_grad/Reshape ^gradients/add_29_grad/Reshape_1
�
.gradients/add_29_grad/tuple/control_dependencyIdentitygradients/add_29_grad/Reshape'^gradients/add_29_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_29_grad/Reshape
�
0gradients/add_29_grad/tuple/control_dependency_1Identitygradients/add_29_grad/Reshape_1'^gradients/add_29_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_29_grad/Reshape_1
�
gradients/MatMul_15_grad/MatMulMatMul.gradients/add_15_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_15_grad/MatMul_1MatMul
next_state.gradients/add_15_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_15_grad/tuple/group_depsNoOp ^gradients/MatMul_15_grad/MatMul"^gradients/MatMul_15_grad/MatMul_1
�
1gradients/MatMul_15_grad/tuple/control_dependencyIdentitygradients/MatMul_15_grad/MatMul*^gradients/MatMul_15_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_15_grad/MatMul
�
3gradients/MatMul_15_grad/tuple/control_dependency_1Identity!gradients/MatMul_15_grad/MatMul_1*^gradients/MatMul_15_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_15_grad/MatMul_1
�
gradients/MatMul_16_grad/MatMulMatMul.gradients/add_16_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_16_grad/MatMul_1MatMulnext_state_1.gradients/add_16_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_16_grad/tuple/group_depsNoOp ^gradients/MatMul_16_grad/MatMul"^gradients/MatMul_16_grad/MatMul_1
�
1gradients/MatMul_16_grad/tuple/control_dependencyIdentitygradients/MatMul_16_grad/MatMul*^gradients/MatMul_16_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_16_grad/MatMul
�
3gradients/MatMul_16_grad/tuple/control_dependency_1Identity!gradients/MatMul_16_grad/MatMul_1*^gradients/MatMul_16_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_16_grad/MatMul_1
�
gradients/MatMul_17_grad/MatMulMatMul.gradients/add_17_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_17_grad/MatMul_1MatMulnext_state_2.gradients/add_17_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_17_grad/tuple/group_depsNoOp ^gradients/MatMul_17_grad/MatMul"^gradients/MatMul_17_grad/MatMul_1
�
1gradients/MatMul_17_grad/tuple/control_dependencyIdentitygradients/MatMul_17_grad/MatMul*^gradients/MatMul_17_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_17_grad/MatMul
�
3gradients/MatMul_17_grad/tuple/control_dependency_1Identity!gradients/MatMul_17_grad/MatMul_1*^gradients/MatMul_17_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_17_grad/MatMul_1
�
gradients/MatMul_18_grad/MatMulMatMul.gradients/add_18_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_18_grad/MatMul_1MatMulnext_state_3.gradients/add_18_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_18_grad/tuple/group_depsNoOp ^gradients/MatMul_18_grad/MatMul"^gradients/MatMul_18_grad/MatMul_1
�
1gradients/MatMul_18_grad/tuple/control_dependencyIdentitygradients/MatMul_18_grad/MatMul*^gradients/MatMul_18_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_18_grad/MatMul
�
3gradients/MatMul_18_grad/tuple/control_dependency_1Identity!gradients/MatMul_18_grad/MatMul_1*^gradients/MatMul_18_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_18_grad/MatMul_1
�
gradients/MatMul_19_grad/MatMulMatMul.gradients/add_19_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_19_grad/MatMul_1MatMulnext_state_4.gradients/add_19_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_19_grad/tuple/group_depsNoOp ^gradients/MatMul_19_grad/MatMul"^gradients/MatMul_19_grad/MatMul_1
�
1gradients/MatMul_19_grad/tuple/control_dependencyIdentitygradients/MatMul_19_grad/MatMul*^gradients/MatMul_19_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_19_grad/MatMul
�
3gradients/MatMul_19_grad/tuple/control_dependency_1Identity!gradients/MatMul_19_grad/MatMul_1*^gradients/MatMul_19_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_19_grad/MatMul_1
�
gradients/MatMul_20_grad/MatMulMatMul.gradients/add_20_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_20_grad/MatMul_1MatMulnext_state_5.gradients/add_20_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_20_grad/tuple/group_depsNoOp ^gradients/MatMul_20_grad/MatMul"^gradients/MatMul_20_grad/MatMul_1
�
1gradients/MatMul_20_grad/tuple/control_dependencyIdentitygradients/MatMul_20_grad/MatMul*^gradients/MatMul_20_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_20_grad/MatMul
�
3gradients/MatMul_20_grad/tuple/control_dependency_1Identity!gradients/MatMul_20_grad/MatMul_1*^gradients/MatMul_20_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_20_grad/MatMul_1
�
gradients/MatMul_21_grad/MatMulMatMul.gradients/add_21_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_21_grad/MatMul_1MatMulnext_state_6.gradients/add_21_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_21_grad/tuple/group_depsNoOp ^gradients/MatMul_21_grad/MatMul"^gradients/MatMul_21_grad/MatMul_1
�
1gradients/MatMul_21_grad/tuple/control_dependencyIdentitygradients/MatMul_21_grad/MatMul*^gradients/MatMul_21_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_21_grad/MatMul
�
3gradients/MatMul_21_grad/tuple/control_dependency_1Identity!gradients/MatMul_21_grad/MatMul_1*^gradients/MatMul_21_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_21_grad/MatMul_1
�
gradients/MatMul_22_grad/MatMulMatMul.gradients/add_22_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_22_grad/MatMul_1MatMulnext_state_7.gradients/add_22_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_22_grad/tuple/group_depsNoOp ^gradients/MatMul_22_grad/MatMul"^gradients/MatMul_22_grad/MatMul_1
�
1gradients/MatMul_22_grad/tuple/control_dependencyIdentitygradients/MatMul_22_grad/MatMul*^gradients/MatMul_22_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_22_grad/MatMul
�
3gradients/MatMul_22_grad/tuple/control_dependency_1Identity!gradients/MatMul_22_grad/MatMul_1*^gradients/MatMul_22_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_22_grad/MatMul_1
�
gradients/MatMul_23_grad/MatMulMatMul.gradients/add_23_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_23_grad/MatMul_1MatMulnext_state_8.gradients/add_23_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_23_grad/tuple/group_depsNoOp ^gradients/MatMul_23_grad/MatMul"^gradients/MatMul_23_grad/MatMul_1
�
1gradients/MatMul_23_grad/tuple/control_dependencyIdentitygradients/MatMul_23_grad/MatMul*^gradients/MatMul_23_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_23_grad/MatMul
�
3gradients/MatMul_23_grad/tuple/control_dependency_1Identity!gradients/MatMul_23_grad/MatMul_1*^gradients/MatMul_23_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_23_grad/MatMul_1
�
gradients/MatMul_24_grad/MatMulMatMul.gradients/add_24_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_24_grad/MatMul_1MatMulnext_state_9.gradients/add_24_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_24_grad/tuple/group_depsNoOp ^gradients/MatMul_24_grad/MatMul"^gradients/MatMul_24_grad/MatMul_1
�
1gradients/MatMul_24_grad/tuple/control_dependencyIdentitygradients/MatMul_24_grad/MatMul*^gradients/MatMul_24_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_24_grad/MatMul
�
3gradients/MatMul_24_grad/tuple/control_dependency_1Identity!gradients/MatMul_24_grad/MatMul_1*^gradients/MatMul_24_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_24_grad/MatMul_1
�
gradients/MatMul_25_grad/MatMulMatMul.gradients/add_25_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_25_grad/MatMul_1MatMulnext_state_10.gradients/add_25_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_25_grad/tuple/group_depsNoOp ^gradients/MatMul_25_grad/MatMul"^gradients/MatMul_25_grad/MatMul_1
�
1gradients/MatMul_25_grad/tuple/control_dependencyIdentitygradients/MatMul_25_grad/MatMul*^gradients/MatMul_25_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_25_grad/MatMul
�
3gradients/MatMul_25_grad/tuple/control_dependency_1Identity!gradients/MatMul_25_grad/MatMul_1*^gradients/MatMul_25_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_25_grad/MatMul_1
�
gradients/MatMul_26_grad/MatMulMatMul.gradients/add_26_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_26_grad/MatMul_1MatMulnext_state_11.gradients/add_26_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_26_grad/tuple/group_depsNoOp ^gradients/MatMul_26_grad/MatMul"^gradients/MatMul_26_grad/MatMul_1
�
1gradients/MatMul_26_grad/tuple/control_dependencyIdentitygradients/MatMul_26_grad/MatMul*^gradients/MatMul_26_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_26_grad/MatMul
�
3gradients/MatMul_26_grad/tuple/control_dependency_1Identity!gradients/MatMul_26_grad/MatMul_1*^gradients/MatMul_26_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_26_grad/MatMul_1
�
gradients/MatMul_27_grad/MatMulMatMul.gradients/add_27_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_27_grad/MatMul_1MatMulnext_state_12.gradients/add_27_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_27_grad/tuple/group_depsNoOp ^gradients/MatMul_27_grad/MatMul"^gradients/MatMul_27_grad/MatMul_1
�
1gradients/MatMul_27_grad/tuple/control_dependencyIdentitygradients/MatMul_27_grad/MatMul*^gradients/MatMul_27_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_27_grad/MatMul
�
3gradients/MatMul_27_grad/tuple/control_dependency_1Identity!gradients/MatMul_27_grad/MatMul_1*^gradients/MatMul_27_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_27_grad/MatMul_1
�
gradients/MatMul_28_grad/MatMulMatMul.gradients/add_28_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_28_grad/MatMul_1MatMulnext_state_13.gradients/add_28_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_28_grad/tuple/group_depsNoOp ^gradients/MatMul_28_grad/MatMul"^gradients/MatMul_28_grad/MatMul_1
�
1gradients/MatMul_28_grad/tuple/control_dependencyIdentitygradients/MatMul_28_grad/MatMul*^gradients/MatMul_28_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_28_grad/MatMul
�
3gradients/MatMul_28_grad/tuple/control_dependency_1Identity!gradients/MatMul_28_grad/MatMul_1*^gradients/MatMul_28_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_28_grad/MatMul_1
�
gradients/MatMul_29_grad/MatMulMatMul.gradients/add_29_grad/tuple/control_dependencyweight2/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_29_grad/MatMul_1MatMulnext_state_14.gradients/add_29_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_29_grad/tuple/group_depsNoOp ^gradients/MatMul_29_grad/MatMul"^gradients/MatMul_29_grad/MatMul_1
�
1gradients/MatMul_29_grad/tuple/control_dependencyIdentitygradients/MatMul_29_grad/MatMul*^gradients/MatMul_29_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_29_grad/MatMul
�
3gradients/MatMul_29_grad/tuple/control_dependency_1Identity!gradients/MatMul_29_grad/MatMul_1*^gradients/MatMul_29_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_29_grad/MatMul_1
�
gradients/AddNAddN0gradients/add_15_grad/tuple/control_dependency_10gradients/add_16_grad/tuple/control_dependency_10gradients/add_17_grad/tuple/control_dependency_10gradients/add_18_grad/tuple/control_dependency_10gradients/add_19_grad/tuple/control_dependency_10gradients/add_20_grad/tuple/control_dependency_10gradients/add_21_grad/tuple/control_dependency_10gradients/add_22_grad/tuple/control_dependency_10gradients/add_23_grad/tuple/control_dependency_10gradients/add_24_grad/tuple/control_dependency_10gradients/add_25_grad/tuple/control_dependency_10gradients/add_26_grad/tuple/control_dependency_10gradients/add_27_grad/tuple/control_dependency_10gradients/add_28_grad/tuple/control_dependency_10gradients/add_29_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_15_grad/Reshape_1*
N
�
%gradients/next_state_14_grad/TanhGradTanhGradnext_state_141gradients/MatMul_29_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
gradients/AddN_1AddN3gradients/MatMul_15_grad/tuple/control_dependency_13gradients/MatMul_16_grad/tuple/control_dependency_13gradients/MatMul_17_grad/tuple/control_dependency_13gradients/MatMul_18_grad/tuple/control_dependency_13gradients/MatMul_19_grad/tuple/control_dependency_13gradients/MatMul_20_grad/tuple/control_dependency_13gradients/MatMul_21_grad/tuple/control_dependency_13gradients/MatMul_22_grad/tuple/control_dependency_13gradients/MatMul_23_grad/tuple/control_dependency_13gradients/MatMul_24_grad/tuple/control_dependency_13gradients/MatMul_25_grad/tuple/control_dependency_13gradients/MatMul_26_grad/tuple/control_dependency_13gradients/MatMul_27_grad/tuple/control_dependency_13gradients/MatMul_28_grad/tuple/control_dependency_13gradients/MatMul_29_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_15_grad/MatMul_1*
N
l
gradients/add_14_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_14_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_14_grad/SumSum%gradients/next_state_14_grad/TanhGrad+gradients/add_14_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_14_grad/Sum_1Sum%gradients/next_state_14_grad/TanhGrad-gradients/add_14_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
�
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_14_grad/Reshape
�
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1
�
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_14_grad/MatMul_1MatMulinput_state_concat_14.gradients/add_14_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
�
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul
�
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1
k
)gradients/input_state_concat_14_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_14_grad/modFloorModinput_state_concat_14/axis)gradients/input_state_concat_14_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_14_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_14_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_14_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_14_grad/mod*gradients/input_state_concat_14_grad/Shape,gradients/input_state_concat_14_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_14_grad/SliceSlice1gradients/MatMul_14_grad/tuple/control_dependency1gradients/input_state_concat_14_grad/ConcatOffset*gradients/input_state_concat_14_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_14_grad/Slice_1Slice1gradients/MatMul_14_grad/tuple/control_dependency3gradients/input_state_concat_14_grad/ConcatOffset:1,gradients/input_state_concat_14_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_14_grad/tuple/group_depsNoOp+^gradients/input_state_concat_14_grad/Slice-^gradients/input_state_concat_14_grad/Slice_1
�
=gradients/input_state_concat_14_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_14_grad/Slice6^gradients/input_state_concat_14_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_14_grad/Slice
�
?gradients/input_state_concat_14_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_14_grad/Slice_16^gradients/input_state_concat_14_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_14_grad/Slice_1
�
gradients/AddN_2AddN1gradients/MatMul_28_grad/tuple/control_dependency?gradients/input_state_concat_14_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_28_grad/MatMul*
N
{
%gradients/next_state_13_grad/TanhGradTanhGradnext_state_13gradients/AddN_2*
T0*
_output_shapes

:
l
gradients/add_13_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_13_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_13_grad/SumSum%gradients/next_state_13_grad/TanhGrad+gradients/add_13_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_13_grad/Sum_1Sum%gradients/next_state_13_grad/TanhGrad-gradients/add_13_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
�
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_13_grad/Reshape
�
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1
�
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_13_grad/MatMul_1MatMulinput_state_concat_13.gradients/add_13_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
�
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
�
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1
k
)gradients/input_state_concat_13_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_13_grad/modFloorModinput_state_concat_13/axis)gradients/input_state_concat_13_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_13_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_13_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_13_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_13_grad/mod*gradients/input_state_concat_13_grad/Shape,gradients/input_state_concat_13_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_13_grad/SliceSlice1gradients/MatMul_13_grad/tuple/control_dependency1gradients/input_state_concat_13_grad/ConcatOffset*gradients/input_state_concat_13_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_13_grad/Slice_1Slice1gradients/MatMul_13_grad/tuple/control_dependency3gradients/input_state_concat_13_grad/ConcatOffset:1,gradients/input_state_concat_13_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_13_grad/tuple/group_depsNoOp+^gradients/input_state_concat_13_grad/Slice-^gradients/input_state_concat_13_grad/Slice_1
�
=gradients/input_state_concat_13_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_13_grad/Slice6^gradients/input_state_concat_13_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_13_grad/Slice
�
?gradients/input_state_concat_13_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_13_grad/Slice_16^gradients/input_state_concat_13_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_13_grad/Slice_1
�
gradients/AddN_3AddN1gradients/MatMul_27_grad/tuple/control_dependency?gradients/input_state_concat_13_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_27_grad/MatMul*
N
{
%gradients/next_state_12_grad/TanhGradTanhGradnext_state_12gradients/AddN_3*
T0*
_output_shapes

:
l
gradients/add_12_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_12_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_12_grad/SumSum%gradients/next_state_12_grad/TanhGrad+gradients/add_12_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_12_grad/Sum_1Sum%gradients/next_state_12_grad/TanhGrad-gradients/add_12_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
�
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_12_grad/Reshape
�
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1
�
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_12_grad/MatMul_1MatMulinput_state_concat_12.gradients/add_12_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
�
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
�
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1
k
)gradients/input_state_concat_12_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_12_grad/modFloorModinput_state_concat_12/axis)gradients/input_state_concat_12_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_12_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_12_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_12_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_12_grad/mod*gradients/input_state_concat_12_grad/Shape,gradients/input_state_concat_12_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_12_grad/SliceSlice1gradients/MatMul_12_grad/tuple/control_dependency1gradients/input_state_concat_12_grad/ConcatOffset*gradients/input_state_concat_12_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_12_grad/Slice_1Slice1gradients/MatMul_12_grad/tuple/control_dependency3gradients/input_state_concat_12_grad/ConcatOffset:1,gradients/input_state_concat_12_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_12_grad/tuple/group_depsNoOp+^gradients/input_state_concat_12_grad/Slice-^gradients/input_state_concat_12_grad/Slice_1
�
=gradients/input_state_concat_12_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_12_grad/Slice6^gradients/input_state_concat_12_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_12_grad/Slice
�
?gradients/input_state_concat_12_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_12_grad/Slice_16^gradients/input_state_concat_12_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_12_grad/Slice_1
�
gradients/AddN_4AddN1gradients/MatMul_26_grad/tuple/control_dependency?gradients/input_state_concat_12_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_26_grad/MatMul*
N
{
%gradients/next_state_11_grad/TanhGradTanhGradnext_state_11gradients/AddN_4*
T0*
_output_shapes

:
l
gradients/add_11_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_11_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_11_grad/SumSum%gradients/next_state_11_grad/TanhGrad+gradients/add_11_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_11_grad/Sum_1Sum%gradients/next_state_11_grad/TanhGrad-gradients/add_11_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
�
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_11_grad/Reshape
�
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1
�
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_11_grad/MatMul_1MatMulinput_state_concat_11.gradients/add_11_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
�
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
�
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1
k
)gradients/input_state_concat_11_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_11_grad/modFloorModinput_state_concat_11/axis)gradients/input_state_concat_11_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_11_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_11_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_11_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_11_grad/mod*gradients/input_state_concat_11_grad/Shape,gradients/input_state_concat_11_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_11_grad/SliceSlice1gradients/MatMul_11_grad/tuple/control_dependency1gradients/input_state_concat_11_grad/ConcatOffset*gradients/input_state_concat_11_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_11_grad/Slice_1Slice1gradients/MatMul_11_grad/tuple/control_dependency3gradients/input_state_concat_11_grad/ConcatOffset:1,gradients/input_state_concat_11_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_11_grad/tuple/group_depsNoOp+^gradients/input_state_concat_11_grad/Slice-^gradients/input_state_concat_11_grad/Slice_1
�
=gradients/input_state_concat_11_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_11_grad/Slice6^gradients/input_state_concat_11_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_11_grad/Slice
�
?gradients/input_state_concat_11_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_11_grad/Slice_16^gradients/input_state_concat_11_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_11_grad/Slice_1
�
gradients/AddN_5AddN1gradients/MatMul_25_grad/tuple/control_dependency?gradients/input_state_concat_11_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_25_grad/MatMul*
N
{
%gradients/next_state_10_grad/TanhGradTanhGradnext_state_10gradients/AddN_5*
T0*
_output_shapes

:
l
gradients/add_10_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_10_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_10_grad/SumSum%gradients/next_state_10_grad/TanhGrad+gradients/add_10_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_10_grad/Sum_1Sum%gradients/next_state_10_grad/TanhGrad-gradients/add_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
�
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_10_grad/Reshape
�
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1
�
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
!gradients/MatMul_10_grad/MatMul_1MatMulinput_state_concat_10.gradients/add_10_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
�
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
�
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1
k
)gradients/input_state_concat_10_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/input_state_concat_10_grad/modFloorModinput_state_concat_10/axis)gradients/input_state_concat_10_grad/Rank*
T0*
_output_shapes
: 
{
*gradients/input_state_concat_10_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
}
,gradients/input_state_concat_10_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
1gradients/input_state_concat_10_grad/ConcatOffsetConcatOffset(gradients/input_state_concat_10_grad/mod*gradients/input_state_concat_10_grad/Shape,gradients/input_state_concat_10_grad/Shape_1* 
_output_shapes
::*
N
�
*gradients/input_state_concat_10_grad/SliceSlice1gradients/MatMul_10_grad/tuple/control_dependency1gradients/input_state_concat_10_grad/ConcatOffset*gradients/input_state_concat_10_grad/Shape*
T0*
Index0*
_output_shapes

:
�
,gradients/input_state_concat_10_grad/Slice_1Slice1gradients/MatMul_10_grad/tuple/control_dependency3gradients/input_state_concat_10_grad/ConcatOffset:1,gradients/input_state_concat_10_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
5gradients/input_state_concat_10_grad/tuple/group_depsNoOp+^gradients/input_state_concat_10_grad/Slice-^gradients/input_state_concat_10_grad/Slice_1
�
=gradients/input_state_concat_10_grad/tuple/control_dependencyIdentity*gradients/input_state_concat_10_grad/Slice6^gradients/input_state_concat_10_grad/tuple/group_deps*
T0*
_output_shapes

:*=
_class3
1/loc:@gradients/input_state_concat_10_grad/Slice
�
?gradients/input_state_concat_10_grad/tuple/control_dependency_1Identity,gradients/input_state_concat_10_grad/Slice_16^gradients/input_state_concat_10_grad/tuple/group_deps*
T0*
_output_shapes

:*?
_class5
31loc:@gradients/input_state_concat_10_grad/Slice_1
�
gradients/AddN_6AddN1gradients/MatMul_24_grad/tuple/control_dependency?gradients/input_state_concat_10_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_24_grad/MatMul*
N
y
$gradients/next_state_9_grad/TanhGradTanhGradnext_state_9gradients/AddN_6*
T0*
_output_shapes

:
k
gradients/add_9_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_9_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_9_grad/SumSum$gradients/next_state_9_grad/TanhGrad*gradients/add_9_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_9_grad/Sum_1Sum$gradients/next_state_9_grad/TanhGrad,gradients/add_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
�
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_9_grad/Reshape
�
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1
�
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_9_grad/MatMul_1MatMulinput_state_concat_9-gradients/add_9_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
�
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
�
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1
j
(gradients/input_state_concat_9_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_9_grad/modFloorModinput_state_concat_9/axis(gradients/input_state_concat_9_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_9_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_9_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_9_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_9_grad/mod)gradients/input_state_concat_9_grad/Shape+gradients/input_state_concat_9_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_9_grad/SliceSlice0gradients/MatMul_9_grad/tuple/control_dependency0gradients/input_state_concat_9_grad/ConcatOffset)gradients/input_state_concat_9_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_9_grad/Slice_1Slice0gradients/MatMul_9_grad/tuple/control_dependency2gradients/input_state_concat_9_grad/ConcatOffset:1+gradients/input_state_concat_9_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_9_grad/tuple/group_depsNoOp*^gradients/input_state_concat_9_grad/Slice,^gradients/input_state_concat_9_grad/Slice_1
�
<gradients/input_state_concat_9_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_9_grad/Slice5^gradients/input_state_concat_9_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_9_grad/Slice
�
>gradients/input_state_concat_9_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_9_grad/Slice_15^gradients/input_state_concat_9_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_9_grad/Slice_1
�
gradients/AddN_7AddN1gradients/MatMul_23_grad/tuple/control_dependency>gradients/input_state_concat_9_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_23_grad/MatMul*
N
y
$gradients/next_state_8_grad/TanhGradTanhGradnext_state_8gradients/AddN_7*
T0*
_output_shapes

:
k
gradients/add_8_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_8_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_8_grad/SumSum$gradients/next_state_8_grad/TanhGrad*gradients/add_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_8_grad/Sum_1Sum$gradients/next_state_8_grad/TanhGrad,gradients/add_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
�
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_8_grad/Reshape
�
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1
�
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_8_grad/MatMul_1MatMulinput_state_concat_8-gradients/add_8_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
�
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
�
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1
j
(gradients/input_state_concat_8_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_8_grad/modFloorModinput_state_concat_8/axis(gradients/input_state_concat_8_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_8_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_8_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_8_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_8_grad/mod)gradients/input_state_concat_8_grad/Shape+gradients/input_state_concat_8_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_8_grad/SliceSlice0gradients/MatMul_8_grad/tuple/control_dependency0gradients/input_state_concat_8_grad/ConcatOffset)gradients/input_state_concat_8_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_8_grad/Slice_1Slice0gradients/MatMul_8_grad/tuple/control_dependency2gradients/input_state_concat_8_grad/ConcatOffset:1+gradients/input_state_concat_8_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_8_grad/tuple/group_depsNoOp*^gradients/input_state_concat_8_grad/Slice,^gradients/input_state_concat_8_grad/Slice_1
�
<gradients/input_state_concat_8_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_8_grad/Slice5^gradients/input_state_concat_8_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_8_grad/Slice
�
>gradients/input_state_concat_8_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_8_grad/Slice_15^gradients/input_state_concat_8_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_8_grad/Slice_1
�
gradients/AddN_8AddN1gradients/MatMul_22_grad/tuple/control_dependency>gradients/input_state_concat_8_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_22_grad/MatMul*
N
y
$gradients/next_state_7_grad/TanhGradTanhGradnext_state_7gradients/AddN_8*
T0*
_output_shapes

:
k
gradients/add_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_7_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_7_grad/SumSum$gradients/next_state_7_grad/TanhGrad*gradients/add_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_7_grad/Sum_1Sum$gradients/next_state_7_grad/TanhGrad,gradients/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
�
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_7_grad/Reshape
�
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1
�
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_7_grad/MatMul_1MatMulinput_state_concat_7-gradients/add_7_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
�
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
�
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1
j
(gradients/input_state_concat_7_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_7_grad/modFloorModinput_state_concat_7/axis(gradients/input_state_concat_7_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_7_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_7_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_7_grad/mod)gradients/input_state_concat_7_grad/Shape+gradients/input_state_concat_7_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_7_grad/SliceSlice0gradients/MatMul_7_grad/tuple/control_dependency0gradients/input_state_concat_7_grad/ConcatOffset)gradients/input_state_concat_7_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_7_grad/Slice_1Slice0gradients/MatMul_7_grad/tuple/control_dependency2gradients/input_state_concat_7_grad/ConcatOffset:1+gradients/input_state_concat_7_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_7_grad/tuple/group_depsNoOp*^gradients/input_state_concat_7_grad/Slice,^gradients/input_state_concat_7_grad/Slice_1
�
<gradients/input_state_concat_7_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_7_grad/Slice5^gradients/input_state_concat_7_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_7_grad/Slice
�
>gradients/input_state_concat_7_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_7_grad/Slice_15^gradients/input_state_concat_7_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_7_grad/Slice_1
�
gradients/AddN_9AddN1gradients/MatMul_21_grad/tuple/control_dependency>gradients/input_state_concat_7_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_21_grad/MatMul*
N
y
$gradients/next_state_6_grad/TanhGradTanhGradnext_state_6gradients/AddN_9*
T0*
_output_shapes

:
k
gradients/add_6_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_6_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_6_grad/SumSum$gradients/next_state_6_grad/TanhGrad*gradients/add_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_6_grad/Sum_1Sum$gradients/next_state_6_grad/TanhGrad,gradients/add_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
�
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_6_grad/Reshape
�
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1
�
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_6_grad/MatMul_1MatMulinput_state_concat_6-gradients/add_6_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
�
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
�
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1
j
(gradients/input_state_concat_6_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_6_grad/modFloorModinput_state_concat_6/axis(gradients/input_state_concat_6_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_6_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_6_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_6_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_6_grad/mod)gradients/input_state_concat_6_grad/Shape+gradients/input_state_concat_6_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_6_grad/SliceSlice0gradients/MatMul_6_grad/tuple/control_dependency0gradients/input_state_concat_6_grad/ConcatOffset)gradients/input_state_concat_6_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_6_grad/Slice_1Slice0gradients/MatMul_6_grad/tuple/control_dependency2gradients/input_state_concat_6_grad/ConcatOffset:1+gradients/input_state_concat_6_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_6_grad/tuple/group_depsNoOp*^gradients/input_state_concat_6_grad/Slice,^gradients/input_state_concat_6_grad/Slice_1
�
<gradients/input_state_concat_6_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_6_grad/Slice5^gradients/input_state_concat_6_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_6_grad/Slice
�
>gradients/input_state_concat_6_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_6_grad/Slice_15^gradients/input_state_concat_6_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_6_grad/Slice_1
�
gradients/AddN_10AddN1gradients/MatMul_20_grad/tuple/control_dependency>gradients/input_state_concat_6_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_20_grad/MatMul*
N
z
$gradients/next_state_5_grad/TanhGradTanhGradnext_state_5gradients/AddN_10*
T0*
_output_shapes

:
k
gradients/add_5_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_5_grad/SumSum$gradients/next_state_5_grad/TanhGrad*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_5_grad/Sum_1Sum$gradients/next_state_5_grad/TanhGrad,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
�
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_5_grad/Reshape
�
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
�
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_5_grad/MatMul_1MatMulinput_state_concat_5-gradients/add_5_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
�
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
�
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1
j
(gradients/input_state_concat_5_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_5_grad/modFloorModinput_state_concat_5/axis(gradients/input_state_concat_5_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_5_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_5_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_5_grad/mod)gradients/input_state_concat_5_grad/Shape+gradients/input_state_concat_5_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_5_grad/SliceSlice0gradients/MatMul_5_grad/tuple/control_dependency0gradients/input_state_concat_5_grad/ConcatOffset)gradients/input_state_concat_5_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_5_grad/Slice_1Slice0gradients/MatMul_5_grad/tuple/control_dependency2gradients/input_state_concat_5_grad/ConcatOffset:1+gradients/input_state_concat_5_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_5_grad/tuple/group_depsNoOp*^gradients/input_state_concat_5_grad/Slice,^gradients/input_state_concat_5_grad/Slice_1
�
<gradients/input_state_concat_5_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_5_grad/Slice5^gradients/input_state_concat_5_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_5_grad/Slice
�
>gradients/input_state_concat_5_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_5_grad/Slice_15^gradients/input_state_concat_5_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_5_grad/Slice_1
�
gradients/AddN_11AddN1gradients/MatMul_19_grad/tuple/control_dependency>gradients/input_state_concat_5_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_19_grad/MatMul*
N
z
$gradients/next_state_4_grad/TanhGradTanhGradnext_state_4gradients/AddN_11*
T0*
_output_shapes

:
k
gradients/add_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_4_grad/SumSum$gradients/next_state_4_grad/TanhGrad*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_4_grad/Sum_1Sum$gradients/next_state_4_grad/TanhGrad,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_4_grad/Reshape
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
�
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_4_grad/MatMul_1MatMulinput_state_concat_4-gradients/add_4_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
�
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
�
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1
j
(gradients/input_state_concat_4_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_4_grad/modFloorModinput_state_concat_4/axis(gradients/input_state_concat_4_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_4_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_4_grad/mod)gradients/input_state_concat_4_grad/Shape+gradients/input_state_concat_4_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_4_grad/SliceSlice0gradients/MatMul_4_grad/tuple/control_dependency0gradients/input_state_concat_4_grad/ConcatOffset)gradients/input_state_concat_4_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_4_grad/Slice_1Slice0gradients/MatMul_4_grad/tuple/control_dependency2gradients/input_state_concat_4_grad/ConcatOffset:1+gradients/input_state_concat_4_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_4_grad/tuple/group_depsNoOp*^gradients/input_state_concat_4_grad/Slice,^gradients/input_state_concat_4_grad/Slice_1
�
<gradients/input_state_concat_4_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_4_grad/Slice5^gradients/input_state_concat_4_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_4_grad/Slice
�
>gradients/input_state_concat_4_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_4_grad/Slice_15^gradients/input_state_concat_4_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_4_grad/Slice_1
�
gradients/AddN_12AddN1gradients/MatMul_18_grad/tuple/control_dependency>gradients/input_state_concat_4_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_18_grad/MatMul*
N
z
$gradients/next_state_3_grad/TanhGradTanhGradnext_state_3gradients/AddN_12*
T0*
_output_shapes

:
k
gradients/add_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_3_grad/SumSum$gradients/next_state_3_grad/TanhGrad*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_3_grad/Sum_1Sum$gradients/next_state_3_grad/TanhGrad,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_3_grad/Reshape
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
�
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_3_grad/MatMul_1MatMulinput_state_concat_3-gradients/add_3_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
�
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
�
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1
j
(gradients/input_state_concat_3_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_3_grad/modFloorModinput_state_concat_3/axis(gradients/input_state_concat_3_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_3_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_3_grad/mod)gradients/input_state_concat_3_grad/Shape+gradients/input_state_concat_3_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_3_grad/SliceSlice0gradients/MatMul_3_grad/tuple/control_dependency0gradients/input_state_concat_3_grad/ConcatOffset)gradients/input_state_concat_3_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_3_grad/Slice_1Slice0gradients/MatMul_3_grad/tuple/control_dependency2gradients/input_state_concat_3_grad/ConcatOffset:1+gradients/input_state_concat_3_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_3_grad/tuple/group_depsNoOp*^gradients/input_state_concat_3_grad/Slice,^gradients/input_state_concat_3_grad/Slice_1
�
<gradients/input_state_concat_3_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_3_grad/Slice5^gradients/input_state_concat_3_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_3_grad/Slice
�
>gradients/input_state_concat_3_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_3_grad/Slice_15^gradients/input_state_concat_3_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_3_grad/Slice_1
�
gradients/AddN_13AddN1gradients/MatMul_17_grad/tuple/control_dependency>gradients/input_state_concat_3_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_17_grad/MatMul*
N
z
$gradients/next_state_2_grad/TanhGradTanhGradnext_state_2gradients/AddN_13*
T0*
_output_shapes

:
k
gradients/add_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_2_grad/SumSum$gradients/next_state_2_grad/TanhGrad*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_2_grad/Sum_1Sum$gradients/next_state_2_grad/TanhGrad,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_2_grad/Reshape
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
�
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_2_grad/MatMul_1MatMulinput_state_concat_2-gradients/add_2_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
�
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
�
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1
j
(gradients/input_state_concat_2_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_2_grad/modFloorModinput_state_concat_2/axis(gradients/input_state_concat_2_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_2_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_2_grad/mod)gradients/input_state_concat_2_grad/Shape+gradients/input_state_concat_2_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_2_grad/SliceSlice0gradients/MatMul_2_grad/tuple/control_dependency0gradients/input_state_concat_2_grad/ConcatOffset)gradients/input_state_concat_2_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_2_grad/Slice_1Slice0gradients/MatMul_2_grad/tuple/control_dependency2gradients/input_state_concat_2_grad/ConcatOffset:1+gradients/input_state_concat_2_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_2_grad/tuple/group_depsNoOp*^gradients/input_state_concat_2_grad/Slice,^gradients/input_state_concat_2_grad/Slice_1
�
<gradients/input_state_concat_2_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_2_grad/Slice5^gradients/input_state_concat_2_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_2_grad/Slice
�
>gradients/input_state_concat_2_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_2_grad/Slice_15^gradients/input_state_concat_2_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_2_grad/Slice_1
�
gradients/AddN_14AddN1gradients/MatMul_16_grad/tuple/control_dependency>gradients/input_state_concat_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_16_grad/MatMul*
N
z
$gradients/next_state_1_grad/TanhGradTanhGradnext_state_1gradients/AddN_14*
T0*
_output_shapes

:
k
gradients/add_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_1_grad/SumSum$gradients/next_state_1_grad/TanhGrad*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_1_grad/Sum_1Sum$gradients/next_state_1_grad/TanhGrad,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_1_grad/Reshape
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
 gradients/MatMul_1_grad/MatMul_1MatMulinput_state_concat_1-gradients/add_1_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
j
(gradients/input_state_concat_1_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
'gradients/input_state_concat_1_grad/modFloorModinput_state_concat_1/axis(gradients/input_state_concat_1_grad/Rank*
T0*
_output_shapes
: 
z
)gradients/input_state_concat_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
|
+gradients/input_state_concat_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
0gradients/input_state_concat_1_grad/ConcatOffsetConcatOffset'gradients/input_state_concat_1_grad/mod)gradients/input_state_concat_1_grad/Shape+gradients/input_state_concat_1_grad/Shape_1* 
_output_shapes
::*
N
�
)gradients/input_state_concat_1_grad/SliceSlice0gradients/MatMul_1_grad/tuple/control_dependency0gradients/input_state_concat_1_grad/ConcatOffset)gradients/input_state_concat_1_grad/Shape*
T0*
Index0*
_output_shapes

:
�
+gradients/input_state_concat_1_grad/Slice_1Slice0gradients/MatMul_1_grad/tuple/control_dependency2gradients/input_state_concat_1_grad/ConcatOffset:1+gradients/input_state_concat_1_grad/Shape_1*
T0*
Index0*
_output_shapes

:
�
4gradients/input_state_concat_1_grad/tuple/group_depsNoOp*^gradients/input_state_concat_1_grad/Slice,^gradients/input_state_concat_1_grad/Slice_1
�
<gradients/input_state_concat_1_grad/tuple/control_dependencyIdentity)gradients/input_state_concat_1_grad/Slice5^gradients/input_state_concat_1_grad/tuple/group_deps*
T0*
_output_shapes

:*<
_class2
0.loc:@gradients/input_state_concat_1_grad/Slice
�
>gradients/input_state_concat_1_grad/tuple/control_dependency_1Identity+gradients/input_state_concat_1_grad/Slice_15^gradients/input_state_concat_1_grad/tuple/group_deps*
T0*
_output_shapes

:*>
_class4
20loc:@gradients/input_state_concat_1_grad/Slice_1
�
gradients/AddN_15AddN1gradients/MatMul_15_grad/tuple/control_dependency>gradients/input_state_concat_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_15_grad/MatMul*
N
v
"gradients/next_state_grad/TanhGradTanhGrad
next_stategradients/AddN_15*
T0*
_output_shapes

:
i
gradients/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
k
gradients/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSum"gradients/next_state_grad/TanhGrad(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_grad/Sum_1Sum"gradients/next_state_grad/TanhGrad*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*-
_class#
!loc:@gradients/add_grad/Reshape
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_grad/Reshape_1
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyweight1/read*
transpose_a( *
transpose_b(*
T0*
_output_shapes

:
�
gradients/MatMul_grad/MatMul_1MatMulinput_state_concat+gradients/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
�
gradients/AddN_16AddN0gradients/add_14_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1*
N
�
gradients/AddN_17AddN3gradients/MatMul_14_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_10gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1*
N
�
!weight1/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@weight1*
_output_shapes

:*
valueB*���=
�
weight1/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@weight1*
shared_name 
�
weight1/Adagrad/AssignAssignweight1/Adagrad!weight1/Adagrad/Initializer/Const*
T0*
_class
loc:@weight1*
_output_shapes

:*
validate_shape(*
use_locking(
v
weight1/Adagrad/readIdentityweight1/Adagrad*
T0*
_output_shapes

:*
_class
loc:@weight1
�
"Variable/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@Variable*
_output_shapes

:*
valueB*���=
�
Variable/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@Variable*
shared_name 
�
Variable/Adagrad/AssignAssignVariable/Adagrad"Variable/Adagrad/Initializer/Const*
T0*
_class
loc:@Variable*
_output_shapes

:*
validate_shape(*
use_locking(
y
Variable/Adagrad/readIdentityVariable/Adagrad*
T0*
_output_shapes

:*
_class
loc:@Variable
�
!weight2/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@weight2*
_output_shapes

:*
valueB*���=
�
weight2/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@weight2*
shared_name 
�
weight2/Adagrad/AssignAssignweight2/Adagrad!weight2/Adagrad/Initializer/Const*
T0*
_class
loc:@weight2*
_output_shapes

:*
validate_shape(*
use_locking(
v
weight2/Adagrad/readIdentityweight2/Adagrad*
T0*
_output_shapes

:*
_class
loc:@weight2
�
$Variable_1/Adagrad/Initializer/ConstConst*
dtype0*
_class
loc:@Variable_1*
_output_shapes

:*
valueB*���=
�
Variable_1/Adagrad
VariableV2*
	container *
_output_shapes

:*
shape
:*
dtype0*
_class
loc:@Variable_1*
shared_name 
�
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
T0*
_class
loc:@Variable_1*
_output_shapes

:*
validate_shape(*
use_locking(

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
T0*
_output_shapes

:*
_class
loc:@Variable_1
[
training/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *���>
�
$training/update_weight1/ApplyAdagradApplyAdagradweight1weight1/Adagradtraining/learning_rategradients/AddN_17*
T0*
_output_shapes

:*
_class
loc:@weight1*
use_locking( 
�
%training/update_Variable/ApplyAdagradApplyAdagradVariableVariable/Adagradtraining/learning_rategradients/AddN_16*
T0*
_output_shapes

:*
_class
loc:@Variable*
use_locking( 
�
$training/update_weight2/ApplyAdagradApplyAdagradweight2weight2/Adagradtraining/learning_rategradients/AddN_1*
T0*
_output_shapes

:*
_class
loc:@weight2*
use_locking( 
�
'training/update_Variable_1/ApplyAdagradApplyAdagrad
Variable_1Variable_1/Adagradtraining/learning_rategradients/AddN*
T0*
_output_shapes

:*
_class
loc:@Variable_1*
use_locking( 
�
trainingNoOp%^training/update_weight1/ApplyAdagrad&^training/update_Variable/ApplyAdagrad%^training/update_weight2/ApplyAdagrad(^training/update_Variable_1/ApplyAdagrad""�
trainable_variables�