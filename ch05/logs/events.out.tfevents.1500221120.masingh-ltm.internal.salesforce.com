       БK"	   ░сZоAbrain.Event:2љo┼├│x     ╔█X	┘ь'░сZоA"ды
X
x_inputPlaceholder*
_output_shapes

:*
dtype0*
shape
:
X
y_inputPlaceholder*
_output_shapes

:*
dtype0*
shape
:
\
PlaceholderPlaceholder*
_output_shapes

:*
dtype0*
shape
:
^
Placeholder_1Placeholder*
_output_shapes

:*
dtype0*
shape
:
Х
weight1/initial_valueConst*i
value`B^"P№)d?АDf=Јђc?┼і=ђ Ь>Cmџ=?,ј>(?|яІ>6Д!?5?9бЖ>`|5=ЖU?фэ>л╗f<$чk? y╝>╠:Ы>@Ц=*
_output_shapes

:*
dtype0
{
weight1
VariableV2*
shape
:*
_output_shapes

:*
dtype0*
	container *
shared_name 
д
weight1/AssignAssignweight1weight1/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@weight1
f
weight1/readIdentityweight1*
T0*
_output_shapes

:*
_class
loc:@weight1
w
Variable/initial_valueConst*)
value B"                *
_output_shapes

:*
dtype0
|
Variable
VariableV2*
shape
:*
_output_shapes

:*
dtype0*
	container *
shared_name 
ф
Variable/AssignAssignVariableVariable/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@Variable
i
Variable/readIdentityVariable*
T0*
_output_shapes

:*
_class
loc:@Variable
є
weight2/initial_valueConst*9
value0B." R3░>пЫ =Ј│>Нd?ѕхU?сQ?Р>¤i?*
_output_shapes

:*
dtype0
{
weight2
VariableV2*
shape
:*
_output_shapes

:*
dtype0*
	container *
shared_name 
д
weight2/AssignAssignweight2weight2/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@weight2
f
weight2/readIdentityweight2*
T0*
_output_shapes

:*
_class
loc:@weight2
q
Variable_1/initial_valueConst*!
valueB"        *
_output_shapes

:*
dtype0
~

Variable_1
VariableV2*
shape
:*
_output_shapes

:*
dtype0*
	container *
shared_name 
▓
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@Variable_1
o
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes

:*
_class
loc:@Variable_1
S
weights/tagConst*
valueB Bweights*
_output_shapes
: *
dtype0
W
weightsHistogramSummaryweights/tagweight1/read*
T0*
_output_shapes
: 
Q
split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
ы
splitSplitsplit/split_dimx_input*
T0*г
_output_shapesЎ
ќ:::::::::::::::*
	num_split
ф
unstackUnpacky_input*

axis*
T0*n
_output_shapes\
Z:::::::::::::::*	
num
й
<rnn/basic_lstm_cell/weights/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*.
_class$
" loc:@rnn/basic_lstm_cell/weights*
dtype0
»
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/minConst*
valueB
 *wо┐*
_output_shapes
: *.
_class$
" loc:@rnn/basic_lstm_cell/weights*
dtype0
»
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/maxConst*
valueB
 *wо?*
_output_shapes
: *.
_class$
" loc:@rnn/basic_lstm_cell/weights*
dtype0
њ
Drnn/basic_lstm_cell/weights/Initializer/random_uniform/RandomUniformRandomUniform<rnn/basic_lstm_cell/weights/Initializer/random_uniform/shape*
T0*

seed *
_output_shapes

:*
seed2 *
dtype0*.
_class$
" loc:@rnn/basic_lstm_cell/weights
і
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/subSub:rnn/basic_lstm_cell/weights/Initializer/random_uniform/max:rnn/basic_lstm_cell/weights/Initializer/random_uniform/min*
T0*
_output_shapes
: *.
_class$
" loc:@rnn/basic_lstm_cell/weights
ю
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/mulMulDrnn/basic_lstm_cell/weights/Initializer/random_uniform/RandomUniform:rnn/basic_lstm_cell/weights/Initializer/random_uniform/sub*
T0*
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
ј
6rnn/basic_lstm_cell/weights/Initializer/random_uniformAdd:rnn/basic_lstm_cell/weights/Initializer/random_uniform/mul:rnn/basic_lstm_cell/weights/Initializer/random_uniform/min*
T0*
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
┐
rnn/basic_lstm_cell/weights
VariableV2*
dtype0*
	container *
shape
:*
shared_name *
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
Ѓ
"rnn/basic_lstm_cell/weights/AssignAssignrnn/basic_lstm_cell/weights6rnn/basic_lstm_cell/weights/Initializer/random_uniform*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*.
_class$
" loc:@rnn/basic_lstm_cell/weights
r
 rnn/basic_lstm_cell/weights/readIdentityrnn/basic_lstm_cell/weights*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell/basic_lstm_cell_1/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
┐
,rnn/basic_lstm_cell/basic_lstm_cell_1/concatConcatV2splitPlaceholder_11rnn/basic_lstm_cell/basic_lstm_cell_1/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell/basic_lstm_cell_1/MatMulMatMul,rnn/basic_lstm_cell/basic_lstm_cell_1/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
е
,rnn/basic_lstm_cell/biases/Initializer/ConstConst*
valueB*    *
_output_shapes
:*-
_class#
!loc:@rnn/basic_lstm_cell/biases*
dtype0
х
rnn/basic_lstm_cell/biases
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_output_shapes
:*-
_class#
!loc:@rnn/basic_lstm_cell/biases
Ы
!rnn/basic_lstm_cell/biases/AssignAssignrnn/basic_lstm_cell/biases,rnn/basic_lstm_cell/biases/Initializer/Const*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*-
_class#
!loc:@rnn/basic_lstm_cell/biases
l
rnn/basic_lstm_cell/biases/readIdentityrnn/basic_lstm_cell/biases*
T0*
_output_shapes
:
К
-rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAddBiasAdd,rnn/basic_lstm_cell/basic_lstm_cell_1/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
e
#rnn/basic_lstm_cell/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
╬
rnn/basic_lstm_cell/splitSplit#rnn/basic_lstm_cell/split/split_dim-rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
^
rnn/basic_lstm_cell/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0

rnn/basic_lstm_cell/addAddrnn/basic_lstm_cell/split:2rnn/basic_lstm_cell/add/y*
T0*
_output_shapes

:
h
rnn/basic_lstm_cell/SigmoidSigmoidrnn/basic_lstm_cell/add*
T0*
_output_shapes

:
q
rnn/basic_lstm_cell/mulMulPlaceholderrnn/basic_lstm_cell/Sigmoid*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell/Sigmoid_1Sigmoidrnn/basic_lstm_cell/split*
T0*
_output_shapes

:
f
rnn/basic_lstm_cell/TanhTanhrnn/basic_lstm_cell/split:1*
T0*
_output_shapes

:
ѓ
rnn/basic_lstm_cell/mul_1Mulrnn/basic_lstm_cell/Sigmoid_1rnn/basic_lstm_cell/Tanh*
T0*
_output_shapes

:
}
rnn/basic_lstm_cell/add_1Addrnn/basic_lstm_cell/mulrnn/basic_lstm_cell/mul_1*
T0*
_output_shapes

:
f
rnn/basic_lstm_cell/Tanh_1Tanhrnn/basic_lstm_cell/add_1*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell/Sigmoid_2Sigmoidrnn/basic_lstm_cell/split:3*
T0*
_output_shapes

:
ё
rnn/basic_lstm_cell/mul_2Mulrnn/basic_lstm_cell/Tanh_1rnn/basic_lstm_cell/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_1/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
═
,rnn/basic_lstm_cell_1/basic_lstm_cell/concatConcatV2split:1rnn/basic_lstm_cell/mul_21rnn/basic_lstm_cell_1/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_1/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_1/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_1/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_1/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_1/splitSplit%rnn/basic_lstm_cell_1/split/split_dim-rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_1/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_1/addAddrnn/basic_lstm_cell_1/split:2rnn/basic_lstm_cell_1/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_1/SigmoidSigmoidrnn/basic_lstm_cell_1/add*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_1/mulMulrnn/basic_lstm_cell/add_1rnn/basic_lstm_cell_1/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_1/Sigmoid_1Sigmoidrnn/basic_lstm_cell_1/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_1/TanhTanhrnn/basic_lstm_cell_1/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_1/mul_1Mulrnn/basic_lstm_cell_1/Sigmoid_1rnn/basic_lstm_cell_1/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_1/add_1Addrnn/basic_lstm_cell_1/mulrnn/basic_lstm_cell_1/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_1/Tanh_1Tanhrnn/basic_lstm_cell_1/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_1/Sigmoid_2Sigmoidrnn/basic_lstm_cell_1/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_1/mul_2Mulrnn/basic_lstm_cell_1/Tanh_1rnn/basic_lstm_cell_1/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_2/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_2/basic_lstm_cell/concatConcatV2split:2rnn/basic_lstm_cell_1/mul_21rnn/basic_lstm_cell_2/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_2/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_2/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_2/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_2/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_2/splitSplit%rnn/basic_lstm_cell_2/split/split_dim-rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_2/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_2/addAddrnn/basic_lstm_cell_2/split:2rnn/basic_lstm_cell_2/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_2/SigmoidSigmoidrnn/basic_lstm_cell_2/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_2/mulMulrnn/basic_lstm_cell_1/add_1rnn/basic_lstm_cell_2/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_2/Sigmoid_1Sigmoidrnn/basic_lstm_cell_2/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_2/TanhTanhrnn/basic_lstm_cell_2/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_2/mul_1Mulrnn/basic_lstm_cell_2/Sigmoid_1rnn/basic_lstm_cell_2/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_2/add_1Addrnn/basic_lstm_cell_2/mulrnn/basic_lstm_cell_2/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_2/Tanh_1Tanhrnn/basic_lstm_cell_2/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_2/Sigmoid_2Sigmoidrnn/basic_lstm_cell_2/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_2/mul_2Mulrnn/basic_lstm_cell_2/Tanh_1rnn/basic_lstm_cell_2/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_3/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_3/basic_lstm_cell/concatConcatV2split:3rnn/basic_lstm_cell_2/mul_21rnn/basic_lstm_cell_3/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_3/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_3/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_3/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_3/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_3/splitSplit%rnn/basic_lstm_cell_3/split/split_dim-rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_3/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_3/addAddrnn/basic_lstm_cell_3/split:2rnn/basic_lstm_cell_3/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_3/SigmoidSigmoidrnn/basic_lstm_cell_3/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_3/mulMulrnn/basic_lstm_cell_2/add_1rnn/basic_lstm_cell_3/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_3/Sigmoid_1Sigmoidrnn/basic_lstm_cell_3/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_3/TanhTanhrnn/basic_lstm_cell_3/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_3/mul_1Mulrnn/basic_lstm_cell_3/Sigmoid_1rnn/basic_lstm_cell_3/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_3/add_1Addrnn/basic_lstm_cell_3/mulrnn/basic_lstm_cell_3/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_3/Tanh_1Tanhrnn/basic_lstm_cell_3/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_3/Sigmoid_2Sigmoidrnn/basic_lstm_cell_3/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_3/mul_2Mulrnn/basic_lstm_cell_3/Tanh_1rnn/basic_lstm_cell_3/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_4/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_4/basic_lstm_cell/concatConcatV2split:4rnn/basic_lstm_cell_3/mul_21rnn/basic_lstm_cell_4/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_4/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_4/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_4/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_4/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_4/splitSplit%rnn/basic_lstm_cell_4/split/split_dim-rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_4/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_4/addAddrnn/basic_lstm_cell_4/split:2rnn/basic_lstm_cell_4/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_4/SigmoidSigmoidrnn/basic_lstm_cell_4/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_4/mulMulrnn/basic_lstm_cell_3/add_1rnn/basic_lstm_cell_4/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_4/Sigmoid_1Sigmoidrnn/basic_lstm_cell_4/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_4/TanhTanhrnn/basic_lstm_cell_4/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_4/mul_1Mulrnn/basic_lstm_cell_4/Sigmoid_1rnn/basic_lstm_cell_4/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_4/add_1Addrnn/basic_lstm_cell_4/mulrnn/basic_lstm_cell_4/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_4/Tanh_1Tanhrnn/basic_lstm_cell_4/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_4/Sigmoid_2Sigmoidrnn/basic_lstm_cell_4/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_4/mul_2Mulrnn/basic_lstm_cell_4/Tanh_1rnn/basic_lstm_cell_4/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_5/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_5/basic_lstm_cell/concatConcatV2split:5rnn/basic_lstm_cell_4/mul_21rnn/basic_lstm_cell_5/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_5/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_5/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_5/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_5/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_5/splitSplit%rnn/basic_lstm_cell_5/split/split_dim-rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_5/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_5/addAddrnn/basic_lstm_cell_5/split:2rnn/basic_lstm_cell_5/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_5/SigmoidSigmoidrnn/basic_lstm_cell_5/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_5/mulMulrnn/basic_lstm_cell_4/add_1rnn/basic_lstm_cell_5/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_5/Sigmoid_1Sigmoidrnn/basic_lstm_cell_5/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_5/TanhTanhrnn/basic_lstm_cell_5/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_5/mul_1Mulrnn/basic_lstm_cell_5/Sigmoid_1rnn/basic_lstm_cell_5/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_5/add_1Addrnn/basic_lstm_cell_5/mulrnn/basic_lstm_cell_5/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_5/Tanh_1Tanhrnn/basic_lstm_cell_5/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_5/Sigmoid_2Sigmoidrnn/basic_lstm_cell_5/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_5/mul_2Mulrnn/basic_lstm_cell_5/Tanh_1rnn/basic_lstm_cell_5/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_6/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_6/basic_lstm_cell/concatConcatV2split:6rnn/basic_lstm_cell_5/mul_21rnn/basic_lstm_cell_6/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_6/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_6/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_6/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_6/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_6/splitSplit%rnn/basic_lstm_cell_6/split/split_dim-rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_6/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_6/addAddrnn/basic_lstm_cell_6/split:2rnn/basic_lstm_cell_6/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_6/SigmoidSigmoidrnn/basic_lstm_cell_6/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_6/mulMulrnn/basic_lstm_cell_5/add_1rnn/basic_lstm_cell_6/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_6/Sigmoid_1Sigmoidrnn/basic_lstm_cell_6/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_6/TanhTanhrnn/basic_lstm_cell_6/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_6/mul_1Mulrnn/basic_lstm_cell_6/Sigmoid_1rnn/basic_lstm_cell_6/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_6/add_1Addrnn/basic_lstm_cell_6/mulrnn/basic_lstm_cell_6/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_6/Tanh_1Tanhrnn/basic_lstm_cell_6/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_6/Sigmoid_2Sigmoidrnn/basic_lstm_cell_6/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_6/mul_2Mulrnn/basic_lstm_cell_6/Tanh_1rnn/basic_lstm_cell_6/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_7/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_7/basic_lstm_cell/concatConcatV2split:7rnn/basic_lstm_cell_6/mul_21rnn/basic_lstm_cell_7/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_7/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_7/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_7/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_7/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_7/splitSplit%rnn/basic_lstm_cell_7/split/split_dim-rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_7/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_7/addAddrnn/basic_lstm_cell_7/split:2rnn/basic_lstm_cell_7/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_7/SigmoidSigmoidrnn/basic_lstm_cell_7/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_7/mulMulrnn/basic_lstm_cell_6/add_1rnn/basic_lstm_cell_7/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_7/Sigmoid_1Sigmoidrnn/basic_lstm_cell_7/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_7/TanhTanhrnn/basic_lstm_cell_7/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_7/mul_1Mulrnn/basic_lstm_cell_7/Sigmoid_1rnn/basic_lstm_cell_7/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_7/add_1Addrnn/basic_lstm_cell_7/mulrnn/basic_lstm_cell_7/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_7/Tanh_1Tanhrnn/basic_lstm_cell_7/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_7/Sigmoid_2Sigmoidrnn/basic_lstm_cell_7/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_7/mul_2Mulrnn/basic_lstm_cell_7/Tanh_1rnn/basic_lstm_cell_7/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_8/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_8/basic_lstm_cell/concatConcatV2split:8rnn/basic_lstm_cell_7/mul_21rnn/basic_lstm_cell_8/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_8/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_8/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_8/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_8/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_8/splitSplit%rnn/basic_lstm_cell_8/split/split_dim-rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_8/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_8/addAddrnn/basic_lstm_cell_8/split:2rnn/basic_lstm_cell_8/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_8/SigmoidSigmoidrnn/basic_lstm_cell_8/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_8/mulMulrnn/basic_lstm_cell_7/add_1rnn/basic_lstm_cell_8/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_8/Sigmoid_1Sigmoidrnn/basic_lstm_cell_8/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_8/TanhTanhrnn/basic_lstm_cell_8/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_8/mul_1Mulrnn/basic_lstm_cell_8/Sigmoid_1rnn/basic_lstm_cell_8/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_8/add_1Addrnn/basic_lstm_cell_8/mulrnn/basic_lstm_cell_8/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_8/Tanh_1Tanhrnn/basic_lstm_cell_8/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_8/Sigmoid_2Sigmoidrnn/basic_lstm_cell_8/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_8/mul_2Mulrnn/basic_lstm_cell_8/Tanh_1rnn/basic_lstm_cell_8/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_9/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_9/basic_lstm_cell/concatConcatV2split:9rnn/basic_lstm_cell_8/mul_21rnn/basic_lstm_cell_9/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_9/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_9/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_9/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_9/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_9/splitSplit%rnn/basic_lstm_cell_9/split/split_dim-rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_9/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_9/addAddrnn/basic_lstm_cell_9/split:2rnn/basic_lstm_cell_9/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_9/SigmoidSigmoidrnn/basic_lstm_cell_9/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_9/mulMulrnn/basic_lstm_cell_8/add_1rnn/basic_lstm_cell_9/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_9/Sigmoid_1Sigmoidrnn/basic_lstm_cell_9/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_9/TanhTanhrnn/basic_lstm_cell_9/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_9/mul_1Mulrnn/basic_lstm_cell_9/Sigmoid_1rnn/basic_lstm_cell_9/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_9/add_1Addrnn/basic_lstm_cell_9/mulrnn/basic_lstm_cell_9/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_9/Tanh_1Tanhrnn/basic_lstm_cell_9/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_9/Sigmoid_2Sigmoidrnn/basic_lstm_cell_9/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_9/mul_2Mulrnn/basic_lstm_cell_9/Tanh_1rnn/basic_lstm_cell_9/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_10/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
м
-rnn/basic_lstm_cell_10/basic_lstm_cell/concatConcatV2split:10rnn/basic_lstm_cell_9/mul_22rnn/basic_lstm_cell_10/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_10/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_10/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_10/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_10/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_10/splitSplit&rnn/basic_lstm_cell_10/split/split_dim.rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_10/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_10/addAddrnn/basic_lstm_cell_10/split:2rnn/basic_lstm_cell_10/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_10/SigmoidSigmoidrnn/basic_lstm_cell_10/add*
T0*
_output_shapes

:
Є
rnn/basic_lstm_cell_10/mulMulrnn/basic_lstm_cell_9/add_1rnn/basic_lstm_cell_10/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_10/Sigmoid_1Sigmoidrnn/basic_lstm_cell_10/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_10/TanhTanhrnn/basic_lstm_cell_10/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_10/mul_1Mul rnn/basic_lstm_cell_10/Sigmoid_1rnn/basic_lstm_cell_10/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_10/add_1Addrnn/basic_lstm_cell_10/mulrnn/basic_lstm_cell_10/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_10/Tanh_1Tanhrnn/basic_lstm_cell_10/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_10/Sigmoid_2Sigmoidrnn/basic_lstm_cell_10/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_10/mul_2Mulrnn/basic_lstm_cell_10/Tanh_1 rnn/basic_lstm_cell_10/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_11/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_11/basic_lstm_cell/concatConcatV2split:11rnn/basic_lstm_cell_10/mul_22rnn/basic_lstm_cell_11/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_11/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_11/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_11/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_11/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_11/splitSplit&rnn/basic_lstm_cell_11/split/split_dim.rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_11/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_11/addAddrnn/basic_lstm_cell_11/split:2rnn/basic_lstm_cell_11/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_11/SigmoidSigmoidrnn/basic_lstm_cell_11/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_11/mulMulrnn/basic_lstm_cell_10/add_1rnn/basic_lstm_cell_11/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_11/Sigmoid_1Sigmoidrnn/basic_lstm_cell_11/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_11/TanhTanhrnn/basic_lstm_cell_11/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_11/mul_1Mul rnn/basic_lstm_cell_11/Sigmoid_1rnn/basic_lstm_cell_11/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_11/add_1Addrnn/basic_lstm_cell_11/mulrnn/basic_lstm_cell_11/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_11/Tanh_1Tanhrnn/basic_lstm_cell_11/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_11/Sigmoid_2Sigmoidrnn/basic_lstm_cell_11/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_11/mul_2Mulrnn/basic_lstm_cell_11/Tanh_1 rnn/basic_lstm_cell_11/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_12/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_12/basic_lstm_cell/concatConcatV2split:12rnn/basic_lstm_cell_11/mul_22rnn/basic_lstm_cell_12/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_12/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_12/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_12/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_12/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_12/splitSplit&rnn/basic_lstm_cell_12/split/split_dim.rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_12/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_12/addAddrnn/basic_lstm_cell_12/split:2rnn/basic_lstm_cell_12/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_12/SigmoidSigmoidrnn/basic_lstm_cell_12/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_12/mulMulrnn/basic_lstm_cell_11/add_1rnn/basic_lstm_cell_12/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_12/Sigmoid_1Sigmoidrnn/basic_lstm_cell_12/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_12/TanhTanhrnn/basic_lstm_cell_12/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_12/mul_1Mul rnn/basic_lstm_cell_12/Sigmoid_1rnn/basic_lstm_cell_12/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_12/add_1Addrnn/basic_lstm_cell_12/mulrnn/basic_lstm_cell_12/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_12/Tanh_1Tanhrnn/basic_lstm_cell_12/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_12/Sigmoid_2Sigmoidrnn/basic_lstm_cell_12/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_12/mul_2Mulrnn/basic_lstm_cell_12/Tanh_1 rnn/basic_lstm_cell_12/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_13/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_13/basic_lstm_cell/concatConcatV2split:13rnn/basic_lstm_cell_12/mul_22rnn/basic_lstm_cell_13/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_13/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_13/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_13/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_13/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_13/splitSplit&rnn/basic_lstm_cell_13/split/split_dim.rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_13/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_13/addAddrnn/basic_lstm_cell_13/split:2rnn/basic_lstm_cell_13/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_13/SigmoidSigmoidrnn/basic_lstm_cell_13/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_13/mulMulrnn/basic_lstm_cell_12/add_1rnn/basic_lstm_cell_13/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_13/Sigmoid_1Sigmoidrnn/basic_lstm_cell_13/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_13/TanhTanhrnn/basic_lstm_cell_13/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_13/mul_1Mul rnn/basic_lstm_cell_13/Sigmoid_1rnn/basic_lstm_cell_13/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_13/add_1Addrnn/basic_lstm_cell_13/mulrnn/basic_lstm_cell_13/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_13/Tanh_1Tanhrnn/basic_lstm_cell_13/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_13/Sigmoid_2Sigmoidrnn/basic_lstm_cell_13/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_13/mul_2Mulrnn/basic_lstm_cell_13/Tanh_1 rnn/basic_lstm_cell_13/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_14/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_14/basic_lstm_cell/concatConcatV2split:14rnn/basic_lstm_cell_13/mul_22rnn/basic_lstm_cell_14/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_14/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_14/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_14/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_14/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_14/splitSplit&rnn/basic_lstm_cell_14/split/split_dim.rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_14/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_14/addAddrnn/basic_lstm_cell_14/split:2rnn/basic_lstm_cell_14/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_14/SigmoidSigmoidrnn/basic_lstm_cell_14/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_14/mulMulrnn/basic_lstm_cell_13/add_1rnn/basic_lstm_cell_14/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_14/Sigmoid_1Sigmoidrnn/basic_lstm_cell_14/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_14/TanhTanhrnn/basic_lstm_cell_14/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_14/mul_1Mul rnn/basic_lstm_cell_14/Sigmoid_1rnn/basic_lstm_cell_14/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_14/add_1Addrnn/basic_lstm_cell_14/mulrnn/basic_lstm_cell_14/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_14/Tanh_1Tanhrnn/basic_lstm_cell_14/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_14/Sigmoid_2Sigmoidrnn/basic_lstm_cell_14/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_14/mul_2Mulrnn/basic_lstm_cell_14/Tanh_1 rnn/basic_lstm_cell_14/Sigmoid_2*
T0*
_output_shapes

:
ѕ
MatMulMatMulrnn/basic_lstm_cell/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
L
addAddMatMulVariable_1/read*
T0*
_output_shapes

:
ї
MatMul_1MatMulrnn/basic_lstm_cell_1/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_1AddMatMul_1Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_2MatMulrnn/basic_lstm_cell_2/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_2AddMatMul_2Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_3MatMulrnn/basic_lstm_cell_3/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_3AddMatMul_3Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_4MatMulrnn/basic_lstm_cell_4/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_4AddMatMul_4Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_5MatMulrnn/basic_lstm_cell_5/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_5AddMatMul_5Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_6MatMulrnn/basic_lstm_cell_6/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_6AddMatMul_6Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_7MatMulrnn/basic_lstm_cell_7/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_7AddMatMul_7Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_8MatMulrnn/basic_lstm_cell_8/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_8AddMatMul_8Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_9MatMulrnn/basic_lstm_cell_9/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_9AddMatMul_9Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_10MatMulrnn/basic_lstm_cell_10/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_10Add	MatMul_10Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_11MatMulrnn/basic_lstm_cell_11/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_11Add	MatMul_11Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_12MatMulrnn/basic_lstm_cell_12/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_12Add	MatMul_12Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_13MatMulrnn/basic_lstm_cell_13/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_13Add	MatMul_13Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_14MatMulrnn/basic_lstm_cell_14/mul_2weight2/read*
transpose_a( *
T0*
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
║
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
└
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
└
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
└
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
└
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
└
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
└
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
└
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
└
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
└
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
├
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
├
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
├
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
├
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
├
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_14
unstack:14*
T0*
Tlabels0*$
_output_shapes
::
╣	
Rank/packedPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*

axis *
T0*
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
rangeRangerange/startRankrange/delta*

Tidx0*
_output_shapes
:
Й	
total_loss/inputPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*

axis *
T0*
_output_shapes

:*
N
i

total_lossMeantotal_loss/inputrange*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
p
gradients/total_loss_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
`
gradients/total_loss_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
p
gradients/total_loss_grad/addAddrangegradients/total_loss_grad/Size*
T0*
_output_shapes
:
Ї
gradients/total_loss_grad/modFloorModgradients/total_loss_grad/addgradients/total_loss_grad/Size*
T0*
_output_shapes
:
k
!gradients/total_loss_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
g
%gradients/total_loss_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
g
%gradients/total_loss_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Й
gradients/total_loss_grad/rangeRange%gradients/total_loss_grad/range/startgradients/total_loss_grad/Size%gradients/total_loss_grad/range/delta*

Tidx0*
_output_shapes
:
f
$gradients/total_loss_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
ћ
gradients/total_loss_grad/FillFill!gradients/total_loss_grad/Shape_1$gradients/total_loss_grad/Fill/value*
T0*
_output_shapes
:
­
'gradients/total_loss_grad/DynamicStitchDynamicStitchgradients/total_loss_grad/rangegradients/total_loss_grad/modgradients/total_loss_grad/Shapegradients/total_loss_grad/Fill*
T0*#
_output_shapes
:         *
N
e
#gradients/total_loss_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
е
!gradients/total_loss_grad/MaximumMaximum'gradients/total_loss_grad/DynamicStitch#gradients/total_loss_grad/Maximum/y*
T0*#
_output_shapes
:         
Ќ
"gradients/total_loss_grad/floordivFloorDivgradients/total_loss_grad/Shape!gradients/total_loss_grad/Maximum*
T0*
_output_shapes
:
ќ
!gradients/total_loss_grad/ReshapeReshapegradients/Fill'gradients/total_loss_grad/DynamicStitch*
Tshape0*
T0*
_output_shapes
:
║
gradients/total_loss_grad/TileTile!gradients/total_loss_grad/Reshape"gradients/total_loss_grad/floordiv*
T0*0
_output_shapes
:                  *

Tmultiples0
r
!gradients/total_loss_grad/Shape_2Const*
valueB"      *
_output_shapes
:*
dtype0
d
!gradients/total_loss_grad/Shape_3Const*
valueB *
_output_shapes
: *
dtype0
i
gradients/total_loss_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
е
gradients/total_loss_grad/ProdProd!gradients/total_loss_grad/Shape_2gradients/total_loss_grad/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
k
!gradients/total_loss_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
г
 gradients/total_loss_grad/Prod_1Prod!gradients/total_loss_grad/Shape_3!gradients/total_loss_grad/Const_1*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
g
%gradients/total_loss_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
ў
#gradients/total_loss_grad/Maximum_1Maximum gradients/total_loss_grad/Prod_1%gradients/total_loss_grad/Maximum_1/y*
T0*
_output_shapes
: 
ќ
$gradients/total_loss_grad/floordiv_1FloorDivgradients/total_loss_grad/Prod#gradients/total_loss_grad/Maximum_1*
T0*
_output_shapes
: 
|
gradients/total_loss_grad/CastCast$gradients/total_loss_grad/floordiv_1*

DstT0*
_output_shapes
: *

SrcT0
Ћ
!gradients/total_loss_grad/truedivRealDivgradients/total_loss_grad/Tilegradients/total_loss_grad/Cast*
T0*
_output_shapes

:
С
'gradients/total_loss/input_grad/unstackUnpack!gradients/total_loss_grad/truediv*

axis *
T0*n
_output_shapes\
Z:::::::::::::::*	
num
b
0gradients/total_loss/input_grad/tuple/group_depsNoOp(^gradients/total_loss/input_grad/unstack
Ђ
8gradients/total_loss/input_grad/tuple/control_dependencyIdentity'gradients/total_loss/input_grad/unstack1^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_1Identity)gradients/total_loss/input_grad/unstack:11^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_2Identity)gradients/total_loss/input_grad/unstack:21^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_3Identity)gradients/total_loss/input_grad/unstack:31^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_4Identity)gradients/total_loss/input_grad/unstack:41^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_5Identity)gradients/total_loss/input_grad/unstack:51^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_6Identity)gradients/total_loss/input_grad/unstack:61^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_7Identity)gradients/total_loss/input_grad/unstack:71^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_8Identity)gradients/total_loss/input_grad/unstack:81^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_9Identity)gradients/total_loss/input_grad/unstack:91^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_10Identity*gradients/total_loss/input_grad/unstack:101^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_11Identity*gradients/total_loss/input_grad/unstack:111^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_12Identity*gradients/total_loss/input_grad/unstack:121^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_13Identity*gradients/total_loss/input_grad/unstack:131^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_14Identity*gradients/total_loss/input_grad/unstack:141^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ћ
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ц
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
░
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
┼
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims8gradients/total_loss/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
Н
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_1	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_2	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_3	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_4	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_5	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_6	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_7	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_8	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_9	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_10	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_11	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_12	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_13	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_14	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
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
┤
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
с
gradients/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ј
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
у
gradients/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Л
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*-
_class#
!loc:@gradients/add_grad/Reshape
О
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_grad/Reshape_1
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
║
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_1_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_1_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
┘
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_1_grad/Reshape
▀
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
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
║
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_2_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_2_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
┘
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_2_grad/Reshape
▀
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
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
║
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_3_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_3_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_3_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
┘
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_3_grad/Reshape
▀
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
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
║
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_4_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_4_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
┘
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_4_grad/Reshape
▀
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
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
║
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_5_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_5_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
┘
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_5_grad/Reshape
▀
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
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
║
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_6_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_6_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
┘
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_6_grad/Reshape
▀
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1
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
║
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_7_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_7_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_7_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_7_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
┘
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_7_grad/Reshape
▀
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1
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
║
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_8_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_8_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
┘
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_8_grad/Reshape
▀
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1
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
║
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_9_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_9_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_9_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_9_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
┘
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_9_grad/Reshape
▀
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1
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
й
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_10_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_10_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_10_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_10_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
П
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_10_grad/Reshape
с
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1
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
й
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_11_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_11_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_11_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_11_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
П
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_11_grad/Reshape
с
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1
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
й
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_12_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_12_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
П
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_12_grad/Reshape
с
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1
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
й
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_13_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_13_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_13_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_13_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
П
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_13_grad/Reshape
с
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1
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
й
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_14_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_14_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_14_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_14_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
П
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_14_grad/Reshape
с
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1
░
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┐
gradients/MatMul_grad/MatMul_1MatMulrnn/basic_lstm_cell/mul_2+gradients/add_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
█
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
р
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
┤
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_1_grad/MatMul_1MatMulrnn/basic_lstm_cell_1/mul_2-gradients/add_1_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
с
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
ж
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
┤
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_2_grad/MatMul_1MatMulrnn/basic_lstm_cell_2/mul_2-gradients/add_2_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
с
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
ж
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1
┤
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_3_grad/MatMul_1MatMulrnn/basic_lstm_cell_3/mul_2-gradients/add_3_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
с
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
ж
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1
┤
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_4_grad/MatMul_1MatMulrnn/basic_lstm_cell_4/mul_2-gradients/add_4_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
с
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
ж
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1
┤
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_5_grad/MatMul_1MatMulrnn/basic_lstm_cell_5/mul_2-gradients/add_5_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
с
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
ж
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1
┤
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_6_grad/MatMul_1MatMulrnn/basic_lstm_cell_6/mul_2-gradients/add_6_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
с
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
ж
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1
┤
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_7_grad/MatMul_1MatMulrnn/basic_lstm_cell_7/mul_2-gradients/add_7_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
с
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
ж
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1
┤
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_8_grad/MatMul_1MatMulrnn/basic_lstm_cell_8/mul_2-gradients/add_8_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
с
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
ж
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1
┤
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_9_grad/MatMul_1MatMulrnn/basic_lstm_cell_9/mul_2-gradients/add_9_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
с
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
ж
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1
Х
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_10_grad/MatMul_1MatMulrnn/basic_lstm_cell_10/mul_2.gradients/add_10_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
у
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
ь
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1
Х
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_11_grad/MatMul_1MatMulrnn/basic_lstm_cell_11/mul_2.gradients/add_11_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
у
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
ь
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1
Х
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_12_grad/MatMul_1MatMulrnn/basic_lstm_cell_12/mul_2.gradients/add_12_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
у
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
ь
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1
Х
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_13_grad/MatMul_1MatMulrnn/basic_lstm_cell_13/mul_2.gradients/add_13_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
у
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
ь
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1
Х
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_14_grad/MatMul_1MatMulrnn/basic_lstm_cell_14/mul_2.gradients/add_14_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
у
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul
ь
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1
█
gradients/AddNAddN-gradients/add_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_14_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*/
_class%
#!loc:@gradients/add_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_14/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_14/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┤
/gradients/rnn/basic_lstm_cell_14/mul_2_grad/mulMul1gradients/MatMul_14_grad/tuple/control_dependency rnn/basic_lstm_cell_14/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_14/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_14/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_14/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_14/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
│
1gradients/rnn/basic_lstm_cell_14/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_14/Tanh_11gradients/MatMul_14_grad/tuple/control_dependency*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_14/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_14/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1
ї
gradients/AddN_1AddN0gradients/MatMul_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_14_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
¤
5gradients/rnn/basic_lstm_cell_14/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_14/Tanh_1Dgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_14/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_14/Sigmoid_2Fgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ѓ
1gradients/rnn/basic_lstm_cell_14/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_14/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
/gradients/rnn/basic_lstm_cell_14/add_1_grad/SumSum5gradients/rnn/basic_lstm_cell_14/Tanh_1_grad/TanhGradAgradients/rnn/basic_lstm_cell_14/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_14/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
1gradients/rnn/basic_lstm_cell_14/add_1_grad/Sum_1Sum5gradients/rnn/basic_lstm_cell_14/Tanh_1_grad/TanhGradCgradients/rnn/basic_lstm_cell_14/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_14/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_14/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_14/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_14/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_14/mul_grad/Shape1gradients/rnn/basic_lstm_cell_14/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_14/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_14/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_14/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_14/mul_grad/mul?gradients/rnn/basic_lstm_cell_14/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_14/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_14/mul_grad/Sum/gradients/rnn/basic_lstm_cell_14/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_14/mul_grad/mul_1Mulrnn/basic_lstm_cell_13/add_1Dgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_14/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_14/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_14/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_14/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_14/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_14/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_14/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_14/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_14/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_14/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_14/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_14/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_14/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_14/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_14/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_14/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_14/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_14/Sigmoid_1Fgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_14/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_14/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_14/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_14/SigmoidDgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_14/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_14/Sigmoid_1Dgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_14/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_14/TanhFgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_14/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_14/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_14/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_14/add_grad/Shape1gradients/rnn/basic_lstm_cell_14/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_14/add_grad/SumSum9gradients/rnn/basic_lstm_cell_14/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_14/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_14/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_14/add_grad/Sum/gradients/rnn/basic_lstm_cell_14/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_14/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_14/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_14/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_14/add_grad/Sum_11gradients/rnn/basic_lstm_cell_14/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_14/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_14/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_14/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_14/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_14/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_14/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_14/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_14/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_14/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_14/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_14/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_14/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_14/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_14/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_14/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_14/split_grad/concatJ^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_14/split_grad/concatO^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_14/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_14/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_14/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_2AddN1gradients/MatMul_13_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_13/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_13/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_13/mul_2_grad/mulMulgradients/AddN_2 rnn/basic_lstm_cell_13/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_13/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_13/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_13/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_13/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_13/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_13/Tanh_1gradients/AddN_2*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_13/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_13/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_13/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_13/Tanh_1Dgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_13/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_13/Sigmoid_2Fgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_3AddNBgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_13/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_13/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_13/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_13/add_1_grad/SumSumgradients/AddN_3Agradients/rnn/basic_lstm_cell_13/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_13/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_13/add_1_grad/Sum_1Sumgradients/AddN_3Cgradients/rnn/basic_lstm_cell_13/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_13/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_13/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_13/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_13/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_13/mul_grad/Shape1gradients/rnn/basic_lstm_cell_13/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_13/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_13/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_13/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_13/mul_grad/mul?gradients/rnn/basic_lstm_cell_13/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_13/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_13/mul_grad/Sum/gradients/rnn/basic_lstm_cell_13/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_13/mul_grad/mul_1Mulrnn/basic_lstm_cell_12/add_1Dgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_13/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_13/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_13/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_13/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_13/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_13/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_13/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_13/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_13/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_13/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_13/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_13/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_13/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_13/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_13/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_13/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_13/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_13/Sigmoid_1Fgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_13/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_13/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_13/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_13/SigmoidDgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_13/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_13/Sigmoid_1Dgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_13/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_13/TanhFgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_13/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_13/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_13/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_13/add_grad/Shape1gradients/rnn/basic_lstm_cell_13/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_13/add_grad/SumSum9gradients/rnn/basic_lstm_cell_13/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_13/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_13/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_13/add_grad/Sum/gradients/rnn/basic_lstm_cell_13/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_13/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_13/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_13/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_13/add_grad/Sum_11gradients/rnn/basic_lstm_cell_13/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_13/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_13/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_13/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_13/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_13/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_13/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_13/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_13/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_13/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_13/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_13/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_13/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_13/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_13/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_13/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_13/split_grad/concatJ^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_13/split_grad/concatO^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_13/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_13/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_13/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_4AddN1gradients/MatMul_12_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_12/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_12/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_12/mul_2_grad/mulMulgradients/AddN_4 rnn/basic_lstm_cell_12/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_12/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_12/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_12/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_12/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_12/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_12/Tanh_1gradients/AddN_4*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_12/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_12/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_12/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_12/Tanh_1Dgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_12/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_12/Sigmoid_2Fgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_5AddNBgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_12/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_12/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_12/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_12/add_1_grad/SumSumgradients/AddN_5Agradients/rnn/basic_lstm_cell_12/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_12/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_12/add_1_grad/Sum_1Sumgradients/AddN_5Cgradients/rnn/basic_lstm_cell_12/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_12/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_12/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_12/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_12/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_12/mul_grad/Shape1gradients/rnn/basic_lstm_cell_12/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_12/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_12/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_12/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_12/mul_grad/mul?gradients/rnn/basic_lstm_cell_12/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_12/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_12/mul_grad/Sum/gradients/rnn/basic_lstm_cell_12/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_12/mul_grad/mul_1Mulrnn/basic_lstm_cell_11/add_1Dgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_12/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_12/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_12/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_12/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_12/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_12/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_12/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_12/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_12/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_12/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_12/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_12/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_12/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_12/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_12/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_12/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_12/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_12/Sigmoid_1Fgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_12/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_12/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_12/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_12/SigmoidDgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_12/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_12/Sigmoid_1Dgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_12/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_12/TanhFgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_12/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_12/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_12/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_12/add_grad/Shape1gradients/rnn/basic_lstm_cell_12/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_12/add_grad/SumSum9gradients/rnn/basic_lstm_cell_12/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_12/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_12/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_12/add_grad/Sum/gradients/rnn/basic_lstm_cell_12/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_12/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_12/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_12/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_12/add_grad/Sum_11gradients/rnn/basic_lstm_cell_12/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_12/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_12/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_12/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_12/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_12/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_12/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_12/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_12/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_12/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_12/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_12/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_12/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_12/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_12/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_12/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_12/split_grad/concatJ^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_12/split_grad/concatO^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_12/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_12/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_12/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_6AddN1gradients/MatMul_11_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_11/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_11/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_11/mul_2_grad/mulMulgradients/AddN_6 rnn/basic_lstm_cell_11/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_11/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_11/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_11/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_11/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_11/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_11/Tanh_1gradients/AddN_6*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_11/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_11/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_11/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_11/Tanh_1Dgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_11/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_11/Sigmoid_2Fgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_7AddNBgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_11/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_11/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_11/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_11/add_1_grad/SumSumgradients/AddN_7Agradients/rnn/basic_lstm_cell_11/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_11/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_11/add_1_grad/Sum_1Sumgradients/AddN_7Cgradients/rnn/basic_lstm_cell_11/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_11/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_11/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_11/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_11/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_11/mul_grad/Shape1gradients/rnn/basic_lstm_cell_11/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_11/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_11/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_11/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_11/mul_grad/mul?gradients/rnn/basic_lstm_cell_11/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_11/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_11/mul_grad/Sum/gradients/rnn/basic_lstm_cell_11/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_11/mul_grad/mul_1Mulrnn/basic_lstm_cell_10/add_1Dgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_11/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_11/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_11/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_11/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_11/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_11/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_11/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_11/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_11/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_11/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_11/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_11/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_11/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_11/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_11/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_11/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_11/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_11/Sigmoid_1Fgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_11/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_11/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_11/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_11/SigmoidDgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_11/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_11/Sigmoid_1Dgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_11/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_11/TanhFgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_11/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_11/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_11/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_11/add_grad/Shape1gradients/rnn/basic_lstm_cell_11/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_11/add_grad/SumSum9gradients/rnn/basic_lstm_cell_11/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_11/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_11/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_11/add_grad/Sum/gradients/rnn/basic_lstm_cell_11/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_11/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_11/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_11/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_11/add_grad/Sum_11gradients/rnn/basic_lstm_cell_11/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_11/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_11/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_11/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_11/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_11/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_11/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_11/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_11/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_11/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_11/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_11/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_11/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_11/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_11/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_11/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_11/split_grad/concatJ^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_11/split_grad/concatO^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_11/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_11/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_11/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_8AddN1gradients/MatMul_10_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_10/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_10/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_10/mul_2_grad/mulMulgradients/AddN_8 rnn/basic_lstm_cell_10/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_10/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_10/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_10/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_10/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_10/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_10/Tanh_1gradients/AddN_8*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_10/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_10/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_10/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_10/Tanh_1Dgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_10/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_10/Sigmoid_2Fgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_9AddNBgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_10/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_10/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_10/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_10/add_1_grad/SumSumgradients/AddN_9Agradients/rnn/basic_lstm_cell_10/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_10/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_10/add_1_grad/Sum_1Sumgradients/AddN_9Cgradients/rnn/basic_lstm_cell_10/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_10/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_10/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_10/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_10/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_10/mul_grad/Shape1gradients/rnn/basic_lstm_cell_10/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_10/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_10/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_10/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_10/mul_grad/mul?gradients/rnn/basic_lstm_cell_10/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_10/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_10/mul_grad/Sum/gradients/rnn/basic_lstm_cell_10/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
┬
/gradients/rnn/basic_lstm_cell_10/mul_grad/mul_1Mulrnn/basic_lstm_cell_9/add_1Dgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_10/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_10/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_10/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_10/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_10/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_10/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_10/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_10/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_10/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_10/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_10/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_10/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_10/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_10/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_10/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_10/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_10/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_10/Sigmoid_1Fgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_10/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_10/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_10/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_10/SigmoidDgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_10/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_10/Sigmoid_1Dgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_10/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_10/TanhFgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_10/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_10/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_10/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_10/add_grad/Shape1gradients/rnn/basic_lstm_cell_10/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_10/add_grad/SumSum9gradients/rnn/basic_lstm_cell_10/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_10/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_10/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_10/add_grad/Sum/gradients/rnn/basic_lstm_cell_10/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_10/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_10/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_10/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_10/add_grad/Sum_11gradients/rnn/basic_lstm_cell_10/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_10/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_10/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_10/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_10/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_10/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_10/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_10/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_10/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_10/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_10/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_10/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_10/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_10/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_10/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_10/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_10/split_grad/concatJ^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_10/split_grad/concatO^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_10/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_10/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_10/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1
Ѕ
gradients/AddN_10AddN0gradients/MatMul_9_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_9/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_9/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_9/mul_2_grad/mulMulgradients/AddN_10rnn/basic_lstm_cell_9/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_9/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_9/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_9/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_9/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_9/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_9/Tanh_1gradients/AddN_10*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_9/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_9/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_9/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_9/Tanh_1Cgradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_9/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_9/Sigmoid_2Egradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_11AddNBgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_9/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_9/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_9/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_9/add_1_grad/SumSumgradients/AddN_11@gradients/rnn/basic_lstm_cell_9/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_9/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_9/add_1_grad/Sum_1Sumgradients/AddN_11Bgradients/rnn/basic_lstm_cell_9/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_9/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_9/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_9/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_9/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_9/mul_grad/Shape0gradients/rnn/basic_lstm_cell_9/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_9/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_9/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_9/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_9/mul_grad/mul>gradients/rnn/basic_lstm_cell_9/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_9/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_9/mul_grad/Sum.gradients/rnn/basic_lstm_cell_9/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_9/mul_grad/mul_1Mulrnn/basic_lstm_cell_8/add_1Cgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_9/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_9/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_9/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_9/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_9/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_9/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_9/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_9/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_9/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_9/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_9/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_9/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_9/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_9/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_9/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_9/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_9/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_9/Sigmoid_1Egradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_9/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_9/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_9/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_9/SigmoidCgradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_9/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_9/Sigmoid_1Cgradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_9/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_9/TanhEgradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_9/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_9/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_9/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_9/add_grad/Shape0gradients/rnn/basic_lstm_cell_9/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_9/add_grad/SumSum8gradients/rnn/basic_lstm_cell_9/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_9/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_9/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_9/add_grad/Sum.gradients/rnn/basic_lstm_cell_9/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_9/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_9/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_9/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_9/add_grad/Sum_10gradients/rnn/basic_lstm_cell_9/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_9/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_9/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_9/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_9/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_9/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_9/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_9/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_9/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_9/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_9/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_9/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_9/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_9/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_9/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_9/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_9/split_grad/concatI^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_9/split_grad/concatN^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_9/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_9/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_9/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_12AddN0gradients/MatMul_8_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_8/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_8/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_8/mul_2_grad/mulMulgradients/AddN_12rnn/basic_lstm_cell_8/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_8/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_8/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_8/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_8/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_8/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_8/Tanh_1gradients/AddN_12*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_8/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_8/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_8/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_8/Tanh_1Cgradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_8/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_8/Sigmoid_2Egradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_13AddNAgradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_8/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_8/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_8/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_8/add_1_grad/SumSumgradients/AddN_13@gradients/rnn/basic_lstm_cell_8/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_8/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_8/add_1_grad/Sum_1Sumgradients/AddN_13Bgradients/rnn/basic_lstm_cell_8/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_8/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_8/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_8/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_8/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_8/mul_grad/Shape0gradients/rnn/basic_lstm_cell_8/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_8/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_8/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_8/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_8/mul_grad/mul>gradients/rnn/basic_lstm_cell_8/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_8/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_8/mul_grad/Sum.gradients/rnn/basic_lstm_cell_8/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_8/mul_grad/mul_1Mulrnn/basic_lstm_cell_7/add_1Cgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_8/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_8/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_8/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_8/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_8/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_8/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_8/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_8/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_8/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_8/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_8/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_8/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_8/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_8/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_8/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_8/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_8/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_8/Sigmoid_1Egradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_8/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_8/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_8/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_8/SigmoidCgradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_8/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_8/Sigmoid_1Cgradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_8/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_8/TanhEgradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_8/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_8/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_8/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_8/add_grad/Shape0gradients/rnn/basic_lstm_cell_8/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_8/add_grad/SumSum8gradients/rnn/basic_lstm_cell_8/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_8/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_8/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_8/add_grad/Sum.gradients/rnn/basic_lstm_cell_8/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_8/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_8/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_8/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_8/add_grad/Sum_10gradients/rnn/basic_lstm_cell_8/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_8/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_8/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_8/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_8/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_8/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_8/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_8/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_8/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_8/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_8/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_8/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_8/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_8/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_8/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_8/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_8/split_grad/concatI^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_8/split_grad/concatN^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_8/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_8/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_8/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_14AddN0gradients/MatMul_7_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_7/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_7/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_7/mul_2_grad/mulMulgradients/AddN_14rnn/basic_lstm_cell_7/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_7/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_7/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_7/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_7/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_7/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_7/Tanh_1gradients/AddN_14*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_7/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_7/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_7/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_7/Tanh_1Cgradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_7/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_7/Sigmoid_2Egradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_15AddNAgradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_7/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_7/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_7/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_7/add_1_grad/SumSumgradients/AddN_15@gradients/rnn/basic_lstm_cell_7/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_7/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_7/add_1_grad/Sum_1Sumgradients/AddN_15Bgradients/rnn/basic_lstm_cell_7/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_7/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_7/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_7/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_7/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_7/mul_grad/Shape0gradients/rnn/basic_lstm_cell_7/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_7/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_7/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_7/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_7/mul_grad/mul>gradients/rnn/basic_lstm_cell_7/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_7/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_7/mul_grad/Sum.gradients/rnn/basic_lstm_cell_7/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_7/mul_grad/mul_1Mulrnn/basic_lstm_cell_6/add_1Cgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_7/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_7/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_7/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_7/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_7/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_7/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_7/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_7/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_7/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_7/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_7/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_7/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_7/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_7/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_7/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_7/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_7/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_7/Sigmoid_1Egradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_7/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_7/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_7/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_7/SigmoidCgradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_7/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_7/Sigmoid_1Cgradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_7/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_7/TanhEgradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_7/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_7/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_7/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_7/add_grad/Shape0gradients/rnn/basic_lstm_cell_7/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_7/add_grad/SumSum8gradients/rnn/basic_lstm_cell_7/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_7/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_7/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_7/add_grad/Sum.gradients/rnn/basic_lstm_cell_7/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_7/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_7/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_7/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_7/add_grad/Sum_10gradients/rnn/basic_lstm_cell_7/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_7/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_7/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_7/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_7/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_7/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_7/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_7/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_7/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_7/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_7/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_7/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_7/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_7/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_7/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_7/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_7/split_grad/concatI^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_7/split_grad/concatN^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_7/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_7/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_7/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_16AddN0gradients/MatMul_6_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_6/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_6/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_6/mul_2_grad/mulMulgradients/AddN_16rnn/basic_lstm_cell_6/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_6/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_6/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_6/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_6/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_6/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_6/Tanh_1gradients/AddN_16*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_6/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_6/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_6/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_6/Tanh_1Cgradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_6/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_6/Sigmoid_2Egradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_17AddNAgradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_6/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_6/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_6/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_6/add_1_grad/SumSumgradients/AddN_17@gradients/rnn/basic_lstm_cell_6/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_6/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_6/add_1_grad/Sum_1Sumgradients/AddN_17Bgradients/rnn/basic_lstm_cell_6/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_6/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_6/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_6/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_6/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_6/mul_grad/Shape0gradients/rnn/basic_lstm_cell_6/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_6/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_6/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_6/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_6/mul_grad/mul>gradients/rnn/basic_lstm_cell_6/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_6/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_6/mul_grad/Sum.gradients/rnn/basic_lstm_cell_6/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_6/mul_grad/mul_1Mulrnn/basic_lstm_cell_5/add_1Cgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_6/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_6/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_6/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_6/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_6/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_6/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_6/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_6/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_6/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_6/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_6/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_6/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_6/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_6/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_6/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_6/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_6/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_6/Sigmoid_1Egradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_6/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_6/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_6/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_6/SigmoidCgradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_6/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_6/Sigmoid_1Cgradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_6/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_6/TanhEgradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_6/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_6/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_6/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_6/add_grad/Shape0gradients/rnn/basic_lstm_cell_6/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_6/add_grad/SumSum8gradients/rnn/basic_lstm_cell_6/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_6/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_6/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_6/add_grad/Sum.gradients/rnn/basic_lstm_cell_6/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_6/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_6/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_6/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_6/add_grad/Sum_10gradients/rnn/basic_lstm_cell_6/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_6/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_6/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_6/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_6/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_6/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_6/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_6/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_6/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_6/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_6/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_6/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_6/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_6/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_6/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_6/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_6/split_grad/concatI^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_6/split_grad/concatN^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_6/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_6/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_6/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_18AddN0gradients/MatMul_5_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_5/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_5/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_5/mul_2_grad/mulMulgradients/AddN_18rnn/basic_lstm_cell_5/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_5/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_5/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_5/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_5/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_5/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_5/Tanh_1gradients/AddN_18*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_5/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_5/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_5/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_5/Tanh_1Cgradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_5/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_5/Sigmoid_2Egradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_19AddNAgradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_5/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_5/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_5/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_5/add_1_grad/SumSumgradients/AddN_19@gradients/rnn/basic_lstm_cell_5/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_5/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_5/add_1_grad/Sum_1Sumgradients/AddN_19Bgradients/rnn/basic_lstm_cell_5/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_5/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_5/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_5/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_5/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_5/mul_grad/Shape0gradients/rnn/basic_lstm_cell_5/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_5/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_5/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_5/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_5/mul_grad/mul>gradients/rnn/basic_lstm_cell_5/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_5/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_5/mul_grad/Sum.gradients/rnn/basic_lstm_cell_5/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_5/mul_grad/mul_1Mulrnn/basic_lstm_cell_4/add_1Cgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_5/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_5/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_5/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_5/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_5/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_5/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_5/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_5/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_5/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_5/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_5/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_5/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_5/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_5/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_5/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_5/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_5/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_5/Sigmoid_1Egradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_5/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_5/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_5/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_5/SigmoidCgradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_5/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_5/Sigmoid_1Cgradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_5/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_5/TanhEgradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_5/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_5/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_5/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_5/add_grad/Shape0gradients/rnn/basic_lstm_cell_5/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_5/add_grad/SumSum8gradients/rnn/basic_lstm_cell_5/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_5/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_5/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_5/add_grad/Sum.gradients/rnn/basic_lstm_cell_5/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_5/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_5/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_5/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_5/add_grad/Sum_10gradients/rnn/basic_lstm_cell_5/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_5/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_5/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_5/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_5/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_5/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_5/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_5/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_5/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_5/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_5/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_5/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_5/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_5/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_5/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_5/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_5/split_grad/concatI^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_5/split_grad/concatN^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_5/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_5/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_5/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_20AddN0gradients/MatMul_4_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_4/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_4/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_4/mul_2_grad/mulMulgradients/AddN_20rnn/basic_lstm_cell_4/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_4/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_4/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_4/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_4/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_4/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_4/Tanh_1gradients/AddN_20*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_4/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_4/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_4/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_4/Tanh_1Cgradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_4/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_4/Sigmoid_2Egradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_21AddNAgradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_4/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_4/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_4/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_4/add_1_grad/SumSumgradients/AddN_21@gradients/rnn/basic_lstm_cell_4/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_4/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_4/add_1_grad/Sum_1Sumgradients/AddN_21Bgradients/rnn/basic_lstm_cell_4/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_4/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_4/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_4/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_4/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_4/mul_grad/Shape0gradients/rnn/basic_lstm_cell_4/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_4/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_4/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_4/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_4/mul_grad/mul>gradients/rnn/basic_lstm_cell_4/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_4/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_4/mul_grad/Sum.gradients/rnn/basic_lstm_cell_4/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_4/mul_grad/mul_1Mulrnn/basic_lstm_cell_3/add_1Cgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_4/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_4/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_4/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_4/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_4/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_4/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_4/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_4/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_4/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_4/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_4/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_4/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_4/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_4/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_4/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_4/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_4/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_4/Sigmoid_1Egradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_4/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_4/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_4/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_4/SigmoidCgradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_4/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_4/Sigmoid_1Cgradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_4/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_4/TanhEgradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_4/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_4/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_4/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_4/add_grad/Shape0gradients/rnn/basic_lstm_cell_4/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_4/add_grad/SumSum8gradients/rnn/basic_lstm_cell_4/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_4/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_4/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_4/add_grad/Sum.gradients/rnn/basic_lstm_cell_4/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_4/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_4/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_4/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_4/add_grad/Sum_10gradients/rnn/basic_lstm_cell_4/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_4/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_4/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_4/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_4/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_4/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_4/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_4/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_4/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_4/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_4/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_4/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_4/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_4/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_4/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_4/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_4/split_grad/concatI^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_4/split_grad/concatN^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_4/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_4/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_4/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_22AddN0gradients/MatMul_3_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_3/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_3/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_3/mul_2_grad/mulMulgradients/AddN_22rnn/basic_lstm_cell_3/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_3/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_3/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_3/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_3/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_3/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_3/Tanh_1gradients/AddN_22*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_3/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_3/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_3/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_3/Tanh_1Cgradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_3/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_3/Sigmoid_2Egradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_23AddNAgradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_3/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_3/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_3/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_3/add_1_grad/SumSumgradients/AddN_23@gradients/rnn/basic_lstm_cell_3/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_3/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_3/add_1_grad/Sum_1Sumgradients/AddN_23Bgradients/rnn/basic_lstm_cell_3/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_3/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_3/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_3/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_3/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_3/mul_grad/Shape0gradients/rnn/basic_lstm_cell_3/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_3/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_3/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_3/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_3/mul_grad/mul>gradients/rnn/basic_lstm_cell_3/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_3/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_3/mul_grad/Sum.gradients/rnn/basic_lstm_cell_3/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_3/mul_grad/mul_1Mulrnn/basic_lstm_cell_2/add_1Cgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_3/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_3/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_3/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_3/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_3/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_3/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_3/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_3/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_3/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_3/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_3/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_3/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_3/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_3/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_3/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_3/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_3/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_3/Sigmoid_1Egradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_3/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_3/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_3/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_3/SigmoidCgradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_3/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_3/Sigmoid_1Cgradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_3/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_3/TanhEgradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_3/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_3/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_3/add_grad/Shape0gradients/rnn/basic_lstm_cell_3/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_3/add_grad/SumSum8gradients/rnn/basic_lstm_cell_3/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_3/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_3/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_3/add_grad/Sum.gradients/rnn/basic_lstm_cell_3/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_3/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_3/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_3/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_3/add_grad/Sum_10gradients/rnn/basic_lstm_cell_3/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_3/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_3/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_3/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_3/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_3/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_3/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_3/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_3/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_3/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_3/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_3/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_3/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_3/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_3/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_3/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_3/split_grad/concatI^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_3/split_grad/concatN^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_3/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_3/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_3/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_24AddN0gradients/MatMul_2_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_2/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_2/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_2/mul_2_grad/mulMulgradients/AddN_24rnn/basic_lstm_cell_2/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_2/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_2/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_2/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_2/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_2/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_2/Tanh_1gradients/AddN_24*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_2/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_2/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_2/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_2/Tanh_1Cgradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_2/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_2/Sigmoid_2Egradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_25AddNAgradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_2/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_2/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_2/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_2/add_1_grad/SumSumgradients/AddN_25@gradients/rnn/basic_lstm_cell_2/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_2/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_2/add_1_grad/Sum_1Sumgradients/AddN_25Bgradients/rnn/basic_lstm_cell_2/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_2/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_2/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_2/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_2/mul_grad/Shape0gradients/rnn/basic_lstm_cell_2/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_2/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_2/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_2/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_2/mul_grad/mul>gradients/rnn/basic_lstm_cell_2/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_2/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_2/mul_grad/Sum.gradients/rnn/basic_lstm_cell_2/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_2/mul_grad/mul_1Mulrnn/basic_lstm_cell_1/add_1Cgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_2/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_2/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_2/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_2/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_2/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_2/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_2/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_2/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_2/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_2/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_2/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_2/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_2/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_2/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_2/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_2/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_2/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_2/Sigmoid_1Egradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_2/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_2/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_2/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_2/SigmoidCgradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_2/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_2/Sigmoid_1Cgradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_2/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_2/TanhEgradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_2/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_2/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_2/add_grad/Shape0gradients/rnn/basic_lstm_cell_2/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_2/add_grad/SumSum8gradients/rnn/basic_lstm_cell_2/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_2/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_2/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_2/add_grad/Sum.gradients/rnn/basic_lstm_cell_2/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_2/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_2/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_2/add_grad/Sum_10gradients/rnn/basic_lstm_cell_2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_2/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_2/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_2/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_2/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_2/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_2/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_2/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_2/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_2/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_2/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_2/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_2/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_2/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_2/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_2/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_2/split_grad/concatI^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_2/split_grad/concatN^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_2/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_2/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_2/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_26AddN0gradients/MatMul_1_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_1/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_1/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_1/mul_2_grad/mulMulgradients/AddN_26rnn/basic_lstm_cell_1/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_1/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_1/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_1/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_1/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_1/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_1/Tanh_1gradients/AddN_26*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_1/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_1/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_1/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_1/Tanh_1Cgradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_1/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_1/Sigmoid_2Egradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_27AddNAgradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_1/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_1/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_1/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_1/add_1_grad/SumSumgradients/AddN_27@gradients/rnn/basic_lstm_cell_1/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_1/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_1/add_1_grad/Sum_1Sumgradients/AddN_27Bgradients/rnn/basic_lstm_cell_1/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_1/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_1/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_1/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_1/mul_grad/Shape0gradients/rnn/basic_lstm_cell_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_1/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_1/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_1/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_1/mul_grad/mul>gradients/rnn/basic_lstm_cell_1/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_1/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_1/mul_grad/Sum.gradients/rnn/basic_lstm_cell_1/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Й
.gradients/rnn/basic_lstm_cell_1/mul_grad/mul_1Mulrnn/basic_lstm_cell/add_1Cgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_1/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_1/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_1/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_1/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_1/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_1/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_1/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_1/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_1/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_1/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_1/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_1/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_1/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_1/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_1/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_1/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_1/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_1/Sigmoid_1Egradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_1/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_1/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_1/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_1/SigmoidCgradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_1/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_1/Sigmoid_1Cgradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_1/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_1/TanhEgradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_1/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_1/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_1/add_grad/Shape0gradients/rnn/basic_lstm_cell_1/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_1/add_grad/SumSum8gradients/rnn/basic_lstm_cell_1/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_1/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_1/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_1/add_grad/Sum.gradients/rnn/basic_lstm_cell_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_1/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_1/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_1/add_grad/Sum_10gradients/rnn/basic_lstm_cell_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_1/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_1/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_1/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_1/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_1/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_1/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_1/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_1/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_1/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_1/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_1/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_1/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_1/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_1/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_1/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_1/split_grad/concatI^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_1/split_grad/concatN^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_1/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_1/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_1/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1
ё
gradients/AddN_28AddN.gradients/MatMul_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*/
_class%
#!loc:@gradients/MatMul_grad/MatMul

.gradients/rnn/basic_lstm_cell/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell/mul_2_grad/Shape0gradients/rnn/basic_lstm_cell/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ј
,gradients/rnn/basic_lstm_cell/mul_2_grad/mulMulgradients/AddN_28rnn/basic_lstm_cell/Sigmoid_2*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell/mul_2_grad/SumSum,gradients/rnn/basic_lstm_cell/mul_2_grad/mul>gradients/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/mul_2_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell/mul_2_grad/Sum.gradients/rnn/basic_lstm_cell/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ї
.gradients/rnn/basic_lstm_cell/mul_2_grad/mul_1Mulrnn/basic_lstm_cell/Tanh_1gradients/AddN_28*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell/mul_2_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell/mul_2_grad/mul_1@gradients/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell/mul_2_grad/Sum_10gradients/rnn/basic_lstm_cell/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell/mul_2_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape3^gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape:^gradients/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1:^gradients/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
к
2gradients/rnn/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell/Tanh_1Agradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
н
8gradients/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell/Sigmoid_2Cgradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Є
gradients/AddN_29AddNAgradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependency2gradients/rnn/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape

.gradients/rnn/basic_lstm_cell/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell/add_1_grad/Shape0gradients/rnn/basic_lstm_cell/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
к
,gradients/rnn/basic_lstm_cell/add_1_grad/SumSumgradients/AddN_29>gradients/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/add_1_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell/add_1_grad/Sum.gradients/rnn/basic_lstm_cell/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╩
.gradients/rnn/basic_lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_29@gradients/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell/add_1_grad/Sum_10gradients/rnn/basic_lstm_cell/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell/add_1_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell/add_1_grad/Reshape3^gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell/add_1_grad/Reshape:^gradients/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/add_1_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1:^gradients/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1
}
,gradients/rnn/basic_lstm_cell/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0

.gradients/rnn/basic_lstm_cell/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
­
<gradients/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/rnn/basic_lstm_cell/mul_grad/Shape.gradients/rnn/basic_lstm_cell/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
║
*gradients/rnn/basic_lstm_cell/mul_grad/mulMulAgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell/Sigmoid*
T0*
_output_shapes

:
█
*gradients/rnn/basic_lstm_cell/mul_grad/SumSum*gradients/rnn/basic_lstm_cell/mul_grad/mul<gradients/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╩
.gradients/rnn/basic_lstm_cell/mul_grad/ReshapeReshape*gradients/rnn/basic_lstm_cell/mul_grad/Sum,gradients/rnn/basic_lstm_cell/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
г
,gradients/rnn/basic_lstm_cell/mul_grad/mul_1MulPlaceholderAgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell/mul_grad/Sum_1Sum,gradients/rnn/basic_lstm_cell/mul_grad/mul_1>gradients/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/mul_grad/Reshape_1Reshape,gradients/rnn/basic_lstm_cell/mul_grad/Sum_1.gradients/rnn/basic_lstm_cell/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Б
7gradients/rnn/basic_lstm_cell/mul_grad/tuple/group_depsNoOp/^gradients/rnn/basic_lstm_cell/mul_grad/Reshape1^gradients/rnn/basic_lstm_cell/mul_grad/Reshape_1
А
?gradients/rnn/basic_lstm_cell/mul_grad/tuple/control_dependencyIdentity.gradients/rnn/basic_lstm_cell/mul_grad/Reshape8^gradients/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*A
_class7
53loc:@gradients/rnn/basic_lstm_cell/mul_grad/Reshape
Д
Agradients/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1Identity0gradients/rnn/basic_lstm_cell/mul_grad/Reshape_18^gradients/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/mul_grad/Reshape_1

.gradients/rnn/basic_lstm_cell/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell/mul_1_grad/Shape0gradients/rnn/basic_lstm_cell/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╗
,gradients/rnn/basic_lstm_cell/mul_1_grad/mulMulCgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell/Tanh*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell/mul_1_grad/SumSum,gradients/rnn/basic_lstm_cell/mul_1_grad/mul>gradients/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/mul_1_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell/mul_1_grad/Sum.gradients/rnn/basic_lstm_cell/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
┬
.gradients/rnn/basic_lstm_cell/mul_1_grad/mul_1Mulrnn/basic_lstm_cell/Sigmoid_1Cgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell/mul_1_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell/mul_1_grad/mul_1@gradients/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell/mul_1_grad/Sum_10gradients/rnn/basic_lstm_cell/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell/mul_1_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape3^gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape:^gradients/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1:^gradients/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1
╬
6gradients/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell/SigmoidAgradients/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
м
8gradients/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell/Sigmoid_1Agradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
─
0gradients/rnn/basic_lstm_cell/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell/TanhCgradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
}
,gradients/rnn/basic_lstm_cell/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
q
.gradients/rnn/basic_lstm_cell/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
­
<gradients/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/rnn/basic_lstm_cell/add_grad/Shape.gradients/rnn/basic_lstm_cell/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
у
*gradients/rnn/basic_lstm_cell/add_grad/SumSum6gradients/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGrad<gradients/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╩
.gradients/rnn/basic_lstm_cell/add_grad/ReshapeReshape*gradients/rnn/basic_lstm_cell/add_grad/Sum,gradients/rnn/basic_lstm_cell/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
в
,gradients/rnn/basic_lstm_cell/add_grad/Sum_1Sum6gradients/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╚
0gradients/rnn/basic_lstm_cell/add_grad/Reshape_1Reshape,gradients/rnn/basic_lstm_cell/add_grad/Sum_1.gradients/rnn/basic_lstm_cell/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Б
7gradients/rnn/basic_lstm_cell/add_grad/tuple/group_depsNoOp/^gradients/rnn/basic_lstm_cell/add_grad/Reshape1^gradients/rnn/basic_lstm_cell/add_grad/Reshape_1
А
?gradients/rnn/basic_lstm_cell/add_grad/tuple/control_dependencyIdentity.gradients/rnn/basic_lstm_cell/add_grad/Reshape8^gradients/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*
_output_shapes

:*A
_class7
53loc:@gradients/rnn/basic_lstm_cell/add_grad/Reshape
Ъ
Agradients/rnn/basic_lstm_cell/add_grad/tuple/control_dependency_1Identity0gradients/rnn/basic_lstm_cell/add_grad/Reshape_18^gradients/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*
_output_shapes
: *C
_class9
75loc:@gradients/rnn/basic_lstm_cell/add_grad/Reshape_1
Ё
/gradients/rnn/basic_lstm_cell/split_grad/concatConcatV28gradients/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGrad0gradients/rnn/basic_lstm_cell/Tanh_grad/TanhGrad?gradients/rnn/basic_lstm_cell/add_grad/tuple/control_dependency8gradients/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGrad#rnn/basic_lstm_cell/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
─
Hgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/rnn/basic_lstm_cell/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
м
Mgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients/rnn/basic_lstm_cell/split_grad/concatI^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGrad
¤
Ugradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/rnn/basic_lstm_cell/split_grad/concatN^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*B
_class8
64loc:@gradients/rnn/basic_lstm_cell/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell/basic_lstm_cell_1/concatUgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1
р
gradients/AddN_30AddNXgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
:*
N*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
м
gradients/AddN_31AddNWgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1
њ
!weight2/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes

:*
_class
loc:@weight2*
dtype0
Ъ
weight2/Adagrad
VariableV2*
dtype0*
	container *
shape
:*
shared_name *
_output_shapes

:*
_class
loc:@weight2
┬
weight2/Adagrad/AssignAssignweight2/Adagrad!weight2/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@weight2
v
weight2/Adagrad/readIdentityweight2/Adagrad*
T0*
_output_shapes

:*
_class
loc:@weight2
ў
$Variable_1/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes

:*
_class
loc:@Variable_1*
dtype0
Ц
Variable_1/Adagrad
VariableV2*
dtype0*
	container *
shape
:*
shared_name *
_output_shapes

:*
_class
loc:@Variable_1
╬
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@Variable_1

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
T0*
_output_shapes

:*
_class
loc:@Variable_1
║
5rnn/basic_lstm_cell/weights/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights*
dtype0
К
#rnn/basic_lstm_cell/weights/Adagrad
VariableV2*
dtype0*
	container *
shape
:*
shared_name *
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
њ
*rnn/basic_lstm_cell/weights/Adagrad/AssignAssign#rnn/basic_lstm_cell/weights/Adagrad5rnn/basic_lstm_cell/weights/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*.
_class$
" loc:@rnn/basic_lstm_cell/weights
▓
(rnn/basic_lstm_cell/weights/Adagrad/readIdentity#rnn/basic_lstm_cell/weights/Adagrad*
T0*
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
░
4rnn/basic_lstm_cell/biases/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes
:*-
_class#
!loc:@rnn/basic_lstm_cell/biases*
dtype0
й
"rnn/basic_lstm_cell/biases/Adagrad
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_output_shapes
:*-
_class#
!loc:@rnn/basic_lstm_cell/biases
і
)rnn/basic_lstm_cell/biases/Adagrad/AssignAssign"rnn/basic_lstm_cell/biases/Adagrad4rnn/basic_lstm_cell/biases/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*-
_class#
!loc:@rnn/basic_lstm_cell/biases
Ф
'rnn/basic_lstm_cell/biases/Adagrad/readIdentity"rnn/basic_lstm_cell/biases/Adagrad*
T0*
_output_shapes
:*-
_class#
!loc:@rnn/basic_lstm_cell/biases
[
training/learning_rateConst*
valueB
 *џЎЎ>*
_output_shapes
: *
dtype0
л
$training/update_weight2/ApplyAdagradApplyAdagradweight2weight2/Adagradtraining/learning_rategradients/AddN_1*
T0*
_output_shapes

:*
use_locking( *
_class
loc:@weight2
┌
'training/update_Variable_1/ApplyAdagradApplyAdagrad
Variable_1Variable_1/Adagradtraining/learning_rategradients/AddN*
T0*
_output_shapes

:*
use_locking( *
_class
loc:@Variable_1
А
8training/update_rnn/basic_lstm_cell/weights/ApplyAdagradApplyAdagradrnn/basic_lstm_cell/weights#rnn/basic_lstm_cell/weights/Adagradtraining/learning_rategradients/AddN_31*
T0*
_output_shapes

:*
use_locking( *.
_class$
" loc:@rnn/basic_lstm_cell/weights
Ў
7training/update_rnn/basic_lstm_cell/biases/ApplyAdagradApplyAdagradrnn/basic_lstm_cell/biases"rnn/basic_lstm_cell/biases/Adagradtraining/learning_rategradients/AddN_30*
T0*
_output_shapes
:*
use_locking( *-
_class#
!loc:@rnn/basic_lstm_cell/biases
о
trainingNoOp%^training/update_weight2/ApplyAdagrad(^training/update_Variable_1/ApplyAdagrad9^training/update_rnn/basic_lstm_cell/weights/ApplyAdagrad8^training/update_rnn/basic_lstm_cell/biases/ApplyAdagrad"sЧж}├ї     Gq5	 y░сZоAJХЎ
ы¤
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
2	ђљ
Ѓ
ApplyAdagrad
var"Tђ
accum"Tђ
lr"T	
grad"T
out"Tђ"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
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
2	љ
і
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
2	љ
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
і
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
2	ѕ
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
/
Sigmoid
x"T
y"T"
Ttype:	
2
;
SigmoidGrad
x"T
y"T
z"T"
Ttype:	
2
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
њ
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
Ѕ
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
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ
&
	ZerosLike
x"T
y"T"	
Ttype*1.1.02v1.1.0-rc0-61-g1ec6ed5ды
X
x_inputPlaceholder*
_output_shapes

:*
dtype0*
shape
:
X
y_inputPlaceholder*
_output_shapes

:*
dtype0*
shape
:
\
PlaceholderPlaceholder*
_output_shapes

:*
dtype0*
shape
:
^
Placeholder_1Placeholder*
_output_shapes

:*
dtype0*
shape
:
Х
weight1/initial_valueConst*i
value`B^"P№)d?АDf=Јђc?┼і=ђ Ь>Cmџ=?,ј>(?|яІ>6Д!?5?9бЖ>`|5=ЖU?фэ>л╗f<$чk? y╝>╠:Ы>@Ц=*
_output_shapes

:*
dtype0
{
weight1
VariableV2*
shared_name *
_output_shapes

:*
	container *
dtype0*
shape
:
д
weight1/AssignAssignweight1weight1/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@weight1
f
weight1/readIdentityweight1*
T0*
_output_shapes

:*
_class
loc:@weight1
w
Variable/initial_valueConst*)
value B"                *
_output_shapes

:*
dtype0
|
Variable
VariableV2*
shared_name *
_output_shapes

:*
	container *
dtype0*
shape
:
ф
Variable/AssignAssignVariableVariable/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@Variable
i
Variable/readIdentityVariable*
T0*
_output_shapes

:*
_class
loc:@Variable
є
weight2/initial_valueConst*9
value0B." R3░>пЫ =Ј│>Нd?ѕхU?сQ?Р>¤i?*
_output_shapes

:*
dtype0
{
weight2
VariableV2*
shared_name *
_output_shapes

:*
	container *
dtype0*
shape
:
д
weight2/AssignAssignweight2weight2/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@weight2
f
weight2/readIdentityweight2*
T0*
_output_shapes

:*
_class
loc:@weight2
q
Variable_1/initial_valueConst*!
valueB"        *
_output_shapes

:*
dtype0
~

Variable_1
VariableV2*
shared_name *
_output_shapes

:*
	container *
dtype0*
shape
:
▓
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@Variable_1
o
Variable_1/readIdentity
Variable_1*
T0*
_output_shapes

:*
_class
loc:@Variable_1
S
weights/tagConst*
valueB Bweights*
_output_shapes
: *
dtype0
W
weightsHistogramSummaryweights/tagweight1/read*
T0*
_output_shapes
: 
Q
split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
ы
splitSplitsplit/split_dimx_input*
T0*г
_output_shapesЎ
ќ:::::::::::::::*
	num_split
ф
unstackUnpacky_input*

axis*
T0*n
_output_shapes\
Z:::::::::::::::*	
num
й
<rnn/basic_lstm_cell/weights/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*.
_class$
" loc:@rnn/basic_lstm_cell/weights
»
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/minConst*
valueB
 *wо┐*
_output_shapes
: *
dtype0*.
_class$
" loc:@rnn/basic_lstm_cell/weights
»
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/maxConst*
valueB
 *wо?*
_output_shapes
: *
dtype0*.
_class$
" loc:@rnn/basic_lstm_cell/weights
њ
Drnn/basic_lstm_cell/weights/Initializer/random_uniform/RandomUniformRandomUniform<rnn/basic_lstm_cell/weights/Initializer/random_uniform/shape*
T0*

seed *
seed2 *
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights*
dtype0
і
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/subSub:rnn/basic_lstm_cell/weights/Initializer/random_uniform/max:rnn/basic_lstm_cell/weights/Initializer/random_uniform/min*
T0*
_output_shapes
: *.
_class$
" loc:@rnn/basic_lstm_cell/weights
ю
:rnn/basic_lstm_cell/weights/Initializer/random_uniform/mulMulDrnn/basic_lstm_cell/weights/Initializer/random_uniform/RandomUniform:rnn/basic_lstm_cell/weights/Initializer/random_uniform/sub*
T0*
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
ј
6rnn/basic_lstm_cell/weights/Initializer/random_uniformAdd:rnn/basic_lstm_cell/weights/Initializer/random_uniform/mul:rnn/basic_lstm_cell/weights/Initializer/random_uniform/min*
T0*
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
┐
rnn/basic_lstm_cell/weights
VariableV2*.
_class$
" loc:@rnn/basic_lstm_cell/weights*
	container *
shared_name *
shape
:*
_output_shapes

:*
dtype0
Ѓ
"rnn/basic_lstm_cell/weights/AssignAssignrnn/basic_lstm_cell/weights6rnn/basic_lstm_cell/weights/Initializer/random_uniform*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*.
_class$
" loc:@rnn/basic_lstm_cell/weights
r
 rnn/basic_lstm_cell/weights/readIdentityrnn/basic_lstm_cell/weights*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell/basic_lstm_cell_1/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
┐
,rnn/basic_lstm_cell/basic_lstm_cell_1/concatConcatV2splitPlaceholder_11rnn/basic_lstm_cell/basic_lstm_cell_1/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell/basic_lstm_cell_1/MatMulMatMul,rnn/basic_lstm_cell/basic_lstm_cell_1/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
е
,rnn/basic_lstm_cell/biases/Initializer/ConstConst*
valueB*    *
_output_shapes
:*
dtype0*-
_class#
!loc:@rnn/basic_lstm_cell/biases
х
rnn/basic_lstm_cell/biases
VariableV2*-
_class#
!loc:@rnn/basic_lstm_cell/biases*
	container *
shared_name *
shape:*
_output_shapes
:*
dtype0
Ы
!rnn/basic_lstm_cell/biases/AssignAssignrnn/basic_lstm_cell/biases,rnn/basic_lstm_cell/biases/Initializer/Const*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*-
_class#
!loc:@rnn/basic_lstm_cell/biases
l
rnn/basic_lstm_cell/biases/readIdentityrnn/basic_lstm_cell/biases*
T0*
_output_shapes
:
К
-rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAddBiasAdd,rnn/basic_lstm_cell/basic_lstm_cell_1/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
e
#rnn/basic_lstm_cell/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
╬
rnn/basic_lstm_cell/splitSplit#rnn/basic_lstm_cell/split/split_dim-rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
^
rnn/basic_lstm_cell/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0

rnn/basic_lstm_cell/addAddrnn/basic_lstm_cell/split:2rnn/basic_lstm_cell/add/y*
T0*
_output_shapes

:
h
rnn/basic_lstm_cell/SigmoidSigmoidrnn/basic_lstm_cell/add*
T0*
_output_shapes

:
q
rnn/basic_lstm_cell/mulMulPlaceholderrnn/basic_lstm_cell/Sigmoid*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell/Sigmoid_1Sigmoidrnn/basic_lstm_cell/split*
T0*
_output_shapes

:
f
rnn/basic_lstm_cell/TanhTanhrnn/basic_lstm_cell/split:1*
T0*
_output_shapes

:
ѓ
rnn/basic_lstm_cell/mul_1Mulrnn/basic_lstm_cell/Sigmoid_1rnn/basic_lstm_cell/Tanh*
T0*
_output_shapes

:
}
rnn/basic_lstm_cell/add_1Addrnn/basic_lstm_cell/mulrnn/basic_lstm_cell/mul_1*
T0*
_output_shapes

:
f
rnn/basic_lstm_cell/Tanh_1Tanhrnn/basic_lstm_cell/add_1*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell/Sigmoid_2Sigmoidrnn/basic_lstm_cell/split:3*
T0*
_output_shapes

:
ё
rnn/basic_lstm_cell/mul_2Mulrnn/basic_lstm_cell/Tanh_1rnn/basic_lstm_cell/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_1/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
═
,rnn/basic_lstm_cell_1/basic_lstm_cell/concatConcatV2split:1rnn/basic_lstm_cell/mul_21rnn/basic_lstm_cell_1/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_1/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_1/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_1/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_1/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_1/splitSplit%rnn/basic_lstm_cell_1/split/split_dim-rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_1/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_1/addAddrnn/basic_lstm_cell_1/split:2rnn/basic_lstm_cell_1/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_1/SigmoidSigmoidrnn/basic_lstm_cell_1/add*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_1/mulMulrnn/basic_lstm_cell/add_1rnn/basic_lstm_cell_1/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_1/Sigmoid_1Sigmoidrnn/basic_lstm_cell_1/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_1/TanhTanhrnn/basic_lstm_cell_1/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_1/mul_1Mulrnn/basic_lstm_cell_1/Sigmoid_1rnn/basic_lstm_cell_1/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_1/add_1Addrnn/basic_lstm_cell_1/mulrnn/basic_lstm_cell_1/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_1/Tanh_1Tanhrnn/basic_lstm_cell_1/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_1/Sigmoid_2Sigmoidrnn/basic_lstm_cell_1/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_1/mul_2Mulrnn/basic_lstm_cell_1/Tanh_1rnn/basic_lstm_cell_1/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_2/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_2/basic_lstm_cell/concatConcatV2split:2rnn/basic_lstm_cell_1/mul_21rnn/basic_lstm_cell_2/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_2/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_2/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_2/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_2/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_2/splitSplit%rnn/basic_lstm_cell_2/split/split_dim-rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_2/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_2/addAddrnn/basic_lstm_cell_2/split:2rnn/basic_lstm_cell_2/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_2/SigmoidSigmoidrnn/basic_lstm_cell_2/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_2/mulMulrnn/basic_lstm_cell_1/add_1rnn/basic_lstm_cell_2/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_2/Sigmoid_1Sigmoidrnn/basic_lstm_cell_2/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_2/TanhTanhrnn/basic_lstm_cell_2/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_2/mul_1Mulrnn/basic_lstm_cell_2/Sigmoid_1rnn/basic_lstm_cell_2/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_2/add_1Addrnn/basic_lstm_cell_2/mulrnn/basic_lstm_cell_2/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_2/Tanh_1Tanhrnn/basic_lstm_cell_2/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_2/Sigmoid_2Sigmoidrnn/basic_lstm_cell_2/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_2/mul_2Mulrnn/basic_lstm_cell_2/Tanh_1rnn/basic_lstm_cell_2/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_3/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_3/basic_lstm_cell/concatConcatV2split:3rnn/basic_lstm_cell_2/mul_21rnn/basic_lstm_cell_3/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_3/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_3/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_3/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_3/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_3/splitSplit%rnn/basic_lstm_cell_3/split/split_dim-rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_3/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_3/addAddrnn/basic_lstm_cell_3/split:2rnn/basic_lstm_cell_3/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_3/SigmoidSigmoidrnn/basic_lstm_cell_3/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_3/mulMulrnn/basic_lstm_cell_2/add_1rnn/basic_lstm_cell_3/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_3/Sigmoid_1Sigmoidrnn/basic_lstm_cell_3/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_3/TanhTanhrnn/basic_lstm_cell_3/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_3/mul_1Mulrnn/basic_lstm_cell_3/Sigmoid_1rnn/basic_lstm_cell_3/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_3/add_1Addrnn/basic_lstm_cell_3/mulrnn/basic_lstm_cell_3/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_3/Tanh_1Tanhrnn/basic_lstm_cell_3/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_3/Sigmoid_2Sigmoidrnn/basic_lstm_cell_3/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_3/mul_2Mulrnn/basic_lstm_cell_3/Tanh_1rnn/basic_lstm_cell_3/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_4/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_4/basic_lstm_cell/concatConcatV2split:4rnn/basic_lstm_cell_3/mul_21rnn/basic_lstm_cell_4/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_4/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_4/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_4/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_4/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_4/splitSplit%rnn/basic_lstm_cell_4/split/split_dim-rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_4/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_4/addAddrnn/basic_lstm_cell_4/split:2rnn/basic_lstm_cell_4/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_4/SigmoidSigmoidrnn/basic_lstm_cell_4/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_4/mulMulrnn/basic_lstm_cell_3/add_1rnn/basic_lstm_cell_4/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_4/Sigmoid_1Sigmoidrnn/basic_lstm_cell_4/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_4/TanhTanhrnn/basic_lstm_cell_4/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_4/mul_1Mulrnn/basic_lstm_cell_4/Sigmoid_1rnn/basic_lstm_cell_4/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_4/add_1Addrnn/basic_lstm_cell_4/mulrnn/basic_lstm_cell_4/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_4/Tanh_1Tanhrnn/basic_lstm_cell_4/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_4/Sigmoid_2Sigmoidrnn/basic_lstm_cell_4/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_4/mul_2Mulrnn/basic_lstm_cell_4/Tanh_1rnn/basic_lstm_cell_4/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_5/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_5/basic_lstm_cell/concatConcatV2split:5rnn/basic_lstm_cell_4/mul_21rnn/basic_lstm_cell_5/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_5/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_5/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_5/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_5/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_5/splitSplit%rnn/basic_lstm_cell_5/split/split_dim-rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_5/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_5/addAddrnn/basic_lstm_cell_5/split:2rnn/basic_lstm_cell_5/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_5/SigmoidSigmoidrnn/basic_lstm_cell_5/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_5/mulMulrnn/basic_lstm_cell_4/add_1rnn/basic_lstm_cell_5/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_5/Sigmoid_1Sigmoidrnn/basic_lstm_cell_5/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_5/TanhTanhrnn/basic_lstm_cell_5/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_5/mul_1Mulrnn/basic_lstm_cell_5/Sigmoid_1rnn/basic_lstm_cell_5/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_5/add_1Addrnn/basic_lstm_cell_5/mulrnn/basic_lstm_cell_5/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_5/Tanh_1Tanhrnn/basic_lstm_cell_5/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_5/Sigmoid_2Sigmoidrnn/basic_lstm_cell_5/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_5/mul_2Mulrnn/basic_lstm_cell_5/Tanh_1rnn/basic_lstm_cell_5/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_6/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_6/basic_lstm_cell/concatConcatV2split:6rnn/basic_lstm_cell_5/mul_21rnn/basic_lstm_cell_6/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_6/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_6/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_6/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_6/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_6/splitSplit%rnn/basic_lstm_cell_6/split/split_dim-rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_6/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_6/addAddrnn/basic_lstm_cell_6/split:2rnn/basic_lstm_cell_6/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_6/SigmoidSigmoidrnn/basic_lstm_cell_6/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_6/mulMulrnn/basic_lstm_cell_5/add_1rnn/basic_lstm_cell_6/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_6/Sigmoid_1Sigmoidrnn/basic_lstm_cell_6/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_6/TanhTanhrnn/basic_lstm_cell_6/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_6/mul_1Mulrnn/basic_lstm_cell_6/Sigmoid_1rnn/basic_lstm_cell_6/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_6/add_1Addrnn/basic_lstm_cell_6/mulrnn/basic_lstm_cell_6/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_6/Tanh_1Tanhrnn/basic_lstm_cell_6/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_6/Sigmoid_2Sigmoidrnn/basic_lstm_cell_6/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_6/mul_2Mulrnn/basic_lstm_cell_6/Tanh_1rnn/basic_lstm_cell_6/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_7/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_7/basic_lstm_cell/concatConcatV2split:7rnn/basic_lstm_cell_6/mul_21rnn/basic_lstm_cell_7/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_7/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_7/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_7/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_7/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_7/splitSplit%rnn/basic_lstm_cell_7/split/split_dim-rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_7/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_7/addAddrnn/basic_lstm_cell_7/split:2rnn/basic_lstm_cell_7/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_7/SigmoidSigmoidrnn/basic_lstm_cell_7/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_7/mulMulrnn/basic_lstm_cell_6/add_1rnn/basic_lstm_cell_7/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_7/Sigmoid_1Sigmoidrnn/basic_lstm_cell_7/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_7/TanhTanhrnn/basic_lstm_cell_7/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_7/mul_1Mulrnn/basic_lstm_cell_7/Sigmoid_1rnn/basic_lstm_cell_7/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_7/add_1Addrnn/basic_lstm_cell_7/mulrnn/basic_lstm_cell_7/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_7/Tanh_1Tanhrnn/basic_lstm_cell_7/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_7/Sigmoid_2Sigmoidrnn/basic_lstm_cell_7/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_7/mul_2Mulrnn/basic_lstm_cell_7/Tanh_1rnn/basic_lstm_cell_7/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_8/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_8/basic_lstm_cell/concatConcatV2split:8rnn/basic_lstm_cell_7/mul_21rnn/basic_lstm_cell_8/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_8/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_8/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_8/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_8/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_8/splitSplit%rnn/basic_lstm_cell_8/split/split_dim-rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_8/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_8/addAddrnn/basic_lstm_cell_8/split:2rnn/basic_lstm_cell_8/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_8/SigmoidSigmoidrnn/basic_lstm_cell_8/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_8/mulMulrnn/basic_lstm_cell_7/add_1rnn/basic_lstm_cell_8/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_8/Sigmoid_1Sigmoidrnn/basic_lstm_cell_8/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_8/TanhTanhrnn/basic_lstm_cell_8/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_8/mul_1Mulrnn/basic_lstm_cell_8/Sigmoid_1rnn/basic_lstm_cell_8/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_8/add_1Addrnn/basic_lstm_cell_8/mulrnn/basic_lstm_cell_8/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_8/Tanh_1Tanhrnn/basic_lstm_cell_8/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_8/Sigmoid_2Sigmoidrnn/basic_lstm_cell_8/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_8/mul_2Mulrnn/basic_lstm_cell_8/Tanh_1rnn/basic_lstm_cell_8/Sigmoid_2*
T0*
_output_shapes

:
s
1rnn/basic_lstm_cell_9/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
¤
,rnn/basic_lstm_cell_9/basic_lstm_cell/concatConcatV2split:9rnn/basic_lstm_cell_8/mul_21rnn/basic_lstm_cell_9/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
Н
,rnn/basic_lstm_cell_9/basic_lstm_cell/MatMulMatMul,rnn/basic_lstm_cell_9/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
К
-rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAddBiasAdd,rnn/basic_lstm_cell_9/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
g
%rnn/basic_lstm_cell_9/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
м
rnn/basic_lstm_cell_9/splitSplit%rnn/basic_lstm_cell_9/split/split_dim-rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
`
rnn/basic_lstm_cell_9/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Ё
rnn/basic_lstm_cell_9/addAddrnn/basic_lstm_cell_9/split:2rnn/basic_lstm_cell_9/add/y*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_9/SigmoidSigmoidrnn/basic_lstm_cell_9/add*
T0*
_output_shapes

:
Ё
rnn/basic_lstm_cell_9/mulMulrnn/basic_lstm_cell_8/add_1rnn/basic_lstm_cell_9/Sigmoid*
T0*
_output_shapes

:
p
rnn/basic_lstm_cell_9/Sigmoid_1Sigmoidrnn/basic_lstm_cell_9/split*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_9/TanhTanhrnn/basic_lstm_cell_9/split:1*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_9/mul_1Mulrnn/basic_lstm_cell_9/Sigmoid_1rnn/basic_lstm_cell_9/Tanh*
T0*
_output_shapes

:
Ѓ
rnn/basic_lstm_cell_9/add_1Addrnn/basic_lstm_cell_9/mulrnn/basic_lstm_cell_9/mul_1*
T0*
_output_shapes

:
j
rnn/basic_lstm_cell_9/Tanh_1Tanhrnn/basic_lstm_cell_9/add_1*
T0*
_output_shapes

:
r
rnn/basic_lstm_cell_9/Sigmoid_2Sigmoidrnn/basic_lstm_cell_9/split:3*
T0*
_output_shapes

:
і
rnn/basic_lstm_cell_9/mul_2Mulrnn/basic_lstm_cell_9/Tanh_1rnn/basic_lstm_cell_9/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_10/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
м
-rnn/basic_lstm_cell_10/basic_lstm_cell/concatConcatV2split:10rnn/basic_lstm_cell_9/mul_22rnn/basic_lstm_cell_10/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_10/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_10/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_10/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_10/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_10/splitSplit&rnn/basic_lstm_cell_10/split/split_dim.rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_10/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_10/addAddrnn/basic_lstm_cell_10/split:2rnn/basic_lstm_cell_10/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_10/SigmoidSigmoidrnn/basic_lstm_cell_10/add*
T0*
_output_shapes

:
Є
rnn/basic_lstm_cell_10/mulMulrnn/basic_lstm_cell_9/add_1rnn/basic_lstm_cell_10/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_10/Sigmoid_1Sigmoidrnn/basic_lstm_cell_10/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_10/TanhTanhrnn/basic_lstm_cell_10/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_10/mul_1Mul rnn/basic_lstm_cell_10/Sigmoid_1rnn/basic_lstm_cell_10/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_10/add_1Addrnn/basic_lstm_cell_10/mulrnn/basic_lstm_cell_10/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_10/Tanh_1Tanhrnn/basic_lstm_cell_10/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_10/Sigmoid_2Sigmoidrnn/basic_lstm_cell_10/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_10/mul_2Mulrnn/basic_lstm_cell_10/Tanh_1 rnn/basic_lstm_cell_10/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_11/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_11/basic_lstm_cell/concatConcatV2split:11rnn/basic_lstm_cell_10/mul_22rnn/basic_lstm_cell_11/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_11/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_11/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_11/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_11/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_11/splitSplit&rnn/basic_lstm_cell_11/split/split_dim.rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_11/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_11/addAddrnn/basic_lstm_cell_11/split:2rnn/basic_lstm_cell_11/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_11/SigmoidSigmoidrnn/basic_lstm_cell_11/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_11/mulMulrnn/basic_lstm_cell_10/add_1rnn/basic_lstm_cell_11/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_11/Sigmoid_1Sigmoidrnn/basic_lstm_cell_11/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_11/TanhTanhrnn/basic_lstm_cell_11/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_11/mul_1Mul rnn/basic_lstm_cell_11/Sigmoid_1rnn/basic_lstm_cell_11/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_11/add_1Addrnn/basic_lstm_cell_11/mulrnn/basic_lstm_cell_11/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_11/Tanh_1Tanhrnn/basic_lstm_cell_11/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_11/Sigmoid_2Sigmoidrnn/basic_lstm_cell_11/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_11/mul_2Mulrnn/basic_lstm_cell_11/Tanh_1 rnn/basic_lstm_cell_11/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_12/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_12/basic_lstm_cell/concatConcatV2split:12rnn/basic_lstm_cell_11/mul_22rnn/basic_lstm_cell_12/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_12/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_12/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_12/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_12/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_12/splitSplit&rnn/basic_lstm_cell_12/split/split_dim.rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_12/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_12/addAddrnn/basic_lstm_cell_12/split:2rnn/basic_lstm_cell_12/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_12/SigmoidSigmoidrnn/basic_lstm_cell_12/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_12/mulMulrnn/basic_lstm_cell_11/add_1rnn/basic_lstm_cell_12/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_12/Sigmoid_1Sigmoidrnn/basic_lstm_cell_12/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_12/TanhTanhrnn/basic_lstm_cell_12/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_12/mul_1Mul rnn/basic_lstm_cell_12/Sigmoid_1rnn/basic_lstm_cell_12/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_12/add_1Addrnn/basic_lstm_cell_12/mulrnn/basic_lstm_cell_12/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_12/Tanh_1Tanhrnn/basic_lstm_cell_12/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_12/Sigmoid_2Sigmoidrnn/basic_lstm_cell_12/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_12/mul_2Mulrnn/basic_lstm_cell_12/Tanh_1 rnn/basic_lstm_cell_12/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_13/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_13/basic_lstm_cell/concatConcatV2split:13rnn/basic_lstm_cell_12/mul_22rnn/basic_lstm_cell_13/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_13/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_13/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_13/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_13/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_13/splitSplit&rnn/basic_lstm_cell_13/split/split_dim.rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_13/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_13/addAddrnn/basic_lstm_cell_13/split:2rnn/basic_lstm_cell_13/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_13/SigmoidSigmoidrnn/basic_lstm_cell_13/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_13/mulMulrnn/basic_lstm_cell_12/add_1rnn/basic_lstm_cell_13/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_13/Sigmoid_1Sigmoidrnn/basic_lstm_cell_13/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_13/TanhTanhrnn/basic_lstm_cell_13/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_13/mul_1Mul rnn/basic_lstm_cell_13/Sigmoid_1rnn/basic_lstm_cell_13/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_13/add_1Addrnn/basic_lstm_cell_13/mulrnn/basic_lstm_cell_13/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_13/Tanh_1Tanhrnn/basic_lstm_cell_13/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_13/Sigmoid_2Sigmoidrnn/basic_lstm_cell_13/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_13/mul_2Mulrnn/basic_lstm_cell_13/Tanh_1 rnn/basic_lstm_cell_13/Sigmoid_2*
T0*
_output_shapes

:
t
2rnn/basic_lstm_cell_14/basic_lstm_cell/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
М
-rnn/basic_lstm_cell_14/basic_lstm_cell/concatConcatV2split:14rnn/basic_lstm_cell_13/mul_22rnn/basic_lstm_cell_14/basic_lstm_cell/concat/axis*

Tidx0*
T0*
_output_shapes

:*
N
О
-rnn/basic_lstm_cell_14/basic_lstm_cell/MatMulMatMul-rnn/basic_lstm_cell_14/basic_lstm_cell/concat rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
╔
.rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAddBiasAdd-rnn/basic_lstm_cell_14/basic_lstm_cell/MatMulrnn/basic_lstm_cell/biases/read*
T0*
_output_shapes

:*
data_formatNHWC
h
&rnn/basic_lstm_cell_14/split/split_dimConst*
value	B :*
_output_shapes
: *
dtype0
Н
rnn/basic_lstm_cell_14/splitSplit&rnn/basic_lstm_cell_14/split/split_dim.rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd*
T0*<
_output_shapes*
(::::*
	num_split
a
rnn/basic_lstm_cell_14/add/yConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
ѕ
rnn/basic_lstm_cell_14/addAddrnn/basic_lstm_cell_14/split:2rnn/basic_lstm_cell_14/add/y*
T0*
_output_shapes

:
n
rnn/basic_lstm_cell_14/SigmoidSigmoidrnn/basic_lstm_cell_14/add*
T0*
_output_shapes

:
ѕ
rnn/basic_lstm_cell_14/mulMulrnn/basic_lstm_cell_13/add_1rnn/basic_lstm_cell_14/Sigmoid*
T0*
_output_shapes

:
r
 rnn/basic_lstm_cell_14/Sigmoid_1Sigmoidrnn/basic_lstm_cell_14/split*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_14/TanhTanhrnn/basic_lstm_cell_14/split:1*
T0*
_output_shapes

:
І
rnn/basic_lstm_cell_14/mul_1Mul rnn/basic_lstm_cell_14/Sigmoid_1rnn/basic_lstm_cell_14/Tanh*
T0*
_output_shapes

:
є
rnn/basic_lstm_cell_14/add_1Addrnn/basic_lstm_cell_14/mulrnn/basic_lstm_cell_14/mul_1*
T0*
_output_shapes

:
l
rnn/basic_lstm_cell_14/Tanh_1Tanhrnn/basic_lstm_cell_14/add_1*
T0*
_output_shapes

:
t
 rnn/basic_lstm_cell_14/Sigmoid_2Sigmoidrnn/basic_lstm_cell_14/split:3*
T0*
_output_shapes

:
Ї
rnn/basic_lstm_cell_14/mul_2Mulrnn/basic_lstm_cell_14/Tanh_1 rnn/basic_lstm_cell_14/Sigmoid_2*
T0*
_output_shapes

:
ѕ
MatMulMatMulrnn/basic_lstm_cell/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
L
addAddMatMulVariable_1/read*
T0*
_output_shapes

:
ї
MatMul_1MatMulrnn/basic_lstm_cell_1/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_1AddMatMul_1Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_2MatMulrnn/basic_lstm_cell_2/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_2AddMatMul_2Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_3MatMulrnn/basic_lstm_cell_3/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_3AddMatMul_3Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_4MatMulrnn/basic_lstm_cell_4/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_4AddMatMul_4Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_5MatMulrnn/basic_lstm_cell_5/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_5AddMatMul_5Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_6MatMulrnn/basic_lstm_cell_6/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_6AddMatMul_6Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_7MatMulrnn/basic_lstm_cell_7/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_7AddMatMul_7Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_8MatMulrnn/basic_lstm_cell_8/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_8AddMatMul_8Variable_1/read*
T0*
_output_shapes

:
ї
MatMul_9MatMulrnn/basic_lstm_cell_9/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
P
add_9AddMatMul_9Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_10MatMulrnn/basic_lstm_cell_10/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_10Add	MatMul_10Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_11MatMulrnn/basic_lstm_cell_11/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_11Add	MatMul_11Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_12MatMulrnn/basic_lstm_cell_12/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_12Add	MatMul_12Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_13MatMulrnn/basic_lstm_cell_13/mul_2weight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b( 
R
add_13Add	MatMul_13Variable_1/read*
T0*
_output_shapes

:
ј
	MatMul_14MatMulrnn/basic_lstm_cell_14/mul_2weight2/read*
transpose_a( *
T0*
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
║
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
└
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
└
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
└
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
└
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
└
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
└
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
└
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
└
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
└
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
├
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
├
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
├
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
├
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
├
JSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_14
unstack:14*
T0*
Tlabels0*$
_output_shapes
::
╣	
Rank/packedPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*

axis *
T0*
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
rangeRangerange/startRankrange/delta*

Tidx0*
_output_shapes
:
Й	
total_loss/inputPackGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogitsJSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits*

axis *
T0*
_output_shapes

:*
N
i

total_lossMeantotal_loss/inputrange*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  ђ?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
p
gradients/total_loss_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
`
gradients/total_loss_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
p
gradients/total_loss_grad/addAddrangegradients/total_loss_grad/Size*
T0*
_output_shapes
:
Ї
gradients/total_loss_grad/modFloorModgradients/total_loss_grad/addgradients/total_loss_grad/Size*
T0*
_output_shapes
:
k
!gradients/total_loss_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
g
%gradients/total_loss_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
g
%gradients/total_loss_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Й
gradients/total_loss_grad/rangeRange%gradients/total_loss_grad/range/startgradients/total_loss_grad/Size%gradients/total_loss_grad/range/delta*

Tidx0*
_output_shapes
:
f
$gradients/total_loss_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
ћ
gradients/total_loss_grad/FillFill!gradients/total_loss_grad/Shape_1$gradients/total_loss_grad/Fill/value*
T0*
_output_shapes
:
­
'gradients/total_loss_grad/DynamicStitchDynamicStitchgradients/total_loss_grad/rangegradients/total_loss_grad/modgradients/total_loss_grad/Shapegradients/total_loss_grad/Fill*
T0*#
_output_shapes
:         *
N
e
#gradients/total_loss_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
е
!gradients/total_loss_grad/MaximumMaximum'gradients/total_loss_grad/DynamicStitch#gradients/total_loss_grad/Maximum/y*
T0*#
_output_shapes
:         
Ќ
"gradients/total_loss_grad/floordivFloorDivgradients/total_loss_grad/Shape!gradients/total_loss_grad/Maximum*
T0*
_output_shapes
:
ќ
!gradients/total_loss_grad/ReshapeReshapegradients/Fill'gradients/total_loss_grad/DynamicStitch*
Tshape0*
T0*
_output_shapes
:
║
gradients/total_loss_grad/TileTile!gradients/total_loss_grad/Reshape"gradients/total_loss_grad/floordiv*
T0*0
_output_shapes
:                  *

Tmultiples0
r
!gradients/total_loss_grad/Shape_2Const*
valueB"      *
_output_shapes
:*
dtype0
d
!gradients/total_loss_grad/Shape_3Const*
valueB *
_output_shapes
: *
dtype0
i
gradients/total_loss_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
е
gradients/total_loss_grad/ProdProd!gradients/total_loss_grad/Shape_2gradients/total_loss_grad/Const*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
k
!gradients/total_loss_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
г
 gradients/total_loss_grad/Prod_1Prod!gradients/total_loss_grad/Shape_3!gradients/total_loss_grad/Const_1*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
g
%gradients/total_loss_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
ў
#gradients/total_loss_grad/Maximum_1Maximum gradients/total_loss_grad/Prod_1%gradients/total_loss_grad/Maximum_1/y*
T0*
_output_shapes
: 
ќ
$gradients/total_loss_grad/floordiv_1FloorDivgradients/total_loss_grad/Prod#gradients/total_loss_grad/Maximum_1*
T0*
_output_shapes
: 
|
gradients/total_loss_grad/CastCast$gradients/total_loss_grad/floordiv_1*

DstT0*
_output_shapes
: *

SrcT0
Ћ
!gradients/total_loss_grad/truedivRealDivgradients/total_loss_grad/Tilegradients/total_loss_grad/Cast*
T0*
_output_shapes

:
С
'gradients/total_loss/input_grad/unstackUnpack!gradients/total_loss_grad/truediv*

axis *
T0*n
_output_shapes\
Z:::::::::::::::*	
num
b
0gradients/total_loss/input_grad/tuple/group_depsNoOp(^gradients/total_loss/input_grad/unstack
Ђ
8gradients/total_loss/input_grad/tuple/control_dependencyIdentity'gradients/total_loss/input_grad/unstack1^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_1Identity)gradients/total_loss/input_grad/unstack:11^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_2Identity)gradients/total_loss/input_grad/unstack:21^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_3Identity)gradients/total_loss/input_grad/unstack:31^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_4Identity)gradients/total_loss/input_grad/unstack:41^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_5Identity)gradients/total_loss/input_grad/unstack:51^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_6Identity)gradients/total_loss/input_grad/unstack:61^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_7Identity)gradients/total_loss/input_grad/unstack:71^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_8Identity)gradients/total_loss/input_grad/unstack:81^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ё
:gradients/total_loss/input_grad/tuple/control_dependency_9Identity)gradients/total_loss/input_grad/unstack:91^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_10Identity*gradients/total_loss/input_grad/unstack:101^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_11Identity*gradients/total_loss/input_grad/unstack:111^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_12Identity*gradients/total_loss/input_grad/unstack:121^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_13Identity*gradients/total_loss/input_grad/unstack:131^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Є
;gradients/total_loss/input_grad/tuple/control_dependency_14Identity*gradients/total_loss/input_grad/unstack:141^gradients/total_loss/input_grad/tuple/group_deps*
T0*
_output_shapes
:*:
_class0
.,loc:@gradients/total_loss/input_grad/unstack
Ћ
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ц
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
░
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
┼
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims8gradients/total_loss/input_grad/tuple/control_dependencyegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
Н
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_1	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_2	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_2ggradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_3	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_3ggradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_4	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_4ggradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_5	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_5ggradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_6	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_6ggradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_7	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_7ggradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_8	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_8ggradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Ў
gradients/zeros_like_9	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
е
hgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
▓
ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╦
cgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims:gradients/total_loss/input_grad/tuple/control_dependency_9ggradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
█
\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_10	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_10hgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_11	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_11hgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_12	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_12hgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_13	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_13hgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mulMuldgradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsigradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*
_output_shapes

:
Џ
gradients/zeros_like_14	ZerosLikeLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:
ф
igradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientLSparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits:1*
T0*
_output_shapes

:*┤
messageеЦCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
│
hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
         *
_output_shapes
: *
dtype0
╬
dgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;gradients/total_loss/input_grad/tuple/control_dependency_14hgradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
я
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
┤
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
с
gradients/add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul(gradients/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ј
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
у
gradients/add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Л
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*-
_class#
!loc:@gradients/add_grad/Reshape
О
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_grad/Reshape_1
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
║
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_1_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_1_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
┘
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_1_grad/Reshape
▀
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
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
║
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_2_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_2_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
┘
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_2_grad/Reshape
▀
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
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
║
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_3_grad/Shapegradients/add_3_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_3_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_3_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_3_grad/ReshapeReshapegradients/add_3_grad/Sumgradients/add_3_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_3_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_3/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_3_grad/Reshape_1Reshapegradients/add_3_grad/Sum_1gradients/add_3_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_3_grad/tuple/group_depsNoOp^gradients/add_3_grad/Reshape^gradients/add_3_grad/Reshape_1
┘
-gradients/add_3_grad/tuple/control_dependencyIdentitygradients/add_3_grad/Reshape&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_3_grad/Reshape
▀
/gradients/add_3_grad/tuple/control_dependency_1Identitygradients/add_3_grad/Reshape_1&^gradients/add_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_3_grad/Reshape_1
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
║
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_4_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_4_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_4_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_4/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_4_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
┘
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_4_grad/Reshape
▀
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
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
║
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_5_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_5_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_5/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
┘
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_5_grad/Reshape
▀
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
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
║
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_6_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_6_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_6/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
┘
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_6_grad/Reshape
▀
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1
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
║
*gradients/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_7_grad/Shapegradients/add_7_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_7_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_7_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_7_grad/ReshapeReshapegradients/add_7_grad/Sumgradients/add_7_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_7_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_7/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_7_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_7_grad/Reshape_1Reshapegradients/add_7_grad/Sum_1gradients/add_7_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/add_7_grad/Reshape^gradients/add_7_grad/Reshape_1
┘
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/add_7_grad/Reshape&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_7_grad/Reshape
▀
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/add_7_grad/Reshape_1&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_7_grad/Reshape_1
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
║
*gradients/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_8_grad/Shapegradients/add_8_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_8_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_8_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_8_grad/ReshapeReshapegradients/add_8_grad/Sumgradients/add_8_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_8_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_8/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_8_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_8_grad/Reshape_1Reshapegradients/add_8_grad/Sum_1gradients/add_8_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_8_grad/tuple/group_depsNoOp^gradients/add_8_grad/Reshape^gradients/add_8_grad/Reshape_1
┘
-gradients/add_8_grad/tuple/control_dependencyIdentitygradients/add_8_grad/Reshape&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_8_grad/Reshape
▀
/gradients/add_8_grad/tuple/control_dependency_1Identitygradients/add_8_grad/Reshape_1&^gradients/add_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_8_grad/Reshape_1
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
║
*gradients/add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_9_grad/Shapegradients/add_9_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ж
gradients/add_9_grad/SumSum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_9_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
ћ
gradients/add_9_grad/ReshapeReshapegradients/add_9_grad/Sumgradients/add_9_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ь
gradients/add_9_grad/Sum_1Sum\gradients/SparseSoftmaxCrossEntropyWithLogits_9/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_9_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
џ
gradients/add_9_grad/Reshape_1Reshapegradients/add_9_grad/Sum_1gradients/add_9_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
m
%gradients/add_9_grad/tuple/group_depsNoOp^gradients/add_9_grad/Reshape^gradients/add_9_grad/Reshape_1
┘
-gradients/add_9_grad/tuple/control_dependencyIdentitygradients/add_9_grad/Reshape&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/add_9_grad/Reshape
▀
/gradients/add_9_grad/tuple/control_dependency_1Identitygradients/add_9_grad/Reshape_1&^gradients/add_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/add_9_grad/Reshape_1
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
й
+gradients/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_10_grad/Shapegradients/add_10_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_10_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_10_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_10_grad/ReshapeReshapegradients/add_10_grad/Sumgradients/add_10_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_10_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_10/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_10_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_10_grad/Reshape_1Reshapegradients/add_10_grad/Sum_1gradients/add_10_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_10_grad/tuple/group_depsNoOp^gradients/add_10_grad/Reshape ^gradients/add_10_grad/Reshape_1
П
.gradients/add_10_grad/tuple/control_dependencyIdentitygradients/add_10_grad/Reshape'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_10_grad/Reshape
с
0gradients/add_10_grad/tuple/control_dependency_1Identitygradients/add_10_grad/Reshape_1'^gradients/add_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_10_grad/Reshape_1
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
й
+gradients/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_11_grad/Shapegradients/add_11_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_11_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_11_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_11_grad/ReshapeReshapegradients/add_11_grad/Sumgradients/add_11_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_11_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_11/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_11_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_11_grad/Reshape_1Reshapegradients/add_11_grad/Sum_1gradients/add_11_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_11_grad/tuple/group_depsNoOp^gradients/add_11_grad/Reshape ^gradients/add_11_grad/Reshape_1
П
.gradients/add_11_grad/tuple/control_dependencyIdentitygradients/add_11_grad/Reshape'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_11_grad/Reshape
с
0gradients/add_11_grad/tuple/control_dependency_1Identitygradients/add_11_grad/Reshape_1'^gradients/add_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_11_grad/Reshape_1
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
й
+gradients/add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_12_grad/Shapegradients/add_12_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_12_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_12_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_12_grad/ReshapeReshapegradients/add_12_grad/Sumgradients/add_12_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_12_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_12/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_12_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_12_grad/Reshape_1Reshapegradients/add_12_grad/Sum_1gradients/add_12_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_12_grad/tuple/group_depsNoOp^gradients/add_12_grad/Reshape ^gradients/add_12_grad/Reshape_1
П
.gradients/add_12_grad/tuple/control_dependencyIdentitygradients/add_12_grad/Reshape'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_12_grad/Reshape
с
0gradients/add_12_grad/tuple/control_dependency_1Identitygradients/add_12_grad/Reshape_1'^gradients/add_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_12_grad/Reshape_1
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
й
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_13_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_13_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_13_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_13/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_13_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
П
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_13_grad/Reshape
с
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1
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
й
+gradients/add_14_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_14_grad/Shapegradients/add_14_grad/Shape_1*
T0*2
_output_shapes 
:         :         
В
gradients/add_14_grad/SumSum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/add_14_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ќ
gradients/add_14_grad/ReshapeReshapegradients/add_14_grad/Sumgradients/add_14_grad/Shape*
Tshape0*
T0*
_output_shapes

:
­
gradients/add_14_grad/Sum_1Sum]gradients/SparseSoftmaxCrossEntropyWithLogits_14/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/add_14_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Ю
gradients/add_14_grad/Reshape_1Reshapegradients/add_14_grad/Sum_1gradients/add_14_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
p
&gradients/add_14_grad/tuple/group_depsNoOp^gradients/add_14_grad/Reshape ^gradients/add_14_grad/Reshape_1
П
.gradients/add_14_grad/tuple/control_dependencyIdentitygradients/add_14_grad/Reshape'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*0
_class&
$"loc:@gradients/add_14_grad/Reshape
с
0gradients/add_14_grad/tuple/control_dependency_1Identitygradients/add_14_grad/Reshape_1'^gradients/add_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/add_14_grad/Reshape_1
░
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┐
gradients/MatMul_grad/MatMul_1MatMulrnn/basic_lstm_cell/mul_2+gradients/add_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
█
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
р
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
┤
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_1_grad/MatMul_1MatMulrnn/basic_lstm_cell_1/mul_2-gradients/add_1_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
с
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
ж
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
┤
gradients/MatMul_2_grad/MatMulMatMul-gradients/add_2_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_2_grad/MatMul_1MatMulrnn/basic_lstm_cell_2/mul_2-gradients/add_2_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
с
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
ж
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1
┤
gradients/MatMul_3_grad/MatMulMatMul-gradients/add_3_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_3_grad/MatMul_1MatMulrnn/basic_lstm_cell_3/mul_2-gradients/add_3_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
с
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
ж
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1
┤
gradients/MatMul_4_grad/MatMulMatMul-gradients/add_4_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_4_grad/MatMul_1MatMulrnn/basic_lstm_cell_4/mul_2-gradients/add_4_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
с
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
ж
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1
┤
gradients/MatMul_5_grad/MatMulMatMul-gradients/add_5_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_5_grad/MatMul_1MatMulrnn/basic_lstm_cell_5/mul_2-gradients/add_5_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
с
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
ж
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1
┤
gradients/MatMul_6_grad/MatMulMatMul-gradients/add_6_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_6_grad/MatMul_1MatMulrnn/basic_lstm_cell_6/mul_2-gradients/add_6_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
с
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
ж
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1
┤
gradients/MatMul_7_grad/MatMulMatMul-gradients/add_7_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_7_grad/MatMul_1MatMulrnn/basic_lstm_cell_7/mul_2-gradients/add_7_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
с
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
ж
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1
┤
gradients/MatMul_8_grad/MatMulMatMul-gradients/add_8_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_8_grad/MatMul_1MatMulrnn/basic_lstm_cell_8/mul_2-gradients/add_8_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
с
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
ж
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1
┤
gradients/MatMul_9_grad/MatMulMatMul-gradients/add_9_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
┼
 gradients/MatMul_9_grad/MatMul_1MatMulrnn/basic_lstm_cell_9/mul_2-gradients/add_9_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
с
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
ж
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*
T0*
_output_shapes

:*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1
Х
gradients/MatMul_10_grad/MatMulMatMul.gradients/add_10_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_10_grad/MatMul_1MatMulrnn/basic_lstm_cell_10/mul_2.gradients/add_10_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
у
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
ь
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1
Х
gradients/MatMul_11_grad/MatMulMatMul.gradients/add_11_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_11_grad/MatMul_1MatMulrnn/basic_lstm_cell_11/mul_2.gradients/add_11_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
у
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
ь
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1
Х
gradients/MatMul_12_grad/MatMulMatMul.gradients/add_12_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_12_grad/MatMul_1MatMulrnn/basic_lstm_cell_12/mul_2.gradients/add_12_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
у
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
ь
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1
Х
gradients/MatMul_13_grad/MatMulMatMul.gradients/add_13_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_13_grad/MatMul_1MatMulrnn/basic_lstm_cell_13/mul_2.gradients/add_13_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
у
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
ь
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1
Х
gradients/MatMul_14_grad/MatMulMatMul.gradients/add_14_grad/tuple/control_dependencyweight2/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
╚
!gradients/MatMul_14_grad/MatMul_1MatMulrnn/basic_lstm_cell_14/mul_2.gradients/add_14_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
w
)gradients/MatMul_14_grad/tuple/group_depsNoOp ^gradients/MatMul_14_grad/MatMul"^gradients/MatMul_14_grad/MatMul_1
у
1gradients/MatMul_14_grad/tuple/control_dependencyIdentitygradients/MatMul_14_grad/MatMul*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*2
_class(
&$loc:@gradients/MatMul_14_grad/MatMul
ь
3gradients/MatMul_14_grad/tuple/control_dependency_1Identity!gradients/MatMul_14_grad/MatMul_1*^gradients/MatMul_14_grad/tuple/group_deps*
T0*
_output_shapes

:*4
_class*
(&loc:@gradients/MatMul_14_grad/MatMul_1
█
gradients/AddNAddN-gradients/add_grad/tuple/control_dependency_1/gradients/add_1_grad/tuple/control_dependency_1/gradients/add_2_grad/tuple/control_dependency_1/gradients/add_3_grad/tuple/control_dependency_1/gradients/add_4_grad/tuple/control_dependency_1/gradients/add_5_grad/tuple/control_dependency_1/gradients/add_6_grad/tuple/control_dependency_1/gradients/add_7_grad/tuple/control_dependency_1/gradients/add_8_grad/tuple/control_dependency_1/gradients/add_9_grad/tuple/control_dependency_10gradients/add_10_grad/tuple/control_dependency_10gradients/add_11_grad/tuple/control_dependency_10gradients/add_12_grad/tuple/control_dependency_10gradients/add_13_grad/tuple/control_dependency_10gradients/add_14_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*/
_class%
#!loc:@gradients/add_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_14/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_14/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┤
/gradients/rnn/basic_lstm_cell_14/mul_2_grad/mulMul1gradients/MatMul_14_grad/tuple/control_dependency rnn/basic_lstm_cell_14/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_14/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_14/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_14/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_14/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
│
1gradients/rnn/basic_lstm_cell_14/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_14/Tanh_11gradients/MatMul_14_grad/tuple/control_dependency*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_14/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_14/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_14/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_14/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_14/mul_2_grad/Reshape_1
ї
gradients/AddN_1AddN0gradients/MatMul_grad/tuple/control_dependency_12gradients/MatMul_1_grad/tuple/control_dependency_12gradients/MatMul_2_grad/tuple/control_dependency_12gradients/MatMul_3_grad/tuple/control_dependency_12gradients/MatMul_4_grad/tuple/control_dependency_12gradients/MatMul_5_grad/tuple/control_dependency_12gradients/MatMul_6_grad/tuple/control_dependency_12gradients/MatMul_7_grad/tuple/control_dependency_12gradients/MatMul_8_grad/tuple/control_dependency_12gradients/MatMul_9_grad/tuple/control_dependency_13gradients/MatMul_10_grad/tuple/control_dependency_13gradients/MatMul_11_grad/tuple/control_dependency_13gradients/MatMul_12_grad/tuple/control_dependency_13gradients/MatMul_13_grad/tuple/control_dependency_13gradients/MatMul_14_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
¤
5gradients/rnn/basic_lstm_cell_14/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_14/Tanh_1Dgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_14/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_14/Sigmoid_2Fgradients/rnn/basic_lstm_cell_14/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ѓ
1gradients/rnn/basic_lstm_cell_14/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_14/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
/gradients/rnn/basic_lstm_cell_14/add_1_grad/SumSum5gradients/rnn/basic_lstm_cell_14/Tanh_1_grad/TanhGradAgradients/rnn/basic_lstm_cell_14/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_14/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
1gradients/rnn/basic_lstm_cell_14/add_1_grad/Sum_1Sum5gradients/rnn/basic_lstm_cell_14/Tanh_1_grad/TanhGradCgradients/rnn/basic_lstm_cell_14/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_14/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_14/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_14/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_14/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_14/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_14/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_14/mul_grad/Shape1gradients/rnn/basic_lstm_cell_14/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_14/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_14/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_14/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_14/mul_grad/mul?gradients/rnn/basic_lstm_cell_14/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_14/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_14/mul_grad/Sum/gradients/rnn/basic_lstm_cell_14/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_14/mul_grad/mul_1Mulrnn/basic_lstm_cell_13/add_1Dgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_14/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_14/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_14/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_14/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_14/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_14/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_14/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_14/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_14/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_14/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_14/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_14/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_14/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_14/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_14/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_14/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_14/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_14/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_14/Sigmoid_1Fgradients/rnn/basic_lstm_cell_14/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_14/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_14/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_14/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_14/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_14/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_14/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_14/SigmoidDgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_14/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_14/Sigmoid_1Dgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_14/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_14/TanhFgradients/rnn/basic_lstm_cell_14/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_14/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_14/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_14/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_14/add_grad/Shape1gradients/rnn/basic_lstm_cell_14/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_14/add_grad/SumSum9gradients/rnn/basic_lstm_cell_14/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_14/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_14/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_14/add_grad/Sum/gradients/rnn/basic_lstm_cell_14/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_14/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_14/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_14/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_14/add_grad/Sum_11gradients/rnn/basic_lstm_cell_14/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_14/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_14/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_14/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_14/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_14/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_14/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_14/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_14/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_14/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_14/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_14/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_14/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_14/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_14/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_14/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_14/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_14/split_grad/concatJ^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_14/split_grad/concatO^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_14/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_14/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_14/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_2AddN1gradients/MatMul_13_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_13/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_13/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_13/mul_2_grad/mulMulgradients/AddN_2 rnn/basic_lstm_cell_13/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_13/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_13/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_13/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_13/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_13/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_13/Tanh_1gradients/AddN_2*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_13/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_13/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_13/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_13/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_13/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_13/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_13/Tanh_1Dgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_13/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_13/Sigmoid_2Fgradients/rnn/basic_lstm_cell_13/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_3AddNBgradients/rnn/basic_lstm_cell_14/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_13/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_14/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_13/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_13/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_13/add_1_grad/SumSumgradients/AddN_3Agradients/rnn/basic_lstm_cell_13/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_13/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_13/add_1_grad/Sum_1Sumgradients/AddN_3Cgradients/rnn/basic_lstm_cell_13/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_13/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_13/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_13/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_13/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_13/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_13/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_13/mul_grad/Shape1gradients/rnn/basic_lstm_cell_13/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_13/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_13/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_13/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_13/mul_grad/mul?gradients/rnn/basic_lstm_cell_13/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_13/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_13/mul_grad/Sum/gradients/rnn/basic_lstm_cell_13/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_13/mul_grad/mul_1Mulrnn/basic_lstm_cell_12/add_1Dgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_13/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_13/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_13/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_13/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_13/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_13/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_13/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_13/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_13/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_13/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_13/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_13/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_13/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_13/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_13/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_13/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_13/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_13/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_13/Sigmoid_1Fgradients/rnn/basic_lstm_cell_13/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_13/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_13/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_13/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_13/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_13/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_13/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_13/SigmoidDgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_13/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_13/Sigmoid_1Dgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_13/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_13/TanhFgradients/rnn/basic_lstm_cell_13/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_13/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_13/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_13/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_13/add_grad/Shape1gradients/rnn/basic_lstm_cell_13/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_13/add_grad/SumSum9gradients/rnn/basic_lstm_cell_13/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_13/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_13/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_13/add_grad/Sum/gradients/rnn/basic_lstm_cell_13/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_13/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_13/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_13/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_13/add_grad/Sum_11gradients/rnn/basic_lstm_cell_13/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_13/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_13/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_13/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_13/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_13/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_13/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_13/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_13/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_13/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_13/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_13/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_13/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_13/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_13/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_13/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_13/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_13/split_grad/concatJ^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_13/split_grad/concatO^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_13/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_13/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_13/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_4AddN1gradients/MatMul_12_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_12/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_12/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_12/mul_2_grad/mulMulgradients/AddN_4 rnn/basic_lstm_cell_12/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_12/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_12/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_12/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_12/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_12/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_12/Tanh_1gradients/AddN_4*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_12/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_12/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_12/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_12/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_12/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_12/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_12/Tanh_1Dgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_12/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_12/Sigmoid_2Fgradients/rnn/basic_lstm_cell_12/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_5AddNBgradients/rnn/basic_lstm_cell_13/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_12/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_13/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_12/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_12/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_12/add_1_grad/SumSumgradients/AddN_5Agradients/rnn/basic_lstm_cell_12/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_12/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_12/add_1_grad/Sum_1Sumgradients/AddN_5Cgradients/rnn/basic_lstm_cell_12/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_12/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_12/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_12/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_12/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_12/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_12/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_12/mul_grad/Shape1gradients/rnn/basic_lstm_cell_12/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_12/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_12/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_12/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_12/mul_grad/mul?gradients/rnn/basic_lstm_cell_12/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_12/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_12/mul_grad/Sum/gradients/rnn/basic_lstm_cell_12/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_12/mul_grad/mul_1Mulrnn/basic_lstm_cell_11/add_1Dgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_12/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_12/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_12/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_12/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_12/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_12/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_12/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_12/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_12/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_12/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_12/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_12/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_12/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_12/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_12/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_12/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_12/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_12/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_12/Sigmoid_1Fgradients/rnn/basic_lstm_cell_12/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_12/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_12/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_12/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_12/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_12/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_12/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_12/SigmoidDgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_12/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_12/Sigmoid_1Dgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_12/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_12/TanhFgradients/rnn/basic_lstm_cell_12/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_12/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_12/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_12/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_12/add_grad/Shape1gradients/rnn/basic_lstm_cell_12/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_12/add_grad/SumSum9gradients/rnn/basic_lstm_cell_12/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_12/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_12/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_12/add_grad/Sum/gradients/rnn/basic_lstm_cell_12/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_12/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_12/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_12/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_12/add_grad/Sum_11gradients/rnn/basic_lstm_cell_12/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_12/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_12/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_12/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_12/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_12/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_12/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_12/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_12/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_12/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_12/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_12/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_12/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_12/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_12/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_12/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_12/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_12/split_grad/concatJ^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_12/split_grad/concatO^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_12/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_12/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_12/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_6AddN1gradients/MatMul_11_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_11/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_11/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_11/mul_2_grad/mulMulgradients/AddN_6 rnn/basic_lstm_cell_11/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_11/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_11/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_11/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_11/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_11/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_11/Tanh_1gradients/AddN_6*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_11/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_11/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_11/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_11/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_11/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_11/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_11/Tanh_1Dgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_11/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_11/Sigmoid_2Fgradients/rnn/basic_lstm_cell_11/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_7AddNBgradients/rnn/basic_lstm_cell_12/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_11/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_12/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_11/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_11/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_11/add_1_grad/SumSumgradients/AddN_7Agradients/rnn/basic_lstm_cell_11/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_11/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_11/add_1_grad/Sum_1Sumgradients/AddN_7Cgradients/rnn/basic_lstm_cell_11/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_11/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_11/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_11/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_11/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_11/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_11/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_11/mul_grad/Shape1gradients/rnn/basic_lstm_cell_11/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_11/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_11/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_11/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_11/mul_grad/mul?gradients/rnn/basic_lstm_cell_11/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_11/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_11/mul_grad/Sum/gradients/rnn/basic_lstm_cell_11/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
├
/gradients/rnn/basic_lstm_cell_11/mul_grad/mul_1Mulrnn/basic_lstm_cell_10/add_1Dgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_11/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_11/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_11/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_11/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_11/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_11/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_11/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_11/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_11/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_11/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_11/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_11/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_11/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_11/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_11/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_11/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_11/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_11/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_11/Sigmoid_1Fgradients/rnn/basic_lstm_cell_11/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_11/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_11/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_11/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_11/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_11/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_11/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_11/SigmoidDgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_11/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_11/Sigmoid_1Dgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_11/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_11/TanhFgradients/rnn/basic_lstm_cell_11/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_11/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_11/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_11/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_11/add_grad/Shape1gradients/rnn/basic_lstm_cell_11/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_11/add_grad/SumSum9gradients/rnn/basic_lstm_cell_11/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_11/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_11/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_11/add_grad/Sum/gradients/rnn/basic_lstm_cell_11/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_11/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_11/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_11/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_11/add_grad/Sum_11gradients/rnn/basic_lstm_cell_11/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_11/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_11/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_11/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_11/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_11/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_11/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_11/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_11/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_11/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_11/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_11/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_11/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_11/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_11/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_11/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_11/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_11/split_grad/concatJ^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_11/split_grad/concatO^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_11/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_11/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_11/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/Slice_1
і
gradients/AddN_8AddN1gradients/MatMul_10_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
ѓ
1gradients/rnn/basic_lstm_cell_10/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_10/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape3gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Њ
/gradients/rnn/basic_lstm_cell_10/mul_2_grad/mulMulgradients/AddN_8 rnn/basic_lstm_cell_10/Sigmoid_2*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_10/mul_2_grad/SumSum/gradients/rnn/basic_lstm_cell_10/mul_2_grad/mulAgradients/rnn/basic_lstm_cell_10/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/mul_2_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_10/mul_2_grad/Sum1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
њ
1gradients/rnn/basic_lstm_cell_10/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_10/Tanh_1gradients/AddN_8*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_10/mul_2_grad/mul_1Cgradients/rnn/basic_lstm_cell_10/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_10/mul_2_grad/Sum_13gradients/rnn/basic_lstm_cell_10/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape6^gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape=^gradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_10/mul_2_grad/Reshape_1
¤
5gradients/rnn/basic_lstm_cell_10/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_10/Tanh_1Dgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
П
;gradients/rnn/basic_lstm_cell_10/Sigmoid_2_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_10/Sigmoid_2Fgradients/rnn/basic_lstm_cell_10/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_9AddNBgradients/rnn/basic_lstm_cell_11/mul_grad/tuple/control_dependency5gradients/rnn/basic_lstm_cell_10/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_11/mul_grad/Reshape
ѓ
1gradients/rnn/basic_lstm_cell_10/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_10/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape3gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╦
/gradients/rnn/basic_lstm_cell_10/add_1_grad/SumSumgradients/AddN_9Agradients/rnn/basic_lstm_cell_10/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/add_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_10/add_1_grad/Sum1gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
¤
1gradients/rnn/basic_lstm_cell_10/add_1_grad/Sum_1Sumgradients/AddN_9Cgradients/rnn/basic_lstm_cell_10/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_10/add_1_grad/Sum_13gradients/rnn/basic_lstm_cell_10/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_10/add_1_grad/Reshape_1
ђ
/gradients/rnn/basic_lstm_cell_10/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ѓ
1gradients/rnn/basic_lstm_cell_10/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
щ
?gradients/rnn/basic_lstm_cell_10/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_10/mul_grad/Shape1gradients/rnn/basic_lstm_cell_10/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
├
-gradients/rnn/basic_lstm_cell_10/mul_grad/mulMulDgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_10/Sigmoid*
T0*
_output_shapes

:
С
-gradients/rnn/basic_lstm_cell_10/mul_grad/SumSum-gradients/rnn/basic_lstm_cell_10/mul_grad/mul?gradients/rnn/basic_lstm_cell_10/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_10/mul_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_10/mul_grad/Sum/gradients/rnn/basic_lstm_cell_10/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
┬
/gradients/rnn/basic_lstm_cell_10/mul_grad/mul_1Mulrnn/basic_lstm_cell_9/add_1Dgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_10/mul_grad/Sum_1Sum/gradients/rnn/basic_lstm_cell_10/mul_grad/mul_1Agradients/rnn/basic_lstm_cell_10/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_10/mul_grad/Sum_11gradients/rnn/basic_lstm_cell_10/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
г
:gradients/rnn/basic_lstm_cell_10/mul_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape4^gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape;^gradients/rnn/basic_lstm_cell_10/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape
│
Dgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_10/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape_1
ѓ
1gradients/rnn/basic_lstm_cell_10/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ё
3gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
 
Agradients/rnn/basic_lstm_cell_10/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape3gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
─
/gradients/rnn/basic_lstm_cell_10/mul_1_grad/mulMulFgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_10/Tanh*
T0*
_output_shapes

:
Ж
/gradients/rnn/basic_lstm_cell_10/mul_1_grad/SumSum/gradients/rnn/basic_lstm_cell_10/mul_1_grad/mulAgradients/rnn/basic_lstm_cell_10/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
┘
3gradients/rnn/basic_lstm_cell_10/mul_1_grad/ReshapeReshape/gradients/rnn/basic_lstm_cell_10/mul_1_grad/Sum1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╦
1gradients/rnn/basic_lstm_cell_10/mul_1_grad/mul_1Mul rnn/basic_lstm_cell_10/Sigmoid_1Fgradients/rnn/basic_lstm_cell_10/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
­
1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Sum_1Sum1gradients/rnn/basic_lstm_cell_10/mul_1_grad/mul_1Cgradients/rnn/basic_lstm_cell_10/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▀
5gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1Reshape1gradients/rnn/basic_lstm_cell_10/mul_1_grad/Sum_13gradients/rnn/basic_lstm_cell_10/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
▓
<gradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/group_depsNoOp4^gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape6^gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1
х
Dgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependencyIdentity3gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape=^gradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape
╗
Fgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependency_1Identity5gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1=^gradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*H
_class>
<:loc:@gradients/rnn/basic_lstm_cell_10/mul_1_grad/Reshape_1
О
9gradients/rnn/basic_lstm_cell_10/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_10/SigmoidDgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
█
;gradients/rnn/basic_lstm_cell_10/Sigmoid_1_grad/SigmoidGradSigmoidGrad rnn/basic_lstm_cell_10/Sigmoid_1Dgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
═
3gradients/rnn/basic_lstm_cell_10/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_10/TanhFgradients/rnn/basic_lstm_cell_10/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ђ
/gradients/rnn/basic_lstm_cell_10/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
t
1gradients/rnn/basic_lstm_cell_10/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
щ
?gradients/rnn/basic_lstm_cell_10/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/rnn/basic_lstm_cell_10/add_grad/Shape1gradients/rnn/basic_lstm_cell_10/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
­
-gradients/rnn/basic_lstm_cell_10/add_grad/SumSum9gradients/rnn/basic_lstm_cell_10/Sigmoid_grad/SigmoidGrad?gradients/rnn/basic_lstm_cell_10/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
М
1gradients/rnn/basic_lstm_cell_10/add_grad/ReshapeReshape-gradients/rnn/basic_lstm_cell_10/add_grad/Sum/gradients/rnn/basic_lstm_cell_10/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
З
/gradients/rnn/basic_lstm_cell_10/add_grad/Sum_1Sum9gradients/rnn/basic_lstm_cell_10/Sigmoid_grad/SigmoidGradAgradients/rnn/basic_lstm_cell_10/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
Л
3gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1Reshape/gradients/rnn/basic_lstm_cell_10/add_grad/Sum_11gradients/rnn/basic_lstm_cell_10/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
г
:gradients/rnn/basic_lstm_cell_10/add_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_10/add_grad/Reshape4^gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1
Г
Bgradients/rnn/basic_lstm_cell_10/add_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_10/add_grad/Reshape;^gradients/rnn/basic_lstm_cell_10/add_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_10/add_grad/Reshape
Ф
Dgradients/rnn/basic_lstm_cell_10/add_grad/tuple/control_dependency_1Identity3gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1;^gradients/rnn/basic_lstm_cell_10/add_grad/tuple/group_deps*
T0*
_output_shapes
: *F
_class<
:8loc:@gradients/rnn/basic_lstm_cell_10/add_grad/Reshape_1
Ќ
2gradients/rnn/basic_lstm_cell_10/split_grad/concatConcatV2;gradients/rnn/basic_lstm_cell_10/Sigmoid_1_grad/SigmoidGrad3gradients/rnn/basic_lstm_cell_10/Tanh_grad/TanhGradBgradients/rnn/basic_lstm_cell_10/add_grad/tuple/control_dependency;gradients/rnn/basic_lstm_cell_10/Sigmoid_2_grad/SigmoidGrad&rnn/basic_lstm_cell_10/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
╚
Igradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/rnn/basic_lstm_cell_10/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
О
Ngradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_10/split_grad/concatJ^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
О
Vgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_10/split_grad/concatO^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_10/split_grad/concat
Ѓ
Xgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGradO^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ќ
Cgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMulMatMulVgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
Ц
Egradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1MatMul-rnn/basic_lstm_cell_10/basic_lstm_cell/concatVgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
с
Mgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpD^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMulF^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1
э
Ugradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityCgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMulN^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul
§
Wgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityEgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1N^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/MatMul_1
Ѓ
Agradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
С
@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/modFloorMod2rnn/basic_lstm_cell_10/basic_lstm_cell/concat/axisAgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
Њ
Bgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ћ
Dgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
л
Igradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/modBgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ShapeDgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
у
Bgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/SliceSliceUgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ConcatOffsetBgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ь
Dgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1SliceUgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependencyKgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/ConcatOffset:1Dgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
р
Mgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/SliceE^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1
ш
Ugradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/SliceN^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice
ч
Wgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1N^gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/Slice_1
Ѕ
gradients/AddN_10AddN0gradients/MatMul_9_grad/tuple/control_dependencyWgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_9/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_9/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_9/mul_2_grad/mulMulgradients/AddN_10rnn/basic_lstm_cell_9/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_9/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_9/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_9/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_9/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_9/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_9/Tanh_1gradients/AddN_10*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_9/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_9/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_9/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_9/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_9/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_9/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_9/Tanh_1Cgradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_9/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_9/Sigmoid_2Egradients/rnn/basic_lstm_cell_9/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
І
gradients/AddN_11AddNBgradients/rnn/basic_lstm_cell_10/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_9/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_10/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_9/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_9/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_9/add_1_grad/SumSumgradients/AddN_11@gradients/rnn/basic_lstm_cell_9/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_9/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_9/add_1_grad/Sum_1Sumgradients/AddN_11Bgradients/rnn/basic_lstm_cell_9/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_9/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_9/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_9/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_9/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_9/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_9/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_9/mul_grad/Shape0gradients/rnn/basic_lstm_cell_9/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_9/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_9/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_9/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_9/mul_grad/mul>gradients/rnn/basic_lstm_cell_9/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_9/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_9/mul_grad/Sum.gradients/rnn/basic_lstm_cell_9/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_9/mul_grad/mul_1Mulrnn/basic_lstm_cell_8/add_1Cgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_9/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_9/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_9/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_9/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_9/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_9/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_9/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_9/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_9/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_9/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_9/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_9/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_9/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_9/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_9/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_9/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_9/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_9/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_9/Sigmoid_1Egradients/rnn/basic_lstm_cell_9/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_9/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_9/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_9/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_9/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_9/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_9/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_9/SigmoidCgradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_9/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_9/Sigmoid_1Cgradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_9/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_9/TanhEgradients/rnn/basic_lstm_cell_9/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_9/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_9/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_9/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_9/add_grad/Shape0gradients/rnn/basic_lstm_cell_9/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_9/add_grad/SumSum8gradients/rnn/basic_lstm_cell_9/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_9/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_9/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_9/add_grad/Sum.gradients/rnn/basic_lstm_cell_9/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_9/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_9/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_9/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_9/add_grad/Sum_10gradients/rnn/basic_lstm_cell_9/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_9/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_9/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_9/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_9/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_9/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_9/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_9/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_9/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_9/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_9/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_9/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_9/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_9/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_9/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_9/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_9/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_9/split_grad/concatI^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_9/split_grad/concatN^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_9/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_9/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_9/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_12AddN0gradients/MatMul_8_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_8/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_8/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_8/mul_2_grad/mulMulgradients/AddN_12rnn/basic_lstm_cell_8/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_8/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_8/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_8/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_8/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_8/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_8/Tanh_1gradients/AddN_12*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_8/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_8/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_8/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_8/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_8/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_8/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_8/Tanh_1Cgradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_8/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_8/Sigmoid_2Egradients/rnn/basic_lstm_cell_8/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_13AddNAgradients/rnn/basic_lstm_cell_9/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_8/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_9/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_8/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_8/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_8/add_1_grad/SumSumgradients/AddN_13@gradients/rnn/basic_lstm_cell_8/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_8/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_8/add_1_grad/Sum_1Sumgradients/AddN_13Bgradients/rnn/basic_lstm_cell_8/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_8/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_8/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_8/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_8/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_8/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_8/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_8/mul_grad/Shape0gradients/rnn/basic_lstm_cell_8/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_8/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_8/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_8/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_8/mul_grad/mul>gradients/rnn/basic_lstm_cell_8/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_8/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_8/mul_grad/Sum.gradients/rnn/basic_lstm_cell_8/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_8/mul_grad/mul_1Mulrnn/basic_lstm_cell_7/add_1Cgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_8/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_8/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_8/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_8/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_8/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_8/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_8/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_8/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_8/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_8/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_8/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_8/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_8/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_8/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_8/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_8/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_8/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_8/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_8/Sigmoid_1Egradients/rnn/basic_lstm_cell_8/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_8/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_8/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_8/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_8/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_8/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_8/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_8/SigmoidCgradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_8/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_8/Sigmoid_1Cgradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_8/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_8/TanhEgradients/rnn/basic_lstm_cell_8/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_8/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_8/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_8/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_8/add_grad/Shape0gradients/rnn/basic_lstm_cell_8/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_8/add_grad/SumSum8gradients/rnn/basic_lstm_cell_8/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_8/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_8/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_8/add_grad/Sum.gradients/rnn/basic_lstm_cell_8/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_8/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_8/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_8/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_8/add_grad/Sum_10gradients/rnn/basic_lstm_cell_8/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_8/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_8/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_8/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_8/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_8/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_8/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_8/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_8/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_8/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_8/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_8/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_8/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_8/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_8/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_8/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_8/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_8/split_grad/concatI^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_8/split_grad/concatN^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_8/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_8/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_8/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_14AddN0gradients/MatMul_7_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_7/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_7/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_7/mul_2_grad/mulMulgradients/AddN_14rnn/basic_lstm_cell_7/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_7/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_7/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_7/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_7/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_7/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_7/Tanh_1gradients/AddN_14*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_7/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_7/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_7/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_7/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_7/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_7/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_7/Tanh_1Cgradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_7/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_7/Sigmoid_2Egradients/rnn/basic_lstm_cell_7/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_15AddNAgradients/rnn/basic_lstm_cell_8/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_7/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_8/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_7/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_7/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_7/add_1_grad/SumSumgradients/AddN_15@gradients/rnn/basic_lstm_cell_7/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_7/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_7/add_1_grad/Sum_1Sumgradients/AddN_15Bgradients/rnn/basic_lstm_cell_7/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_7/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_7/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_7/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_7/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_7/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_7/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_7/mul_grad/Shape0gradients/rnn/basic_lstm_cell_7/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_7/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_7/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_7/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_7/mul_grad/mul>gradients/rnn/basic_lstm_cell_7/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_7/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_7/mul_grad/Sum.gradients/rnn/basic_lstm_cell_7/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_7/mul_grad/mul_1Mulrnn/basic_lstm_cell_6/add_1Cgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_7/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_7/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_7/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_7/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_7/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_7/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_7/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_7/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_7/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_7/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_7/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_7/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_7/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_7/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_7/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_7/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_7/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_7/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_7/Sigmoid_1Egradients/rnn/basic_lstm_cell_7/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_7/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_7/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_7/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_7/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_7/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_7/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_7/SigmoidCgradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_7/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_7/Sigmoid_1Cgradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_7/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_7/TanhEgradients/rnn/basic_lstm_cell_7/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_7/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_7/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_7/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_7/add_grad/Shape0gradients/rnn/basic_lstm_cell_7/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_7/add_grad/SumSum8gradients/rnn/basic_lstm_cell_7/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_7/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_7/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_7/add_grad/Sum.gradients/rnn/basic_lstm_cell_7/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_7/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_7/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_7/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_7/add_grad/Sum_10gradients/rnn/basic_lstm_cell_7/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_7/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_7/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_7/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_7/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_7/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_7/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_7/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_7/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_7/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_7/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_7/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_7/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_7/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_7/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_7/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_7/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_7/split_grad/concatI^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_7/split_grad/concatN^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_7/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_7/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_7/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_16AddN0gradients/MatMul_6_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_6/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_6/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_6/mul_2_grad/mulMulgradients/AddN_16rnn/basic_lstm_cell_6/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_6/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_6/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_6/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_6/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_6/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_6/Tanh_1gradients/AddN_16*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_6/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_6/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_6/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_6/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_6/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_6/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_6/Tanh_1Cgradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_6/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_6/Sigmoid_2Egradients/rnn/basic_lstm_cell_6/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_17AddNAgradients/rnn/basic_lstm_cell_7/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_6/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_7/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_6/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_6/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_6/add_1_grad/SumSumgradients/AddN_17@gradients/rnn/basic_lstm_cell_6/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_6/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_6/add_1_grad/Sum_1Sumgradients/AddN_17Bgradients/rnn/basic_lstm_cell_6/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_6/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_6/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_6/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_6/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_6/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_6/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_6/mul_grad/Shape0gradients/rnn/basic_lstm_cell_6/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_6/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_6/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_6/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_6/mul_grad/mul>gradients/rnn/basic_lstm_cell_6/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_6/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_6/mul_grad/Sum.gradients/rnn/basic_lstm_cell_6/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_6/mul_grad/mul_1Mulrnn/basic_lstm_cell_5/add_1Cgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_6/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_6/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_6/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_6/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_6/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_6/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_6/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_6/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_6/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_6/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_6/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_6/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_6/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_6/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_6/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_6/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_6/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_6/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_6/Sigmoid_1Egradients/rnn/basic_lstm_cell_6/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_6/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_6/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_6/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_6/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_6/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_6/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_6/SigmoidCgradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_6/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_6/Sigmoid_1Cgradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_6/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_6/TanhEgradients/rnn/basic_lstm_cell_6/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_6/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_6/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_6/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_6/add_grad/Shape0gradients/rnn/basic_lstm_cell_6/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_6/add_grad/SumSum8gradients/rnn/basic_lstm_cell_6/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_6/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_6/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_6/add_grad/Sum.gradients/rnn/basic_lstm_cell_6/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_6/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_6/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_6/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_6/add_grad/Sum_10gradients/rnn/basic_lstm_cell_6/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_6/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_6/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_6/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_6/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_6/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_6/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_6/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_6/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_6/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_6/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_6/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_6/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_6/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_6/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_6/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_6/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_6/split_grad/concatI^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_6/split_grad/concatN^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_6/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_6/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_6/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_18AddN0gradients/MatMul_5_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_5/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_5/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_5/mul_2_grad/mulMulgradients/AddN_18rnn/basic_lstm_cell_5/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_5/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_5/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_5/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_5/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_5/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_5/Tanh_1gradients/AddN_18*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_5/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_5/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_5/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_5/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_5/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_5/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_5/Tanh_1Cgradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_5/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_5/Sigmoid_2Egradients/rnn/basic_lstm_cell_5/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_19AddNAgradients/rnn/basic_lstm_cell_6/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_5/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_6/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_5/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_5/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_5/add_1_grad/SumSumgradients/AddN_19@gradients/rnn/basic_lstm_cell_5/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_5/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_5/add_1_grad/Sum_1Sumgradients/AddN_19Bgradients/rnn/basic_lstm_cell_5/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_5/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_5/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_5/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_5/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_5/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_5/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_5/mul_grad/Shape0gradients/rnn/basic_lstm_cell_5/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_5/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_5/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_5/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_5/mul_grad/mul>gradients/rnn/basic_lstm_cell_5/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_5/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_5/mul_grad/Sum.gradients/rnn/basic_lstm_cell_5/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_5/mul_grad/mul_1Mulrnn/basic_lstm_cell_4/add_1Cgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_5/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_5/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_5/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_5/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_5/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_5/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_5/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_5/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_5/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_5/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_5/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_5/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_5/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_5/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_5/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_5/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_5/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_5/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_5/Sigmoid_1Egradients/rnn/basic_lstm_cell_5/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_5/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_5/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_5/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_5/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_5/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_5/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_5/SigmoidCgradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_5/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_5/Sigmoid_1Cgradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_5/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_5/TanhEgradients/rnn/basic_lstm_cell_5/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_5/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_5/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_5/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_5/add_grad/Shape0gradients/rnn/basic_lstm_cell_5/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_5/add_grad/SumSum8gradients/rnn/basic_lstm_cell_5/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_5/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_5/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_5/add_grad/Sum.gradients/rnn/basic_lstm_cell_5/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_5/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_5/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_5/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_5/add_grad/Sum_10gradients/rnn/basic_lstm_cell_5/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_5/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_5/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_5/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_5/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_5/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_5/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_5/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_5/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_5/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_5/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_5/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_5/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_5/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_5/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_5/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_5/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_5/split_grad/concatI^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_5/split_grad/concatN^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_5/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_5/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_5/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_20AddN0gradients/MatMul_4_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_4/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_4/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_4/mul_2_grad/mulMulgradients/AddN_20rnn/basic_lstm_cell_4/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_4/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_4/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_4/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_4/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_4/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_4/Tanh_1gradients/AddN_20*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_4/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_4/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_4/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_4/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_4/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_4/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_4/Tanh_1Cgradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_4/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_4/Sigmoid_2Egradients/rnn/basic_lstm_cell_4/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_21AddNAgradients/rnn/basic_lstm_cell_5/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_4/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_5/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_4/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_4/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_4/add_1_grad/SumSumgradients/AddN_21@gradients/rnn/basic_lstm_cell_4/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_4/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_4/add_1_grad/Sum_1Sumgradients/AddN_21Bgradients/rnn/basic_lstm_cell_4/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_4/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_4/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_4/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_4/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_4/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_4/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_4/mul_grad/Shape0gradients/rnn/basic_lstm_cell_4/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_4/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_4/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_4/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_4/mul_grad/mul>gradients/rnn/basic_lstm_cell_4/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_4/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_4/mul_grad/Sum.gradients/rnn/basic_lstm_cell_4/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_4/mul_grad/mul_1Mulrnn/basic_lstm_cell_3/add_1Cgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_4/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_4/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_4/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_4/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_4/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_4/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_4/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_4/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_4/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_4/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_4/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_4/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_4/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_4/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_4/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_4/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_4/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_4/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_4/Sigmoid_1Egradients/rnn/basic_lstm_cell_4/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_4/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_4/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_4/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_4/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_4/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_4/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_4/SigmoidCgradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_4/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_4/Sigmoid_1Cgradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_4/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_4/TanhEgradients/rnn/basic_lstm_cell_4/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_4/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_4/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_4/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_4/add_grad/Shape0gradients/rnn/basic_lstm_cell_4/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_4/add_grad/SumSum8gradients/rnn/basic_lstm_cell_4/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_4/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_4/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_4/add_grad/Sum.gradients/rnn/basic_lstm_cell_4/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_4/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_4/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_4/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_4/add_grad/Sum_10gradients/rnn/basic_lstm_cell_4/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_4/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_4/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_4/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_4/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_4/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_4/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_4/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_4/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_4/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_4/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_4/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_4/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_4/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_4/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_4/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_4/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_4/split_grad/concatI^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_4/split_grad/concatN^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_4/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_4/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_4/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_22AddN0gradients/MatMul_3_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_3/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_3/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_3/mul_2_grad/mulMulgradients/AddN_22rnn/basic_lstm_cell_3/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_3/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_3/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_3/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_3/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_3/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_3/Tanh_1gradients/AddN_22*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_3/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_3/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_3/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_3/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_3/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_3/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_3/Tanh_1Cgradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_3/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_3/Sigmoid_2Egradients/rnn/basic_lstm_cell_3/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_23AddNAgradients/rnn/basic_lstm_cell_4/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_3/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_4/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_3/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_3/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_3/add_1_grad/SumSumgradients/AddN_23@gradients/rnn/basic_lstm_cell_3/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_3/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_3/add_1_grad/Sum_1Sumgradients/AddN_23Bgradients/rnn/basic_lstm_cell_3/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_3/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_3/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_3/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_3/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_3/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_3/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_3/mul_grad/Shape0gradients/rnn/basic_lstm_cell_3/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_3/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_3/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_3/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_3/mul_grad/mul>gradients/rnn/basic_lstm_cell_3/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_3/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_3/mul_grad/Sum.gradients/rnn/basic_lstm_cell_3/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_3/mul_grad/mul_1Mulrnn/basic_lstm_cell_2/add_1Cgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_3/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_3/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_3/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_3/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_3/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_3/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_3/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_3/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_3/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_3/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_3/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_3/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_3/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_3/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_3/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_3/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_3/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_3/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_3/Sigmoid_1Egradients/rnn/basic_lstm_cell_3/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_3/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_3/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_3/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_3/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_3/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_3/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_3/SigmoidCgradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_3/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_3/Sigmoid_1Cgradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_3/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_3/TanhEgradients/rnn/basic_lstm_cell_3/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_3/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_3/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_3/add_grad/Shape0gradients/rnn/basic_lstm_cell_3/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_3/add_grad/SumSum8gradients/rnn/basic_lstm_cell_3/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_3/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_3/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_3/add_grad/Sum.gradients/rnn/basic_lstm_cell_3/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_3/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_3/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_3/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_3/add_grad/Sum_10gradients/rnn/basic_lstm_cell_3/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_3/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_3/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_3/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_3/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_3/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_3/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_3/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_3/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_3/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_3/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_3/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_3/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_3/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_3/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_3/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_3/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_3/split_grad/concatI^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_3/split_grad/concatN^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_3/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_3/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_3/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_24AddN0gradients/MatMul_2_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_2/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_2/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_2/mul_2_grad/mulMulgradients/AddN_24rnn/basic_lstm_cell_2/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_2/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_2/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_2/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_2/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_2/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_2/Tanh_1gradients/AddN_24*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_2/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_2/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_2/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_2/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_2/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_2/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_2/Tanh_1Cgradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_2/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_2/Sigmoid_2Egradients/rnn/basic_lstm_cell_2/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_25AddNAgradients/rnn/basic_lstm_cell_3/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_2/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_3/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_2/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_2/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_2/add_1_grad/SumSumgradients/AddN_25@gradients/rnn/basic_lstm_cell_2/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_2/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_2/add_1_grad/Sum_1Sumgradients/AddN_25Bgradients/rnn/basic_lstm_cell_2/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_2/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_2/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_2/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_2/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_2/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_2/mul_grad/Shape0gradients/rnn/basic_lstm_cell_2/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_2/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_2/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_2/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_2/mul_grad/mul>gradients/rnn/basic_lstm_cell_2/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_2/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_2/mul_grad/Sum.gradients/rnn/basic_lstm_cell_2/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
└
.gradients/rnn/basic_lstm_cell_2/mul_grad/mul_1Mulrnn/basic_lstm_cell_1/add_1Cgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_2/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_2/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_2/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_2/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_2/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_2/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_2/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_2/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_2/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_2/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_2/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_2/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_2/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_2/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_2/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_2/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_2/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_2/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_2/Sigmoid_1Egradients/rnn/basic_lstm_cell_2/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_2/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_2/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_2/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_2/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_2/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_2/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_2/SigmoidCgradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_2/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_2/Sigmoid_1Cgradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_2/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_2/TanhEgradients/rnn/basic_lstm_cell_2/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_2/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_2/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_2/add_grad/Shape0gradients/rnn/basic_lstm_cell_2/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_2/add_grad/SumSum8gradients/rnn/basic_lstm_cell_2/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_2/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_2/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_2/add_grad/Sum.gradients/rnn/basic_lstm_cell_2/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_2/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_2/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_2/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_2/add_grad/Sum_10gradients/rnn/basic_lstm_cell_2/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_2/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_2/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_2/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_2/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_2/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_2/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_2/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_2/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_2/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_2/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_2/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_2/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_2/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_2/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_2/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_2/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_2/split_grad/concatI^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_2/split_grad/concatN^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_2/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_2/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_2/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/Slice_1
ѕ
gradients/AddN_26AddN0gradients/MatMul_1_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
Ђ
0gradients/rnn/basic_lstm_cell_1/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_1/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape2gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
њ
.gradients/rnn/basic_lstm_cell_1/mul_2_grad/mulMulgradients/AddN_26rnn/basic_lstm_cell_1/Sigmoid_2*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_1/mul_2_grad/SumSum.gradients/rnn/basic_lstm_cell_1/mul_2_grad/mul@gradients/rnn/basic_lstm_cell_1/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/mul_2_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_1/mul_2_grad/Sum0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Љ
0gradients/rnn/basic_lstm_cell_1/mul_2_grad/mul_1Mulrnn/basic_lstm_cell_1/Tanh_1gradients/AddN_26*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_1/mul_2_grad/mul_1Bgradients/rnn/basic_lstm_cell_1/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_1/mul_2_grad/Sum_12gradients/rnn/basic_lstm_cell_1/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape5^gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape<^gradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_1/mul_2_grad/Reshape_1
╠
4gradients/rnn/basic_lstm_cell_1/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell_1/Tanh_1Cgradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
┌
:gradients/rnn/basic_lstm_cell_1/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_1/Sigmoid_2Egradients/rnn/basic_lstm_cell_1/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Ѕ
gradients/AddN_27AddNAgradients/rnn/basic_lstm_cell_2/mul_grad/tuple/control_dependency4gradients/rnn/basic_lstm_cell_1/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_2/mul_grad/Reshape
Ђ
0gradients/rnn/basic_lstm_cell_1/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_1/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape2gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╩
.gradients/rnn/basic_lstm_cell_1/add_1_grad/SumSumgradients/AddN_27@gradients/rnn/basic_lstm_cell_1/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/add_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_1/add_1_grad/Sum0gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╬
0gradients/rnn/basic_lstm_cell_1/add_1_grad/Sum_1Sumgradients/AddN_27Bgradients/rnn/basic_lstm_cell_1/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_1/add_1_grad/Sum_12gradients/rnn/basic_lstm_cell_1/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_1/add_1_grad/Reshape_1

.gradients/rnn/basic_lstm_cell_1/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell_1/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_1/mul_grad/Shape0gradients/rnn/basic_lstm_cell_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
└
,gradients/rnn/basic_lstm_cell_1/mul_grad/mulMulCgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell_1/Sigmoid*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell_1/mul_grad/SumSum,gradients/rnn/basic_lstm_cell_1/mul_grad/mul>gradients/rnn/basic_lstm_cell_1/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_1/mul_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_1/mul_grad/Sum.gradients/rnn/basic_lstm_cell_1/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Й
.gradients/rnn/basic_lstm_cell_1/mul_grad/mul_1Mulrnn/basic_lstm_cell/add_1Cgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_1/mul_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell_1/mul_grad/mul_1@gradients/rnn/basic_lstm_cell_1/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_1/mul_grad/Sum_10gradients/rnn/basic_lstm_cell_1/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell_1/mul_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape3^gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape:^gradients/rnn/basic_lstm_cell_1/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_1/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape_1
Ђ
0gradients/rnn/basic_lstm_cell_1/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ѓ
2gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ч
@gradients/rnn/basic_lstm_cell_1/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape2gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
┴
.gradients/rnn/basic_lstm_cell_1/mul_1_grad/mulMulEgradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell_1/Tanh*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell_1/mul_1_grad/SumSum.gradients/rnn/basic_lstm_cell_1/mul_1_grad/mul@gradients/rnn/basic_lstm_cell_1/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell_1/mul_1_grad/ReshapeReshape.gradients/rnn/basic_lstm_cell_1/mul_1_grad/Sum0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╚
0gradients/rnn/basic_lstm_cell_1/mul_1_grad/mul_1Mulrnn/basic_lstm_cell_1/Sigmoid_1Egradients/rnn/basic_lstm_cell_1/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
ь
0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Sum_1Sum0gradients/rnn/basic_lstm_cell_1/mul_1_grad/mul_1Bgradients/rnn/basic_lstm_cell_1/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
▄
4gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1Reshape0gradients/rnn/basic_lstm_cell_1/mul_1_grad/Sum_12gradients/rnn/basic_lstm_cell_1/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
»
;gradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/group_depsNoOp3^gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape5^gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1
▒
Cgradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependencyIdentity2gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape<^gradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape
и
Egradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependency_1Identity4gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1<^gradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*G
_class=
;9loc:@gradients/rnn/basic_lstm_cell_1/mul_1_grad/Reshape_1
н
8gradients/rnn/basic_lstm_cell_1/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_1/SigmoidCgradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
п
:gradients/rnn/basic_lstm_cell_1/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell_1/Sigmoid_1Cgradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
╩
2gradients/rnn/basic_lstm_cell_1/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell_1/TanhEgradients/rnn/basic_lstm_cell_1/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:

.gradients/rnn/basic_lstm_cell_1/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
s
0gradients/rnn/basic_lstm_cell_1/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ш
>gradients/rnn/basic_lstm_cell_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell_1/add_grad/Shape0gradients/rnn/basic_lstm_cell_1/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ь
,gradients/rnn/basic_lstm_cell_1/add_grad/SumSum8gradients/rnn/basic_lstm_cell_1/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell_1/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell_1/add_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell_1/add_grad/Sum.gradients/rnn/basic_lstm_cell_1/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
ы
.gradients/rnn/basic_lstm_cell_1/add_grad/Sum_1Sum8gradients/rnn/basic_lstm_cell_1/Sigmoid_grad/SigmoidGrad@gradients/rnn/basic_lstm_cell_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╬
2gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell_1/add_grad/Sum_10gradients/rnn/basic_lstm_cell_1/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Е
9gradients/rnn/basic_lstm_cell_1/add_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell_1/add_grad/Reshape3^gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell_1/add_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell_1/add_grad/Reshape:^gradients/rnn/basic_lstm_cell_1/add_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_1/add_grad/Reshape
Д
Cgradients/rnn/basic_lstm_cell_1/add_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1:^gradients/rnn/basic_lstm_cell_1/add_grad/tuple/group_deps*
T0*
_output_shapes
: *E
_class;
97loc:@gradients/rnn/basic_lstm_cell_1/add_grad/Reshape_1
Љ
1gradients/rnn/basic_lstm_cell_1/split_grad/concatConcatV2:gradients/rnn/basic_lstm_cell_1/Sigmoid_1_grad/SigmoidGrad2gradients/rnn/basic_lstm_cell_1/Tanh_grad/TanhGradAgradients/rnn/basic_lstm_cell_1/add_grad/tuple/control_dependency:gradients/rnn/basic_lstm_cell_1/Sigmoid_2_grad/SigmoidGrad%rnn/basic_lstm_cell_1/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
к
Hgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGrad1gradients/rnn/basic_lstm_cell_1/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
н
Mgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOp2^gradients/rnn/basic_lstm_cell_1/split_grad/concatI^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
М
Ugradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentity1gradients/rnn/basic_lstm_cell_1/split_grad/concatN^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*D
_class:
86loc:@gradients/rnn/basic_lstm_cell_1/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell_1/basic_lstm_cell/concatUgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
ѓ
@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/RankConst*
value	B :*
_output_shapes
: *
dtype0
р
?gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/modFloorMod1rnn/basic_lstm_cell_1/basic_lstm_cell/concat/axis@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
њ
Agradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
ћ
Cgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
╠
Hgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffset?gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/modAgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ShapeCgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape_1* 
_output_shapes
::*
N
с
Agradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/SliceSliceTgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyHgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ConcatOffsetAgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape*
Index0*
T0*
_output_shapes

:
ж
Cgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1SliceTgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyJgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/ConcatOffset:1Cgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Shape_1*
Index0*
T0*
_output_shapes

:
я
Lgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/group_depsNoOpB^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/SliceD^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1
ы
Tgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityAgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/SliceM^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*T
_classJ
HFloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice
э
Vgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1IdentityCgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1M^gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*
_output_shapes

:*V
_classL
JHloc:@gradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/Slice_1
ё
gradients/AddN_28AddN.gradients/MatMul_grad/tuple/control_dependencyVgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*/
_class%
#!loc:@gradients/MatMul_grad/MatMul

.gradients/rnn/basic_lstm_cell/mul_2_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell/mul_2_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell/mul_2_grad/Shape0gradients/rnn/basic_lstm_cell/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:         :         
ј
,gradients/rnn/basic_lstm_cell/mul_2_grad/mulMulgradients/AddN_28rnn/basic_lstm_cell/Sigmoid_2*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell/mul_2_grad/SumSum,gradients/rnn/basic_lstm_cell/mul_2_grad/mul>gradients/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/mul_2_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell/mul_2_grad/Sum.gradients/rnn/basic_lstm_cell/mul_2_grad/Shape*
Tshape0*
T0*
_output_shapes

:
Ї
.gradients/rnn/basic_lstm_cell/mul_2_grad/mul_1Mulrnn/basic_lstm_cell/Tanh_1gradients/AddN_28*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell/mul_2_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell/mul_2_grad/mul_1@gradients/rnn/basic_lstm_cell/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell/mul_2_grad/Sum_10gradients/rnn/basic_lstm_cell/mul_2_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell/mul_2_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape3^gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape:^gradients/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1:^gradients/rnn/basic_lstm_cell/mul_2_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell/mul_2_grad/Reshape_1
к
2gradients/rnn/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradrnn/basic_lstm_cell/Tanh_1Agradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency*
T0*
_output_shapes

:
н
8gradients/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell/Sigmoid_2Cgradients/rnn/basic_lstm_cell/mul_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
Є
gradients/AddN_29AddNAgradients/rnn/basic_lstm_cell_1/mul_grad/tuple/control_dependency2gradients/rnn/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*
_output_shapes

:*
N*C
_class9
75loc:@gradients/rnn/basic_lstm_cell_1/mul_grad/Reshape

.gradients/rnn/basic_lstm_cell/add_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell/add_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell/add_1_grad/Shape0gradients/rnn/basic_lstm_cell/add_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
к
,gradients/rnn/basic_lstm_cell/add_1_grad/SumSumgradients/AddN_29>gradients/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/add_1_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell/add_1_grad/Sum.gradients/rnn/basic_lstm_cell/add_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
╩
.gradients/rnn/basic_lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_29@gradients/rnn/basic_lstm_cell/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell/add_1_grad/Sum_10gradients/rnn/basic_lstm_cell/add_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell/add_1_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell/add_1_grad/Reshape3^gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell/add_1_grad/Reshape:^gradients/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/add_1_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1:^gradients/rnn/basic_lstm_cell/add_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell/add_1_grad/Reshape_1
}
,gradients/rnn/basic_lstm_cell/mul_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0

.gradients/rnn/basic_lstm_cell/mul_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
­
<gradients/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/rnn/basic_lstm_cell/mul_grad/Shape.gradients/rnn/basic_lstm_cell/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
║
*gradients/rnn/basic_lstm_cell/mul_grad/mulMulAgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependencyrnn/basic_lstm_cell/Sigmoid*
T0*
_output_shapes

:
█
*gradients/rnn/basic_lstm_cell/mul_grad/SumSum*gradients/rnn/basic_lstm_cell/mul_grad/mul<gradients/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╩
.gradients/rnn/basic_lstm_cell/mul_grad/ReshapeReshape*gradients/rnn/basic_lstm_cell/mul_grad/Sum,gradients/rnn/basic_lstm_cell/mul_grad/Shape*
Tshape0*
T0*
_output_shapes

:
г
,gradients/rnn/basic_lstm_cell/mul_grad/mul_1MulPlaceholderAgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell/mul_grad/Sum_1Sum,gradients/rnn/basic_lstm_cell/mul_grad/mul_1>gradients/rnn/basic_lstm_cell/mul_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/mul_grad/Reshape_1Reshape,gradients/rnn/basic_lstm_cell/mul_grad/Sum_1.gradients/rnn/basic_lstm_cell/mul_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Б
7gradients/rnn/basic_lstm_cell/mul_grad/tuple/group_depsNoOp/^gradients/rnn/basic_lstm_cell/mul_grad/Reshape1^gradients/rnn/basic_lstm_cell/mul_grad/Reshape_1
А
?gradients/rnn/basic_lstm_cell/mul_grad/tuple/control_dependencyIdentity.gradients/rnn/basic_lstm_cell/mul_grad/Reshape8^gradients/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*A
_class7
53loc:@gradients/rnn/basic_lstm_cell/mul_grad/Reshape
Д
Agradients/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1Identity0gradients/rnn/basic_lstm_cell/mul_grad/Reshape_18^gradients/rnn/basic_lstm_cell/mul_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/mul_grad/Reshape_1

.gradients/rnn/basic_lstm_cell/mul_1_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
Ђ
0gradients/rnn/basic_lstm_cell/mul_1_grad/Shape_1Const*
valueB"      *
_output_shapes
:*
dtype0
Ш
>gradients/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/rnn/basic_lstm_cell/mul_1_grad/Shape0gradients/rnn/basic_lstm_cell/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:         :         
╗
,gradients/rnn/basic_lstm_cell/mul_1_grad/mulMulCgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1rnn/basic_lstm_cell/Tanh*
T0*
_output_shapes

:
р
,gradients/rnn/basic_lstm_cell/mul_1_grad/SumSum,gradients/rnn/basic_lstm_cell/mul_1_grad/mul>gradients/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
л
0gradients/rnn/basic_lstm_cell/mul_1_grad/ReshapeReshape,gradients/rnn/basic_lstm_cell/mul_1_grad/Sum.gradients/rnn/basic_lstm_cell/mul_1_grad/Shape*
Tshape0*
T0*
_output_shapes

:
┬
.gradients/rnn/basic_lstm_cell/mul_1_grad/mul_1Mulrnn/basic_lstm_cell/Sigmoid_1Cgradients/rnn/basic_lstm_cell/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
у
.gradients/rnn/basic_lstm_cell/mul_1_grad/Sum_1Sum.gradients/rnn/basic_lstm_cell/mul_1_grad/mul_1@gradients/rnn/basic_lstm_cell/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
о
2gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1Reshape.gradients/rnn/basic_lstm_cell/mul_1_grad/Sum_10gradients/rnn/basic_lstm_cell/mul_1_grad/Shape_1*
Tshape0*
T0*
_output_shapes

:
Е
9gradients/rnn/basic_lstm_cell/mul_1_grad/tuple/group_depsNoOp1^gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape3^gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1
Е
Agradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependencyIdentity0gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape:^gradients/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*C
_class9
75loc:@gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape
»
Cgradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1Identity2gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1:^gradients/rnn/basic_lstm_cell/mul_1_grad/tuple/group_deps*
T0*
_output_shapes

:*E
_class;
97loc:@gradients/rnn/basic_lstm_cell/mul_1_grad/Reshape_1
╬
6gradients/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell/SigmoidAgradients/rnn/basic_lstm_cell/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
м
8gradients/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradrnn/basic_lstm_cell/Sigmoid_1Agradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency*
T0*
_output_shapes

:
─
0gradients/rnn/basic_lstm_cell/Tanh_grad/TanhGradTanhGradrnn/basic_lstm_cell/TanhCgradients/rnn/basic_lstm_cell/mul_1_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
}
,gradients/rnn/basic_lstm_cell/add_grad/ShapeConst*
valueB"      *
_output_shapes
:*
dtype0
q
.gradients/rnn/basic_lstm_cell/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
­
<gradients/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/rnn/basic_lstm_cell/add_grad/Shape.gradients/rnn/basic_lstm_cell/add_grad/Shape_1*
T0*2
_output_shapes 
:         :         
у
*gradients/rnn/basic_lstm_cell/add_grad/SumSum6gradients/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGrad<gradients/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╩
.gradients/rnn/basic_lstm_cell/add_grad/ReshapeReshape*gradients/rnn/basic_lstm_cell/add_grad/Sum,gradients/rnn/basic_lstm_cell/add_grad/Shape*
Tshape0*
T0*
_output_shapes

:
в
,gradients/rnn/basic_lstm_cell/add_grad/Sum_1Sum6gradients/rnn/basic_lstm_cell/Sigmoid_grad/SigmoidGrad>gradients/rnn/basic_lstm_cell/add_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
_output_shapes
:*
	keep_dims( 
╚
0gradients/rnn/basic_lstm_cell/add_grad/Reshape_1Reshape,gradients/rnn/basic_lstm_cell/add_grad/Sum_1.gradients/rnn/basic_lstm_cell/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
Б
7gradients/rnn/basic_lstm_cell/add_grad/tuple/group_depsNoOp/^gradients/rnn/basic_lstm_cell/add_grad/Reshape1^gradients/rnn/basic_lstm_cell/add_grad/Reshape_1
А
?gradients/rnn/basic_lstm_cell/add_grad/tuple/control_dependencyIdentity.gradients/rnn/basic_lstm_cell/add_grad/Reshape8^gradients/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*
_output_shapes

:*A
_class7
53loc:@gradients/rnn/basic_lstm_cell/add_grad/Reshape
Ъ
Agradients/rnn/basic_lstm_cell/add_grad/tuple/control_dependency_1Identity0gradients/rnn/basic_lstm_cell/add_grad/Reshape_18^gradients/rnn/basic_lstm_cell/add_grad/tuple/group_deps*
T0*
_output_shapes
: *C
_class9
75loc:@gradients/rnn/basic_lstm_cell/add_grad/Reshape_1
Ё
/gradients/rnn/basic_lstm_cell/split_grad/concatConcatV28gradients/rnn/basic_lstm_cell/Sigmoid_1_grad/SigmoidGrad0gradients/rnn/basic_lstm_cell/Tanh_grad/TanhGrad?gradients/rnn/basic_lstm_cell/add_grad/tuple/control_dependency8gradients/rnn/basic_lstm_cell/Sigmoid_2_grad/SigmoidGrad#rnn/basic_lstm_cell/split/split_dim*

Tidx0*
T0*
_output_shapes

:*
N
─
Hgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/rnn/basic_lstm_cell/split_grad/concat*
T0*
_output_shapes
:*
data_formatNHWC
м
Mgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients/rnn/basic_lstm_cell/split_grad/concatI^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGrad
¤
Ugradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/rnn/basic_lstm_cell/split_grad/concatN^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes

:*B
_class8
64loc:@gradients/rnn/basic_lstm_cell/split_grad/concat
 
Wgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency_1IdentityHgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGradN^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*[
_classQ
OMloc:@gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/BiasAddGrad
ћ
Bgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMulMatMulUgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency rnn/basic_lstm_cell/weights/read*
transpose_a( *
T0*
_output_shapes

:*
transpose_b(
б
Dgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1MatMul,rnn/basic_lstm_cell/basic_lstm_cell_1/concatUgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
T0*
_output_shapes

:*
transpose_b( 
Я
Lgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/group_depsNoOpC^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMulE^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1
з
Tgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/control_dependencyIdentityBgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMulM^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*U
_classK
IGloc:@gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul
щ
Vgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/control_dependency_1IdentityDgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1M^gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:*W
_classM
KIloc:@gradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/MatMul_1
р
gradients/AddN_30AddNXgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Xgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes
:*
N*\
_classR
PNloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
м
gradients/AddN_31AddNWgradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_13/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_12/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_11/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Wgradients/rnn/basic_lstm_cell_10/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_9/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_8/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_7/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_6/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_5/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_4/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_3/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_2/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Vgradients/rnn/basic_lstm_cell/basic_lstm_cell_1/MatMul_grad/tuple/control_dependency_1*
T0*
_output_shapes

:*
N*X
_classN
LJloc:@gradients/rnn/basic_lstm_cell_14/basic_lstm_cell/MatMul_grad/MatMul_1
њ
!weight2/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes

:*
dtype0*
_class
loc:@weight2
Ъ
weight2/Adagrad
VariableV2*
_class
loc:@weight2*
	container *
shared_name *
shape
:*
_output_shapes

:*
dtype0
┬
weight2/Adagrad/AssignAssignweight2/Adagrad!weight2/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@weight2
v
weight2/Adagrad/readIdentityweight2/Adagrad*
T0*
_output_shapes

:*
_class
loc:@weight2
ў
$Variable_1/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes

:*
dtype0*
_class
loc:@Variable_1
Ц
Variable_1/Adagrad
VariableV2*
_class
loc:@Variable_1*
	container *
shared_name *
shape
:*
_output_shapes

:*
dtype0
╬
Variable_1/Adagrad/AssignAssignVariable_1/Adagrad$Variable_1/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*
_class
loc:@Variable_1

Variable_1/Adagrad/readIdentityVariable_1/Adagrad*
T0*
_output_shapes

:*
_class
loc:@Variable_1
║
5rnn/basic_lstm_cell/weights/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes

:*
dtype0*.
_class$
" loc:@rnn/basic_lstm_cell/weights
К
#rnn/basic_lstm_cell/weights/Adagrad
VariableV2*.
_class$
" loc:@rnn/basic_lstm_cell/weights*
	container *
shared_name *
shape
:*
_output_shapes

:*
dtype0
њ
*rnn/basic_lstm_cell/weights/Adagrad/AssignAssign#rnn/basic_lstm_cell/weights/Adagrad5rnn/basic_lstm_cell/weights/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes

:*
use_locking(*.
_class$
" loc:@rnn/basic_lstm_cell/weights
▓
(rnn/basic_lstm_cell/weights/Adagrad/readIdentity#rnn/basic_lstm_cell/weights/Adagrad*
T0*
_output_shapes

:*.
_class$
" loc:@rnn/basic_lstm_cell/weights
░
4rnn/basic_lstm_cell/biases/Adagrad/Initializer/ConstConst*
valueB*═╠╠=*
_output_shapes
:*
dtype0*-
_class#
!loc:@rnn/basic_lstm_cell/biases
й
"rnn/basic_lstm_cell/biases/Adagrad
VariableV2*-
_class#
!loc:@rnn/basic_lstm_cell/biases*
	container *
shared_name *
shape:*
_output_shapes
:*
dtype0
і
)rnn/basic_lstm_cell/biases/Adagrad/AssignAssign"rnn/basic_lstm_cell/biases/Adagrad4rnn/basic_lstm_cell/biases/Adagrad/Initializer/Const*
validate_shape(*
T0*
_output_shapes
:*
use_locking(*-
_class#
!loc:@rnn/basic_lstm_cell/biases
Ф
'rnn/basic_lstm_cell/biases/Adagrad/readIdentity"rnn/basic_lstm_cell/biases/Adagrad*
T0*
_output_shapes
:*-
_class#
!loc:@rnn/basic_lstm_cell/biases
[
training/learning_rateConst*
valueB
 *џЎЎ>*
_output_shapes
: *
dtype0
л
$training/update_weight2/ApplyAdagradApplyAdagradweight2weight2/Adagradtraining/learning_rategradients/AddN_1*
T0*
_output_shapes

:*
use_locking( *
_class
loc:@weight2
┌
'training/update_Variable_1/ApplyAdagradApplyAdagrad
Variable_1Variable_1/Adagradtraining/learning_rategradients/AddN*
T0*
_output_shapes

:*
use_locking( *
_class
loc:@Variable_1
А
8training/update_rnn/basic_lstm_cell/weights/ApplyAdagradApplyAdagradrnn/basic_lstm_cell/weights#rnn/basic_lstm_cell/weights/Adagradtraining/learning_rategradients/AddN_31*
T0*
_output_shapes

:*
use_locking( *.
_class$
" loc:@rnn/basic_lstm_cell/weights
Ў
7training/update_rnn/basic_lstm_cell/biases/ApplyAdagradApplyAdagradrnn/basic_lstm_cell/biases"rnn/basic_lstm_cell/biases/Adagradtraining/learning_rategradients/AddN_30*
T0*
_output_shapes
:*
use_locking( *-
_class#
!loc:@rnn/basic_lstm_cell/biases
о
trainingNoOp%^training/update_weight2/ApplyAdagrad(^training/update_Variable_1/ApplyAdagrad9^training/update_rnn/basic_lstm_cell/weights/ApplyAdagrad8^training/update_rnn/basic_lstm_cell/biases/ApplyAdagrad""▓
	variablesцА
+
	weight1:0weight1/Assignweight1/read:0
.

Variable:0Variable/AssignVariable/read:0
+
	weight2:0weight2/Assignweight2/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
g
rnn/basic_lstm_cell/weights:0"rnn/basic_lstm_cell/weights/Assign"rnn/basic_lstm_cell/weights/read:0
d
rnn/basic_lstm_cell/biases:0!rnn/basic_lstm_cell/biases/Assign!rnn/basic_lstm_cell/biases/read:0
C
weight2/Adagrad:0weight2/Adagrad/Assignweight2/Adagrad/read:0
L
Variable_1/Adagrad:0Variable_1/Adagrad/AssignVariable_1/Adagrad/read:0

%rnn/basic_lstm_cell/weights/Adagrad:0*rnn/basic_lstm_cell/weights/Adagrad/Assign*rnn/basic_lstm_cell/weights/Adagrad/read:0
|
$rnn/basic_lstm_cell/biases/Adagrad:0)rnn/basic_lstm_cell/biases/Adagrad/Assign)rnn/basic_lstm_cell/biases/Adagrad/read:0"
	summaries

	weights:0"ф
trainable_variablesњЈ
+
	weight1:0weight1/Assignweight1/read:0
.

Variable:0Variable/AssignVariable/read:0
+
	weight2:0weight2/Assignweight2/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0
g
rnn/basic_lstm_cell/weights:0"rnn/basic_lstm_cell/weights/Assign"rnn/basic_lstm_cell/weights/read:0
d
rnn/basic_lstm_cell/biases:0!rnn/basic_lstm_cell/biases/Assign!rnn/basic_lstm_cell/biases/read:0"
train_op


trainingж6ф┴