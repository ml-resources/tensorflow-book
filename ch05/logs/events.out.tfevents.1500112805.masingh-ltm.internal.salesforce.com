       �K"	  @�yZ�Abrain.Event:2?�;���     qah	�H�yZ�A"��
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
value`B^"P`M?�A�=�w?k?D	?y?�_X?�nG>�М<�g�>��>���=�g�=�]>cY?��>׊?�6q>9�=���>
{
weight1
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
shape
:*
	container 
�
weight1/AssignAssignweight1weight1/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@weight1*
T0
f
weight1/readIdentityweight1*
_output_shapes

:*
_class
loc:@weight1*
T0
w
Variable/initial_valueConst*
dtype0*
_output_shapes

:*)
value B"                
|
Variable
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
shape
:*
	container 
�
Variable/AssignAssignVariableVariable/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@Variable*
T0
i
Variable/readIdentityVariable*
_output_shapes

:*
_class
loc:@Variable*
T0
�
weight2/initial_valueConst*
dtype0*
_output_shapes

:*9
value0B." ~�R?��>Z��>��(?N��>XP�><w?�%�>
{
weight2
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
shape
:*
	container 
�
weight2/AssignAssignweight2weight2/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@weight2*
T0
f
weight2/readIdentityweight2*
_output_shapes

:*
_class
loc:@weight2*
T0
q
Variable_1/initial_valueConst*
dtype0*
_output_shapes

:*!
valueB"        
~

Variable_1
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
shape
:*
	container 
�
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@Variable_1*
T0
o
Variable_1/readIdentity
Variable_1*
_output_shapes

:*
_class
loc:@Variable_1*
T0
S
weights/tagConst*
dtype0*
_output_shapes
: *
valueB Bweights
W
weightsHistogramSummaryweights/tagweight1/read*
_output_shapes
: *
T0
Q
split/split_dimConst*
dtype0*
_output_shapes
: *
value	B :
�
splitSplitsplit/split_dimx_input*
	num_split*�
_output_shapes�
�:::::::::::::::*
T0
�
unstackUnpacky_input*n
_output_shapes\
Z:::::::::::::::*	
num*

axis*
T0
�
;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�Q�*-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *�Q?*-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
Crnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniformRandomUniform;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shape*
seed2 *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
dtype0*

seed *
_output_shapes

:
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/subSub9rnn/basic_rnn_cell/weights/Initializer/random_uniform/max9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*
_output_shapes
: *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mulMulCrnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniform9rnn/basic_rnn_cell/weights/Initializer/random_uniform/sub*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
5rnn/basic_rnn_cell/weights/Initializer/random_uniformAdd9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mul9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
rnn/basic_rnn_cell/weights
VariableV2*
shared_name *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
	container *
dtype0*
_output_shapes

:*
shape
:
�
!rnn/basic_rnn_cell/weights/AssignAssignrnn/basic_rnn_cell/weights5rnn/basic_rnn_cell/weights/Initializer/random_uniform*
validate_shape(*
use_locking(*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
p
rnn/basic_rnn_cell/weights/readIdentityrnn/basic_rnn_cell/weights*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/concatConcatV2splitrnn_init_state/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulMatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell/biases/Initializer/ConstConst*
dtype0*
_output_shapes
:*
valueB*    *,
_class"
 loc:@rnn/basic_rnn_cell/biases
�
rnn/basic_rnn_cell/biases
VariableV2*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/biases*
	container *
dtype0*
_output_shapes
:*
shape:
�
 rnn/basic_rnn_cell/biases/AssignAssignrnn/basic_rnn_cell/biases+rnn/basic_rnn_cell/biases/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0
j
rnn/basic_rnn_cell/biases/readIdentityrnn/basic_rnn_cell/biases*
_output_shapes
:*
T0
�
+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAddBiasAdd*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
u
rnn/basic_rnn_cell/TanhTanh+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/concatConcatV2split:1rnn/basic_rnn_cell/Tanh/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_1/TanhTanh+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/concatConcatV2split:2rnn/basic_rnn_cell_1/Tanh/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_2/TanhTanh+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/concatConcatV2split:3rnn/basic_rnn_cell_2/Tanh/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_3/TanhTanh+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/concatConcatV2split:4rnn/basic_rnn_cell_3/Tanh/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_4/TanhTanh+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/concatConcatV2split:5rnn/basic_rnn_cell_4/Tanh/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_5/TanhTanh+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/concatConcatV2split:6rnn/basic_rnn_cell_5/Tanh/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_6/TanhTanh+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/concatConcatV2split:7rnn/basic_rnn_cell_6/Tanh/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_7/TanhTanh+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/concatConcatV2split:8rnn/basic_rnn_cell_7/Tanh/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_8/TanhTanh+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/concatConcatV2split:9rnn/basic_rnn_cell_8/Tanh/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_9/TanhTanh+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/concatConcatV2split:10rnn/basic_rnn_cell_9/Tanh0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_10/TanhTanh,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/concatConcatV2split:11rnn/basic_rnn_cell_10/Tanh0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_11/TanhTanh,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/concatConcatV2split:12rnn/basic_rnn_cell_11/Tanh0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_12/TanhTanh,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/concatConcatV2split:13rnn/basic_rnn_cell_12/Tanh0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_13/TanhTanh,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/concatConcatV2split:14rnn/basic_rnn_cell_13/Tanh0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_14/TanhTanh,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
�
MatMulMatMulrnn/basic_rnn_cell/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
L
addAddMatMulVariable_1/read*
_output_shapes

:*
T0
�
MatMul_1MatMulrnn/basic_rnn_cell_1/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_1AddMatMul_1Variable_1/read*
_output_shapes

:*
T0
�
MatMul_2MatMulrnn/basic_rnn_cell_2/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_2AddMatMul_2Variable_1/read*
_output_shapes

:*
T0
�
MatMul_3MatMulrnn/basic_rnn_cell_3/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_3AddMatMul_3Variable_1/read*
_output_shapes

:*
T0
�
MatMul_4MatMulrnn/basic_rnn_cell_4/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_4AddMatMul_4Variable_1/read*
_output_shapes

:*
T0
�
MatMul_5MatMulrnn/basic_rnn_cell_5/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_5AddMatMul_5Variable_1/read*
_output_shapes

:*
T0
�
MatMul_6MatMulrnn/basic_rnn_cell_6/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_6AddMatMul_6Variable_1/read*
_output_shapes

:*
T0
�
MatMul_7MatMulrnn/basic_rnn_cell_7/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_7AddMatMul_7Variable_1/read*
_output_shapes

:*
T0
�
MatMul_8MatMulrnn/basic_rnn_cell_8/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_8AddMatMul_8Variable_1/read*
_output_shapes

:*
T0
�
MatMul_9MatMulrnn/basic_rnn_cell_9/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_9AddMatMul_9Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_10MatMulrnn/basic_rnn_cell_10/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_10Add	MatMul_10Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_11MatMulrnn/basic_rnn_cell_11/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_11Add	MatMul_11Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_12MatMulrnn/basic_rnn_cell_12/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_12Add	MatMul_12Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_13MatMulrnn/basic_rnn_cell_13/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_13Add	MatMul_13Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_14MatMulrnn/basic_rnn_cell_14/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_14Add	MatMul_14Variable_1/read*
_output_shapes

:*
T0
@
SoftmaxSoftmaxadd*
_output_shapes

:*
T0
D
	Softmax_1Softmaxadd_1*
_output_shapes

:*
T0
D
	Softmax_2Softmaxadd_2*
_output_shapes

:*
T0
D
	Softmax_3Softmaxadd_3*
_output_shapes

:*
T0
D
	Softmax_4Softmaxadd_4*
_output_shapes

:*
T0
D
	Softmax_5Softmaxadd_5*
_output_shapes

:*
T0
D
	Softmax_6Softmaxadd_6*
_output_shapes

:*
T0
D
	Softmax_7Softmaxadd_7*
_output_shapes

:*
T0
D
	Softmax_8Softmaxadd_8*
_output_shapes

:*
T0
D
	Softmax_9Softmaxadd_9*
_output_shapes

:*
T0
F

Softmax_10Softmaxadd_10*
_output_shapes

:*
T0
F

Softmax_11Softmaxadd_11*
_output_shapes

:*
T0
F

Softmax_12Softmaxadd_12*
_output_shapes

:*
T0
F

Softmax_13Softmaxadd_13*
_output_shapes

:*
T0
F

Softmax_14Softmaxadd_14*
_output_shapes

:*
T0
s
)SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsaddunstack*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_1/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_1	unstack:1*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_2/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_2	unstack:2*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_3/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_3	unstack:3*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_4/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_4	unstack:4*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_5/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_5	unstack:5*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_6/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_6	unstack:6*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_7/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_7	unstack:7*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_8/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_8	unstack:8*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_9/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_9	unstack:9*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_10/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_10
unstack:10*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_11/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_11
unstack:11*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_12/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_12
unstack:12*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_13/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_13
unstack:13*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_14/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_14
unstack:14*
Tlabels0*$
_output_shapes
::*
T0
�	
Rank/packedPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
N*
_output_shapes

:*

axis *
T0
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
N*
_output_shapes

:*

axis *
T0
i

total_lossMeantotal_loss/inputrange*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
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
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
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
gradients/total_loss_grad/addAddrangegradients/total_loss_grad/Size*
_output_shapes
:*
T0
�
gradients/total_loss_grad/modFloorModgradients/total_loss_grad/addgradients/total_loss_grad/Size*
_output_shapes
:*
T0
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
gradients/total_loss_grad/FillFill!gradients/total_loss_grad/Shape_1$gradients/total_loss_grad/Fill/value*
_output_shapes
:*
T0
�
'gradients/total_loss_grad/DynamicStitchDynamicStitchgradients/total_loss_grad/rangegradients/total_loss_grad/modgradients/total_loss_grad/Shapegradients/total_loss_grad/Fill*
N*#
_output_shapes
:���������*
T0
e
#gradients/total_loss_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
!gradients/total_loss_grad/MaximumMaximum'gradients/total_loss_grad/DynamicStitch#gradients/total_loss_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
"gradients/total_loss_grad/floordivFloorDivgradients/total_loss_grad/Shape!gradients/total_loss_grad/Maximum*
_output_shapes
:*
T0
�
!gradients/total_loss_grad/ReshapeReshapegradients/Fill'gradients/total_loss_grad/DynamicStitch*
_output_shapes
:*
T0*
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
gradients/total_loss_grad/ProdProd!gradients/total_loss_grad/Shape_2gradients/total_loss_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
k
!gradients/total_loss_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
 gradients/total_loss_grad/Prod_1Prod!gradients/total_loss_grad/Shape_3!gradients/total_loss_grad/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
g
%gradients/total_loss_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
#gradients/total_loss_grad/Maximum_1Maximum gradients/total_loss_grad/Prod_1%gradients/total_loss_grad/Maximum_1/y*
_output_shapes
: *
T0
�
$gradients/total_loss_grad/floordiv_1FloorDivgradients/total_loss_grad/Prod#gradients/total_loss_grad/Maximum_1*
_output_shapes
: *
T0
|
gradients/total_loss_grad/CastCast$gradients/total_loss_grad/floordiv_1*

SrcT0*

DstT0*
_output_shapes
: 
�
!gradients/total_loss_grad/truedivRealDivgradients/total_loss_grad/Tilegradients/total_loss_grad/Cast*
_output_shapes

:*
T0
�
'gradients/total_loss/input_grad/unstackUnpack!gradients/total_loss_grad/truediv*n
_output_shapes\
Z:::::::::::::::*	
num*

axis *
T0
b
0gradients/total_loss/input_grad/tuple/group_depsNoOp(^gradients/total_loss/input_grad/unstack
�
8gradients/total_loss/input_grad/tuple/control_dependencyIdentity'gradients/total_loss/input_grad/unstack1^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_1Identity)gradients/total_loss/input_grad/unstack:11^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_2Identity)gradients/total_loss/input_grad/unstack:21^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_3Identity)gradients/total_loss/input_grad/unstack:31^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_4Identity)gradients/total_loss/input_grad/unstack:41^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_5Identity)gradients/total_loss/input_grad/unstack:51^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_6Identity)gradients/total_loss/input_grad/unstack:61^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_7Identity)gradients/total_loss/input_grad/unstack:71^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_8Identity)gradients/total_loss/input_grad/unstack:81^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_9Identity)gradients/total_loss/input_grad/unstack:91^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_10Identity*gradients/total_loss/input_grad/unstack:101^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_11Identity*gradients/total_loss/input_grad/unstack:111^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_12Identity*gradients/total_loss/input_grad/unstack:121^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_13Identity*gradients/total_loss/input_grad/unstack:131^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_14Identity*gradients/total_loss/input_grad/unstack:141^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims8gradients/total_loss/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_1	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_2	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_3	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_4	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_5	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_6	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_7	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_8	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_9	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_10	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_11	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_12	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_13	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_14	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
i
gradients/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
k
gradients/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
_output_shapes

:*-
_class#
!loc:@gradients/add_grad/Reshape*
T0
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0
k
gradients/add_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_1_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_1_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_1_grad/Reshape*
T0
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
T0
k
gradients/add_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_2_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_2_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_2_grad/Reshape*
T0
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
T0
k
gradients/add_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_3_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_3_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_3_grad/Reshape*
T0
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
T0
k
gradients/add_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_4_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_4_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_4_grad/Reshape*
T0
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
T0
k
gradients/add_5_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_5_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_5_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
�
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_5_grad/Reshape*
T0
�
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1*
T0
k
gradients/add_6_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_6_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_6_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_6_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
�
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_6_grad/Reshape*
T0
�
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1*
T0
k
gradients/add_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_7_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_7_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_7_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_7_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
�
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_7_grad/Reshape*
T0
�
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1*
T0
k
gradients/add_8_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_8_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_8_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_8_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
�
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_8_grad/Reshape*
T0
�
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1*
T0
k
gradients/add_9_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_9_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_9_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_9_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_9_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
�
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_9_grad/Reshape*
T0
�
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1*
T0
l
gradients/add_10_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_10_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_10_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_10_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_10_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
�
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_10_grad/Reshape*
T0
�
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1*
T0
l
gradients/add_11_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_11_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_11_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_11_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_11_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_11_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
�
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_11_grad/Reshape*
T0
�
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1*
T0
l
gradients/add_12_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_12_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_12_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_12_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
�
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_12_grad/Reshape*
T0
�
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1*
T0
l
gradients/add_13_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_13_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_13_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_13_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_13_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_13_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
�
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_13_grad/Reshape*
T0
�
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1*
T0
l
gradients/add_14_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_14_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_14_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_14_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_14_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_14_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
�
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_14_grad/Reshape*
T0
�
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1*
T0
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
gradients/MatMul_grad/MatMul_1MatMulrnn/basic_rnn_cell/Tanh+gradients/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_1_grad/MatMul_1MatMulrnn/basic_rnn_cell_1/Tanh-gradients/add_1_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
T0
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
T0
�
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_2_grad/MatMul_1MatMulrnn/basic_rnn_cell_2/Tanh-gradients/add_2_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
�
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*
T0
�
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1*
T0
�
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_3_grad/MatMul_1MatMulrnn/basic_rnn_cell_3/Tanh-gradients/add_3_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
�
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul*
T0
�
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1*
T0
�
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_4_grad/MatMul_1MatMulrnn/basic_rnn_cell_4/Tanh-gradients/add_4_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
�
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul*
T0
�
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1*
T0
�
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_5_grad/MatMul_1MatMulrnn/basic_rnn_cell_5/Tanh-gradients/add_5_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
�
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul*
T0
�
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1*
T0
�
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_6_grad/MatMul_1MatMulrnn/basic_rnn_cell_6/Tanh-gradients/add_6_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
�
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
T0
�
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1*
T0
�
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_7_grad/MatMul_1MatMulrnn/basic_rnn_cell_7/Tanh-gradients/add_7_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
�
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
T0
�
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1*
T0
�
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_8_grad/MatMul_1MatMulrnn/basic_rnn_cell_8/Tanh-gradients/add_8_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
�
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
T0
�
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1*
T0
�
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_9_grad/MatMul_1MatMulrnn/basic_rnn_cell_9/Tanh-gradients/add_9_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
�
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul*
T0
�
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1*
T0
�
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_10_grad/MatMul_1MatMulrnn/basic_rnn_cell_10/Tanh.gradients/add_10_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
�
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
T0
�
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1*
T0
�
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_11_grad/MatMul_1MatMulrnn/basic_rnn_cell_11/Tanh.gradients/add_11_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
�
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul*
T0
�
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1*
T0
�
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_12_grad/MatMul_1MatMulrnn/basic_rnn_cell_12/Tanh.gradients/add_12_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
�
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul*
T0
�
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1*
T0
�
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_13_grad/MatMul_1MatMulrnn/basic_rnn_cell_13/Tanh.gradients/add_13_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
�
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
T0
�
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1*
T0
�
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_14_grad/MatMul_1MatMulrnn/basic_rnn_cell_14/Tanh.gradients/add_14_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
�
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul*
T0
�
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1*
T0
�
gradients/AddNAddN-gradients/add_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_14_grad/tuple/control_dependency_1*
N*
_output_shapes

:*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0
�
2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_14/Tanh1gradients/MatMul_14_grad/tuple/control_dependency*
_output_shapes

:*
T0
�
gradients/AddN_1AddN0gradients/MatMul_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_14_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_2AddN1gradients/MatMul_13_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
T0
�
2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_13/Tanhgradients/AddN_2*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_3AddN1gradients/MatMul_12_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul*
T0
�
2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_12/Tanhgradients/AddN_3*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_4AddN1gradients/MatMul_11_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul*
T0
�
2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_11/Tanhgradients/AddN_4*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_5AddN1gradients/MatMul_10_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
T0
�
2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_10/Tanhgradients/AddN_5*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_6AddN0gradients/MatMul_9_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_9/Tanhgradients/AddN_6*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_7AddN0gradients/MatMul_8_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_8/Tanhgradients/AddN_7*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_8AddN0gradients/MatMul_7_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_7/Tanhgradients/AddN_8*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_9AddN0gradients/MatMul_6_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_6/Tanhgradients/AddN_9*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_10AddN0gradients/MatMul_5_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_5/Tanhgradients/AddN_10*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_11AddN0gradients/MatMul_4_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_4/Tanhgradients/AddN_11*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_12AddN0gradients/MatMul_3_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_3/Tanhgradients/AddN_12*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_13AddN0gradients/MatMul_2_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_2/Tanhgradients/AddN_13*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_14AddN0gradients/MatMul_1_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
T0
�
1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_1/Tanhgradients/AddN_14*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_15AddN.gradients/MatMul_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0
�
/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell/Tanhgradients/AddN_15*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*B
_class8
64loc:@gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1*
T0
�
gradients/AddN_16AddNVgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1*
N*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
gradients/AddN_17AddNUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1*
N*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
!weight2/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes

:*
valueB*���=*
_class
loc:@weight2
�
weight2/Adagrad
VariableV2*
shared_name *
_class
loc:@weight2*
	container *
dtype0*
_output_shapes

:*
shape
:
�
weight2/Adagrad/AssignAssignweight2/Adagrad!weight2/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@weight2*
T0
v
weight2/Adagrad/readIdentityweight2/Adagrad*
_output_shapes

:*
_class
loc:@weight2*
T0
�
$Variable_1/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes

:*
valueB*���=*
_class
loc:@Variable_1
�
Variable_1/Adagrad
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@Variable_1*
T0

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
_output_shapes

:*
_class
loc:@Variable_1*
T0
�
4rnn/basic_rnn_cell/weights/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes

:*
valueB*���=*-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
"rnn/basic_rnn_cell/weights/Adagrad
VariableV2*
shared_name *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
	container *
dtype0*
_output_shapes

:*
shape
:
�
)rnn/basic_rnn_cell/weights/Adagrad/AssignAssign"rnn/basic_rnn_cell/weights/Adagrad4rnn/basic_rnn_cell/weights/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
'rnn/basic_rnn_cell/weights/Adagrad/readIdentity"rnn/basic_rnn_cell/weights/Adagrad*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
3rnn/basic_rnn_cell/biases/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes
:*
valueB*���=*,
_class"
 loc:@rnn/basic_rnn_cell/biases
�
!rnn/basic_rnn_cell/biases/Adagrad
VariableV2*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/biases*
	container *
dtype0*
_output_shapes
:*
shape:
�
(rnn/basic_rnn_cell/biases/Adagrad/AssignAssign!rnn/basic_rnn_cell/biases/Adagrad3rnn/basic_rnn_cell/biases/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0
�
&rnn/basic_rnn_cell/biases/Adagrad/readIdentity!rnn/basic_rnn_cell/biases/Adagrad*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0
[
training/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *���>
�
$training/update_weight2/ApplyAdagradApplyAdagradweight2weight2/Adagradtraining/learning_rategradients/AddN_1*
use_locking( *
_output_shapes

:*
_class
loc:@weight2*
T0
�
'training/update_Variable_1/ApplyAdagradApplyAdagrad
Variable_1Variable_1/Adagradtraining/learning_rategradients/AddN*
use_locking( *
_output_shapes

:*
_class
loc:@Variable_1*
T0
�
7training/update_rnn/basic_rnn_cell/weights/ApplyAdagradApplyAdagradrnn/basic_rnn_cell/weights"rnn/basic_rnn_cell/weights/Adagradtraining/learning_rategradients/AddN_17*
use_locking( *
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
6training/update_rnn/basic_rnn_cell/biases/ApplyAdagradApplyAdagradrnn/basic_rnn_cell/biases!rnn/basic_rnn_cell/biases/Adagradtraining/learning_rategradients/AddN_16*
use_locking( *
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0
�
trainingNoOp%^training/update_weight2/ApplyAdagrad(^training/update_Variable_1/ApplyAdagrad8^training/update_rnn/basic_rnn_cell/weights/ApplyAdagrad7^training/update_rnn/basic_rnn_cell/biases/ApplyAdagrad"��+j     =�O�	�*n�yZ�AJݎ
��
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
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
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
value`B^"P`M?�A�=�w?k?D	?y?�_X?�nG>�М<�g�>��>���=�g�=�]>cY?��>׊?�6q>9�=���>
{
weight1
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
	container *
shape
:
�
weight1/AssignAssignweight1weight1/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@weight1*
T0
f
weight1/readIdentityweight1*
_output_shapes

:*
_class
loc:@weight1*
T0
w
Variable/initial_valueConst*
dtype0*
_output_shapes

:*)
value B"                
|
Variable
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
	container *
shape
:
�
Variable/AssignAssignVariableVariable/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@Variable*
T0
i
Variable/readIdentityVariable*
_output_shapes

:*
_class
loc:@Variable*
T0
�
weight2/initial_valueConst*
dtype0*
_output_shapes

:*9
value0B." ~�R?��>Z��>��(?N��>XP�><w?�%�>
{
weight2
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
	container *
shape
:
�
weight2/AssignAssignweight2weight2/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@weight2*
T0
f
weight2/readIdentityweight2*
_output_shapes

:*
_class
loc:@weight2*
T0
q
Variable_1/initial_valueConst*
dtype0*
_output_shapes

:*!
valueB"        
~

Variable_1
VariableV2*
dtype0*
shared_name *
_output_shapes

:*
	container *
shape
:
�
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@Variable_1*
T0
o
Variable_1/readIdentity
Variable_1*
_output_shapes

:*
_class
loc:@Variable_1*
T0
S
weights/tagConst*
dtype0*
_output_shapes
: *
valueB Bweights
W
weightsHistogramSummaryweights/tagweight1/read*
_output_shapes
: *
T0
Q
split/split_dimConst*
dtype0*
_output_shapes
: *
value	B :
�
splitSplitsplit/split_dimx_input*
	num_split*�
_output_shapes�
�:::::::::::::::*
T0
�
unstackUnpacky_input*n
_output_shapes\
Z:::::::::::::::*	
num*

axis*
T0
�
;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�Q�*-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *�Q?*-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
Crnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniformRandomUniform;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shape*
seed2 *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
dtype0*

seed *
_output_shapes

:
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/subSub9rnn/basic_rnn_cell/weights/Initializer/random_uniform/max9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*
_output_shapes
: *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mulMulCrnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniform9rnn/basic_rnn_cell/weights/Initializer/random_uniform/sub*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
5rnn/basic_rnn_cell/weights/Initializer/random_uniformAdd9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mul9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
rnn/basic_rnn_cell/weights
VariableV2*
shared_name *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
	container *
dtype0*
_output_shapes

:*
shape
:
�
!rnn/basic_rnn_cell/weights/AssignAssignrnn/basic_rnn_cell/weights5rnn/basic_rnn_cell/weights/Initializer/random_uniform*
validate_shape(*
use_locking(*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
p
rnn/basic_rnn_cell/weights/readIdentityrnn/basic_rnn_cell/weights*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/concatConcatV2splitrnn_init_state/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulMatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell/biases/Initializer/ConstConst*
dtype0*
_output_shapes
:*
valueB*    *,
_class"
 loc:@rnn/basic_rnn_cell/biases
�
rnn/basic_rnn_cell/biases
VariableV2*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/biases*
	container *
dtype0*
_output_shapes
:*
shape:
�
 rnn/basic_rnn_cell/biases/AssignAssignrnn/basic_rnn_cell/biases+rnn/basic_rnn_cell/biases/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0
j
rnn/basic_rnn_cell/biases/readIdentityrnn/basic_rnn_cell/biases*
_output_shapes
:*
T0
�
+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAddBiasAdd*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
u
rnn/basic_rnn_cell/TanhTanh+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/concatConcatV2split:1rnn/basic_rnn_cell/Tanh/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_1/TanhTanh+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/concatConcatV2split:2rnn/basic_rnn_cell_1/Tanh/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_2/TanhTanh+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/concatConcatV2split:3rnn/basic_rnn_cell_2/Tanh/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_3/TanhTanh+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/concatConcatV2split:4rnn/basic_rnn_cell_3/Tanh/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_4/TanhTanh+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/concatConcatV2split:5rnn/basic_rnn_cell_4/Tanh/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_5/TanhTanh+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/concatConcatV2split:6rnn/basic_rnn_cell_5/Tanh/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_6/TanhTanh+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/concatConcatV2split:7rnn/basic_rnn_cell_6/Tanh/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_7/TanhTanh+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/concatConcatV2split:8rnn/basic_rnn_cell_7/Tanh/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_8/TanhTanh+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
q
/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/concatConcatV2split:9rnn/basic_rnn_cell_8/Tanh/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
w
rnn/basic_rnn_cell_9/TanhTanh+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/concatConcatV2split:10rnn/basic_rnn_cell_9/Tanh0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_10/TanhTanh,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/concatConcatV2split:11rnn/basic_rnn_cell_10/Tanh0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_11/TanhTanh,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/concatConcatV2split:12rnn/basic_rnn_cell_11/Tanh0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_12/TanhTanh,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/concatConcatV2split:13rnn/basic_rnn_cell_12/Tanh0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_13/TanhTanh,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
r
0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/concatConcatV2split:14rnn/basic_rnn_cell_13/Tanh0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis*
N*
_output_shapes

:*
T0*

Tidx0
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
�
,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
_output_shapes

:*
data_formatNHWC*
T0
y
rnn/basic_rnn_cell_14/TanhTanh,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd*
_output_shapes

:*
T0
�
MatMulMatMulrnn/basic_rnn_cell/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
L
addAddMatMulVariable_1/read*
_output_shapes

:*
T0
�
MatMul_1MatMulrnn/basic_rnn_cell_1/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_1AddMatMul_1Variable_1/read*
_output_shapes

:*
T0
�
MatMul_2MatMulrnn/basic_rnn_cell_2/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_2AddMatMul_2Variable_1/read*
_output_shapes

:*
T0
�
MatMul_3MatMulrnn/basic_rnn_cell_3/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_3AddMatMul_3Variable_1/read*
_output_shapes

:*
T0
�
MatMul_4MatMulrnn/basic_rnn_cell_4/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_4AddMatMul_4Variable_1/read*
_output_shapes

:*
T0
�
MatMul_5MatMulrnn/basic_rnn_cell_5/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_5AddMatMul_5Variable_1/read*
_output_shapes

:*
T0
�
MatMul_6MatMulrnn/basic_rnn_cell_6/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_6AddMatMul_6Variable_1/read*
_output_shapes

:*
T0
�
MatMul_7MatMulrnn/basic_rnn_cell_7/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_7AddMatMul_7Variable_1/read*
_output_shapes

:*
T0
�
MatMul_8MatMulrnn/basic_rnn_cell_8/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_8AddMatMul_8Variable_1/read*
_output_shapes

:*
T0
�
MatMul_9MatMulrnn/basic_rnn_cell_9/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
P
add_9AddMatMul_9Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_10MatMulrnn/basic_rnn_cell_10/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_10Add	MatMul_10Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_11MatMulrnn/basic_rnn_cell_11/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_11Add	MatMul_11Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_12MatMulrnn/basic_rnn_cell_12/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_12Add	MatMul_12Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_13MatMulrnn/basic_rnn_cell_13/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_13Add	MatMul_13Variable_1/read*
_output_shapes

:*
T0
�
	MatMul_14MatMulrnn/basic_rnn_cell_14/Tanhweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
R
add_14Add	MatMul_14Variable_1/read*
_output_shapes

:*
T0
@
SoftmaxSoftmaxadd*
_output_shapes

:*
T0
D
	Softmax_1Softmaxadd_1*
_output_shapes

:*
T0
D
	Softmax_2Softmaxadd_2*
_output_shapes

:*
T0
D
	Softmax_3Softmaxadd_3*
_output_shapes

:*
T0
D
	Softmax_4Softmaxadd_4*
_output_shapes

:*
T0
D
	Softmax_5Softmaxadd_5*
_output_shapes

:*
T0
D
	Softmax_6Softmaxadd_6*
_output_shapes

:*
T0
D
	Softmax_7Softmaxadd_7*
_output_shapes

:*
T0
D
	Softmax_8Softmaxadd_8*
_output_shapes

:*
T0
D
	Softmax_9Softmaxadd_9*
_output_shapes

:*
T0
F

Softmax_10Softmaxadd_10*
_output_shapes

:*
T0
F

Softmax_11Softmaxadd_11*
_output_shapes

:*
T0
F

Softmax_12Softmaxadd_12*
_output_shapes

:*
T0
F

Softmax_13Softmaxadd_13*
_output_shapes

:*
T0
F

Softmax_14Softmaxadd_14*
_output_shapes

:*
T0
s
)SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsaddunstack*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_1/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_1	unstack:1*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_2/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_2	unstack:2*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_3/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_3	unstack:3*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_4/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_4	unstack:4*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_5/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_5	unstack:5*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_6/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_6	unstack:6*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_7/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_7	unstack:7*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_8/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_8	unstack:8*
Tlabels0*$
_output_shapes
::*
T0
u
+SparseSoftmaxCrossEntropyWithLogits_9/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
ISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_9	unstack:9*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_10/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_10
unstack:10*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_11/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_11
unstack:11*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_12/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_12
unstack:12*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_13/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_13
unstack:13*
Tlabels0*$
_output_shapes
::*
T0
v
,SparseSoftmaxCrossEntropyWithLogits_14/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
�
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_14
unstack:14*
Tlabels0*$
_output_shapes
::*
T0
�	
Rank/packedPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
N*
_output_shapes

:*
T0*

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
N*
_output_shapes

:*
T0*

axis 
i

total_lossMeantotal_loss/inputrange*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
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
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
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
gradients/total_loss_grad/addAddrangegradients/total_loss_grad/Size*
_output_shapes
:*
T0
�
gradients/total_loss_grad/modFloorModgradients/total_loss_grad/addgradients/total_loss_grad/Size*
_output_shapes
:*
T0
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
gradients/total_loss_grad/FillFill!gradients/total_loss_grad/Shape_1$gradients/total_loss_grad/Fill/value*
_output_shapes
:*
T0
�
'gradients/total_loss_grad/DynamicStitchDynamicStitchgradients/total_loss_grad/rangegradients/total_loss_grad/modgradients/total_loss_grad/Shapegradients/total_loss_grad/Fill*
N*#
_output_shapes
:���������*
T0
e
#gradients/total_loss_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
!gradients/total_loss_grad/MaximumMaximum'gradients/total_loss_grad/DynamicStitch#gradients/total_loss_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
"gradients/total_loss_grad/floordivFloorDivgradients/total_loss_grad/Shape!gradients/total_loss_grad/Maximum*
_output_shapes
:*
T0
�
!gradients/total_loss_grad/ReshapeReshapegradients/Fill'gradients/total_loss_grad/DynamicStitch*
_output_shapes
:*
T0*
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
gradients/total_loss_grad/ProdProd!gradients/total_loss_grad/Shape_2gradients/total_loss_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
k
!gradients/total_loss_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
 gradients/total_loss_grad/Prod_1Prod!gradients/total_loss_grad/Shape_3!gradients/total_loss_grad/Const_1*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
g
%gradients/total_loss_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
#gradients/total_loss_grad/Maximum_1Maximum gradients/total_loss_grad/Prod_1%gradients/total_loss_grad/Maximum_1/y*
_output_shapes
: *
T0
�
$gradients/total_loss_grad/floordiv_1FloorDivgradients/total_loss_grad/Prod#gradients/total_loss_grad/Maximum_1*
_output_shapes
: *
T0
|
gradients/total_loss_grad/CastCast$gradients/total_loss_grad/floordiv_1*

SrcT0*

DstT0*
_output_shapes
: 
�
!gradients/total_loss_grad/truedivRealDivgradients/total_loss_grad/Tilegradients/total_loss_grad/Cast*
_output_shapes

:*
T0
�
'gradients/total_loss/input_grad/unstackUnpack!gradients/total_loss_grad/truediv*n
_output_shapes\
Z:::::::::::::::*	
num*

axis *
T0
b
0gradients/total_loss/input_grad/tuple/group_depsNoOp(^gradients/total_loss/input_grad/unstack
�
8gradients/total_loss/input_grad/tuple/control_dependencyIdentity'gradients/total_loss/input_grad/unstack1^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_1Identity)gradients/total_loss/input_grad/unstack:11^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_2Identity)gradients/total_loss/input_grad/unstack:21^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_3Identity)gradients/total_loss/input_grad/unstack:31^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_4Identity)gradients/total_loss/input_grad/unstack:41^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_5Identity)gradients/total_loss/input_grad/unstack:51^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_6Identity)gradients/total_loss/input_grad/unstack:61^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_7Identity)gradients/total_loss/input_grad/unstack:71^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_8Identity)gradients/total_loss/input_grad/unstack:81^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
:gradients/total_loss/input_grad/tuple/control_dependency_9Identity)gradients/total_loss/input_grad/unstack:91^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_10Identity*gradients/total_loss/input_grad/unstack:101^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_11Identity*gradients/total_loss/input_grad/unstack:111^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_12Identity*gradients/total_loss/input_grad/unstack:121^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_13Identity*gradients/total_loss/input_grad/unstack:131^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
;gradients/total_loss/input_grad/tuple/control_dependency_14Identity*gradients/total_loss/input_grad/unstack:141^gradients/total_loss/input_grad/tuple/group_deps*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack*
T0
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims8gradients/total_loss/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_1	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_2	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_3	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_4	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_5	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_6	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_7	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_8	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_9	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_10	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_11	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_12	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_13	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
�
gradients/zeros_like_14	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*
T0
�
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
_output_shapes

:*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
_output_shapes

:*
T0
i
gradients/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
k
gradients/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
_output_shapes

:*-
_class#
!loc:@gradients/add_grad/Reshape*
T0
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0
k
gradients/add_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_1_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_1_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_1_grad/Reshape*
T0
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
T0
k
gradients/add_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_2_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_2_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_2_grad/Reshape*
T0
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
T0
k
gradients/add_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_3_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_3_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_3_grad/Reshape*
T0
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
T0
k
gradients/add_4_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_4_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_4_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_4_grad/Reshape*
T0
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
T0
k
gradients/add_5_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_5_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_5_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_5_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
�
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_5_grad/Reshape*
T0
�
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1*
T0
k
gradients/add_6_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_6_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_6_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_6_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
�
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_6_grad/Reshape*
T0
�
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1*
T0
k
gradients/add_7_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_7_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_7_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_7_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_7_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
�
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_7_grad/Reshape*
T0
�
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1*
T0
k
gradients/add_8_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_8_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_8_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_8_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
�
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_8_grad/Reshape*
T0
�
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1*
T0
k
gradients/add_9_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
gradients/add_9_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_9_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_9_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_9_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
�
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/add_9_grad/Reshape*
T0
�
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1*
T0
l
gradients/add_10_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_10_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_10_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_10_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_10_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
�
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_10_grad/Reshape*
T0
�
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1*
T0
l
gradients/add_11_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_11_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_11_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_11_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_11_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_11_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
�
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_11_grad/Reshape*
T0
�
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1*
T0
l
gradients/add_12_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_12_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_12_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_12_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
�
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_12_grad/Reshape*
T0
�
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1*
T0
l
gradients/add_13_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_13_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_13_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_13_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_13_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_13_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
�
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_13_grad/Reshape*
T0
�
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1*
T0
l
gradients/add_14_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
gradients/add_14_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/add_14_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_14_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
_output_shapes

:*
T0*
Tshape0
�
gradients/add_14_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_14_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
�
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
_output_shapes

:*
T0*
Tshape0
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
�
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*
_output_shapes

:*0
_class&
$"loc:@gradients/add_14_grad/Reshape*
T0
�
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1*
T0
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
gradients/MatMul_grad/MatMul_1MatMulrnn/basic_rnn_cell/Tanh+gradients/add_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes

:*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_1_grad/MatMul_1MatMulrnn/basic_rnn_cell_1/Tanh-gradients/add_1_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
T0
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
T0
�
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_2_grad/MatMul_1MatMulrnn/basic_rnn_cell_2/Tanh-gradients/add_2_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
�
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*
T0
�
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1*
T0
�
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_3_grad/MatMul_1MatMulrnn/basic_rnn_cell_3/Tanh-gradients/add_3_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
�
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul*
T0
�
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1*
T0
�
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_4_grad/MatMul_1MatMulrnn/basic_rnn_cell_4/Tanh-gradients/add_4_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
�
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul*
T0
�
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1*
T0
�
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_5_grad/MatMul_1MatMulrnn/basic_rnn_cell_5/Tanh-gradients/add_5_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
�
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul*
T0
�
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1*
T0
�
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_6_grad/MatMul_1MatMulrnn/basic_rnn_cell_6/Tanh-gradients/add_6_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
�
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
T0
�
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1*
T0
�
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_7_grad/MatMul_1MatMulrnn/basic_rnn_cell_7/Tanh-gradients/add_7_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
�
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
T0
�
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1*
T0
�
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_8_grad/MatMul_1MatMulrnn/basic_rnn_cell_8/Tanh-gradients/add_8_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
�
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
T0
�
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1*
T0
�
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
 gradients/MatMul_9_grad/MatMul_1MatMulrnn/basic_rnn_cell_9/Tanh-gradients/add_9_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
�
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul*
T0
�
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1*
T0
�
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_10_grad/MatMul_1MatMulrnn/basic_rnn_cell_10/Tanh.gradients/add_10_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
�
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
T0
�
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1*
T0
�
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_11_grad/MatMul_1MatMulrnn/basic_rnn_cell_11/Tanh.gradients/add_11_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
�
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul*
T0
�
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1*
T0
�
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_12_grad/MatMul_1MatMulrnn/basic_rnn_cell_12/Tanh.gradients/add_12_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
�
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul*
T0
�
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1*
T0
�
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_13_grad/MatMul_1MatMulrnn/basic_rnn_cell_13/Tanh.gradients/add_13_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
�
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
T0
�
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1*
T0
�
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyweight2/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
!gradients/MatMul_14_grad/MatMul_1MatMulrnn/basic_rnn_cell_14/Tanh.gradients/add_14_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
�
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul*
T0
�
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1*
T0
�
gradients/AddNAddN-gradients/add_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_14_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
�
2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_14/Tanh1gradients/MatMul_14_grad/tuple/control_dependency*
_output_shapes

:*
T0
�
gradients/AddN_1AddN0gradients/MatMul_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_14_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_2AddN1gradients/MatMul_13_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
�
2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_13/Tanhgradients/AddN_2*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_3AddN1gradients/MatMul_12_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
�
2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_12/Tanhgradients/AddN_3*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_4AddN1gradients/MatMul_11_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
�
2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_11/Tanhgradients/AddN_4*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_5AddN1gradients/MatMul_10_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
�
2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_10/Tanhgradients/AddN_5*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Lgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
T0
�
Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
Agradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Cgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice*
T0
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_6AddN0gradients/MatMul_9_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_9/Tanhgradients/AddN_6*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_7AddN0gradients/MatMul_8_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_8/Tanhgradients/AddN_7*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_8AddN0gradients/MatMul_7_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_7/Tanhgradients/AddN_8*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_9AddN0gradients/MatMul_6_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_6/Tanhgradients/AddN_9*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_10AddN0gradients/MatMul_5_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_5/Tanhgradients/AddN_10*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_11AddN0gradients/MatMul_4_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_4/Tanhgradients/AddN_11*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_12AddN0gradients/MatMul_3_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_3/Tanhgradients/AddN_12*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_13AddN0gradients/MatMul_2_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_2/Tanhgradients/AddN_13*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_14AddN0gradients/MatMul_1_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
�
1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_1/Tanhgradients/AddN_14*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1*
T0
�
>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
�
=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Rank*
_output_shapes
: *
T0
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape*
_output_shapes

:*
T0*
Index0
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
_output_shapes

:*
T0*
Index0
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice*
T0
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1*
T0
�
gradients/AddN_15AddN.gradients/MatMul_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
�
/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell/Tanhgradients/AddN_15*
_output_shapes

:*
T0
�
Fgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Kgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*B
_class8
64loc:@gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
T0
�
Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad*
T0
�
@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
_output_shapes

:*
transpose_a( *
transpose_b(*
T0
�
Bgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
Jgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul*
T0
�
Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1*
T0
�
gradients/AddN_16AddNVgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1*
N*
_output_shapes
:*
T0*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
gradients/AddN_17AddNUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1*
N*
_output_shapes

:*
T0*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1
�
!weight2/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes

:*
valueB*���=*
_class
loc:@weight2
�
weight2/Adagrad
VariableV2*
shared_name *
_class
loc:@weight2*
	container *
dtype0*
_output_shapes

:*
shape
:
�
weight2/Adagrad/AssignAssignweight2/Adagrad!weight2/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@weight2*
T0
v
weight2/Adagrad/readIdentityweight2/Adagrad*
_output_shapes

:*
_class
loc:@weight2*
T0
�
$Variable_1/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes

:*
valueB*���=*
_class
loc:@Variable_1
�
Variable_1/Adagrad
VariableV2*
shared_name *
_class
loc:@Variable_1*
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes

:*
_class
loc:@Variable_1*
T0

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
_output_shapes

:*
_class
loc:@Variable_1*
T0
�
4rnn/basic_rnn_cell/weights/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes

:*
valueB*���=*-
_class#
!loc:@rnn/basic_rnn_cell/weights
�
"rnn/basic_rnn_cell/weights/Adagrad
VariableV2*
shared_name *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
	container *
dtype0*
_output_shapes

:*
shape
:
�
)rnn/basic_rnn_cell/weights/Adagrad/AssignAssign"rnn/basic_rnn_cell/weights/Adagrad4rnn/basic_rnn_cell/weights/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
'rnn/basic_rnn_cell/weights/Adagrad/readIdentity"rnn/basic_rnn_cell/weights/Adagrad*
_output_shapes

:*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0
�
3rnn/basic_rnn_cell/biases/Adagrad/Initializer/ConstConst*
dtype0*
_output_shapes
:*
valueB*���=*,
_class"
 loc:@rnn/basic_rnn_cell/biases
�
!rnn/basic_rnn_cell/biases/Adagrad
VariableV2*
shared_name *,
_class"
 loc:@rnn/basic_rnn_cell/biases*
	container *
dtype0*
_output_shapes
:*
shape:
�
(rnn/basic_rnn_cell/biases/Adagrad/AssignAssign!rnn/basic_rnn_cell/biases/Adagrad3rnn/basic_rnn_cell/biases/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0
�
&rnn/basic_rnn_cell/biases/Adagrad/readIdentity!rnn/basic_rnn_cell/biases/Adagrad*
_output_shapes
:*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0
[
training/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *���>
�
$training/update_weight2/ApplyAdagradApplyAdagradweight2weight2/Adagradtraining/learning_rategradients/AddN_1*
use_locking( *
_output_shapes

:*
_class
loc:@weight2*
T0
�
'training/update_Variable_1/ApplyAdagradApplyAdagrad
Variable_1Variable_1/Adagradtraining/learning_rategradients/AddN*
use_locking( *
_output_shapes

:*
_class
loc:@Variable_1*
T0
�
7training/update_rnn/basic_rnn_cell/weights/ApplyAdagradApplyAdagradrnn/basic_rnn_cell/weights"rnn/basic_rnn_cell/weights/Adagradtraining/learning_rate