       �K"	  @�{Y�Abrain.Event:2D��i�8     ��؝	�C_�{Y�A"��
[
global_step/initial_valueConst*
_output_shapes
: *
value	B : *
dtype0
o
global_step
VariableV2*
_output_shapes
: *
shape: *
dtype0*
	container *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
_class
loc:@global_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0
\
data/center_wordsPlaceholder*
_output_shapes	
:�*
shape:�*
dtype0
d
data/target_wordsPlaceholder*
_output_shapes
:	�*
shape:	�*
dtype0
z
embed/random_uniform/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"P�  �   *
dtype0
l
embed/random_uniform/minConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  ��*
dtype0
l
embed/random_uniform/maxConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
"embed/random_uniform/RandomUniformRandomUniformembed/random_uniform/shape"/device:CPU:0*
seed2 *!
_output_shapes
:І�*
T0*
dtype0*

seed 
�
embed/random_uniform/subSubembed/random_uniform/maxembed/random_uniform/min"/device:CPU:0*
_output_shapes
: *
T0
�
embed/random_uniform/mulMul"embed/random_uniform/RandomUniformembed/random_uniform/sub"/device:CPU:0*!
_output_shapes
:І�*
T0
�
embed/random_uniformAddembed/random_uniform/mulembed/random_uniform/min"/device:CPU:0*!
_output_shapes
:І�*
T0
�
embed/embed_matrix
VariableV2"/device:CPU:0*!
_output_shapes
:І�*
shape:І�*
dtype0*
	container *
shared_name 
�
embed/embed_matrix/AssignAssignembed/embed_matrixembed/random_uniform"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
�
embed/embed_matrix/readIdentityembed/embed_matrix"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0
�

loss/embedGatherembed/embed_matrix/readdata/center_words"/device:CPU:0*%
_class
loc:@embed/embed_matrix* 
_output_shapes
:
��*
Tparams0*
validate_indices(*
Tindices0
{
loss/truncated_normal/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"P�  �   *
dtype0
n
loss/truncated_normal/meanConst"/device:CPU:0*
_output_shapes
: *
valueB
 *    *
dtype0
p
loss/truncated_normal/stddevConst"/device:CPU:0*
_output_shapes
: *
valueB
 *��=*
dtype0
�
%loss/truncated_normal/TruncatedNormalTruncatedNormalloss/truncated_normal/shape"/device:CPU:0*
seed2 *!
_output_shapes
:І�*
T0*
dtype0*

seed 
�
loss/truncated_normal/mulMul%loss/truncated_normal/TruncatedNormalloss/truncated_normal/stddev"/device:CPU:0*!
_output_shapes
:І�*
T0
�
loss/truncated_normalAddloss/truncated_normal/mulloss/truncated_normal/mean"/device:CPU:0*!
_output_shapes
:І�*
T0
�
loss/nce_weight
VariableV2"/device:CPU:0*!
_output_shapes
:І�*
shape:І�*
dtype0*
	container *
shared_name 
�
loss/nce_weight/AssignAssignloss/nce_weightloss/truncated_normal"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
�
loss/nce_weight/readIdentityloss/nce_weight"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0
j

loss/zerosConst"/device:CPU:0*
_output_shapes

:І*
valueBІ*    *
dtype0
�
loss/nce_bias
VariableV2"/device:CPU:0*
_output_shapes

:І*
shape:І*
dtype0*
	container *
shared_name 
�
loss/nce_bias/AssignAssignloss/nce_bias
loss/zeros"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0*
validate_shape(*
use_locking(
�
loss/nce_bias/readIdentityloss/nce_bias"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0
u
loss/nce_loss/CastCastdata/target_words"/device:CPU:0*
_output_shapes
:	�*

SrcT0*

DstT0	
}
loss/nce_loss/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
�
loss/nce_loss/ReshapeReshapeloss/nce_loss/Castloss/nce_loss/Reshape/shape"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0	
�
(loss/nce_loss/LogUniformCandidateSamplerLogUniformCandidateSamplerloss/nce_loss/Cast"/device:CPU:0*+
_output_shapes
:@:	�:@*
num_true*
unique(*
	range_maxІ*
seed2 *
num_sampled@*

seed 
�
loss/nce_loss/StopGradientStopGradient(loss/nce_loss/LogUniformCandidateSampler"/device:CPU:0*
_output_shapes
:@*
T0	
�
loss/nce_loss/StopGradient_1StopGradient*loss/nce_loss/LogUniformCandidateSampler:1"/device:CPU:0*
_output_shapes
:	�*
T0
�
loss/nce_loss/StopGradient_2StopGradient*loss/nce_loss/LogUniformCandidateSampler:2"/device:CPU:0*
_output_shapes
:@*
T0
j
loss/nce_loss/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/concatConcatV2loss/nce_loss/Reshapeloss/nce_loss/StopGradientloss/nce_loss/concat/axis"/device:CPU:0*
_output_shapes	
:�*
N*
T0	*

Tidx0
�
loss/nce_loss/embedding_lookupGatherloss/nce_weight/readloss/nce_loss/concat"/device:CPU:0*"
_class
loc:@loss/nce_weight* 
_output_shapes
:
��*
Tparams0*
validate_indices(*
Tindices0	
�
 loss/nce_loss/embedding_lookup_1Gatherloss/nce_bias/readloss/nce_loss/concat"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes	
:�*
Tparams0*
validate_indices(*
Tindices0	
m
loss/nce_loss/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
z
!loss/nce_loss/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
|
#loss/nce_loss/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
|
#loss/nce_loss/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_sliceStridedSliceloss/nce_loss/Shape!loss/nce_loss/strided_slice/stack#loss/nce_loss/strided_slice/stack_1#loss/nce_loss/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 
o
loss/nce_loss/stack/1Const"/device:CPU:0*
_output_shapes
: *
valueB :
���������*
dtype0
�
loss/nce_loss/stackPackloss/nce_loss/strided_sliceloss/nce_loss/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
y
loss/nce_loss/Slice/beginConst"/device:CPU:0*
_output_shapes
:*
valueB"        *
dtype0
�
loss/nce_loss/SliceSliceloss/nce_loss/embedding_lookuploss/nce_loss/Slice/beginloss/nce_loss/stack"/device:CPU:0*0
_output_shapes
:������������������*
T0*
Index0
o
loss/nce_loss/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
t
loss/nce_loss/Slice_1/beginConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
loss/nce_loss/Slice_1Slice loss/nce_loss/embedding_lookup_1loss/nce_loss/Slice_1/beginloss/nce_loss/Shape_1"/device:CPU:0*
_output_shapes	
:�*
T0*
Index0
w
loss/nce_loss/Shape_2Shapeloss/nce_loss/Slice"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
|
#loss/nce_loss/strided_slice_1/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_1/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_slice_1StridedSliceloss/nce_loss/Shape_2#loss/nce_loss/strided_slice_1/stack%loss/nce_loss/strided_slice_1/stack_1%loss/nce_loss/strided_slice_1/stack_2"/device:CPU:0*
_output_shapes
:*
shrink_axis_mask *
end_mask *
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 

loss/nce_loss/concat_1/values_0Const"/device:CPU:0*
_output_shapes
:*
valueB"����   *
dtype0
l
loss/nce_loss/concat_1/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/concat_1ConcatV2loss/nce_loss/concat_1/values_0loss/nce_loss/strided_slice_1loss/nce_loss/concat_1/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
m
loss/nce_loss/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/ExpandDims
ExpandDims
loss/embedloss/nce_loss/ExpandDims/dim"/device:CPU:0*$
_output_shapes
:��*
T0*

Tdim0
�
loss/nce_loss/Reshape_1Reshapeloss/nce_loss/Sliceloss/nce_loss/concat_1"/device:CPU:0*4
_output_shapes"
 :������������������*
Tshape0*
T0
�
loss/nce_loss/MulMulloss/nce_loss/ExpandDimsloss/nce_loss/Reshape_1"/device:CPU:0*$
_output_shapes
:��*
T0
�
loss/nce_loss/concat_2/values_0Const"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
l
loss/nce_loss/concat_2/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/concat_2ConcatV2loss/nce_loss/concat_2/values_0loss/nce_loss/strided_slice_1loss/nce_loss/concat_2/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
loss/nce_loss/Reshape_2Reshapeloss/nce_loss/Mulloss/nce_loss/concat_2"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
{
loss/nce_loss/Shape_3Shapeloss/nce_loss/Reshape_2"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
|
#loss/nce_loss/strided_slice_2/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_2/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_2/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_slice_2StridedSliceloss/nce_loss/Shape_3#loss/nce_loss/strided_slice_2/stack%loss/nce_loss/strided_slice_2/stack_1%loss/nce_loss/strided_slice_2/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 
h
loss/nce_loss/stack_1/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/stack_1Packloss/nce_loss/strided_slice_2loss/nce_loss/stack_1/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
l
loss/nce_loss/ones/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
loss/nce_loss/onesFillloss/nce_loss/stack_1loss/nce_loss/ones/Const"/device:CPU:0*'
_output_shapes
:���������*
T0
�
loss/nce_loss/MatMulMatMulloss/nce_loss/Reshape_2loss/nce_loss/ones"/device:CPU:0*'
_output_shapes
:���������*
T0*
transpose_a( *
transpose_b( 

loss/nce_loss/Reshape_3/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
�
loss/nce_loss/Reshape_3Reshapeloss/nce_loss/MatMulloss/nce_loss/Reshape_3/shape"/device:CPU:0*#
_output_shapes
:���������*
Tshape0*
T0
}
loss/nce_loss/Reshape_4/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"����   *
dtype0
�
loss/nce_loss/Reshape_4Reshapeloss/nce_loss/Reshape_3loss/nce_loss/Reshape_4/shape"/device:CPU:0*'
_output_shapes
:���������*
Tshape0*
T0
}
loss/nce_loss/Reshape_5/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"����   *
dtype0
�
loss/nce_loss/Reshape_5Reshapeloss/nce_loss/Slice_1loss/nce_loss/Reshape_5/shape"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
loss/nce_loss/addAddloss/nce_loss/Reshape_4loss/nce_loss/Reshape_5"/device:CPU:0*
_output_shapes
:	�*
T0
o
loss/nce_loss/Shape_4Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
|
#loss/nce_loss/strided_slice_3/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
~
%loss/nce_loss/strided_slice_3/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_3/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_slice_3StridedSliceloss/nce_loss/Shape_4#loss/nce_loss/strided_slice_3/stack%loss/nce_loss/strided_slice_3/stack_1%loss/nce_loss/strided_slice_3/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 
h
loss/nce_loss/stack_2/1Const"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/stack_2Packloss/nce_loss/strided_slice_3loss/nce_loss/stack_2/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
z
loss/nce_loss/Slice_2/sizeConst"/device:CPU:0*
_output_shapes
:*
valueB"��������*
dtype0
�
loss/nce_loss/Slice_2Sliceloss/nce_loss/embedding_lookuploss/nce_loss/stack_2loss/nce_loss/Slice_2/size"/device:CPU:0*(
_output_shapes
:����������*
T0*
Index0
o
loss/nce_loss/Shape_5Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
|
loss/nce_loss/Slice_3/sizeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
�
loss/nce_loss/Slice_3Slice loss/nce_loss/embedding_lookup_1loss/nce_loss/Shape_5loss/nce_loss/Slice_3/size"/device:CPU:0*
_output_shapes
:@*
T0*
Index0
�
loss/nce_loss/MatMul_1MatMul
loss/embedloss/nce_loss/Slice_2"/device:CPU:0*(
_output_shapes
:����������*
T0*
transpose_a( *
transpose_b(
�
loss/nce_loss/add_1Addloss/nce_loss/MatMul_1loss/nce_loss/Slice_3"/device:CPU:0*
_output_shapes
:	�@*
T0
o
loss/nce_loss/LogLogloss/nce_loss/StopGradient_1"/device:CPU:0*
_output_shapes
:	�*
T0
w
loss/nce_loss/subSubloss/nce_loss/addloss/nce_loss/Log"/device:CPU:0*
_output_shapes
:	�*
T0
l
loss/nce_loss/Log_1Logloss/nce_loss/StopGradient_2"/device:CPU:0*
_output_shapes
:@*
T0
}
loss/nce_loss/sub_1Subloss/nce_loss/add_1loss/nce_loss/Log_1"/device:CPU:0*
_output_shapes
:	�@*
T0
l
loss/nce_loss/concat_3/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/concat_3ConcatV2loss/nce_loss/subloss/nce_loss/sub_1loss/nce_loss/concat_3/axis"/device:CPU:0*
_output_shapes
:	�A*
N*
T0*

Tidx0
}
loss/nce_loss/ones_like/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
q
loss/nce_loss/ones_like/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
loss/nce_loss/ones_likeFillloss/nce_loss/ones_like/Shapeloss/nce_loss/ones_like/Const"/device:CPU:0*
_output_shapes
:	�*
T0
k
loss/nce_loss/truediv/yConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
loss/nce_loss/truedivRealDivloss/nce_loss/ones_likeloss/nce_loss/truediv/y"/device:CPU:0*
_output_shapes
:	�*
T0
s
loss/nce_loss/zeros_like	ZerosLikeloss/nce_loss/sub_1"/device:CPU:0*
_output_shapes
:	�@*
T0
l
loss/nce_loss/concat_4/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/concat_4ConcatV2loss/nce_loss/truedivloss/nce_loss/zeros_likeloss/nce_loss/concat_4/axis"/device:CPU:0*
_output_shapes
:	�A*
N*
T0*

Tidx0
|
loss/sampled_losses/zeros_like	ZerosLikeloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
 loss/sampled_losses/GreaterEqualGreaterEqualloss/nce_loss/concat_3loss/sampled_losses/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/SelectSelect loss/sampled_losses/GreaterEqualloss/nce_loss/concat_3loss/sampled_losses/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
o
loss/sampled_losses/NegNegloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/Select_1Select loss/sampled_losses/GreaterEqualloss/sampled_losses/Negloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/mulMulloss/nce_loss/concat_3loss/nce_loss/concat_4"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/subSubloss/sampled_losses/Selectloss/sampled_losses/mul"/device:CPU:0*
_output_shapes
:	�A*
T0
u
loss/sampled_losses/ExpExploss/sampled_losses/Select_1"/device:CPU:0*
_output_shapes
:	�A*
T0
t
loss/sampled_losses/Log1pLog1ploss/sampled_losses/Exp"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_lossesAddloss/sampled_losses/subloss/sampled_losses/Log1p"/device:CPU:0*
_output_shapes
:	�A*
T0
j

loss/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
q
loss/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
s
loss/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
s
loss/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/strided_sliceStridedSlice
loss/Shapeloss/strided_slice/stackloss/strided_slice/stack_1loss/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 
]
loss/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
}

loss/stackPackloss/strided_sliceloss/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
c
loss/ones/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
o
	loss/onesFill
loss/stackloss/ones/Const"/device:CPU:0*'
_output_shapes
:���������*
T0
�
loss/MatMulMatMulloss/sampled_losses	loss/ones"/device:CPU:0*
_output_shapes
:	�*
T0*
transpose_a( *
transpose_b( 
t
loss/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
{
loss/ReshapeReshapeloss/MatMulloss/Reshape/shape"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
c

loss/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
x
	loss/lossMeanloss/Reshape
loss/Const"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
a
gradients/ShapeConst"/device:CPU:0*
_output_shapes
: *
valueB *
dtype0
c
gradients/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
h
gradients/FillFillgradients/Shapegradients/Const"/device:CPU:0*
_output_shapes
: *
T0

&gradients/loss/loss_grad/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
 gradients/loss/loss_grad/ReshapeReshapegradients/Fill&gradients/loss/loss_grad/Reshape/shape"/device:CPU:0*
_output_shapes
:*
Tshape0*
T0
�
'gradients/loss/loss_grad/Tile/multiplesConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
gradients/loss/loss_grad/TileTile gradients/loss/loss_grad/Reshape'gradients/loss/loss_grad/Tile/multiples"/device:CPU:0*
_output_shapes	
:�*
T0*

Tmultiples0
x
gradients/loss/loss_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
r
 gradients/loss/loss_grad/Shape_1Const"/device:CPU:0*
_output_shapes
: *
valueB *
dtype0
w
gradients/loss/loss_grad/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
gradients/loss/loss_grad/ProdProdgradients/loss/loss_grad/Shapegradients/loss/loss_grad/Const"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
y
 gradients/loss/loss_grad/Const_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
gradients/loss/loss_grad/Prod_1Prod gradients/loss/loss_grad/Shape_1 gradients/loss/loss_grad/Const_1"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
s
"gradients/loss/loss_grad/Maximum/yConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
 gradients/loss/loss_grad/MaximumMaximumgradients/loss/loss_grad/Prod_1"gradients/loss/loss_grad/Maximum/y"/device:CPU:0*
_output_shapes
: *
T0
�
!gradients/loss/loss_grad/floordivFloorDivgradients/loss/loss_grad/Prod gradients/loss/loss_grad/Maximum"/device:CPU:0*
_output_shapes
: *
T0
�
gradients/loss/loss_grad/CastCast!gradients/loss/loss_grad/floordiv"/device:CPU:0*
_output_shapes
: *

SrcT0*

DstT0
�
 gradients/loss/loss_grad/truedivRealDivgradients/loss/loss_grad/Tilegradients/loss/loss_grad/Cast"/device:CPU:0*
_output_shapes	
:�*
T0
�
!gradients/loss/Reshape_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
#gradients/loss/Reshape_grad/ReshapeReshape gradients/loss/loss_grad/truediv!gradients/loss/Reshape_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
!gradients/loss/MatMul_grad/MatMulMatMul#gradients/loss/Reshape_grad/Reshape	loss/ones"/device:CPU:0*(
_output_shapes
:����������*
T0*
transpose_a( *
transpose_b(
�
#gradients/loss/MatMul_grad/MatMul_1MatMulloss/sampled_losses#gradients/loss/Reshape_grad/Reshape"/device:CPU:0*
_output_shapes

:A*
T0*
transpose_a(*
transpose_b( 
�
+gradients/loss/MatMul_grad/tuple/group_depsNoOp"^gradients/loss/MatMul_grad/MatMul$^gradients/loss/MatMul_grad/MatMul_1"/device:CPU:0
�
3gradients/loss/MatMul_grad/tuple/control_dependencyIdentity!gradients/loss/MatMul_grad/MatMul,^gradients/loss/MatMul_grad/tuple/group_deps"/device:CPU:0*4
_class*
(&loc:@gradients/loss/MatMul_grad/MatMul*
_output_shapes
:	�A*
T0
�
5gradients/loss/MatMul_grad/tuple/control_dependency_1Identity#gradients/loss/MatMul_grad/MatMul_1,^gradients/loss/MatMul_grad/tuple/group_deps"/device:CPU:0*6
_class,
*(loc:@gradients/loss/MatMul_grad/MatMul_1*
_output_shapes

:A*
T0
�
(gradients/loss/sampled_losses_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
*gradients/loss/sampled_losses_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
8gradients/loss/sampled_losses_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/loss/sampled_losses_grad/Shape*gradients/loss/sampled_losses_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
&gradients/loss/sampled_losses_grad/SumSum3gradients/loss/MatMul_grad/tuple/control_dependency8gradients/loss/sampled_losses_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/sampled_losses_grad/ReshapeReshape&gradients/loss/sampled_losses_grad/Sum(gradients/loss/sampled_losses_grad/Shape"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
(gradients/loss/sampled_losses_grad/Sum_1Sum3gradients/loss/MatMul_grad/tuple/control_dependency:gradients/loss/sampled_losses_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
,gradients/loss/sampled_losses_grad/Reshape_1Reshape(gradients/loss/sampled_losses_grad/Sum_1*gradients/loss/sampled_losses_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
3gradients/loss/sampled_losses_grad/tuple/group_depsNoOp+^gradients/loss/sampled_losses_grad/Reshape-^gradients/loss/sampled_losses_grad/Reshape_1"/device:CPU:0
�
;gradients/loss/sampled_losses_grad/tuple/control_dependencyIdentity*gradients/loss/sampled_losses_grad/Reshape4^gradients/loss/sampled_losses_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/sampled_losses_grad/Reshape*
_output_shapes
:	�A*
T0
�
=gradients/loss/sampled_losses_grad/tuple/control_dependency_1Identity,gradients/loss/sampled_losses_grad/Reshape_14^gradients/loss/sampled_losses_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/sampled_losses_grad/Reshape_1*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/sub_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
.gradients/loss/sampled_losses/sub_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
<gradients/loss/sampled_losses/sub_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/loss/sampled_losses/sub_grad/Shape.gradients/loss/sampled_losses/sub_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
*gradients/loss/sampled_losses/sub_grad/SumSum;gradients/loss/sampled_losses_grad/tuple/control_dependency<gradients/loss/sampled_losses/sub_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
.gradients/loss/sampled_losses/sub_grad/ReshapeReshape*gradients/loss/sampled_losses/sub_grad/Sum,gradients/loss/sampled_losses/sub_grad/Shape"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
,gradients/loss/sampled_losses/sub_grad/Sum_1Sum;gradients/loss/sampled_losses_grad/tuple/control_dependency>gradients/loss/sampled_losses/sub_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/sampled_losses/sub_grad/NegNeg,gradients/loss/sampled_losses/sub_grad/Sum_1"/device:CPU:0*
_output_shapes
:*
T0
�
0gradients/loss/sampled_losses/sub_grad/Reshape_1Reshape*gradients/loss/sampled_losses/sub_grad/Neg.gradients/loss/sampled_losses/sub_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
7gradients/loss/sampled_losses/sub_grad/tuple/group_depsNoOp/^gradients/loss/sampled_losses/sub_grad/Reshape1^gradients/loss/sampled_losses/sub_grad/Reshape_1"/device:CPU:0
�
?gradients/loss/sampled_losses/sub_grad/tuple/control_dependencyIdentity.gradients/loss/sampled_losses/sub_grad/Reshape8^gradients/loss/sampled_losses/sub_grad/tuple/group_deps"/device:CPU:0*A
_class7
53loc:@gradients/loss/sampled_losses/sub_grad/Reshape*
_output_shapes
:	�A*
T0
�
Agradients/loss/sampled_losses/sub_grad/tuple/control_dependency_1Identity0gradients/loss/sampled_losses/sub_grad/Reshape_18^gradients/loss/sampled_losses/sub_grad/tuple/group_deps"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/sub_grad/Reshape_1*
_output_shapes
:	�A*
T0
�
.gradients/loss/sampled_losses/Log1p_grad/add/xConst>^gradients/loss/sampled_losses_grad/tuple/control_dependency_1"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
,gradients/loss/sampled_losses/Log1p_grad/addAdd.gradients/loss/sampled_losses/Log1p_grad/add/xloss/sampled_losses/Exp"/device:CPU:0*
_output_shapes
:	�A*
T0
�
3gradients/loss/sampled_losses/Log1p_grad/Reciprocal
Reciprocal,gradients/loss/sampled_losses/Log1p_grad/add"/device:CPU:0*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/Log1p_grad/mulMul=gradients/loss/sampled_losses_grad/tuple/control_dependency_13gradients/loss/sampled_losses/Log1p_grad/Reciprocal"/device:CPU:0*
_output_shapes
:	�A*
T0
�
4gradients/loss/sampled_losses/Select_grad/zeros_like	ZerosLikeloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
0gradients/loss/sampled_losses/Select_grad/SelectSelect loss/sampled_losses/GreaterEqual?gradients/loss/sampled_losses/sub_grad/tuple/control_dependency4gradients/loss/sampled_losses/Select_grad/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
�
2gradients/loss/sampled_losses/Select_grad/Select_1Select loss/sampled_losses/GreaterEqual4gradients/loss/sampled_losses/Select_grad/zeros_like?gradients/loss/sampled_losses/sub_grad/tuple/control_dependency"/device:CPU:0*
_output_shapes
:	�A*
T0
�
:gradients/loss/sampled_losses/Select_grad/tuple/group_depsNoOp1^gradients/loss/sampled_losses/Select_grad/Select3^gradients/loss/sampled_losses/Select_grad/Select_1"/device:CPU:0
�
Bgradients/loss/sampled_losses/Select_grad/tuple/control_dependencyIdentity0gradients/loss/sampled_losses/Select_grad/Select;^gradients/loss/sampled_losses/Select_grad/tuple/group_deps"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/Select_grad/Select*
_output_shapes
:	�A*
T0
�
Dgradients/loss/sampled_losses/Select_grad/tuple/control_dependency_1Identity2gradients/loss/sampled_losses/Select_grad/Select_1;^gradients/loss/sampled_losses/Select_grad/tuple/group_deps"/device:CPU:0*E
_class;
97loc:@gradients/loss/sampled_losses/Select_grad/Select_1*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/mul_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
.gradients/loss/sampled_losses/mul_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
<gradients/loss/sampled_losses/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/loss/sampled_losses/mul_grad/Shape.gradients/loss/sampled_losses/mul_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
*gradients/loss/sampled_losses/mul_grad/mulMulAgradients/loss/sampled_losses/sub_grad/tuple/control_dependency_1loss/nce_loss/concat_4"/device:CPU:0*
_output_shapes
:	�A*
T0
�
*gradients/loss/sampled_losses/mul_grad/SumSum*gradients/loss/sampled_losses/mul_grad/mul<gradients/loss/sampled_losses/mul_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
.gradients/loss/sampled_losses/mul_grad/ReshapeReshape*gradients/loss/sampled_losses/mul_grad/Sum,gradients/loss/sampled_losses/mul_grad/Shape"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
,gradients/loss/sampled_losses/mul_grad/mul_1Mulloss/nce_loss/concat_3Agradients/loss/sampled_losses/sub_grad/tuple/control_dependency_1"/device:CPU:0*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/mul_grad/Sum_1Sum,gradients/loss/sampled_losses/mul_grad/mul_1>gradients/loss/sampled_losses/mul_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
0gradients/loss/sampled_losses/mul_grad/Reshape_1Reshape,gradients/loss/sampled_losses/mul_grad/Sum_1.gradients/loss/sampled_losses/mul_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
7gradients/loss/sampled_losses/mul_grad/tuple/group_depsNoOp/^gradients/loss/sampled_losses/mul_grad/Reshape1^gradients/loss/sampled_losses/mul_grad/Reshape_1"/device:CPU:0
�
?gradients/loss/sampled_losses/mul_grad/tuple/control_dependencyIdentity.gradients/loss/sampled_losses/mul_grad/Reshape8^gradients/loss/sampled_losses/mul_grad/tuple/group_deps"/device:CPU:0*A
_class7
53loc:@gradients/loss/sampled_losses/mul_grad/Reshape*
_output_shapes
:	�A*
T0
�
Agradients/loss/sampled_losses/mul_grad/tuple/control_dependency_1Identity0gradients/loss/sampled_losses/mul_grad/Reshape_18^gradients/loss/sampled_losses/mul_grad/tuple/group_deps"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/mul_grad/Reshape_1*
_output_shapes
:	�A*
T0
�
*gradients/loss/sampled_losses/Exp_grad/mulMul,gradients/loss/sampled_losses/Log1p_grad/mulloss/sampled_losses/Exp"/device:CPU:0*
_output_shapes
:	�A*
T0
{
*gradients/loss/nce_loss/concat_4_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
)gradients/loss/nce_loss/concat_4_grad/modFloorModloss/nce_loss/concat_4/axis*gradients/loss/nce_loss/concat_4_grad/Rank"/device:CPU:0*
_output_shapes
: *
T0
�
+gradients/loss/nce_loss/concat_4_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
-gradients/loss/nce_loss/concat_4_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   @   *
dtype0
�
2gradients/loss/nce_loss/concat_4_grad/ConcatOffsetConcatOffset)gradients/loss/nce_loss/concat_4_grad/mod+gradients/loss/nce_loss/concat_4_grad/Shape-gradients/loss/nce_loss/concat_4_grad/Shape_1"/device:CPU:0* 
_output_shapes
::*
N
�
+gradients/loss/nce_loss/concat_4_grad/SliceSliceAgradients/loss/sampled_losses/mul_grad/tuple/control_dependency_12gradients/loss/nce_loss/concat_4_grad/ConcatOffset+gradients/loss/nce_loss/concat_4_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
T0*
Index0
�
-gradients/loss/nce_loss/concat_4_grad/Slice_1SliceAgradients/loss/sampled_losses/mul_grad/tuple/control_dependency_14gradients/loss/nce_loss/concat_4_grad/ConcatOffset:1-gradients/loss/nce_loss/concat_4_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�@*
T0*
Index0
�
6gradients/loss/nce_loss/concat_4_grad/tuple/group_depsNoOp,^gradients/loss/nce_loss/concat_4_grad/Slice.^gradients/loss/nce_loss/concat_4_grad/Slice_1"/device:CPU:0
�
>gradients/loss/nce_loss/concat_4_grad/tuple/control_dependencyIdentity+gradients/loss/nce_loss/concat_4_grad/Slice7^gradients/loss/nce_loss/concat_4_grad/tuple/group_deps"/device:CPU:0*>
_class4
20loc:@gradients/loss/nce_loss/concat_4_grad/Slice*
_output_shapes
:	�*
T0
�
@gradients/loss/nce_loss/concat_4_grad/tuple/control_dependency_1Identity-gradients/loss/nce_loss/concat_4_grad/Slice_17^gradients/loss/nce_loss/concat_4_grad/tuple/group_deps"/device:CPU:0*@
_class6
42loc:@gradients/loss/nce_loss/concat_4_grad/Slice_1*
_output_shapes
:	�@*
T0
�
6gradients/loss/sampled_losses/Select_1_grad/zeros_like	ZerosLikeloss/sampled_losses/Neg"/device:CPU:0*
_output_shapes
:	�A*
T0
�
2gradients/loss/sampled_losses/Select_1_grad/SelectSelect loss/sampled_losses/GreaterEqual*gradients/loss/sampled_losses/Exp_grad/mul6gradients/loss/sampled_losses/Select_1_grad/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
�
4gradients/loss/sampled_losses/Select_1_grad/Select_1Select loss/sampled_losses/GreaterEqual6gradients/loss/sampled_losses/Select_1_grad/zeros_like*gradients/loss/sampled_losses/Exp_grad/mul"/device:CPU:0*
_output_shapes
:	�A*
T0
�
<gradients/loss/sampled_losses/Select_1_grad/tuple/group_depsNoOp3^gradients/loss/sampled_losses/Select_1_grad/Select5^gradients/loss/sampled_losses/Select_1_grad/Select_1"/device:CPU:0
�
Dgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependencyIdentity2gradients/loss/sampled_losses/Select_1_grad/Select=^gradients/loss/sampled_losses/Select_1_grad/tuple/group_deps"/device:CPU:0*E
_class;
97loc:@gradients/loss/sampled_losses/Select_1_grad/Select*
_output_shapes
:	�A*
T0
�
Fgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependency_1Identity4gradients/loss/sampled_losses/Select_1_grad/Select_1=^gradients/loss/sampled_losses/Select_1_grad/tuple/group_deps"/device:CPU:0*G
_class=
;9loc:@gradients/loss/sampled_losses/Select_1_grad/Select_1*
_output_shapes
:	�A*
T0
�
*gradients/loss/sampled_losses/Neg_grad/NegNegDgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependency"/device:CPU:0*
_output_shapes
:	�A*
T0
�
gradients/AddNAddNBgradients/loss/sampled_losses/Select_grad/tuple/control_dependency?gradients/loss/sampled_losses/mul_grad/tuple/control_dependencyFgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependency_1*gradients/loss/sampled_losses/Neg_grad/Neg"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/Select_grad/Select*
N*
T0*
_output_shapes
:	�A
{
*gradients/loss/nce_loss/concat_3_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
)gradients/loss/nce_loss/concat_3_grad/modFloorModloss/nce_loss/concat_3/axis*gradients/loss/nce_loss/concat_3_grad/Rank"/device:CPU:0*
_output_shapes
: *
T0
�
+gradients/loss/nce_loss/concat_3_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
-gradients/loss/nce_loss/concat_3_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   @   *
dtype0
�
2gradients/loss/nce_loss/concat_3_grad/ConcatOffsetConcatOffset)gradients/loss/nce_loss/concat_3_grad/mod+gradients/loss/nce_loss/concat_3_grad/Shape-gradients/loss/nce_loss/concat_3_grad/Shape_1"/device:CPU:0* 
_output_shapes
::*
N
�
+gradients/loss/nce_loss/concat_3_grad/SliceSlicegradients/AddN2gradients/loss/nce_loss/concat_3_grad/ConcatOffset+gradients/loss/nce_loss/concat_3_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
T0*
Index0
�
-gradients/loss/nce_loss/concat_3_grad/Slice_1Slicegradients/AddN4gradients/loss/nce_loss/concat_3_grad/ConcatOffset:1-gradients/loss/nce_loss/concat_3_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�@*
T0*
Index0
�
6gradients/loss/nce_loss/concat_3_grad/tuple/group_depsNoOp,^gradients/loss/nce_loss/concat_3_grad/Slice.^gradients/loss/nce_loss/concat_3_grad/Slice_1"/device:CPU:0
�
>gradients/loss/nce_loss/concat_3_grad/tuple/control_dependencyIdentity+gradients/loss/nce_loss/concat_3_grad/Slice7^gradients/loss/nce_loss/concat_3_grad/tuple/group_deps"/device:CPU:0*>
_class4
20loc:@gradients/loss/nce_loss/concat_3_grad/Slice*
_output_shapes
:	�*
T0
�
@gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency_1Identity-gradients/loss/nce_loss/concat_3_grad/Slice_17^gradients/loss/nce_loss/concat_3_grad/tuple/group_deps"/device:CPU:0*@
_class6
42loc:@gradients/loss/nce_loss/concat_3_grad/Slice_1*
_output_shapes
:	�@*
T0
�
&gradients/loss/nce_loss/sub_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
(gradients/loss/nce_loss/sub_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
6gradients/loss/nce_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/loss/nce_loss/sub_grad/Shape(gradients/loss/nce_loss/sub_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
$gradients/loss/nce_loss/sub_grad/SumSum>gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency6gradients/loss/nce_loss/sub_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
(gradients/loss/nce_loss/sub_grad/ReshapeReshape$gradients/loss/nce_loss/sub_grad/Sum&gradients/loss/nce_loss/sub_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
&gradients/loss/nce_loss/sub_grad/Sum_1Sum>gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency8gradients/loss/nce_loss/sub_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
$gradients/loss/nce_loss/sub_grad/NegNeg&gradients/loss/nce_loss/sub_grad/Sum_1"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/sub_grad/Reshape_1Reshape$gradients/loss/nce_loss/sub_grad/Neg(gradients/loss/nce_loss/sub_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
1gradients/loss/nce_loss/sub_grad/tuple/group_depsNoOp)^gradients/loss/nce_loss/sub_grad/Reshape+^gradients/loss/nce_loss/sub_grad/Reshape_1"/device:CPU:0
�
9gradients/loss/nce_loss/sub_grad/tuple/control_dependencyIdentity(gradients/loss/nce_loss/sub_grad/Reshape2^gradients/loss/nce_loss/sub_grad/tuple/group_deps"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/sub_grad/Reshape*
_output_shapes
:	�*
T0
�
;gradients/loss/nce_loss/sub_grad/tuple/control_dependency_1Identity*gradients/loss/nce_loss/sub_grad/Reshape_12^gradients/loss/nce_loss/sub_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/sub_grad/Reshape_1*
_output_shapes
:	�*
T0
�
(gradients/loss/nce_loss/sub_1_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   @   *
dtype0
�
*gradients/loss/nce_loss/sub_1_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:@*
dtype0
�
8gradients/loss/nce_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/loss/nce_loss/sub_1_grad/Shape*gradients/loss/nce_loss/sub_1_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
&gradients/loss/nce_loss/sub_1_grad/SumSum@gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency_18gradients/loss/nce_loss/sub_1_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/sub_1_grad/ReshapeReshape&gradients/loss/nce_loss/sub_1_grad/Sum(gradients/loss/nce_loss/sub_1_grad/Shape"/device:CPU:0*
_output_shapes
:	�@*
Tshape0*
T0
�
(gradients/loss/nce_loss/sub_1_grad/Sum_1Sum@gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency_1:gradients/loss/nce_loss/sub_1_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
&gradients/loss/nce_loss/sub_1_grad/NegNeg(gradients/loss/nce_loss/sub_1_grad/Sum_1"/device:CPU:0*
_output_shapes
:*
T0
�
,gradients/loss/nce_loss/sub_1_grad/Reshape_1Reshape&gradients/loss/nce_loss/sub_1_grad/Neg*gradients/loss/nce_loss/sub_1_grad/Shape_1"/device:CPU:0*
_output_shapes
:@*
Tshape0*
T0
�
3gradients/loss/nce_loss/sub_1_grad/tuple/group_depsNoOp+^gradients/loss/nce_loss/sub_1_grad/Reshape-^gradients/loss/nce_loss/sub_1_grad/Reshape_1"/device:CPU:0
�
;gradients/loss/nce_loss/sub_1_grad/tuple/control_dependencyIdentity*gradients/loss/nce_loss/sub_1_grad/Reshape4^gradients/loss/nce_loss/sub_1_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/sub_1_grad/Reshape*
_output_shapes
:	�@*
T0
�
=gradients/loss/nce_loss/sub_1_grad/tuple/control_dependency_1Identity,gradients/loss/nce_loss/sub_1_grad/Reshape_14^gradients/loss/nce_loss/sub_1_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/sub_1_grad/Reshape_1*
_output_shapes
:@*
T0
�
&gradients/loss/nce_loss/add_grad/ShapeShapeloss/nce_loss/Reshape_4"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
(gradients/loss/nce_loss/add_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
6gradients/loss/nce_loss/add_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/loss/nce_loss/add_grad/Shape(gradients/loss/nce_loss/add_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
$gradients/loss/nce_loss/add_grad/SumSum9gradients/loss/nce_loss/sub_grad/tuple/control_dependency6gradients/loss/nce_loss/add_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
(gradients/loss/nce_loss/add_grad/ReshapeReshape$gradients/loss/nce_loss/add_grad/Sum&gradients/loss/nce_loss/add_grad/Shape"/device:CPU:0*'
_output_shapes
:���������*
Tshape0*
T0
�
&gradients/loss/nce_loss/add_grad/Sum_1Sum9gradients/loss/nce_loss/sub_grad/tuple/control_dependency8gradients/loss/nce_loss/add_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/add_grad/Reshape_1Reshape&gradients/loss/nce_loss/add_grad/Sum_1(gradients/loss/nce_loss/add_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
1gradients/loss/nce_loss/add_grad/tuple/group_depsNoOp)^gradients/loss/nce_loss/add_grad/Reshape+^gradients/loss/nce_loss/add_grad/Reshape_1"/device:CPU:0
�
9gradients/loss/nce_loss/add_grad/tuple/control_dependencyIdentity(gradients/loss/nce_loss/add_grad/Reshape2^gradients/loss/nce_loss/add_grad/tuple/group_deps"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/add_grad/Reshape*'
_output_shapes
:���������*
T0
�
;gradients/loss/nce_loss/add_grad/tuple/control_dependency_1Identity*gradients/loss/nce_loss/add_grad/Reshape_12^gradients/loss/nce_loss/add_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/add_grad/Reshape_1*
_output_shapes
:	�*
T0
�
(gradients/loss/nce_loss/add_1_grad/ShapeShapeloss/nce_loss/MatMul_1"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
*gradients/loss/nce_loss/add_1_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:@*
dtype0
�
8gradients/loss/nce_loss/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/loss/nce_loss/add_1_grad/Shape*gradients/loss/nce_loss/add_1_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
&gradients/loss/nce_loss/add_1_grad/SumSum;gradients/loss/nce_loss/sub_1_grad/tuple/control_dependency8gradients/loss/nce_loss/add_1_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/add_1_grad/ReshapeReshape&gradients/loss/nce_loss/add_1_grad/Sum(gradients/loss/nce_loss/add_1_grad/Shape"/device:CPU:0*(
_output_shapes
:����������*
Tshape0*
T0
�
(gradients/loss/nce_loss/add_1_grad/Sum_1Sum;gradients/loss/nce_loss/sub_1_grad/tuple/control_dependency:gradients/loss/nce_loss/add_1_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
,gradients/loss/nce_loss/add_1_grad/Reshape_1Reshape(gradients/loss/nce_loss/add_1_grad/Sum_1*gradients/loss/nce_loss/add_1_grad/Shape_1"/device:CPU:0*
_output_shapes
:@*
Tshape0*
T0
�
3gradients/loss/nce_loss/add_1_grad/tuple/group_depsNoOp+^gradients/loss/nce_loss/add_1_grad/Reshape-^gradients/loss/nce_loss/add_1_grad/Reshape_1"/device:CPU:0
�
;gradients/loss/nce_loss/add_1_grad/tuple/control_dependencyIdentity*gradients/loss/nce_loss/add_1_grad/Reshape4^gradients/loss/nce_loss/add_1_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/add_1_grad/Reshape*(
_output_shapes
:����������*
T0
�
=gradients/loss/nce_loss/add_1_grad/tuple/control_dependency_1Identity,gradients/loss/nce_loss/add_1_grad/Reshape_14^gradients/loss/nce_loss/add_1_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/add_1_grad/Reshape_1*
_output_shapes
:@*
T0
�
,gradients/loss/nce_loss/Reshape_4_grad/ShapeShapeloss/nce_loss/Reshape_3"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
.gradients/loss/nce_loss/Reshape_4_grad/ReshapeReshape9gradients/loss/nce_loss/add_grad/tuple/control_dependency,gradients/loss/nce_loss/Reshape_4_grad/Shape"/device:CPU:0*#
_output_shapes
:���������*
Tshape0*
T0
�
,gradients/loss/nce_loss/Reshape_5_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
.gradients/loss/nce_loss/Reshape_5_grad/ReshapeReshape;gradients/loss/nce_loss/add_grad/tuple/control_dependency_1,gradients/loss/nce_loss/Reshape_5_grad/Shape"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
�
,gradients/loss/nce_loss/MatMul_1_grad/MatMulMatMul;gradients/loss/nce_loss/add_1_grad/tuple/control_dependencyloss/nce_loss/Slice_2"/device:CPU:0* 
_output_shapes
:
��*
T0*
transpose_a( *
transpose_b( 
�
.gradients/loss/nce_loss/MatMul_1_grad/MatMul_1MatMul;gradients/loss/nce_loss/add_1_grad/tuple/control_dependency
loss/embed"/device:CPU:0*(
_output_shapes
:����������*
T0*
transpose_a(*
transpose_b( 
�
6gradients/loss/nce_loss/MatMul_1_grad/tuple/group_depsNoOp-^gradients/loss/nce_loss/MatMul_1_grad/MatMul/^gradients/loss/nce_loss/MatMul_1_grad/MatMul_1"/device:CPU:0
�
>gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependencyIdentity,gradients/loss/nce_loss/MatMul_1_grad/MatMul7^gradients/loss/nce_loss/MatMul_1_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/MatMul_1_grad/MatMul* 
_output_shapes
:
��*
T0
�
@gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependency_1Identity.gradients/loss/nce_loss/MatMul_1_grad/MatMul_17^gradients/loss/nce_loss/MatMul_1_grad/tuple/group_deps"/device:CPU:0*A
_class7
53loc:@gradients/loss/nce_loss/MatMul_1_grad/MatMul_1*(
_output_shapes
:����������*
T0
z
)gradients/loss/nce_loss/Slice_3_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_3_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:@*
dtype0
}
,gradients/loss/nce_loss/Slice_3_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_3_grad/stackPack)gradients/loss/nce_loss/Slice_3_grad/Rank,gradients/loss/nce_loss/Slice_3_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
,gradients/loss/nce_loss/Slice_3_grad/ReshapeReshapeloss/nce_loss/Shape_5*gradients/loss/nce_loss/Slice_3_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
,gradients/loss/nce_loss/Slice_3_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
(gradients/loss/nce_loss/Slice_3_grad/subSub,gradients/loss/nce_loss/Slice_3_grad/Shape_1*gradients/loss/nce_loss/Slice_3_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/Slice_3_grad/sub_1Sub(gradients/loss/nce_loss/Slice_3_grad/subloss/nce_loss/Shape_5"/device:CPU:0*
_output_shapes
:*
T0
�
.gradients/loss/nce_loss/Slice_3_grad/Reshape_1Reshape*gradients/loss/nce_loss/Slice_3_grad/sub_1*gradients/loss/nce_loss/Slice_3_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
0gradients/loss/nce_loss/Slice_3_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
+gradients/loss/nce_loss/Slice_3_grad/concatConcatV2,gradients/loss/nce_loss/Slice_3_grad/Reshape.gradients/loss/nce_loss/Slice_3_grad/Reshape_10gradients/loss/nce_loss/Slice_3_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
(gradients/loss/nce_loss/Slice_3_grad/PadPad=gradients/loss/nce_loss/add_1_grad/tuple/control_dependency_1+gradients/loss/nce_loss/Slice_3_grad/concat"/device:CPU:0*
_output_shapes	
:�*
T0*
	Tpaddings0
�
,gradients/loss/nce_loss/Reshape_3_grad/ShapeShapeloss/nce_loss/MatMul"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
.gradients/loss/nce_loss/Reshape_3_grad/ReshapeReshape.gradients/loss/nce_loss/Reshape_4_grad/Reshape,gradients/loss/nce_loss/Reshape_3_grad/Shape"/device:CPU:0*'
_output_shapes
:���������*
Tshape0*
T0
z
)gradients/loss/nce_loss/Slice_1_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_1_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
}
,gradients/loss/nce_loss/Slice_1_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_1_grad/stackPack)gradients/loss/nce_loss/Slice_1_grad/Rank,gradients/loss/nce_loss/Slice_1_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
,gradients/loss/nce_loss/Slice_1_grad/ReshapeReshapeloss/nce_loss/Slice_1/begin*gradients/loss/nce_loss/Slice_1_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
,gradients/loss/nce_loss/Slice_1_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
(gradients/loss/nce_loss/Slice_1_grad/subSub,gradients/loss/nce_loss/Slice_1_grad/Shape_1*gradients/loss/nce_loss/Slice_1_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/Slice_1_grad/sub_1Sub(gradients/loss/nce_loss/Slice_1_grad/subloss/nce_loss/Slice_1/begin"/device:CPU:0*
_output_shapes
:*
T0
�
.gradients/loss/nce_loss/Slice_1_grad/Reshape_1Reshape*gradients/loss/nce_loss/Slice_1_grad/sub_1*gradients/loss/nce_loss/Slice_1_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
0gradients/loss/nce_loss/Slice_1_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
+gradients/loss/nce_loss/Slice_1_grad/concatConcatV2,gradients/loss/nce_loss/Slice_1_grad/Reshape.gradients/loss/nce_loss/Slice_1_grad/Reshape_10gradients/loss/nce_loss/Slice_1_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
(gradients/loss/nce_loss/Slice_1_grad/PadPad.gradients/loss/nce_loss/Reshape_5_grad/Reshape+gradients/loss/nce_loss/Slice_1_grad/concat"/device:CPU:0*
_output_shapes	
:�*
T0*
	Tpaddings0
z
)gradients/loss/nce_loss/Slice_2_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_2_grad/ShapeShapeloss/nce_loss/Slice_2"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
}
,gradients/loss/nce_loss/Slice_2_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_2_grad/stackPack)gradients/loss/nce_loss/Slice_2_grad/Rank,gradients/loss/nce_loss/Slice_2_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
,gradients/loss/nce_loss/Slice_2_grad/ReshapeReshapeloss/nce_loss/stack_2*gradients/loss/nce_loss/Slice_2_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
,gradients/loss/nce_loss/Slice_2_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   �   *
dtype0
�
(gradients/loss/nce_loss/Slice_2_grad/subSub,gradients/loss/nce_loss/Slice_2_grad/Shape_1*gradients/loss/nce_loss/Slice_2_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/Slice_2_grad/sub_1Sub(gradients/loss/nce_loss/Slice_2_grad/subloss/nce_loss/stack_2"/device:CPU:0*
_output_shapes
:*
T0
�
.gradients/loss/nce_loss/Slice_2_grad/Reshape_1Reshape*gradients/loss/nce_loss/Slice_2_grad/sub_1*gradients/loss/nce_loss/Slice_2_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
0gradients/loss/nce_loss/Slice_2_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
+gradients/loss/nce_loss/Slice_2_grad/concatConcatV2,gradients/loss/nce_loss/Slice_2_grad/Reshape.gradients/loss/nce_loss/Slice_2_grad/Reshape_10gradients/loss/nce_loss/Slice_2_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
(gradients/loss/nce_loss/Slice_2_grad/PadPad@gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependency_1+gradients/loss/nce_loss/Slice_2_grad/concat"/device:CPU:0* 
_output_shapes
:
��*
T0*
	Tpaddings0
�
*gradients/loss/nce_loss/MatMul_grad/MatMulMatMul.gradients/loss/nce_loss/Reshape_3_grad/Reshapeloss/nce_loss/ones"/device:CPU:0*0
_output_shapes
:������������������*
T0*
transpose_a( *
transpose_b(
�
,gradients/loss/nce_loss/MatMul_grad/MatMul_1MatMulloss/nce_loss/Reshape_2.gradients/loss/nce_loss/Reshape_3_grad/Reshape"/device:CPU:0*'
_output_shapes
:���������*
T0*
transpose_a(*
transpose_b( 
�
4gradients/loss/nce_loss/MatMul_grad/tuple/group_depsNoOp+^gradients/loss/nce_loss/MatMul_grad/MatMul-^gradients/loss/nce_loss/MatMul_grad/MatMul_1"/device:CPU:0
�
<gradients/loss/nce_loss/MatMul_grad/tuple/control_dependencyIdentity*gradients/loss/nce_loss/MatMul_grad/MatMul5^gradients/loss/nce_loss/MatMul_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/MatMul_grad/MatMul*0
_output_shapes
:������������������*
T0
�
>gradients/loss/nce_loss/MatMul_grad/tuple/control_dependency_1Identity,gradients/loss/nce_loss/MatMul_grad/MatMul_15^gradients/loss/nce_loss/MatMul_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/MatMul_grad/MatMul_1*'
_output_shapes
:���������*
T0
�
gradients/AddN_1AddN(gradients/loss/nce_loss/Slice_3_grad/Pad(gradients/loss/nce_loss/Slice_1_grad/Pad"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/Slice_3_grad/Pad*
N*
T0*
_output_shapes	
:�
�
5gradients/loss/nce_loss/embedding_lookup_1_grad/ShapeConst"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes
:*
valueB:І*
dtype0
�
4gradients/loss/nce_loss/embedding_lookup_1_grad/SizeConst"/device:CPU:0*
_output_shapes
: *
value
B :�*
dtype0
�
>gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
:gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims
ExpandDims4gradients/loss/nce_loss/embedding_lookup_1_grad/Size>gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims/dim"/device:CPU:0*
_output_shapes
:*
T0*

Tdim0
�
Cgradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
Egradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
Egradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
=gradients/loss/nce_loss/embedding_lookup_1_grad/strided_sliceStridedSlice5gradients/loss/nce_loss/embedding_lookup_1_grad/ShapeCgradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stackEgradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_1Egradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask *
end_mask*
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 
�
;gradients/loss/nce_loss/embedding_lookup_1_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
6gradients/loss/nce_loss/embedding_lookup_1_grad/concatConcatV2:gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims=gradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice;gradients/loss/nce_loss/embedding_lookup_1_grad/concat/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
7gradients/loss/nce_loss/embedding_lookup_1_grad/ReshapeReshapegradients/AddN_16gradients/loss/nce_loss/embedding_lookup_1_grad/concat"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
�
9gradients/loss/nce_loss/embedding_lookup_1_grad/Reshape_1Reshapeloss/nce_loss/concat:gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0	
�
'gradients/loss/nce_loss/ones_grad/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB"       *
dtype0
�
%gradients/loss/nce_loss/ones_grad/SumSum>gradients/loss/nce_loss/MatMul_grad/tuple/control_dependency_1'gradients/loss/nce_loss/ones_grad/Const"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
�
,gradients/loss/nce_loss/Reshape_2_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*!
valueB"�      �   *
dtype0
�
.gradients/loss/nce_loss/Reshape_2_grad/ReshapeReshape<gradients/loss/nce_loss/MatMul_grad/tuple/control_dependency,gradients/loss/nce_loss/Reshape_2_grad/Shape"/device:CPU:0*$
_output_shapes
:��*
Tshape0*
T0
�
&gradients/loss/nce_loss/Mul_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*!
valueB"�      �   *
dtype0
�
(gradients/loss/nce_loss/Mul_grad/Shape_1Shapeloss/nce_loss/Reshape_1"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
6gradients/loss/nce_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/loss/nce_loss/Mul_grad/Shape(gradients/loss/nce_loss/Mul_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
$gradients/loss/nce_loss/Mul_grad/mulMul.gradients/loss/nce_loss/Reshape_2_grad/Reshapeloss/nce_loss/Reshape_1"/device:CPU:0*$
_output_shapes
:��*
T0
�
$gradients/loss/nce_loss/Mul_grad/SumSum$gradients/loss/nce_loss/Mul_grad/mul6gradients/loss/nce_loss/Mul_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
(gradients/loss/nce_loss/Mul_grad/ReshapeReshape$gradients/loss/nce_loss/Mul_grad/Sum&gradients/loss/nce_loss/Mul_grad/Shape"/device:CPU:0*$
_output_shapes
:��*
Tshape0*
T0
�
&gradients/loss/nce_loss/Mul_grad/mul_1Mulloss/nce_loss/ExpandDims.gradients/loss/nce_loss/Reshape_2_grad/Reshape"/device:CPU:0*$
_output_shapes
:��*
T0
�
&gradients/loss/nce_loss/Mul_grad/Sum_1Sum&gradients/loss/nce_loss/Mul_grad/mul_18gradients/loss/nce_loss/Mul_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/Mul_grad/Reshape_1Reshape&gradients/loss/nce_loss/Mul_grad/Sum_1(gradients/loss/nce_loss/Mul_grad/Shape_1"/device:CPU:0*4
_output_shapes"
 :������������������*
Tshape0*
T0
�
1gradients/loss/nce_loss/Mul_grad/tuple/group_depsNoOp)^gradients/loss/nce_loss/Mul_grad/Reshape+^gradients/loss/nce_loss/Mul_grad/Reshape_1"/device:CPU:0
�
9gradients/loss/nce_loss/Mul_grad/tuple/control_dependencyIdentity(gradients/loss/nce_loss/Mul_grad/Reshape2^gradients/loss/nce_loss/Mul_grad/tuple/group_deps"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/Mul_grad/Reshape*$
_output_shapes
:��*
T0
�
;gradients/loss/nce_loss/Mul_grad/tuple/control_dependency_1Identity*gradients/loss/nce_loss/Mul_grad/Reshape_12^gradients/loss/nce_loss/Mul_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/Mul_grad/Reshape_1*4
_output_shapes"
 :������������������*
T0
�
-gradients/loss/nce_loss/ExpandDims_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   �   *
dtype0
�
/gradients/loss/nce_loss/ExpandDims_grad/ReshapeReshape9gradients/loss/nce_loss/Mul_grad/tuple/control_dependency-gradients/loss/nce_loss/ExpandDims_grad/Shape"/device:CPU:0* 
_output_shapes
:
��*
Tshape0*
T0
�
,gradients/loss/nce_loss/Reshape_1_grad/ShapeShapeloss/nce_loss/Slice"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
.gradients/loss/nce_loss/Reshape_1_grad/ReshapeReshape;gradients/loss/nce_loss/Mul_grad/tuple/control_dependency_1,gradients/loss/nce_loss/Reshape_1_grad/Shape"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
�
gradients/AddN_2AddN>gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependency/gradients/loss/nce_loss/ExpandDims_grad/Reshape"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/MatMul_1_grad/MatMul*
N*
T0* 
_output_shapes
:
��
�
gradients/loss/embed_grad/ShapeConst"/device:CPU:0*%
_class
loc:@embed/embed_matrix*
_output_shapes
:*
valueB"P�  �   *
dtype0
p
gradients/loss/embed_grad/SizeConst"/device:CPU:0*
_output_shapes
: *
value
B :�*
dtype0
y
(gradients/loss/embed_grad/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
$gradients/loss/embed_grad/ExpandDims
ExpandDimsgradients/loss/embed_grad/Size(gradients/loss/embed_grad/ExpandDims/dim"/device:CPU:0*
_output_shapes
:*
T0*

Tdim0
�
-gradients/loss/embed_grad/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
/gradients/loss/embed_grad/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
/gradients/loss/embed_grad/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
'gradients/loss/embed_grad/strided_sliceStridedSlicegradients/loss/embed_grad/Shape-gradients/loss/embed_grad/strided_slice/stack/gradients/loss/embed_grad/strided_slice/stack_1/gradients/loss/embed_grad/strided_slice/stack_2"/device:CPU:0*
_output_shapes
:*
shrink_axis_mask *
end_mask*
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 
v
%gradients/loss/embed_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
 gradients/loss/embed_grad/concatConcatV2$gradients/loss/embed_grad/ExpandDims'gradients/loss/embed_grad/strided_slice%gradients/loss/embed_grad/concat/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
!gradients/loss/embed_grad/ReshapeReshapegradients/AddN_2 gradients/loss/embed_grad/concat"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
�
#gradients/loss/embed_grad/Reshape_1Reshapedata/center_words$gradients/loss/embed_grad/ExpandDims"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
x
'gradients/loss/nce_loss/Slice_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
(gradients/loss/nce_loss/Slice_grad/ShapeShapeloss/nce_loss/Slice"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
{
*gradients/loss/nce_loss/Slice_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
(gradients/loss/nce_loss/Slice_grad/stackPack'gradients/loss/nce_loss/Slice_grad/Rank*gradients/loss/nce_loss/Slice_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
*gradients/loss/nce_loss/Slice_grad/ReshapeReshapeloss/nce_loss/Slice/begin(gradients/loss/nce_loss/Slice_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
*gradients/loss/nce_loss/Slice_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   �   *
dtype0
�
&gradients/loss/nce_loss/Slice_grad/subSub*gradients/loss/nce_loss/Slice_grad/Shape_1(gradients/loss/nce_loss/Slice_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
(gradients/loss/nce_loss/Slice_grad/sub_1Sub&gradients/loss/nce_loss/Slice_grad/subloss/nce_loss/Slice/begin"/device:CPU:0*
_output_shapes
:*
T0
�
,gradients/loss/nce_loss/Slice_grad/Reshape_1Reshape(gradients/loss/nce_loss/Slice_grad/sub_1(gradients/loss/nce_loss/Slice_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0

.gradients/loss/nce_loss/Slice_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
)gradients/loss/nce_loss/Slice_grad/concatConcatV2*gradients/loss/nce_loss/Slice_grad/Reshape,gradients/loss/nce_loss/Slice_grad/Reshape_1.gradients/loss/nce_loss/Slice_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
&gradients/loss/nce_loss/Slice_grad/PadPad.gradients/loss/nce_loss/Reshape_1_grad/Reshape)gradients/loss/nce_loss/Slice_grad/concat"/device:CPU:0* 
_output_shapes
:
��*
T0*
	Tpaddings0
�
gradients/AddN_3AddN(gradients/loss/nce_loss/Slice_2_grad/Pad&gradients/loss/nce_loss/Slice_grad/Pad"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/Slice_2_grad/Pad*
N*
T0* 
_output_shapes
:
��
�
3gradients/loss/nce_loss/embedding_lookup_grad/ShapeConst"/device:CPU:0*"
_class
loc:@loss/nce_weight*
_output_shapes
:*
valueB"P�  �   *
dtype0
�
2gradients/loss/nce_loss/embedding_lookup_grad/SizeConst"/device:CPU:0*
_output_shapes
: *
value
B :�*
dtype0
�
<gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
8gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims
ExpandDims2gradients/loss/nce_loss/embedding_lookup_grad/Size<gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims/dim"/device:CPU:0*
_output_shapes
:*
T0*

Tdim0
�
Agradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
Cgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
Cgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
;gradients/loss/nce_loss/embedding_lookup_grad/strided_sliceStridedSlice3gradients/loss/nce_loss/embedding_lookup_grad/ShapeAgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stackCgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_1Cgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_2"/device:CPU:0*
_output_shapes
:*
shrink_axis_mask *
end_mask*
ellipsis_mask *
T0*

begin_mask *
Index0*
new_axis_mask 
�
9gradients/loss/nce_loss/embedding_lookup_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
4gradients/loss/nce_loss/embedding_lookup_grad/concatConcatV28gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims;gradients/loss/nce_loss/embedding_lookup_grad/strided_slice9gradients/loss/nce_loss/embedding_lookup_grad/concat/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
5gradients/loss/nce_loss/embedding_lookup_grad/ReshapeReshapegradients/AddN_34gradients/loss/nce_loss/embedding_lookup_grad/concat"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
�
7gradients/loss/nce_loss/embedding_lookup_grad/Reshape_1Reshapeloss/nce_loss/concat8gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0	
q
GradientDescent/learning_rateConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
-GradientDescent/update_embed/embed_matrix/mulMul!gradients/loss/embed_grad/ReshapeGradientDescent/learning_rate"/device:CPU:0*%
_class
loc:@embed/embed_matrix*0
_output_shapes
:������������������*
T0
�
4GradientDescent/update_embed/embed_matrix/ScatterSub
ScatterSubembed/embed_matrix#gradients/loss/embed_grad/Reshape_1-GradientDescent/update_embed/embed_matrix/mul"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0*
Tindices0*
use_locking( 
�
*GradientDescent/update_loss/nce_weight/mulMul5gradients/loss/nce_loss/embedding_lookup_grad/ReshapeGradientDescent/learning_rate"/device:CPU:0*"
_class
loc:@loss/nce_weight*0
_output_shapes
:������������������*
T0
�
1GradientDescent/update_loss/nce_weight/ScatterSub
ScatterSubloss/nce_weight7gradients/loss/nce_loss/embedding_lookup_grad/Reshape_1*GradientDescent/update_loss/nce_weight/mul"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0*
Tindices0	*
use_locking( 
�
(GradientDescent/update_loss/nce_bias/mulMul7gradients/loss/nce_loss/embedding_lookup_1_grad/ReshapeGradientDescent/learning_rate"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes	
:�*
T0
�
/GradientDescent/update_loss/nce_bias/ScatterSub
ScatterSubloss/nce_bias9gradients/loss/nce_loss/embedding_lookup_1_grad/Reshape_1(GradientDescent/update_loss/nce_bias/mul"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0*
Tindices0	*
use_locking( 
�
GradientDescent/updateNoOp5^GradientDescent/update_embed/embed_matrix/ScatterSub2^GradientDescent/update_loss/nce_weight/ScatterSub0^GradientDescent/update_loss/nce_bias/ScatterSub"/device:CPU:0
�
GradientDescent/valueConst^GradientDescent/update*
_class
loc:@global_step*
_output_shapes
: *
value	B :*
dtype0
�
GradientDescent	AssignAddglobal_stepGradientDescent/value*
_class
loc:@global_step*
_output_shapes
: *
T0*
use_locking( 
b
summaries/loss/tagsConst*
_output_shapes
: *
valueB Bsummaries/loss*
dtype0
`
summaries/lossScalarSummarysummaries/loss/tags	loss/loss*
_output_shapes
: *
T0
u
summaries/histogram_loss/tagConst*
_output_shapes
: *)
value B Bsummaries/histogram_loss*
dtype0
v
summaries/histogram_lossHistogramSummarysummaries/histogram_loss/tag	loss/loss*
_output_shapes
: *
T0
w
summaries/Merge/MergeSummaryMergeSummarysummaries/losssummaries/histogram_loss*
_output_shapes
: *
N
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save/SaveV2/tensor_namesConst*
_output_shapes
:*T
valueKBIBembed/embed_matrixBglobal_stepBloss/nce_biasBloss/nce_weight*
dtype0
k
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B B B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesembed/embed_matrixglobal_steploss/nce_biasloss/nce_weight*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*'
valueBBembed/embed_matrix*
dtype0
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
�
save/AssignAssignembed/embed_matrixsave/RestoreV2"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:* 
valueBBglobal_step*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1Assignglobal_stepsave/RestoreV2_1*
_class
loc:@global_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
save/RestoreV2_2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*"
valueBBloss/nce_bias*
dtype0
y
!save/RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
�
save/Assign_2Assignloss/nce_biassave/RestoreV2_2"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0*
validate_shape(*
use_locking(
�
save/RestoreV2_3/tensor_namesConst"/device:CPU:0*
_output_shapes
:*$
valueBBloss/nce_weight*
dtype0
y
!save/RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
�
save/Assign_3Assignloss/nce_weightsave/RestoreV2_3"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
-
save/restore_all/NoOpNoOp^save/Assign_1
\
save/restore_all/NoOp_1NoOp^save/Assign^save/Assign_2^save/Assign_3"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
&
	init/NoOpNoOp^global_step/Assign
n
init/NoOp_1NoOp^embed/embed_matrix/Assign^loss/nce_weight/Assign^loss/nce_bias/Assign"/device:CPU:0
&
initNoOp
^init/NoOp^init/NoOp_1"B�_=M     :��-	 ~�{Y�AJ��
�#�#
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
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignAdd
ref"T�

value"T

output_ref"T�"
Ttype:
2	"
use_lockingbool( 
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
+
Exp
x"T
y"T"
Ttype:	
2
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
�
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
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
+
Log
x"T
y"T"
Ttype:	
2
-
Log1p
x"T
y"T"
Ttype:	
2
�
LogUniformCandidateSampler
true_classes	
sampled_candidates	
true_expected_count
sampled_expected_count"
num_trueint(0"
num_sampledint(0"
uniquebool"
	range_maxint(0"
seedint "
seed2int 
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
8
MergeSummary
inputs*N
summary"
Nint(0
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
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
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
�

ScatterSub
ref"T�
indices"Tindices
updates"T

output_ref"T�"
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
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
2
StopGradient

input"T
output"T"	
Ttype
�
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
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
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
Ttype*1.1.02v1.1.0-rc0-61-g1ec6ed5��
[
global_step/initial_valueConst*
_output_shapes
: *
value	B : *
dtype0
o
global_step
VariableV2*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
_class
loc:@global_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0
\
data/center_wordsPlaceholder*
_output_shapes	
:�*
shape:�*
dtype0
d
data/target_wordsPlaceholder*
_output_shapes
:	�*
shape:	�*
dtype0
z
embed/random_uniform/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"P�  �   *
dtype0
l
embed/random_uniform/minConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  ��*
dtype0
l
embed/random_uniform/maxConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
"embed/random_uniform/RandomUniformRandomUniformembed/random_uniform/shape"/device:CPU:0*
seed2 *!
_output_shapes
:І�*
T0*
dtype0*

seed 
�
embed/random_uniform/subSubembed/random_uniform/maxembed/random_uniform/min"/device:CPU:0*
_output_shapes
: *
T0
�
embed/random_uniform/mulMul"embed/random_uniform/RandomUniformembed/random_uniform/sub"/device:CPU:0*!
_output_shapes
:І�*
T0
�
embed/random_uniformAddembed/random_uniform/mulembed/random_uniform/min"/device:CPU:0*!
_output_shapes
:І�*
T0
�
embed/embed_matrix
VariableV2"/device:CPU:0*!
_output_shapes
:І�*
shape:І�*
dtype0*
shared_name *
	container 
�
embed/embed_matrix/AssignAssignembed/embed_matrixembed/random_uniform"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
�
embed/embed_matrix/readIdentityembed/embed_matrix"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0
�

loss/embedGatherembed/embed_matrix/readdata/center_words"/device:CPU:0*%
_class
loc:@embed/embed_matrix* 
_output_shapes
:
��*
Tparams0*
validate_indices(*
Tindices0
{
loss/truncated_normal/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"P�  �   *
dtype0
n
loss/truncated_normal/meanConst"/device:CPU:0*
_output_shapes
: *
valueB
 *    *
dtype0
p
loss/truncated_normal/stddevConst"/device:CPU:0*
_output_shapes
: *
valueB
 *��=*
dtype0
�
%loss/truncated_normal/TruncatedNormalTruncatedNormalloss/truncated_normal/shape"/device:CPU:0*
seed2 *!
_output_shapes
:І�*
T0*
dtype0*

seed 
�
loss/truncated_normal/mulMul%loss/truncated_normal/TruncatedNormalloss/truncated_normal/stddev"/device:CPU:0*!
_output_shapes
:І�*
T0
�
loss/truncated_normalAddloss/truncated_normal/mulloss/truncated_normal/mean"/device:CPU:0*!
_output_shapes
:І�*
T0
�
loss/nce_weight
VariableV2"/device:CPU:0*!
_output_shapes
:І�*
shape:І�*
dtype0*
shared_name *
	container 
�
loss/nce_weight/AssignAssignloss/nce_weightloss/truncated_normal"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
�
loss/nce_weight/readIdentityloss/nce_weight"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0
j

loss/zerosConst"/device:CPU:0*
_output_shapes

:І*
valueBІ*    *
dtype0
�
loss/nce_bias
VariableV2"/device:CPU:0*
_output_shapes

:І*
shape:І*
dtype0*
shared_name *
	container 
�
loss/nce_bias/AssignAssignloss/nce_bias
loss/zeros"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0*
validate_shape(*
use_locking(
�
loss/nce_bias/readIdentityloss/nce_bias"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0
u
loss/nce_loss/CastCastdata/target_words"/device:CPU:0*
_output_shapes
:	�*

SrcT0*

DstT0	
}
loss/nce_loss/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
�
loss/nce_loss/ReshapeReshapeloss/nce_loss/Castloss/nce_loss/Reshape/shape"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0	
�
(loss/nce_loss/LogUniformCandidateSamplerLogUniformCandidateSamplerloss/nce_loss/Cast"/device:CPU:0*+
_output_shapes
:@:	�:@*
num_true*
unique(*
	range_maxІ*
seed2 *
num_sampled@*

seed 
�
loss/nce_loss/StopGradientStopGradient(loss/nce_loss/LogUniformCandidateSampler"/device:CPU:0*
_output_shapes
:@*
T0	
�
loss/nce_loss/StopGradient_1StopGradient*loss/nce_loss/LogUniformCandidateSampler:1"/device:CPU:0*
_output_shapes
:	�*
T0
�
loss/nce_loss/StopGradient_2StopGradient*loss/nce_loss/LogUniformCandidateSampler:2"/device:CPU:0*
_output_shapes
:@*
T0
j
loss/nce_loss/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/concatConcatV2loss/nce_loss/Reshapeloss/nce_loss/StopGradientloss/nce_loss/concat/axis"/device:CPU:0*
_output_shapes	
:�*
N*
T0	*

Tidx0
�
loss/nce_loss/embedding_lookupGatherloss/nce_weight/readloss/nce_loss/concat"/device:CPU:0*"
_class
loc:@loss/nce_weight* 
_output_shapes
:
��*
Tparams0*
validate_indices(*
Tindices0	
�
 loss/nce_loss/embedding_lookup_1Gatherloss/nce_bias/readloss/nce_loss/concat"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes	
:�*
Tparams0*
validate_indices(*
Tindices0	
m
loss/nce_loss/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
z
!loss/nce_loss/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
|
#loss/nce_loss/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
|
#loss/nce_loss/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_sliceStridedSliceloss/nce_loss/Shape!loss/nce_loss/strided_slice/stack#loss/nce_loss/strided_slice/stack_1#loss/nce_loss/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 
o
loss/nce_loss/stack/1Const"/device:CPU:0*
_output_shapes
: *
valueB :
���������*
dtype0
�
loss/nce_loss/stackPackloss/nce_loss/strided_sliceloss/nce_loss/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
y
loss/nce_loss/Slice/beginConst"/device:CPU:0*
_output_shapes
:*
valueB"        *
dtype0
�
loss/nce_loss/SliceSliceloss/nce_loss/embedding_lookuploss/nce_loss/Slice/beginloss/nce_loss/stack"/device:CPU:0*0
_output_shapes
:������������������*
T0*
Index0
o
loss/nce_loss/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
t
loss/nce_loss/Slice_1/beginConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
loss/nce_loss/Slice_1Slice loss/nce_loss/embedding_lookup_1loss/nce_loss/Slice_1/beginloss/nce_loss/Shape_1"/device:CPU:0*
_output_shapes	
:�*
T0*
Index0
w
loss/nce_loss/Shape_2Shapeloss/nce_loss/Slice"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
|
#loss/nce_loss/strided_slice_1/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_1/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_slice_1StridedSliceloss/nce_loss/Shape_2#loss/nce_loss/strided_slice_1/stack%loss/nce_loss/strided_slice_1/stack_1%loss/nce_loss/strided_slice_1/stack_2"/device:CPU:0*
_output_shapes
:*
shrink_axis_mask *
end_mask *
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 

loss/nce_loss/concat_1/values_0Const"/device:CPU:0*
_output_shapes
:*
valueB"����   *
dtype0
l
loss/nce_loss/concat_1/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/concat_1ConcatV2loss/nce_loss/concat_1/values_0loss/nce_loss/strided_slice_1loss/nce_loss/concat_1/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
m
loss/nce_loss/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/ExpandDims
ExpandDims
loss/embedloss/nce_loss/ExpandDims/dim"/device:CPU:0*$
_output_shapes
:��*
T0*

Tdim0
�
loss/nce_loss/Reshape_1Reshapeloss/nce_loss/Sliceloss/nce_loss/concat_1"/device:CPU:0*4
_output_shapes"
 :������������������*
Tshape0*
T0
�
loss/nce_loss/MulMulloss/nce_loss/ExpandDimsloss/nce_loss/Reshape_1"/device:CPU:0*$
_output_shapes
:��*
T0
�
loss/nce_loss/concat_2/values_0Const"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
l
loss/nce_loss/concat_2/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/concat_2ConcatV2loss/nce_loss/concat_2/values_0loss/nce_loss/strided_slice_1loss/nce_loss/concat_2/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
loss/nce_loss/Reshape_2Reshapeloss/nce_loss/Mulloss/nce_loss/concat_2"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
{
loss/nce_loss/Shape_3Shapeloss/nce_loss/Reshape_2"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
|
#loss/nce_loss/strided_slice_2/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_2/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_2/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_slice_2StridedSliceloss/nce_loss/Shape_3#loss/nce_loss/strided_slice_2/stack%loss/nce_loss/strided_slice_2/stack_1%loss/nce_loss/strided_slice_2/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 
h
loss/nce_loss/stack_1/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/stack_1Packloss/nce_loss/strided_slice_2loss/nce_loss/stack_1/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
l
loss/nce_loss/ones/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
loss/nce_loss/onesFillloss/nce_loss/stack_1loss/nce_loss/ones/Const"/device:CPU:0*'
_output_shapes
:���������*
T0
�
loss/nce_loss/MatMulMatMulloss/nce_loss/Reshape_2loss/nce_loss/ones"/device:CPU:0*'
_output_shapes
:���������*
T0*
transpose_a( *
transpose_b( 

loss/nce_loss/Reshape_3/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
�
loss/nce_loss/Reshape_3Reshapeloss/nce_loss/MatMulloss/nce_loss/Reshape_3/shape"/device:CPU:0*#
_output_shapes
:���������*
Tshape0*
T0
}
loss/nce_loss/Reshape_4/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"����   *
dtype0
�
loss/nce_loss/Reshape_4Reshapeloss/nce_loss/Reshape_3loss/nce_loss/Reshape_4/shape"/device:CPU:0*'
_output_shapes
:���������*
Tshape0*
T0
}
loss/nce_loss/Reshape_5/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB"����   *
dtype0
�
loss/nce_loss/Reshape_5Reshapeloss/nce_loss/Slice_1loss/nce_loss/Reshape_5/shape"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
loss/nce_loss/addAddloss/nce_loss/Reshape_4loss/nce_loss/Reshape_5"/device:CPU:0*
_output_shapes
:	�*
T0
o
loss/nce_loss/Shape_4Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
|
#loss/nce_loss/strided_slice_3/stackConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
~
%loss/nce_loss/strided_slice_3/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
~
%loss/nce_loss/strided_slice_3/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/nce_loss/strided_slice_3StridedSliceloss/nce_loss/Shape_4#loss/nce_loss/strided_slice_3/stack%loss/nce_loss/strided_slice_3/stack_1%loss/nce_loss/strided_slice_3/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 
h
loss/nce_loss/stack_2/1Const"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
loss/nce_loss/stack_2Packloss/nce_loss/strided_slice_3loss/nce_loss/stack_2/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
z
loss/nce_loss/Slice_2/sizeConst"/device:CPU:0*
_output_shapes
:*
valueB"��������*
dtype0
�
loss/nce_loss/Slice_2Sliceloss/nce_loss/embedding_lookuploss/nce_loss/stack_2loss/nce_loss/Slice_2/size"/device:CPU:0*(
_output_shapes
:����������*
T0*
Index0
o
loss/nce_loss/Shape_5Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
|
loss/nce_loss/Slice_3/sizeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
�
loss/nce_loss/Slice_3Slice loss/nce_loss/embedding_lookup_1loss/nce_loss/Shape_5loss/nce_loss/Slice_3/size"/device:CPU:0*
_output_shapes
:@*
T0*
Index0
�
loss/nce_loss/MatMul_1MatMul
loss/embedloss/nce_loss/Slice_2"/device:CPU:0*(
_output_shapes
:����������*
T0*
transpose_a( *
transpose_b(
�
loss/nce_loss/add_1Addloss/nce_loss/MatMul_1loss/nce_loss/Slice_3"/device:CPU:0*
_output_shapes
:	�@*
T0
o
loss/nce_loss/LogLogloss/nce_loss/StopGradient_1"/device:CPU:0*
_output_shapes
:	�*
T0
w
loss/nce_loss/subSubloss/nce_loss/addloss/nce_loss/Log"/device:CPU:0*
_output_shapes
:	�*
T0
l
loss/nce_loss/Log_1Logloss/nce_loss/StopGradient_2"/device:CPU:0*
_output_shapes
:@*
T0
}
loss/nce_loss/sub_1Subloss/nce_loss/add_1loss/nce_loss/Log_1"/device:CPU:0*
_output_shapes
:	�@*
T0
l
loss/nce_loss/concat_3/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/concat_3ConcatV2loss/nce_loss/subloss/nce_loss/sub_1loss/nce_loss/concat_3/axis"/device:CPU:0*
_output_shapes
:	�A*
N*
T0*

Tidx0
}
loss/nce_loss/ones_like/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
q
loss/nce_loss/ones_like/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
loss/nce_loss/ones_likeFillloss/nce_loss/ones_like/Shapeloss/nce_loss/ones_like/Const"/device:CPU:0*
_output_shapes
:	�*
T0
k
loss/nce_loss/truediv/yConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
loss/nce_loss/truedivRealDivloss/nce_loss/ones_likeloss/nce_loss/truediv/y"/device:CPU:0*
_output_shapes
:	�*
T0
s
loss/nce_loss/zeros_like	ZerosLikeloss/nce_loss/sub_1"/device:CPU:0*
_output_shapes
:	�@*
T0
l
loss/nce_loss/concat_4/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
loss/nce_loss/concat_4ConcatV2loss/nce_loss/truedivloss/nce_loss/zeros_likeloss/nce_loss/concat_4/axis"/device:CPU:0*
_output_shapes
:	�A*
N*
T0*

Tidx0
|
loss/sampled_losses/zeros_like	ZerosLikeloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
 loss/sampled_losses/GreaterEqualGreaterEqualloss/nce_loss/concat_3loss/sampled_losses/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/SelectSelect loss/sampled_losses/GreaterEqualloss/nce_loss/concat_3loss/sampled_losses/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
o
loss/sampled_losses/NegNegloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/Select_1Select loss/sampled_losses/GreaterEqualloss/sampled_losses/Negloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/mulMulloss/nce_loss/concat_3loss/nce_loss/concat_4"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_losses/subSubloss/sampled_losses/Selectloss/sampled_losses/mul"/device:CPU:0*
_output_shapes
:	�A*
T0
u
loss/sampled_losses/ExpExploss/sampled_losses/Select_1"/device:CPU:0*
_output_shapes
:	�A*
T0
t
loss/sampled_losses/Log1pLog1ploss/sampled_losses/Exp"/device:CPU:0*
_output_shapes
:	�A*
T0
�
loss/sampled_lossesAddloss/sampled_losses/subloss/sampled_losses/Log1p"/device:CPU:0*
_output_shapes
:	�A*
T0
j

loss/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
q
loss/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
s
loss/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
s
loss/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
loss/strided_sliceStridedSlice
loss/Shapeloss/strided_slice/stackloss/strided_slice/stack_1loss/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask*
end_mask *
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 
]
loss/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
}

loss/stackPackloss/strided_sliceloss/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
c
loss/ones/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
o
	loss/onesFill
loss/stackloss/ones/Const"/device:CPU:0*'
_output_shapes
:���������*
T0
�
loss/MatMulMatMulloss/sampled_losses	loss/ones"/device:CPU:0*
_output_shapes
:	�*
T0*
transpose_a( *
transpose_b( 
t
loss/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:
���������*
dtype0
{
loss/ReshapeReshapeloss/MatMulloss/Reshape/shape"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
c

loss/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
x
	loss/lossMeanloss/Reshape
loss/Const"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
a
gradients/ShapeConst"/device:CPU:0*
_output_shapes
: *
valueB *
dtype0
c
gradients/ConstConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
h
gradients/FillFillgradients/Shapegradients/Const"/device:CPU:0*
_output_shapes
: *
T0

&gradients/loss/loss_grad/Reshape/shapeConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
 gradients/loss/loss_grad/ReshapeReshapegradients/Fill&gradients/loss/loss_grad/Reshape/shape"/device:CPU:0*
_output_shapes
:*
Tshape0*
T0
�
'gradients/loss/loss_grad/Tile/multiplesConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
gradients/loss/loss_grad/TileTile gradients/loss/loss_grad/Reshape'gradients/loss/loss_grad/Tile/multiples"/device:CPU:0*
_output_shapes	
:�*
T0*

Tmultiples0
x
gradients/loss/loss_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
r
 gradients/loss/loss_grad/Shape_1Const"/device:CPU:0*
_output_shapes
: *
valueB *
dtype0
w
gradients/loss/loss_grad/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
gradients/loss/loss_grad/ProdProdgradients/loss/loss_grad/Shapegradients/loss/loss_grad/Const"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
y
 gradients/loss/loss_grad/Const_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
gradients/loss/loss_grad/Prod_1Prod gradients/loss/loss_grad/Shape_1 gradients/loss/loss_grad/Const_1"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
s
"gradients/loss/loss_grad/Maximum/yConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
 gradients/loss/loss_grad/MaximumMaximumgradients/loss/loss_grad/Prod_1"gradients/loss/loss_grad/Maximum/y"/device:CPU:0*
_output_shapes
: *
T0
�
!gradients/loss/loss_grad/floordivFloorDivgradients/loss/loss_grad/Prod gradients/loss/loss_grad/Maximum"/device:CPU:0*
_output_shapes
: *
T0
�
gradients/loss/loss_grad/CastCast!gradients/loss/loss_grad/floordiv"/device:CPU:0*
_output_shapes
: *

SrcT0*

DstT0
�
 gradients/loss/loss_grad/truedivRealDivgradients/loss/loss_grad/Tilegradients/loss/loss_grad/Cast"/device:CPU:0*
_output_shapes	
:�*
T0
�
!gradients/loss/Reshape_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
#gradients/loss/Reshape_grad/ReshapeReshape gradients/loss/loss_grad/truediv!gradients/loss/Reshape_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
!gradients/loss/MatMul_grad/MatMulMatMul#gradients/loss/Reshape_grad/Reshape	loss/ones"/device:CPU:0*(
_output_shapes
:����������*
T0*
transpose_a( *
transpose_b(
�
#gradients/loss/MatMul_grad/MatMul_1MatMulloss/sampled_losses#gradients/loss/Reshape_grad/Reshape"/device:CPU:0*
_output_shapes

:A*
T0*
transpose_a(*
transpose_b( 
�
+gradients/loss/MatMul_grad/tuple/group_depsNoOp"^gradients/loss/MatMul_grad/MatMul$^gradients/loss/MatMul_grad/MatMul_1"/device:CPU:0
�
3gradients/loss/MatMul_grad/tuple/control_dependencyIdentity!gradients/loss/MatMul_grad/MatMul,^gradients/loss/MatMul_grad/tuple/group_deps"/device:CPU:0*4
_class*
(&loc:@gradients/loss/MatMul_grad/MatMul*
_output_shapes
:	�A*
T0
�
5gradients/loss/MatMul_grad/tuple/control_dependency_1Identity#gradients/loss/MatMul_grad/MatMul_1,^gradients/loss/MatMul_grad/tuple/group_deps"/device:CPU:0*6
_class,
*(loc:@gradients/loss/MatMul_grad/MatMul_1*
_output_shapes

:A*
T0
�
(gradients/loss/sampled_losses_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
*gradients/loss/sampled_losses_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
8gradients/loss/sampled_losses_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/loss/sampled_losses_grad/Shape*gradients/loss/sampled_losses_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
&gradients/loss/sampled_losses_grad/SumSum3gradients/loss/MatMul_grad/tuple/control_dependency8gradients/loss/sampled_losses_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/sampled_losses_grad/ReshapeReshape&gradients/loss/sampled_losses_grad/Sum(gradients/loss/sampled_losses_grad/Shape"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
(gradients/loss/sampled_losses_grad/Sum_1Sum3gradients/loss/MatMul_grad/tuple/control_dependency:gradients/loss/sampled_losses_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
,gradients/loss/sampled_losses_grad/Reshape_1Reshape(gradients/loss/sampled_losses_grad/Sum_1*gradients/loss/sampled_losses_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
3gradients/loss/sampled_losses_grad/tuple/group_depsNoOp+^gradients/loss/sampled_losses_grad/Reshape-^gradients/loss/sampled_losses_grad/Reshape_1"/device:CPU:0
�
;gradients/loss/sampled_losses_grad/tuple/control_dependencyIdentity*gradients/loss/sampled_losses_grad/Reshape4^gradients/loss/sampled_losses_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/sampled_losses_grad/Reshape*
_output_shapes
:	�A*
T0
�
=gradients/loss/sampled_losses_grad/tuple/control_dependency_1Identity,gradients/loss/sampled_losses_grad/Reshape_14^gradients/loss/sampled_losses_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/sampled_losses_grad/Reshape_1*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/sub_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
.gradients/loss/sampled_losses/sub_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
<gradients/loss/sampled_losses/sub_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/loss/sampled_losses/sub_grad/Shape.gradients/loss/sampled_losses/sub_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
*gradients/loss/sampled_losses/sub_grad/SumSum;gradients/loss/sampled_losses_grad/tuple/control_dependency<gradients/loss/sampled_losses/sub_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
.gradients/loss/sampled_losses/sub_grad/ReshapeReshape*gradients/loss/sampled_losses/sub_grad/Sum,gradients/loss/sampled_losses/sub_grad/Shape"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
,gradients/loss/sampled_losses/sub_grad/Sum_1Sum;gradients/loss/sampled_losses_grad/tuple/control_dependency>gradients/loss/sampled_losses/sub_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/sampled_losses/sub_grad/NegNeg,gradients/loss/sampled_losses/sub_grad/Sum_1"/device:CPU:0*
_output_shapes
:*
T0
�
0gradients/loss/sampled_losses/sub_grad/Reshape_1Reshape*gradients/loss/sampled_losses/sub_grad/Neg.gradients/loss/sampled_losses/sub_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
7gradients/loss/sampled_losses/sub_grad/tuple/group_depsNoOp/^gradients/loss/sampled_losses/sub_grad/Reshape1^gradients/loss/sampled_losses/sub_grad/Reshape_1"/device:CPU:0
�
?gradients/loss/sampled_losses/sub_grad/tuple/control_dependencyIdentity.gradients/loss/sampled_losses/sub_grad/Reshape8^gradients/loss/sampled_losses/sub_grad/tuple/group_deps"/device:CPU:0*A
_class7
53loc:@gradients/loss/sampled_losses/sub_grad/Reshape*
_output_shapes
:	�A*
T0
�
Agradients/loss/sampled_losses/sub_grad/tuple/control_dependency_1Identity0gradients/loss/sampled_losses/sub_grad/Reshape_18^gradients/loss/sampled_losses/sub_grad/tuple/group_deps"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/sub_grad/Reshape_1*
_output_shapes
:	�A*
T0
�
.gradients/loss/sampled_losses/Log1p_grad/add/xConst>^gradients/loss/sampled_losses_grad/tuple/control_dependency_1"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
,gradients/loss/sampled_losses/Log1p_grad/addAdd.gradients/loss/sampled_losses/Log1p_grad/add/xloss/sampled_losses/Exp"/device:CPU:0*
_output_shapes
:	�A*
T0
�
3gradients/loss/sampled_losses/Log1p_grad/Reciprocal
Reciprocal,gradients/loss/sampled_losses/Log1p_grad/add"/device:CPU:0*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/Log1p_grad/mulMul=gradients/loss/sampled_losses_grad/tuple/control_dependency_13gradients/loss/sampled_losses/Log1p_grad/Reciprocal"/device:CPU:0*
_output_shapes
:	�A*
T0
�
4gradients/loss/sampled_losses/Select_grad/zeros_like	ZerosLikeloss/nce_loss/concat_3"/device:CPU:0*
_output_shapes
:	�A*
T0
�
0gradients/loss/sampled_losses/Select_grad/SelectSelect loss/sampled_losses/GreaterEqual?gradients/loss/sampled_losses/sub_grad/tuple/control_dependency4gradients/loss/sampled_losses/Select_grad/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
�
2gradients/loss/sampled_losses/Select_grad/Select_1Select loss/sampled_losses/GreaterEqual4gradients/loss/sampled_losses/Select_grad/zeros_like?gradients/loss/sampled_losses/sub_grad/tuple/control_dependency"/device:CPU:0*
_output_shapes
:	�A*
T0
�
:gradients/loss/sampled_losses/Select_grad/tuple/group_depsNoOp1^gradients/loss/sampled_losses/Select_grad/Select3^gradients/loss/sampled_losses/Select_grad/Select_1"/device:CPU:0
�
Bgradients/loss/sampled_losses/Select_grad/tuple/control_dependencyIdentity0gradients/loss/sampled_losses/Select_grad/Select;^gradients/loss/sampled_losses/Select_grad/tuple/group_deps"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/Select_grad/Select*
_output_shapes
:	�A*
T0
�
Dgradients/loss/sampled_losses/Select_grad/tuple/control_dependency_1Identity2gradients/loss/sampled_losses/Select_grad/Select_1;^gradients/loss/sampled_losses/Select_grad/tuple/group_deps"/device:CPU:0*E
_class;
97loc:@gradients/loss/sampled_losses/Select_grad/Select_1*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/mul_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
.gradients/loss/sampled_losses/mul_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   A   *
dtype0
�
<gradients/loss/sampled_losses/mul_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/loss/sampled_losses/mul_grad/Shape.gradients/loss/sampled_losses/mul_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
*gradients/loss/sampled_losses/mul_grad/mulMulAgradients/loss/sampled_losses/sub_grad/tuple/control_dependency_1loss/nce_loss/concat_4"/device:CPU:0*
_output_shapes
:	�A*
T0
�
*gradients/loss/sampled_losses/mul_grad/SumSum*gradients/loss/sampled_losses/mul_grad/mul<gradients/loss/sampled_losses/mul_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
.gradients/loss/sampled_losses/mul_grad/ReshapeReshape*gradients/loss/sampled_losses/mul_grad/Sum,gradients/loss/sampled_losses/mul_grad/Shape"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
,gradients/loss/sampled_losses/mul_grad/mul_1Mulloss/nce_loss/concat_3Agradients/loss/sampled_losses/sub_grad/tuple/control_dependency_1"/device:CPU:0*
_output_shapes
:	�A*
T0
�
,gradients/loss/sampled_losses/mul_grad/Sum_1Sum,gradients/loss/sampled_losses/mul_grad/mul_1>gradients/loss/sampled_losses/mul_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
0gradients/loss/sampled_losses/mul_grad/Reshape_1Reshape,gradients/loss/sampled_losses/mul_grad/Sum_1.gradients/loss/sampled_losses/mul_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�A*
Tshape0*
T0
�
7gradients/loss/sampled_losses/mul_grad/tuple/group_depsNoOp/^gradients/loss/sampled_losses/mul_grad/Reshape1^gradients/loss/sampled_losses/mul_grad/Reshape_1"/device:CPU:0
�
?gradients/loss/sampled_losses/mul_grad/tuple/control_dependencyIdentity.gradients/loss/sampled_losses/mul_grad/Reshape8^gradients/loss/sampled_losses/mul_grad/tuple/group_deps"/device:CPU:0*A
_class7
53loc:@gradients/loss/sampled_losses/mul_grad/Reshape*
_output_shapes
:	�A*
T0
�
Agradients/loss/sampled_losses/mul_grad/tuple/control_dependency_1Identity0gradients/loss/sampled_losses/mul_grad/Reshape_18^gradients/loss/sampled_losses/mul_grad/tuple/group_deps"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/mul_grad/Reshape_1*
_output_shapes
:	�A*
T0
�
*gradients/loss/sampled_losses/Exp_grad/mulMul,gradients/loss/sampled_losses/Log1p_grad/mulloss/sampled_losses/Exp"/device:CPU:0*
_output_shapes
:	�A*
T0
{
*gradients/loss/nce_loss/concat_4_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
)gradients/loss/nce_loss/concat_4_grad/modFloorModloss/nce_loss/concat_4/axis*gradients/loss/nce_loss/concat_4_grad/Rank"/device:CPU:0*
_output_shapes
: *
T0
�
+gradients/loss/nce_loss/concat_4_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
-gradients/loss/nce_loss/concat_4_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   @   *
dtype0
�
2gradients/loss/nce_loss/concat_4_grad/ConcatOffsetConcatOffset)gradients/loss/nce_loss/concat_4_grad/mod+gradients/loss/nce_loss/concat_4_grad/Shape-gradients/loss/nce_loss/concat_4_grad/Shape_1"/device:CPU:0* 
_output_shapes
::*
N
�
+gradients/loss/nce_loss/concat_4_grad/SliceSliceAgradients/loss/sampled_losses/mul_grad/tuple/control_dependency_12gradients/loss/nce_loss/concat_4_grad/ConcatOffset+gradients/loss/nce_loss/concat_4_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
T0*
Index0
�
-gradients/loss/nce_loss/concat_4_grad/Slice_1SliceAgradients/loss/sampled_losses/mul_grad/tuple/control_dependency_14gradients/loss/nce_loss/concat_4_grad/ConcatOffset:1-gradients/loss/nce_loss/concat_4_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�@*
T0*
Index0
�
6gradients/loss/nce_loss/concat_4_grad/tuple/group_depsNoOp,^gradients/loss/nce_loss/concat_4_grad/Slice.^gradients/loss/nce_loss/concat_4_grad/Slice_1"/device:CPU:0
�
>gradients/loss/nce_loss/concat_4_grad/tuple/control_dependencyIdentity+gradients/loss/nce_loss/concat_4_grad/Slice7^gradients/loss/nce_loss/concat_4_grad/tuple/group_deps"/device:CPU:0*>
_class4
20loc:@gradients/loss/nce_loss/concat_4_grad/Slice*
_output_shapes
:	�*
T0
�
@gradients/loss/nce_loss/concat_4_grad/tuple/control_dependency_1Identity-gradients/loss/nce_loss/concat_4_grad/Slice_17^gradients/loss/nce_loss/concat_4_grad/tuple/group_deps"/device:CPU:0*@
_class6
42loc:@gradients/loss/nce_loss/concat_4_grad/Slice_1*
_output_shapes
:	�@*
T0
�
6gradients/loss/sampled_losses/Select_1_grad/zeros_like	ZerosLikeloss/sampled_losses/Neg"/device:CPU:0*
_output_shapes
:	�A*
T0
�
2gradients/loss/sampled_losses/Select_1_grad/SelectSelect loss/sampled_losses/GreaterEqual*gradients/loss/sampled_losses/Exp_grad/mul6gradients/loss/sampled_losses/Select_1_grad/zeros_like"/device:CPU:0*
_output_shapes
:	�A*
T0
�
4gradients/loss/sampled_losses/Select_1_grad/Select_1Select loss/sampled_losses/GreaterEqual6gradients/loss/sampled_losses/Select_1_grad/zeros_like*gradients/loss/sampled_losses/Exp_grad/mul"/device:CPU:0*
_output_shapes
:	�A*
T0
�
<gradients/loss/sampled_losses/Select_1_grad/tuple/group_depsNoOp3^gradients/loss/sampled_losses/Select_1_grad/Select5^gradients/loss/sampled_losses/Select_1_grad/Select_1"/device:CPU:0
�
Dgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependencyIdentity2gradients/loss/sampled_losses/Select_1_grad/Select=^gradients/loss/sampled_losses/Select_1_grad/tuple/group_deps"/device:CPU:0*E
_class;
97loc:@gradients/loss/sampled_losses/Select_1_grad/Select*
_output_shapes
:	�A*
T0
�
Fgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependency_1Identity4gradients/loss/sampled_losses/Select_1_grad/Select_1=^gradients/loss/sampled_losses/Select_1_grad/tuple/group_deps"/device:CPU:0*G
_class=
;9loc:@gradients/loss/sampled_losses/Select_1_grad/Select_1*
_output_shapes
:	�A*
T0
�
*gradients/loss/sampled_losses/Neg_grad/NegNegDgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependency"/device:CPU:0*
_output_shapes
:	�A*
T0
�
gradients/AddNAddNBgradients/loss/sampled_losses/Select_grad/tuple/control_dependency?gradients/loss/sampled_losses/mul_grad/tuple/control_dependencyFgradients/loss/sampled_losses/Select_1_grad/tuple/control_dependency_1*gradients/loss/sampled_losses/Neg_grad/Neg"/device:CPU:0*C
_class9
75loc:@gradients/loss/sampled_losses/Select_grad/Select*
N*
T0*
_output_shapes
:	�A
{
*gradients/loss/nce_loss/concat_3_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
)gradients/loss/nce_loss/concat_3_grad/modFloorModloss/nce_loss/concat_3/axis*gradients/loss/nce_loss/concat_3_grad/Rank"/device:CPU:0*
_output_shapes
: *
T0
�
+gradients/loss/nce_loss/concat_3_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
-gradients/loss/nce_loss/concat_3_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   @   *
dtype0
�
2gradients/loss/nce_loss/concat_3_grad/ConcatOffsetConcatOffset)gradients/loss/nce_loss/concat_3_grad/mod+gradients/loss/nce_loss/concat_3_grad/Shape-gradients/loss/nce_loss/concat_3_grad/Shape_1"/device:CPU:0* 
_output_shapes
::*
N
�
+gradients/loss/nce_loss/concat_3_grad/SliceSlicegradients/AddN2gradients/loss/nce_loss/concat_3_grad/ConcatOffset+gradients/loss/nce_loss/concat_3_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
T0*
Index0
�
-gradients/loss/nce_loss/concat_3_grad/Slice_1Slicegradients/AddN4gradients/loss/nce_loss/concat_3_grad/ConcatOffset:1-gradients/loss/nce_loss/concat_3_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�@*
T0*
Index0
�
6gradients/loss/nce_loss/concat_3_grad/tuple/group_depsNoOp,^gradients/loss/nce_loss/concat_3_grad/Slice.^gradients/loss/nce_loss/concat_3_grad/Slice_1"/device:CPU:0
�
>gradients/loss/nce_loss/concat_3_grad/tuple/control_dependencyIdentity+gradients/loss/nce_loss/concat_3_grad/Slice7^gradients/loss/nce_loss/concat_3_grad/tuple/group_deps"/device:CPU:0*>
_class4
20loc:@gradients/loss/nce_loss/concat_3_grad/Slice*
_output_shapes
:	�*
T0
�
@gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency_1Identity-gradients/loss/nce_loss/concat_3_grad/Slice_17^gradients/loss/nce_loss/concat_3_grad/tuple/group_deps"/device:CPU:0*@
_class6
42loc:@gradients/loss/nce_loss/concat_3_grad/Slice_1*
_output_shapes
:	�@*
T0
�
&gradients/loss/nce_loss/sub_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
(gradients/loss/nce_loss/sub_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
6gradients/loss/nce_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/loss/nce_loss/sub_grad/Shape(gradients/loss/nce_loss/sub_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
$gradients/loss/nce_loss/sub_grad/SumSum>gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency6gradients/loss/nce_loss/sub_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
(gradients/loss/nce_loss/sub_grad/ReshapeReshape$gradients/loss/nce_loss/sub_grad/Sum&gradients/loss/nce_loss/sub_grad/Shape"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
&gradients/loss/nce_loss/sub_grad/Sum_1Sum>gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency8gradients/loss/nce_loss/sub_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
$gradients/loss/nce_loss/sub_grad/NegNeg&gradients/loss/nce_loss/sub_grad/Sum_1"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/sub_grad/Reshape_1Reshape$gradients/loss/nce_loss/sub_grad/Neg(gradients/loss/nce_loss/sub_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
1gradients/loss/nce_loss/sub_grad/tuple/group_depsNoOp)^gradients/loss/nce_loss/sub_grad/Reshape+^gradients/loss/nce_loss/sub_grad/Reshape_1"/device:CPU:0
�
9gradients/loss/nce_loss/sub_grad/tuple/control_dependencyIdentity(gradients/loss/nce_loss/sub_grad/Reshape2^gradients/loss/nce_loss/sub_grad/tuple/group_deps"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/sub_grad/Reshape*
_output_shapes
:	�*
T0
�
;gradients/loss/nce_loss/sub_grad/tuple/control_dependency_1Identity*gradients/loss/nce_loss/sub_grad/Reshape_12^gradients/loss/nce_loss/sub_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/sub_grad/Reshape_1*
_output_shapes
:	�*
T0
�
(gradients/loss/nce_loss/sub_1_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   @   *
dtype0
�
*gradients/loss/nce_loss/sub_1_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:@*
dtype0
�
8gradients/loss/nce_loss/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/loss/nce_loss/sub_1_grad/Shape*gradients/loss/nce_loss/sub_1_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
&gradients/loss/nce_loss/sub_1_grad/SumSum@gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency_18gradients/loss/nce_loss/sub_1_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/sub_1_grad/ReshapeReshape&gradients/loss/nce_loss/sub_1_grad/Sum(gradients/loss/nce_loss/sub_1_grad/Shape"/device:CPU:0*
_output_shapes
:	�@*
Tshape0*
T0
�
(gradients/loss/nce_loss/sub_1_grad/Sum_1Sum@gradients/loss/nce_loss/concat_3_grad/tuple/control_dependency_1:gradients/loss/nce_loss/sub_1_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
&gradients/loss/nce_loss/sub_1_grad/NegNeg(gradients/loss/nce_loss/sub_1_grad/Sum_1"/device:CPU:0*
_output_shapes
:*
T0
�
,gradients/loss/nce_loss/sub_1_grad/Reshape_1Reshape&gradients/loss/nce_loss/sub_1_grad/Neg*gradients/loss/nce_loss/sub_1_grad/Shape_1"/device:CPU:0*
_output_shapes
:@*
Tshape0*
T0
�
3gradients/loss/nce_loss/sub_1_grad/tuple/group_depsNoOp+^gradients/loss/nce_loss/sub_1_grad/Reshape-^gradients/loss/nce_loss/sub_1_grad/Reshape_1"/device:CPU:0
�
;gradients/loss/nce_loss/sub_1_grad/tuple/control_dependencyIdentity*gradients/loss/nce_loss/sub_1_grad/Reshape4^gradients/loss/nce_loss/sub_1_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/sub_1_grad/Reshape*
_output_shapes
:	�@*
T0
�
=gradients/loss/nce_loss/sub_1_grad/tuple/control_dependency_1Identity,gradients/loss/nce_loss/sub_1_grad/Reshape_14^gradients/loss/nce_loss/sub_1_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/sub_1_grad/Reshape_1*
_output_shapes
:@*
T0
�
&gradients/loss/nce_loss/add_grad/ShapeShapeloss/nce_loss/Reshape_4"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
(gradients/loss/nce_loss/add_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�      *
dtype0
�
6gradients/loss/nce_loss/add_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/loss/nce_loss/add_grad/Shape(gradients/loss/nce_loss/add_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
$gradients/loss/nce_loss/add_grad/SumSum9gradients/loss/nce_loss/sub_grad/tuple/control_dependency6gradients/loss/nce_loss/add_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
(gradients/loss/nce_loss/add_grad/ReshapeReshape$gradients/loss/nce_loss/add_grad/Sum&gradients/loss/nce_loss/add_grad/Shape"/device:CPU:0*'
_output_shapes
:���������*
Tshape0*
T0
�
&gradients/loss/nce_loss/add_grad/Sum_1Sum9gradients/loss/nce_loss/sub_grad/tuple/control_dependency8gradients/loss/nce_loss/add_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/add_grad/Reshape_1Reshape&gradients/loss/nce_loss/add_grad/Sum_1(gradients/loss/nce_loss/add_grad/Shape_1"/device:CPU:0*
_output_shapes
:	�*
Tshape0*
T0
�
1gradients/loss/nce_loss/add_grad/tuple/group_depsNoOp)^gradients/loss/nce_loss/add_grad/Reshape+^gradients/loss/nce_loss/add_grad/Reshape_1"/device:CPU:0
�
9gradients/loss/nce_loss/add_grad/tuple/control_dependencyIdentity(gradients/loss/nce_loss/add_grad/Reshape2^gradients/loss/nce_loss/add_grad/tuple/group_deps"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/add_grad/Reshape*'
_output_shapes
:���������*
T0
�
;gradients/loss/nce_loss/add_grad/tuple/control_dependency_1Identity*gradients/loss/nce_loss/add_grad/Reshape_12^gradients/loss/nce_loss/add_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/add_grad/Reshape_1*
_output_shapes
:	�*
T0
�
(gradients/loss/nce_loss/add_1_grad/ShapeShapeloss/nce_loss/MatMul_1"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
*gradients/loss/nce_loss/add_1_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:@*
dtype0
�
8gradients/loss/nce_loss/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/loss/nce_loss/add_1_grad/Shape*gradients/loss/nce_loss/add_1_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
&gradients/loss/nce_loss/add_1_grad/SumSum;gradients/loss/nce_loss/sub_1_grad/tuple/control_dependency8gradients/loss/nce_loss/add_1_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/add_1_grad/ReshapeReshape&gradients/loss/nce_loss/add_1_grad/Sum(gradients/loss/nce_loss/add_1_grad/Shape"/device:CPU:0*(
_output_shapes
:����������*
Tshape0*
T0
�
(gradients/loss/nce_loss/add_1_grad/Sum_1Sum;gradients/loss/nce_loss/sub_1_grad/tuple/control_dependency:gradients/loss/nce_loss/add_1_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
,gradients/loss/nce_loss/add_1_grad/Reshape_1Reshape(gradients/loss/nce_loss/add_1_grad/Sum_1*gradients/loss/nce_loss/add_1_grad/Shape_1"/device:CPU:0*
_output_shapes
:@*
Tshape0*
T0
�
3gradients/loss/nce_loss/add_1_grad/tuple/group_depsNoOp+^gradients/loss/nce_loss/add_1_grad/Reshape-^gradients/loss/nce_loss/add_1_grad/Reshape_1"/device:CPU:0
�
;gradients/loss/nce_loss/add_1_grad/tuple/control_dependencyIdentity*gradients/loss/nce_loss/add_1_grad/Reshape4^gradients/loss/nce_loss/add_1_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/add_1_grad/Reshape*(
_output_shapes
:����������*
T0
�
=gradients/loss/nce_loss/add_1_grad/tuple/control_dependency_1Identity,gradients/loss/nce_loss/add_1_grad/Reshape_14^gradients/loss/nce_loss/add_1_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/add_1_grad/Reshape_1*
_output_shapes
:@*
T0
�
,gradients/loss/nce_loss/Reshape_4_grad/ShapeShapeloss/nce_loss/Reshape_3"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
.gradients/loss/nce_loss/Reshape_4_grad/ReshapeReshape9gradients/loss/nce_loss/add_grad/tuple/control_dependency,gradients/loss/nce_loss/Reshape_4_grad/Shape"/device:CPU:0*#
_output_shapes
:���������*
Tshape0*
T0
�
,gradients/loss/nce_loss/Reshape_5_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
.gradients/loss/nce_loss/Reshape_5_grad/ReshapeReshape;gradients/loss/nce_loss/add_grad/tuple/control_dependency_1,gradients/loss/nce_loss/Reshape_5_grad/Shape"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
�
,gradients/loss/nce_loss/MatMul_1_grad/MatMulMatMul;gradients/loss/nce_loss/add_1_grad/tuple/control_dependencyloss/nce_loss/Slice_2"/device:CPU:0* 
_output_shapes
:
��*
T0*
transpose_a( *
transpose_b( 
�
.gradients/loss/nce_loss/MatMul_1_grad/MatMul_1MatMul;gradients/loss/nce_loss/add_1_grad/tuple/control_dependency
loss/embed"/device:CPU:0*(
_output_shapes
:����������*
T0*
transpose_a(*
transpose_b( 
�
6gradients/loss/nce_loss/MatMul_1_grad/tuple/group_depsNoOp-^gradients/loss/nce_loss/MatMul_1_grad/MatMul/^gradients/loss/nce_loss/MatMul_1_grad/MatMul_1"/device:CPU:0
�
>gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependencyIdentity,gradients/loss/nce_loss/MatMul_1_grad/MatMul7^gradients/loss/nce_loss/MatMul_1_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/MatMul_1_grad/MatMul* 
_output_shapes
:
��*
T0
�
@gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependency_1Identity.gradients/loss/nce_loss/MatMul_1_grad/MatMul_17^gradients/loss/nce_loss/MatMul_1_grad/tuple/group_deps"/device:CPU:0*A
_class7
53loc:@gradients/loss/nce_loss/MatMul_1_grad/MatMul_1*(
_output_shapes
:����������*
T0
z
)gradients/loss/nce_loss/Slice_3_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_3_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:@*
dtype0
}
,gradients/loss/nce_loss/Slice_3_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_3_grad/stackPack)gradients/loss/nce_loss/Slice_3_grad/Rank,gradients/loss/nce_loss/Slice_3_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
,gradients/loss/nce_loss/Slice_3_grad/ReshapeReshapeloss/nce_loss/Shape_5*gradients/loss/nce_loss/Slice_3_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
,gradients/loss/nce_loss/Slice_3_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
(gradients/loss/nce_loss/Slice_3_grad/subSub,gradients/loss/nce_loss/Slice_3_grad/Shape_1*gradients/loss/nce_loss/Slice_3_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/Slice_3_grad/sub_1Sub(gradients/loss/nce_loss/Slice_3_grad/subloss/nce_loss/Shape_5"/device:CPU:0*
_output_shapes
:*
T0
�
.gradients/loss/nce_loss/Slice_3_grad/Reshape_1Reshape*gradients/loss/nce_loss/Slice_3_grad/sub_1*gradients/loss/nce_loss/Slice_3_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
0gradients/loss/nce_loss/Slice_3_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
+gradients/loss/nce_loss/Slice_3_grad/concatConcatV2,gradients/loss/nce_loss/Slice_3_grad/Reshape.gradients/loss/nce_loss/Slice_3_grad/Reshape_10gradients/loss/nce_loss/Slice_3_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
(gradients/loss/nce_loss/Slice_3_grad/PadPad=gradients/loss/nce_loss/add_1_grad/tuple/control_dependency_1+gradients/loss/nce_loss/Slice_3_grad/concat"/device:CPU:0*
_output_shapes	
:�*
T0*
	Tpaddings0
�
,gradients/loss/nce_loss/Reshape_3_grad/ShapeShapeloss/nce_loss/MatMul"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
.gradients/loss/nce_loss/Reshape_3_grad/ReshapeReshape.gradients/loss/nce_loss/Reshape_4_grad/Reshape,gradients/loss/nce_loss/Reshape_3_grad/Shape"/device:CPU:0*'
_output_shapes
:���������*
Tshape0*
T0
z
)gradients/loss/nce_loss/Slice_1_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_1_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
}
,gradients/loss/nce_loss/Slice_1_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_1_grad/stackPack)gradients/loss/nce_loss/Slice_1_grad/Rank,gradients/loss/nce_loss/Slice_1_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
,gradients/loss/nce_loss/Slice_1_grad/ReshapeReshapeloss/nce_loss/Slice_1/begin*gradients/loss/nce_loss/Slice_1_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
,gradients/loss/nce_loss/Slice_1_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB:�*
dtype0
�
(gradients/loss/nce_loss/Slice_1_grad/subSub,gradients/loss/nce_loss/Slice_1_grad/Shape_1*gradients/loss/nce_loss/Slice_1_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/Slice_1_grad/sub_1Sub(gradients/loss/nce_loss/Slice_1_grad/subloss/nce_loss/Slice_1/begin"/device:CPU:0*
_output_shapes
:*
T0
�
.gradients/loss/nce_loss/Slice_1_grad/Reshape_1Reshape*gradients/loss/nce_loss/Slice_1_grad/sub_1*gradients/loss/nce_loss/Slice_1_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
0gradients/loss/nce_loss/Slice_1_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
+gradients/loss/nce_loss/Slice_1_grad/concatConcatV2,gradients/loss/nce_loss/Slice_1_grad/Reshape.gradients/loss/nce_loss/Slice_1_grad/Reshape_10gradients/loss/nce_loss/Slice_1_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
(gradients/loss/nce_loss/Slice_1_grad/PadPad.gradients/loss/nce_loss/Reshape_5_grad/Reshape+gradients/loss/nce_loss/Slice_1_grad/concat"/device:CPU:0*
_output_shapes	
:�*
T0*
	Tpaddings0
z
)gradients/loss/nce_loss/Slice_2_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_2_grad/ShapeShapeloss/nce_loss/Slice_2"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
}
,gradients/loss/nce_loss/Slice_2_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
*gradients/loss/nce_loss/Slice_2_grad/stackPack)gradients/loss/nce_loss/Slice_2_grad/Rank,gradients/loss/nce_loss/Slice_2_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
,gradients/loss/nce_loss/Slice_2_grad/ReshapeReshapeloss/nce_loss/stack_2*gradients/loss/nce_loss/Slice_2_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
,gradients/loss/nce_loss/Slice_2_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   �   *
dtype0
�
(gradients/loss/nce_loss/Slice_2_grad/subSub,gradients/loss/nce_loss/Slice_2_grad/Shape_1*gradients/loss/nce_loss/Slice_2_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
*gradients/loss/nce_loss/Slice_2_grad/sub_1Sub(gradients/loss/nce_loss/Slice_2_grad/subloss/nce_loss/stack_2"/device:CPU:0*
_output_shapes
:*
T0
�
.gradients/loss/nce_loss/Slice_2_grad/Reshape_1Reshape*gradients/loss/nce_loss/Slice_2_grad/sub_1*gradients/loss/nce_loss/Slice_2_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
0gradients/loss/nce_loss/Slice_2_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
+gradients/loss/nce_loss/Slice_2_grad/concatConcatV2,gradients/loss/nce_loss/Slice_2_grad/Reshape.gradients/loss/nce_loss/Slice_2_grad/Reshape_10gradients/loss/nce_loss/Slice_2_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
(gradients/loss/nce_loss/Slice_2_grad/PadPad@gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependency_1+gradients/loss/nce_loss/Slice_2_grad/concat"/device:CPU:0* 
_output_shapes
:
��*
T0*
	Tpaddings0
�
*gradients/loss/nce_loss/MatMul_grad/MatMulMatMul.gradients/loss/nce_loss/Reshape_3_grad/Reshapeloss/nce_loss/ones"/device:CPU:0*0
_output_shapes
:������������������*
T0*
transpose_a( *
transpose_b(
�
,gradients/loss/nce_loss/MatMul_grad/MatMul_1MatMulloss/nce_loss/Reshape_2.gradients/loss/nce_loss/Reshape_3_grad/Reshape"/device:CPU:0*'
_output_shapes
:���������*
T0*
transpose_a(*
transpose_b( 
�
4gradients/loss/nce_loss/MatMul_grad/tuple/group_depsNoOp+^gradients/loss/nce_loss/MatMul_grad/MatMul-^gradients/loss/nce_loss/MatMul_grad/MatMul_1"/device:CPU:0
�
<gradients/loss/nce_loss/MatMul_grad/tuple/control_dependencyIdentity*gradients/loss/nce_loss/MatMul_grad/MatMul5^gradients/loss/nce_loss/MatMul_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/MatMul_grad/MatMul*0
_output_shapes
:������������������*
T0
�
>gradients/loss/nce_loss/MatMul_grad/tuple/control_dependency_1Identity,gradients/loss/nce_loss/MatMul_grad/MatMul_15^gradients/loss/nce_loss/MatMul_grad/tuple/group_deps"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/MatMul_grad/MatMul_1*'
_output_shapes
:���������*
T0
�
gradients/AddN_1AddN(gradients/loss/nce_loss/Slice_3_grad/Pad(gradients/loss/nce_loss/Slice_1_grad/Pad"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/Slice_3_grad/Pad*
N*
T0*
_output_shapes	
:�
�
5gradients/loss/nce_loss/embedding_lookup_1_grad/ShapeConst"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes
:*
valueB:І*
dtype0
�
4gradients/loss/nce_loss/embedding_lookup_1_grad/SizeConst"/device:CPU:0*
_output_shapes
: *
value
B :�*
dtype0
�
>gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
:gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims
ExpandDims4gradients/loss/nce_loss/embedding_lookup_1_grad/Size>gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims/dim"/device:CPU:0*
_output_shapes
:*
T0*

Tdim0
�
Cgradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
Egradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
Egradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
=gradients/loss/nce_loss/embedding_lookup_1_grad/strided_sliceStridedSlice5gradients/loss/nce_loss/embedding_lookup_1_grad/ShapeCgradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stackEgradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_1Egradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
shrink_axis_mask *
end_mask*
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 
�
;gradients/loss/nce_loss/embedding_lookup_1_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
6gradients/loss/nce_loss/embedding_lookup_1_grad/concatConcatV2:gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims=gradients/loss/nce_loss/embedding_lookup_1_grad/strided_slice;gradients/loss/nce_loss/embedding_lookup_1_grad/concat/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
7gradients/loss/nce_loss/embedding_lookup_1_grad/ReshapeReshapegradients/AddN_16gradients/loss/nce_loss/embedding_lookup_1_grad/concat"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
�
9gradients/loss/nce_loss/embedding_lookup_1_grad/Reshape_1Reshapeloss/nce_loss/concat:gradients/loss/nce_loss/embedding_lookup_1_grad/ExpandDims"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0	
�
'gradients/loss/nce_loss/ones_grad/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB"       *
dtype0
�
%gradients/loss/nce_loss/ones_grad/SumSum>gradients/loss/nce_loss/MatMul_grad/tuple/control_dependency_1'gradients/loss/nce_loss/ones_grad/Const"/device:CPU:0*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
�
,gradients/loss/nce_loss/Reshape_2_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*!
valueB"�      �   *
dtype0
�
.gradients/loss/nce_loss/Reshape_2_grad/ReshapeReshape<gradients/loss/nce_loss/MatMul_grad/tuple/control_dependency,gradients/loss/nce_loss/Reshape_2_grad/Shape"/device:CPU:0*$
_output_shapes
:��*
Tshape0*
T0
�
&gradients/loss/nce_loss/Mul_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*!
valueB"�      �   *
dtype0
�
(gradients/loss/nce_loss/Mul_grad/Shape_1Shapeloss/nce_loss/Reshape_1"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
6gradients/loss/nce_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/loss/nce_loss/Mul_grad/Shape(gradients/loss/nce_loss/Mul_grad/Shape_1"/device:CPU:0*2
_output_shapes 
:���������:���������*
T0
�
$gradients/loss/nce_loss/Mul_grad/mulMul.gradients/loss/nce_loss/Reshape_2_grad/Reshapeloss/nce_loss/Reshape_1"/device:CPU:0*$
_output_shapes
:��*
T0
�
$gradients/loss/nce_loss/Mul_grad/SumSum$gradients/loss/nce_loss/Mul_grad/mul6gradients/loss/nce_loss/Mul_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
(gradients/loss/nce_loss/Mul_grad/ReshapeReshape$gradients/loss/nce_loss/Mul_grad/Sum&gradients/loss/nce_loss/Mul_grad/Shape"/device:CPU:0*$
_output_shapes
:��*
Tshape0*
T0
�
&gradients/loss/nce_loss/Mul_grad/mul_1Mulloss/nce_loss/ExpandDims.gradients/loss/nce_loss/Reshape_2_grad/Reshape"/device:CPU:0*$
_output_shapes
:��*
T0
�
&gradients/loss/nce_loss/Mul_grad/Sum_1Sum&gradients/loss/nce_loss/Mul_grad/mul_18gradients/loss/nce_loss/Mul_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0
�
*gradients/loss/nce_loss/Mul_grad/Reshape_1Reshape&gradients/loss/nce_loss/Mul_grad/Sum_1(gradients/loss/nce_loss/Mul_grad/Shape_1"/device:CPU:0*4
_output_shapes"
 :������������������*
Tshape0*
T0
�
1gradients/loss/nce_loss/Mul_grad/tuple/group_depsNoOp)^gradients/loss/nce_loss/Mul_grad/Reshape+^gradients/loss/nce_loss/Mul_grad/Reshape_1"/device:CPU:0
�
9gradients/loss/nce_loss/Mul_grad/tuple/control_dependencyIdentity(gradients/loss/nce_loss/Mul_grad/Reshape2^gradients/loss/nce_loss/Mul_grad/tuple/group_deps"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/Mul_grad/Reshape*$
_output_shapes
:��*
T0
�
;gradients/loss/nce_loss/Mul_grad/tuple/control_dependency_1Identity*gradients/loss/nce_loss/Mul_grad/Reshape_12^gradients/loss/nce_loss/Mul_grad/tuple/group_deps"/device:CPU:0*=
_class3
1/loc:@gradients/loss/nce_loss/Mul_grad/Reshape_1*4
_output_shapes"
 :������������������*
T0
�
-gradients/loss/nce_loss/ExpandDims_grad/ShapeConst"/device:CPU:0*
_output_shapes
:*
valueB"�   �   *
dtype0
�
/gradients/loss/nce_loss/ExpandDims_grad/ReshapeReshape9gradients/loss/nce_loss/Mul_grad/tuple/control_dependency-gradients/loss/nce_loss/ExpandDims_grad/Shape"/device:CPU:0* 
_output_shapes
:
��*
Tshape0*
T0
�
,gradients/loss/nce_loss/Reshape_1_grad/ShapeShapeloss/nce_loss/Slice"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
�
.gradients/loss/nce_loss/Reshape_1_grad/ReshapeReshape;gradients/loss/nce_loss/Mul_grad/tuple/control_dependency_1,gradients/loss/nce_loss/Reshape_1_grad/Shape"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
�
gradients/AddN_2AddN>gradients/loss/nce_loss/MatMul_1_grad/tuple/control_dependency/gradients/loss/nce_loss/ExpandDims_grad/Reshape"/device:CPU:0*?
_class5
31loc:@gradients/loss/nce_loss/MatMul_1_grad/MatMul*
N*
T0* 
_output_shapes
:
��
�
gradients/loss/embed_grad/ShapeConst"/device:CPU:0*%
_class
loc:@embed/embed_matrix*
_output_shapes
:*
valueB"P�  �   *
dtype0
p
gradients/loss/embed_grad/SizeConst"/device:CPU:0*
_output_shapes
: *
value
B :�*
dtype0
y
(gradients/loss/embed_grad/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
$gradients/loss/embed_grad/ExpandDims
ExpandDimsgradients/loss/embed_grad/Size(gradients/loss/embed_grad/ExpandDims/dim"/device:CPU:0*
_output_shapes
:*
T0*

Tdim0
�
-gradients/loss/embed_grad/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
/gradients/loss/embed_grad/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
/gradients/loss/embed_grad/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
'gradients/loss/embed_grad/strided_sliceStridedSlicegradients/loss/embed_grad/Shape-gradients/loss/embed_grad/strided_slice/stack/gradients/loss/embed_grad/strided_slice/stack_1/gradients/loss/embed_grad/strided_slice/stack_2"/device:CPU:0*
_output_shapes
:*
shrink_axis_mask *
end_mask*
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 
v
%gradients/loss/embed_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
 gradients/loss/embed_grad/concatConcatV2$gradients/loss/embed_grad/ExpandDims'gradients/loss/embed_grad/strided_slice%gradients/loss/embed_grad/concat/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
!gradients/loss/embed_grad/ReshapeReshapegradients/AddN_2 gradients/loss/embed_grad/concat"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
�
#gradients/loss/embed_grad/Reshape_1Reshapedata/center_words$gradients/loss/embed_grad/ExpandDims"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0
x
'gradients/loss/nce_loss/Slice_grad/RankConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
(gradients/loss/nce_loss/Slice_grad/ShapeShapeloss/nce_loss/Slice"/device:CPU:0*
_output_shapes
:*
T0*
out_type0
{
*gradients/loss/nce_loss/Slice_grad/stack/1Const"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
(gradients/loss/nce_loss/Slice_grad/stackPack'gradients/loss/nce_loss/Slice_grad/Rank*gradients/loss/nce_loss/Slice_grad/stack/1"/device:CPU:0*
_output_shapes
:*
N*
T0*

axis 
�
*gradients/loss/nce_loss/Slice_grad/ReshapeReshapeloss/nce_loss/Slice/begin(gradients/loss/nce_loss/Slice_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0
�
*gradients/loss/nce_loss/Slice_grad/Shape_1Const"/device:CPU:0*
_output_shapes
:*
valueB"�   �   *
dtype0
�
&gradients/loss/nce_loss/Slice_grad/subSub*gradients/loss/nce_loss/Slice_grad/Shape_1(gradients/loss/nce_loss/Slice_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0
�
(gradients/loss/nce_loss/Slice_grad/sub_1Sub&gradients/loss/nce_loss/Slice_grad/subloss/nce_loss/Slice/begin"/device:CPU:0*
_output_shapes
:*
T0
�
,gradients/loss/nce_loss/Slice_grad/Reshape_1Reshape(gradients/loss/nce_loss/Slice_grad/sub_1(gradients/loss/nce_loss/Slice_grad/stack"/device:CPU:0*
_output_shapes

:*
Tshape0*
T0

.gradients/loss/nce_loss/Slice_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
�
)gradients/loss/nce_loss/Slice_grad/concatConcatV2*gradients/loss/nce_loss/Slice_grad/Reshape,gradients/loss/nce_loss/Slice_grad/Reshape_1.gradients/loss/nce_loss/Slice_grad/concat/axis"/device:CPU:0*
_output_shapes

:*
N*
T0*

Tidx0
�
&gradients/loss/nce_loss/Slice_grad/PadPad.gradients/loss/nce_loss/Reshape_1_grad/Reshape)gradients/loss/nce_loss/Slice_grad/concat"/device:CPU:0* 
_output_shapes
:
��*
T0*
	Tpaddings0
�
gradients/AddN_3AddN(gradients/loss/nce_loss/Slice_2_grad/Pad&gradients/loss/nce_loss/Slice_grad/Pad"/device:CPU:0*;
_class1
/-loc:@gradients/loss/nce_loss/Slice_2_grad/Pad*
N*
T0* 
_output_shapes
:
��
�
3gradients/loss/nce_loss/embedding_lookup_grad/ShapeConst"/device:CPU:0*"
_class
loc:@loss/nce_weight*
_output_shapes
:*
valueB"P�  �   *
dtype0
�
2gradients/loss/nce_loss/embedding_lookup_grad/SizeConst"/device:CPU:0*
_output_shapes
: *
value
B :�*
dtype0
�
<gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims/dimConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
8gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims
ExpandDims2gradients/loss/nce_loss/embedding_lookup_grad/Size<gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims/dim"/device:CPU:0*
_output_shapes
:*
T0*

Tdim0
�
Agradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
Cgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
�
Cgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
�
;gradients/loss/nce_loss/embedding_lookup_grad/strided_sliceStridedSlice3gradients/loss/nce_loss/embedding_lookup_grad/ShapeAgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stackCgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_1Cgradients/loss/nce_loss/embedding_lookup_grad/strided_slice/stack_2"/device:CPU:0*
_output_shapes
:*
shrink_axis_mask *
end_mask*
ellipsis_mask *
T0*
new_axis_mask *
Index0*

begin_mask 
�
9gradients/loss/nce_loss/embedding_lookup_grad/concat/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
�
4gradients/loss/nce_loss/embedding_lookup_grad/concatConcatV28gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims;gradients/loss/nce_loss/embedding_lookup_grad/strided_slice9gradients/loss/nce_loss/embedding_lookup_grad/concat/axis"/device:CPU:0*
_output_shapes
:*
N*
T0*

Tidx0
�
5gradients/loss/nce_loss/embedding_lookup_grad/ReshapeReshapegradients/AddN_34gradients/loss/nce_loss/embedding_lookup_grad/concat"/device:CPU:0*0
_output_shapes
:������������������*
Tshape0*
T0
�
7gradients/loss/nce_loss/embedding_lookup_grad/Reshape_1Reshapeloss/nce_loss/concat8gradients/loss/nce_loss/embedding_lookup_grad/ExpandDims"/device:CPU:0*
_output_shapes	
:�*
Tshape0*
T0	
q
GradientDescent/learning_rateConst"/device:CPU:0*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
-GradientDescent/update_embed/embed_matrix/mulMul!gradients/loss/embed_grad/ReshapeGradientDescent/learning_rate"/device:CPU:0*%
_class
loc:@embed/embed_matrix*0
_output_shapes
:������������������*
T0
�
4GradientDescent/update_embed/embed_matrix/ScatterSub
ScatterSubembed/embed_matrix#gradients/loss/embed_grad/Reshape_1-GradientDescent/update_embed/embed_matrix/mul"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0*
Tindices0*
use_locking( 
�
*GradientDescent/update_loss/nce_weight/mulMul5gradients/loss/nce_loss/embedding_lookup_grad/ReshapeGradientDescent/learning_rate"/device:CPU:0*"
_class
loc:@loss/nce_weight*0
_output_shapes
:������������������*
T0
�
1GradientDescent/update_loss/nce_weight/ScatterSub
ScatterSubloss/nce_weight7gradients/loss/nce_loss/embedding_lookup_grad/Reshape_1*GradientDescent/update_loss/nce_weight/mul"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0*
Tindices0	*
use_locking( 
�
(GradientDescent/update_loss/nce_bias/mulMul7gradients/loss/nce_loss/embedding_lookup_1_grad/ReshapeGradientDescent/learning_rate"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes	
:�*
T0
�
/GradientDescent/update_loss/nce_bias/ScatterSub
ScatterSubloss/nce_bias9gradients/loss/nce_loss/embedding_lookup_1_grad/Reshape_1(GradientDescent/update_loss/nce_bias/mul"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0*
Tindices0	*
use_locking( 
�
GradientDescent/updateNoOp5^GradientDescent/update_embed/embed_matrix/ScatterSub2^GradientDescent/update_loss/nce_weight/ScatterSub0^GradientDescent/update_loss/nce_bias/ScatterSub"/device:CPU:0
�
GradientDescent/valueConst^GradientDescent/update*
_class
loc:@global_step*
_output_shapes
: *
value	B :*
dtype0
�
GradientDescent	AssignAddglobal_stepGradientDescent/value*
_class
loc:@global_step*
_output_shapes
: *
T0*
use_locking( 
b
summaries/loss/tagsConst*
_output_shapes
: *
valueB Bsummaries/loss*
dtype0
`
summaries/lossScalarSummarysummaries/loss/tags	loss/loss*
_output_shapes
: *
T0
u
summaries/histogram_loss/tagConst*
_output_shapes
: *)
value B Bsummaries/histogram_loss*
dtype0
v
summaries/histogram_lossHistogramSummarysummaries/histogram_loss/tag	loss/loss*
_output_shapes
: *
T0
w
summaries/Merge/MergeSummaryMergeSummarysummaries/losssummaries/histogram_loss*
_output_shapes
: *
N
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
�
save/SaveV2/tensor_namesConst*
_output_shapes
:*T
valueKBIBembed/embed_matrixBglobal_stepBloss/nce_biasBloss/nce_weight*
dtype0
k
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
valueBB B B B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesembed/embed_matrixglobal_steploss/nce_biasloss/nce_weight*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*'
valueBBembed/embed_matrix*
dtype0
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
�
save/AssignAssignembed/embed_matrixsave/RestoreV2"/device:CPU:0*%
_class
loc:@embed/embed_matrix*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
q
save/RestoreV2_1/tensor_namesConst*
_output_shapes
:* 
valueBBglobal_step*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save/Assign_1Assignglobal_stepsave/RestoreV2_1*
_class
loc:@global_step*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
save/RestoreV2_2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*"
valueBBloss/nce_bias*
dtype0
y
!save/RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
�
save/Assign_2Assignloss/nce_biassave/RestoreV2_2"/device:CPU:0* 
_class
loc:@loss/nce_bias*
_output_shapes

:І*
T0*
validate_shape(*
use_locking(
�
save/RestoreV2_3/tensor_namesConst"/device:CPU:0*
_output_shapes
:*$
valueBBloss/nce_weight*
dtype0
y
!save/RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueB
B *
dtype0
�
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
�
save/Assign_3Assignloss/nce_weightsave/RestoreV2_3"/device:CPU:0*"
_class
loc:@loss/nce_weight*!
_output_shapes
:І�*
T0*
validate_shape(*
use_locking(
-
save/restore_all/NoOpNoOp^save/Assign_1
\
save/restore_all/NoOp_1NoOp^save/Assign^save/Assign_2^save/Assign_3"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
&
	init/NoOpNoOp^global_step/Assign
n
init/NoOp_1NoOp^embed/embed_matrix/Assign^loss/nce_weight/Assign^loss/nce_bias/Assign"/device:CPU:0
&
initNoOp
^init/NoOp^init/NoOp_1""=
	summaries0
.
summaries/loss:0
summaries/histogram_loss:0"
train_op

GradientDescent"�
	variables��
7
global_step:0global_step/Assignglobal_step/read:0
L
embed/embed_matrix:0embed/embed_matrix/Assignembed/embed_matrix/read:0
C
loss/nce_weight:0loss/nce_weight/Assignloss/nce_weight/read:0
=
loss/nce_bias:0loss/nce_bias/Assignloss/nce_bias/read:0"�
trainable_variables��
L
embed/embed_matrix:0embed/embed_matrix/Assignembed/embed_matrix/read:0
C
loss/nce_weight:0loss/nce_weight/Assignloss/nce_weight/read:0
=
loss/nce_bias:0loss/nce_bias/Assignloss/nce_bias/read:0݄���       {9�	?9��{Y�A*�

summaries/loss�(�C
}
summaries/histogram_loss*a	    ep@    ep@      �?!    ep@) �����@2�|�6��o@�D:�tq@�������:              �?        �dO�       A�(	h[��{Y�A*�

summaries/lossˎC
}
summaries/histogram_loss*a	   �a�q@   �a�q@      �?!   �a�q@)@�g�x��@2�D:�tq@iK�i3s@�������:              �?        B;���       A�(	x��{Y�A*�

summaries/loss��sC
}
summaries/histogram_loss*a	    urn@    urn@      �?!    urn@) �K�4��@2}+��
�l@�|�6��o@�������:              �?        ��`�       A�(	`���{Y�A*�

summaries/loss���C
}
summaries/histogram_loss*a	   `�p@   `�p@      �?!   `�p@)@��)(�@2�|�6��o@�D:�tq@�������:              �?        }��ä       A�(	���{Y�A*�

summaries/loss���C
}
summaries/histogram_loss*a	   ��q@   ��q@      �?!   ��q@) 䔐@�@2�|�6��o@�D:�tq@�������:              �?        nw��       A�(	>̂�{Y�A*�

summaries/loss�ÈC
}
summaries/histogram_loss*a	   �pq@   �pq@      �?!   �pq@) �Z�D�@2�|�6��o@�D:�tq@�������:              �?        ����       A�(	`悗{Y�A*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�2p@   @�2p@      �?!   @�2p@) ��e�@2�|�6��o@�D:�tq@�������:              �?        �q��       A�(	���{Y�A*�

summaries/loss�,�C
}
summaries/histogram_loss*a	   ���p@   ���p@      �?!   ���p@)@��s��@2�|�6��o@�D:�tq@�������:              �?        ��!v�       A�(	���{Y�A*�

summaries/loss���C
}
summaries/histogram_loss*a	   �S�p@   �S�p@      �?!   �S�p@) a��'�@2�|�6��o@�D:�tq@�������:              �?        �gSg�       A�(	�4��{Y�A	*�

summaries/loss�C
}
summaries/histogram_loss*a	   ��!p@   ��!p@      �?!   ��!p@) 1�?D�@2�|�6��o@�D:�tq@�������:              �?        w�J��       A�(	iR��{Y�A
*�

summaries/loss%��C
}
summaries/histogram_loss*a	   ���p@   ���p@      �?!   ���p@)@V�����@2�|�6��o@�D:�tq@�������:              �?        ���       A�(	�r��{Y�A*�

summaries/loss�C
}
summaries/histogram_loss*a	   @��p@   @��p@      �?!   @��p@) �����@2�|�6��o@�D:�tq@�������:              �?        ��]�       A�(	����{Y�A*�

summaries/losso�C
}
summaries/histogram_loss*a	   �M�p@   �M�p@      �?!   �M�p@)@s���@2�|�6��o@�D:�tq@�������:              �?        K��       A�(	禃�{Y�A*�

summaries/loss�nC
}
summaries/histogram_loss*a	   �\�m@   �\�m@      �?!   �\�m@) �)���@2}+��
�l@�|�6��o@�������:              �?        _�m�       A�(	]���{Y�A*�

summaries/loss��C
}
summaries/histogram_loss*a	   ��`p@   ��`p@      �?!   ��`p@) �O�m��@2�|�6��o@�D:�tq@�������:              �?        BI�q�       A�(	8ك�{Y�A*�

summaries/loss_{C
}
summaries/histogram_loss*a	   ��oo@   ��oo@      �?!   ��oo@) �,u`��@2}+��
�l@�|�6��o@�������:              �?        �Fq�       A�(	��{Y�A*�

summaries/loss>pC
}
summaries/histogram_loss*a	   `�n@   `�n@      �?!   `�n@) ����.�@2}+��
�l@�|�6��o@�������:              �?        uF�ݤ       A�(	V��{Y�A*�

summaries/loss&�lC
}
summaries/histogram_loss*a	   �Ěm@   �Ěm@      �?!   �Ěm@)��q&qc�@2}+��
�l@�|�6��o@�������:              �?        �j��       A�(	�"��{Y�A*�

summaries/loss��=C
}
summaries/histogram_loss*a	   @V�g@   @V�g@      �?!   @V�g@)�x���@2�Y��=�e@����*�g@�������:              �?        3{T>�       A�(	�=��{Y�A*�

summaries/lossd�tC
}
summaries/histogram_loss*a	   �̖n@   �̖n@      �?!   �̖n@) �J�=�@2}+��
�l@�|�6��o@�������:              �?        ��P(�       A�(	mX��{Y�A*�

summaries/loss�QC
}
summaries/histogram_loss*a	   �=j@   �=j@      �?!   �=j@)�pLn���@2�'�;�:j@}+��
�l@�������:              �?        OG���       A�(	�o��{Y�A*�

summaries/loss� zC
}
summaries/histogram_loss*a	   �Do@   �Do@      �?!   �Do@) A�L���@2}+��
�l@�|�6��o@�������:              �?        �׺E�       A�(	Y���{Y�A*�

summaries/loss�(cC
}
summaries/histogram_loss*a	   `el@   `el@      �?!   `el@) �Y*!2�@2�'�;�:j@}+��
�l@�������:              �?        RC��       A�(	𣄗{Y�A*�

summaries/loss��sC
}
summaries/histogram_loss*a	    ?pn@    ?pn@      �?!    ?pn@) �\ ��@2}+��
�l@�|�6��o@�������:              �?        �O�*�       A�(	����{Y�A*�

summaries/loss6�jC
}
summaries/histogram_loss*a	   �FVm@   �FVm@      �?!   �FVm@)�l��H��@2}+��
�l@�|�6��o@�������:              �?        [�$��       A�(	�Մ�{Y�A*�

summaries/lossL*sC
}
summaries/histogram_loss*a	   �Ien@   �Ien@      �?!   �Ien@) Ҡh*��@2}+��
�l@�|�6��o@�������:              �?        )�Ƥ       A�(	(���{Y�A*�

summaries/lossd_C
}
summaries/histogram_loss*a	   �L�k@   �L�k@      �?!   �L�k@) �Fq!L�@2�'�;�:j@}+��
�l@�������:              �?        M�g[�       A�(	���{Y�A*�

summaries/loss�pC
}
summaries/histogram_loss*a	   �Bn@   �Bn@      �?!   �Bn@)�<Kk�>�@2}+��
�l@�|�6��o@�������:              �?        .��       A�(	�%��{Y�A*�

summaries/lossF�nC
}
summaries/histogram_loss*a	   ���m@   ���m@      �?!   ���m@)�d<XA��@2}+��
�l@�|�6��o@�������:              �?        �c��       A�(	O?��{Y�A*�

summaries/loss"�YC
}
summaries/histogram_loss*a	   @�5k@   @�5k@      �?!   @�5k@)��ǂ#�@2�'�;�:j@}+��
�l@�������:              �?        ~j[�       A�(	�Z��{Y�A*�

summaries/loss�"9C
}
summaries/histogram_loss*a	   `V$g@   `V$g@      �?!   `V$g@) %Ame��@2�Y��=�e@����*�g@�������:              �?        ��3��       A�(	�r��{Y�A*�

summaries/loss�1bC
}
summaries/histogram_loss*a	   @<Fl@   @<Fl@      �?!   @<Fl@)�p	����@2�'�;�:j@}+��
�l@�������:              �?        �p�k�       A�(	����{Y�A *�

summaries/lossȵwC
}
summaries/histogram_loss*a	    ��n@    ��n@      �?!    ��n@) �� 	��@2}+��
�l@�|�6��o@�������:              �?        �2��       A�(	Ʀ��{Y�A!*�

summaries/loss�tLC
}
summaries/histogram_loss*a	    ��i@    ��i@      �?!    ��i@) ��NGi�@2����*�g@�'�;�:j@�������:              �?        .�о�       A�(	����{Y�A"*�

summaries/loss��?C
}
summaries/histogram_loss*a	   ���g@   ���g@      �?!   ���g@) ��@���@2����*�g@�'�;�:j@�������:              �?        �o��       A�(	ۅ�{Y�A#*�

summaries/loss��^C
}
summaries/histogram_loss*a	   ���k@   ���k@      �?!   ���k@)����=�@2�'�;�:j@}+��
�l@�������:              �?        �Mf�       A�(	�{Y�A$*�

summaries/losswC
}
summaries/histogram_loss*a	   @8�n@   @8�n@      �?!   @8�n@)���c��@2}+��
�l@�|�6��o@�������:              �?        eDc��       A�(	���{Y�A%*�

summaries/loss0y`C
}
summaries/histogram_loss*a	    &l@    &l@      �?!    &l@)  ͫ���@2�'�;�:j@}+��
�l@�������:              �?        �4��       A�(	�'��{Y�A&*�

summaries/loss�mUC
}
summaries/histogram_loss*a	   @��j@   @��j@      �?!   @��j@)�d}��=�@2�'�;�:j@}+��
�l@�������:              �?        S ���       A�(	�@��{Y�A'*�

summaries/loss��rC
}
summaries/histogram_loss*a	   �uPn@   �uPn@      �?!   �uPn@)�Hq���@2}+��
�l@�|�6��o@�������:              �?        _mY�       A�(	\Y��{Y�A(*�

summaries/loss��{C
}
summaries/histogram_loss*a	   �1qo@   �1qo@      �?!   �1qo@)�X�����@2}+��
�l@�|�6��o@�������:              �?        ic<Ť       A�(	ys��{Y�A)*�

summaries/loss��cC
}
summaries/histogram_loss*a	   `�wl@   `�wl@      �?!   `�wl@) yatS�@2�'�;�:j@}+��
�l@�������:              �?        �|��       A�(	����{Y�A**�

summaries/lossIBKC
}
summaries/histogram_loss*a	    Ihi@    Ihi@      �?!    Ihi@) �F,�@2����*�g@�'�;�:j@�������:              �?        g��Ƥ       A�(	褆�{Y�A+*�

summaries/loss��jC
}
summaries/histogram_loss*a	   @�Sm@   @�Sm@      �?!   @�Sm@)�L�����@2}+��
�l@�|�6��o@�������:              �?        � �=�       A�(	����{Y�A,*�

summaries/loss��C
}
summaries/histogram_loss*a	   ���q@   ���q@      �?!   ���q@) �6��<�@2�D:�tq@iK�i3s@�������:              �?        ��Ԥ       A�(	g׆�{Y�A-*�

summaries/lossv4WC
}
summaries/histogram_loss*a	   ���j@   ���j@      �?!   ���j@)�̄%��@2�'�;�:j@}+��
�l@�������:              �?        *hǈ�       A�(	�{Y�A.*�

summaries/lossX�uC
}
summaries/histogram_loss*a	    ��n@    ��n@      �?!    ��n@) �>v�@2}+��
�l@�|�6��o@�������:              �?        ��\�       A�(	g��{Y�A/*�

summaries/loss�6uC
}
summaries/histogram_loss*a	   @Ӧn@   @Ӧn@      �?!   @Ӧn@)��*�1\�@2}+��
�l@�|�6��o@�������:              �?        ��ut�       A�(	�$��{Y�A0*�

summaries/lossA�;C
}
summaries/histogram_loss*a	    �sg@    �sg@      �?!    �sg@) �ʴ/�@2�Y��=�e@����*�g@�������:              �?        ��o<�       A�(	�>��{Y�A1*�

summaries/loss�IC
}
summaries/histogram_loss*a	   �2i@   �2i@      �?!   �2i@) B��r��@2����*�g@�'�;�:j@�������:              �?        ��
��       A�(	~W��{Y�A2*�

summaries/loss�|oC
}
summaries/histogram_loss*a	    ��m@    ��m@      �?!    ��m@) &�R�@2}+��
�l@�|�6��o@�������:              �?        �+�y�       A�(	Gr��{Y�A3*�

summaries/losst�fC
}
summaries/histogram_loss*a	   ���l@   ���l@      �?!   ���l@) �i���@2}+��
�l@�|�6��o@�������:              �?        �xK��       A�(	ߋ��{Y�A4*�

summaries/loss�.xC
}
summaries/histogram_loss*a	   @�o@   @�o@      �?!   @�o@)�hkH�@2}+��
�l@�|�6��o@�������:              �?        ���
�       A�(	����{Y�A5*�

summaries/loss��aC
}
summaries/histogram_loss*a	   �P5l@   �P5l@      �?!   �P5l@) �r����@2�'�;�:j@}+��
�l@�������:              �?        Nz���       A�(	����{Y�A6*�

summaries/loss�TC
}
summaries/histogram_loss*a	   ��j@   ��j@      �?!   ��j@) �F��@2�'�;�:j@}+��
�l@�������:              �?        Æa<�       A�(	�؇�{Y�A7*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�#p@   @�#p@      �?!   @�#p@) "fEH�@2�|�6��o@�D:�tq@�������:              �?        ���ߤ       A�(	��{Y�A8*�

summaries/loss��tC
}
summaries/histogram_loss*a	    p�n@    p�n@      �?!    p�n@)  �bN�@2}+��
�l@�|�6��o@�������:              �?        y����       A�(	_��{Y�A9*�

summaries/lossi��C
}
summaries/histogram_loss*a	    �Pp@    �Pp@      �?!    �Pp@)@ąM2��@2�|�6��o@�D:�tq@�������:              �?        �WK'�       A�(	:$��{Y�A:*�

summaries/loss�qC
}
summaries/histogram_loss*a	   �� n@   �� n@      �?!   �� n@) ��$K]�@2}+��
�l@�|�6��o@�������:              �?        Y�*�       A�(	2=��{Y�A;*�

summaries/loss �PC
}
summaries/histogram_loss*a	    �j@    �j@      �?!    �j@) ���GF�@2����*�g@�'�;�:j@�������:              �?        � ���       A�(	�W��{Y�A<*�

summaries/lossv;TC
}
summaries/histogram_loss*a	   �n�j@   �n�j@      �?!   �n�j@)�L�'Q��@2�'�;�:j@}+��
�l@�������:              �?        p�$M�       A�(	�q��{Y�A=*�

summaries/lossC
}
summaries/histogram_loss*a	   �!�o@   �!�o@      �?!   �!�o@) k]��@2�|�6��o@�D:�tq@�������:              �?         nK�       A�(	����{Y�A>*�

summaries/lossl�DC
}
summaries/histogram_loss*a	   ���h@   ���h@      �?!   ���h@) ���o��@2����*�g@�'�;�:j@�������:              �?        l5�:�       A�(	<���{Y�A?*�

summaries/loss��\C
}
summaries/histogram_loss*a	   ��k@   ��k@      �?!   ��k@) �c���@2�'�;�:j@}+��
�l@�������:              �?        &J&�       A�(	ӿ��{Y�A@*�

summaries/loss�CC
}
summaries/histogram_loss*a	   � sh@   � sh@      �?!   � sh@) ~<��@2����*�g@�'�;�:j@�������:              �?        g�r��       A�(	�؈�{Y�AA*�

summaries/loss�D@C
}
summaries/histogram_loss*a	   ��h@   ��h@      �?!   ��h@)�\Lp��@2����*�g@�'�;�:j@�������:              �?        /���       A�(	E�{Y�AB*�

summaries/loss\�:C
}
summaries/histogram_loss*a	   ��[g@   ��[g@      �?!   ��[g@) "v���@2�Y��=�e@����*�g@�������:              �?        x���       A�(	���{Y�AC*�

summaries/loss��_C
}
summaries/histogram_loss*a	   ���k@   ���k@      �?!   ���k@)�uOs�@2�'�;�:j@}+��
�l@�������:              �?        n4�}�       A�(	'��{Y�AD*�

summaries/loss�zQC
}
summaries/histogram_loss*a	    R/j@    R/j@      �?!    R/j@)  �9+m�@2����*�g@�'�;�:j@�������:              �?        &����       A�(	W>��{Y�AE*�

summaries/loss��EC
}
summaries/histogram_loss*a	    w�h@    w�h@      �?!    w�h@) �
� �@2����*�g@�'�;�:j@�������:              �?        Ng�Ϥ       A�(	:W��{Y�AF*�

summaries/loss�rBC
}
summaries/histogram_loss*a	   �\Nh@   �\Nh@      �?!   �\Nh@) b��Jv�@2����*�g@�'�;�:j@�������:              �?        �;k�       A�(	�q��{Y�AG*�

summaries/loss']C
}
summaries/histogram_loss*a	   ���k@   ���k@      �?!   ���k@) ��l��@2�'�;�:j@}+��
�l@�������:              �?        e�毤       A�(	~���{Y�AH*�

summaries/loss�[C
}
summaries/histogram_loss*a	    �`k@    �`k@      �?!    �`k@)  ���l�@2�'�;�:j@}+��
�l@�������:              �?        �P%��       A�(	&���{Y�AI*�

summaries/loss�_C
}
summaries/histogram_loss*a	   �:�k@   �:�k@      �?!   �:�k@) �b>�M�@2�'�;�:j@}+��
�l@�������:              �?        �c`��       A�(	����{Y�AJ*�

summaries/loss��GC
}
summaries/histogram_loss*a	    ��h@    ��h@      �?!    ��h@)  5(v�@2����*�g@�'�;�:j@�������:              �?        ?�,ۤ       A�(	މ�{Y�AK*�

summaries/lossbPJC
}
summaries/histogram_loss*a	   @Ji@   @Ji@      �?!   @Ji@)���|^��@2����*�g@�'�;�:j@�������:              �?        hx	�       A�(	M���{Y�AL*�

summaries/lossf.@C
}
summaries/histogram_loss*a	   ��h@   ��h@      �?!   ��h@)�-��@2����*�g@�'�;�:j@�������:              �?        ��lˤ       A�(	��{Y�AM*�

summaries/lossp�EC
}
summaries/histogram_loss*a	    �h@    �h@      �?!    �h@)  ����@2����*�g@�'�;�:j@�������:              �?        ��4�       A�(	�2��{Y�AN*�

summaries/loss�4>C
}
summaries/histogram_loss*a	   ���g@   ���g@      �?!   ���g@) �3�H��@2�Y��=�e@����*�g@�������:              �?        ���H�       A�(	�N��{Y�AO*�

summaries/loss$HkC
}
summaries/histogram_loss*a	   �im@   �im@      �?!   �im@) ��Ͱ�@2}+��
�l@�|�6��o@�������:              �?        T��-�       A�(	�i��{Y�AP*�

summaries/loss� #C
}
summaries/histogram_loss*a	    `d@    `d@      �?!    `d@) @*8���@2C��ôc@�Y��=�e@�������:              �?        f�)�       A�(	����{Y�AQ*�

summaries/lossT�^C
}
summaries/histogram_loss*a	   ���k@   ���k@      �?!   ���k@) r��B�@2�'�;�:j@}+��
�l@�������:              �?        =]���       A�(	3���{Y�AR*�

summaries/loss�|C
}
summaries/histogram_loss*a	   �@�o@   �@�o@      �?!   �@�o@) 2u�-�@2}+��
�l@�|�6��o@�������:              �?        շXd�       A�(	����{Y�AS*�

summaries/loss��-C
}
summaries/histogram_loss*a	   ���e@   ���e@      �?!   ���e@) 2���@2�Y��=�e@����*�g@�������:              �?        sps?�       A�(	H܊�{Y�AT*�

summaries/loss[-�C
}
summaries/histogram_loss*a	   `�p@   `�p@      �?!   `�p@)@�G�X�@2�|�6��o@�D:�tq@�������:              �?        �7z�       A�(	���{Y�AU*�

summaries/loss#,_C
}
summaries/histogram_loss*a	   `��k@   `��k@      �?!   `��k@) ����Q�@2�'�;�:j@}+��
�l@�������:              �?        3�4�       A�(	���{Y�AV*�

summaries/loss. >C
}
summaries/histogram_loss*a	   ��g@   ��g@      �?!   ��g@)�����@2�Y��=�e@����*�g@�������:              �?        hi<ޤ       A�(	�-��{Y�AW*�

summaries/lossBe^C
}
summaries/histogram_loss*a	   @��k@   @��k@      �?!   @��k@)����x&�@2�'�;�:j@}+��
�l@�������:              �?        �{�z�       A�(	AJ��{Y�AX*�

summaries/loss52C
}
summaries/histogram_loss*a	    �Ff@    �Ff@      �?!    �Ff@) ��x�@2�Y��=�e@����*�g@�������:              �?        Ex�Ȥ       A�(	Ad��{Y�AY*�

summaries/lossf�YC
}
summaries/histogram_loss*a	   ��6k@   ��6k@      �?!   ��6k@)�&\�$�@2�'�;�:j@}+��
�l@�������:              �?        ���>�       A�(	�}��{Y�AZ*�

summaries/loss4?eC
}
summaries/histogram_loss*a	   ��l@   ��l@      �?!   ��l@) RTTD��@2�'�;�:j@}+��
�l@�������:              �?        ����       A�(	����{Y�A[*�

summaries/loss��0C
}
summaries/histogram_loss*a	   �~f@   �~f@      �?!   �~f@)@fI�r�@2�Y��=�e@����*�g@�������:              �?        6���       A�(	N���{Y�A\*�

summaries/loss4�YC
}
summaries/histogram_loss*a	   �8k@   �8k@      �?!   �8k@) R��&�@2�'�;�:j@}+��
�l@�������:              �?        t�� �       A�(	͋�{Y�A]*�

summaries/loss:�^C
}
summaries/histogram_loss*a	   @��k@   @��k@      �?!   @��k@)�$���0�@2�'�;�:j@}+��
�l@�������:              �?        ���ڤ       A�(	.勗{Y�A^*�

summaries/loss��9C
}
summaries/histogram_loss*a	    �<g@    �<g@      �?!    �<g@) �m���@2�Y��=�e@����*�g@�������:              �?        �qSp�       A�(	���{Y�A_*�

summaries/lossOv#C
}
summaries/histogram_loss*a	   ��nd@   ��nd@      �?!   ��nd@)@����@2C��ôc@�Y��=�e@�������:              �?        X>Ҥ       A�(	H��{Y�A`*�

summaries/loss\C
}
summaries/histogram_loss*a	   @��k@   @��k@      �?!   @��k@)��+���@2�'�;�:j@}+��
�l@�������:              �?        DYdf�       A�(	X7��{Y�Aa*�

summaries/loss��C
}
summaries/histogram_loss*a	   @ p@   @ p@      �?!   @ p@) ��!.�@2�|�6��o@�D:�tq@�������:              �?        7)���       A�(	zP��{Y�Ab*�

summaries/loss��!C
}
summaries/histogram_loss*a	   @Q2d@   @Q2d@      �?!   @Q2d@) �l]i~�@2C��ôc@�Y��=�e@�������:              �?        {�Xg�       A�(	rj��{Y�Ac*�

summaries/loss�RZC
}
summaries/histogram_loss*a	   �YJk@   �YJk@      �?!   �YJk@)��4$F�@2�'�;�:j@}+��
�l@�������:              �?        ��P�       A�(	U���{Y�Ad*�

summaries/loss�djC
}
summaries/histogram_loss*a	    �Lm@    �Lm@      �?!    �Lm@) �Ǎ���@2}+��
�l@�|�6��o@�������:              �?        �jVi�       A�(	ע��{Y�Ae*�

summaries/lossu]+C
}
summaries/histogram_loss*a	   ��ke@   ��ke@      �?!   ��ke@)@���@2C��ôc@�Y��=�e@�������:              �?        h� ��       A�(	����{Y�Af*�

summaries/loss��FC
}
summaries/histogram_loss*a	    �h@    �h@      �?!    �h@)  5��Q�@2����*�g@�'�;�:j@�������:              �?         ���       A�(	+ی�{Y�Ag*�

summaries/loss��AC
}
summaries/histogram_loss*a	   @�8h@   @�8h@      �?!   @�8h@)��F��U�@2����*�g@�'�;�:j@�������:              �?        t�Ғ�       A�(	<���{Y�Ah*�

summaries/loss,PC
}
summaries/histogram_loss*a	    �j@    �j@      �?!    �j@) H��(�@2����*�g@�'�;�:j@�������:              �?        
�J>�       A�(	���{Y�Ai*�

summaries/lossn�MC
}
summaries/histogram_loss*a	   ���i@   ���i@      �?!   ���i@)�hR�*��@2����*�g@�'�;�:j@�������:              �?        \���       A�(	�,��{Y�Aj*�

summaries/loss��QC
}
summaries/histogram_loss*a	   �R;j@   �R;j@      �?!   �R;j@) �p�Ԁ�@2�'�;�:j@}+��
�l@�������:              �?        �6�A�       A�(	�G��{Y�Ak*�

summaries/lossp�C
}
summaries/histogram_loss*a	    ��c@    ��c@      �?!    ��c@) @Q$��@2C��ôc@�Y��=�e@�������:              �?        czL�       A�(	�c��{Y�Al*�

summaries/loss��3C
}
summaries/histogram_loss*a	   ��~f@   ��~f@      �?!   ��~f@) D�qo��@2�Y��=�e@����*�g@�������:              �?        u%�J�       A�(	�~��{Y�Am*�

summaries/loss`�LC
}
summaries/histogram_loss*a	    ��i@    ��i@      �?!    ��i@) ��%ey�@2����*�g@�'�;�:j@�������:              �?        �˧�       A�(	����{Y�An*�

summaries/loss��kC
}
summaries/histogram_loss*a	    �pm@    �pm@      �?!    �pm@) p���@2}+��
�l@�|�6��o@�������:              �?        �D�R�       A�(	����{Y�Ao*�

summaries/lossnO>C
}
summaries/histogram_loss*a	   ���g@   ���g@      �?!   ���g@)�h��?��@2�Y��=�e@����*�g@�������:              �?        >+Ф       A�(	�э�{Y�Ap*�

summaries/loss2�3C
}
summaries/histogram_loss*a	   @frf@   @frf@      �?!   @frf@) q�#�}�@2�Y��=�e@����*�g@�������:              �?        �S�Ť       A�(	p{Y�Aq*�

summaries/lossJC
}
summaries/histogram_loss*a	   ��Ci@   ��Ci@      �?!   ��Ci@) bR�p��@2����*�g@�'�;�:j@�������:              �?        �
3��       A�(	�	��{Y�Ar*�

summaries/loss�@6C
}
summaries/histogram_loss*a	   ��f@   ��f@      �?!   ��f@) rΜ 8�@2�Y��=�e@����*�g@�������:              �?        �+��       A�(	�(��{Y�As*�

summaries/lossB#7C
}
summaries/histogram_loss*a	   @h�f@   @h�f@      �?!   @h�f@)���m`�@2�Y��=�e@����*�g@�������:              �?        R�)�       A�(	�E��{Y�At*�

summaries/lossReC
}
summaries/histogram_loss*a	   @��l@   @��l@      �?!   @��l@)�H����@2�'�;�:j@}+��
�l@�������:              �?        ė�]�       A�(	�c��{Y�Au*�

summaries/loss�dQC
}
summaries/histogram_loss*a	   ��,j@   ��,j@      �?!   ��,j@) "k�h�@2����*�g@�'�;�:j@�������:              �?        K��K�       A�(	؂��{Y�Av*�

summaries/loss�iRC
}
summaries/histogram_loss*a	   �8Mj@   �8Mj@      �?!   �8Mj@) �6��@2�'�;�:j@}+��
�l@�������:              �?        4�/��       A�(	ܟ��{Y�Aw*�

summaries/loss{IC
}
summaries/histogram_loss*a	   `�#i@   `�#i@      �?!   `�#i@) ��`N��@2����*�g@�'�;�:j@�������:              �?        u�Ӥ       A�(	ܻ��{Y�Ax*�

summaries/loss�DC
}
summaries/histogram_loss*a	   ���h@   ���h@      �?!   ���h@)�H����@2����*�g@�'�;�:j@�������:              �?         X3��       A�(	�َ�{Y�Ay*�

summaries/loss��*C
}
summaries/histogram_loss*a	    T[e@    T[e@      �?!    T[e@)  9�Ł�@2C��ôc@�Y��=�e@�������:              �?        �G�j�       A�(	���{Y�Az*�

summaries/loss�C
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@) 1�Z���@2߱�&�a@C��ôc@�������:              �?        ��U��       A�(	���{Y�A{*�

summaries/loss�KC
}
summaries/histogram_loss*a	   ��qi@   ��qi@      �?!   ��qi@) �|;�@2����*�g@�'�;�:j@�������:              �?        ���       A�(	p>��{Y�A|*�

summaries/lossA>.C
}
summaries/histogram_loss*a	    ��e@    ��e@      �?!    ��e@)@ ��+��@2�Y��=�e@����*�g@�������:              �?        ʄ
��       A�(	�\��{Y�A}*�

summaries/lossn�AC
}
summaries/histogram_loss*a	   �M=h@   �M=h@      �?!   �M=h@)��(j\�@2����*�g@�'�;�:j@�������:              �?        �[���       A�(	�~��{Y�A~*�

summaries/loss��<C
}
summaries/histogram_loss*a	    ��g@    ��g@      �?!    ��g@) B��'n�@2�Y��=�e@����*�g@�������:              �?        HH㶤       A�(	����{Y�A*�

summaries/lossftC
}
summaries/histogram_loss*a	   ��.b@   ��.b@      �?!   ��.b@) )&D��@2߱�&�a@C��ôc@�������:              �?        ��E��       ��	4���{Y�A�*�

summaries/losso�1C
}
summaries/histogram_loss*a	   ��0f@   ��0f@      �?!   ��0f@)@*���@2�Y��=�e@����*�g@�������:              �?        X3�2�       ��	sڏ�{Y�A�*�

summaries/lossz�#C
}
summaries/histogram_loss*a	   @wd@   @wd@      �?!   @wd@) ��-�@2C��ôc@�Y��=�e@�������:              �?        �'Х       ��	/���{Y�A�*�

summaries/lossqdlC
}
summaries/histogram_loss*a	    ��m@    ��m@      �?!    ��m@) <�*I�@2}+��
�l@�|�6��o@�������:              �?        N<05�       ��	���{Y�A�*�

summaries/loss��OC
}
summaries/histogram_loss*a	   @=�i@   @=�i@      �?!   @=�i@)�<����@2����*�g@�'�;�:j@�������:              �?        ���       ��	�4��{Y�A�*�

summaries/loss��0C
}
summaries/histogram_loss*a	    �f@    �f@      �?!    �f@)@������@2�Y��=�e@����*�g@�������:              �?        �:Mʥ       ��	3S��{Y�A�*�

summaries/loss��>C
}
summaries/histogram_loss*a	   �q�g@   �q�g@      �?!   �q�g@)�X��K��@2����*�g@�'�;�:j@�������:              �?        .�D��       ��	�s��{Y�A�*�

summaries/loss�K6C
}
summaries/histogram_loss*a	   �q�f@   �q�f@      �?!   �q�f@)�X���9�@2�Y��=�e@����*�g@�������:              �?        ��h�       ��	����{Y�A�*�

summaries/loss��MC
}
summaries/histogram_loss*a	   @]�i@   @]�i@      �?!   @]�i@)��;z��@2����*�g@�'�;�:j@�������:              �?        -��G�       ��	����{Y�A�*�

summaries/loss�IC
}
summaries/histogram_loss*a	   @#3i@   @#3i@      �?!   @#3i@)�Ԃ�8��@2����*�g@�'�;�:j@�������:              �?        ��\�       ��	[А�{Y�A�*�

summaries/loss
�C
}
summaries/histogram_loss*a	   @a�c@   @a�c@      �?!   @a�c@) o���@2߱�&�a@C��ôc@�������:              �?        \�ͺ�       ��	9�{Y�A�*�

summaries/loss�SaC
}
summaries/histogram_loss*a	   �u*l@   �u*l@      �?!   �u*l@) 4����@2�'�;�:j@}+��
�l@�������:              �?        ��       ��	���{Y�A�*�

summaries/loss��YC
}
summaries/histogram_loss*a	   `P;k@   `P;k@      �?!   `P;k@) �+��,�@2�'�;�:j@}+��
�l@�������:              �?        pb�Z�       ��	�-��{Y�A�*�

summaries/loss�YYC
}
summaries/histogram_loss*a	   �4+k@   �4+k@      �?!   �4+k@) "n�"�@2�'�;�:j@}+��
�l@�������:              �?        Ϊ#x�       ��	fK��{Y�A�*�

summaries/lossL� C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@) ����@�@2C��ôc@�Y��=�e@�������:              �?        ��J�       ��	Qj��{Y�A�*�

summaries/lossn�cC
}
summaries/histogram_loss*a	   �-{l@   �-{l@      �?!   �-{l@)�h�7jY�@2�'�;�:j@}+��
�l@�������:              �?        ��       ��	3���{Y�A�*�

summaries/loss�d2C
}
summaries/histogram_loss*a	   ��Lf@   ��Lf@      �?!   ��Lf@)@����@2�Y��=�e@����*�g@�������:              �?        ���ѥ       ��	����{Y�A�*�

summaries/lossc��B
}
summaries/histogram_loss*a	   `Z@   `Z@      �?!   `Z@) �>�l��@2r;`�xX@��iI�Z@�������:              �?        bH4�       ��	Ƒ�{Y�A�*�

summaries/loss3}-C
}
summaries/histogram_loss*a	   `��e@   `��e@      �?!   `��e@)@
6
�d�@2�Y��=�e@����*�g@�������:              �?        B�7,�       ��	q⑗{Y�A�*�

summaries/loss��GC
}
summaries/histogram_loss*a	    ��h@    ��h@      �?!    ��h@) ����@2����*�g@�'�;�:j@�������:              �?        קRͥ       ��	.��{Y�A�*�

summaries/loss��IC
}
summaries/histogram_loss*a	   `�5i@   `�5i@      �?!   `�5i@) 9�Ψ��@2����*�g@�'�;�:j@�������:              �?        �&S��       ��	�"��{Y�A�*�

summaries/loss[�GC
}
summaries/histogram_loss*a	   `��h@   `��h@      �?!   `��h@) �4���@2����*�g@�'�;�:j@�������:              �?        �kh�       ��	}@��{Y�A�*�

summaries/lossX�hC
}
summaries/histogram_loss*a	    m@    m@      �?!    m@) �C��z�@2}+��
�l@�|�6��o@�������:              �?        ��K�       ��	�]��{Y�A�*�

summaries/loss�'C
}
summaries/histogram_loss*a	   ���a@   ���a@      �?!   ���a@)@�d>u�@2��GL:I`@߱�&�a@�������:              �?        HMnޥ       ��	�}��{Y�A�*�

summaries/loss>�-C
}
summaries/histogram_loss*a	   ��e@   ��e@      �?!   ��e@) �<����@2�Y��=�e@����*�g@�������:              �?        �L
��       ��	����{Y�A�*�

summaries/loss��YC
}
summaries/histogram_loss*a	   `2k@   `2k@      �?!   `2k@) G�t��@2�'�;�:j@}+��
�l@�������:              �?        � s�       ��	���{Y�A�*�

summaries/loss$O3C
}
summaries/histogram_loss*a	   ��if@   ��if@      �?!   ��if@) D�3�e�@2�Y��=�e@����*�g@�������:              �?        �	�       ��	5Ԓ�{Y�A�*�

summaries/loss��-C
}
summaries/histogram_loss*a	   `�e@   `�e@      �?!   `�e@)@z�B~�@2�Y��=�e@����*�g@�������:              �?        �ާ��       ��	��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    �c@    �c@      �?!    �c@) Np�@2߱�&�a@C��ôc@�������:              �?        ����       ��	R��{Y�A�*�

summaries/loss]�7C
}
summaries/histogram_loss*a	   ���f@   ���f@      �?!   ���f@) 9K�~�@2�Y��=�e@����*�g@�������:              �?        �H玥       ��	�,��{Y�A�*�

summaries/loss��%C
}
summaries/histogram_loss*a	   ���d@   ���d@      �?!   ���d@) aC4���@2C��ôc@�Y��=�e@�������:              �?        �\��       ��	VI��{Y�A�*�

summaries/lossd�`C
}
summaries/histogram_loss*a	   ��l@   ��l@      �?!   ��l@) �����@2�'�;�:j@}+��
�l@�������:              �?        r�gΥ       ��	If��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   `=�b@   `=�b@      �?!   `=�b@)@n�.���@2߱�&�a@C��ôc@�������:              �?        O#Ֆ�       ��	����{Y�A�*�

summaries/lossn2%C
}
summaries/histogram_loss*a	   �M�d@   �M�d@      �?!   �M�d@) ���@2C��ôc@�Y��=�e@�������:              �?        ��c/�       ��	����{Y�A�*�

summaries/lossSu/C
}
summaries/histogram_loss*a	   `��e@   `��e@      �?!   `��e@)@:�Og�@2�Y��=�e@����*�g@�������:              �?        v�ɫ�       ��	侓�{Y�A�*�

summaries/lossNUC
}
summaries/histogram_loss*a	   ���b@   ���b@      �?!   ���b@) �8��|�@2߱�&�a@C��ôc@�������:              �?        ��%
�       ��	�ߓ�{Y�A�*�

summaries/loss�M@C
}
summaries/histogram_loss*a	   @�	h@   @�	h@      �?!   @�	h@)��$P��@2����*�g@�'�;�:j@�������:              �?        )L> �       ��	" ��{Y�A�*�

summaries/loss��LC
}
summaries/histogram_loss*a	   @�i@   @�i@      �?!   @�i@)��Wۤ��@2����*�g@�'�;�:j@�������:              �?        $(�t�       ��	���{Y�A�*�

summaries/lossuHC
}
summaries/histogram_loss*a	   �I`@   �I`@      �?!   �I`@)@^��j��@2~
�i�]@��GL:I`@�������:              �?        ŀ�$�       ��	�<��{Y�A�*�

summaries/loss&m.C
}
summaries/histogram_loss*a	   ���e@   ���e@      �?!   ���e@) iX�#��@2�Y��=�e@����*�g@�������:              �?        ��V�       ��	�Z��{Y�A�*�

summaries/lossYDC
}
summaries/histogram_loss*a	   @ �h@   @ �h@      �?!   @ �h@)��L@��@2����*�g@�'�;�:j@�������:              �?        ��6^�       ��	�u��{Y�A�*�

summaries/loss��CC
}
summaries/histogram_loss*a	    �xh@    �xh@      �?!    �xh@)  �K=��@2����*�g@�'�;�:j@�������:              �?        ^���       ��	F���{Y�A�*�

summaries/loss�9C
}
summaries/histogram_loss*a	   `\#g@   `\#g@      �?!   `\#g@) �����@2�Y��=�e@����*�g@�������:              �?        ����       ��	N���{Y�A�*�

summaries/loss��%C
}
summaries/histogram_loss*a	   `��d@   `��d@      �?!   `��d@)@�b�k��@2C��ôc@�Y��=�e@�������:              �?        V���       ��	�є�{Y�A�*�

summaries/losso�FC
}
summaries/histogram_loss*a	   ���h@   ���h@      �?!   ���h@) �M�J�@2����*�g@�'�;�:j@�������:              �?        �
�@�       ��	��{Y�A�*�

summaries/loss9�_C
}
summaries/histogram_loss*a	    G�k@    G�k@      �?!    G�k@) bZh�@2�'�;�:j@}+��
�l@�������:              �?        e��F�       ��	���{Y�A�*�

summaries/loss6v4C
}
summaries/histogram_loss*a	   �Ǝf@   �Ǝf@      �?!   �Ǝf@) �t����@2�Y��=�e@����*�g@�������:              �?        bf��       ��	�,��{Y�A�*�

summaries/lossa�9C
}
summaries/histogram_loss*a	    �:g@    �:g@      �?!    �:g@) X����@2�Y��=�e@����*�g@�������:              �?        ��5ӥ       ��	QK��{Y�A�*�

summaries/loss�@0C
}
summaries/histogram_loss*a	    f@    f@      �?!    f@)@lA�CV�@2�Y��=�e@����*�g@�������:              �?        ��s�       ��	
e��{Y�A�*�

summaries/loss2�C
}
summaries/histogram_loss*a	   @F:c@   @F:c@      �?!   @F:c@) q�;�@2߱�&�a@C��ôc@�������:              �?        =1Z&�       ��	���{Y�A�*�

summaries/loss�WC
}
summaries/histogram_loss*a	   �a�j@   �a�j@      �?!   �a�j@) �?w��@2�'�;�:j@}+��
�l@�������:              �?        ��"�       ��	I���{Y�A�*�

summaries/loss�1C
}
summaries/histogram_loss*a	    �8f@    �8f@      �?!    �8f@) ���:��@2�Y��=�e@����*�g@�������:              �?        $��̥       ��	,���{Y�A�*�

summaries/loss �C
}
summaries/histogram_loss*a	    �c@    �c@      �?!    �c@)  @4~J�@2C��ôc@�Y��=�e@�������:              �?        ����       ��	sە�{Y�A�*�

summaries/loss7C
}
summaries/histogram_loss*a	   ���f@   ���f@      �?!   ���f@) �Q}�\�@2�Y��=�e@����*�g@�������:              �?        a}Y'�       ��		���{Y�A�*�

summaries/loss&YC
}
summaries/histogram_loss*a	   �$�b@   �$�b@      �?!   �$�b@) i�Q9��@2߱�&�a@C��ôc@�������:              �?         dW�       ��	� ��{Y�A�*�

summaries/loss�>#C
}
summaries/histogram_loss*a	    �gd@    �gd@      �?!    �gd@)@�09�@2C��ôc@�Y��=�e@�������:              �?        ����       ��	[?��{Y�A�*�

summaries/loss�UC
}
summaries/histogram_loss*a	   �új@   �új@      �?!   �új@)�pE �S�@2�'�;�:j@}+��
�l@�������:              �?        ���إ       ��	_^��{Y�A�*�

summaries/loss`MC
}
summaries/histogram_loss*a	    ��i@    ��i@      �?!    ��i@) ��g��@2����*�g@�'�;�:j@�������:              �?        d��G�       ��	�y��{Y�A�*�

summaries/loss�TC
}
summaries/histogram_loss*a	    ��b@    ��b@      �?!    ��b@) � H]�@2߱�&�a@C��ôc@�������:              �?        ��!�       ��	N���{Y�A�*�

summaries/lossl�C
}
summaries/histogram_loss*a	   ��c@   ��c@      �?!   ��c@) d�_8��@2߱�&�a@C��ôc@�������:              �?        �䐓�       ��	����{Y�A�*�

summaries/loss�0C
}
summaries/histogram_loss*a	    f@    f@      �?!    f@) g�E�@2�Y��=�e@����*�g@�������:              �?        �ǥ       ��	�ؖ�{Y�A�*�

summaries/loss�,.C
}
summaries/histogram_loss*a	   ���e@   ���e@      �?!   ���e@)@
Ǡ;��@2�Y��=�e@����*�g@�������:              �?        ���       ��	����{Y�A�*�

summaries/loss��?C
}
summaries/histogram_loss*a	    X�g@    X�g@      �?!    X�g@) ��؋��@2����*�g@�'�;�:j@�������:              �?        FV�       ��	��{Y�A�*�

summaries/loss�6C
}
summaries/histogram_loss*a	   ���f@   ���f@      �?!   ���f@)���>T�@2�Y��=�e@����*�g@�������:              �?        �:7�       ��	e4��{Y�A�*�

summaries/lossUC
}
summaries/histogram_loss*a	   ��bb@   ��bb@      �?!   ��bb@)@��o� �@2߱�&�a@C��ôc@�������:              �?        �b_ԥ       ��	V��{Y�A�*�

summaries/loss�AC
}
summaries/histogram_loss*a	   �3�a@   �3�a@      �?!   �3�a@) �%F�
�@2��GL:I`@߱�&�a@�������:              �?        Y��ե       ��	�u��{Y�A�*�

summaries/lossn�!C
}
summaries/histogram_loss*a	   �M:d@   �M:d@      �?!   �M:d@) �)Ֆ��@2C��ôc@�Y��=�e@�������:              �?        ��+V�       ��	>���{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    ��b@    ��b@      �?!    ��b@)  i�i�@2߱�&�a@C��ôc@�������:              �?        ���s�       ��	����{Y�A�*�

summaries/lossW�(C
}
summaries/histogram_loss*a	   �je@   �je@      �?!   �je@)@�}�'��@2C��ôc@�Y��=�e@�������:              �?        �Eqt�       ��	�՗�{Y�A�*�

summaries/lossC
}
summaries/histogram_loss*a	   `�"b@   `�"b@      �?!   `�"b@)@6��ˎ�@2߱�&�a@C��ôc@�������:              �?        _�L�       ��	s�{Y�A�*�

summaries/loss�FC
}
summaries/histogram_loss*a	   �!�h@   �!�h@      �?!   �!�h@)����M�@2����*�g@�'�;�:j@�������:              �?        r�훥       ��	��{Y�A�*�

summaries/lossT'C
}
summaries/histogram_loss*a	   ���d@   ���d@      �?!   ���d@) ���=�@2C��ôc@�Y��=�e@�������:              �?        o�C�       ��	�.��{Y�A�*�

summaries/loss$t$C
}
summaries/histogram_loss*a	   ���d@   ���d@      �?!   ���d@) D)�@i�@2C��ôc@�Y��=�e@�������:              �?        �<k��       ��	K��{Y�A�*�

summaries/loss�S$C
}
summaries/histogram_loss*a	    |�d@    |�d@      �?!    |�d@)  ���^�@2C��ôc@�Y��=�e@�������:              �?        �L�       ��	�h��{Y�A�*�

summaries/loss6 *C
}
summaries/histogram_loss*a	   �@e@   �@e@      �?!   �@e@) ��9�@2C��ôc@�Y��=�e@�������:              �?        	w��       ��	���{Y�A�*�

summaries/loss1�ZC
}
summaries/histogram_loss*a	    fPk@    fPk@      �?!    fPk@) ��UvP�@2�'�;�:j@}+��
�l@�������:              �?        CC�̥       ��	/���{Y�A�*�

summaries/loss@r<C
}
summaries/histogram_loss*a	    H�g@    H�g@      �?!    H�g@)  � W�@2�Y��=�e@����*�g@�������:              �?        ��F�       ��	{���{Y�A�*�

summaries/loss�BC
}
summaries/histogram_loss*a	   @�Ah@   @�Ah@      �?!   @�Ah@)�`9�Kc�@2����*�g@�'�;�:j@�������:              �?        ��@�       ��	�ޘ�{Y�A�*�

summaries/lossa�"C
}
summaries/histogram_loss*a	    ,^d@    ,^d@      �?!    ,^d@)@����@2C��ôc@�Y��=�e@�������:              �?        �d)}�       ��	T���{Y�A�*�

summaries/loss�8&C
}
summaries/histogram_loss*a	   `�d@   `�d@      �?!   `�d@)@vb]��@2C��ôc@�Y��=�e@�������:              �?        @�1ʥ       ��	���{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   ��c@   ��c@      �?!   ��c@)@�����@2߱�&�a@C��ôc@�������:              �?        �� �       ��	�7��{Y�A�*�

summaries/lossZ^JC
}
summaries/histogram_loss*a	   @�Ki@   @�Ki@      �?!   @�Ki@)���!��@2����*�g@�'�;�:j@�������:              �?        �.7�       ��	�U��{Y�A�*�

summaries/loss@F.C
}
summaries/histogram_loss*a	    ��e@    ��e@      �?!    ��e@)  đ��@2�Y��=�e@����*�g@�������:              �?        �2�       ��	�t��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   `�p^@   `�p^@      �?!   `�p^@) �F^���@2~
�i�]@��GL:I`@�������:              �?        ����       ��	ڑ��{Y�A�*�

summaries/loss�FC
}
summaries/histogram_loss*a	   @2�h@   @2�h@      �?!   @2�h@)��r)�@2����*�g@�'�;�:j@�������:              �?        ���       ��	}���{Y�A�*�

summaries/lossHC
}
summaries/histogram_loss*a	   @�b@   @�b@      �?!   @�b@) ����x�@2߱�&�a@C��ôc@�������:              �?        ���k�       ��	љ�{Y�A�*�

summaries/loss>�C
}
summaries/histogram_loss*a	   �G8c@   �G8c@      �?!   �G8c@) ��_p�@2߱�&�a@C��ôc@�������:              �?        ճ/�       ��	�{Y�A�*�

summaries/loss�'C
}
summaries/histogram_loss*a	    ��d@    ��d@      �?!    ��d@)@`��s>�@2C��ôc@�Y��=�e@�������:              �?        ��fB�       ��	1
��{Y�A�*�

summaries/lossDdC
}
summaries/histogram_loss*a	   ��,c@   ��,c@      �?!   ��,c@) �L#@��@2߱�&�a@C��ôc@�������:              �?        �M �       ��	t(��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    �vc@    �vc@      �?!    �vc@) @����@2߱�&�a@C��ôc@�������:              �?        5\�A�       ��	�F��{Y�A�*�

summaries/loss�2C
}
summaries/histogram_loss*a	    }Pf@    }Pf@      �?!    }Pf@)@����@2�Y��=�e@����*�g@�������:              �?        I�ۂ�       ��	�d��{Y�A�*�

summaries/lossa�DC
}
summaries/histogram_loss*a	    ��h@    ��h@      �?!    ��h@) �����@2����*�g@�'�;�:j@�������:              �?        g�)�       ��	=���{Y�A�*�

summaries/lossh"CC
}
summaries/histogram_loss*a	    Mdh@    Mdh@      �?!    Mdh@) H�᭗�@2����*�g@�'�;�:j@�������:              �?        fղ�       ��	A���{Y�A�*�

summaries/lossO�LC
}
summaries/histogram_loss*a	   �i�i@   �i�i@      �?!   �i�i@) L�r�@2����*�g@�'�;�:j@�������:              �?        ߼�       ��	����{Y�A�*�

summaries/loss!6C
}
summaries/histogram_loss*a	   � �f@   � �f@      �?!   � �f@) A�^2�@2�Y��=�e@����*�g@�������:              �?        3���       ��	bۚ�{Y�A�*�

summaries/lossA� C
}
summaries/histogram_loss*a	    (d@    (d@      �?!    (d@)@��Ȉ<�@2C��ôc@�Y��=�e@�������:              �?        ��ϥ       ��	����{Y�A�*�

summaries/lossh�BC
}
summaries/histogram_loss*a	    M_h@    M_h@      �?!    M_h@) H�Q��@2����*�g@�'�;�:j@�������:              �?        ^��       ��	���{Y�A�*�

summaries/loss!�+C
}
summaries/histogram_loss*a	    �xe@    �xe@      �?!    �xe@)@#����@2C��ôc@�Y��=�e@�������:              �?        8)M_�       ��	�2��{Y�A�*�

summaries/loss'�"C
}
summaries/histogram_loss*a	   ��Zd@   ��Zd@      �?!   ��Zd@)@|N ���@2C��ôc@�Y��=�e@�������:              �?        ���_�       ��	N��{Y�A�*�

summaries/lossӈ!C
}
summaries/histogram_loss*a	   `1d@   `1d@      �?!   `1d@)@z��X{�@2C��ôc@�Y��=�e@�������:              �?        K%���       ��	#k��{Y�A�*�

summaries/loss�=C
}
summaries/histogram_loss*a	   @|�g@   @|�g@      �?!   @|�g@)�pf���@2�Y��=�e@����*�g@�������:              �?        m����       ��	��{Y�A�*�

summaries/loss��DC
}
summaries/histogram_loss*a	   ��h@   ��h@      �?!   ��h@)�t�&C��@2����*�g@�'�;�:j@�������:              �?        ӂ�       ��	f���{Y�A�*�

summaries/lossu�:C
}
summaries/histogram_loss*a	   ��_g@   ��_g@      �?!   ��_g@) /���@2�Y��=�e@����*�g@�������:              �?        6o_�       ��		���{Y�A�*�

summaries/lossl C
}
summaries/histogram_loss*a	   �`a@   �`a@      �?!   �`a@) dR]��@2��GL:I`@߱�&�a@�������:              �?        3��       ��	]ܛ�{Y�A�*�

summaries/loss|�6C
}
summaries/histogram_loss*a	   ���f@   ���f@      �?!   ���f@) ��'Q�@2�Y��=�e@����*�g@�������:              �?        gCC�       ��	����{Y�A�*�

summaries/loss�p"C
}
summaries/histogram_loss*a	   �Nd@   �Nd@      �?!   �Nd@) Iv���@2C��ôc@�Y��=�e@�������:              �?        ��1�       ��		��{Y�A�*�

summaries/loss^zC
}
summaries/histogram_loss*a	   �Koa@   �Koa@      �?!   �Koa@) �n$���@2��GL:I`@߱�&�a@�������:              �?        �K!�       ��	�4��{Y�A�*�

summaries/loss�<:C
}
summaries/histogram_loss*a	   ��Gg@   ��Gg@      �?!   ��Gg@) r"
���@2�Y��=�e@����*�g@�������:              �?        �ե       ��	P��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@) jY���@2C��ôc@�Y��=�e@�������:              �?        |�]�       ��	�j��{Y�A�*�

summaries/lossnC
}
summaries/histogram_loss*a	   �#c@   �#c@      �?!   �#c@) �3t���@2߱�&�a@C��ôc@�������:              �?        ��|�       ��	���{Y�A�*�

summaries/lossg�!C
}
summaries/histogram_loss*a	   �L2d@   �L2d@      �?!   �L2d@)@\�Q^~�@2C��ôc@�Y��=�e@�������:              �?        U��¥       ��	4���{Y�A�*�

summaries/lossQ�C
}
summaries/histogram_loss*a	    *�`@    *�`@      �?!    *�`@)@�V���@2��GL:I`@߱�&�a@�������:              �?        ��R��       ��	U���{Y�A�*�

summaries/loss��/C
}
summaries/histogram_loss*a	   ���e@   ���e@      �?!   ���e@) �$�h:�@2�Y��=�e@����*�g@�������:              �?        ��&��       ��	�ۜ�{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@) lh^��@2��GL:I`@߱�&�a@�������:              �?        |1�q�       ��	����{Y�A�*�

summaries/loss�y.C
}
summaries/histogram_loss*a	   �4�e@   �4�e@      �?!   �4�e@) ��e��@2�Y��=�e@����*�g@�������:              �?        �c��       ��	���{Y�A�*�

summaries/loss��2C
}
summaries/histogram_loss*a	    wTf@    wTf@      �?!    wTf@) �$*�@2�Y��=�e@����*�g@�������:              �?        �%�       ��	8-��{Y�A�*�

summaries/loss�<8C
}
summaries/histogram_loss*a	   ��g@   ��g@      �?!   ��g@)�tǟ��@2�Y��=�e@����*�g@�������:              �?        s5v��       ��	�J��{Y�A�*�

summaries/loss*�C
}
summaries/histogram_loss*a	   @%b@   @%b@      �?!   @%b@) ��R��@2߱�&�a@C��ôc@�������:              �?        l�e=�       ��	ke��{Y�A�*�

summaries/lossD8 C
}
summaries/histogram_loss*a	   �d@   �d@      �?!   �d@) �tW��@2C��ôc@�Y��=�e@�������:              �?        	ċk�       ��	ԁ��{Y�A�*�

summaries/lossފLC
}
summaries/histogram_loss*a	   �[�i@   �[�i@      �?!   �[�i@)����m�@2����*�g@�'�;�:j@�������:              �?        2�I��       ��	霝�{Y�A�*�

summaries/loss�'C
}
summaries/histogram_loss*a	   �P�d@   �P�d@      �?!   �P�d@) ��
KB�@2C��ôc@�Y��=�e@�������:              �?        Z��       ��	���{Y�A�*�

summaries/lossەC
}
summaries/histogram_loss*a	   `��b@   `��b@      �?!   `��b@)@V*<g��@2߱�&�a@C��ôc@�������:              �?        w&F�       ��	�ԝ�{Y�A�*�

summaries/lossO$C
}
summaries/histogram_loss*a	   ���d@   ���d@      �?!   ���d@)@�s�G�@2C��ôc@�Y��=�e@�������:              �?        8�F��       ��	��{Y�A�*�

summaries/loss�6C
}
summaries/histogram_loss*a	   @��f@   @��f@      �?!   @��f@)�`A��1�@2�Y��=�e@����*�g@�������:              �?        9��ޥ       ��	���{Y�A�*�

summaries/lossEo%C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@)@&��'��@2C��ôc@�Y��=�e@�������:              �?        #�P/�       ��	�)��{Y�A�*�

summaries/loss��9C
}
summaries/histogram_loss*a	    �9g@    �9g@      �?!    �9g@) ������@2�Y��=�e@����*�g@�������:              �?        �)Z��       ��	F��{Y�A�*�

summaries/loss2{=C
}
summaries/histogram_loss*a	   @f�g@   @f�g@      �?!   @f�g@)���c��@2�Y��=�e@����*�g@�������:              �?        c�T�       ��	�a��{Y�A�*�

summaries/lossZ9&C
}
summaries/histogram_loss*a	   @+�d@   @+�d@      �?!   @+�d@) �Ld���@2C��ôc@�Y��=�e@�������:              �?        ߋ�i�       ��	J~��{Y�A�*�

summaries/lossK+C
}
summaries/histogram_loss*a	   �`ie@   �`ie@      �?!   �`ie@) 	! T��@2C��ôc@�Y��=�e@�������:              �?        x83	�       ��	[���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �Xc@   �Xc@      �?!   �Xc@)@��;[��@2߱�&�a@C��ôc@�������:              �?        ��<��       ��	ݵ��{Y�A�*�

summaries/loss�7C
}
summaries/histogram_loss*a	    1�f@    1�f@      �?!    1�f@) KfZ�@2�Y��=�e@����*�g@�������:              �?        l��p�       ��	�ў�{Y�A�*�

summaries/loss�� C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@)@���B�@2C��ôc@�Y��=�e@�������:              �?        �{!9�       ��	�랗{Y�A�*�

summaries/loss؝ C
}
summaries/histogram_loss*a	    �d@    �d@      �?!    �d@) ���k1�@2C��ôc@�Y��=�e@�������:              �?        �|;:�       ��	)	��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   ���b@   ���b@      �?!   ���b@) �׬�L�@2߱�&�a@C��ôc@�������:              �?        ����       ��	(��{Y�A�*�

summaries/loss�!C
}
summaries/histogram_loss*a	   `>a@   `>a@      �?!   `>a@)@*#��@2��GL:I`@߱�&�a@�������:              �?        �M�J�       ��	�B��{Y�A�*�

summaries/lossm��B
}
summaries/histogram_loss*a	   �M�^@   �M�^@      �?!   �M�^@) M�(��@2~
�i�]@��GL:I`@�������:              �?        ��ȥ       ��	�a��{Y�A�*�

summaries/loss�1C
}
summaries/histogram_loss*a	   @"f@   @"f@      �?!   @"f@) 	���@2�Y��=�e@����*�g@�������:              �?        ��aۥ       ��	�~��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   � �c@   � �c@      �?!   � �c@)@��/�>�@2߱�&�a@C��ôc@�������:              �?        j��_�       ��	4���{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    ��a@    ��a@      �?!    ��a@) ��"?��@2��GL:I`@߱�&�a@�������:              �?        ˧���       ��	���{Y�A�*�

summaries/losss�-C
}
summaries/histogram_loss*a	   `.�e@   `.�e@      �?!   `.�e@)@jƸf�@2�Y��=�e@����*�g@�������:              �?        �pfn�       ��	'ݟ�{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    ��b@    ��b@      �?!    ��b@)  頗��@2߱�&�a@C��ôc@�������:              �?        :să�       ��	����{Y�A�*�

summaries/lossLC
}
summaries/histogram_loss*a	   �)�a@   �)�a@      �?!   �)�a@) ��YQ��@2��GL:I`@߱�&�a@�������:              �?        �]�ޥ       ��	���{Y�A�*�

summaries/lossr�(C
}
summaries/histogram_loss*a	   @�e@   @�e@      �?!   @�e@) �r�s��@2C��ôc@�Y��=�e@�������:              �?        "2��       ��	�3��{Y�A�*�

summaries/loss��AC
}
summaries/histogram_loss*a	   @p4h@   @p4h@      �?!   @p4h@)��YN�N�@2����*�g@�'�;�:j@�������:              �?        ��ۊ�       ��	&R��{Y�A�*�

summaries/loss��#C
}
summaries/histogram_loss*a	   �|d@   �|d@      �?!   �|d@) !P:�@2C��ôc@�Y��=�e@�������:              �?        s�d��       ��	�s��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @c@   @c@      �?!   @c@) �-���@2߱�&�a@C��ôc@�������:              �?        ݯr�       ��	:���{Y�A�*�

summaries/loss]yC
}
summaries/histogram_loss*a	   �+�b@   �+�b@      �?!   �+�b@)@�B���@2߱�&�a@C��ôc@�������:              �?        �_o�       ��	����{Y�A�*�

summaries/loss=C
}
summaries/histogram_loss*a	    ��a@    ��a@      �?!    ��a@) 4����@2��GL:I`@߱�&�a@�������:              �?        Bb2�       ��	5Ԡ�{Y�A�*�

summaries/losspB�B
}
summaries/histogram_loss*a	    Nh]@    Nh]@      �?!    Nh]@)  �[a�@2��iI�Z@~
�i�]@�������:              �?        ��{5�       ��	����{Y�A�*�

summaries/loss_T�B
}
summaries/histogram_loss*a	   ���]@   ���]@      �?!   ���]@) h����@2~
�i�]@��GL:I`@�������:              �?        �쒖�       ��	���{Y�A�*�

summaries/loss�rC
}
summaries/histogram_loss*a	   �\�c@   �\�c@      �?!   �\�c@)@#��5�@2߱�&�a@C��ôc@�������:              �?        ڗH5�       ��	�2��{Y�A�*�

summaries/loss��	C
}
summaries/histogram_loss*a	   ��7a@   ��7a@      �?!   ��7a@)@~�&��@2��GL:I`@߱�&�a@�������:              �?        ��l�       ��	�S��{Y�A�*�

summaries/lossv�C
}
summaries/histogram_loss*a	   ��b@   ��b@      �?!   ��b@) ��D�{�@2߱�&�a@C��ôc@�������:              �?        (��p�       ��	�}��{Y�A�*�

summaries/loss�WC
}
summaries/histogram_loss*a	    ��c@    ��c@      �?!    ��c@) �����@2߱�&�a@C��ôc@�������:              �?        Z�=O�       ��	󭡗{Y�A�*�

summaries/lossi�
C
}
summaries/histogram_loss*a	    -Ra@    -Ra@      �?!    -Ra@)@D�E��@2��GL:I`@߱�&�a@�������:              �?        5�Or�       ��	�͡�{Y�A�*�

summaries/losso@C
}
summaries/histogram_loss*a	   `�h@   `�h@      �?!   `�h@) ���@2����*�g@�'�;�:j@�������:              �?        �-�ӥ       ��	:롗{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @7c@   @7c@      �?!   @7c@) �6����@2߱�&�a@C��ôc@�������:              �?        Q��m�       ��	x��{Y�A�*�

summaries/loss-C
}
summaries/histogram_loss*a	   @C�e@   @C�e@      �?!   @C�e@) ���:�@2C��ôc@�Y��=�e@�������:              �?        rmc˥       ��	�,��{Y�A�*�

summaries/loss^sKC
}
summaries/histogram_loss*a	   �kni@   �kni@      �?!   �kni@)��2b6�@2����*�g@�'�;�:j@�������:              �?        =����       ��	N��{Y�A�*�

summaries/lossv�C
}
summaries/histogram_loss*a	   ��}b@   ��}b@      �?!   ��}b@) �q{Z^�@2߱�&�a@C��ôc@�������:              �?        �=s�       ��	m��{Y�A�*�

summaries/lossWC
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@)@R��T��@2C��ôc@�Y��=�e@�������:              �?        d��3�       ��	t���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    ��c@    ��c@      �?!    ��c@) @����@2C��ôc@�Y��=�e@�������:              �?        ���d�       ��	$Т�{Y�A�*�

summaries/lossK(C
}
summaries/histogram_loss*a	   �`	e@   �`	e@      �?!   �`	e@) �΢��@2C��ôc@�Y��=�e@�������:              �?        Cߘ��       ��	����{Y�A�*�

summaries/loss(
&C
}
summaries/histogram_loss*a	    E�d@    E�d@      �?!    E�d@) ��K��@2C��ôc@�Y��=�e@�������:              �?         �ߩ�       ��	f��{Y�A�*�

summaries/lossܶC
}
summaries/histogram_loss*a	   �ۖb@   �ۖb@      �?!   �ۖb@) Dc?���@2߱�&�a@C��ôc@�������:              �?        '�]g�       ��	/3��{Y�A�*�

summaries/lossV5+C
}
summaries/histogram_loss*a	   ��fe@   ��fe@      �?!   ��fe@) 9. ��@2C��ôc@�Y��=�e@�������:              �?        J� \�       ��	?R��{Y�A�*�

summaries/loss<�GC
}
summaries/histogram_loss*a	   ���h@   ���h@      �?!   ���h@) �2>���@2����*�g@�'�;�:j@�������:              �?        ��       ��	~s��{Y�A�*�

summaries/lossW�C
}
summaries/histogram_loss*a	   ��c@   ��c@      �?!   ��c@)@�t�4��@2C��ôc@�Y��=�e@�������:              �?        u\���       ��	���{Y�A�*�

summaries/loss�RC
}
summaries/histogram_loss*a	   @]�a@   @]�a@      �?!   @]�a@) y�o�@2߱�&�a@C��ôc@�������:              �?        �\��       ��	����{Y�A�*�

summaries/lossPLLC
}
summaries/histogram_loss*a	    ��i@    ��i@      �?!    ��i@)  ��6a�@2����*�g@�'�;�:j@�������:              �?        �c�ץ       ��	�У�{Y�A�*�

summaries/loss�sNC
}
summaries/histogram_loss*a	    {�i@    {�i@      �?!    {�i@) �x����@2����*�g@�'�;�:j@�������:              �?        T�f�       ��	�{Y�A�*�

summaries/lossL6C
}
summaries/histogram_loss*a	   �ɦb@   �ɦb@      �?!   �ɦb@) �	���@2߱�&�a@C��ôc@�������:              �?        p��*�       ��	�
��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   �ϲa@   �ϲa@      �?!   �ϲa@)@��ȓ�@2��GL:I`@߱�&�a@�������:              �?        �G2�       ��	E)��{Y�A�*�

summaries/loss
�5C
}
summaries/histogram_loss*a	   @A�f@   @A�f@      �?!   @A�f@)�!{�%�@2�Y��=�e@����*�g@�������:              �?        "XO��       ��	E��{Y�A�*�

summaries/loss��*C
}
summaries/histogram_loss*a	   �5Ue@   �5Ue@      �?!   �5Ue@)@h!9sq�@2C��ôc@�Y��=�e@�������:              �?        J�D9�       ��	�b��{Y�A�*�

summaries/losse�C
}
summaries/histogram_loss*a	   ��a@   ��a@      �?!   ��a@)@�;U�7�@2��GL:I`@߱�&�a@�������:              �?        �AT�       ��	ǀ��{Y�A�*�

summaries/loss,�(C
}
summaries/histogram_loss*a	   �ee@   �ee@      �?!   �ee@) ����@2C��ôc@�Y��=�e@�������:              �?        P	���       ��	w���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �U�b@   �U�b@      �?!   �U�b@) ��f�j�@2߱�&�a@C��ôc@�������:              �?        y=/��       ��	׽��{Y�A�*�

summaries/losslg�B
}
summaries/histogram_loss*a	   ��^@   ��^@      �?!   ��^@) ��B8�@2~
�i�]@��GL:I`@�������:              �?        ��       ��	�ۤ�{Y�A�*�

summaries/loss.1C
}
summaries/histogram_loss*a	   �%�a@   �%�a@      �?!   �%�a@) ����@2��GL:I`@߱�&�a@�������:              �?        ��蹥       ��	����{Y�A�*�

summaries/loss�?2C
}
summaries/histogram_loss*a	    �Gf@    �Gf@      �?!    �Gf@)@�"�0�@2�Y��=�e@����*�g@�������:              �?        ��}Х       ��	���{Y�A�*�

summaries/loss�NC
}
summaries/histogram_loss*a	   �t�i@   �t�i@      �?!   �t�i@)��At��@2����*�g@�'�;�:j@�������:              �?        �l�8�       ��	f3��{Y�A�*�

summaries/loss35C
}
summaries/histogram_loss*a	   `�f@   `�f@      �?!   `�f@) E'� �@2�Y��=�e@����*�g@�������:              �?        ���       ��	�R��{Y�A�*�

summaries/lossl�B
}
summaries/histogram_loss*a	   ���^@   ���^@      �?!   ���^@)�<R�|��@2~
�i�]@��GL:I`@�������:              �?        ��W��       ��	vm��{Y�A�*�

summaries/lossR%/C
}
summaries/histogram_loss*a	   @��e@   @��e@      �?!   @��e@) �3���@2�Y��=�e@����*�g@�������:              �?        ���ǥ       ��	����{Y�A�*�

summaries/loss�8	C
}
summaries/histogram_loss*a	   �'a@   �'a@      �?!   �'a@)@�k�oc�@2��GL:I`@߱�&�a@�������:              �?        �J՚�       ��	Ƥ��{Y�A�*�

summaries/loss�OAC
}
summaries/histogram_loss*a	   ��)h@   ��)h@      �?!   ��)h@) �^6?�@2����*�g@�'�;�:j@�������:              �?        O�Q��       ��	¥�{Y�A�*�

summaries/lossz4C
}
summaries/histogram_loss*a	   @��f@   @��f@      �?!   @��f@) ��
c��@2�Y��=�e@����*�g@�������:              �?        {`�U�       ��	�ܥ�{Y�A�*�

summaries/loss@�C
}
summaries/histogram_loss*a	    hz`@    hz`@      �?!    hz`@)  �tx��@2��GL:I`@߱�&�a@�������:              �?        誡ɥ       ��	����{Y�A�*�

summaries/loss+�C
}
summaries/histogram_loss*a	   `e�c@   `e�c@      �?!   `e�c@)@NJs���@2߱�&�a@C��ôc@�������:              �?        ��E��       ��	���{Y�A�*�

summaries/loss_|C
}
summaries/histogram_loss*a	   ���a@   ���a@      �?!   ���a@)@�
F�@2��GL:I`@߱�&�a@�������:              �?        �H�k�       ��	�5��{Y�A�*�

summaries/loss	{2C
}
summaries/histogram_loss*a	    aOf@    aOf@      �?!    aOf@)@�i���@2�Y��=�e@����*�g@�������:              �?        ت�٥       ��	�Q��{Y�A�*�

summaries/losso�	C
}
summaries/histogram_loss*a	   ��2a@   ��2a@      �?!   ��2a@)@͖|�@2��GL:I`@߱�&�a@�������:              �?        ����       ��	�o��{Y�A�*�

summaries/loss��/C
}
summaries/histogram_loss*a	   @�e@   @�e@      �?!   @�e@) 9��{2�@2�Y��=�e@����*�g@�������:              �?        /��       ��	C���{Y�A�*�

summaries/loss�Y&C
}
summaries/histogram_loss*a	   �4�d@   �4�d@      �?!   �4�d@) D��@2C��ôc@�Y��=�e@�������:              �?        ��(��       ��	)���{Y�A�*�

summaries/loss+�3C
}
summaries/histogram_loss*a	   `%zf@   `%zf@      �?!   `%zf@)@NOB���@2�Y��=�e@����*�g@�������:              �?        6�       ��	�˦�{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�b@   @�b@      �?!   @�b@) 9@e�i�@2߱�&�a@C��ôc@�������:              �?        Ƕ��       ��	tꦗ{Y�A�*�

summaries/lossC
}
summaries/histogram_loss*a	    b c@    b c@      �?!    b c@) @X���@2߱�&�a@C��ôc@�������:              �?        =O��       ��	���{Y�A�*�

summaries/lossH�C
}
summaries/histogram_loss*a	    	�b@    	�b@      �?!    	�b@) e�6��@2߱�&�a@C��ôc@�������:              �?        &#�       ��	Z/��{Y�A�*�

summaries/loss��(C
}
summaries/histogram_loss*a	   @�e@   @�e@      �?!   @�e@) �����@2C��ôc@�Y��=�e@�������:              �?        |>��       ��	�J��{Y�A�*�

summaries/lossD��B
}
summaries/histogram_loss*a	   �Ȝ]@   �Ȝ]@      �?!   �Ȝ]@) Bȏ+g�@2~
�i�]@��GL:I`@�������:              �?        O���       ��	g��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �X`@   �X`@      �?!   �X`@) �UN
��@2��GL:I`@߱�&�a@�������:              �?        ��d��       ��	g���{Y�A�*�

summaries/loss>��B
}
summaries/histogram_loss*a	   �g�W@   �g�W@      �?!   �g�W@)�`�9���@2
6@�F?V@r;`�xX@�������:              �?        =�g�       ��	A���{Y�A�*�

summaries/lossZ�B
}
summaries/histogram_loss*a	   @R@   @R@      �?!   @R@) �ג�D�@2Π54�P@�0n9�bR@�������:              �?        ��	V�       ��	ø��{Y�A�*�

summaries/lossјC
}
summaries/histogram_loss*a	    sc@    sc@      �?!    sc@)@�����@2߱�&�a@C��ôc@�������:              �?        �W"��       ��	ӧ�{Y�A�*�

summaries/loss�d�B
}
summaries/histogram_loss*a	   @��Z@   @��Z@      �?!   @��Z@)��:ӑq�@2r;`�xX@��iI�Z@�������:              �?        ����       ��	�{Y�A�*�

summaries/lossC
}
summaries/histogram_loss*a	    !�`@    !�`@      �?!    !�`@) �`u��@2��GL:I`@߱�&�a@�������:              �?        ��[�       ��	��{Y�A�*�

summaries/lossȠC
}
summaries/histogram_loss*a	    �`@    �`@      �?!    �`@) �Ό-�@2��GL:I`@߱�&�a@�������:              �?        o�>*�       ��	� ��{Y�A�*�

summaries/lossb�C
}
summaries/histogram_loss*a	   @�a@   @�a@      �?!   @�a@) a���\�@2��GL:I`@߱�&�a@�������:              �?        ��,�       ��	�:��{Y�A�*�

summaries/loss�xC
}
summaries/histogram_loss*a	    �c@    �c@      �?!    �c@) ��g���@2C��ôc@�Y��=�e@�������:              �?        l9 ��       ��	�S��{Y�A�*�

summaries/lossSF*C
}
summaries/histogram_loss*a	   `�He@   `�He@      �?!   `�He@)@�_c^P�@2C��ôc@�Y��=�e@�������:              �?        ���       ��	3l��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �;�b@   �;�b@      �?!   �;�b@) !��(��@2߱�&�a@C��ôc@�������:              �?        i�?��       ��	f���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    ��c@    ��c@      �?!    ��c@) ������@2C��ôc@�Y��=�e@�������:              �?        �Y1ե       ��	b���{Y�A�*�

summaries/loss�oC
}
summaries/histogram_loss*a	   ��m`@   ��m`@      �?!   ��m`@) �P����@2��GL:I`@߱�&�a@�������:              �?         7>�       ��	(���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    {>c@    {>c@      �?!    {>c@) ��X%�@2߱�&�a@C��ôc@�������:              �?        Y	��       ��	�Ѩ�{Y�A�*�

summaries/loss0�(C
}
summaries/histogram_loss*a	    �e@    �e@      �?!    �e@) @*T��@2C��ôc@�Y��=�e@�������:              �?        ~�� �       ��	�쨗{Y�A�*�

summaries/lossڦ�B
}
summaries/histogram_loss*a	   @�4Y@   @�4Y@      �?!   @�4Y@)�4n����@2r;`�xX@��iI�Z@�������:              �?         �c��       ��	���{Y�A�*�

summaries/lossN5C
}
summaries/histogram_loss*a	   ��fa@   ��fa@      �?!   ��fa@) �Xs���@2��GL:I`@߱�&�a@�������:              �?        �p�       ��	� ��{Y�A�*�

summaries/loss�y4C
}
summaries/histogram_loss*a	   �0�f@   �0�f@      �?!   �0�f@) ������@2�Y��=�e@����*�g@�������:              �?        @�)�       ��	q:��{Y�A�*�

summaries/loss��6C
}
summaries/histogram_loss*a	   ���f@   ���f@      �?!   ���f@)�(IeT�@2�Y��=�e@����*�g@�������:              �?        O�Aĥ       ��	CU��{Y�A�*�

summaries/loss<�C
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@) �t���@2C��ôc@�Y��=�e@�������:              �?        ��"&�       ��	�p��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ��b@   ��b@      �?!   ��b@) �+���@2߱�&�a@C��ôc@�������:              �?        ��v�       ��	���{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    ݶ`@    ݶ`@      �?!    ݶ`@) ����u�@2��GL:I`@߱�&�a@�������:              �?        `<�g�       ��	���{Y�A�*�

summaries/loss�4C
}
summaries/histogram_loss*a	   ���f@   ���f@      �?!   ���f@) d"�7��@2�Y��=�e@����*�g@�������:              �?        ��=�       ��	佩�{Y�A�*�

summaries/loss^P�B
}
summaries/histogram_loss*a	   �
Z@   �
Z@      �?!   �
Z@)�P\?V0�@2r;`�xX@��iI�Z@�������:              �?        �+�!�       ��	
ة�{Y�A�*�

summaries/loss�YC
}
summaries/histogram_loss*a	   �5b@   �5b@      �?!   �5b@)@�o�@Y�@2߱�&�a@C��ôc@�������:              �?        ��R��       ��	�練{Y�A�*�

summaries/loss�#C
}
summaries/histogram_loss*a	   @6`d@   @6`d@      �?!   @6`d@) �+���@2C��ôc@�Y��=�e@�������:              �?        H�N�       ��	p	��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @x�^@   @x�^@      �?!   @x�^@)���;�Q�@2~
�i�]@��GL:I`@�������:              �?        ���إ       ��	�"��{Y�A�*�

summaries/lossx8C
}
summaries/histogram_loss*a	    '`@    '`@      �?!    '`@) .Y}N�@2~
�i�]@��GL:I`@�������:              �?        �,��       ��	�;��{Y�A�*�

summaries/lossZ�C
}
summaries/histogram_loss*a	   @��c@   @��c@      �?!   @��c@) �K�]��@2C��ôc@�Y��=�e@�������:              �?        r�*_�       ��	!V��{Y�A�*�

summaries/lossQAC
}
summaries/histogram_loss*a	   ` *h@   ` *h@      �?!   ` *h@) �h?�@2����*�g@�'�;�:j@�������:              �?        g�ӥ       ��	�o��{Y�A�*�

summaries/loss�`�B
}
summaries/histogram_loss*a	   ��^@   ��^@      �?!   ��^@) �~p���@2~
�i�]@��GL:I`@�������:              �?        �s뢥       ��	׉��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �Rsa@   �Rsa@      �?!   �Rsa@)@�f�N�@2��GL:I`@߱�&�a@�������:              �?        O���       ��	񡪗{Y�A�*�

summaries/lossJ�C
}
summaries/histogram_loss*a	   @�0b@   @�0b@      �?!   @�0b@) Yȭ�@2߱�&�a@C��ôc@�������:              �?        �J>�       ��	����{Y�A�*�

summaries/loss�~ C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@) �W��'�@2C��ôc@�Y��=�e@�������:              �?        �m�       ��	�Ԫ�{Y�A�*�

summaries/loss�9�B
}
summaries/histogram_loss*a	   @?�^@   @?�^@      �?!   @?�^@)�)3o��@2~
�i�]@��GL:I`@�������:              �?        �#��       ��	{Y�A�*�

summaries/lossҘC
}
summaries/histogram_loss*a	   @�`@   @�`@      �?!   @�`@) �-���@2��GL:I`@߱�&�a@�������:              �?        ���j�       ��	���{Y�A�*�

summaries/loss�0C
}
summaries/histogram_loss*a	   ��f@   ��f@      �?!   ��f@) �/�E�@2�Y��=�e@����*�g@�������:              �?        Sy:��       ��	���{Y�A�*�

summaries/lossp�C
}
summaries/histogram_loss*a	    .�`@    .�`@      �?!    .�`@) @�t�3�@2��GL:I`@߱�&�a@�������:              �?        L���       ��	79��{Y�A�*�

summaries/loss�)C
}
summaries/histogram_loss*a	   ��3e@   ��3e@      �?!   ��3e@) �BQ��@2C��ôc@�Y��=�e@�������:              �?        a���       ��	CT��{Y�A�*�

summaries/loss$r7C
}
summaries/histogram_loss*a	   �D�f@   �D�f@      �?!   �D�f@) ��K�n�@2�Y��=�e@����*�g@�������:              �?        ���x�       ��	�m��{Y�A�*�

summaries/loss� C
}
summaries/histogram_loss*a	   ��c@   ��c@      �?!   ��c@) zh�@2߱�&�a@C��ôc@�������:              �?        -HYU�       ��	H���{Y�A�*�

summaries/lossm�C
}
summaries/histogram_loss*a	   ��`@   ��`@      �?!   ��`@)@��͇/�@2��GL:I`@߱�&�a@�������:              �?        i��ۥ       ��	���{Y�A�*�

summaries/loss�,+C
}
summaries/histogram_loss*a	   ��ee@   ��ee@      �?!   ��ee@) Yļ0��@2C��ôc@�Y��=�e@�������:              �?        ���       ��	���{Y�A�*�

summaries/loss�aC
}
summaries/histogram_loss*a	    5�a@    5�a@      �?!    5�a@)@d`/��@2��GL:I`@߱�&�a@�������:              �?        ��Uҥ       ��	ѫ�{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @�c@   @�c@      �?!   @�c@) ��C��@2߱�&�a@C��ôc@�������:              �?        !���       ��	�髗{Y�A�*�

summaries/loss<C
}
summaries/histogram_loss*a	   ��c@   ��c@      �?!   ��c@) ��:�@2߱�&�a@C��ôc@�������:              �?        Q<8�       ��	��{Y�A�*�

summaries/loss^cC
}
summaries/histogram_loss*a	   �k�b@   �k�b@      �?!   �k�b@) �u.&�@2߱�&�a@C��ôc@�������:              �?        C��p�       ��	m��{Y�A�*�

summaries/loss)q2C
}
summaries/histogram_loss*a	    %Nf@    %Nf@      �?!    %Nf@)@$N�c�@2�Y��=�e@����*�g@�������:              �?        �Oץ       ��	�7��{Y�A�*�

summaries/loss�$C
}
summaries/histogram_loss*a	   @�$c@   @�$c@      �?!   @�$c@) �}�3��@2߱�&�a@C��ôc@�������:              �?        bDN��       ��	7R��{Y�A�*�

summaries/loss�2C
}
summaries/histogram_loss*a	   @B[f@   @B[f@      �?!   @B[f@) Q���<�@2�Y��=�e@����*�g@�������:              �?        �����       ��	�k��{Y�A�*�

summaries/lossJ�C
}
summaries/histogram_loss*a	   @)5b@   @)5b@      �?!   @)5b@) Y�qM��@2߱�&�a@C��ôc@�������:              �?        �>3�       ��	Z���{Y�A�*�

summaries/loss\�C
}
summaries/histogram_loss*a	   ��tb@   ��tb@      �?!   ��tb@) D�pJ�@2߱�&�a@C��ôc@�������:              �?        ͩ��       ��	J���{Y�A�*�

summaries/loss7�%C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@)@t�n���@2C��ôc@�Y��=�e@�������:              �?        ��w�       ��	����{Y�A�*�

summaries/loss�{�B
}
summaries/histogram_loss*a	    t�_@    t�_@      �?!    t�_@) �d��_�@2~
�i�]@��GL:I`@�������:              �?        cΣ�       ��	}Ϭ�{Y�A�*�

summaries/lossM<#C
}
summaries/histogram_loss*a	   ��gd@   ��gd@      �?!   ��gd@)@ʋv�@2C��ôc@�Y��=�e@�������:              �?        �<[y�       ��	�謗{Y�A�*�

summaries/loss�5C
}
summaries/histogram_loss*a	   �"�f@   �"�f@      �?!   �"�f@) 2::�@2�Y��=�e@����*�g@�������:              �?        �l�F�       ��	���{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @��`@   @��`@      �?!   @��`@) 1��ڰ�@2��GL:I`@߱�&�a@�������:              �?        8��/�       ��	%!��{Y�A�*�

summaries/lossF�SC
}
summaries/histogram_loss*a	   ��sj@   ��sj@      �?!   ��sj@)��]@���@2�'�;�:j@}+��
�l@�������:              �?        8/��       ��	<��{Y�A�*�

summaries/loss�l
C
}
summaries/histogram_loss*a	    �Ma@    �Ma@      �?!    �Ma@) @�Fh��@2��GL:I`@߱�&�a@�������:              �?        ��6=�       ��	iU��{Y�A�*�

summaries/loss��)C
}
summaries/histogram_loss*a	   ��?e@   ��?e@      �?!   ��?e@) �a�8�@2C��ôc@�Y��=�e@�������:              �?        '�ե       ��	�n��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   ��Qb@   ��Qb@      �?!   ��Qb@) yp��@2߱�&�a@C��ôc@�������:              �?        ^�e�       ��	����{Y�A�*�

summaries/lossn��B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@) �m��@2�0n9�bR@��X�9T@�������:              �?        ��~�       ��	n���{Y�A�*�

summaries/loss1��B
}
summaries/histogram_loss*a	    &v_@    &v_@      �?!    &v_@) lY���@2~
�i�]@��GL:I`@�������:              �?        ��6�       ��	����{Y�A�*�

summaries/loss�� C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@)@���>C�@2C��ôc@�Y��=�e@�������:              �?        ��v��       ��	�ԭ�{Y�A�*�

summaries/loss=xC
}
summaries/histogram_loss*a	   ��a@   ��a@      �?!   ��a@)@���j��@2��GL:I`@߱�&�a@�������:              �?        (W��       ��	����{Y�A�*�

summaries/loss�]C
}
summaries/histogram_loss*a	    ��`@    ��`@      �?!    ��`@)@Դ*���@2��GL:I`@߱�&�a@�������:              �?        ���7�       ��	[��{Y�A�*�

summaries/loss�@C
}
summaries/histogram_loss*a	    �h@    �h@      �?!    �h@) j�Ɖ�@2����*�g@�'�;�:j@�������:              �?        ���7�       ��	���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �7X_@   �7X_@      �?!   �7X_@) �P�޳�@2~
�i�]@��GL:I`@�������:              �?        �spN�       ��	.:��{Y�A�*�

summaries/loss 9C
}
summaries/histogram_loss*a	    $Gb@    $Gb@      �?!    $Gb@)  �OM��@2߱�&�a@C��ôc@�������:              �?        �g	�       ��	~S��{Y�A�*�

summaries/lossX��B
}
summaries/histogram_loss*a	    �5]@    �5]@      �?!    �5]@) �w]ک�@2��iI�Z@~
�i�]@�������:              �?        Pv+��       ��	�l��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �8\@   �8\@      �?!   �8\@)��X����@2��iI�Z@~
�i�]@�������:              �?        �%i��       ��	����{Y�A�*�

summaries/lossl�C
}
summaries/histogram_loss*a	   ��2`@   ��2`@      �?!   ��2`@) d%}f�@2~
�i�]@��GL:I`@�������:              �?        ��ḥ       ��	���{Y�A�*�

summaries/loss��&C
}
summaries/histogram_loss*a	   @��d@   @��d@      �?!   @��d@) 9;~,�@2C��ôc@�Y��=�e@�������:              �?        �'H��       ��	���{Y�A�*�

summaries/loss b�B
}
summaries/histogram_loss*a	    @lZ@    @lZ@      �?!    @lZ@)  �0V��@2r;`�xX@��iI�Z@�������:              �?        �;�ʥ       ��	�Ӯ�{Y�A�*�

summaries/loss`f�B
}
summaries/histogram_loss*a	    �L_@    �L_@      �?!    �L_@) �����@2~
�i�]@��GL:I`@�������:              �?        /���       ��	����{Y�A�*�

summaries/loss�M�B
}
summaries/histogram_loss*a	    �I\@    �I\@      �?!    �I\@)  Ho��@2��iI�Z@~
�i�]@�������:              �?        ��&�       ��	d��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @<�a@   @<�a@      �?!   @<�a@) �rv���@2��GL:I`@߱�&�a@�������:              �?        q����       ��	6 ��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@) ���t(�@2��GL:I`@߱�&�a@�������:              �?        C���       ��	�9��{Y�A�*�

summaries/lossF�C
}
summaries/histogram_loss*a	   ���b@   ���b@      �?!   ���b@) ɻ�+'�@2߱�&�a@C��ôc@�������:              �?        ��� �       ��	rS��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ��c@   ��c@      �?!   ��c@)@.G�E��@2߱�&�a@C��ôc@�������:              �?        i7T��       ��	�l��{Y�A�*�

summaries/loss�Q
C
}
summaries/histogram_loss*a	   �?Ja@   �?Ja@      �?!   �?Ja@) \|��@2��GL:I`@߱�&�a@�������:              �?        T��d�       ��	����{Y�A�*�

summaries/lossDNC
}
summaries/histogram_loss*a	   ���i@   ���i@      �?!   ���i@) B� ���@2����*�g@�'�;�:j@�������:              �?        i��ȥ       ��	H���{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    v�b@    v�b@      �?!    v�b@) @f�R��@2߱�&�a@C��ôc@�������:              �?        H���       ��	ӽ��{Y�A�*�

summaries/loss�SC
}
summaries/histogram_loss*a	   �y�b@   �y�b@      �?!   �y�b@)@�$���@2߱�&�a@C��ôc@�������:              �?        qĽ�       ��	�֯�{Y�A�*�

summaries/loss�i�B
}
summaries/histogram_loss*a	   �2�Z@   �2�Z@      �?!   �2�Z@) �f=�@2r;`�xX@��iI�Z@�������:              �?        i�*G�       ��	�{Y�A�*�

summaries/lossx#�B
}
summaries/histogram_loss*a	    o�W@    o�W@      �?!    o�W@) A��w�@2
6@�F?V@r;`�xX@�������:              �?        ��U�       ��	R
��{Y�A�*�

summaries/lossn�/C
}
summaries/histogram_loss*a	   ��e@   ��e@      �?!   ��e@) �k�.�@2�Y��=�e@����*�g@�������:              �?        迹1�       ��	p#��{Y�A�*�

summaries/lossyLC
}
summaries/histogram_loss*a	    �	a@    �	a@      �?!    �	a@)@L�U$�@2��GL:I`@߱�&�a@�������:              �?        �02��       ��	�<��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��^@   ��^@      �?!   ��^@) ���$�@2~
�i�]@��GL:I`@�������:              �?        ˖���       ��	U��{Y�A�*�

summaries/lossޔ�B
}
summaries/histogram_loss*a	   ��2W@   ��2W@      �?!   ��2W@)�����@2
6@�F?V@r;`�xX@�������:              �?        _����       ��	�n��{Y�A�*�

summaries/loss|�C
}
summaries/histogram_loss*a	   ��4b@   ��4b@      �?!   ��4b@) C/���@2߱�&�a@C��ôc@�������:              �?        ~�^�       ��	����{Y�A�*�

summaries/loss�qC
}
summaries/histogram_loss*a	   �;�c@   �;�c@      �?!   �;�c@) D��/��@2C��ôc@�Y��=�e@�������:              �?        t ��       ��	����{Y�A�*�

summaries/lossb#C
}
summaries/histogram_loss*a	   @ld`@   @ld`@      �?!   @ld`@) a��N��@2��GL:I`@߱�&�a@�������:              �?        F-��       ��	N���{Y�A�*�

summaries/lossf�C
}
summaries/histogram_loss*a	   �l�b@   �l�b@      �?!   �l�b@) )�,>�@2߱�&�a@C��ôc@�������:              �?        16��       ��	�Ұ�{Y�A�*�

summaries/lossv%�B
}
summaries/histogram_loss*a	   ���_@   ���_@      �?!   ���_@)�Lj�8�@2~
�i�]@��GL:I`@�������:              �?        pQ�       ��	찗{Y�A�*�

summaries/loss�� C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@) !ۛ�=�@2C��ôc@�Y��=�e@�������:              �?        ��!�       ��	���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �Y;`@   �Y;`@      �?!   �Y;`@) �&�w�@2~
�i�]@��GL:I`@�������:              �?        )�X��       ��	���{Y�A�*�

summaries/loss,&�B
}
summaries/histogram_loss*a	   ��$_@   ��$_@      �?!   ��$_@) �"�hO�@2~
�i�]@��GL:I`@�������:              �?        �b�{�       ��	8��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��0Z@   ��0Z@      �?!   ��0Z@) ��\Ho�@2r;`�xX@��iI�Z@�������:              �?        ���       ��	�P��{Y�A�*�

summaries/lossuC
}
summaries/histogram_loss*a	   ���b@   ���b@      �?!   ���b@)@��.8H�@2߱�&�a@C��ôc@�������:              �?        ���ܥ       ��	�j��{Y�A�*�

summaries/lossbC
}
summaries/histogram_loss*a	   @,�a@   @,�a@      �?!   @,�a@) a�W��@2��GL:I`@߱�&�a@�������:              �?        ��Z�       ��	w���{Y�A�*�

summaries/loss�|C
}
summaries/histogram_loss*a	   @��b@   @��b@      �?!   @��b@) 	����@2߱�&�a@C��ôc@�������:              �?        0\��       ��	4���{Y�A�*�

summaries/lossH$C
}
summaries/histogram_loss*a	    �dc@    �dc@      �?!    �dc@) =��@2߱�&�a@C��ôc@�������:              �?        ��l�       ��	����{Y�A�*�

summaries/lossi� C
}
summaries/histogram_loss*a	    -`@    -`@      �?!    -`@)@D�;q&�@2~
�i�]@��GL:I`@�������:              �?        +#�	�       ��	Rѱ�{Y�A�*�

summaries/loss4p�B
}
summaries/histogram_loss*a	   �n]@   �n]@      �?!   �n]@) R���@2��iI�Z@~
�i�]@�������:              �?        ,��+�       ��	y뱗{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �=�_@   �=�_@      �?!   �=�_@) �G.�1�@2~
�i�]@��GL:I`@�������:              �?        K�@9�       ��	���{Y�A�*�

summaries/loss~��B
}
summaries/histogram_loss*a	   ���Y@   ���Y@      �?!   ���Y@)��	;l��@2r;`�xX@��iI�Z@�������:              �?        ��J{�       ��	h ��{Y�A�*�

summaries/loss�pC
}
summaries/histogram_loss*a	   �n`@   �n`@      �?!   �n`@) d��0��@2��GL:I`@߱�&�a@�������:              �?        ��̥       ��	P:��{Y�A�*�

summaries/loss}�	C
}
summaries/histogram_loss*a	   �o>a@   �o>a@      �?!   �o>a@)@�"ؠ��@2��GL:I`@߱�&�a@�������:              �?        �t�       ��	CU��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   �c�a@   �c�a@      �?!   �c�a@) ��W���@2��GL:I`@߱�&�a@�������:              �?        �A9�       ��	�m��{Y�A�*�

summaries/lossC
}
summaries/histogram_loss*a	   `b�`@   `b�`@      �?!   `b�`@)@�t�4K�@2��GL:I`@߱�&�a@�������:              �?        z���       ��	���{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @�``@   @�``@      �?!   @�``@) �8`k��@2��GL:I`@߱�&�a@�������:              �?        �$�.�       ��	����{Y�A�*�

summaries/lossS�C
}
summaries/histogram_loss*a	   `j�a@   `j�a@      �?!   `j�a@)@:�����@2��GL:I`@߱�&�a@�������:              �?        l_�       ��	����{Y�A�*�

summaries/lossK*C
}
summaries/histogram_loss*a	   `IBe@   `IBe@      �?!   `IBe@)@~�:?�@2C��ôc@�Y��=�e@�������:              �?        �$*�       ��	�Ҳ�{Y�A�*�

summaries/loss�*.C
}
summaries/histogram_loss*a	   �V�e@   �V�e@      �?!   �V�e@) ����@2�Y��=�e@����*�g@�������:              �?        d�=*�       ��	�벗{Y�A�*�

summaries/loss"��B
}
summaries/histogram_loss*a	   @$]@   @$]@      �?!   @$]@)���g�@2��iI�Z@~
�i�]@�������:              �?        4�˜�       ��	l��{Y�A�*�

summaries/loss5�C
}
summaries/histogram_loss*a	   ���b@   ���b@      �?!   ���b@)@�D��@�@2߱�&�a@C��ôc@�������:              �?        �"�Х       ��	���{Y�A�*�

summaries/loss}iC
}
summaries/histogram_loss*a	   �/�a@   �/�a@      �?!   �/�a@)@�q�W��@2��GL:I`@߱�&�a@�������:              �?        ��kT�       ��	�7��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��\W@   ��\W@      �?!   ��\W@)���ڭ�@2
6@�F?V@r;`�xX@�������:              �?        �?�K�       ��	�O��{Y�A�*�

summaries/loss�}�B
}
summaries/histogram_loss*a	   ��^@   ��^@      �?!   ��^@) �L�=�@2~
�i�]@��GL:I`@�������:              �?        ]�       ��	si��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   `��Z@   `��Z@      �?!   `��Z@) G��@2r;`�xX@��iI�Z@�������:              �?        �ʅ
�       ��	����{Y�A�*�

summaries/loss�s%C
}
summaries/histogram_loss*a	   �s�d@   �s�d@      �?!   �s�d@) �aӎ��@2C��ôc@�Y��=�e@�������:              �?        F��       ��	����{Y�A�*�

summaries/loss],�B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@) 9Cf��@2
6@�F?V@r;`�xX@�������:              �?        �{д�       ��	���{Y�A�*�

summaries/loss�hC
}
summaries/histogram_loss*a	   �-b@   �-b@      �?!   �-b@) $����@2߱�&�a@C��ôc@�������:              �?        9�o��       ��	�س�{Y�A�*�

summaries/loss?#�B
}
summaries/histogram_loss*a	   �g]@   �g]@      �?!   �g]@) 0I��O�@2��iI�Z@~
�i�]@�������:              �?        `Er��       ��	��{Y�A�*�

summaries/losskR�B
}
summaries/histogram_loss*a	   `M�V@   `M�V@      �?!   `M�V@) ׺��@2
6@�F?V@r;`�xX@�������:              �?        �<a2�       ��	k��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   `��a@   `��a@      �?!   `��a@)@����@2߱�&�a@C��ôc@�������:              �?        �f��       ��	�%��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �}U\@   �}U\@      �?!   �}U\@) -O=��@2��iI�Z@~
�i�]@�������:              �?        �;�p�       ��	J@��{Y�A�*�

summaries/loss2�!C
}
summaries/histogram_loss*a	   @�9d@   @�9d@      �?!   @�9d@) q�p���@2C��ôc@�Y��=�e@�������:              �?        6�p��       ��	�X��{Y�A�*�

summaries/loss�7�B
}
summaries/histogram_loss*a	   `�FW@   `�FW@      �?!   `�FW@) i�A���@2
6@�F?V@r;`�xX@�������:              �?        ~�*G�       ��	Tr��{Y�A�*�

summaries/loss��)C
}
summaries/histogram_loss*a	   ��:e@   ��:e@      �?!   ��:e@)@ƪ+�@2C��ôc@�Y��=�e@�������:              �?        3�lݥ       ��	Ҍ��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    Z�`@    Z�`@      �?!    Z�`@) @�D]��@2��GL:I`@߱�&�a@�������:              �?        /��I�       ��	n���{Y�A�*�

summaries/loss,� C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@) ���F@�@2C��ôc@�Y��=�e@�������:              �?        �=R�       ��	j���{Y�A�*�

summaries/lossj�C
}
summaries/histogram_loss*a	   @�a@   @�a@      �?!   @�a@) ��2�@2߱�&�a@C��ôc@�������:              �?        �R�d�       ��	�۴�{Y�A�*�

summaries/loss>C
}
summaries/histogram_loss*a	   ��g`@   ��g`@      �?!   ��g`@)@��NA��@2��GL:I`@߱�&�a@�������:              �?        i�¥       ��	A���{Y�A�*�

summaries/loss�"+C
}
summaries/histogram_loss*a	   `Wde@   `Wde@      �?!   `Wde@)@&�ڙ�@2C��ôc@�Y��=�e@�������:              �?        ��]�       ��	���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���Z@   ���Z@      �?!   ���Z@)�X����@2��iI�Z@~
�i�]@�������:              �?        -�",�       ��	%��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   `c@   `c@      �?!   `c@)@v�����@2߱�&�a@C��ôc@�������:              �?        ���]�       ��	�=��{Y�A�*�

summaries/loss�� C
}
summaries/histogram_loss*a	   �`@   �`@      �?!   �`@) D*PP2�@2~
�i�]@��GL:I`@�������:              �?        ��7�       ��	�W��{Y�A�*�

summaries/loss3�C
}
summaries/histogram_loss*a	   `�>`@   `�>`@      �?!   `�>`@)@
*B~�@2~
�i�]@��GL:I`@�������:              �?        � .�       ��	:x��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �~�]@   �~�]@      �?!   �~�]@)�z��U�@2��iI�Z@~
�i�]@�������:              �?        )�I�       ��	d���{Y�A�*�

summaries/loss|pC
}
summaries/histogram_loss*a	   ��a@   ��a@      �?!   ��a@) /���@2߱�&�a@C��ôc@�������:              �?        0���       ��	����{Y�A�*�

summaries/loss�%�B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) �nէ'�@2r;`�xX@��iI�Z@�������:              �?        f�˥       ��	�ѵ�{Y�A�*�

summaries/lossQ:&C
}
summaries/histogram_loss*a	    J�d@    J�d@      �?!    J�d@)@h3����@2C��ôc@�Y��=�e@�������:              �?        5��       ��	�뵗{Y�A�*�

summaries/lossj�C
}
summaries/histogram_loss*a	   @c@   @c@      �?!   @c@) �z�}��@2߱�&�a@C��ôc@�������:              �?        x�!�       ��	���{Y�A�*�

summaries/loss^�B
}
summaries/histogram_loss*a	   ���]@   ���]@      �?!   ���]@)�Pbۃ��@2~
�i�]@��GL:I`@�������:              �?        p/&�       ��	���{Y�A�*�

summaries/loss�%C
}
summaries/histogram_loss*a	    \�d@    \�d@      �?!    \�d@)@pړ���@2C��ôc@�Y��=�e@�������:              �?        �N +�       ��	�8��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @`�]@   @`�]@      �?!   @`�]@)����0��@2~
�i�]@��GL:I`@�������:              �?        �nv�       ��	�Q��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `y^@   `y^@      �?!   `y^@) [����@2~
�i�]@��GL:I`@�������:              �?        s�*e�       ��	�k��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@)��u�3&�@2r;`�xX@��iI�Z@�������:              �?        H`��       ��	܃��{Y�A�*�

summaries/loss>)�B
}
summaries/histogram_loss*a	   �'%^@   �'%^@      �?!   �'%^@)�`��e�@2~
�i�]@��GL:I`@�������:              �?        q���       ��	E���{Y�A�*�

summaries/loss�9C
}
summaries/histogram_loss*a	   �:�b@   �:�b@      �?!   �:�b@) �?��@2߱�&�a@C��ôc@�������:              �?        ��)�       ��	V���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @u�a@   @u�a@      �?!   @u�a@) 9c��d�@2��GL:I`@߱�&�a@�������:              �?        W�/I�       ��	�Ҷ�{Y�A�*�

summaries/loss0�C
}
summaries/histogram_loss*a	    ��a@    ��a@      �?!    ��a@) @5?4�@2߱�&�a@C��ôc@�������:              �?        ��Rj�       ��	h춗{Y�A�*�

summaries/lossƈ�B
}
summaries/histogram_loss*a	   ��[@   ��[@      �?!   ��[@)�$�ݭ��@2��iI�Z@~
�i�]@�������:              �?        *�)b�       ��	���{Y�A�*�

summaries/loss�	C
}
summaries/histogram_loss*a	   �� a@   �� a@      �?!   �� a@)@���U�@2��GL:I`@߱�&�a@�������:              �?        ���6�       ��	 ��{Y�A�*�

summaries/loss�j*C
}
summaries/histogram_loss*a	   �]Me@   �]Me@      �?!   �]Me@)@Ȳ��\�@2C��ôc@�Y��=�e@�������:              �?        �../�       ��	z9��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    z�a@    z�a@      �?!    z�a@)@(h���@2��GL:I`@߱�&�a@�������:              �?        +_+��       ��	�R��{Y�A�*�

summaries/loss�<C
}
summaries/histogram_loss*a	    ܀g@    ܀g@      �?!    ܀g@) ��%CC�@2�Y��=�e@����*�g@�������:              �?        �]�       ��	+l��{Y�A�*�

summaries/loss�
C
}
summaries/histogram_loss*a	   ��Aa@   ��Aa@      �?!   ��Aa@)@F/ `��@2��GL:I`@߱�&�a@�������:              �?        un3/�       ��	����{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   �`�[@   �`�[@      �?!   �`�[@) FsՆJ�@2��iI�Z@~
�i�]@�������:              �?        ޘq�       ��	ǜ��{Y�A�*�

summaries/loss5�B
}
summaries/histogram_loss*a	   ��#Y@   ��#Y@      �?!   ��#Y@) _�ʩ��@2r;`�xX@��iI�Z@�������:              �?        ҍd�       ��	t���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �7Y@   �7Y@      �?!   �7Y@)���j��@2r;`�xX@��iI�Z@�������:              �?        C�W��       ��	�˷�{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    >�`@    >�`@      �?!    >�`@) @�L��@2��GL:I`@߱�&�a@�������:              �?        6v�.�       ��	i巗{Y�A�*�

summaries/loss�YC
}
summaries/histogram_loss*a	   �0�`@   �0�`@      �?!   �0�`@) ��_�@2��GL:I`@߱�&�a@�������:              �?        ���̥       ��	����{Y�A�*�

summaries/loss�:
C
}
summaries/histogram_loss*a	    \Ga@    \Ga@      �?!    \Ga@)  ����@2��GL:I`@߱�&�a@�������:              �?        �\R/�       ��	��{Y�A�*�

summaries/lossm�C
}
summaries/histogram_loss*a	   �M�c@   �M�c@      �?!   �M�c@)@�tͻ�@2߱�&�a@C��ôc@�������:              �?        � ���       ��	�4��{Y�A�*�

summaries/loss"C
}
summaries/histogram_loss*a	   @��a@   @��a@      �?!   @��a@) !gw���@2��GL:I`@߱�&�a@�������:              �?        L}�ڥ       ��	wN��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @��`@   @��`@      �?!   @��`@) �c����@2��GL:I`@߱�&�a@�������:              �?        �c\�       ��	+h��{Y�A�*�

summaries/loss^��B
}
summaries/histogram_loss*a	   �K{_@   �K{_@      �?!   �K{_@)�Pӽ��@2~
�i�]@��GL:I`@�������:              �?        �/�       ��	4���{Y�A�*�

summaries/loss.��B
}
summaries/histogram_loss*a	   ��_@   ��_@      �?!   ��_@)�yx�%�@2~
�i�]@��GL:I`@�������:              �?        �F���       ��	���{Y�A�*�

summaries/loss(�C
}
summaries/histogram_loss*a	    �Y`@    �Y`@      �?!    �Y`@) �����@2��GL:I`@߱�&�a@�������:              �?        ����       ��	����{Y�A�*�

summaries/loss�G;C
}
summaries/histogram_loss*a	   @�hg@   @�hg@      �?!   @�hg@)���|1 �@2�Y��=�e@����*�g@�������:              �?        {�Υ       ��	�˸�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��PW@   ��PW@      �?!   ��PW@) �����@2
6@�F?V@r;`�xX@�������:              �?        ��٠�       ��	?丗{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��~T@   ��~T@      �?!   ��~T@) 1�"A�@2��X�9T@
6@�F?V@�������:              �?        �~c]�       ��	7���{Y�A�*�

summaries/lossp��B
}
summaries/histogram_loss*a	    �:]@    �:]@      �?!    �:]@)  6����@2��iI�Z@~
�i�]@�������:              �?        ��T"�       ��	]��{Y�A�*�

summaries/loss5��B
}
summaries/histogram_loss*a	   �&[@   �&[@      �?!   �&[@) �0�K��@2��iI�Z@~
�i�]@�������:              �?        t��Q�       ��	�1��{Y�A�*�

summaries/loss�k?C
}
summaries/histogram_loss*a	    {�g@    {�g@      �?!    {�g@) ��7C��@2����*�g@�'�;�:j@�������:              �?        �p���       ��	MM��{Y�A�*�

summaries/loss�F�B
}
summaries/histogram_loss*a	    Ո_@    Ո_@      �?!    Ո_@) �	�e�@2~
�i�]@��GL:I`@�������:              �?        �12�       ��	�h��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �}�Z@   �}�Z@      �?!   �}�Z@)�("��@2r;`�xX@��iI�Z@�������:              �?        �L���       ��	䁹�{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @�B`@   @�B`@      �?!   @�B`@) � ����@2~
�i�]@��GL:I`@�������:              �?        u���       ��	5���{Y�A�*�

summaries/loss`9C
}
summaries/histogram_loss*a	    ,�a@    ,�a@      �?!    ,�a@)  �v�3�@2��GL:I`@߱�&�a@�������:              �?        ��(�       ��	����{Y�A�*�

summaries/lossS[C
}
summaries/histogram_loss*a	   `jkc@   `jkc@      �?!   `jkc@)@:����@2߱�&�a@C��ôc@�������:              �?        �ؽ^�       ��	-͹�{Y�A�*�

summaries/loss�K�B
}
summaries/histogram_loss*a	   �wIZ@   �wIZ@      �?!   �wIZ@) �x��@2r;`�xX@��iI�Z@�������:              �?        ݗO7�       ��	�湗{Y�A�*�

summaries/loss!yC
}
summaries/histogram_loss*a	    $�`@    $�`@      �?!    $�`@)@��H#�@2��GL:I`@߱�&�a@�������:              �?        mB��       ��	y��{Y�A�*�

summaries/loss�'C
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@) ��@�@2��GL:I`@߱�&�a@�������:              �?        �%T�       ��	 ��{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    |4`@    |4`@      �?!    |4`@)@�j�i�@2~
�i�]@��GL:I`@�������:              �?        +cŧ�       ��	e7��{Y�A�*�

summaries/losst�C
}
summaries/histogram_loss*a	   �N_c@   �N_c@      �?!   �N_c@) $�%�t�@2߱�&�a@C��ôc@�������:              �?        ��ե       ��	�P��{Y�A�*�

summaries/lossJ_/C
}
summaries/histogram_loss*a	   @��e@   @��e@      �?!   @��e@) Y ���@2�Y��=�e@����*�g@�������:              �?        -��ݥ       ��	�k��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �_@    �_@      �?!    �_@) 6rQ4�@2~
�i�]@��GL:I`@�������:              �?        :DD�       ��	r���{Y�A�*�

summaries/loss̧�B
}
summaries/histogram_loss*a	   ���^@   ���^@      �?!   ���^@) Ry[	:�@2~
�i�]@��GL:I`@�������:              �?        A�K��       ��	����{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    �8c@    �8c@      �?!    �8c@) @��o�@2߱�&�a@C��ôc@�������:              �?        ���#�       ��	k���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@) �o���@2C��ôc@�Y��=�e@�������:              �?        5Ŏ�       ��	pҺ�{Y�A�*�

summaries/loss˪�B
}
summaries/histogram_loss*a	   `YuT@   `YuT@      �?!   `YuT@)@>�(�@2��X�9T@
6@�F?V@�������:              �?        Apj�       ��	�꺗{Y�A�*�

summaries/lossl�B
}
summaries/histogram_loss*a	   ��_@   ��_@      �?!   ��_@) ����@2~
�i�]@��GL:I`@�������:              �?        �p��       ��	���{Y�A�*�

summaries/loss�j�B
}
summaries/histogram_loss*a	   @QM_@   @QM_@      �?!   @QM_@)�L�;���@2~
�i�]@��GL:I`@�������:              �?        ���H�       ��	���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   `6zZ@   `6zZ@      �?!   `6zZ@) e�k��@2r;`�xX@��iI�Z@�������:              �?        Hd.��       ��	L8��{Y�A�*�

summaries/loss�LC
}
summaries/histogram_loss*a	   ��	a@   ��	a@      �?!   ��	a@) �p�k$�@2��GL:I`@߱�&�a@�������:              �?        7��(�       ��	eP��{Y�A�*�

summaries/lossu�C
}
summaries/histogram_loss*a	   �n?b@   �n?b@      �?!   �n?b@)@�(b���@2߱�&�a@C��ôc@�������:              �?        ��陥       ��	�i��{Y�A�*�

summaries/lossT̻B
}
summaries/histogram_loss*a	   ��yW@   ��yW@      �?!   ��yW@) r���8�@2
6@�F?V@r;`�xX@�������:              �?        M�"�       ��	,���{Y�A�*�

summaries/loss� C
}
summaries/histogram_loss*a	   ��`@   ��`@      �?!   ��`@) ��q�@2~
�i�]@��GL:I`@�������:              �?        k���       ��	����{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) \[BD�@2r;`�xX@��iI�Z@�������:              �?        ����       ��	t���{Y�A�*�

summaries/loss �C
}
summaries/histogram_loss*a	    ��c@    ��c@      �?!    ��c@)  @
l��@2C��ôc@�Y��=�e@�������:              �?        5��@�       ��	)ϻ�{Y�A�*�

summaries/loss4!�B
}
summaries/histogram_loss*a	   �&$V@   �&$V@      �?!   �&$V@) ������@2��X�9T@
6@�F?V@�������:              �?        �*2�       ��	G黗{Y�A�*�

summaries/losspz C
}
summaries/histogram_loss*a	    Nd@    Nd@      �?!    Nd@) @��Q&�@2C��ôc@�Y��=�e@�������:              �?        z�(T�       ��	��{Y�A�*�

summaries/loss^)C
}
summaries/histogram_loss*a	   ��!e@   ��!e@      �?!   ��!e@) �<-U��@2C��ôc@�Y��=�e@�������:              �?        0��ݥ       ��	T��{Y�A�*�

summaries/lossS.C
}
summaries/histogram_loss*a	   `�e`@   `�e`@      �?!   `�e`@)@��T��@2��GL:I`@߱�&�a@�������:              �?        ^bb��       ��	�4��{Y�A�*�

summaries/loss�G�B
}
summaries/histogram_loss*a	   `��^@   `��^@      �?!   `��^@) n'#�@2~
�i�]@��GL:I`@�������:              �?        ����       ��	HO��{Y�A�*�

summaries/loss7o�B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@)@t���Ҹ@2�0n9�bR@��X�9T@�������:              �?        ?��       ��	^h��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �p�a@   �p�a@      �?!   �p�a@) W�s��@2��GL:I`@߱�&�a@�������:              �?        q��       ��	����{Y�A�*�

summaries/lossBY�B
}
summaries/histogram_loss*a	   @(�_@   @(�_@      �?!   @(�_@)���§��@2~
�i�]@��GL:I`@�������:              �?        {e�A�       ��	$���{Y�A�*�

summaries/lossF*(C
}
summaries/histogram_loss*a	   �He@   �He@      �?!   �He@) �¶���@2C��ôc@�Y��=�e@�������:              �?        -��       ��	����{Y�A�*�

summaries/lossW�*C
}
summaries/histogram_loss*a	   �Ye@   �Ye@      �?!   �Ye@)@�W}�@2C��ôc@�Y��=�e@�������:              �?        o�g��       ��	K˼�{Y�A�*�

summaries/loss�n�B
}
summaries/histogram_loss*a	   @��R@   @��R@      �?!   @��R@) )-s�@2�0n9�bR@��X�9T@�������:              �?        �)	�       ��	�众{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   `4�c@   `4�c@      �?!   `4�c@)@rCl���@2C��ôc@�Y��=�e@�������:              �?        �h��       ��	����{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   `|~\@   `|~\@      �?!   `|~\@) iW�M_�@2��iI�Z@~
�i�]@�������:              �?        _��       ��	���{Y�A�*�

summaries/loss�7C
}
summaries/histogram_loss*a	    ��b@    ��b@      �?!    ��b@) �`��T�@2߱�&�a@C��ôc@�������:              �?        �\.�       ��	U0��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @��]@   @��]@      �?!   @��]@)��dƚ�@2~
�i�]@��GL:I`@�������:              �?        ���)�       ��	
H��{Y�A�*�

summaries/lossx	�B
}
summaries/histogram_loss*a	    /V@    /V@      �?!    /V@) jVAC�@2��X�9T@
6@�F?V@�������:              �?        ��       ��	b��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �:�^@   �:�^@      �?!   �:�^@)�܋A#��@2~
�i�]@��GL:I`@�������:              �?        bA�       ��	�{��{Y�A�*�

summaries/loss�PC
}
summaries/histogram_loss*a	   `�b@   `�b@      �?!   `�b@)@�f���@2߱�&�a@C��ôc@�������:              �?        ����       ��	 ���{Y�A�*�

summaries/loss�P+C
}
summaries/histogram_loss*a	   �je@   �je@      �?!   �je@)@�:P��@2C��ôc@�Y��=�e@�������:              �?        �?���       ��	����{Y�A�*�

summaries/loss�O�B
}
summaries/histogram_loss*a	   ��)\@   ��)\@      �?!   ��)\@)�(*���@2��iI�Z@~
�i�]@�������:              �?        �Imץ       ��	˽�{Y�A�*�

summaries/loss�OC
}
summaries/histogram_loss*a	   ���a@   ���a@      �?!   ���a@)@,��9�@2��GL:I`@߱�&�a@�������:              �?        ����       ��	G佗{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@)@:8p���@2C��ôc@�Y��=�e@�������:              �?        ���       ��	���{Y�A�*�

summaries/lossY��B
}
summaries/histogram_loss*a	    �:Z@    �:Z@      �?!    �:Z@) ���@2r;`�xX@��iI�Z@�������:              �?        ���$�       ��	/��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @��a@   @��a@      �?!   @��a@) �|�. �@2߱�&�a@C��ôc@�������:              �?        o�皥       ��	j1��{Y�A�*�

summaries/loss>?C
}
summaries/histogram_loss*a	   ��g`@   ��g`@      �?!   ��g`@) ��Dr��@2��GL:I`@߱�&�a@�������:              �?        ���       ��	�J��{Y�A�*�

summaries/loss7Q�B
}
summaries/histogram_loss*a	   �&�\@   �&�\@      �?!   �&�\@) :�`u �@2��iI�Z@~
�i�]@�������:              �?        �查       ��	c��{Y�A�*�

summaries/lossR� C
}
summaries/histogram_loss*a	   @�d@   @�d@      �?!   @�d@) �|>*�@2C��ôc@�Y��=�e@�������:              �?        ���ڥ       ��	�|��{Y�A�*�

summaries/loss�4C
}
summaries/histogram_loss*a	   `�Fc@   `�Fc@      �?!   `�Fc@)@R@�8�@2߱�&�a@C��ôc@�������:              �?        ���       ��	Ֆ��{Y�A�*�

summaries/loss£�B
}
summaries/histogram_loss*a	   @xS@   @xS@      �?!   @xS@) �'ȷ��@2�0n9�bR@��X�9T@�������:              �?        �қ��       ��	����{Y�A�*�

summaries/loss�hC
}
summaries/histogram_loss*a	    a@    a@      �?!    a@)@��>�+�@2��GL:I`@߱�&�a@�������:              �?        �/[��       ��	�˾�{Y�A�*�

summaries/lossO��B
}
summaries/histogram_loss*a	   �i{[@   �i{[@      �?!   �i{[@) LH���@2��iI�Z@~
�i�]@�������:              �?        ̜�-�       ��	得{Y�A�*�

summaries/loss�sC
}
summaries/histogram_loss*a	    |�b@    |�b@      �?!    |�b@)  ����@2߱�&�a@C��ôc@�������:              �?        ���V�       ��	e���{Y�A�*�

summaries/loss��%C
}
summaries/histogram_loss*a	   ��d@   ��d@      �?!   ��d@) ��<���@2C��ôc@�Y��=�e@�������:              �?        ��X��       ��	���{Y�A�*�

summaries/lossF}C
}
summaries/histogram_loss*a	   ��a@   ��a@      �?!   ��a@) �[�U1�@2��GL:I`@߱�&�a@�������:              �?        ��ߥ       ��	�0��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @{b@   @{b@      �?!   @{b@) i��}y�@2߱�&�a@C��ôc@�������:              �?        �b�       ��	#K��{Y�A�*�

summaries/lossr�B
}
summaries/histogram_loss*a	    C�_@    C�_@      �?!    C�_@) ΈW]�@2~
�i�]@��GL:I`@�������:              �?        �o;�       ��	�d��{Y�A�*�

summaries/loss:4�B
}
summaries/histogram_loss*a	   @��\@   @��\@      �?!   @��\@)��sMϦ�@2��iI�Z@~
�i�]@�������:              �?        &%8�       ��	�~��{Y�A�*�

summaries/loss.s�B
}
summaries/histogram_loss*a	   �en_@   �en_@      �?!   �en_@)��� b��@2~
�i�]@��GL:I`@�������:              �?        �-�G�       ��	����{Y�A�*�

summaries/lossf�C
}
summaries/histogram_loss*a	   ��<c@   ��<c@      �?!   ��<c@) )�QM!�@2߱�&�a@C��ôc@�������:              �?        !�2N�       ��	����{Y�A�*�

summaries/loss�� C
}
summaries/histogram_loss*a	    �`@    �`@      �?!    �`@)@�i $�@2~
�i�]@��GL:I`@�������:              �?        �6X�       ��	d˿�{Y�A�*�

summaries/loss�cC
}
summaries/histogram_loss*a	   �x�c@   �x�c@      �?!   �x�c@)@,�!��@2C��ôc@�Y��=�e@�������:              �?        ]gSG�       ��	俗{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�^`@   @�^`@      �?!   @�^`@) �[꒿�@2��GL:I`@߱�&�a@�������:              �?        X�G�       ��	r���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �?R@   �?R@      �?!   �?R@)@�a��δ@2Π54�P@�0n9�bR@�������:              �?        F8���       ��	���{Y�A�*�

summaries/loss�|C
}
summaries/histogram_loss*a	   `�ob@   `�ob@      �?!   `�ob@)@,>�@2߱�&�a@C��ôc@�������:              �?        �1^�       ��	2��{Y�A�*�

summaries/loss�?�B
}
summaries/histogram_loss*a	    �X@    �X@      �?!    �X@) ��|��@2
6@�F?V@r;`�xX@�������:              �?        oD�%�       ��	�J��{Y�A�*�

summaries/lossj1C
}
summaries/histogram_loss*a	   @-�a@   @-�a@      �?!   @-�a@) �oȶ��@2��GL:I`@߱�&�a@�������:              �?        5RP��       ��	�g��{Y�A�*�

summaries/loss�qC
}
summaries/histogram_loss*a	   �1�`@   �1�`@      �?!   �1�`@) ���=��@2��GL:I`@߱�&�a@�������:              �?        #�%�       ��	M���{Y�A�*�

summaries/loss�UC
}
summaries/histogram_loss*a	    ��`@    ��`@      �?!    ��`@) �#�\�@2��GL:I`@߱�&�a@�������:              �?        ()�,�       ��	����{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @��W@   @��W@      �?!   @��W@)��	S��@2
6@�F?V@r;`�xX@�������:              �?        ����       ��	����{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��2U@   ��2U@      �?!   ��2U@)@hz�g�@2��X�9T@
6@�F?V@�������:              �?        �&�k�       ��	N���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    5�_@    5�_@      �?!    5�_@) 2Rk�@2~
�i�]@��GL:I`@�������:              �?        ���       ��	����{Y�A�*�

summaries/lossZxC
}
summaries/histogram_loss*a	   @�a@   @�a@      �?!   @�a@) �o��@2��GL:I`@߱�&�a@�������:              �?        3���       ��	���{Y�A�*�

summaries/loss�S�B
}
summaries/histogram_loss*a	   �r�]@   �r�]@      �?!   �r�]@) �)�FE�@2��iI�Z@~
�i�]@�������:              �?        `��٥       ��	:$��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��_@   ��_@      �?!   ��_@) (.�@2~
�i�]@��GL:I`@�������:              �?        !�W¥       ��	:>��{Y�A�*�

summaries/loss�*�B
}
summaries/histogram_loss*a	   �TE]@   �TE]@      �?!   �TE]@) �ї?��@2��iI�Z@~
�i�]@�������:              �?        \��*�       ��	yW��{Y�A�*�

summaries/loss 5�B
}
summaries/histogram_loss*a	    ��_@    ��_@      �?!    ��_@)   �9N�@2~
�i�]@��GL:I`@�������:              �?        �P��       ��	�q��{Y�A�*�

summaries/lossJX�B
}
summaries/histogram_loss*a	   @	k^@   @	k^@      �?!   @	k^@)���]��@2~
�i�]@��GL:I`@�������:              �?        �2���       ��	!���{Y�A�*�

summaries/loss��+C
}
summaries/histogram_loss*a	   �0we@   �0we@      �?!   �0we@) ���W��@2C��ôc@�Y��=�e@�������:              �?        �å       ��	���{Y�A�*�

summaries/loss�!C
}
summaries/histogram_loss*a	   �9b@   �9b@      �?!   �9b@) ��}�I�@2߱�&�a@C��ôc@�������:              �?        �*�	�       ��	����{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ��q`@   ��q`@      �?!   ��q`@) �WcS��@2��GL:I`@߱�&�a@�������:              �?        ^.�k�       ��	����{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    Y�]@    Y�]@      �?!    Y�]@) ��{���@2~
�i�]@��GL:I`@�������:              �?        ^���       ��	�{Y�A�*�

summaries/lossH��B
}
summaries/histogram_loss*a	    )�X@    )�X@      �?!    )�X@) ��|x�@2r;`�xX@��iI�Z@�������:              �?        �9�2�       ��	�({Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    � Y@    � Y@      �?!    � Y@)  ҂��@2r;`�xX@��iI�Z@�������:              �?        '�s�       ��	xB{Y�A�*�

summaries/loss `�B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@) � {��@2
6@�F?V@r;`�xX@�������:              �?        ^��f�       ��	�[{Y�A�*�

summaries/loss�\C
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@) �wJ��@2C��ôc@�Y��=�e@�������:              �?        �B@ȥ       ��	~t{Y�A�*�

summaries/losszBC
}
summaries/histogram_loss*a	   @O(`@   @O(`@      �?!   @O(`@) ��Q�@2~
�i�]@��GL:I`@�������:              �?        
H�Q�       ��	��{Y�A�*�

summaries/lossd��B
}
summaries/histogram_loss*a	   �L�]@   �L�]@      �?!   �L�]@) �v0��@2~
�i�]@��GL:I`@�������:              �?        ��5'�       ��	i�{Y�A�*�

summaries/loss�A�B
}
summaries/histogram_loss*a	   �7�Z@   �7�Z@      �?!   �7�Z@) �ц?j�@2r;`�xX@��iI�Z@�������:              �?        Ec��       ��	��{Y�A�*�

summaries/lossb�B
}
summaries/histogram_loss*a	   @�BV@   @�BV@      �?!   @�BV@) a?����@2
6@�F?V@r;`�xX@�������:              �?        �=���       ��	e�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �9X_@   �9X_@      �?!   �9X_@)�8"��@2~
�i�]@��GL:I`@�������:              �?        �h|�       ��	��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �W�^@   �W�^@      �?!   �W�^@) B�+1t�@2~
�i�]@��GL:I`@�������:              �?        �Y���       ��	�×{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@) �Xc�@2
6@�F?V@r;`�xX@�������:              �?        WTiI�       ��	Q-×{Y�A�*�

summaries/loss�r�B
}
summaries/histogram_loss*a	   �S.X@   �S.X@      �?!   �S.X@)�0���E�@2
6@�F?V@r;`�xX@�������:              �?        �,4�       ��	�F×{Y�A�*�

summaries/lossC
}
summaries/histogram_loss*a	    ��b@    ��b@      �?!    ��b@) �PىL�@2߱�&�a@C��ôc@�������:              �?        ���       ��	�`×{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@) ���O��@2��GL:I`@߱�&�a@�������:              �?        �'�       ��	9{×{Y�A�*�

summaries/loss{C
}
summaries/histogram_loss*a	   `O�`@   `O�`@      �?!   `O�`@)@�M���@2��GL:I`@߱�&�a@�������:              �?        ��7�       ��	��×{Y�A�*�

summaries/loss]��B
}
summaries/histogram_loss*a	   ��5]@   ��5]@      �?!   ��5]@) �H���@2��iI�Z@~
�i�]@�������:              �?        �֊:�       ��	��×{Y�A�*�

summaries/loss�2RC
}
summaries/histogram_loss*a	    [Fj@    [Fj@      �?!    [Fj@) �"���@2�'�;�:j@}+��
�l@�������:              �?        �� Y�       ��	��×{Y�A�*�

summaries/lossm�C
}
summaries/histogram_loss*a	   �m_`@   �m_`@      �?!   �m_`@)@�h��@2��GL:I`@߱�&�a@�������:              �?        �wѥ       ��	��×{Y�A�*�

summaries/lossV�C
}
summaries/histogram_loss*a	   �
z`@   �
z`@      �?!   �
z`@) 9�c���@2��GL:I`@߱�&�a@�������:              �?        ����       ��	��×{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    5p]@    5p]@      �?!    5p]@) �W���@2��iI�Z@~
�i�]@�������:              �?        WWp�       ��	fė{Y�A�*�

summaries/loss�MC
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@) ��"T��@2��GL:I`@߱�&�a@�������:              �?        <�'#�       ��	�.ė{Y�A�*�

summaries/lossBt�B
}
summaries/histogram_loss*a	   @�.V@   @�.V@      �?!   @�.V@) A�~��@2��X�9T@
6@�F?V@�������:              �?        د�8�       ��	�Hė{Y�A�*�

summaries/lossĭ�B
}
summaries/histogram_loss*a	   ��_@   ��_@      �?!   ��_@) �O6$2�@2~
�i�]@��GL:I`@�������:              �?        o�鷥       ��	,aė{Y�A�*�

summaries/loss�~C
}
summaries/histogram_loss*a	    Տb@    Տb@      �?!    Տb@)@䲄���@2߱�&�a@C��ôc@�������:              �?        F���       ��	�yė{Y�A�*�

summaries/lossQ��B
}
summaries/histogram_loss*a	    *{[@    *{[@      �?!    *{[@) t"���@2��iI�Z@~
�i�]@�������:              �?        G:�	�       ��	�ė{Y�A�*�

summaries/lossc��B
}
summaries/histogram_loss*a	   `̾\@   `̾\@      �?!   `̾\@) IHW��@2��iI�Z@~
�i�]@�������:              �?        q��>�       ��	��ė{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ^@    ^@      �?!    ^@) �^Z�@2~
�i�]@��GL:I`@�������:              �?        �Is��       ��	��ė{Y�A�*�

summaries/loss\�	C
}
summaries/histogram_loss*a	   �1a@   �1a@      �?!   �1a@) Dx��x�@2��GL:I`@߱�&�a@�������:              �?        <�J�       ��	��ė{Y�A�*�

summaries/loss{�B
}
summaries/histogram_loss*a	   @`/Y@   @`/Y@      �?!   @`/Y@)��݇L��@2r;`�xX@��iI�Z@�������:              �?        ���k�       ��	��ė{Y�A�*�

summaries/losspH�B
}
summaries/histogram_loss*a	    �U@    �U@      �?!    �U@) @�g�@2��X�9T@
6@�F?V@�������:              �?        ʜ{/�       ��	�ŗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    9�]@    9�]@      �?!    9�]@) ��9V��@2~
�i�]@��GL:I`@�������:              �?        ��s��       ��	�,ŗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���Y@   ���Y@      �?!   ���Y@) �h���@2r;`�xX@��iI�Z@�������:              �?        �֡�       ��	Hŗ{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	    !�\@    !�\@      �?!    !�\@) B���@2��iI�Z@~
�i�]@�������:              �?        �@�T�       ��	xaŗ{Y�A�*�

summaries/loss�EC
}
summaries/histogram_loss*a	   ��(b@   ��(b@      �?!   ��(b@) ����@2߱�&�a@C��ôc@�������:              �?        �")U�       ��	dxŗ{Y�A�*�

summaries/losse|�B
}
summaries/histogram_loss*a	   ��P@   ��P@      �?!   ��P@)@�\(�@2���cN@Π54�P@�������:              �?        �"ŉ�       ��	��ŗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @^@   @^@      �?!   @^@)�L��oI�@2~
�i�]@��GL:I`@�������:              �?        �l{�       ��	��ŗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���[@   ���[@      �?!   ���[@)��{+8�@2��iI�Z@~
�i�]@�������:              �?        ��7�       ��	Y�ŗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @�U\@   @�U\@      �?!   @�U\@)��3p2�@2��iI�Z@~
�i�]@�������:              �?        s�,s�       ��	��ŗ{Y�A�*�

summaries/lossF��B
}
summaries/histogram_loss*a	   �hR_@   �hR_@      �?!   �hR_@)��..��@2~
�i�]@��GL:I`@�������:              �?        D[b%�       ��	j�ŗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @C�]@   @C�]@      �?!   @C�]@)�T=�4f�@2��iI�Z@~
�i�]@�������:              �?        7���       ��	�Ɨ{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @�2U@   @�2U@      �?!   @�2U@) �e���@2��X�9T@
6@�F?V@�������:              �?        R�g�       ��	�*Ɨ{Y�A�*�

summaries/loss�XC
}
summaries/histogram_loss*a	    a@    a@      �?!    a@)@@<�'�@2��GL:I`@߱�&�a@�������:              �?        3x�
�       ��	�BƗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@) �22� �@2
6@�F?V@r;`�xX@�������:              �?        �!�J�       ��	�\Ɨ{Y�A�*�

summaries/loss+s.C
}
summaries/histogram_loss*a	   `e�e@   `e�e@      �?!   `e�e@)@N�0��@2�Y��=�e@����*�g@�������:              �?        v��       ��	GvƗ{Y�A�*�

summaries/lossC
}
summaries/histogram_loss*a	   ��ca@   ��ca@      �?!   ��ca@)@8a�i��@2��GL:I`@߱�&�a@�������:              �?        �V��       ��	�Ɨ{Y�A�*�

summaries/loss0̸B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@)  ��Ĭ�@2
6@�F?V@r;`�xX@�������:              �?        �E7�       ��	�Ɨ{Y�A�*�

summaries/loss�f�B
}
summaries/histogram_loss*a	    جY@    جY@      �?!    جY@)  ����@2r;`�xX@��iI�Z@�������:              �?        VT܌�       ��	;�Ɨ{Y�A�*�

summaries/loss<
C
}
summaries/histogram_loss*a	   ��Ba@   ��Ba@      �?!   ��Ba@) ������@2��GL:I`@߱�&�a@�������:              �?        *��       ��	L�Ɨ{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   `@�\@   `@�\@      �?!   `@�\@) ���f�@2��iI�Z@~
�i�]@�������:              �?        ꈫ7�       ��	��Ɨ{Y�A�*�

summaries/loss��&C
}
summaries/histogram_loss*a	   ���d@   ���d@      �?!   ���d@) �e!�@2C��ôc@�Y��=�e@�������:              �?        �b%�       ��	�Ǘ{Y�A�*�

summaries/lossA�C
}
summaries/histogram_loss*a	    �ra@    �ra@      �?!    �ra@)@ �� �@2��GL:I`@߱�&�a@�������:              �?        A}�A�       ��	.Ǘ{Y�A�*�

summaries/lossl� C
}
summaries/histogram_loss*a	   ��`@   ��`@      �?!   ��`@) d%d�%�@2~
�i�]@��GL:I`@�������:              �?        ("g�       ��	^IǗ{Y�A�*�

summaries/loss(
C
}
summaries/histogram_loss*a	    %@a@    %@a@      �?!    %@a@) �U�O��@2��GL:I`@߱�&�a@�������:              �?        ��<c�       ��	cbǗ{Y�A�*�

summaries/loss@��B
}
summaries/histogram_loss*a	    W[@    W[@      �?!    W[@)  �3�[�@2��iI�Z@~
�i�]@�������:              �?        ~�=t�       ��	|Ǘ{Y�A�*�

summaries/loss�Q�B
}
summaries/histogram_loss*a	   �2
\@   �2
\@      �?!   �2
\@) �ߟۑ�@2��iI�Z@~
�i�]@�������:              �?        �"Q�       ��	��Ǘ{Y�A�*�

summaries/loss^��B
}
summaries/histogram_loss*a	   �K�[@   �K�[@      �?!   �K�[@)�P���?�@2��iI�Z@~
�i�]@�������:              �?        @�a�       ��	W�Ǘ{Y�A�*�

summaries/loss]j�B
}
summaries/histogram_loss*a	   �K[@   �K[@      �?!   �K[@) �$$u��@2��iI�Z@~
�i�]@�������:              �?        �&¥       ��	u�Ǘ{Y�A�*�

summaries/loss@��B
}
summaries/histogram_loss*a	    (z\@    (z\@      �?!    (z\@)  2Q�W�@2��iI�Z@~
�i�]@�������:              �?        ���       ��	]�Ǘ{Y�A�*�

summaries/loss�k�B
}
summaries/histogram_loss*a	    }m^@    }m^@      �?!    }m^@) Hx����@2~
�i�]@��GL:I`@�������:              �?        ��B�       ��	�Ǘ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    4T@    4T@      �?!    4T@)@lqfス@2�0n9�bR@��X�9T@�������:              �?        ��Y�       ��	Yȗ{Y�A�*�

summaries/loss#�C
}
summaries/histogram_loss*a	   `��`@   `��`@      �?!   `��`@)@2�$�h�@2��GL:I`@߱�&�a@�������:              �?        ��X�       ��	�/ȗ{Y�A�*�

summaries/loss�f�B
}
summaries/histogram_loss*a	   `�L[@   `�L[@      �?!   `�L[@) ��YJ�@2��iI�Z@~
�i�]@�������:              �?        Y���       ��	�Hȗ{Y�A�*�

summaries/loss8��B
}
summaries/histogram_loss*a	    5W@    5W@      �?!    5W@) �1���@2
6@�F?V@r;`�xX@�������:              �?        tT�,�       ��	gcȗ{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ෹`@   ෹`@      �?!   ෹`@)@ ]t�{�@2��GL:I`@߱�&�a@�������:              �?        ��R�       ��	�|ȗ{Y�A�*�

summaries/lossx� C
}
summaries/histogram_loss*a	    d@    d@      �?!    d@) ��9-�@2C��ôc@�Y��=�e@�������:              �?        �Z��       ��	ݖȗ{Y�A�*�

summaries/lossZ!C
}
summaries/histogram_loss*a	   @@+d@   @@+d@      �?!   @@+d@) Z��l�@2C��ôc@�Y��=�e@�������:              �?        Kqĥ       ��	y�ȗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �2�Y@   �2�Y@      �?!   �2�Y@) �pyZ�@2r;`�xX@��iI�Z@�������:              �?        ��^2�       ��	z�ȗ{Y�A�*�

summaries/loss�@�B
}
summaries/histogram_loss*a	    �X@    �X@      �?!    �X@) H�G���@2r;`�xX@��iI�Z@�������:              �?        ʺr��       ��	��ȗ{Y�A�*�

summaries/lossd.�B
}
summaries/histogram_loss*a	   ��e]@   ��e]@      �?!   ��e]@) ����@2��iI�Z@~
�i�]@�������:              �?        �(&8�       ��	�ȗ{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �{b@   �{b@      �?!   �{b@) �:�X�@2߱�&�a@C��ôc@�������:              �?        �˥       ��	�ɗ{Y�A�*�

summaries/loss�n�B
}
summaries/histogram_loss*a	   �֍Y@   �֍Y@      �?!   �֍Y@) �8qh�@2r;`�xX@��iI�Z@�������:              �?        �V��       ��	�*ɗ{Y�A�*�

summaries/loss�u�B
}
summaries/histogram_loss*a	   ���[@   ���[@      �?!   ���[@) �Zq�a�@2��iI�Z@~
�i�]@�������:              �?        �=as�       ��	�Cɗ{Y�A�*�

summaries/loss#_)C
}
summaries/histogram_loss*a	   `�+e@   `�+e@      �?!   `�+e@)@�?��@2C��ôc@�Y��=�e@�������:              �?        _K�D�       ��	F\ɗ{Y�A�*�

summaries/loss
�B
}
summaries/histogram_loss*a	   @@\@   @@\@      �?!   @@\@)� �|0��@2��iI�Z@~
�i�]@�������:              �?        7!u��       ��	�uɗ{Y�A�*�

summaries/loss�v�B
}
summaries/histogram_loss*a	   �َT@   �َT@      �?!   �َT@) q��j�@2��X�9T@
6@�F?V@�������:              �?        (���       ��	��ɗ{Y�A�*�

summaries/loss1�C
}
summaries/histogram_loss*a	    f8b@    f8b@      �?!    f8b@)@�k����@2߱�&�a@C��ôc@�������:              �?        DIR�       ��	 �ɗ{Y�A�*�

summaries/loss�8�B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) "����@2r;`�xX@��iI�Z@�������:              �?        !��       ��	��ɗ{Y�A�*�

summaries/lossz�C
}
summaries/histogram_loss*a	   @��`@   @��`@      �?!   @��`@) ��aXw�@2��GL:I`@߱�&�a@�������:              �?        1��       ��	/�ɗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��^@   ��^@      �?!   ��^@) �#�@2~
�i�]@��GL:I`@�������:              �?        ��A��       ��	��ɗ{Y�A�*�

summaries/lossl.�B
}
summaries/histogram_loss*a	   ���[@   ���[@      �?!   ���[@) �_w��@2��iI�Z@~
�i�]@�������:              �?        Zs�-�       ��	kʗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    5�]@    5�]@      �?!    5�]@) �WW*��@2~
�i�]@��GL:I`@�������:              �?        �x+�       ��	V,ʗ{Y�A�*�

summaries/lossHqC
}
summaries/histogram_loss*a	    )b@    )b@      �?!    )b@) )��_�@2߱�&�a@C��ôc@�������:              �?        �|]�       ��	JFʗ{Y�A�*�

summaries/lossգ�B
}
summaries/histogram_loss*a	   �z�_@   �z�_@      �?!   �z�_@) ��^*�@2~
�i�]@��GL:I`@�������:              �?        4�Z�       ��	J_ʗ{Y�A�*�

summaries/loss`�B
}
summaries/histogram_loss*a	    lb^@    lb^@      �?!    lb^@) ��6���@2~
�i�]@��GL:I`@�������:              �?        ����       ��	�xʗ{Y�A�*�

summaries/loss�"�B
}
summaries/histogram_loss*a	   �S�\@   �S�\@      �?!   �S�\@)�0�G��@2��iI�Z@~
�i�]@�������:              �?        �_7�       ��	d�ʗ{Y�A�*�

summaries/lossj��B
}
summaries/histogram_loss*a	   @�R@   @�R@      �?!   @�R@) �5u-��@2�0n9�bR@��X�9T@�������:              �?        �P_��       ��	.�ʗ{Y�A�*�

summaries/loss�-C
}
summaries/histogram_loss*a	   @|�e@   @|�e@      �?!   @|�e@) �T8Ml�@2�Y��=�e@����*�g@�������:              �?        !��2�       ��	��ʗ{Y�A�*�

summaries/loss�0C
}
summaries/histogram_loss*a	   �f`@   �f`@      �?!   �f`@) ��^���@2��GL:I`@߱�&�a@�������:              �?        �{r�       ��	��ʗ{Y�A�*�

summaries/loss�z�B
}
summaries/histogram_loss*a	   `S�V@   `S�V@      �?!   `S�V@) ;C�p�@2
6@�F?V@r;`�xX@�������:              �?        ��ꪥ       ��	M�ʗ{Y�A�*�

summaries/loss�S�B
}
summaries/histogram_loss*a	   �q�[@   �q�[@      �?!   �q�[@) <�!���@2��iI�Z@~
�i�]@�������:              �?        9����       ��	8˗{Y�A�*�

summaries/lossN@C
}
summaries/histogram_loss*a	   �	hc@   �	hc@      �?!   �	hc@) �Ŧ���@2߱�&�a@C��ôc@�������:              �?        (���       ��	�*˗{Y�A�*�

summaries/loss��	C
}
summaries/histogram_loss*a	   @�;a@   @�;a@      �?!   @�;a@) �B^��@2��GL:I`@߱�&�a@�������:              �?        ��)(�       ��	�C˗{Y�A�*�

summaries/loss.HC
}
summaries/histogram_loss*a	   �	a@   �	a@      �?!   �	a@) zN1#�@2��GL:I`@߱�&�a@�������:              �?        �����       ��	�\˗{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    P�]@    P�]@      �?!    P�]@)  �}7��@2~
�i�]@��GL:I`@�������:              �?        X���       ��	�t˗{Y�A�*�

summaries/loss^�C
}
summaries/histogram_loss*a	   ��wc@   ��wc@      �?!   ��wc@) �Y�R��@2߱�&�a@C��ôc@�������:              �?        �R��       ��	��˗{Y�A�*�

summaries/lossKJ�B
}
summaries/histogram_loss*a	   `I�U@   `I�U@      �?!   `I�U@)@~ܕ���@2��X�9T@
6@�F?V@�������:              �?        �$��       ��	�˗{Y�A�*�

summaries/loss�)eB
}
summaries/histogram_loss*a	   �9�L@   �9�L@      �?!   �9�L@)�8�+z��@2��`��K@���cN@�������:              �?        ִ��       ��	��˗{Y�A�*�

summaries/loss]C�B
}
summaries/histogram_loss*a	   �kS@   �kS@      �?!   �kS@)@�s
��@2�0n9�bR@��X�9T@�������:              �?        ����       ��	��˗{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   @ AV@   @ AV@      �?!   @ AV@) ���@2
6@�F?V@r;`�xX@�������:              �?        �3�Υ       ��	��˗{Y�A�*�

summaries/loss�q�B
}
summaries/histogram_loss*a	   �4�\@   �4�\@      �?!   �4�\@) "F;���@2��iI�Z@~
�i�]@�������:              �?        ��n�       ��	�̗{Y�A�*�

summaries/lossT�B
}
summaries/histogram_loss*a	   ��#^@   ��#^@      �?!   ��#^@) r�pc�@2~
�i�]@��GL:I`@�������:              �?        9a�Υ       ��	�&̗{Y�A�*�

summaries/lossf�C
}
summaries/histogram_loss*a	   ��[`@   ��[`@      �?!   ��[`@) )����@2��GL:I`@߱�&�a@�������:              �?        �����       ��	�@̗{Y�A�*�

summaries/loss�	C
}
summaries/histogram_loss*a	   �?Ab@   �?Ab@      �?!   �?Ab@) �����@2߱�&�a@C��ôc@�������:              �?        ����       ��	�[̗{Y�A�*�

summaries/loss�EC
}
summaries/histogram_loss*a	   ��h`@   ��h`@      �?!   ��h`@) �8+��@2��GL:I`@߱�&�a@�������:              �?        f��J�       ��	Tt̗{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    {"b@    {"b@      �?!    {"b@) �qߍ�@2߱�&�a@C��ôc@�������:              �?        =!3�       ��	��̗{Y�A�*�

summaries/lossQg�B
}
summaries/histogram_loss*a	    ��]@    ��]@      �?!    ��]@) �ȉ���@2~
�i�]@��GL:I`@�������:              �?        @�@�       ��	;�̗{Y�A�*�

summaries/loss$��B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) ���)O�@2r;`�xX@��iI�Z@�������:              �?        �(��       ��	��̗{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ��b@   ��b@      �?!   ��b@) �!��~�@2߱�&�a@C��ôc@�������:              �?        �i���       ��	��̗{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �;X@   �;X@      �?!   �;X@) 28��X�@2
6@�F?V@r;`�xX@�������:              �?        �       ��	��̗{Y�A�*�

summaries/loss>=�B
}
summaries/histogram_loss*a	   ��G_@   ��G_@      �?!   ��G_@)�`�wu��@2~
�i�]@��GL:I`@�������:              �?        A(�ץ       ��	�͗{Y�A�*�

summaries/loss>}�B
}
summaries/histogram_loss*a	   ���^@   ���^@      �?!   ���^@)�`3�m�@2~
�i�]@��GL:I`@�������:              �?        h��Х       ��	1%͗{Y�A�*�

summaries/loss�9�B
}
summaries/histogram_loss*a	   �?�U@   �?�U@      �?!   �?�U@) ��}��@2��X�9T@
6@�F?V@�������:              �?        �� �       ��	�=͗{Y�A�*�

summaries/lossa�$C
}
summaries/histogram_loss*a	    �d@    �d@      �?!    �d@)@��x��@2C��ôc@�Y��=�e@�������:              �?        ��c�       ��	qW͗{Y�A�*�

summaries/loss5i�B
}
summaries/histogram_loss*a	   �&�Z@   �&�Z@      �?!   �&�Z@) �Э=�@2r;`�xX@��iI�Z@�������:              �?        �p���       ��	r͗{Y�A�*�

summaries/loss|��B
}
summaries/histogram_loss*a	   �/�Z@   �/�Z@      �?!   �/�Z@) �f����@2��iI�Z@~
�i�]@�������:              �?        ȫ�       ��	�͗{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �a[@   �a[@      �?!   �a[@) �D���@2��iI�Z@~
�i�]@�������:              �?        g�T��       ��	��͗{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �z~V@   �z~V@      �?!   �z~V@)@������@2
6@�F?V@r;`�xX@�������:              �?        �K�s�       ��	�͗{Y�A�*�

summaries/loss+j�B
}
summaries/histogram_loss*a	   `EMX@   `EMX@      �?!   `EMX@) gt��t�@2
6@�F?V@r;`�xX@�������:              �?        {�       ��	w�͗{Y�A�*�

summaries/loss<��B
}
summaries/histogram_loss*a	   �'�[@   �'�[@      �?!   �'�[@) �p�v:�@2��iI�Z@~
�i�]@�������:              �?        �bϥ       ��	I�͗{Y�A�*�

summaries/loss
r�B
}
summaries/histogram_loss*a	   @A�Z@   @A�Z@      �?!   @A�Z@)��k�	�@2r;`�xX@��iI�Z@�������:              �?        JKZ�       ��	^Η{Y�A�*�

summaries/loss� C
}
summaries/histogram_loss*a	   ��`@   ��`@      �?!   ��`@)@�v�67�@2~
�i�]@��GL:I`@�������:              �?        �9�B�       ��	�(Η{Y�A�*�

summaries/lossQC
}
summaries/histogram_loss*a	    j�a@    j�a@      �?!    j�a@)@��#��@2��GL:I`@߱�&�a@�������:              �?        L�?4�       ��	�AΗ{Y�A�*�

summaries/loss9	"C
}
summaries/histogram_loss*a	    'Ad@    'Ad@      �?!    'Ad@)@�C��@2C��ôc@�Y��=�e@�������:              �?        ���       ��	�ZΗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `��V@   `��V@      �?!   `��V@)@zW���@2
6@�F?V@r;`�xX@�������:              �?        �5j��       ��	;sΗ{Y�A�*�

summaries/loss�Y�B
}
summaries/histogram_loss*a	   `0+S@   `0+S@      �?!   `0+S@)@B�x��@2�0n9�bR@��X�9T@�������:              �?        ����       ��	X�Η{Y�A�*�

summaries/loss�QC
}
summaries/histogram_loss*a	   @>�b@   @>�b@      �?!   @>�b@) 1�mq\�@2߱�&�a@C��ôc@�������:              �?        ?�       ��	]�Η{Y�A�*�

summaries/loss{�B
}
summaries/histogram_loss*a	   `�@Y@   `�@Y@      �?!   `�@Y@) �H���@2r;`�xX@��iI�Z@�������:              �?        )D﹥       ��	b�Η{Y�A�*�

summaries/lossb��B
}
summaries/histogram_loss*a	   @��[@   @��[@      �?!   @��[@)�0�'�o�@2��iI�Z@~
�i�]@�������:              �?        $ʤ��       ��	�Η{Y�A�*�

summaries/loss�0�B
}
summaries/histogram_loss*a	   ��\@   ��\@      �?!   ��\@)�,7�@2��iI�Z@~
�i�]@�������:              �?        X��       ��	��Η{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �_@    �_@      �?!    �_@) ƣ�,�@2~
�i�]@��GL:I`@�������:              �?        ^'Qp�       ��	{ϗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �:�^@   �:�^@      �?!   �:�^@) ��T���@2~
�i�]@��GL:I`@�������:              �?        �h�       ��	�1ϗ{Y�A�*�

summaries/lossPa�B
}
summaries/histogram_loss*a	    *�_@    *�_@      �?!    *�_@)  ��/Y�@2~
�i�]@��GL:I`@�������:              �?        ��f�       ��	<Mϗ{Y�A�*�

summaries/loss�`-C
}
summaries/histogram_loss*a	   @�e@   @�e@      �?!   @�e@) i�[�@2C��ôc@�Y��=�e@�������:              �?        ?���       ��	Ugϗ{Y�A�*�

summaries/loss٩C
}
summaries/histogram_loss*a	    ;�`@    ;�`@      �?!    ;�`@)@|�/�@2��GL:I`@߱�&�a@�������:              �?        0�p�       ��	��ϗ{Y�A�*�

summaries/loss8e�B
}
summaries/histogram_loss*a	    �l]@    �l]@      �?!    �l]@) ���_�@2��iI�Z@~
�i�]@�������:              �?        �����       ��	I�ϗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    :bZ@    :bZ@      �?!    :bZ@)  �����@2r;`�xX@��iI�Z@�������:              �?        R�Nȥ       ��	��ϗ{Y�A�*�

summaries/lossb]�B
}
summaries/histogram_loss*a	   @��\@   @��\@      �?!   @��\@)�0�l��@2��iI�Z@~
�i�]@�������:              �?        Z��       ��	��ϗ{Y�A�*�

summaries/lossNzB
}
summaries/histogram_loss*a	   ��IO@   ��IO@      �?!   ��IO@)��o���@2���cN@Π54�P@�������:              �?        �����       ��	��ϗ{Y�A�*�

summaries/loss�=�B
}
summaries/histogram_loss*a	    ��Y@    ��Y@      �?!    ��Y@) H9"G^�@2r;`�xX@��iI�Z@�������:              �?        �s���       ��	pЗ{Y�A�*�

summaries/loss
&C
}
summaries/histogram_loss*a	   @��b@   @��b@      �?!   @��b@) �W&�@2߱�&�a@C��ôc@�������:              �?        �����       ��	�З{Y�A�*�

summaries/loss�;C
}
summaries/histogram_loss*a	   �w�a@   �w�a@      �?!   �w�a@) AHO�z�@2��GL:I`@߱�&�a@�������:              �?        �O���       ��	�9З{Y�A�*�

summaries/lossܔC
}
summaries/histogram_loss*a	   ��2c@   ��2c@      �?!   ��2c@) D�a��@2߱�&�a@C��ôc@�������:              �?        �/���       ��	�RЗ{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	    B�a@    B�a@      �?!    B�a@) @�w�]�@2��GL:I`@߱�&�a@�������:              �?        �!�ۥ       ��	�kЗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �\�_@   �\�_@      �?!   �\�_@) �-d���@2~
�i�]@��GL:I`@�������:              �?        ��B��       ��	^�З{Y�A�*�

summaries/loss.��B
}
summaries/histogram_loss*a	   �E�X@   �E�X@      �?!   �E�X@)������@2r;`�xX@��iI�Z@�������:              �?        �Hk�       ��	��З{Y�A�*�

summaries/loss�z�B
}
summaries/histogram_loss*a	   `Z/]@   `Z/]@      �?!   `Z/]@) =y���@2��iI�Z@~
�i�]@�������:              �?        2uƁ�       ��	�З{Y�A�*�

summaries/loss}h�B
}
summaries/histogram_loss*a	   ��]@   ��]@      �?!   ��]@) �y����@2~
�i�]@��GL:I`@�������:              �?        �r	��       ��	��З{Y�A�*�

summaries/loss� �B
}
summaries/histogram_loss*a	   �X@   �X@      �?!   �X@)�$C�%�@2
6@�F?V@r;`�xX@�������:              �?        p��Y�       ��	��З{Y�A�*�

summaries/lossf�B
}
summaries/histogram_loss*a	   �¬R@   �¬R@      �?!   �¬R@) d���˵@2�0n9�bR@��X�9T@�������:              �?        ��R-�       ��	�ї{Y�A�*�

summaries/loss6��B
}
summaries/histogram_loss*a	   ��_@   ��_@      �?!   ��_@)��\F�;�@2~
�i�]@��GL:I`@�������:              �?        ��;�       ��	3ї{Y�A�*�

summaries/losso��B
}
summaries/histogram_loss*a	   �-�U@   �-�U@      �?!   �-�U@)@�C��@2��X�9T@
6@�F?V@�������:              �?        ���F�       ��	�4ї{Y�A�*�

summaries/loss=8!C
}
summaries/histogram_loss*a	   �'d@   �'d@      �?!   �'d@)@�/E�a�@2C��ôc@�Y��=�e@�������:              �?        ����       ��	Mї{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �rS@   �rS@      �?!   �rS@)@.�j�·@2�0n9�bR@��X�9T@�������:              �?        �K��       ��	nhї{Y�A�*�

summaries/lossC�B
}
summaries/histogram_loss*a	   `�#U@   `�#U@      �?!   `�#U@)@�ґ��@2��X�9T@
6@�F?V@�������:              �?        ޢ�;�       ��	��ї{Y�A�*�

summaries/lossN��B
}
summaries/histogram_loss*a	   �	rX@   �	rX@      �?!   �	rX@)��z���@2
6@�F?V@r;`�xX@�������:              �?        %���       ��	Лї{Y�A�*�

summaries/loss�L�B
}
summaries/histogram_loss*a	   ���]@   ���]@      �?!   ���]@)�0�G�C�@2��iI�Z@~
�i�]@�������:              �?        �+GH�       ��	ȳї{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��7\@   ��7\@      �?!   ��7\@) ������@2��iI�Z@~
�i�]@�������:              �?        ƣ�A�       ��	[�ї{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ?]@    ?]@      �?!    ?]@) ���~�@2��iI�Z@~
�i�]@�������:              �?        ���       ��	C�ї{Y�A�*�

summaries/lossD��B
}
summaries/histogram_loss*a	   ��x]@   ��x]@      �?!   ��x]@) Bj=$�@2��iI�Z@~
�i�]@�������:              �?        B<>�       ��	��ї{Y�A�*�

summaries/loss�I�B
}
summaries/histogram_loss*a	   �1�[@   �1�[@      �?!   �1�[@)�XI&б�@2��iI�Z@~
�i�]@�������:              �?        ��W �       ��	�җ{Y�A�*�

summaries/lossD��B
}
summaries/histogram_loss*a	   ��v^@   ��v^@      �?!   ��v^@) B� ���@2~
�i�]@��GL:I`@�������:              �?        �F?�       ��	6җ{Y�A�*�

summaries/loss�VC
}
summaries/histogram_loss*a	    ת`@    ת`@      �?!    ת`@) 	$�\�@2��GL:I`@߱�&�a@�������:              �?        %�c(�       ��		Oҗ{Y�A�*�

summaries/lossv��B
}
summaries/histogram_loss*a	   �N\@   �N\@      �?!   �N\@)���F���@2��iI�Z@~
�i�]@�������:              �?        �)ɥ       ��	^hҗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �[@   �[@      �?!   �[@) �U��@2��iI�Z@~
�i�]@�������:              �?        �y��       ��	V�җ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @��^@   @��^@      �?!   @��^@)�dy����@2~
�i�]@��GL:I`@�������:              �?        �;Ga�       ��	(�җ{Y�A�*�

summaries/loss��	C
}
summaries/histogram_loss*a	   ��7a@   ��7a@      �?!   ��7a@) �]��@2��GL:I`@߱�&�a@�������:              �?        nad�       ��	ȳҗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    4SW@    4SW@      �?!    4SW@) �s �@2
6@�F?V@r;`�xX@�������:              �?        *��       ��	��җ{Y�A�*�

summaries/loss!C
}
summaries/histogram_loss*a	    #�a@    #�a@      �?!    #�a@) �̹.��@2��GL:I`@߱�&�a@�������:              �?        �E'�       ��	G�җ{Y�A�*�

summaries/loss%��B
}
summaries/histogram_loss*a	   ���]@   ���]@      �?!   ���]@) �f*�f�@2~
�i�]@��GL:I`@�������:              �?        $b��       ��	��җ{Y�A�*�

summaries/loss�X�B
}
summaries/histogram_loss*a	   @�X@   @�X@      �?!   @�X@)�@�Wg�@2r;`�xX@��iI�Z@�������:              �?        x=L�       ��	/ӗ{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   �! W@   �! W@      �?!   �! W@) #kP��@2
6@�F?V@r;`�xX@�������:              �?        b�mE�       ��	<2ӗ{Y�A�*�

summaries/loss�5�B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@)��5��@2
6@�F?V@r;`�xX@�������:              �?        %��
�       ��	�Jӗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @cs_@   @cs_@      �?!   @cs_@)�ԏ^0��@2~
�i�]@��GL:I`@�������:              �?        �����       ��	dӗ{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @�`@   @�`@      �?!   @�`@) y�p)�@2��GL:I`@߱�&�a@�������:              �?        I>$u�       ��	�|ӗ{Y�A�*�

summaries/lossvA�B
}
summaries/histogram_loss*a	   �.(^@   �.(^@      �?!   �.(^@)�L$�k�@2~
�i�]@��GL:I`@�������:              �?        �F��       ��	[�ӗ{Y�A�*�

summaries/loss0�C
}
summaries/histogram_loss*a	    �a@    �a@      �?!    �a@) @��e��@2��GL:I`@߱�&�a@�������:              �?        j4�l�       ��	�ӗ{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   ���a@   ���a@      �?!   ���a@) d�`��@2��GL:I`@߱�&�a@�������:              �?        Ukc�       ��	��ӗ{Y�A�*�

summaries/lossqi�B
}
summaries/histogram_loss*a	    .-[@    .-[@      �?!    .-[@) |��}�@2��iI�Z@~
�i�]@�������:              �?        5�ĥ       ��	��ӗ{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   �;�a@   �;�a@      �?!   �;�a@) D�S���@2��GL:I`@߱�&�a@�������:              �?        B��M�       ��	�ԗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@) F��j��@2
6@�F?V@r;`�xX@�������:              �?        ��t̥       ��	�ԗ{Y�A�*�

summaries/loss�k�B
}
summaries/histogram_loss*a	   �M\@   �M\@      �?!   �M\@)� �@[�@2��iI�Z@~
�i�]@�������:              �?        �0+�       ��	�6ԗ{Y�A�*�

summaries/loss)�B
}
summaries/histogram_loss*a	    e�_@    e�_@      �?!    e�_@) ��D��@2~
�i�]@��GL:I`@�������:              �?        Nw`y�       ��	&Qԗ{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   �w!c@   �w!c@      �?!   �w!c@) Axi���@2߱�&�a@C��ôc@�������:              �?        1��ڥ       ��	mԗ{Y�A�*�

summaries/lossC�	C
}
summaries/histogram_loss*a	   `h6a@   `h6a@      �?!   `h6a@)@�0�V��@2��GL:I`@߱�&�a@�������:              �?        <���       ��	��ԗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �?W@    �?W@      �?!    �?W@) ��&��@2
6@�F?V@r;`�xX@�������:              �?        ��w/�       ��	D�ԗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��B^@   ��B^@      �?!   ��B^@)�T����@2~
�i�]@��GL:I`@�������:              �?        �Q�ƥ       ��	��ԗ{Y�A�*�

summaries/loss�$C
}
summaries/histogram_loss*a	   ���c@   ���c@      �?!   ���c@)@�����@2C��ôc@�Y��=�e@�������:              �?        7TAh�       ��	��ԗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �W�^@   �W�^@      �?!   �W�^@) BW���@2~
�i�]@��GL:I`@�������:              �?        v�ʥ       ��	��ԗ{Y�A�*�

summaries/loss3��B
}
summaries/histogram_loss*a	   `��^@   `��^@      �?!   `��^@) ŧͰ��@2~
�i�]@��GL:I`@�������:              �?        ����       ��	)՗{Y�A�*�

summaries/loss2h�B
}
summaries/histogram_loss*a	   @mU@   @mU@      �?!   @mU@) q*M��@2��X�9T@
6@�F?V@�������:              �?        �����       ��	S ՗{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�|a@   @�|a@      �?!   @�|a@) �k��@2��GL:I`@߱�&�a@�������:              �?        h�*d�       ��	�:՗{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �w]_@   �w]_@      �?!   �w]_@) BV�(��@2~
�i�]@��GL:I`@�������:              �?        ` Ud�       ��	zS՗{Y�A�*�

summaries/loss�z�B
}
summaries/histogram_loss*a	   �XoY@   �XoY@      �?!   �XoY@) ֈO~7�@2r;`�xX@��iI�Z@�������:              �?        �Y��       ��		l՗{Y�A�*�

summaries/lossj�B
}
summaries/histogram_loss*a	   @mb\@   @mb\@      �?!   @mb\@)����m-�@2��iI�Z@~
�i�]@�������:              �?        ��6��       ��		�՗{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) �� gw�@2r;`�xX@��iI�Z@�������:              �?        X�<(�       ��	�՗{Y�A�*�

summaries/lossGC
}
summaries/histogram_loss*a	    �b@    �b@      �?!    �b@) \����@2߱�&�a@C��ôc@�������:              �?        0�d��       ��	�՗{Y�A�*�

summaries/loss&��B
}
summaries/histogram_loss*a	   �PY@   �PY@      �?!   �PY@)������@2r;`�xX@��iI�Z@�������:              �?        �?�_�       ��	R�՗{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �[Z@   �[Z@      �?!   �[Z@) 28���@2r;`�xX@��iI�Z@�������:              �?        �@��       ��	��՗{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �ub@   �ub@      �?!   �ub@) ���-w�@2߱�&�a@C��ôc@�������:              �?        �W�       ��	�֗{Y�A�*�

summaries/lossĎ�B
}
summaries/histogram_loss*a	   ��1\@   ��1\@      �?!   ��1\@) ������@2��iI�Z@~
�i�]@�������:              �?        3�
�       ��	�֗{Y�A�*�

summaries/loss��
C
}
summaries/histogram_loss*a	    Xa@    Xa@      �?!    Xa@) @8
%��@2��GL:I`@߱�&�a@�������:              �?        7���       ��	�5֗{Y�A�*�

summaries/lossT��B
}
summaries/histogram_loss*a	   ��^@   ��^@      �?!   ��^@) ro5L�@2~
�i�]@��GL:I`@�������:              �?        �cci�       ��	HO֗{Y�A�*�

summaries/lossKD�B
}
summaries/histogram_loss*a	   `��S@   `��S@      �?!   `��S@)@~{�yŸ@2�0n9�bR@��X�9T@�������:              �?        *`u\�       ��	sh֗{Y�A�*�

summaries/lossf��B
}
summaries/histogram_loss*a	   �,Z@   �,Z@      �?!   �,Z@)����vB�@2r;`�xX@��iI�Z@�������:              �?        8�3�       ��	��֗{Y�A�*�

summaries/lossLyC
}
summaries/histogram_loss*a	   �)/`@   �)/`@      �?!   �)/`@) �;�^�@2~
�i�]@��GL:I`@�������:              �?        �׾:�       ��	g�֗{Y�A�*�

summaries/lossnv�B
}
summaries/histogram_loss*a	   ��^@   ��^@      �?!   ��^@)��2��;�@2~
�i�]@��GL:I`@�������:              �?        ��5��       ��	��֗{Y�A�*�

summaries/lossЯ�B
}
summaries/histogram_loss*a	    ��V@    ��V@      �?!    ��V@) @�O��@2
6@�F?V@r;`�xX@�������:              �?        �ZG�       ��	��֗{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �ZBV@   �ZBV@      �?!   �ZBV@)@N�e���@2
6@�F?V@r;`�xX@�������:              �?        g*[�       ��	��֗{Y�A�*�

summaries/loss>� C
}
summaries/histogram_loss*a	   �gd@   �gd@      �?!   �gd@) ���.B�@2C��ôc@�Y��=�e@�������:              �?        dl9Q�       ��	�ח{Y�A�*�

summaries/lossfnC
}
summaries/histogram_loss*a	   ��Mb@   ��Mb@      �?!   ��Mb@) )�����@2߱�&�a@C��ôc@�������:              �?        S4n�       ��	�ח{Y�A�*�

summaries/lossdk�B
}
summaries/histogram_loss*a	   �lM[@   �lM[@      �?!   �lM[@) �kbK�@2��iI�Z@~
�i�]@�������:              �?        �v?y�       ��	�8ח{Y�A�*�

summaries/loss�|�B
}
summaries/histogram_loss*a	   ���W@   ���W@      �?!   ���W@)�$�%/��@2
6@�F?V@r;`�xX@�������:              �?        ؕZ�       ��	UQח{Y�A�*�

summaries/loss`��B
}
summaries/histogram_loss*a	    U@    U@      �?!    U@)  	��ɻ@2��X�9T@
6@�F?V@�������:              �?        ��ĥ       ��	Ukח{Y�A�*�

summaries/loss@��B
}
summaries/histogram_loss*a	    (�^@    (�^@      �?!    (�^@)  2����@2~
�i�]@��GL:I`@�������:              �?        ��cҥ       ��	@�ח{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ��[@    ��[@      �?!    ��[@) ��@Q��@2��iI�Z@~
�i�]@�������:              �?        �D��       ��	|�ח{Y�A�*�

summaries/loss�/2C
}
summaries/histogram_loss*a	   ��Ef@   ��Ef@      �?!   ��Ef@) �c^��@2�Y��=�e@����*�g@�������:              �?        �3�H�       ��	��ח{Y�A�*�

summaries/loss�4C
}
summaries/histogram_loss*a	    �a@    �a@      �?!    �a@) @�|�@2��GL:I`@߱�&�a@�������:              �?        d�K'�       ��	_�ח{Y�A�*�

summaries/loss�eC
}
summaries/histogram_loss*a	   ��L`@   ��L`@      �?!   ��L`@) d��Ԛ�@2��GL:I`@߱�&�a@�������:              �?        ��,�       ��	��ח{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��q]@   ��q]@      �?!   ��q]@)�j�M�@2��iI�Z@~
�i�]@�������:              �?        >��H�       ��	��ח{Y�A�*�

summaries/losső�B
}
summaries/histogram_loss*a	   �8RZ@   �8RZ@      �?!   �8RZ@) 3�Fo��@2r;`�xX@��iI�Z@�������:              �?        ��Z9�       ��	�ؗ{Y�A�*�

summaries/loss�B
C
}
summaries/histogram_loss*a	   `XHa@   `XHa@      �?!   `XHa@)@"H���@2��GL:I`@߱�&�a@�������:              �?        �޴,�       ��	5ؗ{Y�A�*�

summaries/losst��B
}
summaries/histogram_loss*a	   �nWZ@   �nWZ@      �?!   �nWZ@) �Ur��@2r;`�xX@��iI�Z@�������:              �?        �z�       ��	{Mؗ{Y�A�*�

summaries/lossj��B
}
summaries/histogram_loss*a	   @�2Y@   @�2Y@      �?!   @�2Y@)�|�Z���@2r;`�xX@��iI�Z@�������:              �?        |F�       ��	�gؗ{Y�A�*�

summaries/loss!a�B
}
summaries/histogram_loss*a	    $,U@    $,U@      �?!    $,U@)@��X�@2��X�9T@
6@�F?V@�������:              �?        �j2u�       ��	I�ؗ{Y�A�*�

summaries/loss�`�B
}
summaries/histogram_loss*a	   @L_@   @L_@      �?!   @L_@)��̫/��@2~
�i�]@��GL:I`@�������:              �?        9s�/�       ��	�ؗ{Y�A�*�

summaries/loss!��B
}
summaries/histogram_loss*a	    ��Z@    ��Z@      �?!    ��Z@) �~��@2r;`�xX@��iI�Z@�������:              �?        �Q7�       ��	��ؗ{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @�ua@   @�ua@      �?!   @�ua@) y����@2��GL:I`@߱�&�a@�������:              �?        �i��       ��	��ؗ{Y�A�*�

summaries/loss�gC
}
summaries/histogram_loss*a	   @�,`@   @�,`@      �?!   @�,`@) �w�^Z�@2~
�i�]@��GL:I`@�������:              �?        S&���       ��	��ؗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �y^@   �y^@      �?!   �y^@) E�b}U�@2~
�i�]@��GL:I`@�������:              �?        2�Ǿ�       ��	X�ؗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �r�Z@   �r�Z@      �?!   �r�Z@) ���6!�@2r;`�xX@��iI�Z@�������:              �?        x���       ��	�ٗ{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @u{`@   @u{`@      �?!   @u{`@) 9���@2��GL:I`@߱�&�a@�������:              �?        ��l@�       ��	�4ٗ{Y�A�*�

summaries/loss�! C
}
summaries/histogram_loss*a	   �;`@   �;`@      �?!   �;`@) !��x�@2~
�i�]@��GL:I`@�������:              �?        �-V�       ��	Nٗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@)  �����@2
6@�F?V@r;`�xX@�������:              �?        ykإ       ��	gٗ{Y�A�*�

summaries/loss�4 C
}
summaries/histogram_loss*a	    �`@    �`@      �?!    �`@) @��.�@2~
�i�]@��GL:I`@�������:              �?        v�El�       ��	�ٗ{Y�A�*�

summaries/losslI�B
}
summaries/histogram_loss*a	   �-�V@   �-�V@      �?!   �-�V@) ����@2
6@�F?V@r;`�xX@�������:              �?        ]�Zt�       ��	k�ٗ{Y�A�*�

summaries/losstǮB
}
summaries/histogram_loss*a	   ���U@   ���U@      �?!   ���U@) $cE�Խ@2��X�9T@
6@�F?V@�������:              �?        f��ǥ       ��	[�ٗ{Y�A�*�

summaries/loss3�C
}
summaries/histogram_loss*a	   `�a@   `�a@      �?!   `�a@)@
5e���@2��GL:I`@߱�&�a@�������:              �?        #��ѥ       ��	��ٗ{Y�A�*�

summaries/loss~�B
}
summaries/histogram_loss*a	   �o�V@   �o�V@      �?!   �o�V@) �2���@2
6@�F?V@r;`�xX@�������:              �?        +rmc�       ��	��ٗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �ZZ@    �ZZ@      �?!    �ZZ@) ����@2r;`�xX@��iI�Z@�������:              �?        9ۂ��       ��	��ٗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    t2Q@    t2Q@      �?!    t2Q@)@���{�@2Π54�P@�0n9�bR@�������:              �?        (1W̥       ��	ڗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) �䯳-�@2r;`�xX@��iI�Z@�������:              �?        t�       ��	3ڗ{Y�A�*�

summaries/lossqC
}
summaries/histogram_loss*a	   �!.c@   �!.c@      �?!   �!.c@) $���@2߱�&�a@C��ôc@�������:              �?        Y�܁�       ��	�Mڗ{Y�A�*�

summaries/loss<�C
}
summaries/histogram_loss*a	   �'�b@   �'�b@      �?!   �'�b@) �qH��@2߱�&�a@C��ôc@�������:              �?        L�ҧ�       ��	�gڗ{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �URb@   �URb@      �?!   �URb@) ������@2߱�&�a@C��ôc@�������:              �?        ��       ��	�ڗ{Y�A�*�

summaries/loss&8�B
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@)���T*d�@2
6@�F?V@r;`�xX@�������:              �?        ֥Mƥ       ��	�ڗ{Y�A�*�

summaries/loss� �B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) ��f;V�@2r;`�xX@��iI�Z@�������:              �?        ��wD�       ��	��ڗ{Y�A�*�

summaries/lossJ��B
}
summaries/histogram_loss*a	   @i3X@   @i3X@      �?!   @i3X@)�,�xpM�@2
6@�F?V@r;`�xX@�������:              �?        ��L�       ��	%�ڗ{Y�A�*�

summaries/loss6}�B
}
summaries/histogram_loss*a	   ��Q@   ��Q@      �?!   ��Q@) �q�Q1�@2Π54�P@�0n9�bR@�������:              �?        !Js�       ��	;�ڗ{Y�A�*�

summaries/loss�EC
}
summaries/histogram_loss*a	   @�a@   @�a@      �?!   @�a@) �r'�"�@2��GL:I`@߱�&�a@�������:              �?        �ǉ�       ��	��ڗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �_@   �_@      �?!   �_@) B	�&)�@2~
�i�]@��GL:I`@�������:              �?        �3��       ��	@ۗ{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @\�a@   @\�a@      �?!   @\�a@) ��%�@2߱�&�a@C��ôc@�������:              �?        ���j�       ��	#2ۗ{Y�A�*�

summaries/lossP��B
}
summaries/histogram_loss*a	    ��Y@    ��Y@      �?!    ��Y@)  s4/��@2r;`�xX@��iI�Z@�������:              �?        ��`(�       ��	YLۗ{Y�A�*�

summaries/loss�ǎB
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@) ��ϗ�@2Π54�P@�0n9�bR@�������:              �?        ȹ��       ��	Ieۗ{Y�A�*�

summaries/losspʚB
}
summaries/histogram_loss*a	    NYS@    NYS@      �?!    NYS@) @<�f�@2�0n9�bR@��X�9T@�������:              �?        �P��       ��	�ۗ{Y�A�*�

summaries/loss�m�B
}
summaries/histogram_loss*a	    ��\@    ��\@      �?!    ��\@) ��3��@2��iI�Z@~
�i�]@�������:              �?        �#��       ��	(�ۗ{Y�A�*�

summaries/lossVO�B
}
summaries/histogram_loss*a	   ���[@   ���[@      �?!   ���[@)�FjY�@2��iI�Z@~
�i�]@�������:              �?        ��<�       ��	�ۗ{Y�A�*�

summaries/loss�z�B
}
summaries/histogram_loss*a	    S[@    S[@      �?!    S[@) H�f���@2��iI�Z@~
�i�]@�������:              �?        L��[�       ��	�ۗ{Y�A�*�

summaries/loss8j�B
}
summaries/histogram_loss*a	    G-Z@    G-Z@      �?!    G-Z@) �Mp�i�@2r;`�xX@��iI�Z@�������:              �?        �Mڤ�       ��	�ۗ{Y�A�*�

summaries/lossAA�B
}
summaries/histogram_loss*a	    (�Y@    (�Y@      �?!    (�Y@) P�R��@2r;`�xX@��iI�Z@�������:              �?        �m?�       ��	;�ۗ{Y�A�*�

summaries/loss�	C
}
summaries/histogram_loss*a	   �8a`@   �8a`@      �?!   �8a`@) �׽���@2��GL:I`@߱�&�a@�������:              �?        ;��       ��	�ܗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���_@   ���_@      �?!   ���_@)�|�D���@2~
�i�]@��GL:I`@�������:              �?        �ˢ�       ��	D1ܗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �4C_@   �4C_@      �?!   �4C_@)��:YÊ�@2~
�i�]@��GL:I`@�������:              �?        *y���       ��	�Kܗ{Y�A�*�

summaries/loss]'�B
}
summaries/histogram_loss*a	   ���P@   ���P@      �?!   ���P@)@�݈�ֱ@2Π54�P@�0n9�bR@�������:              �?        ��B��       ��	Ecܗ{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    p�b@    p�b@      �?!    p�b@)  ���@2߱�&�a@C��ôc@�������:              �?        �v,��       ��	[|ܗ{Y�A�*�

summaries/lossb$C
}
summaries/histogram_loss*a	   @�b@   @�b@      �?!   @�b@) a��<J�@2߱�&�a@C��ôc@�������:              �?        yĞ�       ��	S�ܗ{Y�A�*�

summaries/loss�w�B
}
summaries/histogram_loss*a	    ��T@    ��T@      �?!    ��T@) �_c�@2��X�9T@
6@�F?V@�������:              �?        ����       ��	�ܗ{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   ���[@   ���[@      �?!   ���[@)��w_�@2��iI�Z@~
�i�]@�������:              �?        �:��       ��	��ܗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @��X@   @��X@      �?!   @��X@)�PP0���@2r;`�xX@��iI�Z@�������:              �?        ��R�       ��	��ܗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �qx^@   �qx^@      �?!   �qx^@)�X����@2~
�i�]@��GL:I`@�������:              �?        �e�       ��	��ܗ{Y�A�*�

summaries/lossĦ�B
}
summaries/histogram_loss*a	   ���[@   ���[@      �?!   ���[@) �X�4�@2��iI�Z@~
�i�]@�������:              �?        �c��       ��	�ݗ{Y�A�*�

summaries/lossD0�B
}
summaries/histogram_loss*a	   ��Q@   ��Q@      �?!   ��Q@) �d �w�@2Π54�P@�0n9�bR@�������:              �?        ��駥       ��	�-ݗ{Y�A�*�

summaries/loss"�B
}
summaries/histogram_loss*a	   @d}V@   @d}V@      �?!   @d}V@) !�`���@2
6@�F?V@r;`�xX@�������:              �?        @K��       ��	JFݗ{Y�A�*�

summaries/loss�8�B
}
summaries/histogram_loss*a	   ��S@   ��S@      �?!   ��S@) �"�#�@2�0n9�bR@��X�9T@�������:              �?        vӹ�       ��	�^ݗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��[\@   ��[\@      �?!   ��[\@) ][�!�@2��iI�Z@~
�i�]@�������:              �?        jͥ       ��	�wݗ{Y�A�*�

summaries/loss�;�B
}
summaries/histogram_loss*a	   �t�\@   �t�\@      �?!   �t�\@)�������@2��iI�Z@~
�i�]@�������:              �?        ��b�       ��	2�ݗ{Y�A�*�

summaries/lossH�B
}
summaries/histogram_loss*a	   ��[@   ��[@      �?!   ��[@) b���W�@2��iI�Z@~
�i�]@�������:              �?        ;A���       ��	a�ݗ{Y�A�*�

summaries/lossT�B
}
summaries/histogram_loss*a	   ��BV@   ��BV@      �?!   ��BV@) 严j��@2
6@�F?V@r;`�xX@�������:              �?        �/w�       ��	T�ݗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    S�S@    S�S@      �?!    S�S@)@�o���@2�0n9�bR@��X�9T@�������:              �?        �ץ�       ��	@�ݗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��YY@   ��YY@      �?!   ��YY@) �QN��@2r;`�xX@��iI�Z@�������:              �?        �:*��       ��	�ݗ{Y�A�*�

summaries/loss*��B
}
summaries/histogram_loss*a	   @%XR@   @%XR@      �?!   @%XR@) �j9�@2Π54�P@�0n9�bR@�������:              �?        ([���       ��	ޗ{Y�A�*�

summaries/loss�0�B
}
summaries/histogram_loss*a	   `FU@   `FU@      �?!   `FU@)@v��%I�@2��X�9T@
6@�F?V@�������:              �?        �2`�       ��	�(ޗ{Y�A�*�

summaries/loss}6�B
}
summaries/histogram_loss*a	   ���_@   ���_@      �?!   ���_@) !����@2~
�i�]@��GL:I`@�������:              �?        &��       ��	�@ޗ{Y�A�*�

summaries/lossBϼB
}
summaries/histogram_loss*a	   @�W@   @�W@      �?!   @�W@)��y"h�@2
6@�F?V@r;`�xX@�������:              �?        TIƥ       ��	�Yޗ{Y�A�*�

summaries/lossn��B
}
summaries/histogram_loss*a	   ��y[@   ��y[@      �?!   ��y[@)��&�Z��@2��iI�Z@~
�i�]@�������:              �?        z� �       ��	Ttޗ{Y�A�*�

summaries/lossG@�B
}
summaries/histogram_loss*a	   �HT@   �HT@      �?!   �HT@)@��Z��@2��X�9T@
6@�F?V@�������:              �?        c�       ��	��ޗ{Y�A�*�

summaries/loss(�B
}
summaries/histogram_loss*a	    Y@    Y@      �?!    Y@) Ƞ�'��@2r;`�xX@��iI�Z@�������:              �?        ]F��       ��	��ޗ{Y�A�*�

summaries/loss�F�B
}
summaries/histogram_loss*a	   �܈Z@   �܈Z@      �?!   �܈Z@) b/�� �@2r;`�xX@��iI�Z@�������:              �?        g�,��       ��	H�ޗ{Y�A�*�

summaries/lossޛ�B
}
summaries/histogram_loss*a	   �{sY@   �{sY@      �?!   �{sY@)��R>�@2r;`�xX@��iI�Z@�������:              �?        %�1�       ��	{�ޗ{Y�A�*�

summaries/loss�Y�B
}
summaries/histogram_loss*a	   �5kQ@   �5kQ@      �?!   �5kQ@)@hIݠ��@2Π54�P@�0n9�bR@�������:              �?        "+5��       ��	��ޗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �U�^@   �U�^@      �?!   �U�^@) rdR+1�@2~
�i�]@��GL:I`@�������:              �?        ���       ��	gߗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �3vX@   �3vX@      �?!   �3vX@) �"���@2
6@�F?V@r;`�xX@�������:              �?        �ӥ       ��	%ߗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �T�W@   �T�W@      �?!   �T�W@)  ���@2
6@�F?V@r;`�xX@�������:              �?        �q�$�       ��	�?ߗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���X@   ���X@      �?!   ���X@)��1��@2r;`�xX@��iI�Z@�������:              �?        �7��       ��	Yߗ{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@)@�
����@2��GL:I`@߱�&�a@�������:              �?        �i�k�       ��	�rߗ{Y�A�*�

summaries/loss�L�B
}
summaries/histogram_loss*a	    ��Y@    ��Y@      �?!    ��Y@) HRUa�@2r;`�xX@��iI�Z@�������:              �?        �{���       ��	�ߗ{Y�A�*�

summaries/loss\�B
}
summaries/histogram_loss*a	   ���W@   ���W@      �?!   ���W@) �O��@2
6@�F?V@r;`�xX@�������:              �?        ��,�       ��	�ߗ{Y�A�*�

summaries/lossٗ�B
}
summaries/histogram_loss*a	    ��Z@    ��Z@      �?!    ��Z@) �6/{�@2r;`�xX@��iI�Z@�������:              �?        �/bf�       ��	�ߗ{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �=2\@   �=2\@      �?!   �=2\@) 2��:��@2��iI�Z@~
�i�]@�������:              �?        b��       ��	{�ߗ{Y�A�*�

summaries/loss�
�B
}
summaries/histogram_loss*a	   `X�Y@   `X�Y@      �?!   `X�Y@) :�G��@2r;`�xX@��iI�Z@�������:              �?        �P�/�       ��	V�ߗ{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��R@   ��R@      �?!   ��R@) $��և�@2Π54�P@�0n9�bR@�������:              �?        �~�?�       ��	���{Y�A�*�

summaries/loss8��B
}
summaries/histogram_loss*a	    '�Z@    '�Z@      �?!    '�Z@) �/���@2r;`�xX@��iI�Z@�������:              �?        �C��       ��	 %��{Y�A�*�

summaries/lossD��B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) B����@2
6@�F?V@r;`�xX@�������:              �?        ���*�       ��	�>��{Y�A�*�

summaries/loss�{�B
}
summaries/histogram_loss*a	   @vo\@   @vo\@      �?!   @vo\@)��.�D�@2��iI�Z@~
�i�]@�������:              �?        �]��       ��	�Y��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��q\@   ��q\@      �?!   ��q\@)��%ugH�@2��iI�Z@~
�i�]@�������:              �?        �G~d�       ��	�r��{Y�A�*�

summaries/lossHn	C
}
summaries/histogram_loss*a	    �-a@    �-a@      �?!    �-a@) }$�q�@2��GL:I`@߱�&�a@�������:              �?        !ra�       ��	Ό��{Y�A�*�

summaries/loss�a C
}
summaries/histogram_loss*a	    8`@    8`@      �?!    8`@)  �Ty�@2~
�i�]@��GL:I`@�������:              �?        <(���       ��	&���{Y�A�*�

summaries/loss`��B
}
summaries/histogram_loss*a	    ,[@    ,[@      �?!    ,[@) �|����@2��iI�Z@~
�i�]@�������:              �?        �\Tq�       ��	����{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �/[X@   �/[X@      �?!   �/[X@) ���ˉ�@2
6@�F?V@r;`�xX@�������:              �?        ~N��       ��	����{Y�A�*�

summaries/loss�#�B
}
summaries/histogram_loss*a	   �zD]@   �zD]@      �?!   �zD]@) �t����@2��iI�Z@~
�i�]@�������:              �?        Bc�C�       ��	����{Y�A�*�

summaries/loss�V�B
}
summaries/histogram_loss*a	   ��
Z@   ��
Z@      �?!   ��
Z@) A�1�@2r;`�xX@��iI�Z@�������:              �?        �B�       ��	
�{Y�A�*�

summaries/loss�.�B
}
summaries/histogram_loss*a	   �ޥS@   �ޥS@      �?!   �ޥS@)@��G� �@2�0n9�bR@��X�9T@�������:              �?        ����       ��	�)�{Y�A�*�

summaries/lossb�tB
}
summaries/histogram_loss*a	   @�N@   @�N@      �?!   @�N@)��8�yI�@2���cN@Π54�P@�������:              �?        �̥̋       ��	�B�{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   @��b@   @��b@      �?!   @��b@) ��`���@2߱�&�a@C��ôc@�������:              �?        �����       ��	S[�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �[@    �[@      �?!    �[@) ��kY��@2��iI�Z@~
�i�]@�������:              �?        Fp�       ��	%x�{Y�A�*�

summaries/loss"��B
}
summaries/histogram_loss*a	   @D\@   @D\@      �?!   @D\@)��5cK��@2��iI�Z@~
�i�]@�������:              �?        ��+ �       ��	���{Y�A�*�

summaries/loss^#�B
}
summaries/histogram_loss*a	   �kd]@   �kd]@      �?!   �kd]@)���n>��@2��iI�Z@~
�i�]@�������:              �?        ��~�       ��	��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @��X@   @��X@      �?!   @��X@)����|�@2r;`�xX@��iI�Z@�������:              �?        ,.��       ��	G��{Y�A�*�

summaries/lossf��B
}
summaries/histogram_loss*a	   �2_@   �2_@      �?!   �2_@)���Fi�@2~
�i�]@��GL:I`@�������:              �?        @���       ��	G��{Y�A�*�

summaries/loss�b�B
}
summaries/histogram_loss*a	   `]�X@   `]�X@      �?!   `]�X@) w�7�7�@2r;`�xX@��iI�Z@�������:              �?        gK��       ��	(�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �[@    �[@      �?!    �[@)  �0���@2��iI�Z@~
�i�]@�������:              �?        �x�]�       ��	�-�{Y�A�*�

summaries/loss*��B
}
summaries/histogram_loss*a	   @%�]@   @%�]@      �?!   @%�]@)�\3U���@2~
�i�]@��GL:I`@�������:              �?        ��7�       ��	�H�{Y�A�*�

summaries/lossHf�B
}
summaries/histogram_loss*a	    �lX@    �lX@      �?!    �lX@) ��Q���@2
6@�F?V@r;`�xX@�������:              �?        m�ˁ�       ��	b�{Y�A�*�

summaries/lossL:�B
}
summaries/histogram_loss*a	   �IGY@   �IGY@      �?!   �IGY@) �Ц��@2r;`�xX@��iI�Z@�������:              �?        E��ץ       ��	�|�{Y�A�*�

summaries/lossk��B
}
summaries/histogram_loss*a	   `�3\@   `�3\@      �?!   `�3\@) �u���@2��iI�Z@~
�i�]@�������:              �?        ù/��       ��	$��{Y�A�*�

summaries/lossq��B
}
summaries/histogram_loss*a	    nQ@    nQ@      �?!    nQ@)@��>?7�@2Π54�P@�0n9�bR@�������:              �?        0#�t�       ��	��{Y�A�*�

summaries/loss�wC
}
summaries/histogram_loss*a	   ���b@   ���b@      �?!   ���b@) �4�@2߱�&�a@C��ôc@�������:              �?        Y@.��       ��	J��{Y�A�*�

summaries/lossBI�B
}
summaries/histogram_loss*a	   @(�[@   @(�[@      �?!   @(�[@)��V���@2��iI�Z@~
�i�]@�������:              �?        �𨁥       ��	���{Y�A�*�

summaries/loss*�B
}
summaries/histogram_loss*a	   @e~R@   @e~R@      �?!   @e~R@) �0MJ`�@2�0n9�bR@��X�9T@�������:              �?        V�>��       ��	��{Y�A�*�

summaries/loss$ C
}
summaries/histogram_loss*a	   ��b@   ��b@      �?!   ��b@) DA|���@2߱�&�a@C��ôc@�������:              �?        cx��       ��	v�{Y�A�*�

summaries/loss:5�B
}
summaries/histogram_loss*a	   @�FX@   @�FX@      �?!   @�FX@)�$"ߖj�@2
6@�F?V@r;`�xX@�������:              �?        A��.�       ��	�4�{Y�A�*�

summaries/lossF�B
}
summaries/histogram_loss*a	   �HZ@   �HZ@      �?!   �HZ@)�dI�V%�@2r;`�xX@��iI�Z@�������:              �?        |�h9�       ��	�P�{Y�A�*�

summaries/lossP�C
}
summaries/histogram_loss*a	    �b@    �b@      �?!    �b@) @�p��@2߱�&�a@C��ôc@�������:              �?        XVQ}�       ��	m�{Y�A�*�

summaries/loss0�B
}
summaries/histogram_loss*a	    �S@    �S@      �?!    �S@) �@�1��@2�0n9�bR@��X�9T@�������:              �?        7�h�       ��	��{Y�A�*�

summaries/lossj��B
}
summaries/histogram_loss*a	   @M\@   @M\@      �?!   @M\@)�|��#��@2��iI�Z@~
�i�]@�������:              �?        ��+k�       ��	I��{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   �CS@   �CS@      �?!   �CS@) �h�A0�@2�0n9�bR@��X�9T@�������:              �?        �|�       ��	4��{Y�A�*�

summaries/loss�|�B
}
summaries/histogram_loss*a	    ��X@    ��X@      �?!    ��X@)  _�bn�@2r;`�xX@��iI�Z@�������:              �?        E냥       ��	Z��{Y�A�*�

summaries/lossޤ�B
}
summaries/histogram_loss*a	   ���U@   ���U@      �?!   ���U@) !L�r�@2��X�9T@
6@�F?V@�������:              �?        �n)��       ��	s��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@)��71j�@2r;`�xX@��iI�Z@�������:              �?        ]�u<�       ��	[�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) ���C�@2r;`�xX@��iI�Z@�������:              �?        ��"�       ��	-%�{Y�A�*�

summaries/loss��KB
}
summaries/histogram_loss*a	   ��qI@   ��qI@      �?!   ��qI@)�t?�;�@2t�n̫I@��`��K@�������:              �?        ��W�       ��	?�{Y�A�*�

summaries/lossOߥB
}
summaries/histogram_loss*a	   ��T@   ��T@      �?!   ��T@)@�.�g޺@2��X�9T@
6@�F?V@�������:              �?        ����       ��	�Z�{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   ��Cc@   ��Cc@      �?!   ��Cc@) A���1�@2߱�&�a@C��ôc@�������:              �?        �ە�       ��	:z�{Y�A�*�

summaries/lossȟ�B
}
summaries/histogram_loss*a	    �3S@    �3S@      �?!    �3S@) �2�@2�0n9�bR@��X�9T@�������:              �?        ���       ��	���{Y�A�*�

summaries/loss�֫B
}
summaries/histogram_loss*a	    �zU@    �zU@      �?!    �zU@)@Tճּ@2��X�9T@
6@�F?V@�������:              �?        v��N�       ��	W��{Y�A�*�

summaries/lossP�B
}
summaries/histogram_loss*a	   � �P@   � �P@      �?!   � �P@)@�`�@2Π54�P@�0n9�bR@�������:              �?        �O��       ��	O��{Y�A�*�

summaries/loss�[�B
}
summaries/histogram_loss*a	    qKZ@    qKZ@      �?!    qKZ@) �կI��@2r;`�xX@��iI�Z@�������:              �?        ��,�       ��	���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	    �6`@    �6`@      �?!    �6`@) f�n�@2~
�i�]@��GL:I`@�������:              �?        ��֥       ��	��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �C�V@   �C�V@      �?!   �C�V@) ��ѿ@2
6@�F?V@r;`�xX@�������:              �?        ��ۧ�       ��	r�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ��[@    ��[@      �?!    ��[@) ̔F�@2��iI�Z@~
�i�]@�������:              �?        ���       ��	�.�{Y�A�*�

summaries/lossB
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@)��S��@2
6@�F?V@r;`�xX@�������:              �?        @f
�       ��	,I�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �W`X@   �W`X@      �?!   �W`X@)��p����@2
6@�F?V@r;`�xX@�������:              �?        悦�       ��	�b�{Y�A�*�

summaries/loss1�B
}
summaries/histogram_loss*a	   �#V@   �#V@      �?!   �#V@)@p8�P�@2��X�9T@
6@�F?V@�������:              �?        U���       ��	�{�{Y�A�*�

summaries/loss�%�B
}
summaries/histogram_loss*a	   ���W@   ���W@      �?!   ���W@) ��Ax�@2
6@�F?V@r;`�xX@�������:              �?        l$�S�       ��	���{Y�A�*�

summaries/lossbJC
}
summaries/histogram_loss*a	   @L)c@   @L)c@      �?!   @L)c@) a3���@2߱�&�a@C��ôc@�������:              �?        ����       ��	��{Y�A�*�

summaries/loss(��B
}
summaries/histogram_loss*a	    e�]@    e�]@      �?!    e�]@) �.����@2~
�i�]@��GL:I`@�������:              �?        !��b�       ��	���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �qX@    �qX@      �?!    �qX@) �4Y��@2
6@�F?V@r;`�xX@�������:              �?        !k(=�       ��	��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �T�`@   �T�`@      �?!   �T�`@)@<*���@2��GL:I`@߱�&�a@�������:              �?        i>\#�       ��	]��{Y�A�*�

summaries/loss�'�B
}
summaries/histogram_loss*a	    �dY@    �dY@      �?!    �dY@) H
'�@2r;`�xX@��iI�Z@�������:              �?        @�ƥ       ��	U�{Y�A�*�

summaries/loss�VC
}
summaries/histogram_loss*a	   `��`@   `��`@      �?!   `��`@)@�����@2��GL:I`@߱�&�a@�������:              �?        �l��       ��	o/�{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�`@   @�`@      �?!   @�`@) �y�_�@2��GL:I`@߱�&�a@�������:              �?        M�I��       ��	�H�{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   ��hX@   ��hX@      �?!   ��hX@) B�9��@2
6@�F?V@r;`�xX@�������:              �?        [C���       ��	�a�{Y�A�*�

summaries/lossw�B
}
summaries/histogram_loss*a	   ��NW@   ��NW@      �?!   ��NW@)��ҁ%��@2
6@�F?V@r;`�xX@�������:              �?        s/�       ��	�y�{Y�A�*�

summaries/loss�jC
}
summaries/histogram_loss*a	   �X�`@   �X�`@      �?!   �X�`@)@����@2��GL:I`@߱�&�a@�������:              �?        '�1�       ��	ڒ�{Y�A�*�

summaries/loss�nC
}
summaries/histogram_loss*a	   ��M`@   ��M`@      �?!   ��M`@) ��h4��@2��GL:I`@߱�&�a@�������:              �?        ,50�       ��	��{Y�A�*�

summaries/loss�CC
}
summaries/histogram_loss*a	   �sHb@   �sHb@      �?!   �sHb@) a�L��@2߱�&�a@C��ôc@�������:              �?         ��ݥ       ��	���{Y�A�*�

summaries/lossu;B
}
summaries/histogram_loss*a	   ���W@   ���W@      �?!   ���W@) �ҳ��@2
6@�F?V@r;`�xX@�������:              �?        u�U�       ��	���{Y�A�*�

summaries/loss�|�B
}
summaries/histogram_loss*a	   @��Z@   @��Z@      �?!   @��Z@)�Ъp�v�@2r;`�xX@��iI�Z@�������:              �?        h�ϥ       ��	&��{Y�A�*�

summaries/loss�q�B
}
summaries/histogram_loss*a	   �3T@   �3T@      �?!   �3T@) ��Z�#�@2�0n9�bR@��X�9T@�������:              �?        
��       ��	@�{Y�A�*�

summaries/loss�^�B
}
summaries/histogram_loss*a	   @�V@   @�V@      �?!   @�V@) �z�`�@2��X�9T@
6@�F?V@�������:              �?        �8ܯ�       ��	/�{Y�A�*�

summaries/lossO��B
}
summaries/histogram_loss*a	   ���Y@   ���Y@      �?!   ���Y@) ��u�@2r;`�xX@��iI�Z@�������:              �?        �$��       ��	�F�{Y�A�*�

summaries/loss�,C
}
summaries/histogram_loss*a	    ��a@    ��a@      �?!    ��a@) ��z��@2��GL:I`@߱�&�a@�������:              �?        ����       ��	�a�{Y�A�*�

summaries/loss�ۡB
}
summaries/histogram_loss*a	   @~;T@   @~;T@      �?!   @~;T@) 1�֘��@2��X�9T@
6@�F?V@�������:              �?        &��o�       ��	x}�{Y�A�*�

summaries/losstC
}
summaries/histogram_loss*a	   ��a@   ��a@      �?!   ��a@) $S�[�@2��GL:I`@߱�&�a@�������:              �?        '>	�       ��	���{Y�A�*�

summaries/loss�T�B
}
summaries/histogram_loss*a	   ��*]@   ��*]@      �?!   ��*]@) 	-8d��@2��iI�Z@~
�i�]@�������:              �?        QI�c�       ��	��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@) ���B�@2
6@�F?V@r;`�xX@�������:              �?        �0Uy�       ��	���{Y�A�*�

summaries/loss>�B
}
summaries/histogram_loss*a	   �G}R@   �G}R@      �?!   �G}R@) �Yb�]�@2�0n9�bR@��X�9T@�������:              �?        ���Z�       ��	���{Y�A�*�

summaries/lossy �B
}
summaries/histogram_loss*a	    �Z@    �Z@      �?!    �Z@) &G+9'�@2r;`�xX@��iI�Z@�������:              �?        D/�       ��	� �{Y�A�*�

summaries/lossƇ�B
}
summaries/histogram_loss*a	   ��0T@   ��0T@      �?!   ��0T@) I��{�@2�0n9�bR@��X�9T@�������:              �?        I���       ��	z�{Y�A�*�

summaries/lossJ�C
}
summaries/histogram_loss*a	   @�z`@   @�z`@      �?!   @�z`@) YX����@2��GL:I`@߱�&�a@�������:              �?        cC���       ��	�3�{Y�A�*�

summaries/losstd�B
}
summaries/histogram_loss*a	   ��L[@   ��L[@      �?!   ��L[@) �Z��I�@2��iI�Z@~
�i�]@�������:              �?        c�t0�       ��	�L�{Y�A�*�

summaries/loss�:C
}
summaries/histogram_loss*a	   @\�`@   @\�`@      �?!   @\�`@) ���U�@2��GL:I`@߱�&�a@�������:              �?        ��ۥ       ��	�g�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �uPV@   �uPV@      �?!   �uPV@)@����@2
6@�F?V@r;`�xX@�������:              �?        ?�)��       ��	���{Y�A�*�

summaries/loss�F�B
}
summaries/histogram_loss*a	   ��R@   ��R@      �?!   ��R@) !�W�S�@2Π54�P@�0n9�bR@�������:              �?        U�ۥ       ��	��{Y�A�*�

summaries/loss&��B
}
summaries/histogram_loss*a	   �]@   �]@      �?!   �]@)��P$�z�@2��iI�Z@~
�i�]@�������:              �?        �}�       ��	���{Y�A�*�

summaries/loss�"�B
}
summaries/histogram_loss*a	   �R�S@   �R�S@      �?!   �R�S@) d�֬k�@2�0n9�bR@��X�9T@�������:              �?        ��Z��       ��	:��{Y�A�*�

summaries/lossV�B
}
summaries/histogram_loss*a	   �*�W@   �*�W@      �?!   �*�W@)��_�l�@2
6@�F?V@r;`�xX@�������:              �?        }��       ��	2��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �@U@    �@U@      �?!    �@U@) ���E;�@2��X�9T@
6@�F?V@�������:              �?        �q���       ��	�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    ݡX@    ݡX@      �?!    ݡX@) 
o���@2r;`�xX@��iI�Z@�������:              �?        ��b�       ��	��{Y�A�*�

summaries/lossNR�B
}
summaries/histogram_loss*a	   �I�U@   �I�U@      �?!   �I�U@) �Ѭ��@2��X�9T@
6@�F?V@�������:              �?        7{0Z�       ��	Y6�{Y�A�*�

summaries/loss�F�B
}
summaries/histogram_loss*a	    ֈW@    ֈW@      �?!    ֈW@)  ���N�@2
6@�F?V@r;`�xX@�������:              �?        *�I�       ��	'P�{Y�A�*�

summaries/lossF(�B
}
summaries/histogram_loss*a	   �EZ@   �EZ@      �?!   �EZ@)�d�%Ð�@2r;`�xX@��iI�Z@�������:              �?        �ttE�       ��	i�{Y�A�*�

summaries/loss\p�B
}
summaries/histogram_loss*a	   ��\@   ��\@      �?!   ��\@) "�~'�@2��iI�Z@~
�i�]@�������:              �?        �ǆ��       ��	Q��{Y�A�*�

summaries/lossC��B
}
summaries/histogram_loss*a	   `H�V@   `H�V@      �?!   `H�V@)@b9�Կ@2
6@�F?V@r;`�xX@�������:              �?        ���       ��	Ý�{Y�A�*�

summaries/loss�.�B
}
summaries/histogram_loss*a	   �ܥ[@   �ܥ[@      �?!   �ܥ[@) b��?��@2��iI�Z@~
�i�]@�������:              �?        ���       ��	x��{Y�A�*�

summaries/loss�xC
}
summaries/histogram_loss*a	    �a@    �a@      �?!    �a@) @^	���@2��GL:I`@߱�&�a@�������:              �?        �u��       ��	���{Y�A�*�

summaries/lossJ��B
}
summaries/histogram_loss*a	   @I>[@   @I>[@      �?!   @I>[@)��ؔ1�@2��iI�Z@~
�i�]@�������:              �?        ���J�       ��	 ��{Y�A�*�

summaries/lossM7�B
}
summaries/histogram_loss*a	   ��\@   ��\@      �?!   ��\@) �E�Qn�@2��iI�Z@~
�i�]@�������:              �?        5�ܯ�       ��	$�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @P3]@   @P3]@      �?!   @P3]@)�@��S��@2��iI�Z@~
�i�]@�������:              �?        t,ͥ       ��	�'�{Y�A�*�

summaries/loss�i�B
}
summaries/histogram_loss*a	    5�^@    5�^@      �?!    5�^@) �g�lh�@2~
�i�]@��GL:I`@�������:              �?        4@J�       ��	cD�{Y�A�*�

summaries/lossP��B
}
summaries/histogram_loss*a	    JUX@    JUX@      �?!    JUX@)  �QҀ�@2
6@�F?V@r;`�xX@�������:              �?        �Qv��       ��	xb�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `��V@   `��V@      �?!   `��V@) �T�'�@2
6@�F?V@r;`�xX@�������:              �?        �d�       ��	܂�{Y�A�*�

summaries/loss\z�B
}
summaries/histogram_loss*a	   �K�W@   �K�W@      �?!   �K�W@) "zʼ��@2
6@�F?V@r;`�xX@�������:              �?        @F�,�       ��	���{Y�A�*�

summaries/losst��B
}
summaries/histogram_loss*a	   ��]@   ��]@      �?!   ��]@) ��*��@2~
�i�]@��GL:I`@�������:              �?        A�u��       ��	o��{Y�A�*�

summaries/loss�@�B
}
summaries/histogram_loss*a	    S@    S@      �?!    S@) �-;D��@2�0n9�bR@��X�9T@�������:              �?        r���       ��	���{Y�A�*�

summaries/loss
C
}
summaries/histogram_loss*a	   @a�`@   @a�`@      �?!   @a�`@) �T��@2��GL:I`@߱�&�a@�������:              �?        +k<�       ��	���{Y�A�*�

summaries/loss�/�B
}
summaries/histogram_loss*a	   `��Y@   `��Y@      �?!   `��Y@) �d ��@2r;`�xX@��iI�Z@�������:              �?        }��*�       ��	+�{Y�A�*�

summaries/lossE�B
}
summaries/histogram_loss*a	   @�H]@   @�H]@      �?!   @�H]@)����L��@2��iI�Z@~
�i�]@�������:              �?        d�z�       ��	�7�{Y�A�*�

summaries/loss�LB
}
summaries/histogram_loss*a	   @b�I@   @b�I@      �?!   @b�I@)���S�p�@2t�n̫I@��`��K@�������:              �?        �x$֥       ��	�X�{Y�A�*�

summaries/loss8��B
}
summaries/histogram_loss*a	    '�^@    '�^@      �?!    '�^@) ��1��@2~
�i�]@��GL:I`@�������:              �?        UE�b�       ��	)x�{Y�A�*�

summaries/loss*��B
}
summaries/histogram_loss*a	   @e2V@   @e2V@      �?!   @e2V@) �P+5˾@2��X�9T@
6@�F?V@�������:              �?        �z��       ��	���{Y�A�*�

summaries/loss|��B
}
summaries/histogram_loss*a	   ��}]@   ��}]@      �?!   ��}]@) �Y��-�@2��iI�Z@~
�i�]@�������:              �?        Y30��       ��	ܹ�{Y�A�*�

summaries/lossN�B
}
summaries/histogram_loss*a	   ���W@   ���W@      �?!   ���W@)��P{L��@2
6@�F?V@r;`�xX@�������:              �?        �Uu8�       ��	���{Y�A�*�

summaries/loss�q�B
}
summaries/histogram_loss*a	   �1�V@   �1�V@      �?!   �1�V@) �1�qn�@2
6@�F?V@r;`�xX@�������:              �?        ���       ��	Q��{Y�A�*�

summaries/lossP��B
}
summaries/histogram_loss*a	    J{[@    J{[@      �?!    J{[@)  ����@2��iI�Z@~
�i�]@�������:              �?        9�6��       ��	�{Y�A�*�

summaries/loss5%�B
}
summaries/histogram_loss*a	   ��$]@   ��$]@      �?!   ��$]@) �K����@2��iI�Z@~
�i�]@�������:              �?        Eۂa�       ��	�7�{Y�A�*�

summaries/loss¯�B
}
summaries/histogram_loss*a	   @�UU@   @�UU@      �?!   @�UU@) ���ys�@2��X�9T@
6@�F?V@�������:              �?        �?��       ��	�X�{Y�A�*�

summaries/lossD�B
}
summaries/histogram_loss*a	   @��]@   @��]@      �?!   @��]@)�(2i�A�@2��iI�Z@~
�i�]@�������:              �?        /R)Q�       ��	x�{Y�A�*�

summaries/loss�XdB
}
summaries/histogram_loss*a	   ��L@   ��L@      �?!   ��L@) �s��u�@2��`��K@���cN@�������:              �?        �?���       ��	��{Y�A�*�

summaries/loss=�B
}
summaries/histogram_loss*a	   �G ^@   �G ^@      �?!   �G ^@) Q�L� �@2~
�i�]@��GL:I`@�������:              �?        D�wK�       ��	���{Y�A�*�

summaries/loss�VC
}
summaries/histogram_loss*a	    �
a@    �
a@      �?!    �
a@) @�!'�@2��GL:I`@߱�&�a@�������:              �?        ��4��       ��	���{Y�A�*�

summaries/loss8o�B
}
summaries/histogram_loss*a	    �U@    �U@      �?!    �U@) g�h	�@2��X�9T@
6@�F?V@�������:              �?        zh���       ��	��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �PzZ@   �PzZ@      �?!   �PzZ@) #�����@2r;`�xX@��iI�Z@�������:              �?        n�#�       ��	��{Y�A�*�

summaries/loss�q�B
}
summaries/histogram_loss*a	    8�^@    8�^@      �?!    8�^@)  b�٧�@2~
�i�]@��GL:I`@�������:              �?        �ħ�       ��	s0�{Y�A�*�

summaries/lossּB
}
summaries/histogram_loss*a	   �ÚW@   �ÚW@      �?!   �ÚW@) bZ�ei�@2
6@�F?V@r;`�xX@�������:              �?        a�
v�       ��	�N�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    q�S@    q�S@      �?!    q�S@)@�Jb�@2�0n9�bR@��X�9T@�������:              �?        ��>�       ��	p�{Y�A�*�

summaries/loss�snB
}
summaries/histogram_loss*a	   �}�M@   �}�M@      �?!   �}�M@) -Y%xë@2��`��K@���cN@�������:              �?        F�n�       ��	}��{Y�A�*�

summaries/loss�7�B
}
summaries/histogram_loss*a	    ��T@    ��T@      �?!    ��T@) @@�%��@2��X�9T@
6@�F?V@�������:              �?        s����       ��	���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    s>Z@    s>Z@      �?!    s>Z@) H=���@2r;`�xX@��iI�Z@�������:              �?        �?,M�       ��	���{Y�A�*�

summaries/lossxf�B
}
summaries/histogram_loss*a	    �LV@    �LV@      �?!    �LV@) ����@2
6@�F?V@r;`�xX@�������:              �?        ƴ^v�       ��	��{Y�A�*�

summaries/lossn��B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) �t|��@2��X�9T@
6@�F?V@�������:              �?        �q�G�       ��	U�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��[\@   ��[\@      �?!   ��[\@) �ؾ "�@2��iI�Z@~
�i�]@�������:              �?        Ā��       ��	?6�{Y�A�*�

summaries/loss�b�B
}
summaries/histogram_loss*a	   �R]@   �R]@      �?!   �R]@)���Z^�@2��iI�Z@~
�i�]@�������:              �?        ˉ�<�       ��	�S�{Y�A�*�

summaries/lossh��B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@) Hu�L��@2
6@�F?V@r;`�xX@�������:              �?        I����       ��	�s�{Y�A�*�

summaries/lossR�B
}
summaries/histogram_loss*a	   @ʣS@   @ʣS@      �?!   @ʣS@) ��
��@2�0n9�bR@��X�9T@�������:              �?        z��@�       ��	}��{Y�A�*�

summaries/lossg.�B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@)@\K��@2��X�9T@
6@�F?V@�������:              �?        ����       ��	J��{Y�A�*�

summaries/lossm�B
}
summaries/histogram_loss*a	   ��[@   ��[@      �?!   ��[@) �6�	��@2��iI�Z@~
�i�]@�������:              �?        �F��       ��	J��{Y�A�*�

summaries/loss�=�B
}
summaries/histogram_loss*a	   `��[@   `��[@      �?!   `��[@) /�ވU�@2��iI�Z@~
�i�]@�������:              �?        ����       ��	��{Y�A�*�

summaries/lossn�sB
}
summaries/histogram_loss*a	   ��zN@   ��zN@      �?!   ��zN@)�h���@2���cN@Π54�P@�������:              �?        �g!$�       ��	��{Y�A�*�

summaries/loss�łB
}
summaries/histogram_loss*a	   �XP@   �XP@      �?!   �XP@)@���U��@2���cN@Π54�P@�������:              �?        H�^/�       ��	s,�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���X@   ���X@      �?!   ���X@) 2��C�@2r;`�xX@��iI�Z@�������:              �?        ϙ�ʥ       ��	0L�{Y�A�*�

summaries/loss6+�B
}
summaries/histogram_loss*a	   �feS@   �feS@      �?!   �feS@) �˫V��@2�0n9�bR@��X�9T@�������:              �?        @<p��       ��	fk�{Y�A�*�

summaries/lossR��B
}
summaries/histogram_loss*a	   @*�S@   @*�S@      �?!   @*�S@) ����@2�0n9�bR@��X�9T@�������:              �?        9W���       ��	ڌ�{Y�A�*�

summaries/loss`��B
}
summaries/histogram_loss*a	    �Z@    �Z@      �?!    �Z@) �D~)��@2��iI�Z@~
�i�]@�������:              �?        ~�#H�       ��	u��{Y�A�*�

summaries/lossڜ�B
}
summaries/histogram_loss*a	   @�SZ@   @�SZ@      �?!   @�SZ@)�4M����@2r;`�xX@��iI�Z@�������:              �?        �D���       ��	���{Y�A�*�

summaries/loss�|�B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) Z9�\9�@2r;`�xX@��iI�Z@�������:              �?        ߼�f�       ��	���{Y�A�*�

summaries/loss3��B
}
summaries/histogram_loss*a	   `�\@   `�\@      �?!   `�\@) �����@2��iI�Z@~
�i�]@�������:              �?        cY�l�       ��	��{Y�A�*�

summaries/loss��}B
}
summaries/histogram_loss*a	   @s�O@   @s�O@      �?!   @s�O@)�g�}u�@2���cN@Π54�P@�������:              �?        DWɜ�       ��	�"�{Y�A�*�

summaries/loss|��B
}
summaries/histogram_loss*a	   ��P@   ��P@      �?!   ��P@) ��6-�@2���cN@Π54�P@�������:              �?        E���       ��	6>�{Y�A�*�

summaries/loss1��B
}
summaries/histogram_loss*a	    �S@    �S@      �?!    �S@)@X�ז�@2�0n9�bR@��X�9T@�������:              �?        ��4�       ��	�]�{Y�A�*�

summaries/loss@LsB
}
summaries/histogram_loss*a	    �iN@    �iN@      �?!    �iN@)  �;�@2���cN@Π54�P@�������:              �?        v��       ��	�y�{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   @��Z@   @��Z@      �?!   @��Z@)�@�41 �@2r;`�xX@��iI�Z@�������:              �?        �!��       ��	��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�a@   @�a@      �?!   @�a@) ��;bG�@2��GL:I`@߱�&�a@�������:              �?        �΢>�       ��	J��{Y�A�*�

summaries/losssZ�B
}
summaries/histogram_loss*a	   `N�W@   `N�W@      �?!   `N�W@) ���R�@2
6@�F?V@r;`�xX@�������:              �?        ڔx��       ��	���{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @�<]@   @�<]@      �?!   @�<]@)� ����@2��iI�Z@~
�i�]@�������:              �?        ��T[�       ��	��{Y�A�*�

summaries/lossc��B
}
summaries/histogram_loss*a	   `�4\@   `�4\@      �?!   `�4\@) IQż��@2��iI�Z@~
�i�]@�������:              �?        i�6<�       ��	��{Y�A�*�

summaries/loss
g�B
}
summaries/histogram_loss*a	   @�]@   @�]@      �?!   @�]@)��!}�I�@2��iI�Z@~
�i�]@�������:              �?        �A�v�       ��	�$�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �wSS@   �wSS@      �?!   �wSS@)@b���W�@2�0n9�bR@��X�9T@�������:              �?        ����       ��	}@�{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @+?\@   @+?\@      �?!   @+?\@)�t�b��@2��iI�Z@~
�i�]@�������:              �?        ��#��       ��	�^�{Y�A�*�

summaries/losst��B
}
summaries/histogram_loss*a	   �.�V@   �.�V@      �?!   �.�V@) ��W�D�@2
6@�F?V@r;`�xX@�������:              �?        
ץ       ��	c}�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �pU@    �pU@      �?!    �pU@) ��J��@2��X�9T@
6@�F?V@�������:              �?        ��a�       ��	Ԛ�{Y�A�*�

summaries/loss�`�B
}
summaries/histogram_loss*a	   @LS@   @LS@      �?!   @LS@) �$-F�@2�0n9�bR@��X�9T@�������:              �?        ��$��       ��	9��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �#�U@   �#�U@      �?!   �#�U@) �^��'�@2��X�9T@
6@�F?V@�������:              �?        D�       ��	L��{Y�A�*�

summaries/loss�Y�B
}
summaries/histogram_loss*a	   �:�Y@   �:�Y@      �?!   �:�Y@) �,�c�@2r;`�xX@��iI�Z@�������:              �?        �����       ��	���{Y�A�*�

summaries/loss�u�B
}
summaries/histogram_loss*a	   @��[@   @��[@      �?!   @��[@)�<w�a�@2��iI�Z@~
�i�]@�������:              �?        *m;4�       ��	��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    ߃^@    ߃^@      �?!    ߃^@) ���a�@2~
�i�]@��GL:I`@�������:              �?        �U���       ��	�?�{Y�A�*�

summaries/loss7ƟB
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@)@��r���@2�0n9�bR@��X�9T@�������:              �?        P
�4�       ��	5^�{Y�A�*�

summaries/loss�;�B
}
summaries/histogram_loss*a	   @wT@   @wT@      �?!   @wT@) �Л��@2�0n9�bR@��X�9T@�������:              �?        �4F�       ��	J�{Y�A�*�

summaries/loss�M�B
}
summaries/histogram_loss*a	    �	S@    �	S@      �?!    �	S@) @�$��@2�0n9�bR@��X�9T@�������:              �?        �|�       ��	���{Y�A�*�

summaries/lossB��B
}
summaries/histogram_loss*a	   @��X@   @��X@      �?!   @��X@)� ("L�@2r;`�xX@��iI�Z@�������:              �?        ���(�       ��	��{Y�A�*�

summaries/lossD=C
}
summaries/histogram_loss*a	   ���a@   ���a@      �?!   ���a@) �^���@2��GL:I`@߱�&�a@�������:              �?        pF6��       ��	���{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   �aCS@   �aCS@      �?!   �aCS@) 1��#1�@2�0n9�bR@��X�9T@�������:              �?        ![��       ��	 �{Y�A�*�

summaries/loss��cB
}
summaries/histogram_loss*a	   `�{L@   `�{L@      �?!   `�{L@) kd]-Z�@2��`��K@���cN@�������:              �?        Ǝd�       ��	�!�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��#\@   ��#\@      �?!   ��#\@) ����@2��iI�Z@~
�i�]@�������:              �?        qCѪ�       ��	@�{Y�A�*�

summaries/lossV{�B
}
summaries/histogram_loss*a	   �j�W@   �j�W@      �?!   �j�W@)�x�i��@2
6@�F?V@r;`�xX@�������:              �?        ���S�       ��	�^�{Y�A�*�

summaries/loss�
�B
}
summaries/histogram_loss*a	   �VY@   �VY@      �?!   �VY@) �Q6��@2r;`�xX@��iI�Z@�������:              �?        ����       ��	�|�{Y�A�*�

summaries/loss�C
}
summaries/histogram_loss*a	   �#�a@   �#�a@      �?!   �#�a@) �G��@2��GL:I`@߱�&�a@�������:              �?        v	��       ��	��{Y�A�*�

summaries/lossv�B
}
summaries/histogram_loss*a	   ��NX@   ��NX@      �?!   ��NX@) ¦*�v�@2
6@�F?V@r;`�xX@�������:              �?        �]OH�       ��	��{Y�A�*�

summaries/lossh3�B
}
summaries/histogram_loss*a	    m�]@    m�]@      �?!    m�]@) HSy�@2~
�i�]@��GL:I`@�������:              �?        ��]z�       ��	��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@)@�J�J�@2��X�9T@
6@�F?V@�������:              �?        �
���       ��	���{Y�A�*�

summaries/loss|�B
}
summaries/histogram_loss*a	   ��AV@   ��AV@      �?!   ��AV@) �Wb��@2
6@�F?V@r;`�xX@�������:              �?        g��?�       ��	���{Y�A�*�

summaries/loss	�C
}
summaries/histogram_loss*a	    ��a@    ��a@      �?!    ��a@)@���0��@2��GL:I`@߱�&�a@�������:              �?        y5ͥ       ��	�;��{Y�A�*�

summaries/lossA0UB
}
summaries/histogram_loss*a	    �J@    �J@      �?!    �J@) N�*1�@2t�n̫I@��`��K@�������:              �?        x�OX�       ��	�[��{Y�A�*�

summaries/lossڸ�B
}
summaries/histogram_loss*a	   @�R@   @�R@      �?!   @�R@) i��,�@2�0n9�bR@��X�9T@�������:              �?        �va/�       ��	B|��{Y�A�*�

summaries/loss8a�B
}
summaries/histogram_loss*a	    '�Z@    '�Z@      �?!    '�Z@) �o���@2��iI�Z@~
�i�]@�������:              �?        ���]�       ��	����{Y�A�*�

summaries/lossvhB
}
summaries/histogram_loss*a	   ��M@   ��M@      �?!   ��M@) 2�V�b�@2��`��K@���cN@�������:              �?        Zx�       ��	���{Y�A�*�

summaries/lossJ��B
}
summaries/histogram_loss*a	   @�QS@   @�QS@      �?!   @�QS@) Y���S�@2�0n9�bR@��X�9T@�������:              �?        �L��       ��	b���{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   @�[c@   @�[c@      �?!   @�[c@) 9g�vl�@2߱�&�a@C��ôc@�������:              �?        �p��       ��	����{Y�A�*�

summaries/lossȋC
}
summaries/histogram_loss*a	    y�`@    y�`@      �?!    y�`@) �l���@2��GL:I`@߱�&�a@�������:              �?        �ޥ       ��	6��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��cZ@   ��cZ@      �?!   ��cZ@)�Dt�5��@2r;`�xX@��iI�Z@�������:              �?        3T��       ��	B?��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `CY^@   `CY^@      �?!   `CY^@) �SSW��@2~
�i�]@��GL:I`@�������:              �?        ��¥       ��	1\��{Y�A�*�

summaries/loss�1�B
}
summaries/histogram_loss*a	   �=&R@   �=&R@      �?!   �=&R@) d�e��@2Π54�P@�0n9�bR@�������:              �?        G��       ��	���{Y�A�*�

summaries/loss�_�B
}
summaries/histogram_loss*a	   @�K\@   @�K\@      �?!   @�K\@)�dr��@2��iI�Z@~
�i�]@�������:              �?        鈭��       ��	n���{Y�A�*�

summaries/lossnC�B
}
summaries/histogram_loss*a	   �mhV@   �mhV@      �?!   �mhV@) Ѱe�a�@2
6@�F?V@r;`�xX@�������:              �?        q&�       ��	Q���{Y�A�*�

summaries/loss�"�B
}
summaries/histogram_loss*a	   �X$R@   �X$R@      �?!   �X$R@) �)���@2Π54�P@�0n9�bR@�������:              �?        ����       ��	����{Y�A�*�

summaries/loss5�B
}
summaries/histogram_loss*a	    �Y@    �Y@      �?!    �Y@) ��\��@2r;`�xX@��iI�Z@�������:              �?        ��R��       ��	X��{Y�A�*�

summaries/lossL�B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) $�}a\�@2��X�9T@
6@�F?V@�������:              �?        ��oܥ       ��	���{Y�A�*�

summaries/lossҖB
}
summaries/histogram_loss*a	   �B�R@   �B�R@      �?!   �B�R@) d4��6�@2�0n9�bR@��X�9T@�������:              �?        G���       ��	%;��{Y�A�*�

summaries/loss>D�B
}
summaries/histogram_loss*a	   ��h^@   ��h^@      �?!   ��h^@)����S��@2~
�i�]@��GL:I`@�������:              �?        ����       ��	&V��{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �xxa@   �xxa@      �?!   �xxa@)@,���@2��GL:I`@߱�&�a@�������:              �?        }4�O�       ��	�p��{Y�A�*�

summaries/loss�3�B
}
summaries/histogram_loss*a	   �q�\@   �q�\@      �?!   �q�\@) �"x{m�@2��iI�Z@~
�i�]@�������:              �?        ib%l�       ��	ҋ��{Y�A�*�

summaries/loss]�B
}
summaries/histogram_loss*a	   ���^@   ���^@      �?!   ���^@) U��ge�@2~
�i�]@��GL:I`@�������:              �?        ��Z��       ��	����{Y�A�*�

summaries/loss�ܽB
}
summaries/histogram_loss*a	   @��W@   @��W@      �?!   @��W@)��Z���@2
6@�F?V@r;`�xX@�������:              �?         ��       ��	����{Y�A�*�

summaries/loss�1�B
}
summaries/histogram_loss*a	   �=�^@   �=�^@      �?!   �=�^@) ����@2~
�i�]@��GL:I`@�������:              �?        �ԚN�       ��	����{Y�A�*�

summaries/loss®�B
}
summaries/histogram_loss*a	   @�\@   @�\@      �?!   @�\@)�`�YI��@2��iI�Z@~
�i�]@�������:              �?        �#�C�       ��	@���{Y�A�*�

summaries/loss!Z�B
}
summaries/histogram_loss*a	    D+Z@    D+Z@      �?!    D+Z@) �3�f�@2r;`�xX@��iI�Z@�������:              �?        ����       ��	
��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �?bS@   �?bS@      �?!   �?bS@)@eh�{�@2�0n9�bR@��X�9T@�������:              �?        �J~�       ��	�,��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    >\[@    >\[@      �?!    >\[@) ����d�@2��iI�Z@~
�i�]@�������:              �?        d�~M�       ��	cG��{Y�A�*�

summaries/loss�4�B
}
summaries/histogram_loss*a	    ��V@    ��V@      �?!    ��V@) FC��5�@2
6@�F?V@r;`�xX@�������:              �?        ME�*�       ��	�b��{Y�A�*�

summaries/lossz��B
}
summaries/histogram_loss*a	   @�P@   @�P@      �?!   @�P@) �.�x-�@2���cN@Π54�P@�������:              �?        ���       ��	$|��{Y�A�*�

summaries/lossDI�B
}
summaries/histogram_loss*a	   �(iX@   �(iX@      �?!   �(iX@) B�Q��@2
6@�F?V@r;`�xX@�������:              �?        ����       ��	l���{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �BP@   �BP@      �?!   �BP@) �ܜF��@2���cN@Π54�P@�������:              �?        H{wW�       ��	u���{Y�A�*�

summaries/lossb��B
}
summaries/histogram_loss*a	   @,]Z@   @,]Z@      �?!   @,]Z@)�0q1w��@2r;`�xX@��iI�Z@�������:              �?        �l�M�       ��	X���{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @t_@   @t_@      �?!   @t_@)�P.l��@2~
�i�]@��GL:I`@�������:              �?        ���       ��	i���{Y�A�*�

summaries/loss}�B
}
summaries/histogram_loss*a	   �AW@   �AW@      �?!   �AW@) ���
��@2
6@�F?V@r;`�xX@�������:              �?        Vs:�       ��	����{Y�A�*�

summaries/loss|�B
}
summaries/histogram_loss*a	   �o"Y@   �o"Y@      �?!   �o"Y@) �tF��@2r;`�xX@��iI�Z@�������:              �?        go�m�       ��	��{Y�A�*�

summaries/loss�,�B
}
summaries/histogram_loss*a	   @�E\@   @�E\@      �?!   @�E\@)�x�B^��@2��iI�Z@~
�i�]@�������:              �?        )�       ��	�1��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���R@   ���R@      �?!   ���R@)@Z/�Vj�@2�0n9�bR@��X�9T@�������:              �?        @
��       ��	�J��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   `�Y@   `�Y@      �?!   `�Y@) �p�RQ�@2r;`�xX@��iI�Z@�������:              �?        I�K�       ��	�c��{Y�A�*�

summaries/loss�d�B
}
summaries/histogram_loss*a	   ���Y@   ���Y@      �?!   ���Y@)���9[��@2r;`�xX@��iI�Z@�������:              �?        <����       ��	}��{Y�A�*�

summaries/loss4k�B
}
summaries/histogram_loss*a	   �f-W@   �f-W@      �?!   �f-W@) R�����@2
6@�F?V@r;`�xX@�������:              �?        �$Х       ��	���{Y�A�*�

summaries/lossH��B
}
summaries/histogram_loss*a	    �[@    �[@      �?!    �[@) ���V��@2��iI�Z@~
�i�]@�������:              �?        [�Lr�       ��	����{Y�A�*�

summaries/loss�ԬB
}
summaries/histogram_loss*a	    ��U@    ��U@      �?!    ��U@) �f�+�@2��X�9T@
6@�F?V@�������:              �?        G���       ��	���{Y�A�*�

summaries/loss D�B
}
summaries/histogram_loss*a	    ��\@    ��\@      �?!    ��\@)   BW��@2��iI�Z@~
�i�]@�������:              �?        o�       ��	`���{Y�A�*�

summaries/loss
�C
}
summaries/histogram_loss*a	   @��`@   @��`@      �?!   @��`@) \�s�@2��GL:I`@߱�&�a@�������:              �?        �x�Z�       ��	z���{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �~|V@   �~|V@      �?!   �~|V@)@~�%��@2
6@�F?V@r;`�xX@�������:              �?        n�Uѥ       ��	f��{Y�A�*�

summaries/loss�G�B
}
summaries/histogram_loss*a	   `�hU@   `�hU@      �?!   `�hU@)@B�>'��@2��X�9T@
6@�F?V@�������:              �?        _��`�       ��	�/��{Y�A�*�

summaries/loss*��B
}
summaries/histogram_loss*a	   @��]@   @��]@      �?!   @��]@)�\�V�P�@2��iI�Z@~
�i�]@�������:              �?        0	 ��       ��	�I��{Y�A�*�

summaries/loss�[�B
}
summaries/histogram_loss*a	   @|�R@   @|�R@      �?!   @|�R@) ᜃɵ@2�0n9�bR@��X�9T@�������:              �?        ���       ��	�b��{Y�A�*�

summaries/loss�֪B
}
summaries/histogram_loss*a	   `�ZU@   `�ZU@      �?!   `�ZU@)@"��{��@2��X�9T@
6@�F?V@�������:              �?        �Q��       ��	�{��{Y�A�*�

summaries/loss�c�B
}
summaries/histogram_loss*a	   �|�\@   �|�\@      �?!   �|�\@) bD�Bx�@2��iI�Z@~
�i�]@�������:              �?        ���b�       ��	}���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @��^@   @��^@      �?!   @��^@)�lY5?K�@2~
�i�]@��GL:I`@�������:              �?        ��q�       ��	����{Y�A�*�

summaries/lossT�B
}
summaries/histogram_loss*a	   �J>V@   �J>V@      �?!   �J>V@) �b?�@2��X�9T@
6@�F?V@�������:              �?        ��]+�       ��	C���{Y�A�*�

summaries/lossh�C
}
summaries/histogram_loss*a	    M�a@    M�a@      �?!    M�a@) �2��T�@2��GL:I`@߱�&�a@�������:              �?        x��@�       ��	���{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��<_@   ��<_@      �?!   ��<_@) �6�.~�@2~
�i�]@��GL:I`@�������:              �?        8�V�       ��	����{Y�A�*�

summaries/loss�+�B
}
summaries/histogram_loss*a	   �v%T@   �v%T@      �?!   �v%T@)@~H ^�@2�0n9�bR@��X�9T@�������:              �?        ƈ軥       ��	��{Y�A�*�

summaries/loss.��B
}
summaries/histogram_loss*a	   ��;^@   ��;^@      �?!   ��;^@)���徐�@2~
�i�]@��GL:I`@�������:              �?        �<lw�       ��	V,��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �qP@    �qP@      �?!    �qP@)@H7��@2���cN@Π54�P@�������:              �?        ��i3�       ��	�F��{Y�A�*�

summaries/loss�S�B
}
summaries/histogram_loss*a	   `q�V@   `q�V@      �?!   `q�V@)@^ۮe��@2
6@�F?V@r;`�xX@�������:              �?        �p�       ��	(a��{Y�A�*�

summaries/lossй�B
}
summaries/histogram_loss*a	    :�W@    :�W@      �?!    :�W@)  ��
��@2
6@�F?V@r;`�xX@�������:              �?        :m��       ��	�z��{Y�A�*�

summaries/loss6�B
}
summaries/histogram_loss*a	   �� ^@   �� ^@      �?!   �� ^@)���{�]�@2~
�i�]@��GL:I`@�������:              �?        ���       ��	����{Y�A�*�

summaries/lossTΪB
}
summaries/histogram_loss*a	   ��YU@   ��YU@      �?!   ��YU@) ��v�}�@2��X�9T@
6@�F?V@�������:              �?        ��i�       ��	d���{Y�A�*�

summaries/loss��	C
}
summaries/histogram_loss*a	   @�0a@   @�0a@      �?!   @�0a@) 	n�*x�@2��GL:I`@߱�&�a@�������:              �?        �6�       ��	r���{Y�A�*�

summaries/loss�ْB
}
summaries/histogram_loss*a	   @0[R@   @0[R@      �?!   @0[R@) �iE4�@2Π54�P@�0n9�bR@�������:              �?        ����       ��	���{Y�A�*�

summaries/loss�"�B
}
summaries/histogram_loss*a	   �Z$[@   �Z$[@      �?!   �Z$[@)�\1q��@2��iI�Z@~
�i�]@�������:              �?        �kh3�       ��	@���{Y�A�*�

summaries/lossj'�B
}
summaries/histogram_loss*a	   @��Y@   @��Y@      �?!   @��Y@)������@2r;`�xX@��iI�Z@�������:              �?        �3�       ��	��{Y�A�*�

summaries/lossG�B
}
summaries/histogram_loss*a	   ��H]@   ��H]@      �?!   ��H]@)���U���@2��iI�Z@~
�i�]@�������:              �?        � �٥       ��	�*��{Y�A�*�

summaries/lossD��B
}
summaries/histogram_loss*a	   �(V@   �(V@      �?!   �(V@) �v�Ao�@2��X�9T@
6@�F?V@�������:              �?        �;^B�       ��	�C��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ��[@    ��[@      �?!    ��[@) R����@2��iI�Z@~
�i�]@�������:              �?        Ťx��       ��	_��{Y�A�*�

summaries/lossb�B
}
summaries/histogram_loss*a	   @l]S@   @l]S@      �?!   @l]S@) aD�p�@2�0n9�bR@��X�9T@�������:              �?        ��P�       ��	y��{Y�A�*�

summaries/loss�ϩB
}
summaries/histogram_loss*a	   `�9U@   `�9U@      �?!   `�9U@)@��� )�@2��X�9T@
6@�F?V@�������:              �?        %v��       ��	X���{Y�A�*�

summaries/loss�[C
}
summaries/histogram_loss*a	   �|K`@   �|K`@      �?!   �|K`@) ��"]��@2��GL:I`@߱�&�a@�������:              �?        ����       ��	����{Y�A�*�

summaries/loss�@�B
}
summaries/histogram_loss*a	    (^@    (^@      �?!    (^@)  
�Sk�@2~
�i�]@��GL:I`@�������:              �?        Ԥ���       ��	����{Y�A�*�

summaries/loss {�B
}
summaries/histogram_loss*a	    d�T@    d�T@      �?!    d�T@)  �-��@2��X�9T@
6@�F?V@�������:              �?        m?cƥ       ��	/���{Y�A�*�

summaries/loss',	C
}
summaries/histogram_loss*a	   ��%a@   ��%a@      �?!   ��%a@)@|�V`�@2��GL:I`@߱�&�a@�������:              �?        �º�       ��	D���{Y�A�*�

summaries/lossVI�B
}
summaries/histogram_loss*a	   �*iY@   �*iY@      �?!   �*iY@)��l�-�@2r;`�xX@��iI�Z@�������:              �?        W=��       ��	{��{Y�A�*�

summaries/lossg��B
}
summaries/histogram_loss*a	   ��~[@   ��~[@      �?!   ��~[@) ��,��@2��iI�Z@~
�i�]@�������:              �?        ���8�       ��	^,��{Y�A�*�

summaries/loss~ϷB
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@)�@ �I�@2
6@�F?V@r;`�xX@�������:              �?        �.�ݥ       ��	 F��{Y�A�*�

summaries/lossw�B
}
summaries/histogram_loss*a	   ��#W@   ��#W@      �?!   ��#W@) *��ϻ�@2
6@�F?V@r;`�xX@�������:              �?        c�|1�       ��	__��{Y�A�*�

summaries/lossB�C
}
summaries/histogram_loss*a	   @��a@   @��a@      �?!   @��a@) A��>-�@2߱�&�a@C��ôc@�������:              �?        ���ĥ       ��	:x��{Y�A�*�

summaries/loss"�FB
}
summaries/histogram_loss*a	   @d�H@   @d�H@      �?!   @d�H@)�zx�=�@2R��'�F@t�n̫I@�������:              �?        �U���       ��	����{Y�A�	*�

summaries/loss�-1B
}
summaries/histogram_loss*a	    �%F@    �%F@      �?!    �%F@)@����@2J23��D@R��'�F@�������:              �?        ��       ��	���{Y�A�	*�

summaries/loss_��B
}
summaries/histogram_loss*a	   �+ST@   �+ST@      �?!   �+ST@)@P��ѹ@2��X�9T@
6@�F?V@�������:              �?        
��V�       ��	����{Y�A�	*�

summaries/loss�-�B
}
summaries/histogram_loss*a	   ��EX@   ��EX@      �?!   ��EX@) r�(i�@2
6@�F?V@r;`�xX@�������:              �?        �����       ��	����{Y�A�	*�

summaries/lossR�B
}
summaries/histogram_loss*a	   �A
Y@   �A
Y@      �?!   �A
Y@)��
��@2r;`�xX@��iI�Z@�������:              �?        �["j�       ��	����{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   @:�\@   @:�\@      �?!   @:�\@)�Ư��@2��iI�Z@~
�i�]@�������:              �?        b�~�       ��	���{Y�A�	*�

summaries/loss`��B
}
summaries/histogram_loss*a	    ��Z@    ��Z@      �?!    ��Z@) ����V�@2r;`�xX@��iI�Z@�������:              �?        n�P/�       ��	(,��{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	    ~;]@    ~;]@      �?!    ~;]@)  ��B��@2��iI�Z@~
�i�]@�������:              �?        �r�       ��	�G��{Y�A�	*�

summaries/losswĥB
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@)@��պ@2��X�9T@
6@�F?V@�������:              �?        é_�       ��	�e��{Y�A�	*�

summaries/loss�W�B
}
summaries/histogram_loss*a	   ��J]@   ��J]@      �?!   ��J]@)���؎��@2��iI�Z@~
�i�]@�������:              �?        �� �       ��	k���{Y�A�	*�

summaries/lossl��B
}
summaries/histogram_loss*a	   ��:[@   ��:[@      �?!   ��:[@) ��`p+�@2��iI�Z@~
�i�]@�������:              �?        %#��       ��	b���{Y�A�	*�

summaries/loss�h.B
}
summaries/histogram_loss*a	   `�E@   `�E@      �?!   `�E@)@�N鑴�@2J23��D@R��'�F@�������:              �?        ^C�Y�       ��	����{Y�A�	*�

summaries/lossO��B
}
summaries/histogram_loss*a	   ��\\@   ��\\@      �?!   ��\\@) Lu�#�@2��iI�Z@~
�i�]@�������:              �?        �0Tt�       ��	9���{Y�A�	*�

summaries/losshZ�B
}
summaries/histogram_loss*a	    M�\@    M�\@      �?!    M�\@) H�Y���@2��iI�Z@~
�i�]@�������:              �?        h��       ��	����{Y�A�	*�

summaries/loss�SB
}
summaries/histogram_loss*a	   @@xJ@   @@xJ@      �?!   @@xJ@)� aJ,�@2t�n̫I@��`��K@�������:              �?        �tD�       ��	���{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   �r W@   �r W@      �?!   �r W@) �ڬŶ�@2
6@�F?V@r;`�xX@�������:              �?        �[^¥       ��	G ��{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   �^@   �^@      �?!   �^@)���x'>�@2~
�i�]@��GL:I`@�������:              �?        ��XW�       ��	�9��{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	    T@    T@      �?!    T@) ���@2�0n9�bR@��X�9T@�������:              �?        -~�P�       ��	]S��{Y�A�	*�

summaries/loss�g�B
}
summaries/histogram_loss*a	    �lQ@    �lQ@      �?!    �lQ@) ��{��@2Π54�P@�0n9�bR@�������:              �?        S|ǥ       ��	;n��{Y�A�	*�

summaries/loss5�B
}
summaries/histogram_loss*a	   �&�]@   �&�]@      �?!   �&�]@) �����@2~
�i�]@��GL:I`@�������:              �?        ����       ��	����{Y�A�	*�

summaries/loss�O�B
}
summaries/histogram_loss*a	    �)Z@    �)Z@      �?!    �)Z@) H 8rd�@2r;`�xX@��iI�Z@�������:              �?        O0��       ��	���{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   �<Z@   �<Z@      �?!   �<Z@)��m�"��@2r;`�xX@��iI�Z@�������:              �?        �m���       ��	����{Y�A�	*�

summaries/loss
�B
}
summaries/histogram_loss*a	   @a#R@   @a#R@      �?!   @a#R@) �鏴@2Π54�P@�0n9�bR@�������:              �?        ��8B�       ��	E���{Y�A�	*�

summaries/lossD��B
}
summaries/histogram_loss*a	   �h�Z@   �h�Z@      �?!   �h�Z@) B�@)�@2r;`�xX@��iI�Z@�������:              �?        ܋��       ��	B���{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   �CU@   �CU@      �?!   �CU@) �LB�@2��X�9T@
6@�F?V@�������:              �?        ����       ��	���{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	    �X@    �X@      �?!    �X@) H�q��@2r;`�xX@��iI�Z@�������:              �?        =i�w�       ��	���{Y�A�	*�

summaries/loss8��B
}
summaries/histogram_loss*a	    �2_@    �2_@      �?!    �2_@) �X5j�@2~
�i�]@��GL:I`@�������:              �?        Cb@ʥ       ��	m9��{Y�A�	*�

summaries/loss�gB
}
summaries/histogram_loss*a	   ���L@   ���L@      �?!   ���L@) 2ۖL9�@2��`��K@���cN@�������:              �?        o��ȥ       ��	/R��{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   @WY@   @WY@      �?!   @WY@)��I�8��@2r;`�xX@��iI�Z@�������:              �?        ����       ��	l��{Y�A�	*�

summaries/loss�ZMB
}
summaries/histogram_loss*a	   �X�I@   �X�I@      �?!   �X�I@)�$z)P��@2t�n̫I@��`��K@�������:              �?        Մ��       ��	����{Y�A�	*�

summaries/lossH�B
}
summaries/histogram_loss*a	   @	_@   @	_@      �?!   @	_@)�(D�v�@2~
�i�]@��GL:I`@�������:              �?        �m�[�       ��	���{Y�A�	*�

summaries/loss!��B
}
summaries/histogram_loss*a	    S@    S@      �?!    S@)@�e@��@2�0n9�bR@��X�9T@�������:              �?        F���       ��	R���{Y�A�	*�

summaries/lossV��B
}
summaries/histogram_loss*a	   �J�Z@   �J�Z@      �?!   �J�Z@)��v�ԁ�@2r;`�xX@��iI�Z@�������:              �?        ���       ��	B���{Y�A�	*�

summaries/lossX�B
}
summaries/histogram_loss*a	    �T@    �T@      �?!    �T@) �o�{�@2�0n9�bR@��X�9T@�������:              �?        z3H��       ��	����{Y�A�	*�

summaries/loss6��B
}
summaries/histogram_loss*a	   �F=Y@   �F=Y@      �?!   �F=Y@)�lX�3��@2r;`�xX@��iI�Z@�������:              �?        �1�/�       ��	� �{Y�A�	*�

summaries/loss�-�B
}
summaries/histogram_loss*a	   ���[@   ���[@      �?!   ���[@) ���
R�@2��iI�Z@~
�i�]@�������:              �?        ��A�       ��	� �{Y�A�	*�

summaries/lossDG�B
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@) �����@2
6@�F?V@r;`�xX@�������:              �?        ��Y�       ��	�5 �{Y�A�	*�

summaries/lossD�B
}
summaries/histogram_loss*a	   ��a[@   ��a[@      �?!   ��a[@) BΝ�m�@2��iI�Z@~
�i�]@�������:              �?        �>��       ��	/R �{Y�A�	*�

summaries/loss ��B
}
summaries/histogram_loss*a	     2V@     2V@      �?!     2V@)   @ʾ@2��X�9T@
6@�F?V@�������:              �?        �l�/�       ��	�l �{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��[@   ��[@      �?!   ��[@) ���p��@2��iI�Z@~
�i�]@�������:              �?        ɱ#�       ��	�� �{Y�A�	*�

summaries/loss�5C
}
summaries/histogram_loss*a	   ��F`@   ��F`@      �?!   ��F`@) �0ҙ��@2~
�i�]@��GL:I`@�������:              �?        ح]��       ��	�� �{Y�A�	*�

summaries/lossæ�B
}
summaries/histogram_loss*a	   `�tV@   `�tV@      �?!   `�tV@)@"�T���@2
6@�F?V@r;`�xX@�������:              �?        ;F�       ��	�� �{Y�A�	*�

summaries/lossq�B
}
summaries/histogram_loss*a	    n#Q@    n#Q@      �?!    n#Q@)@��x�[�@2Π54�P@�0n9�bR@�������:              �?        ����       ��	�� �{Y�A�	*�

summaries/loss홵B
}
summaries/histogram_loss*a	   �=�V@   �=�V@      �?!   �=�V@) ��`�@2
6@�F?V@r;`�xX@�������:              �?        ��
k�       ��	�� �{Y�A�	*�

summaries/loss�B
}
summaries/histogram_loss*a	   �!W@   �!W@      �?!   �!W@)������@2
6@�F?V@r;`�xX@�������:              �?        ��f��       ��	W
�{Y�A�	*�

summaries/losst��B
}
summaries/histogram_loss*a	   �n�S@   �n�S@      �?!   �n�S@) $+�֮�@2�0n9�bR@��X�9T@�������:              �?        .!��       ��	y$�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   �2Z@   �2Z@      �?!   �2Z@) @�dG�@2r;`�xX@��iI�Z@�������:              �?        �t�       ��	�;�{Y�A�	*�

summaries/loss�r�B
}
summaries/histogram_loss*a	   @P�\@   @P�\@      �?!   @P�\@)�@�>��@2��iI�Z@~
�i�]@�������:              �?        Mt��       ��	 U�{Y�A�	*�

summaries/loss�2�B
}
summaries/histogram_loss*a	   @S]@   @S]@      �?!   @S]@)��$xS�@2��iI�Z@~
�i�]@�������:              �?        �hZJ�       ��	�n�{Y�A�	*�

summaries/loss�wB
}
summaries/histogram_loss*a	    C�N@    C�N@      �?!    C�N@) H�g��@2���cN@Π54�P@�������:              �?        ���Υ       ��	U��{Y�A�	*�

summaries/lossf�C
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@) )����@2��GL:I`@߱�&�a@�������:              �?        �K���       ��	ǟ�{Y�A�	*�

summaries/lossj�C
}
summaries/histogram_loss*a	   @��`@   @��`@      �?!   @��`@) ���}.�@2��GL:I`@߱�&�a@�������:              �?        S�R��       ��	���{Y�A�	*�

summaries/lossA�B
}
summaries/histogram_loss*a	   �/h]@   �/h]@      �?!   �/h]@) �w�)�@2��iI�Z@~
�i�]@�������:              �?        ���       ��	p��{Y�A�	*�

summaries/lossXV�B
}
summaries/histogram_loss*a	    �j[@    �j[@      �?!    �j[@) ����}�@2��iI�Z@~
�i�]@�������:              �?        ��8�       ��	p��{Y�A�	*�

summaries/loss@��B
}
summaries/histogram_loss*a	    h�T@    h�T@      �?!    h�T@)  ��u�@2��X�9T@
6@�F?V@�������:              �?        -x��       ��	�!�{Y�A�	*�

summaries/loss�B
}
summaries/histogram_loss*a	   @�O@   @�O@      �?!   @�O@)����@�@2���cN@Π54�P@�������:              �?        ���       ��	�A�{Y�A�	*�

summaries/loss�gQB
}
summaries/histogram_loss*a	   @�,J@   @�,J@      �?!   @�,J@)�l=Ti�@2t�n̫I@��`��K@�������:              �?        :����       ��	�\�{Y�A�	*�

summaries/loss%R�B
}
summaries/histogram_loss*a	   �D
S@   �D
S@      �?!   �D
S@)@V�i��@2�0n9�bR@��X�9T@�������:              �?        ��OR�       ��	�y�{Y�A�	*�

summaries/loss�ɿB
}
summaries/histogram_loss*a	   @1�W@   @1�W@      �?!   @1�W@)�̿R���@2
6@�F?V@r;`�xX@�������:              �?        /��.�       ��	���{Y�A�	*�

summaries/loss'|�B
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@)@|s�}ӳ@2Π54�P@�0n9�bR@�������:              �?        aՄ�       ��	)��{Y�A�	*�

summaries/loss6@�B
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@) �����@2
6@�F?V@r;`�xX@�������:              �?        ���ƥ       ��	O��{Y�A�	*�

summaries/losstZ�B
}
summaries/histogram_loss*a	   �N�\@   �N�\@      �?!   �N�\@) ���'v�@2��iI�Z@~
�i�]@�������:              �?        U�C��       ��	:��{Y�A�	*�

summaries/loss� �B
}
summaries/histogram_loss*a	   �dV@   �dV@      �?!   �dV@)@:m��U�@2
6@�F?V@r;`�xX@�������:              �?        #iE�       ��	���{Y�A�	*�

summaries/loss�iB
}
summaries/histogram_loss*a	   `?�O@   `?�O@      �?!   `?�O@) �;��گ@2���cN@Π54�P@�������:              �?        ˠ�C�       ��	;�{Y�A�	*�

summaries/loss{|�B
}
summaries/histogram_loss*a	   `��V@   `��V@      �?!   `��V@)@��_�Ͽ@2
6@�F?V@r;`�xX@�������:              �?        0dE��       ��	f3�{Y�A�	*�

summaries/loss�j�B
}
summaries/histogram_loss*a	   �YmZ@   �YmZ@      �?!   �YmZ@)��g�'��@2r;`�xX@��iI�Z@�������:              �?        ��Տ�       ��	0L�{Y�A�	*�

summaries/loss�*�B
}
summaries/histogram_loss*a	   �Z�Y@   �Z�Y@      �?!   �Z�Y@) (p���@2r;`�xX@��iI�Z@�������:              �?        ���4�       ��	be�{Y�A�	*�

summaries/loss�B
}
summaries/histogram_loss*a	    A�R@    A�R@      �?!    A�R@) Ȍ!@�@2�0n9�bR@��X�9T@�������:              �?        �s&�       ��	��{Y�A�	*�

summaries/lossVt C
}
summaries/histogram_loss*a	   ��`@   ��`@      �?!   ��`@) 9��"�@2~
�i�]@��GL:I`@�������:              �?        �=+�       ��	���{Y�A�	*�

summaries/loss�BC
}
summaries/histogram_loss*a	   �\�`@   �\�`@      �?!   �\�`@)@��C�@2��GL:I`@߱�&�a@�������:              �?        ��/�       ��	���{Y�A�	*�

summaries/lossº�B
}
summaries/histogram_loss*a	   @XwY@   @XwY@      �?!   @XwY@)�`O�6D�@2r;`�xX@��iI�Z@�������:              �?        5"7ť       ��	>��{Y�A�	*�

summaries/lossR�B
}
summaries/histogram_loss*a	   @J`Q@   @J`Q@      �?!   @J`Q@) �XD�޲@2Π54�P@�0n9�bR@�������:              �?        ��E�       ��	���{Y�A�	*�

summaries/loss�Y�B
}
summaries/histogram_loss*a	    2�Z@    2�Z@      �?!    2�Z@) ����@2r;`�xX@��iI�Z@�������:              �?        �~+}�       ��	;��{Y�A�	*�

summaries/loss}/�B
}
summaries/histogram_loss*a	   ��%Y@   ��%Y@      �?!   ��%Y@) a$cs��@2r;`�xX@��iI�Z@�������:              �?        �+��       ��	��{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���Z@   ���Z@      �?!   ���Z@) =�#F�@2r;`�xX@��iI�Z@�������:              �?        ��sl�       ��	o-�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   �yZ@   �yZ@      �?!   �yZ@) Et�DS�@2r;`�xX@��iI�Z@�������:              �?        ;F��       ��	�I�{Y�A�	*�

summaries/loss-��B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@)@z�M�o�@2��X�9T@
6@�F?V@�������:              �?        Lэc�       ��	g�{Y�A�	*�

summaries/loss��&B
}
summaries/histogram_loss*a	   ���D@   ���D@      �?!   ���D@) d���3�@2J23��D@R��'�F@�������:              �?        t��r�       ��	�~�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   �>�X@   �>�X@      �?!   �>�X@)�'aq��@2r;`�xX@��iI�Z@�������:              �?        �.�.�       ��	h��{Y�A�	*�

summaries/loss9�lB
}
summaries/histogram_loss*a	    '�M@    '�M@      �?!    '�M@) �m��\�@2��`��K@���cN@�������:              �?        �\`�       ��	���{Y�A�	*�

summaries/loss �B
}
summaries/histogram_loss*a	    �AT@    �AT@      �?!    �AT@)  @8���@2��X�9T@
6@�F?V@�������:              �?        ]Ʌ�       ��	���{Y�A�	*�

summaries/loss�ĊB
}
summaries/histogram_loss*a	   ��XQ@   ��XQ@      �?!   ��XQ@) �?�7β@2Π54�P@�0n9�bR@�������:              �?        ����       ��	m��{Y�A�	*�

summaries/loss��oB
}
summaries/histogram_loss*a	   ��M@   ��M@      �?!   ��M@) ���(�@2��`��K@���cN@�������:              �?        c��       ��	���{Y�A�	*�

summaries/loss�2�B
}
summaries/histogram_loss*a	   �_�[@   �_�[@      �?!   �_�[@) ���;S�@2��iI�Z@~
�i�]@�������:              �?        X��       ��	�{Y�A�	*�

summaries/loss�|�B
}
summaries/histogram_loss*a	    ��X@    ��X@      �?!    ��X@) ���-�@2r;`�xX@��iI�Z@�������:              �?        s����       ��	�2�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��\Y@   ��\Y@      �?!   ��\Y@) �����@2r;`�xX@��iI�Z@�������:              �?        �$R�       ��	IK�{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	    ��U@    ��U@      �?!    ��U@)  Y���@2��X�9T@
6@�F?V@�������:              �?        j�_9�       ��	0e�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   @1�T@   @1�T@      �?!   @1�T@) �o�$:�@2��X�9T@
6@�F?V@�������:              �?        ��u*�       ��	�~�{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��R@   ��R@      �?!   ��R@) ^�᩵@2�0n9�bR@��X�9T@�������:              �?        �(d�       ��	���{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   @�4W@   @�4W@      �?!   @�4W@)��*cr��@2
6@�F?V@r;`�xX@�������:              �?        {	�       ��	>��{Y�A�	*�

summaries/loss�w�B
}
summaries/histogram_loss*a	   `��W@   `��W@      �?!   `��W@) ��M=��@2
6@�F?V@r;`�xX@�������:              �?        3)�:�       ��	��{Y�A�	*�

summaries/lossu9�B
}
summaries/histogram_loss*a	   �.�V@   �.�V@      �?!   �.�V@) ��I	�@2
6@�F?V@r;`�xX@�������:              �?        �4.�       ��	���{Y�A�	*�

summaries/loss�B
}
summaries/histogram_loss*a	   `�W@   `�W@      �?!   `�W@) �!�?��@2
6@�F?V@r;`�xX@�������:              �?        �h��       ��	���{Y�A�	*�

summaries/loss�M�B
}
summaries/histogram_loss*a	    ��V@    ��V@      �?!    ��V@) �= V:�@2
6@�F?V@r;`�xX@�������:              �?        W��       ��	��{Y�A�	*�

summaries/loss�y�B
}
summaries/histogram_loss*a	   �3�V@   �3�V@      �?!   �3�V@) I�8��@2
6@�F?V@r;`�xX@�������:              �?        S3�       ��	e4�{Y�A�	*�

summaries/lossbסB
}
summaries/histogram_loss*a	   @�:T@   @�:T@      �?!   @�:T@) ap�'��@2��X�9T@
6@�F?V@�������:              �?        ��.��       ��	�N�{Y�A�	*�

summaries/lossL�C
}
summaries/histogram_loss*a	   ��S`@   ��S`@      �?!   ��S`@) �����@2��GL:I`@߱�&�a@�������:              �?        Q�s�       ��	@h�{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   �CV@   �CV@      �?!   �CV@)@N(����@2
6@�F?V@r;`�xX@�������:              �?        f���       ��	=��{Y�A�	*�

summaries/loss@��B
}
summaries/histogram_loss*a	    h�V@    h�V@      �?!    h�V@)  R�kL�@2
6@�F?V@r;`�xX@�������:              �?        I��?�       ��	��{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	    u_@    u_@      �?!    u_@) ����3�@2~
�i�]@��GL:I`@�������:              �?        o�       ��	ٴ�{Y�A�	*�

summaries/loss�n�B
}
summaries/histogram_loss*a	    �-U@    �-U@      �?!    �-U@)@����@2��X�9T@
6@�F?V@�������:              �?        i��S�       ��	��{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	    �S@    �S@      �?!    �S@)  '���@2�0n9�bR@��X�9T@�������:              �?        u�'�       ��	���{Y�A�	*�

summaries/lossjV�B
}
summaries/histogram_loss*a	   @͊V@   @͊V@      �?!   @͊V@) �؎h¿@2
6@�F?V@r;`�xX@�������:              �?        u���       ��	���{Y�A�	*�

summaries/lossE��B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) S���L�@2r;`�xX@��iI�Z@�������:              �?        �Oǥ       ��	�{Y�A�	*�

summaries/lossHm|B
}
summaries/histogram_loss*a	    ��O@    ��O@      �?!    ��O@) �̌��@2���cN@Π54�P@�������:              �?        ,_�       ��	1�{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	    ��Z@    ��Z@      �?!    ��Z@) :�w�b�@2r;`�xX@��iI�Z@�������:              �?        m���       ��	�I�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@)@�-�\��@2
6@�F?V@r;`�xX@�������:              �?        ��3��       ��	�d�{Y�A�	*�

summaries/loss��pB
}
summaries/histogram_loss*a	   @rN@   @rN@      �?!   @rN@)���%J�@2��`��K@���cN@�������:              �?        @��N�       ��	�|�{Y�A�	*�

summaries/loss�yB
}
summaries/histogram_loss*a	   @8�O@   @8�O@      �?!   @8�O@)���Lyޯ@2���cN@Π54�P@�������:              �?        ��)�       ��	��{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   `c^@   `c^@      �?!   `c^@) �lQGF�@2~
�i�]@��GL:I`@�������:              �?        ��k�       ��	%��{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��U@   ��U@      �?!   ��U@) �9�ǻ@2��X�9T@
6@�F?V@�������:              �?        �*6�       ��	i��{Y�A�	*�

summaries/loss֔�B
}
summaries/histogram_loss*a	   ���Y@   ���Y@      �?!   ���Y@)�\�����@2r;`�xX@��iI�Z@�������:              �?        �0y�       ��	��{Y�A�	*�

summaries/loss�3�B
}
summaries/histogram_loss*a	   �|�T@   �|�T@      �?!   �|�T@) �\@���@2��X�9T@
6@�F?V@�������:              �?        M�3W�       ��	���{Y�A�	*�

summaries/lossD��B
}
summaries/histogram_loss*a	   ��sT@   ��sT@      �?!   ��sT@) �b�%�@2��X�9T@
6@�F?V@�������:              �?        и�+�       ��	��{Y�A�	*�

summaries/loss�R�B
}
summaries/histogram_loss*a	    Q�P@    Q�P@      �?!    Q�P@) ڂ	�@2Π54�P@�0n9�bR@�������:              �?        �kpE�       ��	�,�{Y�A�	*�

summaries/loss?�B
}
summaries/histogram_loss*a	   �'�O@   �'�O@      �?!   �'�O@) ��6Q�@2���cN@Π54�P@�������:              �?        ��M�       ��	oF�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	    ��Y@    ��Y@      �?!    ��Y@) ��>3�@2r;`�xX@��iI�Z@�������:              �?        n�zХ       ��	�a�{Y�A�	*�

summaries/loss�O�B
}
summaries/histogram_loss*a	    �	X@    �	X@      �?!    �	X@)  A��@2
6@�F?V@r;`�xX@�������:              �?        �0�	�       ��	�|�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   �QQ@   �QQ@      �?!   �QQ@) $o}�R�@2Π54�P@�0n9�bR@�������:              �?        �b�u�       ��	S��{Y�A�	*�

summaries/loss�xC
}
summaries/histogram_loss*a	    �`@    �`@      �?!    �`@) Ac���@2��GL:I`@߱�&�a@�������:              �?        ��
�       ��	!��{Y�A�	*�

summaries/loss�B
}
summaries/histogram_loss*a	    �cC@    �cC@      �?!    �cC@) @2VG�@2C\t��B@J23��D@�������:              �?        ��@�       ��	B��{Y�A�	*�

summaries/loss�l�B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) �}O�@2��X�9T@
6@�F?V@�������:              �?        ސČ�       ��	)��{Y�A�	*�

summaries/loss��B
}
summaries/histogram_loss*a	   �P`\@   �P`\@      �?!   �P`\@)��K5�)�@2��iI�Z@~
�i�]@�������:              �?        S�6�       ��	T	�{Y�A�	*�

summaries/loss	?�B
}
summaries/histogram_loss*a	    ��Y@    ��Y@      �?!    ��Y@) �m���@2r;`�xX@��iI�Z@�������:              �?        E)���       ��	�	�{Y�A�	*�

summaries/loss�F�B
}
summaries/histogram_loss*a	    �HU@    �HU@      �?!    �HU@)@��sP�@2��X�9T@
6@�F?V@�������:              �?        ��       ��	]6	�{Y�A�	*�

summaries/loss:g�B
}
summaries/histogram_loss*a	   @�V@   @�V@      �?!   @�V@) I��Tȿ@2
6@�F?V@r;`�xX@�������:              �?        ���ݥ       ��	@P	�{Y�A�	*�

summaries/loss^��B
}
summaries/histogram_loss*a	   ��S[@   ��S[@      �?!   ��S[@)�PBCV�@2��iI�Z@~
�i�]@�������:              �?        ���       ��	�h	�{Y�A�	*�

summaries/loss<!�B
}
summaries/histogram_loss*a	   �'�^@   �'�^@      �?!   �'�^@) ����@2~
�i�]@��GL:I`@�������:              �?        y�B�       ��	�	�{Y�A�	*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���Y@   ���Y@      �?!   ���Y@) �g���@2r;`�xX@��iI�Z@�������:              �?        S�j��       ��	k�	�{Y�A�
*�

summaries/loss
E�B
}
summaries/histogram_loss*a	   @�HU@   @�HU@      �?!   @�HU@) ���O�@2��X�9T@
6@�F?V@�������:              �?        ��M��       ��	c�	�{Y�A�
*�

summaries/loss_�B
}
summaries/histogram_loss*a	   �K�O@   �K�O@      �?!   �K�O@) ��p���@2���cN@Π54�P@�������:              �?        ����       ��	��	�{Y�A�
*�

summaries/lossJS�B
}
summaries/histogram_loss*a	   @i*Y@   @i*Y@      �?!   @i*Y@)�,��|��@2r;`�xX@��iI�Z@�������:              �?        �gR3�       ��	-�	�{Y�A�
*�

summaries/lossƓhB
}
summaries/histogram_loss*a	   �xM@   �xM@      �?!   �xM@)�����i�@2��`��K@���cN@�������:              �?        uw0�       ��	G
�{Y�A�
*�

summaries/loss�2�B
}
summaries/histogram_loss*a	   @SV@   @SV@      �?!   @SV@) )!pgQ�@2��X�9T@
6@�F?V@�������:              �?        �7��       ��	 
�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   @��V@   @��V@      �?!   @��V@)�h\��q�@2
6@�F?V@r;`�xX@�������:              �?         �Gn�       ��	4
�{Y�A�
*�

summaries/loss}�B
}
summaries/histogram_loss*a	   `�oQ@   `�oQ@      �?!   `�oQ@)@�o�A �@2Π54�P@�0n9�bR@�������:              �?        ꣿ�       ��	�M
�{Y�A�
*�

summaries/losspy�B
}
summaries/histogram_loss*a	    .]@    .]@      �?!    .]@)  b��c�@2��iI�Z@~
�i�]@�������:              �?        #�`ѥ       ��	0h
�{Y�A�
*�

summaries/loss�@�B
}
summaries/histogram_loss*a	    �U@    �U@      �?!    �U@) <�x��@2��X�9T@
6@�F?V@�������:              �?        �A���       ��	�
�{Y�A�
*�

summaries/loss�B
}
summaries/histogram_loss*a	   @�Y@   @�Y@      �?!   @�Y@)�(�����@2r;`�xX@��iI�Z@�������:              �?        Ίt�       ��	J�
�{Y�A�
*�

summaries/lossHX�B
}
summaries/histogram_loss*a	    	�[@    	�[@      �?!    	�[@) �2F���@2��iI�Z@~
�i�]@�������:              �?        �{fb�       ��	��
�{Y�A�
*�

summaries/losst��B
}
summaries/histogram_loss*a	   �N1W@   �N1W@      �?!   �N1W@) �(�,��@2
6@�F?V@r;`�xX@�������:              �?        ����       ��	S�
�{Y�A�
*�

summaries/lossQ��B
}
summaries/histogram_loss*a	    *WV@    *WV@      �?!    *WV@)@芲�1�@2
6@�F?V@r;`�xX@�������:              �?        _W�
�       ��	K�
�{Y�A�
*�

summaries/lossRA�B
}
summaries/histogram_loss*a	   @*V@   @*V@      �?!   @*V@) ��ZxV�@2��X�9T@
6@�F?V@�������:              �?        ��X٥       ��	��
�{Y�A�
*�

summaries/loss�(�B
}
summaries/histogram_loss*a	    eV@    eV@      �?!    eV@) @T�oX�@2
6@�F?V@r;`�xX@�������:              �?        8 XO�       ��	�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   �b[@   �b[@      �?!   �b[@) �ez�n�@2��iI�Z@~
�i�]@�������:              �?        �Mx��       ��	�1�{Y�A�
*�

summaries/lossr��B
}
summaries/histogram_loss*a	   @�4Q@   @�4Q@      �?!   @�4Q@) �{b)��@2Π54�P@�0n9�bR@�������:              �?        ��o�       ��	K�{Y�A�
*�

summaries/lossZߛB
}
summaries/histogram_loss*a	   @�{S@   @�{S@      �?!   @�{S@) �zv��@2�0n9�bR@��X�9T@�������:              �?        �(�v�       ��	ge�{Y�A�
*�

summaries/lossnsC
}
summaries/histogram_loss*a	   �mn`@   �mn`@      �?!   �mn`@) � ����@2��GL:I`@߱�&�a@�������:              �?        O����       ��	��{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   @q0Y@   @q0Y@      �?!   @q0Y@)��PI���@2r;`�xX@��iI�Z@�������:              �?        �A�       ��	��{Y�A�
*�

summaries/losshޞB
}
summaries/histogram_loss*a	    ��S@    ��S@      �?!    ��S@) �"fҥ�@2�0n9�bR@��X�9T@�������:              �?        �&ҥ       ��	>��{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��3^@   ��3^@      �?!   ��3^@) ��4���@2~
�i�]@��GL:I`@�������:              �?        w�AO�       ��	���{Y�A�
*�

summaries/loss9ȅB
}
summaries/histogram_loss*a	    �P@    �P@      �?!    �P@)@,��iz�@2Π54�P@�0n9�bR@�������:              �?        �>�s�       ��	���{Y�A�
*�

summaries/lossE�B
}
summaries/histogram_loss*a	   ���P@   ���P@      �?!   ���P@) �K~ޱ@2Π54�P@�0n9�bR@�������:              �?        �悥       ��	.��{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	    �[@    �[@      �?!    �[@)  j��1�@2��iI�Z@~
�i�]@�������:              �?        $�j��       ��	U�{Y�A�
*�

summaries/lossh�B
}
summaries/histogram_loss*a	    M>R@    M>R@      �?!    M>R@) �2�ʹ@2Π54�P@�0n9�bR@�������:              �?        \���       ��	M2�{Y�A�
*�

summaries/loss�÷B
}
summaries/histogram_loss*a	   �w�V@   �w�V@      �?!   �w�V@) B��-}�@2
6@�F?V@r;`�xX@�������:              �?        )�       ��	�J�{Y�A�
*�

summaries/loss��yB
}
summaries/histogram_loss*a	   ��>O@   ��>O@      �?!   ��>O@) ������@2���cN@Π54�P@�������:              �?        ��Z�       ��	�c�{Y�A�
*�

summaries/loss��lB
}
summaries/histogram_loss*a	    z�M@    z�M@      �?!    z�M@)  ���d�@2��`��K@���cN@�������:              �?        ��穥       ��	~�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   `U_@   `U_@      �?!   `U_@) �C��'�@2~
�i�]@��GL:I`@�������:              �?        s�U�       ��	���{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) "�d�>�@2r;`�xX@��iI�Z@�������:              �?        ��6ͥ       ��	d��{Y�A�
*�

summaries/loss�y�B
}
summaries/histogram_loss*a	   @:�U@   @:�U@      �?!   @:�U@) 
��@2��X�9T@
6@�F?V@�������:              �?        ����       ��	\��{Y�A�
*�

summaries/loss��uB
}
summaries/histogram_loss*a	   @U�N@   @U�N@      �?!   @U�N@)�;�K��@2���cN@Π54�P@�������:              �?        [�Lҥ       ��	]��{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   �_:X@   �_:X@      �?!   �_:X@) ����W�@2
6@�F?V@r;`�xX@�������:              �?        Y��       ��	���{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   �!qR@   �!qR@      �?!   �!qR@) $vI�A�@2�0n9�bR@��X�9T@�������:              �?        g�G��       ��	r�{Y�A�
*�

summaries/loss�F�B
}
summaries/histogram_loss*a	    ��Q@    ��Q@      �?!    ��Q@)  d#�ĳ@2Π54�P@�0n9�bR@�������:              �?        2
_�       ��	�0�{Y�A�
*�

summaries/loss�B
}
summaries/histogram_loss*a	   @��O@   @��O@      �?!   @��O@)�d��ǯ@2���cN@Π54�P@�������:              �?        i3入       ��	�K�{Y�A�
*�

summaries/lossj��B
}
summaries/histogram_loss*a	   @MT@   @MT@      �?!   @MT@) �<|]5�@2�0n9�bR@��X�9T@�������:              �?        3˺�       ��	�d�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���]@   ���]@      �?!   ���]@)��O�8n�@2~
�i�]@��GL:I`@�������:              �?        7waҥ       ��	_}�{Y�A�
*�

summaries/loss�ɠB
}
summaries/histogram_loss*a	   `1T@   `1T@      �?!   `1T@)@^�#?�@2�0n9�bR@��X�9T@�������:              �?        z�/�       ��	��{Y�A�
*�

summaries/lossl�B
}
summaries/histogram_loss*a	   ��MQ@   ��MQ@      �?!   ��MQ@) 1�,+��@2Π54�P@�0n9�bR@�������:              �?        w����       ��	G��{Y�A�
*�

summaries/lossއB
}
summaries/histogram_loss*a	    ��P@    ��P@      �?!    ��P@) x@��@2Π54�P@�0n9�bR@�������:              �?        �Ai�       ��	���{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   �:�U@   �:�U@      �?!   �:�U@) �ߊ��@2��X�9T@
6@�F?V@�������:              �?        `y�G�       ��	���{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   �RsZ@   �RsZ@      �?!   �RsZ@)�����@2r;`�xX@��iI�Z@�������:              �?        rjg��       ��	���{Y�A�
*�

summaries/loss��oB
}
summaries/histogram_loss*a	   @��M@   @��M@      �?!   @��M@)���87�@2��`��K@���cN@�������:              �?        �d;�       ��	@�{Y�A�
*�

summaries/loss� �B
}
summaries/histogram_loss*a	   � \@   � \@      �?!   � \@) b�1��@2��iI�Z@~
�i�]@�������:              �?        ]���       ��	j/�{Y�A�
*�

summaries/loss�1�B
}
summaries/histogram_loss*a	    8�P@    8�P@      �?!    8�P@)  ����@2���cN@Π54�P@�������:              �?        ��       ��	^I�{Y�A�
*�

summaries/loss�[�B
}
summaries/histogram_loss*a	   �|T@   �|T@      �?!   �|T@) �T��@2�0n9�bR@��X�9T@�������:              �?        ���:�       ��	�b�{Y�A�
*�

summaries/loss�ͦB
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) �.�+�@2��X�9T@
6@�F?V@�������:              �?        �;��       ��	�|�{Y�A�
*�

summaries/loss�=�B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@)�Tm�
�@2
6@�F?V@r;`�xX@�������:              �?        �O2�       ��	���{Y�A�
*�

summaries/lossQ�fB
}
summaries/histogram_loss*a	    ��L@    ��L@      �?!    ��L@) ��ю�@2��`��K@���cN@�������:              �?        ��^�       ��	 ��{Y�A�
*�

summaries/lossP��B
}
summaries/histogram_loss*a	    *4U@    *4U@      �?!    *4U@) @nQ��@2��X�9T@
6@�F?V@�������:              �?        �i��       ��	l��{Y�A�
*�

summaries/loss&�B
}
summaries/histogram_loss*a	   `�W@   `�W@      �?!   `�W@) �4؎�@2
6@�F?V@r;`�xX@�������:              �?        ��k��       ��	���{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��:[@   ��:[@      �?!   ��:[@) �@Z+�@2��iI�Z@~
�i�]@�������:              �?        � *ݥ       ��	��{Y�A�
*�

summaries/loss�v�B
}
summaries/histogram_loss*a	   �߮U@   �߮U@      �?!   �߮U@)@�P�b�@2��X�9T@
6@�F?V@�������:              �?        �ꏥ       ��	k)�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	    ��_@    ��_@      �?!    ��_@) ��V���@2~
�i�]@��GL:I`@�������:              �?        ��蒥       ��	sH�{Y�A�
*�

summaries/loss�C
}
summaries/histogram_loss*a	   `тa@   `тa@      �?!   `тa@)@��**�@2��GL:I`@߱�&�a@�������:              �?        r�9�       ��	e�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   �/�U@   �/�U@      �?!   �/�U@)@@C+AŽ@2��X�9T@
6@�F?V@�������:              �?        ��U�       ��	4��{Y�A�
*�

summaries/lossԆ�B
}
summaries/histogram_loss*a	   ��0R@   ��0R@      �?!   ��0R@) �ʀ��@2Π54�P@�0n9�bR@�������:              �?        �����       ��	���{Y�A�
*�

summaries/loss"l�B
}
summaries/histogram_loss*a	   @�m[@   @�m[@      �?!   @�m[@)���E��@2��iI�Z@~
�i�]@�������:              �?        ��aG�       ��	���{Y�A�
*�

summaries/loss�B
}
summaries/histogram_loss*a	   @^�S@   @^�S@      �?!   @^�S@) 1˩���@2�0n9�bR@��X�9T@�������:              �?        +�y��       ��	E��{Y�A�
*�

summaries/loss@�B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) b��G��@2r;`�xX@��iI�Z@�������:              �?        ϣ�&�       ��	���{Y�A�
*�

summaries/loss--�B
}
summaries/histogram_loss*a	   ��eS@   ��eS@      �?!   ��eS@)@z�@2�0n9�bR@��X�9T@�������:              �?        ����       ��	#�{Y�A�
*�

summaries/loss�+�B
}
summaries/histogram_loss*a	   �{�P@   �{�P@      �?!   �{�P@) !�|��@2Π54�P@�0n9�bR@�������:              �?        �oU��       ��	gG�{Y�A�
*�

summaries/loss�νB
}
summaries/histogram_loss*a	    ݹW@    ݹW@      �?!    ݹW@) HF9e��@2
6@�F?V@r;`�xX@�������:              �?        A�Oĥ       ��	�g�{Y�A�
*�

summaries/losstC
}
summaries/histogram_loss*a	   ���`@   ���`@      �?!   ���`@) $�����@2��GL:I`@߱�&�a@�������:              �?        ����       ��	ӈ�{Y�A�
*�

summaries/loss`�C
}
summaries/histogram_loss*a	    Lc@    Lc@      �?!    Lc@)  �ذ��@2߱�&�a@C��ôc@�������:              �?        �0>R�       ��	6��{Y�A�
*�

summaries/loss|�B
}
summaries/histogram_loss*a	   ��AZ@   ��AZ@      �?!   ��AZ@) �����@2r;`�xX@��iI�Z@�������:              �?        �ݥ       ��	���{Y�A�
*�

summaries/lossp�B
}
summaries/histogram_loss*a	    �[@    �[@      �?!    �[@)  ʽA��@2��iI�Z@~
�i�]@�������:              �?        �,�v�       ��	���{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	    | Q@    | Q@      �?!    | Q@)@����@2Π54�P@�0n9�bR@�������:              �?        ή��       ��	F�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	    ؓT@    ؓT@      �?!    ؓT@)@`�n�v�@2��X�9T@
6@�F?V@�������:              �?        z��6�       ��	%�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	    ��W@    ��W@      �?!    ��W@) j���@2
6@�F?V@r;`�xX@�������:              �?        �����       ��	�B�{Y�A�
*�

summaries/lossP�PB
}
summaries/histogram_loss*a	    �J@    �J@      �?!    �J@)  ��h@�@2t�n̫I@��`��K@�������:              �?        �����       ��	�`�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	    t1T@    t1T@      �?!    t1T@)  ��:|�@2�0n9�bR@��X�9T@�������:              �?        n��       ��	��{Y�A�
*�

summaries/loss�ŖB
}
summaries/histogram_loss*a	   `��R@   `��R@      �?!   `��R@)@�lR3�@2�0n9�bR@��X�9T@�������:              �?        ~2�       ��	ϟ�{Y�A�
*�

summaries/loss\�C
}
summaries/histogram_loss*a	   �+r`@   �+r`@      �?!   �+r`@) DV����@2��GL:I`@߱�&�a@�������:              �?        �����       ��	s��{Y�A�
*�

summaries/loss�h�B
}
summaries/histogram_loss*a	   `V@   `V@      �?!   `V@)@"��d�@2��X�9T@
6@�F?V@�������:              �?        �4{�       ��	���{Y�A�
*�

summaries/lossF[�B
}
summaries/histogram_loss*a	   �h+T@   �h+T@      �?!   �h+T@) ɵ��l�@2�0n9�bR@��X�9T@�������:              �?        	oå       ��	���{Y�A�
*�

summaries/lossW��B
}
summaries/histogram_loss*a	   �J�X@   �J�X@      �?!   �J�X@) 2�k5��@2r;`�xX@��iI�Z@�������:              �?        �ǙW�       ��	H�{Y�A�
*�

summaries/loss�Q�B
}
summaries/histogram_loss*a	    3*T@    3*T@      �?!    3*T@) �b��i�@2�0n9�bR@��X�9T@�������:              �?        ���       ��	�4�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   �y�W@   �y�W@      �?!   �y�W@)�8Ϻ4��@2
6@�F?V@r;`�xX@�������:              �?        j"f��       ��	�P�{Y�A�
*�

summaries/loss(��B
}
summaries/histogram_loss*a	    E_]@    E_]@      �?!    E_]@) �D����@2��iI�Z@~
�i�]@�������:              �?        ��mq�       ��	�m�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	    �[B@    �[B@      �?!    �[B@)@�)Zn�@2��#G�'A@C\t��B@�������:              �?        �M��       ��	 ��{Y�A�
*�

summaries/lossb��B
}
summaries/histogram_loss*a	   @,0U@   @,0U@      �?!   @,0U@) a�1�@2��X�9T@
6@�F?V@�������:              �?        e֢��       ��	��{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��P@   ��P@      �?!   ��P@) ��P��@2Π54�P@�0n9�bR@�������:              �?        ��٥       ��	��{Y�A�
*�

summaries/lossn��B
}
summaries/histogram_loss*a	   ���P@   ���P@      �?!   ���P@) �L����@2Π54�P@�0n9�bR@�������:              �?        v�,`�       ��	!��{Y�A�
*�

summaries/losszW�B
}
summaries/histogram_loss*a	   @�*[@   @�*[@      �?!   @�*[@)��W��@2��iI�Z@~
�i�]@�������:              �?        ��H�       ��	��{Y�A�
*�

summaries/loss�D�B
}
summaries/histogram_loss*a	    ��X@    ��X@      �?!    ��X@)  ��{c�@2r;`�xX@��iI�Z@�������:              �?        ��ϥ       ��	B!�{Y�A�
*�

summaries/loss/��B
}
summaries/histogram_loss*a	   �e6R@   �e6R@      �?!   �e6R@)@�0*��@2Π54�P@�0n9�bR@�������:              �?        ����       ��	�B�{Y�A�
*�

summaries/loss0�CB
}
summaries/histogram_loss*a	    �tH@    �tH@      �?!    �tH@)  I Ӱ�@2R��'�F@t�n̫I@�������:              �?        �R!:�       ��	�a�{Y�A�
*�

summaries/loss�C
}
summaries/histogram_loss*a	   �~`@   �~`@      �?!   �~`@) d`g���@2��GL:I`@߱�&�a@�������:              �?        |(�	�       ��	_~�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   @#0\@   @#0\@      �?!   @#0\@)������@2��iI�Z@~
�i�]@�������:              �?        +;��       ��	���{Y�A�
*�

summaries/loss�SsB
}
summaries/histogram_loss*a	   `sjN@   `sjN@      �?!   `sjN@) ��q��@2���cN@Π54�P@�������:              �?        ��S��       ��	���{Y�A�
*�

summaries/loss(��B
}
summaries/histogram_loss*a	    e]Y@    e]Y@      �?!    e]Y@) �Nd��@2r;`�xX@��iI�Z@�������:              �?        �deO�       ��	���{Y�A�
*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   @��Q@   @��Q@      �?!   @��Q@) ��2ĳ@2Π54�P@�0n9�bR@�������:              �?        IԮ�       ��	<��{Y�A�
*�

summaries/lossI̶B
}
summaries/histogram_loss*a	    ��V@    ��V@      �?!    ��V@) �Z�P�@2
6@�F?V@r;`�xX@�������:              �?        sC�f�       ��	�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	    �cU@    �cU@      �?!    �cU@)  ��ڗ�@2��X�9T@
6@�F?V@�������:              �?        � �       ��	5�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��uV@   ��uV@      �?!   ��uV@) ��xɇ�@2
6@�F?V@r;`�xX@�������:              �?        %{�إ       ��	�S�{Y�A�
*�

summaries/loss�L�B
}
summaries/histogram_loss*a	    ��U@    ��U@      �?!    ��U@) ׹��@2��X�9T@
6@�F?V@�������:              �?        ?�(�       ��	 s�{Y�A�
*�

summaries/lossꇘB
}
summaries/histogram_loss*a	   @�S@   @�S@      �?!   @�S@) y(�k��@2�0n9�bR@��X�9T@�������:              �?        [� �       ��	���{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��wR@   ��wR@      �?!   ��wR@) �LcQ�@2�0n9�bR@��X�9T@�������:              �?        �G�       ��	%��{Y�A�
*�

summaries/loss$��B
}
summaries/histogram_loss*a	   ��^Z@   ��^Z@      �?!   ��^Z@) �&���@2r;`�xX@��iI�Z@�������:              �?        0� ��       ��	��{Y�A�
*�

summaries/loss~w�B
}
summaries/histogram_loss*a	   ��T@   ��T@      �?!   ��T@) ��MTj�@2��X�9T@
6@�F?V@�������:              �?        n0�w�       ��	5��{Y�A�
*�

summaries/loss�b�B
}
summaries/histogram_loss*a	   @Yl[@   @Yl[@      �?!   @Yl[@)��hwE��@2��iI�Z@~
�i�]@�������:              �?        �՟7�       ��	(�{Y�A�
*�

summaries/loss�J�B
}
summaries/histogram_loss*a	   �]iS@   �]iS@      �?!   �]iS@) dR��@2�0n9�bR@��X�9T@�������:              �?        2��W�       ��	�)�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	    �!Q@    �!Q@      �?!    �!Q@) qd�W�@2Π54�P@�0n9�bR@�������:              �?        �`F�       ��	cG�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	    ��P@    ��P@      �?!    ��P@) @�^�@2Π54�P@�0n9�bR@�������:              �?        ��Y�       ��	kc�{Y�A�
*�

summaries/loss?�[B
}
summaries/histogram_loss*a	   �wK@   �wK@      �?!   �wK@) ����@2t�n̫I@��`��K@�������:              �?        ���Z�       ��	
��{Y�A�
*�

summaries/loss�͍B
}
summaries/histogram_loss*a	   @��Q@   @��Q@      �?!   @��Q@) ����@2Π54�P@�0n9�bR@�������:              �?        U��V�       ��	��{Y�A�
*�

summaries/loss�2�B
}
summaries/histogram_loss*a	    TfT@    TfT@      �?!    TfT@)@PR�`�@2��X�9T@
6@�F?V@�������:              �?        ��b/�       ��	���{Y�A�
*�

summaries/loss�.mB
}
summaries/histogram_loss*a	   `ѥM@   `ѥM@      �?!   `ѥM@) �w�@2��`��K@���cN@�������:              �?        �)l�       ��	���{Y�A�
*�

summaries/lossZ:�B
}
summaries/histogram_loss*a	   @KGV@   @KGV@      �?!   @KGV@) �9�L�@2
6@�F?V@r;`�xX@�������:              �?        �F�1�       ��	���{Y�A�
*�

summaries/lossv�B
}
summaries/histogram_loss*a	   ��.W@   ��.W@      �?!   ��.W@) �y��@2
6@�F?V@r;`�xX@�������:              �?        ���'�       ��	��{Y�A�
*�

summaries/loss/��B
}
summaries/histogram_loss*a	   ��<_@   ��<_@      �?!   ��<_@) T{Fq~�@2~
�i�]@��GL:I`@�������:              �?        ���       ��	�9�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	    ��V@    ��V@      �?!    ��V@) B��{,�@2
6@�F?V@r;`�xX@�������:              �?        �4b��       ��	KX�{Y�A�
*�

summaries/loss�C
}
summaries/histogram_loss*a	    ۡ`@    ۡ`@      �?!    ۡ`@) �SJ�@2��GL:I`@߱�&�a@�������:              �?        �0M��       ��	\v�{Y�A�
*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��;]@   ��;]@      �?!   ��;]@) �[�x��@2��iI�Z@~
�i�]@�������:              �?        0��B�       ��	���{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��cV@   ��cV@      �?!   ��cV@) �bT�@2
6@�F?V@r;`�xX@�������:              �?        <�s�       ��	ɰ�{Y�A�
*�

summaries/loss�GB
}
summaries/histogram_loss*a	    �H@    �H@      �?!    �H@) �sX�@2R��'�F@t�n̫I@�������:              �?        КШ�       ��	���{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   @W@   @W@      �?!   @W@)�(��^��@2
6@�F?V@r;`�xX@�������:              �?        n��       ��	x��{Y�A�
*�

summaries/loss�B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@) ��A�-�@2
6@�F?V@r;`�xX@�������:              �?        ��#}�       ��	��{Y�A�
*�

summaries/loss,ŒB
}
summaries/histogram_loss*a	   ��XR@   ��XR@      �?!   ��XR@) �/�_	�@2Π54�P@�0n9�bR@�������:              �?        nߚХ       ��	#-�{Y�A�
*�

summaries/loss�ßB
}
summaries/histogram_loss*a	   @z�S@   @z�S@      �?!   @z�S@) f)5��@2�0n9�bR@��X�9T@�������:              �?        |����       ��	�I�{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���Y@   ���Y@      �?!   ���Y@) �H��@2r;`�xX@��iI�Z@�������:              �?        ���       ��	�g�{Y�A�
*�

summaries/loss��hB
}
summaries/histogram_loss*a	   �M@   �M@      �?!   �M@) K���s�@2��`��K@���cN@�������:              �?        ��a�       ��	w��{Y�A�
*�

summaries/lossAH�B
}
summaries/histogram_loss*a	    �Z@    �Z@      �?!    �Z@) �*6�@2r;`�xX@��iI�Z@�������:              �?        xI)�       ��	{��{Y�A�
*�

summaries/loss��B
}
summaries/histogram_loss*a	   @R�X@   @R�X@      �?!   @R�X@)�h?��)�@2r;`�xX@��iI�Z@�������:              �?        t�콥       ��	<��{Y�A�
*�

summaries/lossq<B
}
summaries/histogram_loss*a	    �G@    �G@      �?!    �G@) <��E�@2R��'�F@t�n̫I@�������:              �?        gz�       ��	���{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��Y@   ��Y@      �?!   ��Y@)���@��@2r;`�xX@��iI�Z@�������:              �?        �U��       ��	���{Y�A�*�

summaries/lossL��B
}
summaries/histogram_loss*a	   ��?V@   ��?V@      �?!   ��?V@) ��m�@2
6@�F?V@r;`�xX@�������:              �?        ���       ��	��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �{BW@   �{BW@      �?!   �{BW@) �L���@2
6@�F?V@r;`�xX@�������:              �?        ��-��       ��	>=�{Y�A�*�

summaries/loss��~B
}
summaries/histogram_loss*a	   �6�O@   �6�O@      �?!   �6�O@) ��\���@2���cN@Π54�P@�������:              �?        ��>w�       ��	h[�{Y�A�*�

summaries/loss|�B
}
summaries/histogram_loss*a	   @�OS@   @�OS@      �?!   @�OS@) �L�bN�@2�0n9�bR@��X�9T@�������:              �?        ��'�       ��	�x�{Y�A�*�

summaries/loss�vhB
}
summaries/histogram_loss*a	    �M@    �M@      �?!    �M@)  �b�b�@2��`��K@���cN@�������:              �?        X�^�       ��	O��{Y�A�*�

summaries/loss�QB
}
summaries/histogram_loss*a	   �#J@   �#J@      �?!   �#J@)� r��Y�@2t�n̫I@��`��K@�������:              �?        ��C��       ��	��{Y�A�*�

summaries/lossU�VB
}
summaries/histogram_loss*a	   �
�J@   �
�J@      �?!   �
�J@) ��Z��@2t�n̫I@��`��K@�������:              �?        ����       ��	c��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   `��S@   `��S@      �?!   `��S@)@��D�@2�0n9�bR@��X�9T@�������:              �?        ��TY�       ��	���{Y�A�*�

summaries/loss2��B
}
summaries/histogram_loss*a	   @ƵS@   @ƵS@      �?!   @ƵS@) q ��G�@2�0n9�bR@��X�9T@�������:              �?        ��/��       ��	��{Y�A�*�

summaries/loss�ϟB
}
summaries/histogram_loss*a	    ��S@    ��S@      �?!    ��S@)  F��@2�0n9�bR@��X�9T@�������:              �?        Mesڥ       ��	�&�{Y�A�*�

summaries/loss�c�B
}
summaries/histogram_loss*a	   �T@   �T@      �?!   �T@) 8�H�@2�0n9�bR@��X�9T@�������:              �?        ���       ��	�F�{Y�A�*�

summaries/lossiE�B
}
summaries/histogram_loss*a	    ��V@    ��V@      �?!    ��V@)@Dq�k��@2
6@�F?V@r;`�xX@�������:              �?        ��� �       ��	Ug�{Y�A�*�

summaries/loss�yB
}
summaries/histogram_loss*a	   ��;O@   ��;O@      �?!   ��;O@)���{�@2���cN@Π54�P@�������:              �?        V��%�       ��	��{Y�A�*�

summaries/lossLܮB
}
summaries/histogram_loss*a	   ���U@   ���U@      �?!   ���U@) ��8ܽ@2��X�9T@
6@�F?V@�������:              �?        Hҥ       ��	���{Y�A�*�

summaries/loss�@�B
}
summaries/histogram_loss*a	   ��Z@   ��Z@      �?!   ��Z@) '&ƾ��@2r;`�xX@��iI�Z@�������:              �?        �a@�       ��	���{Y�A�*�

summaries/loss�npB
}
summaries/histogram_loss*a	   `�N@   `�N@      �?!   `�N@) C��:�@2��`��K@���cN@�������:              �?        �^`�       ��	��{Y�A�*�

summaries/loss։�B
}
summaries/histogram_loss*a	   �:�S@   �:�S@      �?!   �:�S@) ��� ۸@2�0n9�bR@��X�9T@�������:              �?        �g��       ��	� �{Y�A�*�

summaries/loss_[B
}
summaries/histogram_loss*a	   �k�O@   �k�O@      �?!   �k�O@) ����֯@2���cN@Π54�P@�������:              �?        c��       ��	~�{Y�A�*�

summaries/lossD#�B
}
summaries/histogram_loss*a	   �h�W@   �h�W@      �?!   �h�W@) Bu�w�@2
6@�F?V@r;`�xX@�������:              �?        n��L�       ��	�<�{Y�A�*�

summaries/loss�-�B
}
summaries/histogram_loss*a	   `�eP@   `�eP@      �?!   `�eP@)@�p�Ͱ@2���cN@Π54�P@�������:              �?        G����       ��	�\�{Y�A�*�

summaries/lossH��B
}
summaries/histogram_loss*a	    i[@    i[@      �?!    i[@) ������@2��iI�Z@~
�i�]@�������:              �?        �	�
�       ��	z�{Y�A�*�

summaries/lossӁ}B
}
summaries/histogram_loss*a	   `:�O@   `:�O@      �?!   `:�O@) }��;a�@2���cN@Π54�P@�������:              �?        `�7��       ��	ٗ�{Y�A�*�

summaries/lossp�XB
}
summaries/histogram_loss*a	    K@    K@      �?!    K@)  ���@2t�n̫I@��`��K@�������:              �?        �w�       ��	ĵ�{Y�A�*�

summaries/lossP��B
}
summaries/histogram_loss*a	    
[\@    
[\@      �?!    
[\@)  �T �@2��iI�Z@~
�i�]@�������:              �?        C���       ��	(��{Y�A�*�

summaries/loss�{�B
}
summaries/histogram_loss*a	   @vX@   @vX@      �?!   @vX@)����8�@2
6@�F?V@r;`�xX@�������:              �?        /��       ��	���{Y�A�*�

summaries/loss�DAB
}
summaries/histogram_loss*a	   ��(H@   ��(H@      �?!   ��(H@) 2��=�@2R��'�F@t�n̫I@�������:              �?        j8.�       ��	��{Y�A�*�

summaries/lossSY�B
}
summaries/histogram_loss*a	   `*�S@   `*�S@      �?!   `*�S@)@:�g�|�@2�0n9�bR@��X�9T@�������:              �?        �W��       ��	-�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    ��P@    ��P@      �?!    ��P@) ��W?�@2���cN@Π54�P@�������:              �?        l����       ��	�H�{Y�A�*�

summaries/losskg�B
}
summaries/histogram_loss*a	   `�P@   `�P@      �?!   `�P@)@����@2���cN@Π54�P@�������:              �?        �M��       ��	�e�{Y�A�*�

summaries/lossF��B
}
summaries/histogram_loss*a	   ��qX@   ��qX@      �?!   ��qX@)��E���@2
6@�F?V@r;`�xX@�������:              �?        �����       ��	��{Y�A�*�

summaries/loss*��B
}
summaries/histogram_loss*a	   @�Y@   @�Y@      �?!   @�Y@)�\J����@2r;`�xX@��iI�Z@�������:              �?        <��ƥ       ��	˟�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    s0Y@    s0Y@      �?!    s0Y@) .�<���@2r;`�xX@��iI�Z@�������:              �?        ++]ʥ       ��	��{Y�A�*�

summaries/lossp�B
}
summaries/histogram_loss*a	    �W@    �W@      �?!    �W@)  ���u�@2
6@�F?V@r;`�xX@�������:              �?        � ��       ��	Q��{Y�A�*�

summaries/loss�htB
}
summaries/histogram_loss*a	    �N@    �N@      �?!    �N@) ��2�*�@2���cN@Π54�P@�������:              �?        (p^��       ��	Y��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���O@   ���O@      �?!   ���O@) �٨6��@2���cN@Π54�P@�������:              �?        T?q�       ��	j�{Y�A�*�

summaries/lossƐ8B
}
summaries/histogram_loss*a	   �G@   �G@      �?!   �G@)�$����@2R��'�F@t�n̫I@�������:              �?        a�LD�       ��	�7�{Y�A�*�

summaries/lossF��B
}
summaries/histogram_loss*a	   ��vW@   ��vW@      �?!   ��vW@)��$o�4�@2
6@�F?V@r;`�xX@�������:              �?        E���       ��	CU�{Y�A�*�

summaries/loss.��B
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@) ��+�@2Π54�P@�0n9�bR@�������:              �?        Q�A��       ��	�n�{Y�A�*�

summaries/loss
$BB
}
summaries/histogram_loss*a	   @�DH@   @�DH@      �?!   @�DH@)�Z�Tg�@2R��'�F@t�n̫I@�������:              �?        Ji$��       ��	Ō�{Y�A�*�

summaries/loss�7�B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@) ��1r�@2�0n9�bR@��X�9T@�������:              �?        �ƞ,�       ��	G��{Y�A�*�

summaries/loss�o�B
}
summaries/histogram_loss*a	   ��_@   ��_@      �?!   ��_@)��h�#�@2~
�i�]@��GL:I`@�������:              �?        mQͥ       ��	���{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �vRV@   �vRV@      �?!   �vRV@)@~W;o$�@2
6@�F?V@r;`�xX@�������:              �?        �hr�       ��	W��{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @W�V@   @W�V@      �?!   @W�V@)��	n�u�@2
6@�F?V@r;`�xX@�������:              �?        �       ��	��{Y�A�*�

summaries/loss�;�B
}
summaries/histogram_loss*a	    z�\@    z�\@      �?!    z�\@)  1���@2��iI�Z@~
�i�]@�������:              �?        ��H_�       ��	-%�{Y�A�*�

summaries/lossn$�B
}
summaries/histogram_loss*a	   ���U@   ���U@      �?!   ���U@) �ǭb��@2��X�9T@
6@�F?V@�������:              �?        ����       ��	�?�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �0vZ@   �0vZ@      �?!   �0vZ@) �����@2r;`�xX@��iI�Z@�������:              �?        �H�       ��	�a�{Y�A�*�

summaries/loss<߿B
}
summaries/histogram_loss*a	   ���W@   ���W@      �?!   ���W@) �2����@2
6@�F?V@r;`�xX@�������:              �?        ��S�       ��	�}�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��0T@   ��0T@      �?!   ��0T@) �uz�@2�0n9�bR@��X�9T@�������:              �?        g���       ��	���{Y�A�*�

summaries/loss�jC
}
summaries/histogram_loss*a	    ^M`@    ^M`@      �?!    ^M`@) @�2��@2��GL:I`@߱�&�a@�������:              �?        ���>�       ��	J��{Y�A�*�

summaries/loss�dzB
}
summaries/histogram_loss*a	   ��LO@   ��LO@      �?!   ��LO@)��n��@2���cN@Π54�P@�������:              �?        ����       ��	���{Y�A�*�

summaries/loss�>TB
}
summaries/histogram_loss*a	   �؇J@   �؇J@      �?!   �؇J@) s�� ��@2t�n̫I@��`��K@�������:              �?        ��       ��	���{Y�A�*�

summaries/loss2��B
}
summaries/histogram_loss*a	   @�U@   @�U@      �?!   @�U@) q����@2��X�9T@
6@�F?V@�������:              �?        *N�	�       ��	��{Y�A�*�

summaries/loss⒨B
}
summaries/histogram_loss*a	   @\U@   @\U@      �?!   @\U@) �9G��@2��X�9T@
6@�F?V@�������:              �?        f�i�       ��	f0�{Y�A�*�

summaries/lossqk�B
}
summaries/histogram_loss*a	    nmS@    nmS@      �?!    nmS@)@�i�і�@2�0n9�bR@��X�9T@�������:              �?        7A�M�       ��	�P�{Y�A�*�

summaries/loss
�B
}
summaries/histogram_loss*a	   @�bV@   @�bV@      �?!   @�bV@) �m�Q�@2
6@�F?V@r;`�xX@�������:              �?        ���       ��	�n�{Y�A�*�

summaries/losskiB
}
summaries/histogram_loss*a	   `b-M@   `b-M@      �?!   `b-M@) mܫ���@2��`��K@���cN@�������:              �?        �0�z�       ��	���{Y�A�*�

summaries/loss�5�B
}
summaries/histogram_loss*a	   ���R@   ���R@      �?!   ���R@) ����@2�0n9�bR@��X�9T@�������:              �?        H�rץ       ��	;��{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    ӜR@    ӜR@      �?!    ӜR@) �^�ۦ�@2�0n9�bR@��X�9T@�������:              �?        ��oW�       ��	~��{Y�A�*�

summaries/lossS�B
}
summaries/histogram_loss*a	   @c�R@   @c�R@      �?!   @c�R@) �w��\�@2�0n9�bR@��X�9T@�������:              �?        �nUP�       ��	���{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    UU@    UU@      �?!    UU@) ��ѿ��@2��X�9T@
6@�F?V@�������:              �?        �YHH�       ��	���{Y�A�*�

summaries/lossj-�B
}
summaries/histogram_loss*a	   @�W@   @�W@      �?!   @�W@)���*��@2
6@�F?V@r;`�xX@�������:              �?        \x���       ��	y�{Y�A�*�

summaries/lossT�B
}
summaries/histogram_loss*a	    �JW@    �JW@      �?!    �JW@)  P[���@2
6@�F?V@r;`�xX@�������:              �?         ��ͥ       ��	m<�{Y�A�*�

summaries/loss�["B
}
summaries/histogram_loss*a	   �yKD@   �yKD@      �?!   �yKD@) �����@2C\t��B@J23��D@�������:              �?        �b���       ��	�\�{Y�A�*�

summaries/loss�M�B
}
summaries/histogram_loss*a	   @��Y@   @��Y@      �?!   @��Y@)�<Ӊ/��@2r;`�xX@��iI�Z@�������:              �?        R0��       ��	Wx�{Y�A�*�

summaries/loss:��B
}
summaries/histogram_loss*a	   @�W@   @�W@      �?!   @�W@)����ȋ�@2
6@�F?V@r;`�xX@�������:              �?        m+E��       ��	}��{Y�A�*�

summaries/loss�ӶB
}
summaries/histogram_loss*a	   @r�V@   @r�V@      �?!   @r�V@)��?N0R�@2
6@�F?V@r;`�xX@�������:              �?        q;�;�       ��	p��{Y�A�*�

summaries/loss˕B
}
summaries/histogram_loss*a	   �c�R@   �c�R@      �?!   �c�R@) �%���@2�0n9�bR@��X�9T@�������:              �?        9�e�       ��	J��{Y�A�*�

summaries/loss�UFB
}
summaries/histogram_loss*a	   ��H@   ��H@      �?!   ��H@) �3F5�@2R��'�F@t�n̫I@�������:              �?        9����       ��	���{Y�A�*�

summaries/loss7�B
}
summaries/histogram_loss*a	    �_@    �_@      �?!    �_@) Hjc��@2~
�i�]@��GL:I`@�������:              �?        ��o	�       ��	w �{Y�A�*�

summaries/lossE��B
}
summaries/histogram_loss*a	   �Y@   �Y@      �?!   �Y@) S����@2r;`�xX@��iI�Z@�������:              �?        �p�       ��	/ �{Y�A�*�

summaries/losse��B
}
summaries/histogram_loss*a	   �L�T@   �L�T@      �?!   �L�T@)@��+)��@2��X�9T@
6@�F?V@�������:              �?        �ہ�       ��	�L �{Y�A�*�

summaries/loss�wB
}
summaries/histogram_loss*a	   �}�N@   �}�N@      �?!   �}�N@) 2����@2���cN@Π54�P@�������:              �?        �s#�       ��	Ul �{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��aX@   ��aX@      �?!   ��aX@) �{���@2
6@�F?V@r;`�xX@�������:              �?        ��M�       ��	� �{Y�A�*�

summaries/lossf;vB
}
summaries/histogram_loss*a	   �l�N@   �l�N@      �?!   �l�N@)���ƚ�@2���cN@Π54�P@�������:              �?        J@���       ��	ߧ �{Y�A�*�

summaries/lossU��B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@)@qiٸ@2�0n9�bR@��X�9T@�������:              �?        W�w�       ��	~� �{Y�A�*�

summaries/lossw��B
}
summaries/histogram_loss*a	   ��>S@   ��>S@      �?!   ��>S@)@T6�n&�@2�0n9�bR@��X�9T@�������:              �?        aY?��       ��	L� �{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    !�U@    !�U@      �?!    !�U@) Ć�p�@2��X�9T@
6@�F?V@�������:              �?        �y`�       ��	�� �{Y�A�*�

summaries/loss�|B
}
summaries/histogram_loss*a	   � �O@   � �O@      �?!   � �O@) C�/�@2���cN@Π54�P@�������:              �?        ���ܥ       ��	v!�{Y�A�*�

summaries/loss·1B
}
summaries/histogram_loss*a	   @�6F@   @�6F@      �?!   @�6F@) ����מ@2J23��D@R��'�F@�������:              �?        �#[�       ��	�7!�{Y�A�*�

summaries/losst0gB
}
summaries/histogram_loss*a	   ��L@   ��L@      �?!   ��L@) �vP�@2��`��K@���cN@�������:              �?        aV�       ��	X!�{Y�A�*�

summaries/losse$�B
}
summaries/histogram_loss*a	   ��$P@   ��$P@      �?!   ��$P@)@���lI�@2���cN@Π54�P@�������:              �?        `#�q�       ��	w!�{Y�A�*�

summaries/loss�4�B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) a$=lM�@2��X�9T@
6@�F?V@�������:              �?        ݖYN�       ��	�!�{Y�A�*�

summaries/lossP��B
}
summaries/histogram_loss*a	    JSW@    JSW@      �?!    JSW@)  �(� �@2
6@�F?V@r;`�xX@�������:              �?        ��Cd�       ��	@�!�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @\�Y@   @\�Y@      �?!   @\�Y@)��-z�@2r;`�xX@��iI�Z@�������:              �?        [���       ��	�!�{Y�A�*�

summaries/loss�ژB
}
summaries/histogram_loss*a	   �US@   �US@      �?!   �US@)@:�Ѷ@2�0n9�bR@��X�9T@�������:              �?        ip#r�       ��	�	"�{Y�A�*�

summaries/loss(��B
}
summaries/histogram_loss*a	    ��Y@    ��Y@      �?!    ��Y@) ��n��@2r;`�xX@��iI�Z@�������:              �?        ���6�       ��	75"�{Y�A�*�

summaries/lossN,�B
}
summaries/histogram_loss*a	   ��%Z@   ��%Z@      �?!   ��%Z@)����+]�@2r;`�xX@��iI�Z@�������:              �?        Y��ʥ       ��	��"�{Y�A�*�

summaries/lossȸB
}
summaries/histogram_loss*a	   �W@   �W@      �?!   �W@)����@2
6@�F?V@r;`�xX@�������:              �?        �VI��       ��	f�"�{Y�A�*�

summaries/loss �B
}
summaries/histogram_loss*a	    �<U@    �<U@      �?!    �<U@)  Ab�/�@2��X�9T@
6@�F?V@�������:              �?        |�_�       ��	S#�{Y�A�*�

summaries/loss�ӣB
}
summaries/histogram_loss*a	   `}zT@   `}zT@      �?!   `}zT@)@n�+�5�@2��X�9T@
6@�F?V@�������:              �?        #��       ��	-#�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��#V@   ��#V@      �?!   ��#V@) d
��@2��X�9T@
6@�F?V@�������:              �?        x�1ĥ       ��	�P#�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @]\]@   @]\]@      �?!   @]\]@)��?�s��@2��iI�Z@~
�i�]@�������:              �?        9��       ��	�o#�{Y�A�*�

summaries/loss�+B
}
summaries/histogram_loss*a	   @�uE@   @�uE@      �?!   @�uE@) �΁pȜ@2J23��D@R��'�F@�������:              �?        ��u�       ��	��#�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��8]@   ��8]@      �?!   ��8]@) 2�RЮ�@2��iI�Z@~
�i�]@�������:              �?        :�       ��	y�#�{Y�A�*�

summaries/loss�LcB
}
summaries/histogram_loss*a	   ��iL@   ��iL@      �?!   ��iL@) 2�40:�@2��`��K@���cN@�������:              �?        ��q�       ��	!�#�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   `~U@   `~U@      �?!   `~U@)@*���Ż@2��X�9T@
6@�F?V@�������:              �?        G<$g�       ��	>�#�{Y�A�*�

summaries/lossz��B
}
summaries/histogram_loss*a	   @O�Z@   @O�Z@      �?!   @O�Z@)�D����@2r;`�xX@��iI�Z@�������:              �?        (��       ��	c	$�{Y�A�*�

summaries/loss0ܱB
}
summaries/histogram_loss*a	    �;V@    �;V@      �?!    �;V@) @����@2��X�9T@
6@�F?V@�������:              �?        �v�u�       ��	�($�{Y�A�*�

summaries/lossz?iB
}
summaries/histogram_loss*a	   @�'M@   @�'M@      �?!   @�'M@)��(z���@2��`��K@���cN@�������:              �?        c*M[�       ��	�E$�{Y�A�*�

summaries/loss
��B
}
summaries/histogram_loss*a	   @!VP@   @!VP@      �?!   @!VP@) �%��@2���cN@Π54�P@�������:              �?        ��ѓ�       ��	�k$�{Y�A�*�

summaries/loss�^�B
}
summaries/histogram_loss*a	    իP@    իP@      �?!    իP@) ��c�^�@2���cN@Π54�P@�������:              �?        }͂y�       ��	�$�{Y�A�*�

summaries/loss=�B
}
summaries/histogram_loss*a	    �'Z@    �'Z@      �?!    �'Z@) H���`�@2r;`�xX@��iI�Z@�������:              �?        ��ʥ       ��	��$�{Y�A�*�

summaries/losst��B
}
summaries/histogram_loss*a	   ��W@   ��W@      �?!   ��W@) �V�W��@2
6@�F?V@r;`�xX@�������:              �?        u[�       ��	�$�{Y�A�*�

summaries/loss:LSB
}
summaries/histogram_loss*a	   @�iJ@   @�iJ@      �?!   @�iJ@)�����̥@2t�n̫I@��`��K@�������:              �?        �>dG�       ��	��$�{Y�A�*�

summaries/lossbC�B
}
summaries/histogram_loss*a	   @l�Y@   @l�Y@      �?!   @l�Y@)�0G���@2r;`�xX@��iI�Z@�������:              �?        ����       ��	�%�{Y�A�*�

summaries/lossċ�B
}
summaries/histogram_loss*a	   �x1U@   �x1U@      �?!   �x1U@) ��Eu�@2��X�9T@
6@�F?V@�������:              �?        �       ��	�%%�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �r�Y@   �r�Y@      �?!   �r�Y@) �1tM��@2r;`�xX@��iI�Z@�������:              �?        ���       ��	�H%�{Y�A�*�

summaries/loss� �B
}
summaries/histogram_loss*a	   �DY@   �DY@      �?!   �DY@)���z���@2r;`�xX@��iI�Z@�������:              �?        ��3�       ��	f%�{Y�A�*�

summaries/loss�H�B
}
summaries/histogram_loss*a	   �	P@   �	P@      �?!   �	P@) ���>�@2���cN@Π54�P@�������:              �?        �����       ��	��%�{Y�A�*�

summaries/loss�T�B
}
summaries/histogram_loss*a	    ��S@    ��S@      �?!    ��S@)  ���ʸ@2�0n9�bR@��X�9T@�������:              �?        �,$��       ��	��%�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   ���P@   ���P@      �?!   ���P@) $"MG�@2���cN@Π54�P@�������:              �?        fY�g�       ��	��%�{Y�A�*�

summaries/loss�T�B
}
summaries/histogram_loss*a	   ��*V@   ��*V@      �?!   ��*V@) ��~��@2��X�9T@
6@�F?V@�������:              �?        ݘ@��       ��	v�%�{Y�A�*�

summaries/lossD��B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) B�{��@2
6@�F?V@r;`�xX@�������:              �?        p���       ��	P�%�{Y�A�*�

summaries/lossv}�B
}
summaries/histogram_loss*a	   ��/[@   ��/[@      �?!   ��/[@)�L��@2��iI�Z@~
�i�]@�������:              �?        �C3�       ��	�&�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   ���\@   ���\@      �?!   ���\@)���}%�@2��iI�Z@~
�i�]@�������:              �?        ]!Z`�       ��	=&�{Y�A�*�

summaries/loss�B�B
}
summaries/histogram_loss*a	   @]hR@   @]hR@      �?!   @]hR@) y_�z-�@2�0n9�bR@��X�9T@�������:              �?        h{S)�       ��	�Y&�{Y�A�*�

summaries/lossZ�B
}
summaries/histogram_loss*a	   @˞A@   @˞A@      �?!   @˞A@) �E��g�@2��#G�'A@C\t��B@�������:              �?        DL���       ��	}v&�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   `r5P@   `r5P@      �?!   `r5P@)@��H�k�@2���cN@Π54�P@�������:              �?        �/��       ��	�&�{Y�A�*�

summaries/lossF��B
}
summaries/histogram_loss*a	   �h7^@   �h7^@      �?!   �h7^@)��jYD��@2~
�i�]@��GL:I`@�������:              �?        �S&+�       ��	�&�{Y�A�*�

summaries/loss�uB
}
summaries/histogram_loss*a	   @��N@   @��N@      �?!   @��N@)��XT�@2���cN@Π54�P@�������:              �?        �eq�       ��	��&�{Y�A�*�

summaries/loss
C
}
summaries/histogram_loss*a	   @AB`@   @AB`@      �?!   @AB`@) Z۔��@2~
�i�]@��GL:I`@�������:              �?        �����       ��	�&�{Y�A�*�

summaries/lossZ?�B
}
summaries/histogram_loss*a	   @�P@   @�P@      �?!   @�P@) �ZY�@2���cN@Π54�P@�������:              �?        �Oi�       ��	0'�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   ���W@   ���W@      �?!   ���W@) b4C��@2
6@�F?V@r;`�xX@�������:              �?        ���ǥ       ��	,.'�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    4�T@    4�T@      �?!    4�T@)  �W�@2��X�9T@
6@�F?V@�������:              �?        �:���       ��	LO'�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �]�@@   �]�@@      �?!   �]�@@) db�G�@2�*ǣ0?@��#G�'A@�������:              �?        ��9ۥ       ��	�n'�{Y�A�*�

summaries/lossyB
}
summaries/histogram_loss*a	   @�!O@   @�!O@      �?!   @�!O@)� �I�@2���cN@Π54�P@�������:              �?        ��ۥ       ��	��'�{Y�A�*�

summaries/loss�*YB
}
summaries/histogram_loss*a	   @]%K@   @]%K@      �?!   @]%K@)����8�@2t�n̫I@��`��K@�������:              �?        *G���       ��	r�'�{Y�A�*�

summaries/loss�	TB
}
summaries/histogram_loss*a	    7�J@    7�J@      �?!    7�J@) ��#��@2t�n̫I@��`��K@�������:              �?        ��W�       ��	��'�{Y�A�*�

summaries/lossd�qB
}
summaries/histogram_loss*a	   �l>N@   �l>N@      �?!   �l>N@) ��5���@2��`��K@���cN@�������:              �?        �Ϋ�       ��	��'�{Y�A�*�

summaries/loss\1pB
}
summaries/histogram_loss*a	   �+N@   �+N@      �?!   �+N@) "���+�@2��`��K@���cN@�������:              �?        �2!�       ��	%(�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `�S@   `�S@      �?!   `�S@)@��I*׶@2�0n9�bR@��X�9T@�������:              �?        ��� �       ��	�&(�{Y�A�*�

summaries/lossh��B
}
summaries/histogram_loss*a	    �R@    �R@      �?!    �R@) �6�0o�@2Π54�P@�0n9�bR@�������:              �?        �uB�       ��	�D(�{Y�A�*�

summaries/loss�ŜB
}
summaries/histogram_loss*a	   @��S@   @��S@      �?!   @��S@) �	Mg �@2�0n9�bR@��X�9T@�������:              �?        ���Υ       ��	,d(�{Y�A�*�

summaries/lossln�B
}
summaries/histogram_loss*a	   �͍Z@   �͍Z@      �?!   �͍Z@) �P��@2r;`�xX@��iI�Z@�������:              �?        2E�A�       ��	�(�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��uT@   ��uT@      �?!   ��uT@) �p)�@2��X�9T@
6@�F?V@�������:              �?        ����       ��	¡(�{Y�A�*�

summaries/loss�f�B
}
summaries/histogram_loss*a	   ��LS@   ��LS@      �?!   ��LS@)@D+��G�@2�0n9�bR@��X�9T@�������:              �?        ��"�       ��	+�(�{Y�A�*�

summaries/lossj_�B
}
summaries/histogram_loss*a	   @�kZ@   @�kZ@      �?!   @�kZ@)��z����@2r;`�xX@��iI�Z@�������:              �?        DC�       ��	X�(�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���\@   ���\@      �?!   ���\@) "rK��@2��iI�Z@~
�i�]@�������:              �?        ��b�       ��	��(�{Y�A�*�

summaries/loss�ȕB
}
summaries/histogram_loss*a	   @�R@   @�R@      �?!   @�R@) ��n��@2�0n9�bR@��X�9T@�������:              �?        �u�S�       ��	�)�{Y�A�*�

summaries/lossᯎB
}
summaries/histogram_loss*a	    ��Q@    ��Q@      �?!    ��Q@)@�X���@2Π54�P@�0n9�bR@�������:              �?        I&��       ��	1?)�{Y�A�*�

summaries/loss.�B
}
summaries/histogram_loss*a	   �e#U@   �e#U@      �?!   �e#U@) �g9��@2��X�9T@
6@�F?V@�������:              �?        �˨�       ��	�[)�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���X@   ���X@      �?!   ���X@)�<��%O�@2r;`�xX@��iI�Z@�������:              �?        �Bϥ       ��	_{)�{Y�A�*�

summaries/lossݧqB
}
summaries/histogram_loss*a	   ��4N@   ��4N@      �?!   ��4N@) ������@2��`��K@���cN@�������:              �?        �k�Υ       ��	�)�{Y�A�*�

summaries/loss4��B
}
summaries/histogram_loss*a	   �Z@   �Z@      �?!   �Z@) R�bL�@2r;`�xX@��iI�Z@�������:              �?        ?���       ��	�)�{Y�A�*�

summaries/loss�\B
}
summaries/histogram_loss*a	   @^�K@   @^�K@      �?!   @^�K@)��U]*��@2t�n̫I@��`��K@�������:              �?        �e6��       ��	�)�{Y�A�*�

summaries/loss(��B
}
summaries/histogram_loss*a	    %�Y@    %�Y@      �?!    %�Y@) �Z��v�@2r;`�xX@��iI�Z@�������:              �?        d�8c�       ��	w�)�{Y�A�*�

summaries/loss4�B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@) �ڞ�̷@2�0n9�bR@��X�9T@�������:              �?        :�3�       ��	�*�{Y�A�*�

summaries/loss�~B
}
summaries/histogram_loss*a	    x�O@    x�O@      �?!    x�O@)  �!n��@2���cN@Π54�P@�������:              �?        G"� �       ��	�1*�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `B�U@   `B�U@      �?!   `B�U@)@Z�q�@2��X�9T@
6@�F?V@�������:              �?        �/	ۥ       ��	GT*�{Y�A�*�

summaries/lossz6�B
}
summaries/histogram_loss*a	   @��Q@   @��Q@      �?!   @��Q@) ���y�@2Π54�P@�0n9�bR@�������:              �?        #�5��       ��	yt*�{Y�A�*�

summaries/loss>��B
}
summaries/histogram_loss*a	   ��3T@   ��3T@      �?!   ��3T@) �%���@2�0n9�bR@��X�9T@�������:              �?        $%��       ��	ѐ*�{Y�A�*�

summaries/lossO&sB
}
summaries/histogram_loss*a	   ��dN@   ��dN@      �?!   ��dN@) ���7ެ@2���cN@Π54�P@�������:              �?        nY�       ��	�*�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @�!U@   @�!U@      �?!   @�!U@) �_�)�@2��X�9T@
6@�F?V@�������:              �?        
��ܥ       ��	��*�{Y�A�*�

summaries/loss�̌B
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@) ���/\�@2Π54�P@�0n9�bR@�������:              �?        B����       ��	��*�{Y�A�*�

summaries/loss�ϪB
}
summaries/histogram_loss*a	    �YU@    �YU@      �?!    �YU@)@\2�~�@2��X�9T@
6@�F?V@�������:              �?        䋔\�       ��	4+�{Y�A�*�

summaries/loss�9�B
}
summaries/histogram_loss*a	   `3�X@   `3�X@      �?!   `3�X@) {~Sa�@2r;`�xX@��iI�Z@�������:              �?        +mNĥ       ��	�2+�{Y�A�*�

summaries/loss"(B
}
summaries/histogram_loss*a	   @$E@   @$E@      �?!   @$E@) !��?��@2J23��D@R��'�F@�������:              �?        -�       ��	�P+�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @�`Z@   @�`Z@      �?!   @�`Z@)�`5���@2r;`�xX@��iI�Z@�������:              �?        ��V�       ��	�u+�{Y�A�*�

summaries/loss`��B
}
summaries/histogram_loss*a	    �ZX@    �ZX@      �?!    �ZX@) �LVd��@2
6@�F?V@r;`�xX@�������:              �?        ���_�       ��	p�+�{Y�A�*�

summaries/lossY��B
}
summaries/histogram_loss*a	    �R@    �R@      �?!    �R@)@<��1��@2�0n9�bR@��X�9T@�������:              �?        ZG`�       ��	V�+�{Y�A�*�

summaries/lossO�C
}
summaries/histogram_loss*a	   ���a@   ���a@      �?!   ���a@)@�ya��@2��GL:I`@߱�&�a@�������:              �?        �q��       ��	c�+�{Y�A�*�

summaries/loss�4�B
}
summaries/histogram_loss*a	   @��T@   @��T@      �?!   @��T@) �2l��@2��X�9T@
6@�F?V@�������:              �?        ����       ��	��+�{Y�A�*�

summaries/lossʸ�B
}
summaries/histogram_loss*a	   @�S@   @�S@      �?!   @�S@) ٿ�n��@2�0n9�bR@��X�9T@�������:              �?        F5�ߥ       ��	V,�{Y�A�*�

summaries/loss7VC
}
summaries/histogram_loss*a	   ��j`@   ��j`@      �?!   ��j`@)@��TV��@2��GL:I`@߱�&�a@�������:              �?        �U,�       ��	�-,�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��6R@   ��6R@      �?!   ��6R@) �}�λ�@2Π54�P@�0n9�bR@�������:              �?        ����       ��	EK,�{Y�A�*�

summaries/loss�l�B
}
summaries/histogram_loss*a	   ��-S@   ��-S@      �?!   ��-S@) !����@2�0n9�bR@��X�9T@�������:              �?        �^�ɥ       ��	k,�{Y�A�*�

summaries/lossfB�B
}
summaries/histogram_loss*a	   �LhR@   �LhR@      �?!   �LhR@) )0�T-�@2�0n9�bR@��X�9T@�������:              �?        ț�ۥ       ��	��,�{Y�A�*�

summaries/loss�!�B
}
summaries/histogram_loss*a	   �5dQ@   �5dQ@      �?!   �5dQ@)@h%f�@2Π54�P@�0n9�bR@�������:              �?        m�9C�       ��	��,�{Y�A�*�

summaries/lossD�B
}
summaries/histogram_loss*a	   @�HZ@   @�HZ@      �?!   @�HZ@)� "�t��@2r;`�xX@��iI�Z@�������:              �?        �	h�       ��	��,�{Y�A�*�

summaries/lossP��B
}
summaries/histogram_loss*a	    ��R@    ��R@      �?!    ��R@) @f�)C�@2�0n9�bR@��X�9T@�������:              �?        �nw�       ��	��,�{Y�A�*�

summaries/loss+џB
}
summaries/histogram_loss*a	   `%�S@   `%�S@      �?!   `%�S@)@NO�_�@2�0n9�bR@��X�9T@�������:              �?        �x�       ��	�-�{Y�A�*�

summaries/lossW��B
}
summaries/histogram_loss*a	   �*�R@   �*�R@      �?!   �*�R@)@����@2�0n9�bR@��X�9T@�������:              �?        ����       ��	"-�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @Q@   @Q@      �?!   @Q@) ��DOC�@2Π54�P@�0n9�bR@�������:              �?        �d Y�       ��	u>-�{Y�A�*�

summaries/lossq�B
}
summaries/histogram_loss*a	   �!�X@   �!�X@      �?!   �!�X@)������@2r;`�xX@��iI�Z@�������:              �?        �#jǥ       ��	>]-�{Y�A�*�

summaries/loss~�B
}
summaries/histogram_loss*a	   @ÏP@   @ÏP@      �?!   @ÏP@) �f;�$�@2���cN@Π54�P@�������:              �?        ����       ��	Kx-�{Y�A�*�

summaries/loss�b�B
}
summaries/histogram_loss*a	   �TLW@   �TLW@      �?!   �TLW@)�tp�o��@2
6@�F?V@r;`�xX@�������:              �?        ���K�       ��	h�-�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @;>X@   @;>X@      �?!   @;>X@)����]�@2
6@�F?V@r;`�xX@�������:              �?        ��4ʥ       ��	ȳ-�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @�\@   @�\@      �?!   @�\@)�����@2��iI�Z@~
�i�]@�������:              �?        �&���       ��	��-�{Y�A�*�

summaries/loss$$�B
}
summaries/histogram_loss*a	   ���U@   ���U@      �?!   ���U@) D�^%�@2��X�9T@
6@�F?V@�������:              �?        T*$Υ       ��	t�-�{Y�A�*�

summaries/loss��^B
}
summaries/histogram_loss*a	   �q�K@   �q�K@      �?!   �q�K@) �*\�.�@2��`��K@���cN@�������:              �?        �y�b�       ��	.�{Y�A�*�

summaries/loss{ӧB
}
summaries/histogram_loss*a	   `o�T@   `o�T@      �?!   `o�T@)@FKf��@2��X�9T@
6@�F?V@�������:              �?        :tHH�       ��	4/.�{Y�A�*�

summaries/losszc�B
}
summaries/histogram_loss*a	   @o�Q@   @o�Q@      �?!   @o�Q@) ���̳@2Π54�P@�0n9�bR@�������:              �?        $\�       ��	<J.�{Y�A�*�

summaries/loss+t�B
}
summaries/histogram_loss*a	   `��[@   `��[@      �?!   `��[@) ��8��@2��iI�Z@~
�i�]@�������:              �?        )G&��       ��	8g.�{Y�A�*�

summaries/loss�3�B
}
summaries/histogram_loss*a	   @s�R@   @s�R@      �?!   @s�R@) )��F��@2�0n9�bR@��X�9T@�������:              �?        0K�(�       ��	�.�{Y�A�*�

summaries/lossT��B
}
summaries/histogram_loss*a	   ��U@   ��U@      �?!   ��U@) ���u�@2��X�9T@
6@�F?V@�������:              �?        �LN�       ��	Y�.�{Y�A�*�

summaries/loss�>�B
}
summaries/histogram_loss*a	   �٧V@   �٧V@      �?!   �٧V@) R�{;
�@2
6@�F?V@r;`�xX@�������:              �?        ��`/�       ��	q�.�{Y�A�*�

summaries/lossVŜB
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@) 9^;F �@2�0n9�bR@��X�9T@�������:              �?        ~~.��       ��	��.�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   @@`Y@   @@`Y@      �?!   @@`Y@)� ��@2r;`�xX@��iI�Z@�������:              �?        n��ԥ       ��	�/�{Y�A�*�

summaries/loss/G�B
}
summaries/histogram_loss*a	   ��R@   ��R@      �?!   ��R@)@�F �µ@2�0n9�bR@��X�9T@�������:              �?        ���       ��	d/�{Y�A�*�

summaries/loss ��B
}
summaries/histogram_loss*a	    �\@    �\@      �?!    �\@) ��֊�@2��iI�Z@~
�i�]@�������:              �?        �-J��       ��	�</�{Y�A�*�

summaries/losst�B
}
summaries/histogram_loss*a	   �n]@   �n]@      �?!   �n]@) �eX�J�@2��iI�Z@~
�i�]@�������:              �?        �K�       ��	�Y/�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    :�\@    :�\@      �?!    :�\@)  ɰ��@2��iI�Z@~
�i�]@�������:              �?        a� �       ��	�u/�{Y�A�*�

summaries/loss�{�B
}
summaries/histogram_loss*a	    W@    W@      �?!    W@) N��@2
6@�F?V@r;`�xX@�������:              �?        ±�إ       ��	��/�{Y�A�*�

summaries/loss}ǊB
}
summaries/histogram_loss*a	   ��XQ@   ��XQ@      �?!   ��XQ@)@���β@2Π54�P@�0n9�bR@�������:              �?        �쇧�       ��	-�/�{Y�A�*�

summaries/lossl��B
}
summaries/histogram_loss*a	   �mpS@   �mpS@      �?!   �mpS@) d���@2�0n9�bR@��X�9T@�������:              �?        ʛ�ե       ��	��/�{Y�A�*�

summaries/lossId&B
}
summaries/histogram_loss*a	    ��D@    ��D@      �?!    ��D@)@4G}�	�@2J23��D@R��'�F@�������:              �?        8@5*�       ��	�/�{Y�A�*�

summaries/loss\�B
}
summaries/histogram_loss*a	   ��!R@   ��!R@      �?!   ��!R@) D����@2Π54�P@�0n9�bR@�������:              �?        ��       ��	0�{Y�A�*�

summaries/loss�yB
}
summaries/histogram_loss*a	   �"O@   �"O@      �?!   �"O@)�Ġ�$J�@2���cN@Π54�P@�������:              �?        +���       ��	9&0�{Y�A�*�

summaries/loss&��B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) iT�@2��X�9T@
6@�F?V@�������:              �?        �d&Q�       ��	�F0�{Y�A�*�

summaries/loss�[�B
}
summaries/histogram_loss*a	   �pkW@   �pkW@      �?!   �pkW@)�D���#�@2
6@�F?V@r;`�xX@�������:              �?        q���       ��	�b0�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @4pT@   @4pT@      �?!   @4pT@) �*|��@2��X�9T@
6@�F?V@�������:              �?        (7S�       ��	�0�{Y�A�*�

summaries/lossPF�B
}
summaries/histogram_loss*a	    �R@    �R@      �?!    �R@) @�S�S�@2Π54�P@�0n9�bR@�������:              �?        �lܥ       ��	j�0�{Y�A�*�

summaries/loss�c�B
}
summaries/histogram_loss*a	   �yX@   �yX@      �?!   �yX@)�8}��@2
6@�F?V@r;`�xX@�������:              �?        ���l�       ��	�0�{Y�A�*�

summaries/loss2}�B
}
summaries/histogram_loss*a	   @��V@   @��V@      �?!   @��V@) qw�п@2
6@�F?V@r;`�xX@�������:              �?        ��Vj�       ��	e�0�{Y�A�*�

summaries/loss9B
}
summaries/histogram_loss*a	    '�@@    '�@@      �?!    '�@@)@�_�P�@2�*ǣ0?@��#G�'A@�������:              �?        ��}�       ��	; 1�{Y�A�*�

summaries/loss䘭B
}
summaries/histogram_loss*a	   ��U@   ��U@      �?!   ��U@) ����m�@2��X�9T@
6@�F?V@�������:              �?        s5Y��       ��	.1�{Y�A�*�

summaries/lossKB
}
summaries/histogram_loss*a	   @cbI@   @cbI@      �?!   @cbI@)����"�@2t�n̫I@��`��K@�������:              �?        O��@�       ��	�;1�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) �`7�)�@2
6@�F?V@r;`�xX@�������:              �?        ��}�       ��	�]1�{Y�A�*�

summaries/lossU��B
}
summaries/histogram_loss*a	   �j0U@   �j0U@      �?!   �j0U@)@��f��@2��X�9T@
6@�F?V@�������:              �?        A_�       ��	|{1�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@)@��M��@2�0n9�bR@��X�9T@�������:              �?        |���       ��	B�1�{Y�A�*�

summaries/loss=P�B
}
summaries/histogram_loss*a	   �
P@   �
P@      �?!   �
P@)@����@2���cN@Π54�P@�������:              �?        ���       ��	=�1�{Y�A�*�

summaries/lossX�B
}
summaries/histogram_loss*a	    ��V@    ��V@      �?!    ��V@) ȡ�^_�@2
6@�F?V@r;`�xX@�������:              �?        ���       ��	��1�{Y�A�*�

summaries/loss�ٝB
}
summaries/histogram_loss*a	    4�S@    4�S@      �?!    4�S@)  )�)U�@2�0n9�bR@��X�9T@�������:              �?        �^��       ��	<�1�{Y�A�*�

summaries/loss\��B
}
summaries/histogram_loss*a	   ���U@   ���U@      �?!   ���U@) D<���@2��X�9T@
6@�F?V@�������:              �?        �����       ��	�2�{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	    �HS@    �HS@      �?!    �HS@)  Y��=�@2�0n9�bR@��X�9T@�������:              �?        #v�6�       ��	"62�{Y�A�*�

summaries/lossb�dB
}
summaries/histogram_loss*a	   @�L@   @�L@      �?!   @�L@)���f��@2��`��K@���cN@�������:              �?        zY��       ��	TV2�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    _�Q@    _�Q@      �?!    _�Q@) �6+��@2Π54�P@�0n9�bR@�������:              �?        ��|�       ��	�w2�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `��S@   `��S@      �?!   `��S@)@v�����@2�0n9�bR@��X�9T@�������:              �?        1�H�       ��	q�2�{Y�A�*�

summaries/loss�ѪB
}
summaries/histogram_loss*a	   @6ZU@   @6ZU@      �?!   @6ZU@) ��~�@2��X�9T@
6@�F?V@�������:              �?        HYA�       ��	B�2�{Y�A�*�

summaries/loss�e�B
}
summaries/histogram_loss*a	    �Q@    �Q@      �?!    �Q@) @�+�@2Π54�P@�0n9�bR@�������:              �?        �J�       ��	9�2�{Y�A�*�

summaries/loss�d�B
}
summaries/histogram_loss*a	   @��U@   @��U@      �?!   @��U@) 	h�
�@2��X�9T@
6@�F?V@�������:              �?         � �       ��	9�2�{Y�A�*�

summaries/loss�!�B
}
summaries/histogram_loss*a	   �5$P@   �5$P@      �?!   �5$P@) ��r�H�@2���cN@Π54�P@�������:              �?        =~�       ��	�3�{Y�A�*�

summaries/lossB��B
}
summaries/histogram_loss*a	   @�2Q@   @�2Q@      �?!   @�2Q@) A |�@2Π54�P@�0n9�bR@�������:              �?        ��fΥ       ��	o+3�{Y�A�*�

summaries/loss<�qB
}
summaries/histogram_loss*a	   ��;N@   ��;N@      �?!   ��;N@) �24�@2��`��K@���cN@�������:              �?        �J�       ��	AG3�{Y�A�*�

summaries/lossb��B
}
summaries/histogram_loss*a	   @�^S@   @�^S@      �?!   @�^S@) a�̻r�@2�0n9�bR@��X�9T@�������:              �?        "s
�       ��	h3�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   �bT@   �bT@      �?!   �bT@) d�^v�@2�0n9�bR@��X�9T@�������:              �?        _Х       ��	��3�{Y�A�*�

summaries/loss�l�B
}
summaries/histogram_loss*a	   ��-T@   ��-T@      �?!   ��-T@) I��r�@2�0n9�bR@��X�9T@�������:              �?        *��       ��	E�3�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �_�W@   �_�W@      �?!   �_�W@) @�Q��@2
6@�F?V@r;`�xX@�������:              �?        �5t}�       ��	A�3�{Y�A�*�

summaries/loss!&LB
}
summaries/histogram_loss*a	    ĄI@    ĄI@      �?!    ĄI@) �H�Y�@2t�n̫I@��`��K@�������:              �?        iA�       ��	�3�{Y�A�*�

summaries/lossݡ4B
}
summaries/histogram_loss*a	   �;�F@   �;�F@      �?!   �;�F@)@2�Gݟ@2J23��D@R��'�F@�������:              �?        At���       ��	�3�{Y�A�*�

summaries/lossčqB
}
summaries/histogram_loss*a	   ��1N@   ��1N@      �?!   ��1N@) �/1�}�@2��`��K@���cN@�������:              �?        l���       ��	�4�{Y�A�*�

summaries/loss��jB
}
summaries/histogram_loss*a	   ��SM@   ��SM@      �?!   ��SM@)��r���@2��`��K@���cN@�������:              �?        �F��       ��	:4�{Y�A�*�

summaries/lossm�B
}
summaries/histogram_loss*a	   �-�Q@   �-�Q@      �?!   �-�Q@)@��<f�@2Π54�P@�0n9�bR@�������:              �?         l*��       ��	X4�{Y�A�*�

summaries/loss�ΩB
}
summaries/histogram_loss*a	   ��9U@   ��9U@      �?!   ��9U@) $f]�(�@2��X�9T@
6@�F?V@�������:              �?        ��A�       ��	`x4�{Y�A�*�

summaries/loss�+~B
}
summaries/histogram_loss*a	   �w�O@   �w�O@      �?!   �w�O@) BZ��@2���cN@Π54�P@�������:              �?        ��ݥ       ��	F�4�{Y�A�*�

summaries/loss��YB
}
summaries/histogram_loss*a	   @�2K@   @�2K@      �?!   @�2K@)���P�@2t�n̫I@��`��K@�������:              �?        ��A3�       ��	��4�{Y�A�*�

summaries/loss�R�B
}
summaries/histogram_loss*a	   �Uj[@   �Uj[@      �?!   �Uj[@)����|�@2��iI�Z@~
�i�]@�������:              �?        ��g�       ��	��4�{Y�A�*�

summaries/loss�4�B
}
summaries/histogram_loss*a	    �fR@    �fR@      �?!    �fR@) ��Ws)�@2�0n9�bR@��X�9T@�������:              �?        }���       ��	�	5�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    u�W@    u�W@      �?!    u�W@) țj4��@2
6@�F?V@r;`�xX@�������:              �?        l����       ��	�,5�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @}�V@   @}�V@      �?!   @}�V@) y�G`��@2
6@�F?V@r;`�xX@�������:              �?        ��=ե       ��	�N5�{Y�A�*�

summaries/loss�s|B
}
summaries/histogram_loss*a	    p�O@    p�O@      �?!    p�O@)  �s�@2���cN@Π54�P@�������:              �?        ��ť       ��	�q5�{Y�A�*�

summaries/loss�O>B
}
summaries/histogram_loss*a	   ���G@   ���G@      �?!   ���G@)�DsD��@2R��'�F@t�n̫I@�������:              �?        WF[d�       ��	��5�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �RT@   �RT@      �?!   �RT@)@D%,�-�@2�0n9�bR@��X�9T@�������:              �?        �0V�       ��	�5�{Y�A�*�

summaries/lossB
}
summaries/histogram_loss*a	   `cC@   `cC@      �?!   `cC@)@�Ľ�}�@2C\t��B@J23��D@�������:              �?        �JN�       ��	O�5�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �T�P@   �T�P@      �?!   �T�P@)@<Vi�+�@2���cN@Π54�P@�������:              �?        Iܭ�       ��	��5�{Y�A�*�

summaries/loss�i�B
}
summaries/histogram_loss*a	   �3mS@   �3mS@      �?!   �3mS@) �U�C��@2�0n9�bR@��X�9T@�������:              �?        �s�$�       ��	B6�{Y�A�*�

summaries/loss�bB
}
summaries/histogram_loss*a	   �TL@   �TL@      �?!   �TL@)�p�#��@2��`��K@���cN@�������:              �?        �`d<�       ��	!6�{Y�A�*�

summaries/loss?uB
}
summaries/histogram_loss*a	   ��N@   ��N@      �?!   ��N@) 0���R�@2���cN@Π54�P@�������:              �?        D��       ��	)=6�{Y�A�*�

summaries/loss�c�B
}
summaries/histogram_loss*a	   �{�W@   �{�W@      �?!   �{�W@) �|BZT�@2
6@�F?V@r;`�xX@�������:              �?        9�ʥ       ��	)Z6�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `5�O@   `5�O@      �?!   `5�O@) �cn�@2���cN@Π54�P@�������:              �?        r��J�       ��	�s6�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���P@   ���P@      �?!   ���P@) �����@2Π54�P@�0n9�bR@�������:              �?        F�A�       ��	X�6�{Y�A�*�

summaries/lossj�]B
}
summaries/histogram_loss*a	   @M�K@   @M�K@      �?!   @M�K@)�|>5��@2��`��K@���cN@�������:              �?        	 3��       ��	u�6�{Y�A�*�

summaries/loss٘�B
}
summaries/histogram_loss*a	    �U@    �U@      �?!    �U@)@���Ž@2��X�9T@
6@�F?V@�������:              �?        ����       ��	��6�{Y�A�*�

summaries/loss^CB
}
summaries/histogram_loss*a	   ��kH@   ��kH@      �?!   ��kH@)�I|��@2R��'�F@t�n̫I@�������:              �?        +e}��       ��	 �6�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �[Z@   �[Z@      �?!   �[Z@)�D�#�@2r;`�xX@��iI�Z@�������:              �?        ��z��       ��	��6�{Y�A�*�

summaries/loss�HB
}
summaries/histogram_loss*a	   ��I@   ��I@      �?!   ��I@) �����@2R��'�F@t�n̫I@�������:              �?        ���       ��	�7�{Y�A�*�

summaries/lossUE�B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@) �]��8�@2
6@�F?V@r;`�xX@�������:              �?        ;_.��       ��	�27�{Y�A�*�

summaries/loss�[�B
}
summaries/histogram_loss*a	   �}kS@   �}kS@      �?!   �}kS@) dh2��@2�0n9�bR@��X�9T@�������:              �?        �>���       ��	�N7�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��P@   ��P@      �?!   ��P@) !��9�@2���cN@Π54�P@�������:              �?        �<V�       ��	�g7�{Y�A�*�

summaries/loss�soB
}
summaries/histogram_loss*a	   �r�M@   �r�M@      �?!   �r�M@)�|�� ��@2��`��K@���cN@�������:              �?        zy�t�       ��	f�7�{Y�A�*�

summaries/loss�W�B
}
summaries/histogram_loss*a	   ��
P@   ��
P@      �?!   ��
P@) ��~��@2���cN@Π54�P@�������:              �?        wVn�       ��	I�7�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��Q@   ��Q@      �?!   ��Q@)@R%��9�@2Π54�P@�0n9�bR@�������:              �?        ǘ,j�       ��	R�7�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �>�[@   �>�[@      �?!   �>�[@) ��C���@2��iI�Z@~
�i�]@�������:              �?        �b�{�       ��	��7�{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @�rV@   @�rV@      �?!   @�rV@) ��2~�@2
6@�F?V@r;`�xX@�������:              �?        Ѡ�,�       ��	O�7�{Y�A�*�

summaries/loss3�A
}
summaries/histogram_loss*a	   �a>@   �a>@      �?!   �a>@)��ҍ�+�@2o�=o�Z<@�*ǣ0?@�������:              �?        %���       ��	m8�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @�1T@   @�1T@      �?!   @�1T@) Q�^ }�@2�0n9�bR@��X�9T@�������:              �?        �dq��       ��	T8�{Y�A�*�

summaries/loss�e�B
}
summaries/histogram_loss*a	   @��V@   @��V@      �?!   @��V@) �N
�ǿ@2
6@�F?V@r;`�xX@�������:              �?        x�7v�       ��	58�{Y�A�*�

summaries/loss�a�B
}
summaries/histogram_loss*a	   `0�S@   `0�S@      �?!   `0�S@)@B��/0�@2�0n9�bR@��X�9T@�������:              �?        �wV��       ��	<O8�{Y�A�*�

summaries/loss>�fB
}
summaries/histogram_loss*a	   ���L@   ���L@      �?!   ���L@)�`��@2��`��K@���cN@�������:              �?        �On�       ��	fi8�{Y�A�*�

summaries/lossF��B
}
summaries/histogram_loss*a	   ��zZ@   ��zZ@      �?!   ��zZ@)�d�W]��@2r;`�xX@��iI�Z@�������:              �?        >�Җ�       ��	��8�{Y�A�*�

summaries/lossBhB
}
summaries/histogram_loss*a	   @(M@   @(M@      �?!   @(M@)���C�M�@2��`��K@���cN@�������:              �?        V�:M�       ��	��8�{Y�A�*�

summaries/loss�|jB
}
summaries/histogram_loss*a	    �OM@    �OM@      �?!    �OM@) �e�٪@2��`��K@���cN@�������:              �?        /p�w�       ��	�8�{Y�A�*�

summaries/loss�|zB
}
summaries/histogram_loss*a	   ��OO@   ��OO@      �?!   ��OO@)������@2���cN@Π54�P@�������:              �?        a�gϥ       ��	��8�{Y�A�*�

summaries/lossD�xB
}
summaries/histogram_loss*a	   �O@   �O@      �?!   �O@) B���2�@2���cN@Π54�P@�������:              �?        ׭!�       ��	�8�{Y�A�*�

summaries/loss�J�B
}
summaries/histogram_loss*a	    _	W@    _	W@      �?!    _	W@) Ɯ|{��@2
6@�F?V@r;`�xX@�������:              �?        9K��       ��	�9�{Y�A�*�

summaries/lossR��B
}
summaries/histogram_loss*a	   @j�R@   @j�R@      �?!   @j�R@) �y]���@2�0n9�bR@��X�9T@�������:              �?        �ɥ       ��	�9�{Y�A�*�

summaries/lossLX�B
}
summaries/histogram_loss*a	   �	�Y@   �	�Y@      �?!   �	�Y@) ҊG��@2r;`�xX@��iI�Z@�������:              �?        a%��       ��	�39�{Y�A�*�

summaries/loss
�B
}
summaries/histogram_loss*a	   �OaP@   �OaP@      �?!   �OaP@)@�
��İ@2���cN@Π54�P@�������:              �?        S%��       ��	N9�{Y�A�*�

summaries/loss	^C
}
summaries/histogram_loss*a	    ��`@    ��`@      �?!    ��`@)@��F�@2��GL:I`@߱�&�a@�������:              �?        ����       ��	g9�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �]bU@   �]bU@      �?!   �]bU@) d�+���@2��X�9T@
6@�F?V@�������:              �?        r�;b�       ��	�9�{Y�A�*�

summaries/lossiB
}
summaries/histogram_loss*a	   �!�C@   �!�C@      �?!   �!�C@)@�jC�2�@2C\t��B@J23��D@�������:              �?        o�u�       ��	$�9�{Y�A�*�

summaries/lossB �B
}
summaries/histogram_loss*a	   @$S@   @$S@      �?!   @$S@) A$���@2�0n9�bR@��X�9T@�������:              �?        �#>@�       ��	h�9�{Y�A�*�

summaries/loss_��B
}
summaries/histogram_loss*a	   �RU@   �RU@      �?!   �RU@)@���i�@2��X�9T@
6@�F?V@�������:              �?        ��41�       ��	��9�{Y�A�*�

summaries/loss>!�B
}
summaries/histogram_loss*a	   �'�Z@   �'�Z@      �?!   �'�Z@)�`!`���@2r;`�xX@��iI�Z@�������:              �?        �5��       ��	��9�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    XV@    XV@      �?!    XV@)  ��3�@2
6@�F?V@r;`�xX@�������:              �?        N7%�       ��	~:�{Y�A�*�

summaries/lossL�B
}
summaries/histogram_loss*a	   �I`V@   �I`V@      �?!   �I`V@) �Q�K�@2
6@�F?V@r;`�xX@�������:              �?        ��W˥       ��	�:�{Y�A�*�

summaries/loss^��B
}
summaries/histogram_loss*a	   ��2T@   ��2T@      �?!   ��2T@) ���M�@2�0n9�bR@��X�9T@�������:              �?        �,\~�       ��	]3:�{Y�A�*�

summaries/lossp`�B
}
summaries/histogram_loss*a	    �T@    �T@      �?!    �T@) @��b�@2��X�9T@
6@�F?V@�������:              �?        �K�       ��	�K:�{Y�A�*�

summaries/lossw�cB
}
summaries/histogram_loss*a	   �N{L@   �N{L@      �?!   �N{L@) j/�Y�@2��`��K@���cN@�������:              �?        02 �       ��	�d:�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    A�X@    A�X@      �?!    A�X@) p�{�@2r;`�xX@��iI�Z@�������:              �?        E�/��       ��	A}:�{Y�A�*�

summaries/loss��AB
}
summaries/histogram_loss*a	   �^>H@   �^>H@      �?!   �^>H@) GO^�@2R��'�F@t�n̫I@�������:              �?        jz'��       ��	-�:�{Y�A�*�

summaries/loss$\B
}
summaries/histogram_loss*a	   ���K@   ���K@      �?!   ���K@)�6콩�@2t�n̫I@��`��K@�������:              �?        3o4n�       ��	��:�{Y�A�*�

summaries/loss�vB
}
summaries/histogram_loss*a	   @��N@   @��N@      �?!   @��N@)���4���@2���cN@Π54�P@�������:              �?        B�g�       ��	G�:�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �AR@    �AR@      �?!    �AR@) @ؙ�Դ@2Π54�P@�0n9�bR@�������:              �?        N��ץ       ��	��:�{Y�A�*�

summaries/loss��tB
}
summaries/histogram_loss*a	   �1�N@   �1�N@      �?!   �1�N@)�XaY�6�@2���cN@Π54�P@�������:              �?        :��       ��	��:�{Y�A�*�

summaries/loss�yB
}
summaries/histogram_loss*a	   �p"O@   �p"O@      �?!   �p"O@) ���J�@2���cN@Π54�P@�������:              �?        Lv]�       ��	L;�{Y�A�*�

summaries/loss�#�B
}
summaries/histogram_loss*a	   �sDU@   �sDU@      �?!   �sDU@) a%��D�@2��X�9T@
6@�F?V@�������:              �?        lڥ       ��	4/;�{Y�A�*�

summaries/loss��\B
}
summaries/histogram_loss*a	   `R�K@   `R�K@      �?!   `R�K@) d�˧@2t�n̫I@��`��K@�������:              �?        j�=�       ��	�H;�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �T2R@   �T2R@      �?!   �T2R@) D�qܱ�@2Π54�P@�0n9�bR@�������:              �?        k`�8�       ��	�c;�{Y�A�*�

summaries/loss�PB
}
summaries/histogram_loss*a	   ��J@   ��J@      �?!   ��J@) ����K�@2t�n̫I@��`��K@�������:              �?        ��p��       ��	�};�{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @KP@   @KP@      �?!   @KP@) ��ֲ*�@2���cN@Π54�P@�������:              �?        ����       ��	��;�{Y�A�*�

summaries/lossIUaB
}
summaries/histogram_loss*a	    �*L@    �*L@      �?!    �*L@) �q��ʨ@2��`��K@���cN@�������:              �?        ڦ@��       ��	��;�{Y�A�*�

summaries/lossHT�B
}
summaries/histogram_loss*a	    �
Z@    �
Z@      �?!    �
Z@) ��"1�@2r;`�xX@��iI�Z@�������:              �?        m����       ��	�;�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �:T@   �:T@      �?!   �:T@) ��/��@2�0n9�bR@��X�9T@�������:              �?        ��
M�       ��	��;�{Y�A�*�

summaries/lossAmsB
}
summaries/histogram_loss*a	    �mN@    �mN@      �?!    �mN@) P� �@2���cN@Π54�P@�������:              �?        _F��       ��	�;�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@) r���w�@2
6@�F?V@r;`�xX@�������:              �?        S��\�       ��	�<�{Y�A�*�

summaries/loss�/�B
}
summaries/histogram_loss*a	    ��^@    ��^@      �?!    ��^@) v�1`�@2~
�i�]@��GL:I`@�������:              �?        �.H!�       ��	�*<�{Y�A�*�

summaries/loss�1�B
}
summaries/histogram_loss*a	   @9FU@   @9FU@      �?!   @9FU@) ټ}�I�@2��X�9T@
6@�F?V@�������:              �?        �Cx!�       ��	�D<�{Y�A�*�

summaries/lossEy�B
}
summaries/histogram_loss*a	   �(�U@   �(�U@      �?!   �(�U@)@&��D��@2��X�9T@
6@�F?V@�������:              �?        ����       ��	t\<�{Y�A�*�

summaries/loss^��B
}
summaries/histogram_loss*a	   ��Q@   ��Q@      �?!   ��Q@) ���#�@2Π54�P@�0n9�bR@�������:              �?        `���       ��	�t<�{Y�A�*�

summaries/lossE>ZB
}
summaries/histogram_loss*a	   ��GK@   ��GK@      �?!   ��GK@) �/��A�@2t�n̫I@��`��K@�������:              �?        LU��       ��	X�<�{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @QT@   @QT@      �?!   @QT@) ��6̹@2��X�9T@
6@�F?V@�������:              �?        ��s�       ��		�<�{Y�A�*�

summaries/loss�$�B
}
summaries/histogram_loss*a	   @�$]@   @�$]@      �?!   @�$]@)�쭟��@2��iI�Z@~
�i�]@�������:              �?        ����       ��	�<�{Y�A�*�

summaries/lossi��B
}
summaries/histogram_loss*a	    ��Q@    ��Q@      �?!    ��Q@)@��~tU�@2Π54�P@�0n9�bR@�������:              �?        �!D��       ��	��<�{Y�A�*�

summaries/lossF�QB
}
summaries/histogram_loss*a	   ��=J@   ��=J@      �?!   ��=J@)������@2t�n̫I@��`��K@�������:              �?        ظ��       ��	�<�{Y�A�*�

summaries/loss(�*B
}
summaries/histogram_loss*a	    �WE@    �WE@      �?!    �WE@) �9�w�@2J23��D@R��'�F@�������:              �?        z�Gv�       ��	o=�{Y�A�*�

summaries/lossT`B
}
summaries/histogram_loss*a	    �
L@    �
L@      �?!    �
L@) �2e��@2��`��K@���cN@�������:              �?        �|a��       ��	�'=�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��q[@   ��q[@      �?!   ��q[@) ��.߉�@2��iI�Z@~
�i�]@�������:              �?        ��j��       ��	E=�{Y�A�*�

summaries/loss�O�B
}
summaries/histogram_loss*a	   ���P@   ���P@      �?!   ���P@) �%���@2���cN@Π54�P@�������:              �?        �l��       ��	�^=�{Y�A�*�

summaries/loss�~�B
}
summaries/histogram_loss*a	   `�/P@   `�/P@      �?!   `�/P@)@�Ǩ1`�@2���cN@Π54�P@�������:              �?        E���       ��	Oy=�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    P�P@    P�P@      �?!    P�P@)@@]�yn�@2���cN@Π54�P@�������:              �?        }|@q�       ��	:�=�{Y�A�*�

summaries/loss&��B
}
summaries/histogram_loss*a	   ��U@   ��U@      �?!   ��U@) i�Rh�@2��X�9T@
6@�F?V@�������:              �?        6�       ��	��=�{Y�A�*�

summaries/loss0A�B
}
summaries/histogram_loss*a	    &�Q@    &�Q@      �?!    &�Q@) @Zvó@2Π54�P@�0n9�bR@�������:              �?        (�G��       ��	��=�{Y�A�*�

summaries/lossA��B
}
summaries/histogram_loss*a	    ��\@    ��\@      �?!    ��\@) sGō�@2��iI�Z@~
�i�]@�������:              �?        ��'¥       ��	��=�{Y�A�*�

summaries/loss�s�B
}
summaries/histogram_loss*a	   �|�S@   �|�S@      �?!   �|�S@) �KԸ@2�0n9�bR@��X�9T@�������:              �?        TBx�       ��	n�=�{Y�A�*�

summaries/loss��}B
}
summaries/histogram_loss*a	   ఴO@   ఴO@      �?!   ఴO@) ���j�@2���cN@Π54�P@�������:              �?        ���       ��	'>�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ߽[@    ߽[@      �?!    ߽[@) B���@2��iI�Z@~
�i�]@�������:              �?        ���8�       ��	�+>�{Y�A�*�

summaries/lossM�B
}
summaries/histogram_loss*a	    ��S@    ��S@      �?!    ��S@) @�D4ȸ@2�0n9�bR@��X�9T@�������:              �?        Re�n�       ��	�E>�{Y�A�*�

summaries/loss@�wB
}
summaries/histogram_loss*a	    (�N@    (�N@      �?!    (�N@)  ��}�@2���cN@Π54�P@�������:              �?        �a�       ��	_>�{Y�A�*�

summaries/loss�*�B
}
summaries/histogram_loss*a	   �XeQ@   �XeQ@      �?!   �XeQ@)@��D��@2Π54�P@�0n9�bR@�������:              �?        �i��       ��	�w>�{Y�A�*�

summaries/loss1T�B
}
summaries/histogram_loss*a	    �
S@    �
S@      �?!    �
S@)@Xx��@2�0n9�bR@��X�9T@�������:              �?        ]
<�       ��	C�>�{Y�A�*�

summaries/losso~qB
}
summaries/histogram_loss*a	   ��/N@   ��/N@      �?!   ��/N@) ��m�y�@2��`��K@���cN@�������:              �?        K�C�       ��	"�>�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   @�}U@   @�}U@      �?!   @�}U@) ��Qݼ@2��X�9T@
6@�F?V@�������:              �?        ��|��       ��	�>�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �[@    �[@      �?!    �[@)  �!��@2��iI�Z@~
�i�]@�������:              �?        {�ꍥ       ��	��>�{Y�A�*�

summaries/lossV+�B
}
summaries/histogram_loss*a	   �j�Q@   �j�Q@      �?!   �j�Q@) 9����@2Π54�P@�0n9�bR@�������:              �?        v�ĥ       ��	+�>�{Y�A�*�

summaries/loss�oB
}
summaries/histogram_loss*a	    ��M@    ��M@      �?!    ��M@) �	(�@2��`��K@���cN@�������:              �?        *�Zg�       ��	�?�{Y�A�*�

summaries/loss�%�B
}
summaries/histogram_loss*a	   ఄS@   ఄS@      �?!   ఄS@)@L�pϷ@2�0n9�bR@��X�9T@�������:              �?        ���ͥ       ��	I,?�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   @R@   @R@      �?!   @R@) ���Fd�@2Π54�P@�0n9�bR@�������:              �?        `��       ��	 E?�{Y�A�*�

summaries/loss�ؚB
}
summaries/histogram_loss*a	   `[S@   `[S@      �?!   `[S@)@z/`ej�@2�0n9�bR@��X�9T@�������:              �?        ���Q�       ��	[^?�{Y�A�*�

summaries/lossL�]B
}
summaries/histogram_loss*a	   ���K@   ���K@      �?!   ���K@) �)&�@2��`��K@���cN@�������:              �?        �����       ��	�x?�{Y�A�*�

summaries/lossx��B
}
summaries/histogram_loss*a	    o5T@    o5T@      �?!    o5T@) b�G��@2�0n9�bR@��X�9T@�������:              �?        _���       ��	q�?�{Y�A�*�

summaries/loss�4B
}
summaries/histogram_loss*a	   ��F@   ��F@      �?!   ��F@) d63cџ@2J23��D@R��'�F@�������:              �?        �x A�       ��	�?�{Y�A�*�

summaries/lossӍB
}
summaries/histogram_loss*a	   �a�Q@   �a�Q@      �?!   �a�Q@) 1ۊ��@2Π54�P@�0n9�bR@�������:              �?        ��@�       ��	��?�{Y�A�*�

summaries/lossM�B
}
summaries/histogram_loss*a	   �� X@   �� X@      �?!   �� X@) ��I�1�@2
6@�F?V@r;`�xX@�������:              �?        ��4��       ��	��?�{Y�A�*�

summaries/loss3��B
}
summaries/histogram_loss*a	   `&�U@   `&�U@      �?!   `&�U@)@
L�@�@2��X�9T@
6@�F?V@�������:              �?        ��x��       ��	'�?�{Y�A�*�

summaries/loss�g�B
}
summaries/histogram_loss*a	   ���R@   ���R@      �?!   ���R@)@ƒ0�b�@2�0n9�bR@��X�9T@�������:              �?        w�j�       ��	�@�{Y�A�*�

summaries/loss�MB
}
summaries/histogram_loss*a	   �#�I@   �#�I@      �?!   �#�I@) b��m��@2t�n̫I@��`��K@�������:              �?        �i��       ��	c*@�{Y�A�*�

summaries/loss$<�B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@) D9�Vַ@2�0n9�bR@��X�9T@�������:              �?        �����       ��	cC@�{Y�A�*�

summaries/loss�jB
}
summaries/histogram_loss*a	   ��VM@   ��VM@      �?!   ��VM@) 6(�@2��`��K@���cN@�������:              �?        �虥       ��	`[@�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @^~P@   @^~P@      �?!   @^~P@) 1��� �@2���cN@Π54�P@�������:              �?        m�I��       ��	�t@�{Y�A�*�

summaries/loss�B�B
}
summaries/histogram_loss*a	   �]�Y@   �]�Y@      �?!   �]�Y@) ������@2r;`�xX@��iI�Z@�������:              �?        ��k2�       ��	G�@�{Y�A�*�

summaries/lossݎ�B
}
summaries/histogram_loss*a	   ��1T@   ��1T@      �?!   ��1T@)@��l@}�@2�0n9�bR@��X�9T@�������:              �?        ����       ��	��@�{Y�A�*�

summaries/loss��KB
}
summaries/histogram_loss*a	   �QwI@   �QwI@      �?!   �QwI@) ��>,D�@2t�n̫I@��`��K@�������:              �?        ��       ��	��@�{Y�A�*�

summaries/loss�ߎB
}
summaries/histogram_loss*a	   @��Q@   @��Q@      �?!   @��Q@) ��M2�@2Π54�P@�0n9�bR@�������:              �?        �}�ʥ       ��	��@�{Y�A�*�

summaries/loss�
�B
}
summaries/histogram_loss*a	   @_�R@   @_�R@      �?!   @_�R@) 	�|G�@2�0n9�bR@��X�9T@�������:              �?        �_K�       ��	��@�{Y�A�*�

summaries/lossx]�B
}
summaries/histogram_loss*a	    ��U@    ��U@      �?!    ��U@) �n�@2��X�9T@
6@�F?V@�������:              �?        )�m�       ��	�A�{Y�A�*�

summaries/loss>ϹB
}
summaries/histogram_loss*a	   ��9W@   ��9W@      �?!   ��9W@)�`*���@2
6@�F?V@r;`�xX@�������:              �?        �s���       ��	)A�{Y�A�*�

summaries/loss	"�B
}
summaries/histogram_loss*a	    AT@    AT@      �?!    AT@)@��
�@2�0n9�bR@��X�9T@�������:              �?        \(*�       ��	CA�{Y�A�*�

summaries/loss�ڍB
}
summaries/histogram_loss*a	   �W�Q@   �W�Q@      �?!   �W�Q@) A	���@2Π54�P@�0n9�bR@�������:              �?        #�,�       ��	h]A�{Y�A�*�

summaries/lossaT�B
}
summaries/histogram_loss*a	    �jW@    �jW@      �?!    �jW@) ��0�"�@2
6@�F?V@r;`�xX@�������:              �?        ɑ㬥       ��	�uA�{Y�A�*�

summaries/loss,'�B
}
summaries/histogram_loss*a	   ��$P@   ��$P@      �?!   ��$P@) � J�@2���cN@Π54�P@�������:              �?        �l�J�       ��	ΎA�{Y�A�*�

summaries/loss�KxB
}
summaries/histogram_loss*a	    	O@    	O@      �?!    	O@) h�h�@2���cN@Π54�P@�������:              �?        EL�^�       ��	��A�{Y�A�*�

summaries/loss�~�B
}
summaries/histogram_loss*a	    ЯS@    ЯS@      �?!    ЯS@)  ��9�@2�0n9�bR@��X�9T@�������:              �?        �9Sѥ       ��	Y�A�{Y�A�*�

summaries/loss婚B
}
summaries/histogram_loss*a	   �<US@   �<US@      �?!   �<US@)@�	6\�@2�0n9�bR@��X�9T@�������:              �?        �!�o�       ��	D�A�{Y�A�*�

summaries/lossR3�B
}
summaries/histogram_loss*a	   @j�P@   @j�P@      �?!   @j�P@) �q�=�@2���cN@Π54�P@�������:              �?        �����       ��	��A�{Y�A�*�

summaries/lossp��B
}
summaries/histogram_loss*a	    n�Y@    n�Y@      �?!    n�Y@)  څ���@2r;`�xX@��iI�Z@�������:              �?        >���       ��	�B�{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @k<Y@   @k<Y@      �?!   @k<Y@)�t�����@2r;`�xX@��iI�Z@�������:              �?        tysS�       ��	�@B�{Y�A�*�

summaries/lossu��B
}
summaries/histogram_loss*a	   ��Q@   ��Q@      �?!   ��Q@)@^9��=�@2Π54�P@�0n9�bR@�������:              �?        "�G<�       ��	�cB�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   `T�Q@   `T�Q@      �?!   `T�Q@)@�`�c��@2Π54�P@�0n9�bR@�������:              �?        //z&�       ��	�B�{Y�A�*�

summaries/lossH�B
}
summaries/histogram_loss*a	    )�O@    )�O@      �?!    )�O@) ��R��@2���cN@Π54�P@�������:              �?        ϟ͖�       ��	ǡB�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �`q[@   �`q[@      �?!   �`q[@) Í���@2��iI�Z@~
�i�]@�������:              �?        S�zO�       ��	s�B�{Y�A�*�

summaries/loss>N�B
}
summaries/histogram_loss*a	   �ǉQ@   �ǉQ@      �?!   �ǉQ@) �u�j9�@2Π54�P@�0n9�bR@�������:              �?        �����       ��	b�B�{Y�A�*�

summaries/loss(H�B
}
summaries/histogram_loss*a	    �P@    �P@      �?!    �P@) ��yY�@2���cN@Π54�P@�������:              �?        ��ږ�       ��	9�B�{Y�A�*�

summaries/loss)kB
}
summaries/histogram_loss*a	    e�O@    e�O@      �?!    e�O@) �)�گ@2���cN@Π54�P@�������:              �?        �\��       ��	�	C�{Y�A�*�

summaries/lossO�B
}
summaries/histogram_loss*a	   �ɠ]@   �ɠ]@      �?!   �ɠ]@) ��͕n�@2~
�i�]@��GL:I`@�������:              �?        E�?�       ��	�#C�{Y�A�*�

summaries/loss;8�B
}
summaries/histogram_loss*a	   `GS@   `GS@      �?!   `GS@)@fw��9�@2�0n9�bR@��X�9T@�������:              �?        9��å       ��	�<C�{Y�A�*�

summaries/loss"j�B
}
summaries/histogram_loss*a	   @DmP@   @DmP@      �?!   @DmP@) !�rݰ@2���cN@Π54�P@�������:              �?        
ĺ(�       ��	VC�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �VP@   �VP@      �?!   �VP@) 1��ѭ�@2���cN@Π54�P@�������:              �?        ���ȥ       ��	�qC�{Y�A�*�

summaries/loss|[�B
}
summaries/histogram_loss*a	   �okR@   �okR@      �?!   �okR@) YF�4�@2�0n9�bR@��X�9T@�������:              �?        �,c8�       ��	��C�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    T�B@    T�B@      �?!    T�B@)  �9Tԕ@2��#G�'A@C\t��B@�������:              �?        ��P��       ��	�C�{Y�A�*�

summaries/lossĴxB
}
summaries/histogram_loss*a	   ��O@   ��O@      �?!   ��O@) l�3�@2���cN@Π54�P@�������:              �?        V9�a�       ��	��C�{Y�A�*�

summaries/lossx�*B
}
summaries/histogram_loss*a	    /WE@    /WE@      �?!    /WE@) �o�v�@2J23��D@R��'�F@�������:              �?        ��Jƥ       ��	'�C�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �R@    �R@      �?!    �R@)  V�ӵ@2�0n9�bR@��X�9T@�������:              �?        ��`x�       ��	��C�{Y�A�*�

summaries/losseT�B
}
summaries/histogram_loss*a	   ��JV@   ��JV@      �?!   ��JV@)@��^�@2
6@�F?V@r;`�xX@�������:              �?        �r=�       ��	oD�{Y�A�*�

summaries/lossԵ�B
}
summaries/histogram_loss*a	   ��6S@   ��6S@      �?!   ��6S@) �]#��@2�0n9�bR@��X�9T@�������:              �?        +��?�       ��	F(D�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��S@   ��S@      �?!   ��S@) nD���@2�0n9�bR@��X�9T@�������:              �?        �e�       ��	_BD�{Y�A�*�

summaries/loss]�B
}
summaries/histogram_loss*a	   �K�U@   �K�U@      �?!   �K�U@)@r���2�@2��X�9T@
6@�F?V@�������:              �?        GYRK�       ��	�[D�{Y�A�*�

summaries/loss�݋B
}
summaries/histogram_loss*a	   ��{Q@   ��{Q@      �?!   ��{Q@) �����@2Π54�P@�0n9�bR@�������:              �?        `ܿ��       ��	lxD�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���X@   ���X@      �?!   ���X@) O����@2r;`�xX@��iI�Z@�������:              �?        �;� �       ��	��D�{Y�A�*�

summaries/lossq:B
}
summaries/histogram_loss*a	   `!NG@   `!NG@      �?!   `!NG@) �ּ��@2R��'�F@t�n̫I@�������:              �?        �v�Х       ��	v�D�{Y�A�*�

summaries/loss�t�B
}
summaries/histogram_loss*a	   `�nS@   `�nS@      �?!   `�nS@)@v�3���@2�0n9�bR@��X�9T@�������:              �?        ��Y�       ��	;�D�{Y�A�*�

summaries/lossB��B
}
summaries/histogram_loss*a	   @��R@   @��R@      �?!   @��R@) A�Rk�@2�0n9�bR@��X�9T@�������:              �?        .|�Х       ��	��D�{Y�A�*�

summaries/loss��kB
}
summaries/histogram_loss*a	   ��|M@   ��|M@      �?!   ��|M@)���(9,�@2��`��K@���cN@�������:              �?        �T:�       ��	��D�{Y�A�*�

summaries/loss:�B
}
summaries/histogram_loss*a	   @�O@   @�O@      �?!   @�O@)������@2���cN@Π54�P@�������:              �?        ��{�       ��	#E�{Y�A�*�

summaries/loss�m�B
}
summaries/histogram_loss*a	   ���X@   ���X@      �?!   ���X@)��F��9�@2r;`�xX@��iI�Z@�������:              �?        iJo"�       ��	-E�{Y�A�*�

summaries/loss*C
}
summaries/histogram_loss*a	   @C`@   @C`@      �?!   @C`@) ��;#��@2~
�i�]@��GL:I`@�������:              �?        4�J��       ��	5FE�{Y�A�*�

summaries/loss5EbB
}
summaries/histogram_loss*a	   ��HL@   ��HL@      �?!   ��HL@) �3����@2��`��K@���cN@�������:              �?        ��0��       ��	c_E�{Y�A�*�

summaries/loss��;B
}
summaries/histogram_loss*a	   ��xG@   ��xG@      �?!   ��xG@) �3&7�@2R��'�F@t�n̫I@�������:              �?        �����       ��	>xE�{Y�A�*�

summaries/loss9�B
}
summaries/histogram_loss*a	    �C@    �C@      �?!    �C@)@,;�!\�@2C\t��B@J23��D@�������:              �?        Q���       ��	!�E�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���X@   ���X@      �?!   ���X@) �7��(�@2r;`�xX@��iI�Z@�������:              �?        ��+��       ��	��E�{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   ��hZ@   ��hZ@      �?!   ��hZ@) �K�H��@2r;`�xX@��iI�Z@�������:              �?        �3���       ��	m�E�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @ٚZ@   @ٚZ@      �?!   @ٚZ@)���X��@2r;`�xX@��iI�Z@�������:              �?        [9y!�       ��	3�E�{Y�A�*�

summaries/loss0 �B
}
summaries/histogram_loss*a	    @Q@    @Q@      �?!    @Q@) @���@2Π54�P@�0n9�bR@�������:              �?        �#g�       ��	D�E�{Y�A�*�

summaries/loss:ʵB
}
summaries/histogram_loss*a	   @G�V@   @G�V@      �?!   @G�V@)��r��"�@2
6@�F?V@r;`�xX@�������:              �?        �����       ��	wF�{Y�A�*�

summaries/lossd��B
}
summaries/histogram_loss*a	   ��P@   ��P@      �?!   ��P@) �)$N)�@2���cN@Π54�P@�������:              �?        ��b¥       ��	�*F�{Y�A�*�

summaries/lossv �B
}
summaries/histogram_loss*a	   � S@   � S@      �?!   � S@) �#��@2�0n9�bR@��X�9T@�������:              �?        z秄�       ��	(CF�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @�P@   @�P@      �?!   @�P@) ь1Sv�@2Π54�P@�0n9�bR@�������:              �?        �Q��       ��	B]F�{Y�A�*�

summaries/loss��C
}
summaries/histogram_loss*a	   �{a@   �{a@      �?!   �{a@)@2JOF�@2��GL:I`@߱�&�a@�������:              �?        ��>��       ��	BwF�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    єS@    єS@      �?!    єS@)@T}����@2�0n9�bR@��X�9T@�������:              �?        ^���       ��	��F�{Y�A�*�

summaries/loss�zB
}
summaries/histogram_loss*a	   @b^O@   @b^O@      �?!   @b^O@)��e����@2���cN@Π54�P@�������:              �?        ��0z�       ��	�F�{Y�A�*�

summaries/loss��dB
}
summaries/histogram_loss*a	   �]�L@   �]�L@      �?!   �]�L@) 2Qy��@2��`��K@���cN@�������:              �?        QN7ܥ       ��	��F�{Y�A�*�

summaries/loss�N�B
}
summaries/histogram_loss*a	   ��)Q@   ��)Q@      �?!   ��)Q@) ��Ki�@2Π54�P@�0n9�bR@�������:              �?        �����       ��	'�F�{Y�A�*�

summaries/loss  �B
}
summaries/histogram_loss*a	      Q@      Q@      �?!      Q@)     �@2Π54�P@�0n9�bR@�������:              �?        ���ͥ       ��	M�F�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��^R@   ��^R@      �?!   ��^R@)@���@2Π54�P@�0n9�bR@�������:              �?        �m��       ��	�G�{Y�A�*�

summaries/loss�{B
}
summaries/histogram_loss*a	    b{O@    b{O@      �?!    b{O@)  �����@2���cN@Π54�P@�������:              �?        �� ץ       ��	�)G�{Y�A�*�

summaries/loss�jB
}
summaries/histogram_loss*a	   �uBM@   �uBM@      �?!   �uBM@) r_����@2��`��K@���cN@�������:              �?        �'�d�       ��	xEG�{Y�A�*�

summaries/loss��jB
}
summaries/histogram_loss*a	   �yXM@   �yXM@      �?!   �yXM@) R�P�@2��`��K@���cN@�������:              �?         {{=�       ��	c^G�{Y�A�*�

summaries/loss[�mB
}
summaries/histogram_loss*a	   `�M@   `�M@      �?!   `�M@) K��Y��@2��`��K@���cN@�������:              �?        *{�       ��	�wG�{Y�A�*�

summaries/loss�0OB
}
summaries/histogram_loss*a	   @�I@   @�I@      �?!   @�I@)������@2t�n̫I@��`��K@�������:              �?        ��å       ��	�G�{Y�A�*�

summaries/losss3_B
}
summaries/histogram_loss*a	   `n�K@   `n�K@      �?!   `n�K@) � �US�@2��`��K@���cN@�������:              �?        ����       ��	e�G�{Y�A�*�

summaries/lossT�%B
}
summaries/histogram_loss*a	   �J�D@   �J�D@      �?!   �J�D@) �j��@2C\t��B@J23��D@�������:              �?        ����       ��	��G�{Y�A�*�

summaries/loss涐B
}
summaries/histogram_loss*a	   ��R@   ��R@      �?!   ��R@) ��Z�s�@2Π54�P@�0n9�bR@�������:              �?        �-�}�       ��	�G�{Y�A�*�

summaries/lossE9B
}
summaries/histogram_loss*a	   ��(G@   ��(G@      �?!   ��(G@)�� � @2R��'�F@t�n̫I@�������:              �?        
����       ��	��G�{Y�A�*�

summaries/lossJ0�B
}
summaries/histogram_loss*a	   @	�U@   @	�U@      �?!   @	�U@) Y�lk��@2��X�9T@
6@�F?V@�������:              �?        ��h�       ��	8H�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   �!�O@   �!�O@      �?!   �!�O@) �D��@2���cN@Π54�P@�������:              �?         �ld�       ��	V+H�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �s�T@   �s�T@      �?!   �s�T@) đ9��@2��X�9T@
6@�F?V@�������:              �?        �icP�       ��	�CH�{Y�A�*�

summaries/loss�VB
}
summaries/histogram_loss*a	   ���J@   ���J@      �?!   ���J@) ���Ea�@2t�n̫I@��`��K@�������:              �?        �ѩ_�       ��	�^H�{Y�A�*�

summaries/loss挸B
}
summaries/histogram_loss*a	   ��W@   ��W@      �?!   ��W@)�ԋ[��@2
6@�F?V@r;`�xX@�������:              �?        <�v̥       ��	�wH�{Y�A�*�

summaries/lossL��B
}
summaries/histogram_loss*a	   ��sT@   ��sT@      �?!   ��sT@) �y��$�@2��X�9T@
6@�F?V@�������:              �?        ^�G�       ��	�H�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ;�Y@    ;�Y@      �?!    ;�Y@) ��j��@2r;`�xX@��iI�Z@�������:              �?        e-�       ��	)�H�{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   ��HZ@   ��HZ@      �?!   ��HZ@) �gJ���@2r;`�xX@��iI�Z@�������:              �?        �<̲�       ��	��H�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �>@X@   �>@X@      �?!   �>@X@) ��K�`�@2
6@�F?V@r;`�xX@�������:              �?        #��       ��	��H�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �PU@    �PU@      �?!    �PU@)@��kf�@2��X�9T@
6@�F?V@�������:              �?        ���]�       ��	hI�{Y�A�*�

summaries/lossD�B
}
summaries/histogram_loss*a	   ��@@   ��@@      �?!   ��@@) �T.}/�@2�*ǣ0?@��#G�'A@�������:              �?        �
�       ��	� I�{Y�A�*�

summaries/loss�7�B
}
summaries/histogram_loss*a	    ��X@    ��X@      �?!    ��X@) ��a�@2r;`�xX@��iI�Z@�������:              �?        �w���       ��	9I�{Y�A�*�

summaries/loss�T�B
}
summaries/histogram_loss*a	   ��*R@   ��*R@      �?!   ��*R@) �T�A��@2Π54�P@�0n9�bR@�������:              �?        |��r�       ��	�SI�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �v�U@   �v�U@      �?!   �v�U@)@~���@2��X�9T@
6@�F?V@�������:              �?        8��       ��	LmI�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    �OR@    �OR@      �?!    �OR@)  ����@2Π54�P@�0n9�bR@�������:              �?        �BYڥ       ��	�I�{Y�A�*�

summaries/lossd��B
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@) �5_Wֳ@2Π54�P@�0n9�bR@�������:              �?        0�J�       ��	#�I�{Y�A�*�

summaries/lossk�B
}
summaries/histogram_loss*a	   `�=T@   `�=T@      �?!   `�=T@)@�����@2��X�9T@
6@�F?V@�������:              �?        ��=v�       ��	ǹI�{Y�A�*�

summaries/lossf�cB
}
summaries/histogram_loss*a	   ��sL@   ��sL@      �?!   ��sL@)��\IL�@2��`��K@���cN@�������:              �?        7���       ��	1�I�{Y�A�*�

summaries/loss�=�B
}
summaries/histogram_loss*a	   �'X@   �'X@      �?!   �'X@) �n�;�@2
6@�F?V@r;`�xX@�������:              �?        ;.���       ��	5�I�{Y�A�*�

summaries/loss�~B
}
summaries/histogram_loss*a	   `|�O@   `|�O@      �?!   `|�O@) i�;1��@2���cN@Π54�P@�������:              �?        ةL�       ��	J�{Y�A�*�

summaries/loss�OB
}
summaries/histogram_loss*a	   ���C@   ���C@      �?!   ���C@)@H��*�@2C\t��B@J23��D@�������:              �?        ��`��       ��	`#J�{Y�A�*�

summaries/loss0�?B
}
summaries/histogram_loss*a	    ��G@    ��G@      �?!    ��G@)  U0��@2R��'�F@t�n̫I@�������:              �?        K_s8�       ��	<J�{Y�A�*�

summaries/loss]_�B
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@)@򉓏ſ@2
6@�F?V@r;`�xX@�������:              �?        �q���       ��	CXJ�{Y�A�*�

summaries/loss�7hB
}
summaries/histogram_loss*a	   @�M@   @�M@      �?!   @�M@)�<[�T�@2��`��K@���cN@�������:              �?        0B.��       ��	�rJ�{Y�A�*�

summaries/loss�+�B
}
summaries/histogram_loss*a	   �t�Q@   �t�Q@      �?!   �t�Q@)@�qr�@2Π54�P@�0n9�bR@�������:              �?        H���       ��	*�J�{Y�A�*�

summaries/losst	�B
}
summaries/histogram_loss*a	   �.�Y@   �.�Y@      �?!   �.�Y@) �+'�S�@2r;`�xX@��iI�Z@�������:              �?        ���?�       ��	��J�{Y�A�*�

summaries/loss9�B
}
summaries/histogram_loss*a	    P@    P@      �?!    P@)@,ˁ�@2���cN@Π54�P@�������:              �?        @�0E�       ��	w�J�{Y�A�*�

summaries/lossxuB
}
summaries/histogram_loss*a	    ��N@    ��N@      �?!    ��N@) �b-V�@2���cN@Π54�P@�������:              �?        m�&;�       ��	
�J�{Y�A�*�

summaries/loss�}B
}
summaries/histogram_loss*a	   ���O@   ���O@      �?!   ���O@)� B��`�@2���cN@Π54�P@�������:              �?        /���       ��	��J�{Y�A�*�

summaries/lossi�5B
}
summaries/histogram_loss*a	    ��F@    ��F@      �?!    ��F@) ���@�@2J23��D@R��'�F@�������:              �?        ��y��       ��	�	K�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   `��C@   `��C@      �?!   `��C@)@6��h��@2C\t��B@J23��D@�������:              �?        �f(e�       ��	�"K�{Y�A�*�

summaries/lossd�B
}
summaries/histogram_loss*a	   ��`Q@   ��`Q@      �?!   ��`Q@) �C��߲@2Π54�P@�0n9�bR@�������:              �?        �Y��       ��	=K�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �u�Q@   �u�Q@      �?!   �u�Q@)@�H��o�@2Π54�P@�0n9�bR@�������:              �?        �
��       ��	mYK�{Y�A�*�

summaries/loss��hB
}
summaries/histogram_loss*a	   `5M@   `5M@      �?!   `5M@) �9g�@2��`��K@���cN@�������:              �?        6�C�       ��	?sK�{Y�A�*�

summaries/loss	�B
}
summaries/histogram_loss*a	   �!U@   �!U@      �?!   �!U@)@�� ���@2��X�9T@
6@�F?V@�������:              �?        aw]s�       ��	&�K�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   ��S@   ��S@      �?!   ��S@)@��'��@2�0n9�bR@��X�9T@�������:              �?        [����       ��	�K�{Y�A�*�

summaries/loss<$�B
}
summaries/histogram_loss*a	   ��DS@   ��DS@      �?!   ��DS@) �;T�3�@2�0n9�bR@��X�9T@�������:              �?        R�0�       ��	ۿK�{Y�A�*�

summaries/loss!WB
}
summaries/histogram_loss*a	    d�J@    d�J@      �?!    d�J@) H;=v��@2t�n̫I@��`��K@�������:              �?        ��`>�       ��	w�K�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@) �t�}�@2�0n9�bR@��X�9T@�������:              �?        ˝�(�       ��	4�K�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @1\@   @1\@      �?!   @1\@)�̏�0��@2��iI�Z@~
�i�]@�������:              �?        _���       ��	L�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   @�^Q@   @�^Q@      �?!   @�^Q@) �[i۲@2Π54�P@�0n9�bR@�������:              �?        z{�       ��	�$L�{Y�A�*�

summaries/loss5��B
}
summaries/histogram_loss*a	   ��tQ@   ��tQ@      �?!   ��tQ@)@>׊4�@2Π54�P@�0n9�bR@�������:              �?        aJ�1�       ��	�<L�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �?6Q@   �?6Q@      �?!   �?6Q@) Ng���@2Π54�P@�0n9�bR@�������:              �?        �z^�       ��	.UL�{Y�A�*�

summaries/loss�*B
}
summaries/histogram_loss*a	   ��AE@   ��AE@      �?!   ��AE@) A�S:>�@2J23��D@R��'�F@�������:              �?        f�s��       ��	�oL�{Y�A�*�

summaries/loss N�B
}
summaries/histogram_loss*a	    ��S@    ��S@      �?!    ��S@)   �y�@2�0n9�bR@��X�9T@�������:              �?        ?Ig��       ��	/�L�{Y�A�*�

summaries/loss��PB
}
summaries/histogram_loss*a	   @�J@   @�J@      �?!   @�J@)�P�0{K�@2t�n̫I@��`��K@�������:              �?        y�� �       ��	�L�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���R@   ���R@      �?!   ���R@) $N�"��@2�0n9�bR@��X�9T@�������:              �?        �/q�       ��	�L�{Y�A�*�

summaries/loss5��B
}
summaries/histogram_loss*a	   ��X@   ��X@      �?!   ��X@) �b�@2
6@�F?V@r;`�xX@�������:              �?        ��́�       ��	A�L�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    |Z@    |Z@      �?!    |Z@) xO�:F�@2r;`�xX@��iI�Z@�������:              �?        S֑C�       ��	��L�{Y�A�*�

summaries/loss䎚B
}
summaries/histogram_loss*a	   ��QS@   ��QS@      �?!   ��QS@) �n�T�@2�0n9�bR@��X�9T@�������:              �?        <S�?�       ��	�M�{Y�A�*�

summaries/loss&�B
}
summaries/histogram_loss*a	   ��P@   ��P@      �?!   ��P@) Li�	�@2���cN@Π54�P@�������:              �?        �p	�       ��	TM�{Y�A�*�

summaries/lossb4B
}
summaries/histogram_loss*a	   @�B@   @�B@      �?!   @�B@) a�=�N�@2��#G�'A@C\t��B@�������:              �?        P}�U�       ��	�;M�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �v�P@   �v�P@      �?!   �v�P@) Y���@2Π54�P@�0n9�bR@�������:              �?        �n�v�       ��	vTM�{Y�A�*�

summaries/loss�G�B
}
summaries/histogram_loss*a	   ��hS@   ��hS@      �?!   ��hS@) ��J��@2�0n9�bR@��X�9T@�������:              �?        ����       ��	�nM�{Y�A�*�

summaries/loss�.�B
}
summaries/histogram_loss*a	   ��eU@   ��eU@      �?!   ��eU@) �K?۝�@2��X�9T@
6@�F?V@�������:              �?        �nX�       ��	L�M�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@) d��ݳ@2Π54�P@�0n9�bR@�������:              �?        ��7 �       ��	�M�{Y�A�*�

summaries/loss:�B
}
summaries/histogram_loss*a	   @��Q@   @��Q@      �?!   @��Q@) I��XԳ@2Π54�P@�0n9�bR@�������:              �?        ׮e�       ��	úM�{Y�A�*�

summaries/loss�kB
}
summaries/histogram_loss*a	   ��rM@   ��rM@      �?!   ��rM@) ��"�@2��`��K@���cN@�������:              �?        Ox�       ��	R�M�{Y�A�*�

summaries/lossl$�B
}
summaries/histogram_loss*a	   ���X@   ���X@      �?!   ���X@) �ч�+�@2r;`�xX@��iI�Z@�������:              �?        ỏ�       ��	g�M�{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   @��S@   @��S@      �?!   @��S@) �x�Ÿ@2�0n9�bR@��X�9T@�������:              �?        �E�       ��	�	N�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��@\@   ��@\@      �?!   ��@\@) ����@2��iI�Z@~
�i�]@�������:              �?        T�*�       ��	"N�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   �|Y@   �|Y@      �?!   �|Y@) 'n��K�@2r;`�xX@��iI�Z@�������:              �?        cgix�       ��	�:N�{Y�A�*�

summaries/loss�$�B
}
summaries/histogram_loss*a	    �$T@    �$T@      �?!    �$T@) @ʺ�[�@2�0n9�bR@��X�9T@�������:              �?        :@�M�       ��	zTN�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �!Y@   �!Y@      �?!   �!Y@) L��@2r;`�xX@��iI�Z@�������:              �?        ��4�       ��	@mN�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��wQ@   ��wQ@      �?!   ��wQ@) $��:�@2Π54�P@�0n9�bR@�������:              �?        �(5�       ��		�N�{Y�A�*�

summaries/loss8@�B
}
summaries/histogram_loss*a	    �P@    �P@      �?!    �P@) �2ݱ@2Π54�P@�0n9�bR@�������:              �?        s찬�       ��	ܟN�{Y�A�*�

summaries/loss�ZKB
}
summaries/histogram_loss*a	   `PkI@   `PkI@      �?!   `PkI@) �Kx1�@2t�n̫I@��`��K@�������:              �?        �i�M�       ��	�N�{Y�A�*�

summaries/lossP8�B
}
summaries/histogram_loss*a	    
�^@    
�^@      �?!    
�^@)  c�l�@2~
�i�]@��GL:I`@�������:              �?        ���ݥ       ��	��N�{Y�A�*�

summaries/loss�D�B
}
summaries/histogram_loss*a	   ��(Y@   ��(Y@      �?!   ��(Y@) 2Ǥ���@2r;`�xX@��iI�Z@�������:              �?        $��@�       ��	��N�{Y�A�*�

summaries/loss�ԗB
}
summaries/histogram_loss*a	   @��R@   @��R@      �?!   @��R@) ш/��@2�0n9�bR@��X�9T@�������:              �?        �骥       ��	DO�{Y�A�*�

summaries/loss촓B
}
summaries/histogram_loss*a	   ��vR@   ��vR@      �?!   ��vR@) d.�QN�@2�0n9�bR@��X�9T@�������:              �?        �(X�       ��	�3O�{Y�A�*�

summaries/loss)��A
}
summaries/histogram_loss*a	    Ř9@    Ř9@      �?!    Ř9@) RnW�y�@2�i*`�n7@�6��9@�������:              �?        ��tO�       ��	�OO�{Y�A�*�

summaries/loss�{oB
}
summaries/histogram_loss*a	   `{�M@   `{�M@      �?!   `{�M@) ����@2��`��K@���cN@�������:              �?        J��       ��	wiO�{Y�A�*�

summaries/loss0%�B
}
summaries/histogram_loss*a	    �DX@    �DX@      �?!    �DX@)  �D�g�@2
6@�F?V@r;`�xX@�������:              �?        �_�#�       ��	+�O�{Y�A�*�

summaries/loss�n;B
}
summaries/histogram_loss*a	   ��mG@   ��mG@      �?!   ��mG@)��m�T'�@2R��'�F@t�n̫I@�������:              �?        �w��       ��	��O�{Y�A�*�

summaries/loss�(�B
}
summaries/histogram_loss*a	   ��V@   ��V@      �?!   ��V@) �\I�3�@2
6@�F?V@r;`�xX@�������:              �?        ��^ߥ       ��	��O�{Y�A�*�

summaries/loss�p�B
}
summaries/histogram_loss*a	    �[@    �[@      �?!    �[@) Hz��`�@2��iI�Z@~
�i�]@�������:              �?        �*́�       ��	��O�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@) �3�歳@2Π54�P@�0n9�bR@�������:              �?        ;s��       ��	F�O�{Y�A�*�

summaries/loss�aB
}
summaries/histogram_loss*a	   `x#L@   `x#L@      �?!   `x#L@) ��9��@2��`��K@���cN@�������:              �?        ��uN�       ��	�P�{Y�A�*�

summaries/loss�ЎB
}
summaries/histogram_loss*a	   ��Q@   ��Q@      �?!   ��Q@)@$�8�@2Π54�P@�0n9�bR@�������:              �?        �(X��       ��	 P�{Y�A�*�

summaries/loss�ZsB
}
summaries/histogram_loss*a	   �YkN@   �YkN@      �?!   �YkN@)��/i��@2���cN@Π54�P@�������:              �?        <C7�       ��	�5P�{Y�A�*�

summaries/loss%��B
}
summaries/histogram_loss*a	   �d6Q@   �d6Q@      �?!   �d6Q@)@ְ�N��@2Π54�P@�0n9�bR@�������:              �?        $�{ȥ       ��	DNP�{Y�A�*�

summaries/loss��/B
}
summaries/histogram_loss*a	   ���E@   ���E@      �?!   ���E@)@���}#�@2J23��D@R��'�F@�������:              �?        )�yz�       ��	^gP�{Y�A�*�

summaries/loss^��B
}
summaries/histogram_loss*a	   �?T@   �?T@      �?!   �?T@) ��̕��@2��X�9T@
6@�F?V@�������:              �?        >��       ��	�P�{Y�A�*�

summaries/lossx��B
}
summaries/histogram_loss*a	    �rW@    �rW@      �?!    �rW@) x�.�@2
6@�F?V@r;`�xX@�������:              �?        �^�ʥ       ��	g�P�{Y�A�*�

summaries/loss�T�B
}
summaries/histogram_loss*a	   ���S@   ���S@      �?!   ���S@) QC��ݷ@2�0n9�bR@��X�9T@�������:              �?        �hX��       ��	��P�{Y�A�*�

summaries/loss�zpB
}
summaries/histogram_loss*a	   �ZN@   �ZN@      �?!   �ZN@) 4��<�@2��`��K@���cN@�������:              �?        :.w��       ��	-�P�{Y�A�*�

summaries/loss~�B
}
summaries/histogram_loss*a	   �/�P@   �/�P@      �?!   �/�P@) ��#T>�@2���cN@Π54�P@�������:              �?        B���       ��	��P�{Y�A�*�

summaries/loss&�B
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) iS��@2��X�9T@
6@�F?V@�������:              �?        �c�ߥ       ��	�Q�{Y�A�*�

summaries/loss��tB
}
summaries/histogram_loss*a	   �ёN@   �ёN@      �?!   �ёN@)��:�4�@2���cN@Π54�P@�������:              �?        KM[�       ��	2Q�{Y�A�*�

summaries/loss�wB
}
summaries/histogram_loss*a	    ��N@    ��N@      �?!    ��N@)  ���@2���cN@Π54�P@�������:              �?        ~4��       ��	e6Q�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �P"T@   �P"T@      �?!   �P"T@)@�P�V�@2�0n9�bR@��X�9T@�������:              �?        ���       ��	�QQ�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    ��Q@    ��Q@      �?!    ��Q@)  �u�ճ@2Π54�P@�0n9�bR@�������:              �?        ���       ��	�iQ�{Y�A�*�

summaries/loss]�B
}
summaries/histogram_loss*a	    ��P@    ��P@      �?!    ��P@)@K���@2Π54�P@�0n9�bR@�������:              �?        &'5�       ��	�Q�{Y�A�*�

summaries/loss�aPB
}
summaries/histogram_loss*a	   �=J@   �=J@      �?!   �=J@) 2���3�@2t�n̫I@��`��K@�������:              �?        ډE��       ��	R�Q�{Y�A�*�

summaries/loss�!�B
}
summaries/histogram_loss*a	   �7�P@   �7�P@      �?!   �7�P@) �����@2���cN@Π54�P@�������:              �?        ��Qs�       ��	��Q�{Y�A�*�

summaries/loss�іB
}
summaries/histogram_loss*a	    2�R@    2�R@      �?!    2�R@) @�6�@2�0n9�bR@��X�9T@�������:              �?        Y�o��       ��	��Q�{Y�A�*�

summaries/loss�B
}
summaries/histogram_loss*a	   �rBC@   �rBC@      �?!   �rBC@)@����.�@2C\t��B@J23��D@�������:              �?        ��H��       ��	 �Q�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ��>T@   ��>T@      �?!   ��>T@) ��#r��@2��X�9T@
6@�F?V@�������:              �?        t��       ��	R�{Y�A�*�

summaries/lossx	�B
}
summaries/histogram_loss*a	    /AQ@    /AQ@      �?!    /AQ@) jn���@2Π54�P@�0n9�bR@�������:              �?        C�ְ�       ��	�R�{Y�A�*�

summaries/lossE��B
}
summaries/histogram_loss*a	   ��VZ@   ��VZ@      �?!   ��VZ@) �E_��@2r;`�xX@��iI�Z@�������:              �?        I�ե       ��	�6R�{Y�A�*�

summaries/loss�ާB
}
summaries/histogram_loss*a	   ���T@   ���T@      �?!   ���T@) dA�	��@2��X�9T@
6@�F?V@�������:              �?        ��0G�       ��	fNR�{Y�A�*�

summaries/loss�jB
}
summaries/histogram_loss*a	    AVM@    AVM@      �?!    AVM@) �M>�@2��`��K@���cN@�������:              �?        ��H�       ��	�hR�{Y�A�*�

summaries/lossg��B
}
summaries/histogram_loss*a	   ��S@   ��S@      �?!   ��S@)@\��@2�0n9�bR@��X�9T@�������:              �?        �
{]�       ��	ǁR�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �[V@   �[V@      �?!   �[V@) !��|F�@2��X�9T@
6@�F?V@�������:              �?        h#O�       ��	șR�{Y�A�*�

summaries/loss�{)B
}
summaries/histogram_loss*a	    {/E@    {/E@      �?!    {/E@) �Q�/�@2J23��D@R��'�F@�������:              �?        ���r�       ��	ȲR�{Y�A�*�

summaries/loss�PuB
}
summaries/histogram_loss*a	   ��N@   ��N@      �?!   ��N@)�� :gb�@2���cN@Π54�P@�������:              �?        �"��       ��	��R�{Y�A�*�

summaries/lossխ^B
}
summaries/histogram_loss*a	   ���K@   ���K@      �?!   ���K@) g�n>6�@2��`��K@���cN@�������:              �?        ��V��       ��	h�R�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �UW@    �UW@      �?!    �UW@)  HA�@2
6@�F?V@r;`�xX@�������:              �?        GS�       ��	�S�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ���Q@   ���Q@      �?!   ���Q@)@jVz��@2Π54�P@�0n9�bR@�������:              �?        r�`��       ��	&S�{Y�A�*�

summaries/lossb,uB
}
summaries/histogram_loss*a	   @��N@   @��N@      �?!   @��N@)���h�Y�@2���cN@Π54�P@�������:              �?        EW��       ��	�3S�{Y�A�*�

summaries/loss�(B
}
summaries/histogram_loss*a	   `1E@   `1E@      �?!   `1E@)@^?b��@2J23��D@R��'�F@�������:              �?        8���       ��	/MS�{Y�A�*�

summaries/loss��zB
}
summaries/histogram_loss*a	   �2WO@   �2WO@      �?!   �2WO@)�|D�߱�@2���cN@Π54�P@�������:              �?        ���       ��	�gS�{Y�A�*�

summaries/lossa�QB
}
summaries/histogram_loss*a	    ?J@    ?J@      �?!    ?J@) ���@2t�n̫I@��`��K@�������:              �?        ă�U�       ��	
�S�{Y�A�*�

summaries/lossZ��B
}
summaries/histogram_loss*a	   @�X@   @�X@      �?!   @�X@)��� QK�@2r;`�xX@��iI�Z@�������:              �?        ��ϛ�       ��	�S�{Y�A�*�

summaries/loss"�B
}
summaries/histogram_loss*a	   @��O@   @��O@      �?!   @��O@)����@2���cN@Π54�P@�������:              �?        հ�Y�       ��	��S�{Y�A�*�

summaries/loss�5?B
}
summaries/histogram_loss*a	   `��G@   `��G@      �?!   `��G@) e��%ڡ@2R��'�F@t�n̫I@�������:              �?        �8�u�       ��	��S�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @�UR@   @�UR@      �?!   @�UR@) �	�y�@2Π54�P@�0n9�bR@�������:              �?        /vl�       ��	e�S�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	    3�P@    3�P@      �?!    3�P@) ��L�@2���cN@Π54�P@�������:              �?        ���9�       ��	��S�{Y�A�*�

summaries/lossP��B
}
summaries/histogram_loss*a	    jP@    jP@      �?!    jP@) @��(�@2���cN@Π54�P@�������:              �?        ޵���       ��	LT�{Y�A�*�

summaries/loss)ܛB
}
summaries/histogram_loss*a	    �{S@    �{S@      �?!    �{S@)@����@2�0n9�bR@��X�9T@�������:              �?        �k�C�       ��	�0T�{Y�A�*�

summaries/lossJ�B
}
summaries/histogram_loss*a	   @�V@   @�V@      �?!   @�V@) Y!�o��@2��X�9T@
6@�F?V@�������:              �?        +�I��       ��	VIT�{Y�A�*�

summaries/loss�7{B
}
summaries/histogram_loss*a	   @�fO@   @�fO@      �?!   @�fO@)�聋�Ю@2���cN@Π54�P@�������:              �?        ?JO�       ��	bT�{Y�A�*�

summaries/loss�~B
}
summaries/histogram_loss*a	    ��O@    ��O@      �?!    ��O@) \bt��@2���cN@Π54�P@�������:              �?        ~�z�       ��	�zT�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	   ���U@   ���U@      �?!   ���U@) A�V�t�@2��X�9T@
6@�F?V@�������:              �?        Y��       ��	��T�{Y�A�*�

summaries/loss��eB
}
summaries/histogram_loss*a	   �߽L@   �߽L@      �?!   �߽L@) 1��Щ@2��`��K@���cN@�������:              �?        �ή��       ��	u�T�{Y�A�*�

summaries/lossXr�B
}
summaries/histogram_loss*a	    K�P@    K�P@      �?!    K�P@) ���r�@2Π54�P@�0n9�bR@�������:              �?        �vjd�       ��	~�T�{Y�A�*�

summaries/loss[�WB
}
summaries/histogram_loss*a	   `��J@   `��J@      �?!   `��J@) KW;-Ʀ@2t�n̫I@��`��K@�������:              �?        ɩv��       ��	��T�{Y�A�*�

summaries/loss>kB
}
summaries/histogram_loss*a	   ��gM@   ��gM@      �?!   ��gM@) �K]�@2��`��K@���cN@�������:              �?        %><�       ��	<�T�{Y�A�*�

summaries/loss�zQB
}
summaries/histogram_loss*a	    \/J@    \/J@      �?!    \/J@) �H�;m�@2t�n̫I@��`��K@�������:              �?        i/q�       ��	�U�{Y�A�*�

summaries/lossr8�B
}
summaries/histogram_loss*a	   @'U@   @'U@      �?!   @'U@) ������@2��X�9T@
6@�F?V@�������:              �?        �1�       ��	|'U�{Y�A�*�

summaries/losstI�B
}
summaries/histogram_loss*a	   �.iT@   �.iT@      �?!   �.iT@) $ײ�	�@2��X�9T@
6@�F?V@�������:              �?        [/���       ��	�?U�{Y�A�*�

summaries/lossXGcB
}
summaries/histogram_loss*a	    �hL@    �hL@      �?!    �hL@) �=>�8�@2��`��K@���cN@�������:              �?        {ƍ	�       ��	�WU�{Y�A�*�

summaries/loss�ʀB
}
summaries/histogram_loss*a	   �]P@   �]P@      �?!   �]P@) dR6�2�@2���cN@Π54�P@�������:              �?        [iR��       ��	rU�{Y�A�*�

summaries/loss�k�B
}
summaries/histogram_loss*a	   �wmS@   �wmS@      �?!   �wmS@) A[閷@2�0n9�bR@��X�9T@�������:              �?        ��|�       ��	��U�{Y�A�*�

summaries/loss37B
}
summaries/histogram_loss*a	   �a�F@   �a�F@      �?!   �a�F@) ��@c�@2R��'�F@t�n̫I@�������:              �?        ��Z�       ��	�U�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   @�!Q@   @�!Q@      �?!   @�!Q@) ���!X�@2Π54�P@�0n9�bR@�������:              �?        J��       ��	=�U�{Y�A�*�

summaries/loss=m'B
}
summaries/histogram_loss*a	   ���D@   ���D@      �?!   ���D@)@"��_�@2J23��D@R��'�F@�������:              �?        .l�.�       ��	=�U�{Y�A�*�

summaries/loss�QB
}
summaries/histogram_loss*a	   @ ;J@   @ ;J@      �?!   @ ;J@)� �0M��@2t�n̫I@��`��K@�������:              �?        Y^�m�       ��	c�U�{Y�A�*�

summaries/loss'�B
}
summaries/histogram_loss*a	   ��DQ@   ��DQ@      �?!   ��DQ@)@��Յ��@2Π54�P@�0n9�bR@�������:              �?        E��       ��	V�{Y�A�*�

summaries/loss��dB
}
summaries/histogram_loss*a	   �?�L@   �?�L@      �?!   �?�L@)� ~j��@2��`��K@���cN@�������:              �?        %㘉�       ��	�"V�{Y�A�*�

summaries/loss6=�B
}
summaries/histogram_loss*a	   ��GQ@   ��GQ@      �?!   ��GQ@) ٱ6���@2Π54�P@�0n9�bR@�������:              �?        �4��       ��	?;V�{Y�A�*�

summaries/loss�b[B
}
summaries/histogram_loss*a	    PlK@    PlK@      �?!    PlK@)  Ȝ5��@2t�n̫I@��`��K@�������:              �?        '��       ��	&TV�{Y�A�*�

summaries/lossTZB
}
summaries/histogram_loss*a	   �*CK@   �*CK@      �?!   �*CK@) r0��9�@2t�n̫I@��`��K@�������:              �?        �h~�       ��	PnV�{Y�A�*�

summaries/loss�C�A
}
summaries/histogram_loss*a	   �{9@   �{9@      �?!   �{9@)����C��@2�i*`�n7@�6��9@�������:              �?        �ĥ       ��		�V�{Y�A�*�

summaries/lossD�jB
}
summaries/histogram_loss*a	   ��UM@   ��UM@      �?!   ��UM@) Bn��@2��`��K@���cN@�������:              �?        ��x�       ��	+�V�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   ��Y@   ��Y@      �?!   ��Y@) X���@2r;`�xX@��iI�Z@�������:              �?        �N��       ��	��V�{Y�A�*�

summaries/loss�ފA
}
summaries/histogram_loss*a	    �[1@    �[1@      �?!    �[1@) �ն@�r@2�x�a0@�����1@�������:              �?        ��       ��	�V�{Y�A�*�

summaries/lossc#wB
}
summaries/histogram_loss*a	   `l�N@   `l�N@      �?!   `l�N@) 	ǽ�ҭ@2���cN@Π54�P@�������:              �?        ����       ��	��V�{Y�A�*�

summaries/losskL(B
}
summaries/histogram_loss*a	   `�	E@   `�	E@      �?!   `�	E@)@.����@2J23��D@R��'�F@�������:              �?        AB�       ��	�W�{Y�A�*�

summaries/loss���B
}
summaries/histogram_loss*a	    �Y@    �Y@      �?!    �Y@) ������@2r;`�xX@��iI�Z@�������:              �?        y���       ��	�W�{Y�A�*�

summaries/loss�W~B
}
summaries/histogram_loss*a	   ���O@   ���O@      �?!   ���O@) "�@��@2���cN@Π54�P@�������:              �?        i�9��       ��	�8W�{Y�A�*�

summaries/lossY,�B
}
summaries/histogram_loss*a	    �P@    �P@      �?!    �P@)@��+�@2���cN@Π54�P@�������:              �?        ���ߥ       ��	 RW�{Y�A�*�

summaries/loss�`�B
}
summaries/histogram_loss*a	   @,P@   @,P@      �?!   @,P@) ��X�@2���cN@Π54�P@�������:              �?        E��       ��	kW�{Y�A�*�

summaries/loss"y�B
}
summaries/histogram_loss*a	   @$�Z@   @$�Z@      �?!   @$�Z@)�����@2��iI�Z@~
�i�]@�������:              �?        � �J�       ��	�W�{Y�A�*�

summaries/loss��B
}
summaries/histogram_loss*a	   �WR@   �WR@      �?!   �WR@) ��i~��@2Π54�P@�0n9�bR@�������:              �?        �(��       ��	j�W�{Y�A�*�

summaries/loss�ɷB
}
summaries/histogram_loss*a	   @9�V@   @9�V@      �?!   @9�V@)�lZ�C~�@2
6@�F?V@r;`�xX@�������:              �?        ��ʥ       ��	Z�W�{Y�A�*�

summaries/loss�qB
}
summaries/histogram_loss*a	   @�7N@   @�7N@      �?!   @�7N@)�g�刬@2��`��K@���cN@�������:              �?        �����       ��	��W�{Y�A�*�

summaries/loss��KB
}
summaries/histogram_loss*a	   ��uI@   ��uI@      �?!   ��uI@)���_xA�@2t�n̫I@��`��K@�������:              �?        lsֽ�       ��	��W�{Y�A�*�

summaries/lossj4\B
}
summaries/histogram_loss*a	   @��K@   @��K@      �?!   @��K@)�|gD��@2t�n̫I@��`��K@�������:              �?        �����       ��	�	X�{Y�A�*�

summaries/loss�̥B
}
summaries/histogram_loss*a	   @��T@   @��T@      �?!   @��T@) �
H`غ@2��X�9T@
6@�F?V@�������:              �?        aG�7�       ��	"X�{Y�A�*�

summaries/lossoחB
}
summaries/histogram_loss*a	   ���R@   ���R@      �?!   ���R@)@�h����@2�0n9�bR@��X�9T@�������:              �?        �rʄ�       ��	�;X�{Y�A�*�

summaries/loss)�
B
}
summaries/histogram_loss*a	    �^A@    �^A@      �?!    �^A@)@��9�ے@2��#G�'A@C\t��B@�������:              �?        j�"�       ��	&VX�{Y�A�*�

summaries/loss�Q�B
}
summaries/histogram_loss*a	   �=�T@   �=�T@      �?!   �=�T@)@Z�d��@2��X�9T@
6@�F?V@�������:              �?        ��솥       ��	zpX�{Y�A�*�

summaries/lossN�CB
}
summaries/histogram_loss*a	   ��xH@   ��xH@      �?!   ��xH@)������@2R��'�F@t�n̫I@�������:              �?        �QK�       ��	�X�{Y�A�*�

summaries/loss4��B
}
summaries/histogram_loss*a	   ���V@   ���V@      �?!   ���V@) �:z]տ@2
6@�F?V@r;`�xX@�������:              �?        B�ɥ       ��	'�X�{Y�A�*�

summaries/loss�̨B
}
summaries/histogram_loss*a	   ��U@   ��U@      �?!   ��U@) �=BYӻ@2��X�9T@
6@�F?V@�������:              �?        ��9�       ��	b�X�{Y�A�*�

summaries/loss(ۆB
}
summaries/histogram_loss*a	    e�P@    e�P@      �?!    e�P@) �]_�±@2Π54�P@�0n9�bR@�������:              �?        �
F