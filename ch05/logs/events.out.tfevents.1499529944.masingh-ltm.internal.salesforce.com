       �K"	   �@X�Abrain.Event:2utZ���     z�@	 ]�@X�A"��
\
PlaceholderPlaceholder*
dtype0*
_output_shapes

:*
shape
:
^
Placeholder_1Placeholder*
dtype0*
_output_shapes

:*
shape
:
^
Placeholder_2Placeholder*
dtype0*
_output_shapes

:*
shape
:
�
Variable/initial_valueConst*9
value0B." �5V?5U�>�[?�3�>�}J>��>�O5=4�V?*
_output_shapes

:*
dtype0
|
Variable
VariableV2*
shared_name *
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable/AssignAssignVariableVariable/initial_value*
_class
loc:@Variable*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
i
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*
_output_shapes

:
q
Variable_1/initial_valueConst*!
valueB"        *
_output_shapes

:*
dtype0
~

Variable_1
VariableV2*
shared_name *
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
_class
loc:@Variable_1*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
o
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*
_output_shapes

:
Q
split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
�
splitSplitsplit/split_dimPlaceholder*
T0*
	num_split*�
_output_shapes�
�:::::::::::::::
�
unstackUnpackPlaceholder_1*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis
�
;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shapeConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB"      *
_output_shapes
:*
dtype0
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/minConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB
 *�Q�*
_output_shapes
: *
dtype0
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/maxConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB
 *�Q?*
_output_shapes
: *
dtype0
�
Crnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniformRandomUniform;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shape*
T0*

seed *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
dtype0*
_output_shapes

:*
seed2 
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/subSub9rnn/basic_rnn_cell/weights/Initializer/random_uniform/max9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes
: 
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mulMulCrnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniform9rnn/basic_rnn_cell/weights/Initializer/random_uniform/sub*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:
�
5rnn/basic_rnn_cell/weights/Initializer/random_uniformAdd9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mul9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:
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
!rnn/basic_rnn_cell/weights/AssignAssignrnn/basic_rnn_cell/weights5rnn/basic_rnn_cell/weights/Initializer/random_uniform*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
p
rnn/basic_rnn_cell/weights/readIdentityrnn/basic_rnn_cell/weights*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/concatConcatV2splitPlaceholder_2/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulMatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell/biases/Initializer/ConstConst*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
valueB*    *
_output_shapes
:*
dtype0
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
 rnn/basic_rnn_cell/biases/AssignAssignrnn/basic_rnn_cell/biases+rnn/basic_rnn_cell/biases/Initializer/Const*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0*
_output_shapes
:*
use_locking(*
validate_shape(
j
rnn/basic_rnn_cell/biases/readIdentityrnn/basic_rnn_cell/biases*
T0*
_output_shapes
:
�
+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAddBiasAdd*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
u
rnn/basic_rnn_cell/TanhTanh+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/concatConcatV2split:1rnn/basic_rnn_cell/Tanh/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_1/TanhTanh+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/concatConcatV2split:2rnn/basic_rnn_cell_1/Tanh/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_2/TanhTanh+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/concatConcatV2split:3rnn/basic_rnn_cell_2/Tanh/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_3/TanhTanh+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/concatConcatV2split:4rnn/basic_rnn_cell_3/Tanh/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_4/TanhTanh+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/concatConcatV2split:5rnn/basic_rnn_cell_4/Tanh/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_5/TanhTanh+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/concatConcatV2split:6rnn/basic_rnn_cell_5/Tanh/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_6/TanhTanh+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/concatConcatV2split:7rnn/basic_rnn_cell_6/Tanh/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_7/TanhTanh+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/concatConcatV2split:8rnn/basic_rnn_cell_7/Tanh/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_8/TanhTanh+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/concatConcatV2split:9rnn/basic_rnn_cell_8/Tanh/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_9/TanhTanh+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/concatConcatV2split:10rnn/basic_rnn_cell_9/Tanh0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_10/TanhTanh,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/concatConcatV2split:11rnn/basic_rnn_cell_10/Tanh0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_11/TanhTanh,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/concatConcatV2split:12rnn/basic_rnn_cell_11/Tanh0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_12/TanhTanh,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/concatConcatV2split:13rnn/basic_rnn_cell_12/Tanh0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_13/TanhTanh,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/concatConcatV2split:14rnn/basic_rnn_cell_13/Tanh0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis*
T0*
_output_shapes

:*
N*

Tidx0
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
�
,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_14/TanhTanh,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
�
MatMulMatMulrnn/basic_rnn_cell/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
L
addAddMatMulVariable_1/read*
T0*
_output_shapes

:
�
MatMul_1MatMulrnn/basic_rnn_cell_1/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_1AddMatMul_1Variable_1/read*
T0*
_output_shapes

:
�
MatMul_2MatMulrnn/basic_rnn_cell_2/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_2AddMatMul_2Variable_1/read*
T0*
_output_shapes

:
�
MatMul_3MatMulrnn/basic_rnn_cell_3/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_3AddMatMul_3Variable_1/read*
T0*
_output_shapes

:
�
MatMul_4MatMulrnn/basic_rnn_cell_4/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_4AddMatMul_4Variable_1/read*
T0*
_output_shapes

:
�
MatMul_5MatMulrnn/basic_rnn_cell_5/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_5AddMatMul_5Variable_1/read*
T0*
_output_shapes

:
�
MatMul_6MatMulrnn/basic_rnn_cell_6/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_6AddMatMul_6Variable_1/read*
T0*
_output_shapes

:
�
MatMul_7MatMulrnn/basic_rnn_cell_7/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_7AddMatMul_7Variable_1/read*
T0*
_output_shapes

:
�
MatMul_8MatMulrnn/basic_rnn_cell_8/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_8AddMatMul_8Variable_1/read*
T0*
_output_shapes

:
�
MatMul_9MatMulrnn/basic_rnn_cell_9/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
P
add_9AddMatMul_9Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_10MatMulrnn/basic_rnn_cell_10/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
R
add_10Add	MatMul_10Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_11MatMulrnn/basic_rnn_cell_11/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
R
add_11Add	MatMul_11Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_12MatMulrnn/basic_rnn_cell_12/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
R
add_12Add	MatMul_12Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_13MatMulrnn/basic_rnn_cell_13/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
R
add_13Add	MatMul_13Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_14MatMulrnn/basic_rnn_cell_14/TanhVariable/read*
transpose_a( *
transpose_b( *
_output_shapes

:*
T0
R
add_14Add	MatMul_14Variable_1/read*
T0*
_output_shapes

:
@
SoftmaxSoftmaxadd*
T0*
_output_shapes

:
D
	Softmax_1Softmaxadd_1*
T0*
_output_shapes

:
D
	Softmax_2Softmaxadd_2*
T0*
_output_shapes

:
D
	Softmax_3Softmaxadd_3*
T0*
_output_shapes

:
D
	Softmax_4Softmaxadd_4*
T0*
_output_shapes

:
D
	Softmax_5Softmaxadd_5*
T0*
_output_shapes

:
D
	Softmax_6Softmaxadd_6*
T0*
_output_shapes

:
D
	Softmax_7Softmaxadd_7*
T0*
_output_shapes

:
D
	Softmax_8Softmaxadd_8*
T0*
_output_shapes

:
D
	Softmax_9Softmaxadd_9*
T0*
_output_shapes

:
F

Softmax_10Softmaxadd_10*
T0*
_output_shapes

:
F

Softmax_11Softmaxadd_11*
T0*
_output_shapes

:
F

Softmax_12Softmaxadd_12*
T0*
_output_shapes

:
F

Softmax_13Softmaxadd_13*
T0*
_output_shapes

:
F

Softmax_14Softmaxadd_14*
T0*
_output_shapes

:
s
)SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsaddunstack*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_1/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_1	unstack:1*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_2/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_2	unstack:2*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_3/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_3	unstack:3*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_4/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_4	unstack:4*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_5/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_5	unstack:5*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_6/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_6	unstack:6*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_7/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_7	unstack:7*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_8/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_8	unstack:8*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_9/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_9	unstack:9*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_10/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_10
unstack:10*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_11/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_11
unstack:11*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_12/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_12
unstack:12*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_13/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_13
unstack:13*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_14/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_14
unstack:14*
T0*
Tlabels0*$
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
RankConst*
value	B :*
_output_shapes
: *
dtype0
M
range/startConst*
value	B : *
_output_shapes
: *
dtype0
M
range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
V
rangeRangerange/startRankrange/delta*
_output_shapes
:*

Tidx0
�	

Mean/inputPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes

:*
N*

axis 
]
MeanMean
Mean/inputrange*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
j
gradients/Mean_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Z
gradients/Mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
d
gradients/Mean_grad/addAddrangegradients/Mean_grad/Size*
T0*
_output_shapes
:
{
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*
_output_shapes
:
e
gradients/Mean_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
a
gradients/Mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
a
gradients/Mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*
_output_shapes
:*

Tidx0
`
gradients/Mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*
_output_shapes
:
�
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
N*#
_output_shapes
:���������*
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
T0*0
_output_shapes
:������������������*

Tmultiples0
l
gradients/Mean_grad/Shape_2Const*
valueB"      *
_output_shapes
:*
dtype0
^
gradients/Mean_grad/Shape_3Const*
valueB *
_output_shapes
: *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
a
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
p
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes

:
�
!gradients/Mean/input_grad/unstackUnpackgradients/Mean_grad/truediv*
T0*	
num*n
_output_shapes\
Z:::::::::::::::*

axis 
V
*gradients/Mean/input_grad/tuple/group_depsNoOp"^gradients/Mean/input_grad/unstack
�
2gradients/Mean/input_grad/tuple/control_dependencyIdentity!gradients/Mean/input_grad/unstack+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_1Identity#gradients/Mean/input_grad/unstack:1+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_2Identity#gradients/Mean/input_grad/unstack:2+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_3Identity#gradients/Mean/input_grad/unstack:3+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_4Identity#gradients/Mean/input_grad/unstack:4+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_5Identity#gradients/Mean/input_grad/unstack:5+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_6Identity#gradients/Mean/input_grad/unstack:6+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_7Identity#gradients/Mean/input_grad/unstack:7+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_8Identity#gradients/Mean/input_grad/unstack:8+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_9Identity#gradients/Mean/input_grad/unstack:9+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_10Identity$gradients/Mean/input_grad/unstack:10+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_11Identity$gradients/Mean/input_grad/unstack:11+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_12Identity$gradients/Mean/input_grad/unstack:12+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_13Identity$gradients/Mean/input_grad/unstack:13+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_14Identity$gradients/Mean/input_grad/unstack:14+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims2gradients/Mean/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
i
gradients/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
k
gradients/add_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes

:
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_1_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_1_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_1_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_2_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_2_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_2_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_3_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_3_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_3_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_3_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_3_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_4_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_4_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_4_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_4_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_4_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_5_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_5_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_5_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_5_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
�
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_5_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_6_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_6_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_6_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_6_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
�
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_6_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_7_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_7_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_7_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_7_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
�
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_7_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_8_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_8_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_8_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_8_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
�
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_8_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_9_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_9_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_9_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_9_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_9_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
�
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_9_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_10_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_10_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_10_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_10_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_10_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
�
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_10_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_11_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_11_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_11_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_11_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_11_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_11_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
�
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_11_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_12_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_12_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_12_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_12_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
�
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_12_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_13_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_13_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_13_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_13_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_13_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_13_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
�
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_13_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_14_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_14_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_14_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_14_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_14_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_14_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
�
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_14_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1*
T0*
_output_shapes

:
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
gradients/MatMul_grad/MatMul_1MatMulrnn/basic_rnn_cell/Tanh+gradients/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_1_grad/MatMul_1MatMulrnn/basic_rnn_cell_1/Tanh-gradients/add_1_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_2_grad/MatMul_1MatMulrnn/basic_rnn_cell_2/Tanh-gradients/add_2_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
�
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_3_grad/MatMul_1MatMulrnn/basic_rnn_cell_3/Tanh-gradients/add_3_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
�
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_4_grad/MatMul_1MatMulrnn/basic_rnn_cell_4/Tanh-gradients/add_4_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
�
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_5_grad/MatMul_1MatMulrnn/basic_rnn_cell_5/Tanh-gradients/add_5_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
�
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_6_grad/MatMul_1MatMulrnn/basic_rnn_cell_6/Tanh-gradients/add_6_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
�
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_7_grad/MatMul_1MatMulrnn/basic_rnn_cell_7/Tanh-gradients/add_7_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
�
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_8_grad/MatMul_1MatMulrnn/basic_rnn_cell_8/Tanh-gradients/add_8_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
�
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
 gradients/MatMul_9_grad/MatMul_1MatMulrnn/basic_rnn_cell_9/Tanh-gradients/add_9_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
�
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
!gradients/MatMul_10_grad/MatMul_1MatMulrnn/basic_rnn_cell_10/Tanh.gradients/add_10_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
�
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
!gradients/MatMul_11_grad/MatMul_1MatMulrnn/basic_rnn_cell_11/Tanh.gradients/add_11_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
�
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
!gradients/MatMul_12_grad/MatMul_1MatMulrnn/basic_rnn_cell_12/Tanh.gradients/add_12_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
�
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
!gradients/MatMul_13_grad/MatMul_1MatMulrnn/basic_rnn_cell_13/Tanh.gradients/add_13_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
�
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyVariable/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
!gradients/MatMul_14_grad/MatMul_1MatMulrnn/basic_rnn_cell_14/Tanh.gradients/add_14_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
�
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/AddNAddN-gradients/add_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_14_grad/tuple/control_dependency_1*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_14/Tanh1gradients/MatMul_14_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
gradients/AddN_1AddN0gradients/MatMul_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_14_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
N*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Cgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_2AddN1gradients/MatMul_13_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_13/Tanhgradients/AddN_2*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Cgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_3AddN1gradients/MatMul_12_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_12/Tanhgradients/AddN_3*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Cgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_4AddN1gradients/MatMul_11_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_11/Tanhgradients/AddN_4*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Cgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_5AddN1gradients/MatMul_10_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_10/Tanhgradients/AddN_5*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Cgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_6AddN0gradients/MatMul_9_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_9/Tanhgradients/AddN_6*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_7AddN0gradients/MatMul_8_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_8/Tanhgradients/AddN_7*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_8AddN0gradients/MatMul_7_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_7/Tanhgradients/AddN_8*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_9AddN0gradients/MatMul_6_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_6/Tanhgradients/AddN_9*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_10AddN0gradients/MatMul_5_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_5/Tanhgradients/AddN_10*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_11AddN0gradients/MatMul_4_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_4/Tanhgradients/AddN_11*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_12AddN0gradients/MatMul_3_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_3/Tanhgradients/AddN_12*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_13AddN0gradients/MatMul_2_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_2/Tanhgradients/AddN_13*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_14AddN0gradients/MatMul_1_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_1/Tanhgradients/AddN_14*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_15AddN.gradients/MatMul_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
N*
_output_shapes

:*
T0
�
/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell/Tanhgradients/AddN_15*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
transpose_a( *
transpose_b(*
_output_shapes

:*
T0
�
Bgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
_output_shapes

:*
T0
�
Jgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/AddN_16AddNVgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
N*
_output_shapes
:*
T0
�
gradients/AddN_17AddNUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1*
N*
_output_shapes

:*
T0
�
"Variable/Adagrad/Initializer/ConstConst*
_class
loc:@Variable*
valueB*���=*
_output_shapes

:*
dtype0
�
Variable/Adagrad
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable/Adagrad/AssignAssignVariable/Adagrad"Variable/Adagrad/Initializer/Const*
_class
loc:@Variable*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
y
Variable/Adagrad/readIdentityVariable/Adagrad*
_class
loc:@Variable*
T0*
_output_shapes

:
�
$Variable_1/Adagrad/Initializer/ConstConst*
_class
loc:@Variable_1*
valueB*���=*
_output_shapes

:*
dtype0
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
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
_class
loc:@Variable_1*
T0*
_output_shapes

:*
use_locking(*
validate_shape(

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
_class
loc:@Variable_1*
T0*
_output_shapes

:
�
4rnn/basic_rnn_cell/weights/Adagrad/Initializer/ConstConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB*���=*
_output_shapes

:*
dtype0
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
)rnn/basic_rnn_cell/weights/Adagrad/AssignAssign"rnn/basic_rnn_cell/weights/Adagrad4rnn/basic_rnn_cell/weights/Adagrad/Initializer/Const*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
�
'rnn/basic_rnn_cell/weights/Adagrad/readIdentity"rnn/basic_rnn_cell/weights/Adagrad*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:
�
3rnn/basic_rnn_cell/biases/Adagrad/Initializer/ConstConst*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
valueB*���=*
_output_shapes
:*
dtype0
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
(rnn/basic_rnn_cell/biases/Adagrad/AssignAssign!rnn/basic_rnn_cell/biases/Adagrad3rnn/basic_rnn_cell/biases/Adagrad/Initializer/Const*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0*
_output_shapes
:*
use_locking(*
validate_shape(
�
&rnn/basic_rnn_cell/biases/Adagrad/readIdentity!rnn/basic_rnn_cell/biases/Adagrad*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0*
_output_shapes
:
Z
Adagrad/learning_rateConst*
valueB
 *���>*
_output_shapes
: *
dtype0
�
$Adagrad/update_Variable/ApplyAdagradApplyAdagradVariableVariable/AdagradAdagrad/learning_rategradients/AddN_1*
_class
loc:@Variable*
T0*
_output_shapes

:*
use_locking( 
�
&Adagrad/update_Variable_1/ApplyAdagradApplyAdagrad
Variable_1Variable_1/AdagradAdagrad/learning_rategradients/AddN*
_class
loc:@Variable_1*
T0*
_output_shapes

:*
use_locking( 
�
6Adagrad/update_rnn/basic_rnn_cell/weights/ApplyAdagradApplyAdagradrnn/basic_rnn_cell/weights"rnn/basic_rnn_cell/weights/AdagradAdagrad/learning_rategradients/AddN_17*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:*
use_locking( 
�
5Adagrad/update_rnn/basic_rnn_cell/biases/ApplyAdagradApplyAdagradrnn/basic_rnn_cell/biases!rnn/basic_rnn_cell/biases/AdagradAdagrad/learning_rategradients/AddN_16*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0*
_output_shapes
:*
use_locking( 
�
AdagradNoOp%^Adagrad/update_Variable/ApplyAdagrad'^Adagrad/update_Variable_1/ApplyAdagrad7^Adagrad/update_rnn/basic_rnn_cell/weights/ApplyAdagrad6^Adagrad/update_rnn/basic_rnn_cell/biases/ApplyAdagrad"7D��;�     W�#{	��@�@X�AJ��
��
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
\
PlaceholderPlaceholder*
dtype0*
_output_shapes

:*
shape
:
^
Placeholder_1Placeholder*
dtype0*
_output_shapes

:*
shape
:
^
Placeholder_2Placeholder*
dtype0*
_output_shapes

:*
shape
:
�
Variable/initial_valueConst*9
value0B." �5V?5U�>�[?�3�>�}J>��>�O5=4�V?*
_output_shapes

:*
dtype0
|
Variable
VariableV2*
shared_name *
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable/AssignAssignVariableVariable/initial_value*
_class
loc:@Variable*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
i
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*
_output_shapes

:
q
Variable_1/initial_valueConst*!
valueB"        *
_output_shapes

:*
dtype0
~

Variable_1
VariableV2*
shared_name *
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
_class
loc:@Variable_1*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
o
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*
_output_shapes

:
Q
split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
�
splitSplitsplit/split_dimPlaceholder*
T0*
	num_split*�
_output_shapes�
�:::::::::::::::
�
unstackUnpackPlaceholder_1*
T0*

axis*n
_output_shapes\
Z:::::::::::::::*	
num
�
;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shapeConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB"      *
_output_shapes
:*
dtype0
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/minConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB
 *�Q�*
_output_shapes
: *
dtype0
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/maxConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB
 *�Q?*
_output_shapes
: *
dtype0
�
Crnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniformRandomUniform;rnn/basic_rnn_cell/weights/Initializer/random_uniform/shape*
T0*

seed *-
_class#
!loc:@rnn/basic_rnn_cell/weights*
dtype0*
_output_shapes

:*
seed2 
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/subSub9rnn/basic_rnn_cell/weights/Initializer/random_uniform/max9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes
: 
�
9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mulMulCrnn/basic_rnn_cell/weights/Initializer/random_uniform/RandomUniform9rnn/basic_rnn_cell/weights/Initializer/random_uniform/sub*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:
�
5rnn/basic_rnn_cell/weights/Initializer/random_uniformAdd9rnn/basic_rnn_cell/weights/Initializer/random_uniform/mul9rnn/basic_rnn_cell/weights/Initializer/random_uniform/min*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:
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
!rnn/basic_rnn_cell/weights/AssignAssignrnn/basic_rnn_cell/weights5rnn/basic_rnn_cell/weights/Initializer/random_uniform*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
p
rnn/basic_rnn_cell/weights/readIdentityrnn/basic_rnn_cell/weights*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/concatConcatV2splitPlaceholder_2/rnn/basic_rnn_cell/basic_rnn_cell_1/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulMatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell/biases/Initializer/ConstConst*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
valueB*    *
_output_shapes
:*
dtype0
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
 rnn/basic_rnn_cell/biases/AssignAssignrnn/basic_rnn_cell/biases+rnn/basic_rnn_cell/biases/Initializer/Const*,
_class"
 loc:@rnn/basic_rnn_cell/biases*
T0*
_output_shapes
:*
use_locking(*
validate_shape(
j
rnn/basic_rnn_cell/biases/readIdentityrnn/basic_rnn_cell/biases*
T0*
_output_shapes
:
�
+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAddBiasAdd*rnn/basic_rnn_cell/basic_rnn_cell_1/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
u
rnn/basic_rnn_cell/TanhTanh+rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/concatConcatV2split:1rnn/basic_rnn_cell/Tanh/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_1/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_1/TanhTanh+rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/concatConcatV2split:2rnn/basic_rnn_cell_1/Tanh/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_2/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_2/TanhTanh+rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/concatConcatV2split:3rnn/basic_rnn_cell_2/Tanh/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_3/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_3/TanhTanh+rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/concatConcatV2split:4rnn/basic_rnn_cell_3/Tanh/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_4/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_4/TanhTanh+rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/concatConcatV2split:5rnn/basic_rnn_cell_4/Tanh/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_5/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_5/TanhTanh+rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/concatConcatV2split:6rnn/basic_rnn_cell_5/Tanh/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_6/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_6/TanhTanh+rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/concatConcatV2split:7rnn/basic_rnn_cell_6/Tanh/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_7/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_7/TanhTanh+rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/concatConcatV2split:8rnn/basic_rnn_cell_7/Tanh/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_8/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_8/TanhTanh+rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
q
/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/concatConcatV2split:9rnn/basic_rnn_cell_8/Tanh/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulMatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAddBiasAdd*rnn/basic_rnn_cell_9/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
w
rnn/basic_rnn_cell_9/TanhTanh+rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/concatConcatV2split:10rnn/basic_rnn_cell_9/Tanh0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_10/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_10/TanhTanh,rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/concatConcatV2split:11rnn/basic_rnn_cell_10/Tanh0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_11/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_11/TanhTanh,rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/concatConcatV2split:12rnn/basic_rnn_cell_11/Tanh0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_12/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_12/TanhTanh,rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/concatConcatV2split:13rnn/basic_rnn_cell_12/Tanh0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_13/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_13/TanhTanh,rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
r
0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/concatConcatV2split:14rnn/basic_rnn_cell_13/Tanh0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis*
T0*

Tidx0*
_output_shapes

:*
N
�
+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulMatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
�
,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAddBiasAdd+rnn/basic_rnn_cell_14/basic_rnn_cell/MatMulrnn/basic_rnn_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
y
rnn/basic_rnn_cell_14/TanhTanh,rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd*
T0*
_output_shapes

:
�
MatMulMatMulrnn/basic_rnn_cell/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
L
addAddMatMulVariable_1/read*
T0*
_output_shapes

:
�
MatMul_1MatMulrnn/basic_rnn_cell_1/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_1AddMatMul_1Variable_1/read*
T0*
_output_shapes

:
�
MatMul_2MatMulrnn/basic_rnn_cell_2/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_2AddMatMul_2Variable_1/read*
T0*
_output_shapes

:
�
MatMul_3MatMulrnn/basic_rnn_cell_3/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_3AddMatMul_3Variable_1/read*
T0*
_output_shapes

:
�
MatMul_4MatMulrnn/basic_rnn_cell_4/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_4AddMatMul_4Variable_1/read*
T0*
_output_shapes

:
�
MatMul_5MatMulrnn/basic_rnn_cell_5/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_5AddMatMul_5Variable_1/read*
T0*
_output_shapes

:
�
MatMul_6MatMulrnn/basic_rnn_cell_6/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_6AddMatMul_6Variable_1/read*
T0*
_output_shapes

:
�
MatMul_7MatMulrnn/basic_rnn_cell_7/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_7AddMatMul_7Variable_1/read*
T0*
_output_shapes

:
�
MatMul_8MatMulrnn/basic_rnn_cell_8/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_8AddMatMul_8Variable_1/read*
T0*
_output_shapes

:
�
MatMul_9MatMulrnn/basic_rnn_cell_9/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
P
add_9AddMatMul_9Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_10MatMulrnn/basic_rnn_cell_10/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
R
add_10Add	MatMul_10Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_11MatMulrnn/basic_rnn_cell_11/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
R
add_11Add	MatMul_11Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_12MatMulrnn/basic_rnn_cell_12/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
R
add_12Add	MatMul_12Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_13MatMulrnn/basic_rnn_cell_13/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
R
add_13Add	MatMul_13Variable_1/read*
T0*
_output_shapes

:
�
	MatMul_14MatMulrnn/basic_rnn_cell_14/TanhVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b( 
R
add_14Add	MatMul_14Variable_1/read*
T0*
_output_shapes

:
@
SoftmaxSoftmaxadd*
T0*
_output_shapes

:
D
	Softmax_1Softmaxadd_1*
T0*
_output_shapes

:
D
	Softmax_2Softmaxadd_2*
T0*
_output_shapes

:
D
	Softmax_3Softmaxadd_3*
T0*
_output_shapes

:
D
	Softmax_4Softmaxadd_4*
T0*
_output_shapes

:
D
	Softmax_5Softmaxadd_5*
T0*
_output_shapes

:
D
	Softmax_6Softmaxadd_6*
T0*
_output_shapes

:
D
	Softmax_7Softmaxadd_7*
T0*
_output_shapes

:
D
	Softmax_8Softmaxadd_8*
T0*
_output_shapes

:
D
	Softmax_9Softmaxadd_9*
T0*
_output_shapes

:
F

Softmax_10Softmaxadd_10*
T0*
_output_shapes

:
F

Softmax_11Softmaxadd_11*
T0*
_output_shapes

:
F

Softmax_12Softmaxadd_12*
T0*
_output_shapes

:
F

Softmax_13Softmaxadd_13*
T0*
_output_shapes

:
F

Softmax_14Softmaxadd_14*
T0*
_output_shapes

:
s
)SparseSoftmaxCrossEntropyWithLogits/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsaddunstack*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_1/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_1	unstack:1*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_2/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_2	unstack:2*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_3/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_3	unstack:3*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_4/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_4	unstack:4*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_5/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_5	unstack:5*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_6/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_6	unstack:6*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_7/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_7	unstack:7*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_8/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_8	unstack:8*
T0*
Tlabels0*$
_output_shapes
::
u
+SparseSoftmaxCrossEntropyWithLogits_9/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
ISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_9	unstack:9*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_10/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_10
unstack:10*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_11/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_11
unstack:11*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_12/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_12
unstack:12*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_13/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_13
unstack:13*
T0*
Tlabels0*$
_output_shapes
::
v
,SparseSoftmaxCrossEntropyWithLogits_14/ShapeConst*
valueB:*
_output_shapes
:*
dtype0
�
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_14
unstack:14*
T0*
Tlabels0*$
_output_shapes
::
�	
Rank/packedPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
T0*

axis *
_output_shapes

:*
N
F
RankConst*
value	B :*
_output_shapes
: *
dtype0
M
range/startConst*
value	B : *
_output_shapes
: *
dtype0
M
range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
V
rangeRangerange/startRankrange/delta*
_output_shapes
:*

Tidx0
�	

Mean/inputPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*
T0*

axis *
_output_shapes

:*
N
]
MeanMean
Mean/inputrange*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
j
gradients/Mean_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Z
gradients/Mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
d
gradients/Mean_grad/addAddrangegradients/Mean_grad/Size*
T0*
_output_shapes
:
{
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*
_output_shapes
:
e
gradients/Mean_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
a
gradients/Mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
a
gradients/Mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*
_output_shapes
:*

Tidx0
`
gradients/Mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*
_output_shapes
:
�
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
N*#
_output_shapes
:���������*
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*
_output_shapes
:
�
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
T0*0
_output_shapes
:������������������*

Tmultiples0
l
gradients/Mean_grad/Shape_2Const*
valueB"      *
_output_shapes
:*
dtype0
^
gradients/Mean_grad/Shape_3Const*
valueB *
_output_shapes
: *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
�
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
a
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
�
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
p
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes

:
�
!gradients/Mean/input_grad/unstackUnpackgradients/Mean_grad/truediv*
T0*

axis *n
_output_shapes\
Z:::::::::::::::*	
num
V
*gradients/Mean/input_grad/tuple/group_depsNoOp"^gradients/Mean/input_grad/unstack
�
2gradients/Mean/input_grad/tuple/control_dependencyIdentity!gradients/Mean/input_grad/unstack+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_1Identity#gradients/Mean/input_grad/unstack:1+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_2Identity#gradients/Mean/input_grad/unstack:2+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_3Identity#gradients/Mean/input_grad/unstack:3+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_4Identity#gradients/Mean/input_grad/unstack:4+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_5Identity#gradients/Mean/input_grad/unstack:5+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_6Identity#gradients/Mean/input_grad/unstack:6+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_7Identity#gradients/Mean/input_grad/unstack:7+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_8Identity#gradients/Mean/input_grad/unstack:8+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
4gradients/Mean/input_grad/tuple/control_dependency_9Identity#gradients/Mean/input_grad/unstack:9+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_10Identity$gradients/Mean/input_grad/unstack:10+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_11Identity$gradients/Mean/input_grad/unstack:11+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_12Identity$gradients/Mean/input_grad/unstack:12+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_13Identity$gradients/Mean/input_grad/unstack:13+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
5gradients/Mean/input_grad/tuple/control_dependency_14Identity$gradients/Mean/input_grad/unstack:14+^gradients/Mean/input_grad/tuple/group_deps*4
_class*
(&loc:@gradients/Mean/input_grad/unstack*
T0*
_output_shapes
:
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims2gradients/Mean/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims4gradients/Mean/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
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
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
_output_shapes

:
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
_output_shapes
: *
dtype0
�
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims5gradients/Mean/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
�
]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
i
gradients/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
k
gradients/add_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes

:
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_1_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_1_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_1_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_2_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_2_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_2_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_3_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_3_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_3_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_3_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
�
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_3_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_4_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_4_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_4_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_4_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
�
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_4_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_5_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_5_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_5_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_5_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
�
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_5_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_6_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_6_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_6_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_6_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
�
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_6_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_7_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_7_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_7_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_7_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_7_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_7_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
�
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_7_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_8_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_8_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_8_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_8_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
�
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_8_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1*
T0*
_output_shapes

:
k
gradients/add_9_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
m
gradients/add_9_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_9_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_9_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_9_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_9_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
�
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*/
_class%
#!loc:@gradients/add_9_grad/Reshape*
T0*
_output_shapes

:
�
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_10_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_10_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_10_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_10_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_10_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_10_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
�
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_10_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_11_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_11_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_11_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_11_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_11_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_11_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
�
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_11_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_12_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_12_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_12_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_12_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
�
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_12_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_13_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_13_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_13_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_13_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_13_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_13_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
�
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_13_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1*
T0*
_output_shapes

:
l
gradients/add_14_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
n
gradients/add_14_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_14_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_14_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
T0*
_output_shapes

:*
Tshape0
�
gradients/add_14_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_14_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
�
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
T0*
_output_shapes

:*
Tshape0
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
�
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*0
_class&
$"loc:@gradients/add_14_grad/Reshape*
T0*
_output_shapes

:
�
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1*
T0*
_output_shapes

:
�
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
gradients/MatMul_grad/MatMul_1MatMulrnn/basic_rnn_cell/Tanh+gradients/add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_1_grad/MatMul_1MatMulrnn/basic_rnn_cell_1/Tanh-gradients/add_1_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
�
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_2_grad/MatMul_1MatMulrnn/basic_rnn_cell_2/Tanh-gradients/add_2_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
�
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_3_grad/MatMul_1MatMulrnn/basic_rnn_cell_3/Tanh-gradients/add_3_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
�
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_4_grad/MatMul_1MatMulrnn/basic_rnn_cell_4/Tanh-gradients/add_4_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
�
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_5_grad/MatMul_1MatMulrnn/basic_rnn_cell_5/Tanh-gradients/add_5_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
�
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_6_grad/MatMul_1MatMulrnn/basic_rnn_cell_6/Tanh-gradients/add_6_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
�
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_7_grad/MatMul_1MatMulrnn/basic_rnn_cell_7/Tanh-gradients/add_7_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
�
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_8_grad/MatMul_1MatMulrnn/basic_rnn_cell_8/Tanh-gradients/add_8_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
�
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
 gradients/MatMul_9_grad/MatMul_1MatMulrnn/basic_rnn_cell_9/Tanh-gradients/add_9_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
�
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul*
T0*
_output_shapes

:
�
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
!gradients/MatMul_10_grad/MatMul_1MatMulrnn/basic_rnn_cell_10/Tanh.gradients/add_10_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
�
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
!gradients/MatMul_11_grad/MatMul_1MatMulrnn/basic_rnn_cell_11/Tanh.gradients/add_11_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
�
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
!gradients/MatMul_12_grad/MatMul_1MatMulrnn/basic_rnn_cell_12/Tanh.gradients/add_12_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
�
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
!gradients/MatMul_13_grad/MatMul_1MatMulrnn/basic_rnn_cell_13/Tanh.gradients/add_13_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
�
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyVariable/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
!gradients/MatMul_14_grad/MatMul_1MatMulrnn/basic_rnn_cell_14/Tanh.gradients/add_14_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
�
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul*
T0*
_output_shapes

:
�
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/AddNAddN-gradients/add_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_14_grad/tuple/control_dependency_1*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_14/Tanh1gradients/MatMul_14_grad/tuple/control_dependency*
T0*
_output_shapes

:
�
gradients/AddN_1AddN0gradients/MatMul_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_14_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
N*
_output_shapes

:*
T0
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_14/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Cgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_14/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_14/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_2AddN1gradients/MatMul_13_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_13/Tanhgradients/AddN_2*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_13/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Cgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_13/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_13/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_3AddN1gradients/MatMul_12_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_12/Tanhgradients/AddN_3*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_12/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Cgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_12/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_12/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_4AddN1gradients/MatMul_11_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_11/Tanhgradients/AddN_4*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_11/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Cgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_11/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_11/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_5AddN1gradients/MatMul_10_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/concat_grad/tuple/control_dependency_1*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
N*
_output_shapes

:*
T0
�
2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_10/Tanhgradients/AddN_5*
T0*
_output_shapes

:
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Lgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradH^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Tgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/rnn/basic_rnn_cell_10/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGradM^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
Agradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulMatMulTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Cgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1MatMul+rnn/basic_rnn_cell_10/basic_rnn_cell/concatTgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpB^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulD^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMulL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/modFloorMod0rnn/basic_rnn_cell_10/basic_rnn_cell/concat/axis?gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Ggradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset>gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/mod@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ShapeBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceSliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyGgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1SliceSgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/ConcatOffset:1Bgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Kgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceC^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1
�
Sgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/SliceL^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1L^gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_6AddN0gradients/MatMul_9_grad/tuple/control_dependencyUgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_9/Tanhgradients/AddN_6*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_9/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_9/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_9/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_7AddN0gradients/MatMul_8_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_8/Tanhgradients/AddN_7*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_8/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_8/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_8/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_8AddN0gradients/MatMul_7_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_7/Tanhgradients/AddN_8*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_7/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_7/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_7/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_9AddN0gradients/MatMul_6_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_6/Tanhgradients/AddN_9*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_6/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_6/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_6/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_10AddN0gradients/MatMul_5_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_5/Tanhgradients/AddN_10*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_5/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_5/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_5/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_11AddN0gradients/MatMul_4_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_4/Tanhgradients/AddN_11*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_4/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_4/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_4/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_12AddN0gradients/MatMul_3_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_3/Tanhgradients/AddN_12*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_3/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_3/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_3/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_13AddN0gradients/MatMul_2_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_2/Tanhgradients/AddN_13*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_2/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_2/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_2/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_14AddN0gradients/MatMul_1_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/concat_grad/tuple/control_dependency_1*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*
N*
_output_shapes

:*
T0
�
1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell_1/Tanhgradients/AddN_14*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*D
_class:
86loc:@gradients/rnn/basic_rnn_cell_1/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell_1/basic_rnn_cell/concatSgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
�
=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/modFloorMod/rnn/basic_rnn_cell_1/basic_rnn_cell/concat/axis>gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
�
Fgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffsetConcatOffset=gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/mod?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ShapeAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
N* 
_output_shapes
::
�
?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceSliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyFgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape*
T0*
_output_shapes

:*
Index0
�
Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1SliceRgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/ConcatOffset:1Agradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Shape_1*
T0*
_output_shapes

:*
Index0
�
Jgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_depsNoOp@^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceB^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1
�
Rgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependencyIdentity?gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/SliceK^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*R
_classH
FDloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1IdentityAgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1K^gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/Slice_1*
T0*
_output_shapes

:
�
gradients/AddN_15AddN.gradients/MatMul_grad/tuple/control_dependencyTgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/concat_grad/tuple/control_dependency_1*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
N*
_output_shapes

:*
T0
�
/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradTanhGradrnn/basic_rnn_cell/Tanhgradients/AddN_15*
T0*
_output_shapes

:
�
Fgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
T0*
_output_shapes
:*
data_formatNHWC
�
Kgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradG^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad
�
Sgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*B
_class8
64loc:@gradients/rnn/basic_rnn_cell/Tanh_grad/TanhGrad*
T0*
_output_shapes

:
�
Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGradL^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/group_deps*Y
_classO
MKloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
�
@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulMatMulSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependencyrnn/basic_rnn_cell/weights/read*
T0*
transpose_a( *
_output_shapes

:*
transpose_b(
�
Bgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1MatMul*rnn/basic_rnn_cell/basic_rnn_cell_1/concatSgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
Jgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_depsNoOpA^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulC^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1
�
Rgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependencyIdentity@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMulK^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*S
_classI
GEloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul*
T0*
_output_shapes

:
�
Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1IdentityBgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1K^gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/group_deps*U
_classK
IGloc:@gradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
�
gradients/AddN_16AddNVgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_13/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_12/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_11/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Vgradients/rnn/basic_rnn_cell_10/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_9/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_8/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_7/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_6/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_5/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_4/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_3/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_2/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_1/basic_rnn_cell/BiasAdd_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell/basic_rnn_cell_1/BiasAdd_grad/tuple/control_dependency_1*Z
_classP
NLloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/BiasAdd_grad/BiasAddGrad*
N*
_output_shapes
:*
T0
�
gradients/AddN_17AddNUgradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_13/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_12/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_11/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Ugradients/rnn/basic_rnn_cell_10/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_9/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_8/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_7/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_6/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_5/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_4/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_3/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_2/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell_1/basic_rnn_cell/MatMul_grad/tuple/control_dependency_1Tgradients/rnn/basic_rnn_cell/basic_rnn_cell_1/MatMul_grad/tuple/control_dependency_1*V
_classL
JHloc:@gradients/rnn/basic_rnn_cell_14/basic_rnn_cell/MatMul_grad/MatMul_1*
N*
_output_shapes

:*
T0
�
"Variable/Adagrad/Initializer/ConstConst*
_class
loc:@Variable*
valueB*���=*
_output_shapes

:*
dtype0
�
Variable/Adagrad
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
dtype0*
_output_shapes

:*
shape
:
�
Variable/Adagrad/AssignAssignVariable/Adagrad"Variable/Adagrad/Initializer/Const*
_class
loc:@Variable*
T0*
_output_shapes

:*
use_locking(*
validate_shape(
y
Variable/Adagrad/readIdentityVariable/Adagrad*
_class
loc:@Variable*
T0*
_output_shapes

:
�
$Variable_1/Adagrad/Initializer/ConstConst*
_class
loc:@Variable_1*
valueB*���=*
_output_shapes

:*
dtype0
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
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
_class
loc:@Variable_1*
T0*
_output_shapes

:*
use_locking(*
validate_shape(

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
_class
loc:@Variable_1*
T0*
_output_shapes

:
�
4rnn/basic_rnn_cell/weights/Adagrad/Initializer/ConstConst*-
_class#
!loc:@rnn/basic_rnn_cell/weights*
valueB*���=*
_output_shapes

:*
dtype0
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
