
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
;
steps_to_incrementPlaceholder*
shape: *
dtype0
9
AddAddglobal_step/readsteps_to_increment*
T0
t
AssignAssignglobal_stepAdd*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
5

batch_sizePlaceholder*
shape:*
dtype0
:
sequence_lengthPlaceholder*
shape:*
dtype0
;
masksPlaceholder*
shape:���������*
dtype0
;
CastCastmasks*

SrcT0*
Truncate( *

DstT0
M
#is_continuous_control/initial_valueConst*
value	B : *
dtype0
a
is_continuous_control
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
is_continuous_control/AssignAssignis_continuous_control#is_continuous_control/initial_value*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(
p
is_continuous_control/readIdentityis_continuous_control*
T0*(
_class
loc:@is_continuous_control
F
version_number/initial_valueConst*
value	B :*
dtype0
Z
version_number
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
version_number/AssignAssignversion_numberversion_number/initial_value*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
[
version_number/readIdentityversion_number*
T0*!
_class
loc:@version_number
C
memory_size/initial_valueConst*
value	B : *
dtype0
W
memory_size
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
memory_size/AssignAssignmemory_sizememory_size/initial_value*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
K
!action_output_shape/initial_valueConst*
value	B :*
dtype0
_
action_output_shape
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
action_output_shape/AssignAssignaction_output_shape!action_output_shape/initial_value*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(
j
action_output_shape/readIdentityaction_output_shape*
T0*&
_class
loc:@action_output_shape
L
vector_observationPlaceholder*
shape:���������!*
dtype0
�
?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB"!   �   *
dtype0
�
>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0
�
@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
valueB
 *8�J>*
dtype0
�
Imain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
seed�!*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
seed2
�
=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
�
9main_graph_0/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
�
main_graph_0/hidden_0/kernel
VariableV2*
shape:	!�*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
�
#main_graph_0/hidden_0/kernel/AssignAssignmain_graph_0/hidden_0/kernel9main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
�
!main_graph_0/hidden_0/kernel/readIdentitymain_graph_0/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
�
,main_graph_0/hidden_0/bias/Initializer/zerosConst*-
_class#
!loc:@main_graph_0/hidden_0/bias*
valueB�*    *
dtype0
�
main_graph_0/hidden_0/bias
VariableV2*
shape:�*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container 
�
!main_graph_0/hidden_0/bias/AssignAssignmain_graph_0/hidden_0/bias,main_graph_0/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(

main_graph_0/hidden_0/bias/readIdentitymain_graph_0/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
�
main_graph_0/hidden_0/MatMulMatMulvector_observation!main_graph_0/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
main_graph_0/hidden_0/BiasAddBiasAddmain_graph_0/hidden_0/MatMulmain_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_0/SigmoidSigmoidmain_graph_0/hidden_0/BiasAdd*
T0
g
main_graph_0/hidden_0/MulMulmain_graph_0/hidden_0/BiasAddmain_graph_0/hidden_0/Sigmoid*
T0
�
?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB"�   �   *
dtype0
�
>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0
�
@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
valueB
 *���=*
dtype0
�
Imain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
seed�!*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
seed20
�
=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
�
9main_graph_0/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
�
main_graph_0/hidden_1/kernel
VariableV2*
shape:
��*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
�
#main_graph_0/hidden_1/kernel/AssignAssignmain_graph_0/hidden_1/kernel9main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
�
!main_graph_0/hidden_1/kernel/readIdentitymain_graph_0/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
�
,main_graph_0/hidden_1/bias/Initializer/zerosConst*-
_class#
!loc:@main_graph_0/hidden_1/bias*
valueB�*    *
dtype0
�
main_graph_0/hidden_1/bias
VariableV2*
shape:�*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container 
�
!main_graph_0/hidden_1/bias/AssignAssignmain_graph_0/hidden_1/bias,main_graph_0/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

main_graph_0/hidden_1/bias/readIdentitymain_graph_0/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
�
main_graph_0/hidden_1/MatMulMatMulmain_graph_0/hidden_0/Mul!main_graph_0/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
main_graph_0/hidden_1/BiasAddBiasAddmain_graph_0/hidden_1/MatMulmain_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_1/SigmoidSigmoidmain_graph_0/hidden_1/BiasAdd*
T0
g
main_graph_0/hidden_1/MulMulmain_graph_0/hidden_1/BiasAddmain_graph_0/hidden_1/Sigmoid*
T0
�
/dense/kernel/Initializer/truncated_normal/shapeConst*
_class
loc:@dense/kernel*
valueB"�      *
dtype0
|
.dense/kernel/Initializer/truncated_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
_class
loc:@dense/kernel*
valueB
 *�$<*
dtype0
�
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
seed�!*
T0*
_class
loc:@dense/kernel*
dtype0*
seed2A
�
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
�
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel
�
dense/kernel
VariableV2*
shape:	�*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
�
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
s
dense/MatMulMatMulmain_graph_0/hidden_1/Muldense/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
1dense_1/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"�      *
dtype0
�
0dense_1/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
�
2dense_1/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_1/kernel*
valueB
 *�$<*
dtype0
�
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*
seed�!*
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2K
�
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_1/kernel
�
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel
�
dense_1/kernel
VariableV2*
shape:	�*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
�
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
w
dense_1/MatMulMatMulmain_graph_0/hidden_1/Muldense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
;
action_probs/axisConst*
value	B :*
dtype0
g
action_probsConcatV2dense/MatMuldense_1/MatMulaction_probs/axis*

Tidx0*
T0*
N
F
action_masksPlaceholder*
shape:���������*
dtype0
H
strided_slice/stackConst*
valueB"        *
dtype0
J
strided_slice/stack_1Const*
valueB"       *
dtype0
J
strided_slice/stack_2Const*
valueB"      *
dtype0
�
strided_sliceStridedSliceaction_probsstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_1/stackConst*
valueB"       *
dtype0
L
strided_slice_1/stack_1Const*
valueB"       *
dtype0
L
strided_slice_1/stack_2Const*
valueB"      *
dtype0
�
strided_slice_1StridedSliceaction_probsstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_2/stackConst*
valueB"        *
dtype0
L
strided_slice_2/stack_1Const*
valueB"       *
dtype0
L
strided_slice_2/stack_2Const*
valueB"      *
dtype0
�
strided_slice_2StridedSliceaction_masksstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_3/stackConst*
valueB"       *
dtype0
L
strided_slice_3/stack_1Const*
valueB"       *
dtype0
L
strided_slice_3/stack_2Const*
valueB"      *
dtype0
�
strided_slice_3StridedSliceaction_masksstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
*
SoftmaxSoftmaxstrided_slice*
T0
4
add_1/yConst*
valueB
 *���3*
dtype0
)
add_1AddV2Softmaxadd_1/y*
T0
+
MulMuladd_1strided_slice_2*
T0
.
	Softmax_1Softmaxstrided_slice_1*
T0
4
add_2/yConst*
valueB
 *���3*
dtype0
+
add_2AddV2	Softmax_1add_2/y*
T0
-
Mul_1Muladd_2strided_slice_3*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
L
SumSumMulSum/reduction_indices*

Tidx0*
	keep_dims(*
T0
%
truedivRealDivMulSum*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1SumMul_1Sum_1/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_1RealDivMul_1Sum_1*
T0
4
add_3/yConst*
valueB
 *���3*
dtype0
)
add_3AddV2truedivadd_3/y*
T0

LogLogadd_3*
T0
M
#multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0
�
multinomial/MultinomialMultinomialLog#multinomial/Multinomial/num_samples*
seed�!*
output_dtype0	*
T0*
seed2v
4
add_4/yConst*
valueB
 *���3*
dtype0
+
add_4AddV2	truediv_1add_4/y*
T0

Log_1Logadd_4*
T0
O
%multinomial_1/Multinomial/num_samplesConst*
value	B :*
dtype0
�
multinomial_1/MultinomialMultinomialLog_1%multinomial_1/Multinomial/num_samples*
seed�!*
output_dtype0	*
T0*
seed2{
5
concat/axisConst*
value	B :*
dtype0
q
concatConcatV2multinomial/Multinomialmultinomial_1/Multinomialconcat/axis*

Tidx0*
T0	*
N
7
concat_1/axisConst*
value	B :*
dtype0
U
concat_1ConcatV2truediv	truediv_1concat_1/axis*

Tidx0*
T0*
N
4
add_5/yConst*
valueB
 *���3*
dtype0
)
add_5AddV2truedivadd_5/y*
T0

Log_2Logadd_5*
T0
4
add_6/yConst*
valueB
 *���3*
dtype0
+
add_6AddV2	truediv_1add_6/y*
T0

Log_3Logadd_6*
T0
7
concat_2/axisConst*
value	B :*
dtype0
O
concat_2ConcatV2Log_2Log_3concat_2/axis*

Tidx0*
T0*
N
%
IdentityIdentityconcat*
T0	
%
actionIdentityconcat_2*
T0
�
7extrinsic_value/kernel/Initializer/random_uniform/shapeConst*)
_class
loc:@extrinsic_value/kernel*
valueB"�      *
dtype0
�
5extrinsic_value/kernel/Initializer/random_uniform/minConst*)
_class
loc:@extrinsic_value/kernel*
valueB
 *n�\�*
dtype0
�
5extrinsic_value/kernel/Initializer/random_uniform/maxConst*)
_class
loc:@extrinsic_value/kernel*
valueB
 *n�\>*
dtype0
�
?extrinsic_value/kernel/Initializer/random_uniform/RandomUniformRandomUniform7extrinsic_value/kernel/Initializer/random_uniform/shape*
seed�!*
T0*)
_class
loc:@extrinsic_value/kernel*
dtype0*
seed2�
�
5extrinsic_value/kernel/Initializer/random_uniform/subSub5extrinsic_value/kernel/Initializer/random_uniform/max5extrinsic_value/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@extrinsic_value/kernel
�
5extrinsic_value/kernel/Initializer/random_uniform/mulMul?extrinsic_value/kernel/Initializer/random_uniform/RandomUniform5extrinsic_value/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@extrinsic_value/kernel
�
1extrinsic_value/kernel/Initializer/random_uniformAdd5extrinsic_value/kernel/Initializer/random_uniform/mul5extrinsic_value/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@extrinsic_value/kernel
�
extrinsic_value/kernel
VariableV2*
shape:	�*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container 
�
extrinsic_value/kernel/AssignAssignextrinsic_value/kernel1extrinsic_value/kernel/Initializer/random_uniform*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
s
extrinsic_value/kernel/readIdentityextrinsic_value/kernel*
T0*)
_class
loc:@extrinsic_value/kernel
�
&extrinsic_value/bias/Initializer/zerosConst*'
_class
loc:@extrinsic_value/bias*
valueB*    *
dtype0
�
extrinsic_value/bias
VariableV2*
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container 
�
extrinsic_value/bias/AssignAssignextrinsic_value/bias&extrinsic_value/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
m
extrinsic_value/bias/readIdentityextrinsic_value/bias*
T0*'
_class
loc:@extrinsic_value/bias
�
extrinsic_value/MatMulMatMulmain_graph_0/hidden_1/Mulextrinsic_value/kernel/read*
transpose_b( *
T0*
transpose_a( 
u
extrinsic_value/BiasAddBiasAddextrinsic_value/MatMulextrinsic_value/bias/read*
T0*
data_formatNHWC
I

Mean/inputPackextrinsic_value/BiasAdd*
T0*

axis *
N
@
Mean/reduction_indicesConst*
value	B : *
dtype0
V
MeanMean
Mean/inputMean/reduction_indices*

Tidx0*
	keep_dims( *
T0
G
action_holderPlaceholder*
shape:���������*
dtype0
J
strided_slice_4/stackConst*
valueB"        *
dtype0
L
strided_slice_4/stack_1Const*
valueB"       *
dtype0
L
strided_slice_4/stack_2Const*
valueB"      *
dtype0
�
strided_slice_4StridedSliceaction_holderstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
=
one_hot/on_valueConst*
valueB
 *  �?*
dtype0
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
value	B :*
dtype0
~
one_hotOneHotstrided_slice_4one_hot/depthone_hot/on_valueone_hot/off_value*
T0*
TI0*
axis���������
J
strided_slice_5/stackConst*
valueB"       *
dtype0
L
strided_slice_5/stack_1Const*
valueB"       *
dtype0
L
strided_slice_5/stack_2Const*
valueB"      *
dtype0
�
strided_slice_5StridedSliceaction_holderstrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
?
one_hot_1/on_valueConst*
valueB
 *  �?*
dtype0
@
one_hot_1/off_valueConst*
valueB
 *    *
dtype0
9
one_hot_1/depthConst*
value	B :*
dtype0
�
	one_hot_1OneHotstrided_slice_5one_hot_1/depthone_hot_1/on_valueone_hot_1/off_value*
T0*
TI0*
axis���������
7
concat_3/axisConst*
value	B :*
dtype0
U
concat_3ConcatV2one_hot	one_hot_1concat_3/axis*

Tidx0*
T0*
N
/
StopGradientStopGradientconcat_3*
T0
K
old_probabilitiesPlaceholder*
shape:���������*
dtype0
J
strided_slice_6/stackConst*
valueB"        *
dtype0
L
strided_slice_6/stack_1Const*
valueB"       *
dtype0
L
strided_slice_6/stack_2Const*
valueB"      *
dtype0
�
strided_slice_6StridedSliceold_probabilitiesstrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_7/stackConst*
valueB"       *
dtype0
L
strided_slice_7/stack_1Const*
valueB"       *
dtype0
L
strided_slice_7/stack_2Const*
valueB"      *
dtype0
�
strided_slice_7StridedSliceold_probabilitiesstrided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_8/stackConst*
valueB"        *
dtype0
L
strided_slice_8/stack_1Const*
valueB"       *
dtype0
L
strided_slice_8/stack_2Const*
valueB"      *
dtype0
�
strided_slice_8StridedSliceaction_masksstrided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
J
strided_slice_9/stackConst*
valueB"       *
dtype0
L
strided_slice_9/stack_1Const*
valueB"       *
dtype0
L
strided_slice_9/stack_2Const*
valueB"      *
dtype0
�
strided_slice_9StridedSliceaction_masksstrided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
.
	Softmax_2Softmaxstrided_slice_6*
T0
4
add_7/yConst*
valueB
 *���3*
dtype0
+
add_7AddV2	Softmax_2add_7/y*
T0
-
Mul_2Muladd_7strided_slice_8*
T0
.
	Softmax_3Softmaxstrided_slice_7*
T0
4
add_8/yConst*
valueB
 *���3*
dtype0
+
add_8AddV2	Softmax_3add_8/y*
T0
-
Mul_3Muladd_8strided_slice_9*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2SumMul_2Sum_2/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_2RealDivMul_2Sum_2*
T0
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
R
Sum_3SumMul_3Sum_3/reduction_indices*

Tidx0*
	keep_dims(*
T0
+
	truediv_3RealDivMul_3Sum_3*
T0
4
add_9/yConst*
valueB
 *���3*
dtype0
+
add_9AddV2	truediv_2add_9/y*
T0

Log_4Logadd_9*
T0
O
%multinomial_2/Multinomial/num_samplesConst*
value	B :*
dtype0
�
multinomial_2/MultinomialMultinomialLog_4%multinomial_2/Multinomial/num_samples*
seed�!*
output_dtype0	*
T0*
seed2�
5
add_10/yConst*
valueB
 *���3*
dtype0
-
add_10AddV2	truediv_3add_10/y*
T0

Log_5Logadd_10*
T0
O
%multinomial_3/Multinomial/num_samplesConst*
value	B :*
dtype0
�
multinomial_3/MultinomialMultinomialLog_5%multinomial_3/Multinomial/num_samples*
seed�!*
output_dtype0	*
T0*
seed2�
7
concat_4/axisConst*
value	B :*
dtype0
w
concat_4ConcatV2multinomial_2/Multinomialmultinomial_3/Multinomialconcat_4/axis*

Tidx0*
T0	*
N
7
concat_5/axisConst*
value	B :*
dtype0
W
concat_5ConcatV2	truediv_2	truediv_3concat_5/axis*

Tidx0*
T0*
N
5
add_11/yConst*
valueB
 *���3*
dtype0
-
add_11AddV2	truediv_2add_11/y*
T0

Log_6Logadd_11*
T0
5
add_12/yConst*
valueB
 *���3*
dtype0
-
add_12AddV2	truediv_3add_12/y*
T0

Log_7Logadd_12*
T0
7
concat_6/axisConst*
value	B :*
dtype0
O
concat_6ConcatV2Log_6Log_7concat_6/axis*

Tidx0*
T0*
N
K
strided_slice_10/stackConst*
valueB"        *
dtype0
M
strided_slice_10/stack_1Const*
valueB"       *
dtype0
M
strided_slice_10/stack_2Const*
valueB"      *
dtype0
�
strided_slice_10StridedSliceaction_probsstrided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
/
	Softmax_4Softmaxstrided_slice_10*
T0
K
strided_slice_11/stackConst*
valueB"        *
dtype0
M
strided_slice_11/stack_1Const*
valueB"       *
dtype0
M
strided_slice_11/stack_2Const*
valueB"      *
dtype0
�
strided_slice_11StridedSliceaction_probsstrided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
[
'softmax_cross_entropy_with_logits/ShapeShapestrided_slice_11*
T0*
out_type0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits/Shape_1Shapestrided_slice_11*
T0*
out_type0
Q
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0
�
%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0
z
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0
�
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
T0*
Index0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
���������*
dtype0
W
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0
�
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*

Tidx0*
T0*
N
�
)softmax_cross_entropy_with_logits/ReshapeReshapestrided_slice_11(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
R
(softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0
V
)softmax_cross_entropy_with_logits/Shape_2Shape	Softmax_4*
T0*
out_type0
S
)softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0
�
'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0
~
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0
�
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
���������*
dtype0
Y
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0
�
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*

Tidx0*
T0*
N
�
+softmax_cross_entropy_with_logits/Reshape_1Reshape	Softmax_4*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
�
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0
S
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0
�
'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0
]
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0
}
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N
�
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0
�
+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
K
strided_slice_12/stackConst*
valueB"       *
dtype0
M
strided_slice_12/stack_1Const*
valueB"       *
dtype0
M
strided_slice_12/stack_2Const*
valueB"      *
dtype0
�
strided_slice_12StridedSliceaction_probsstrided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
/
	Softmax_5Softmaxstrided_slice_12*
T0
K
strided_slice_13/stackConst*
valueB"       *
dtype0
M
strided_slice_13/stack_1Const*
valueB"       *
dtype0
M
strided_slice_13/stack_2Const*
valueB"      *
dtype0
�
strided_slice_13StridedSliceaction_probsstrided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_1/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_1/ShapeShapestrided_slice_13*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_1/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_1/Shape_1Shapestrided_slice_13*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_1/Sub/yConst*
value	B :*
dtype0
�
'softmax_cross_entropy_with_logits_1/SubSub*softmax_cross_entropy_with_logits_1/Rank_1)softmax_cross_entropy_with_logits_1/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_1/Slice/beginPack'softmax_cross_entropy_with_logits_1/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_1/Slice/sizeConst*
valueB:*
dtype0
�
)softmax_cross_entropy_with_logits_1/SliceSlice+softmax_cross_entropy_with_logits_1/Shape_1/softmax_cross_entropy_with_logits_1/Slice/begin.softmax_cross_entropy_with_logits_1/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_1/concat/values_0Const*
valueB:
���������*
dtype0
Y
/softmax_cross_entropy_with_logits_1/concat/axisConst*
value	B : *
dtype0
�
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*

Tidx0*
T0*
N
�
+softmax_cross_entropy_with_logits_1/ReshapeReshapestrided_slice_13*softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_1/Rank_2Const*
value	B :*
dtype0
X
+softmax_cross_entropy_with_logits_1/Shape_2Shape	Softmax_5*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_1/Sub_1/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_1/Sub_1Sub*softmax_cross_entropy_with_logits_1/Rank_2+softmax_cross_entropy_with_logits_1/Sub_1/y*
T0
�
1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
valueB:*
dtype0
�
+softmax_cross_entropy_with_logits_1/Slice_1Slice+softmax_cross_entropy_with_logits_1/Shape_21softmax_cross_entropy_with_logits_1/Slice_1/begin0softmax_cross_entropy_with_logits_1/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
valueB:
���������*
dtype0
[
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0
�
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*

Tidx0*
T0*
N
�
-softmax_cross_entropy_with_logits_1/Reshape_1Reshape	Softmax_5,softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0
�
#softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_1/Reshape-softmax_cross_entropy_with_logits_1/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_1/Sub_2/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_1/Sub_2Sub(softmax_cross_entropy_with_logits_1/Rank+softmax_cross_entropy_with_logits_1/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
valueB: *
dtype0
�
0softmax_cross_entropy_with_logits_1/Slice_2/sizePack)softmax_cross_entropy_with_logits_1/Sub_2*
T0*

axis *
N
�
+softmax_cross_entropy_with_logits_1/Slice_2Slice)softmax_cross_entropy_with_logits_1/Shape1softmax_cross_entropy_with_logits_1/Slice_2/begin0softmax_cross_entropy_with_logits_1/Slice_2/size*
T0*
Index0
�
-softmax_cross_entropy_with_logits_1/Reshape_2Reshape#softmax_cross_entropy_with_logits_1+softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0
�
stackPack+softmax_cross_entropy_with_logits/Reshape_2-softmax_cross_entropy_with_logits_1/Reshape_2*
T0*

axis*
N
A
Sum_4/reduction_indicesConst*
value	B :*
dtype0
R
Sum_4SumstackSum_4/reduction_indices*

Tidx0*
	keep_dims( *
T0
K
strided_slice_14/stackConst*
valueB"        *
dtype0
M
strided_slice_14/stack_1Const*
valueB"       *
dtype0
M
strided_slice_14/stack_2Const*
valueB"      *
dtype0
�
strided_slice_14StridedSliceconcat_3strided_slice_14/stackstrided_slice_14/stack_1strided_slice_14/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_15/stackConst*
valueB"        *
dtype0
M
strided_slice_15/stack_1Const*
valueB"       *
dtype0
M
strided_slice_15/stack_2Const*
valueB"      *
dtype0
�
strided_slice_15StridedSliceconcat_2strided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_2/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_2/ShapeShapestrided_slice_15*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_2/Shape_1Shapestrided_slice_15*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_2/Sub/yConst*
value	B :*
dtype0
�
'softmax_cross_entropy_with_logits_2/SubSub*softmax_cross_entropy_with_logits_2/Rank_1)softmax_cross_entropy_with_logits_2/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_2/Slice/beginPack'softmax_cross_entropy_with_logits_2/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_2/Slice/sizeConst*
valueB:*
dtype0
�
)softmax_cross_entropy_with_logits_2/SliceSlice+softmax_cross_entropy_with_logits_2/Shape_1/softmax_cross_entropy_with_logits_2/Slice/begin.softmax_cross_entropy_with_logits_2/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_2/concat/values_0Const*
valueB:
���������*
dtype0
Y
/softmax_cross_entropy_with_logits_2/concat/axisConst*
value	B : *
dtype0
�
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*

Tidx0*
T0*
N
�
+softmax_cross_entropy_with_logits_2/ReshapeReshapestrided_slice_15*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_2/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_2/Shape_2Shapestrided_slice_14*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_2/Sub_1/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_2/Sub_1Sub*softmax_cross_entropy_with_logits_2/Rank_2+softmax_cross_entropy_with_logits_2/Sub_1/y*
T0
�
1softmax_cross_entropy_with_logits_2/Slice_1/beginPack)softmax_cross_entropy_with_logits_2/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_2/Slice_1/sizeConst*
valueB:*
dtype0
�
+softmax_cross_entropy_with_logits_2/Slice_1Slice+softmax_cross_entropy_with_logits_2/Shape_21softmax_cross_entropy_with_logits_2/Slice_1/begin0softmax_cross_entropy_with_logits_2/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_2/concat_1/values_0Const*
valueB:
���������*
dtype0
[
1softmax_cross_entropy_with_logits_2/concat_1/axisConst*
value	B : *
dtype0
�
,softmax_cross_entropy_with_logits_2/concat_1ConcatV25softmax_cross_entropy_with_logits_2/concat_1/values_0+softmax_cross_entropy_with_logits_2/Slice_11softmax_cross_entropy_with_logits_2/concat_1/axis*

Tidx0*
T0*
N
�
-softmax_cross_entropy_with_logits_2/Reshape_1Reshapestrided_slice_14,softmax_cross_entropy_with_logits_2/concat_1*
T0*
Tshape0
�
#softmax_cross_entropy_with_logits_2SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_2/Reshape-softmax_cross_entropy_with_logits_2/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_2/Sub_2Sub(softmax_cross_entropy_with_logits_2/Rank+softmax_cross_entropy_with_logits_2/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_2/Slice_2/beginConst*
valueB: *
dtype0
�
0softmax_cross_entropy_with_logits_2/Slice_2/sizePack)softmax_cross_entropy_with_logits_2/Sub_2*
T0*

axis *
N
�
+softmax_cross_entropy_with_logits_2/Slice_2Slice)softmax_cross_entropy_with_logits_2/Shape1softmax_cross_entropy_with_logits_2/Slice_2/begin0softmax_cross_entropy_with_logits_2/Slice_2/size*
T0*
Index0
�
-softmax_cross_entropy_with_logits_2/Reshape_2Reshape#softmax_cross_entropy_with_logits_2+softmax_cross_entropy_with_logits_2/Slice_2*
T0*
Tshape0
B
NegNeg-softmax_cross_entropy_with_logits_2/Reshape_2*
T0
K
strided_slice_16/stackConst*
valueB"       *
dtype0
M
strided_slice_16/stack_1Const*
valueB"       *
dtype0
M
strided_slice_16/stack_2Const*
valueB"      *
dtype0
�
strided_slice_16StridedSliceconcat_3strided_slice_16/stackstrided_slice_16/stack_1strided_slice_16/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_17/stackConst*
valueB"       *
dtype0
M
strided_slice_17/stack_1Const*
valueB"       *
dtype0
M
strided_slice_17/stack_2Const*
valueB"      *
dtype0
�
strided_slice_17StridedSliceconcat_2strided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_3/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_3/ShapeShapestrided_slice_17*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_3/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_3/Shape_1Shapestrided_slice_17*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_3/Sub/yConst*
value	B :*
dtype0
�
'softmax_cross_entropy_with_logits_3/SubSub*softmax_cross_entropy_with_logits_3/Rank_1)softmax_cross_entropy_with_logits_3/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_3/Slice/beginPack'softmax_cross_entropy_with_logits_3/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_3/Slice/sizeConst*
valueB:*
dtype0
�
)softmax_cross_entropy_with_logits_3/SliceSlice+softmax_cross_entropy_with_logits_3/Shape_1/softmax_cross_entropy_with_logits_3/Slice/begin.softmax_cross_entropy_with_logits_3/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_3/concat/values_0Const*
valueB:
���������*
dtype0
Y
/softmax_cross_entropy_with_logits_3/concat/axisConst*
value	B : *
dtype0
�
*softmax_cross_entropy_with_logits_3/concatConcatV23softmax_cross_entropy_with_logits_3/concat/values_0)softmax_cross_entropy_with_logits_3/Slice/softmax_cross_entropy_with_logits_3/concat/axis*

Tidx0*
T0*
N
�
+softmax_cross_entropy_with_logits_3/ReshapeReshapestrided_slice_17*softmax_cross_entropy_with_logits_3/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_3/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_3/Shape_2Shapestrided_slice_16*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_3/Sub_1/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_3/Sub_1Sub*softmax_cross_entropy_with_logits_3/Rank_2+softmax_cross_entropy_with_logits_3/Sub_1/y*
T0
�
1softmax_cross_entropy_with_logits_3/Slice_1/beginPack)softmax_cross_entropy_with_logits_3/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_3/Slice_1/sizeConst*
valueB:*
dtype0
�
+softmax_cross_entropy_with_logits_3/Slice_1Slice+softmax_cross_entropy_with_logits_3/Shape_21softmax_cross_entropy_with_logits_3/Slice_1/begin0softmax_cross_entropy_with_logits_3/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_3/concat_1/values_0Const*
valueB:
���������*
dtype0
[
1softmax_cross_entropy_with_logits_3/concat_1/axisConst*
value	B : *
dtype0
�
,softmax_cross_entropy_with_logits_3/concat_1ConcatV25softmax_cross_entropy_with_logits_3/concat_1/values_0+softmax_cross_entropy_with_logits_3/Slice_11softmax_cross_entropy_with_logits_3/concat_1/axis*

Tidx0*
T0*
N
�
-softmax_cross_entropy_with_logits_3/Reshape_1Reshapestrided_slice_16,softmax_cross_entropy_with_logits_3/concat_1*
T0*
Tshape0
�
#softmax_cross_entropy_with_logits_3SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_3/Reshape-softmax_cross_entropy_with_logits_3/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_3/Sub_2/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_3/Sub_2Sub(softmax_cross_entropy_with_logits_3/Rank+softmax_cross_entropy_with_logits_3/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_3/Slice_2/beginConst*
valueB: *
dtype0
�
0softmax_cross_entropy_with_logits_3/Slice_2/sizePack)softmax_cross_entropy_with_logits_3/Sub_2*
T0*

axis *
N
�
+softmax_cross_entropy_with_logits_3/Slice_2Slice)softmax_cross_entropy_with_logits_3/Shape1softmax_cross_entropy_with_logits_3/Slice_2/begin0softmax_cross_entropy_with_logits_3/Slice_2/size*
T0*
Index0
�
-softmax_cross_entropy_with_logits_3/Reshape_2Reshape#softmax_cross_entropy_with_logits_3+softmax_cross_entropy_with_logits_3/Slice_2*
T0*
Tshape0
D
Neg_1Neg-softmax_cross_entropy_with_logits_3/Reshape_2*
T0
9
stack_1PackNegNeg_1*
T0*

axis*
N
A
Sum_5/reduction_indicesConst*
value	B :*
dtype0
T
Sum_5Sumstack_1Sum_5/reduction_indices*

Tidx0*
	keep_dims(*
T0
K
strided_slice_18/stackConst*
valueB"        *
dtype0
M
strided_slice_18/stack_1Const*
valueB"       *
dtype0
M
strided_slice_18/stack_2Const*
valueB"      *
dtype0
�
strided_slice_18StridedSliceconcat_3strided_slice_18/stackstrided_slice_18/stack_1strided_slice_18/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_19/stackConst*
valueB"        *
dtype0
M
strided_slice_19/stack_1Const*
valueB"       *
dtype0
M
strided_slice_19/stack_2Const*
valueB"      *
dtype0
�
strided_slice_19StridedSliceconcat_6strided_slice_19/stackstrided_slice_19/stack_1strided_slice_19/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_4/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_4/ShapeShapestrided_slice_19*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_4/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_4/Shape_1Shapestrided_slice_19*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_4/Sub/yConst*
value	B :*
dtype0
�
'softmax_cross_entropy_with_logits_4/SubSub*softmax_cross_entropy_with_logits_4/Rank_1)softmax_cross_entropy_with_logits_4/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_4/Slice/beginPack'softmax_cross_entropy_with_logits_4/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_4/Slice/sizeConst*
valueB:*
dtype0
�
)softmax_cross_entropy_with_logits_4/SliceSlice+softmax_cross_entropy_with_logits_4/Shape_1/softmax_cross_entropy_with_logits_4/Slice/begin.softmax_cross_entropy_with_logits_4/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_4/concat/values_0Const*
valueB:
���������*
dtype0
Y
/softmax_cross_entropy_with_logits_4/concat/axisConst*
value	B : *
dtype0
�
*softmax_cross_entropy_with_logits_4/concatConcatV23softmax_cross_entropy_with_logits_4/concat/values_0)softmax_cross_entropy_with_logits_4/Slice/softmax_cross_entropy_with_logits_4/concat/axis*

Tidx0*
T0*
N
�
+softmax_cross_entropy_with_logits_4/ReshapeReshapestrided_slice_19*softmax_cross_entropy_with_logits_4/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_4/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_4/Shape_2Shapestrided_slice_18*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_4/Sub_1/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_4/Sub_1Sub*softmax_cross_entropy_with_logits_4/Rank_2+softmax_cross_entropy_with_logits_4/Sub_1/y*
T0
�
1softmax_cross_entropy_with_logits_4/Slice_1/beginPack)softmax_cross_entropy_with_logits_4/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_4/Slice_1/sizeConst*
valueB:*
dtype0
�
+softmax_cross_entropy_with_logits_4/Slice_1Slice+softmax_cross_entropy_with_logits_4/Shape_21softmax_cross_entropy_with_logits_4/Slice_1/begin0softmax_cross_entropy_with_logits_4/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_4/concat_1/values_0Const*
valueB:
���������*
dtype0
[
1softmax_cross_entropy_with_logits_4/concat_1/axisConst*
value	B : *
dtype0
�
,softmax_cross_entropy_with_logits_4/concat_1ConcatV25softmax_cross_entropy_with_logits_4/concat_1/values_0+softmax_cross_entropy_with_logits_4/Slice_11softmax_cross_entropy_with_logits_4/concat_1/axis*

Tidx0*
T0*
N
�
-softmax_cross_entropy_with_logits_4/Reshape_1Reshapestrided_slice_18,softmax_cross_entropy_with_logits_4/concat_1*
T0*
Tshape0
�
#softmax_cross_entropy_with_logits_4SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_4/Reshape-softmax_cross_entropy_with_logits_4/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_4/Sub_2/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_4/Sub_2Sub(softmax_cross_entropy_with_logits_4/Rank+softmax_cross_entropy_with_logits_4/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_4/Slice_2/beginConst*
valueB: *
dtype0
�
0softmax_cross_entropy_with_logits_4/Slice_2/sizePack)softmax_cross_entropy_with_logits_4/Sub_2*
T0*

axis *
N
�
+softmax_cross_entropy_with_logits_4/Slice_2Slice)softmax_cross_entropy_with_logits_4/Shape1softmax_cross_entropy_with_logits_4/Slice_2/begin0softmax_cross_entropy_with_logits_4/Slice_2/size*
T0*
Index0
�
-softmax_cross_entropy_with_logits_4/Reshape_2Reshape#softmax_cross_entropy_with_logits_4+softmax_cross_entropy_with_logits_4/Slice_2*
T0*
Tshape0
D
Neg_2Neg-softmax_cross_entropy_with_logits_4/Reshape_2*
T0
K
strided_slice_20/stackConst*
valueB"       *
dtype0
M
strided_slice_20/stack_1Const*
valueB"       *
dtype0
M
strided_slice_20/stack_2Const*
valueB"      *
dtype0
�
strided_slice_20StridedSliceconcat_3strided_slice_20/stackstrided_slice_20/stack_1strided_slice_20/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
K
strided_slice_21/stackConst*
valueB"       *
dtype0
M
strided_slice_21/stack_1Const*
valueB"       *
dtype0
M
strided_slice_21/stack_2Const*
valueB"      *
dtype0
�
strided_slice_21StridedSliceconcat_6strided_slice_21/stackstrided_slice_21/stack_1strided_slice_21/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
(softmax_cross_entropy_with_logits_5/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_5/ShapeShapestrided_slice_21*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_5/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_5/Shape_1Shapestrided_slice_21*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_5/Sub/yConst*
value	B :*
dtype0
�
'softmax_cross_entropy_with_logits_5/SubSub*softmax_cross_entropy_with_logits_5/Rank_1)softmax_cross_entropy_with_logits_5/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_5/Slice/beginPack'softmax_cross_entropy_with_logits_5/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_5/Slice/sizeConst*
valueB:*
dtype0
�
)softmax_cross_entropy_with_logits_5/SliceSlice+softmax_cross_entropy_with_logits_5/Shape_1/softmax_cross_entropy_with_logits_5/Slice/begin.softmax_cross_entropy_with_logits_5/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_5/concat/values_0Const*
valueB:
���������*
dtype0
Y
/softmax_cross_entropy_with_logits_5/concat/axisConst*
value	B : *
dtype0
�
*softmax_cross_entropy_with_logits_5/concatConcatV23softmax_cross_entropy_with_logits_5/concat/values_0)softmax_cross_entropy_with_logits_5/Slice/softmax_cross_entropy_with_logits_5/concat/axis*

Tidx0*
T0*
N
�
+softmax_cross_entropy_with_logits_5/ReshapeReshapestrided_slice_21*softmax_cross_entropy_with_logits_5/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_5/Rank_2Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_5/Shape_2Shapestrided_slice_20*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_5/Sub_1/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_5/Sub_1Sub*softmax_cross_entropy_with_logits_5/Rank_2+softmax_cross_entropy_with_logits_5/Sub_1/y*
T0
�
1softmax_cross_entropy_with_logits_5/Slice_1/beginPack)softmax_cross_entropy_with_logits_5/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_5/Slice_1/sizeConst*
valueB:*
dtype0
�
+softmax_cross_entropy_with_logits_5/Slice_1Slice+softmax_cross_entropy_with_logits_5/Shape_21softmax_cross_entropy_with_logits_5/Slice_1/begin0softmax_cross_entropy_with_logits_5/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_5/concat_1/values_0Const*
valueB:
���������*
dtype0
[
1softmax_cross_entropy_with_logits_5/concat_1/axisConst*
value	B : *
dtype0
�
,softmax_cross_entropy_with_logits_5/concat_1ConcatV25softmax_cross_entropy_with_logits_5/concat_1/values_0+softmax_cross_entropy_with_logits_5/Slice_11softmax_cross_entropy_with_logits_5/concat_1/axis*

Tidx0*
T0*
N
�
-softmax_cross_entropy_with_logits_5/Reshape_1Reshapestrided_slice_20,softmax_cross_entropy_with_logits_5/concat_1*
T0*
Tshape0
�
#softmax_cross_entropy_with_logits_5SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_5/Reshape-softmax_cross_entropy_with_logits_5/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_5/Sub_2/yConst*
value	B :*
dtype0
�
)softmax_cross_entropy_with_logits_5/Sub_2Sub(softmax_cross_entropy_with_logits_5/Rank+softmax_cross_entropy_with_logits_5/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_5/Slice_2/beginConst*
valueB: *
dtype0
�
0softmax_cross_entropy_with_logits_5/Slice_2/sizePack)softmax_cross_entropy_with_logits_5/Sub_2*
T0*

axis *
N
�
+softmax_cross_entropy_with_logits_5/Slice_2Slice)softmax_cross_entropy_with_logits_5/Shape1softmax_cross_entropy_with_logits_5/Slice_2/begin0softmax_cross_entropy_with_logits_5/Slice_2/size*
T0*
Index0
�
-softmax_cross_entropy_with_logits_5/Reshape_2Reshape#softmax_cross_entropy_with_logits_5+softmax_cross_entropy_with_logits_5/Slice_2*
T0*
Tshape0
D
Neg_3Neg-softmax_cross_entropy_with_logits_5/Reshape_2*
T0
;
stack_2PackNeg_2Neg_3*
T0*

axis*
N
A
Sum_6/reduction_indicesConst*
value	B :*
dtype0
T
Sum_6Sumstack_2Sum_6/reduction_indices*

Tidx0*
	keep_dims(*
T0
R
%PolynomialDecay/initial_learning_rateConst*
valueB
 *�Q9*
dtype0
C
PolynomialDecay/Cast/xConst*
valueB
 *���.*
dtype0
E
PolynomialDecay/Cast_1/xConst*
valueB
 *  �?*
dtype0
X
PolynomialDecay/Cast_2Castglobal_step/read*

SrcT0*
Truncate( *

DstT0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *�C:Q*
dtype0
F
PolynomialDecay/Minimum/yConst*
valueB
 *�C:Q*
dtype0
^
PolynomialDecay/MinimumMinimumPolynomialDecay/Cast_2PolynomialDecay/Minimum/y*
T0
^
PolynomialDecay/truedivRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_3/x*
T0
b
PolynomialDecay/subSub%PolynomialDecay/initial_learning_ratePolynomialDecay/Cast/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  �?*
dtype0
W
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/truediv*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_1/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
L
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast/x*
T0
G
extrinsic_returnsPlaceholder*
shape:���������*
dtype0
N
extrinsic_value_estimatePlaceholder*
shape:���������*
dtype0
@

advantagesPlaceholder*
shape:���������*
dtype0
A
ExpandDims/dimConst*
valueB :
���������*
dtype0
I

ExpandDims
ExpandDims
advantagesExpandDims/dim*

Tdim0*
T0
T
'PolynomialDecay_1/initial_learning_rateConst*
valueB
 *��L>*
dtype0
E
PolynomialDecay_1/Cast/xConst*
valueB
 *���=*
dtype0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 *  �?*
dtype0
Z
PolynomialDecay_1/Cast_2Castglobal_step/read*

SrcT0*
Truncate( *

DstT0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *�C:Q*
dtype0
H
PolynomialDecay_1/Minimum/yConst*
valueB
 *�C:Q*
dtype0
d
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/Cast_2PolynomialDecay_1/Minimum/y*
T0
d
PolynomialDecay_1/truedivRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_3/x*
T0
h
PolynomialDecay_1/subSub'PolynomialDecay_1/initial_learning_ratePolynomialDecay_1/Cast/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  �?*
dtype0
]
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/truediv*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_1/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
R
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast/x*
T0
T
'PolynomialDecay_2/initial_learning_rateConst*
valueB
 *
ף;*
dtype0
E
PolynomialDecay_2/Cast/xConst*
valueB
 *��'7*
dtype0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 *  �?*
dtype0
Z
PolynomialDecay_2/Cast_2Castglobal_step/read*

SrcT0*
Truncate( *

DstT0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *�C:Q*
dtype0
H
PolynomialDecay_2/Minimum/yConst*
valueB
 *�C:Q*
dtype0
d
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/Cast_2PolynomialDecay_2/Minimum/y*
T0
d
PolynomialDecay_2/truedivRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_3/x*
T0
h
PolynomialDecay_2/subSub'PolynomialDecay_2/initial_learning_ratePolynomialDecay_2/Cast/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  �?*
dtype0
]
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/truediv*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_1/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
R
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast/x*
T0
A
Sum_7/reduction_indicesConst*
value	B :*
dtype0
d
Sum_7Sumextrinsic_value/BiasAddSum_7/reduction_indices*

Tidx0*
	keep_dims( *
T0
4
subSubSum_7extrinsic_value_estimate*
T0
(
Neg_4NegPolynomialDecay_1*
T0
A
clip_by_value/MinimumMinimumsubPolynomialDecay_1*
T0
?
clip_by_valueMaximumclip_by_value/MinimumNeg_4*
T0
A
add_13AddV2extrinsic_value_estimateclip_by_value*
T0
A
Sum_8/reduction_indicesConst*
value	B :*
dtype0
d
Sum_8Sumextrinsic_value/BiasAddSum_8/reduction_indices*

Tidx0*
	keep_dims( *
T0
I
SquaredDifferenceSquaredDifferenceextrinsic_returnsSum_8*
T0
L
SquaredDifference_1SquaredDifferenceextrinsic_returnsadd_13*
T0
C
MaximumMaximumSquaredDifferenceSquaredDifference_1*
T0
R
DynamicPartitionDynamicPartitionMaximumCast*
num_partitions*
T0
3
ConstConst*
valueB: *
dtype0
O
Mean_1MeanDynamicPartition:1Const*

Tidx0*
	keep_dims( *
T0
9
Rank/packedPackMean_1*
T0*

axis *
N
.
RankConst*
value	B :*
dtype0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
:
rangeRangerange/startRankrange/delta*

Tidx0
:
Mean_2/inputPackMean_1*
T0*

axis *
N
I
Mean_2MeanMean_2/inputrange*

Tidx0*
	keep_dims( *
T0
#
sub_1SubSum_5Sum_6*
T0

ExpExpsub_1*
T0
&
mul_4MulExp
ExpandDims*
T0
4
sub_2/xConst*
valueB
 *  �?*
dtype0
1
sub_2Subsub_2/xPolynomialDecay_1*
T0
5
add_14/xConst*
valueB
 *  �?*
dtype0
5
add_14AddV2add_14/xPolynomialDecay_1*
T0
8
clip_by_value_1/MinimumMinimumExpadd_14*
T0
C
clip_by_value_1Maximumclip_by_value_1/Minimumsub_2*
T0
2
mul_5Mulclip_by_value_1
ExpandDims*
T0
)
MinimumMinimummul_4mul_5*
T0
T
DynamicPartition_1DynamicPartitionMinimumCast*
num_partitions*
T0
<
Const_1Const*
valueB"       *
dtype0
S
Mean_3MeanDynamicPartition_1:1Const_1*

Tidx0*
	keep_dims( *
T0

Neg_5NegMean_3*
T0

AbsAbsNeg_5*
T0
4
mul_6/xConst*
valueB
 *   ?*
dtype0
&
mul_6Mulmul_6/xMean_2*
T0
&
add_15AddV2Neg_5mul_6*
T0
R
DynamicPartition_2DynamicPartitionSum_4Cast*
num_partitions*
T0
5
Const_2Const*
valueB: *
dtype0
S
Mean_4MeanDynamicPartition_2:1Const_2*

Tidx0*
	keep_dims( *
T0
0
mul_7MulPolynomialDecay_2Mean_4*
T0
$
sub_3Subadd_15mul_7*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
8
gradients/sub_3_grad/NegNeggradients/Fill*
T0
Y
%gradients/sub_3_grad/tuple/group_depsNoOp^gradients/Fill^gradients/sub_3_grad/Neg
�
-gradients/sub_3_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/sub_3_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
�
/gradients/sub_3_grad/tuple/control_dependency_1Identitygradients/sub_3_grad/Neg&^gradients/sub_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_3_grad/Neg
^
&gradients/add_15_grad/tuple/group_depsNoOp.^gradients/sub_3_grad/tuple/control_dependency
�
.gradients/add_15_grad/tuple/control_dependencyIdentity-gradients/sub_3_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
�
0gradients/add_15_grad/tuple/control_dependency_1Identity-gradients/sub_3_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
a
gradients/mul_7_grad/MulMul/gradients/sub_3_grad/tuple/control_dependency_1Mean_4*
T0
n
gradients/mul_7_grad/Mul_1Mul/gradients/sub_3_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
e
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Mul^gradients/mul_7_grad/Mul_1
�
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Mul&^gradients/mul_7_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_7_grad/Mul
�
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Mul_1&^gradients/mul_7_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_7_grad/Mul_1
X
gradients/Neg_5_grad/NegNeg.gradients/add_15_grad/tuple/control_dependency*
T0
b
gradients/mul_6_grad/MulMul0gradients/add_15_grad/tuple/control_dependency_1Mean_2*
T0
e
gradients/mul_6_grad/Mul_1Mul0gradients/add_15_grad/tuple/control_dependency_1mul_6/x*
T0
e
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Mul^gradients/mul_6_grad/Mul_1
�
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Mul&^gradients/mul_6_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_6_grad/Mul
�
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Mul_1&^gradients/mul_6_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_6_grad/Mul_1
Q
#gradients/Mean_4_grad/Reshape/shapeConst*
valueB:*
dtype0
�
gradients/Mean_4_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_4_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0
y
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_4_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
F
gradients/Mean_4_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_4_grad/ConstConst*
valueB: *
dtype0
�
gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_1gradients/Mean_4_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_4_grad/Const_1Const*
valueB: *
dtype0
�
gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_4_grad/MaximumMaximumgradients/Mean_4_grad/Prod_1gradients/Mean_4_grad/Maximum/y*
T0
n
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum*
T0
j
gradients/Mean_4_grad/CastCastgradients/Mean_4_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0
X
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_3_grad/ReshapeReshapegradients/Neg_5_grad/Neg#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_3_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_3_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0
�
gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0
�
gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
j
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0
�
gradients/Mean_2_grad/ReshapeReshape/gradients/mul_6_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Mean_2_grad/ConstConst*
valueB:*
dtype0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Const*

Tmultiples0*
T0
J
gradients/Mean_2_grad/Const_1Const*
valueB
 *  �?*
dtype0
l
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Const_1*
T0
>
gradients/zeros_like	ZerosLikeDynamicPartition_2*
T0
O
'gradients/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
�
&gradients/DynamicPartition_2_grad/ProdProd'gradients/DynamicPartition_2_grad/Shape'gradients/DynamicPartition_2_grad/Const*

Tidx0*
	keep_dims( *
T0
W
-gradients/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
�
'gradients/DynamicPartition_2_grad/rangeRange-gradients/DynamicPartition_2_grad/range/start&gradients/DynamicPartition_2_grad/Prod-gradients/DynamicPartition_2_grad/range/delta*

Tidx0
�
)gradients/DynamicPartition_2_grad/ReshapeReshape'gradients/DynamicPartition_2_grad/range'gradients/DynamicPartition_2_grad/Shape*
T0*
Tshape0
�
2gradients/DynamicPartition_2_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_2_grad/ReshapeCast*
num_partitions*
T0
�
/gradients/DynamicPartition_2_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_2_grad/DynamicPartition4gradients/DynamicPartition_2_grad/DynamicPartition:1gradients/zeros_likegradients/Mean_4_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_2_grad/Shape_1ShapeSum_4*
T0*
out_type0
�
+gradients/DynamicPartition_2_grad/Reshape_1Reshape/gradients/DynamicPartition_2_grad/DynamicStitch)gradients/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
@
gradients/zeros_like_1	ZerosLikeDynamicPartition_1*
T0
O
'gradients/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
�
&gradients/DynamicPartition_1_grad/ProdProd'gradients/DynamicPartition_1_grad/Shape'gradients/DynamicPartition_1_grad/Const*

Tidx0*
	keep_dims( *
T0
W
-gradients/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
�
'gradients/DynamicPartition_1_grad/rangeRange-gradients/DynamicPartition_1_grad/range/start&gradients/DynamicPartition_1_grad/Prod-gradients/DynamicPartition_1_grad/range/delta*

Tidx0
�
)gradients/DynamicPartition_1_grad/ReshapeReshape'gradients/DynamicPartition_1_grad/range'gradients/DynamicPartition_1_grad/Shape*
T0*
Tshape0
�
2gradients/DynamicPartition_1_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_1_grad/ReshapeCast*
num_partitions*
T0
�
/gradients/DynamicPartition_1_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_1_grad/DynamicPartition4gradients/DynamicPartition_1_grad/DynamicPartition:1gradients/zeros_like_1gradients/Mean_3_grad/truediv*
T0*
N
T
)gradients/DynamicPartition_1_grad/Shape_1ShapeMinimum*
T0*
out_type0
�
+gradients/DynamicPartition_1_grad/Reshape_1Reshape/gradients/DynamicPartition_1_grad/DynamicStitch)gradients/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
l
#gradients/Mean_2/input_grad/unstackUnpackgradients/Mean_2_grad/truediv*
T0*	
num*

axis 
C
gradients/Sum_4_grad/ShapeShapestack*
T0*
out_type0
r
gradients/Sum_4_grad/SizeConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_4_grad/addAddV2Sum_4/reduction_indicesgradients/Sum_4_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape
�
gradients/Sum_4_grad/modFloorModgradients/Sum_4_grad/addgradients/Sum_4_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape
t
gradients/Sum_4_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_4_grad/range/startConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_4_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_4_grad/rangeRange gradients/Sum_4_grad/range/startgradients/Sum_4_grad/Size gradients/Sum_4_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_4_grad/Shape
x
gradients/Sum_4_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_4_grad/FillFillgradients/Sum_4_grad/Shape_1gradients/Sum_4_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape*

index_type0
�
"gradients/Sum_4_grad/DynamicStitchDynamicStitchgradients/Sum_4_grad/rangegradients/Sum_4_grad/modgradients/Sum_4_grad/Shapegradients/Sum_4_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
N
w
gradients/Sum_4_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_4_grad/MaximumMaximum"gradients/Sum_4_grad/DynamicStitchgradients/Sum_4_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape
�
gradients/Sum_4_grad/floordivFloorDivgradients/Sum_4_grad/Shapegradients/Sum_4_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_4_grad/Shape
�
gradients/Sum_4_grad/ReshapeReshape+gradients/DynamicPartition_2_grad/Reshape_1"gradients/Sum_4_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_4_grad/TileTilegradients/Sum_4_grad/Reshapegradients/Sum_4_grad/floordiv*

Tmultiples0*
T0
E
gradients/Minimum_grad/ShapeShapemul_4*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_5*
T0*
out_type0
m
gradients/Minimum_grad/Shape_2Shape+gradients/DynamicPartition_1_grad/Reshape_1*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_4mul_5*
T0
�
,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0
�
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual+gradients/DynamicPartition_1_grad/Reshape_1gradients/Minimum_grad/zeros*
T0
�
gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0
�
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros+gradients/DynamicPartition_1_grad/Reshape_1*
T0
�
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
�
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
�
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0
�
gradients/Mean_1_grad/ReshapeReshape#gradients/Mean_2/input_grad/unstack#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
Q
gradients/Mean_1_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*

Tmultiples0*
T0
S
gradients/Mean_1_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0
�
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0
�
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
j
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
a
gradients/stack_grad/unstackUnpackgradients/Sum_4_grad/Tile*
T0*	
num*

axis
L
%gradients/stack_grad/tuple/group_depsNoOp^gradients/stack_grad/unstack
�
-gradients/stack_grad/tuple/control_dependencyIdentitygradients/stack_grad/unstack&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
�
/gradients/stack_grad/tuple/control_dependency_1Identitygradients/stack_grad/unstack:1&^gradients/stack_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/stack_grad/unstack
A
gradients/mul_4_grad/ShapeShapeExp*
T0*
out_type0
J
gradients/mul_4_grad/Shape_1Shape
ExpandDims*
T0*
out_type0
�
*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
e
gradients/mul_4_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
ExpandDims*
T0
�
gradients/mul_4_grad/SumSumgradients/mul_4_grad/Mul*gradients/mul_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
`
gradients/mul_4_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*
T0
�
gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/Mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
�
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
�
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
M
gradients/mul_5_grad/ShapeShapeclip_by_value_1*
T0*
out_type0
J
gradients/mul_5_grad/Shape_1Shape
ExpandDims*
T0*
out_type0
�
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0
g
gradients/mul_5_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
ExpandDims*
T0
�
gradients/mul_5_grad/SumSumgradients/mul_5_grad/Mul*gradients/mul_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0
n
gradients/mul_5_grad/Mul_1Mulclip_by_value_11gradients/Minimum_grad/tuple/control_dependency_1*
T0
�
gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/Mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
�
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_5_grad/Reshape
�
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
>
gradients/zeros_like_2	ZerosLikeDynamicPartition*
T0
M
%gradients/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
S
%gradients/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
�
$gradients/DynamicPartition_grad/ProdProd%gradients/DynamicPartition_grad/Shape%gradients/DynamicPartition_grad/Const*

Tidx0*
	keep_dims( *
T0
U
+gradients/DynamicPartition_grad/range/startConst*
value	B : *
dtype0
U
+gradients/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
�
%gradients/DynamicPartition_grad/rangeRange+gradients/DynamicPartition_grad/range/start$gradients/DynamicPartition_grad/Prod+gradients/DynamicPartition_grad/range/delta*

Tidx0
�
'gradients/DynamicPartition_grad/ReshapeReshape%gradients/DynamicPartition_grad/range%gradients/DynamicPartition_grad/Shape*
T0*
Tshape0
�
0gradients/DynamicPartition_grad/DynamicPartitionDynamicPartition'gradients/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
�
-gradients/DynamicPartition_grad/DynamicStitchDynamicStitch0gradients/DynamicPartition_grad/DynamicPartition2gradients/DynamicPartition_grad/DynamicPartition:1gradients/zeros_like_2gradients/Mean_1_grad/truediv*
T0*
N
R
'gradients/DynamicPartition_grad/Shape_1ShapeMaximum*
T0*
out_type0
�
)gradients/DynamicPartition_grad/Reshape_1Reshape-gradients/DynamicPartition_grad/DynamicStitch'gradients/DynamicPartition_grad/Shape_1*
T0*
Tshape0
�
@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
�
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape-gradients/stack_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0
�
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
�
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshape/gradients/stack_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
w
&gradients/clip_by_value_1_grad/Shape_2Shape-gradients/mul_5_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/Minimumsub_2*
T0
�
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
�
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual-gradients/mul_5_grad/tuple/control_dependency$gradients/clip_by_value_1_grad/zeros*
T0
�
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
�
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros-gradients/mul_5_grad/tuple/control_dependency*
T0
�
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0
�
/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
�
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
�
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
Q
gradients/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
k
gradients/Maximum_grad/Shape_2Shape)gradients/DynamicPartition_grad/Reshape_1*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
d
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0
�
,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0
�
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual)gradients/DynamicPartition_grad/Reshape_1gradients/Maximum_grad/zeros*
T0
�
gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0
�
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros)gradients/DynamicPartition_grad/Reshape_1*
T0
�
gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
�
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
�
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
Q
gradients/zeros_like_3	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
r
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0
�
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0
}
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0
�
4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
t
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0
�
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0
�
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
�
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul
�
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1
S
gradients/zeros_like_4	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*

Tdim0*
T0
�
6gradients/softmax_cross_entropy_with_logits_1_grad/mulMul=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0
�
=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0
�
6gradients/softmax_cross_entropy_with_logits_1_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*

Tdim0*
T0
�
8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
�
Cgradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_1_grad/mul9^gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
�
Kgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_1_grad/mulD^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul
�
Mgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
S
,gradients/clip_by_value_1/Minimum_grad/ShapeShapeExp*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0
�
.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
S
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqualExpadd_14*
T0
�
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
�
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
�
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
�
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
�
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
�
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1
�
?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape
�
Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1
�
'gradients/SquaredDifference_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0
�
$gradients/SquaredDifference_grad/MulMul'gradients/SquaredDifference_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0
�
$gradients/SquaredDifference_grad/subSubextrinsic_returnsSum_80^gradients/Maximum_grad/tuple/control_dependency*
T0
�
&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/Mul$gradients/SquaredDifference_grad/sub*
T0
[
&gradients/SquaredDifference_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_8*
T0*
out_type0
�
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
�
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
�
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0
�
1gradients/SquaredDifference_grad/tuple/group_depsNoOp%^gradients/SquaredDifference_grad/Neg)^gradients/SquaredDifference_grad/Reshape
�
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
�
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
�
)gradients/SquaredDifference_1_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0
�
&gradients/SquaredDifference_1_grad/MulMul)gradients/SquaredDifference_1_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0
�
&gradients/SquaredDifference_1_grad/subSubextrinsic_returnsadd_132^gradients/Maximum_grad/tuple/control_dependency_1*
T0
�
(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/Mul&gradients/SquaredDifference_1_grad/sub*
T0
]
(gradients/SquaredDifference_1_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
T
*gradients/SquaredDifference_1_grad/Shape_1Shapeadd_13*
T0*
out_type0
�
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0
�
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
�
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0
�
3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp'^gradients/SquaredDifference_1_grad/Neg+^gradients/SquaredDifference_1_grad/Reshape
�
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
�
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg
r
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapestrided_slice_11*
T0*
out_type0
�
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
m
@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ShapeShape	Softmax_4*
T0*
out_type0
�
Bgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1@gradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapestrided_slice_13*
T0*
out_type0
�
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ShapeShape	Softmax_5*
T0*
out_type0
�
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ReshapeReshapeMgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Bgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Shape*
T0*
Tshape0
�
gradients/AddNAddN-gradients/mul_4_grad/tuple/control_dependency?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape*
N
;
gradients/Exp_grad/mulMulgradients/AddNExp*
T0
U
gradients/Sum_8_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
r
gradients/Sum_8_grad/SizeConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_8_grad/addAddV2Sum_8/reduction_indicesgradients/Sum_8_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
�
gradients/Sum_8_grad/modFloorModgradients/Sum_8_grad/addgradients/Sum_8_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
t
gradients/Sum_8_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_8_grad/range/startConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_8_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_8_grad/rangeRange gradients/Sum_8_grad/range/startgradients/Sum_8_grad/Size gradients/Sum_8_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
x
gradients/Sum_8_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_8_grad/FillFillgradients/Sum_8_grad/Shape_1gradients/Sum_8_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape*

index_type0
�
"gradients/Sum_8_grad/DynamicStitchDynamicStitchgradients/Sum_8_grad/rangegradients/Sum_8_grad/modgradients/Sum_8_grad/Shapegradients/Sum_8_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
N
w
gradients/Sum_8_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_8_grad/MaximumMaximum"gradients/Sum_8_grad/DynamicStitchgradients/Sum_8_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
�
gradients/Sum_8_grad/floordivFloorDivgradients/Sum_8_grad/Shapegradients/Sum_8_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_8_grad/Shape
�
gradients/Sum_8_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_8_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_8_grad/TileTilegradients/Sum_8_grad/Reshapegradients/Sum_8_grad/floordiv*

Tmultiples0*
T0
W
gradients/add_13_grad/ShapeShapeextrinsic_value_estimate*
T0*
out_type0
N
gradients/add_13_grad/Shape_1Shapeclip_by_value*
T0*
out_type0
�
+gradients/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_13_grad/Shapegradients/add_13_grad/Shape_1*
T0
�
gradients/add_13_grad/SumSum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1+gradients/add_13_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/add_13_grad/ReshapeReshapegradients/add_13_grad/Sumgradients/add_13_grad/Shape*
T0*
Tshape0
�
gradients/add_13_grad/Sum_1Sum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1-gradients/add_13_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/add_13_grad/Reshape_1Reshapegradients/add_13_grad/Sum_1gradients/add_13_grad/Shape_1*
T0*
Tshape0
p
&gradients/add_13_grad/tuple/group_depsNoOp^gradients/add_13_grad/Reshape ^gradients/add_13_grad/Reshape_1
�
.gradients/add_13_grad/tuple/control_dependencyIdentitygradients/add_13_grad/Reshape'^gradients/add_13_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/add_13_grad/Reshape
�
0gradients/add_13_grad/tuple/control_dependency_1Identitygradients/add_13_grad/Reshape_1'^gradients/add_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/add_13_grad/Reshape_1
U
%gradients/strided_slice_11_grad/ShapeShapeaction_probs*
T0*
out_type0
�
0gradients/strided_slice_11_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_11_grad/Shapestrided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
{
gradients/Softmax_4_grad/mulMulBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape	Softmax_4*
T0
a
.gradients/Softmax_4_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients/Softmax_4_grad/SumSumgradients/Softmax_4_grad/mul.gradients/Softmax_4_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
�
gradients/Softmax_4_grad/subSubBgradients/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshapegradients/Softmax_4_grad/Sum*
T0
W
gradients/Softmax_4_grad/mul_1Mulgradients/Softmax_4_grad/sub	Softmax_4*
T0
U
%gradients/strided_slice_13_grad/ShapeShapeaction_probs*
T0*
out_type0
�
0gradients/strided_slice_13_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_13_grad/Shapestrided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
}
gradients/Softmax_5_grad/mulMulDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape	Softmax_5*
T0
a
.gradients/Softmax_5_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients/Softmax_5_grad/SumSumgradients/Softmax_5_grad/mul.gradients/Softmax_5_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
�
gradients/Softmax_5_grad/subSubDgradients/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshapegradients/Softmax_5_grad/Sum*
T0
W
gradients/Softmax_5_grad/mul_1Mulgradients/Softmax_5_grad/sub	Softmax_5*
T0
C
gradients/sub_1_grad/ShapeShapeSum_5*
T0*
out_type0
E
gradients/sub_1_grad/Shape_1ShapeSum_6*
T0*
out_type0
�
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0
�
gradients/sub_1_grad/SumSumgradients/Exp_grad/mul*gradients/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
@
gradients/sub_1_grad/NegNeggradients/Exp_grad/mul*
T0
�
gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
�
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
�
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
x
$gradients/clip_by_value_grad/Shape_2Shape0gradients/add_13_grad/tuple/control_dependency_1*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0*

index_type0
`
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumNeg_4*
T0
�
2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
�
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual0gradients/add_13_grad/tuple/control_dependency_1"gradients/clip_by_value_grad/zeros*
T0
�
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
�
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros0gradients/add_13_grad/tuple/control_dependency_1*
T0
�
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0
�
-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
�
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
�
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1
U
%gradients/strided_slice_10_grad/ShapeShapeaction_probs*
T0*
out_type0
�
0gradients/strided_slice_10_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_10_grad/Shapestrided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2gradients/Softmax_4_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
U
%gradients/strided_slice_12_grad/ShapeShapeaction_probs*
T0*
out_type0
�
0gradients/strided_slice_12_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_12_grad/Shapestrided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2gradients/Softmax_5_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
E
gradients/Sum_5_grad/ShapeShapestack_1*
T0*
out_type0
r
gradients/Sum_5_grad/SizeConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_5_grad/addAddV2Sum_5/reduction_indicesgradients/Sum_5_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
�
gradients/Sum_5_grad/modFloorModgradients/Sum_5_grad/addgradients/Sum_5_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
t
gradients/Sum_5_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_5_grad/range/startConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_5_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_5_grad/rangeRange gradients/Sum_5_grad/range/startgradients/Sum_5_grad/Size gradients/Sum_5_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
x
gradients/Sum_5_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_5_grad/FillFillgradients/Sum_5_grad/Shape_1gradients/Sum_5_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape*

index_type0
�
"gradients/Sum_5_grad/DynamicStitchDynamicStitchgradients/Sum_5_grad/rangegradients/Sum_5_grad/modgradients/Sum_5_grad/Shapegradients/Sum_5_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
N
w
gradients/Sum_5_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_5_grad/MaximumMaximum"gradients/Sum_5_grad/DynamicStitchgradients/Sum_5_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
�
gradients/Sum_5_grad/floordivFloorDivgradients/Sum_5_grad/Shapegradients/Sum_5_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_5_grad/Shape
�
gradients/Sum_5_grad/ReshapeReshape-gradients/sub_1_grad/tuple/control_dependency"gradients/Sum_5_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_5_grad/TileTilegradients/Sum_5_grad/Reshapegradients/Sum_5_grad/floordiv*

Tmultiples0*
T0
Q
*gradients/clip_by_value/Minimum_grad/ShapeShapesub*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0
�
,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0
\
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualsubPolynomialDecay_1*
T0
�
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
�
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
�
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
�
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
�
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0
�
5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
�
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
�
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1
c
gradients/stack_1_grad/unstackUnpackgradients/Sum_5_grad/Tile*
T0*	
num*

axis
P
'gradients/stack_1_grad/tuple/group_depsNoOp^gradients/stack_1_grad/unstack
�
/gradients/stack_1_grad/tuple/control_dependencyIdentitygradients/stack_1_grad/unstack(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
�
1gradients/stack_1_grad/tuple/control_dependency_1Identity gradients/stack_1_grad/unstack:1(^gradients/stack_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/stack_1_grad/unstack
A
gradients/sub_grad/ShapeShapeSum_7*
T0*
out_type0
V
gradients/sub_grad/Shape_1Shapeextrinsic_value_estimate*
T0*
out_type0
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
�
gradients/sub_grad/SumSum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
e
gradients/sub_grad/NegNeg=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*
T0
�
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
W
gradients/Neg_grad/NegNeg/gradients/stack_1_grad/tuple/control_dependency*
T0
[
gradients/Neg_1_grad/NegNeg1gradients/stack_1_grad/tuple/control_dependency_1*
T0
U
gradients/Sum_7_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
r
gradients/Sum_7_grad/SizeConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_7_grad/addAddV2Sum_7/reduction_indicesgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
�
gradients/Sum_7_grad/modFloorModgradients/Sum_7_grad/addgradients/Sum_7_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
t
gradients/Sum_7_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_7_grad/range/startConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_7_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_7_grad/rangeRange gradients/Sum_7_grad/range/startgradients/Sum_7_grad/Size gradients/Sum_7_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
x
gradients/Sum_7_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_7_grad/FillFillgradients/Sum_7_grad/Shape_1gradients/Sum_7_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape*

index_type0
�
"gradients/Sum_7_grad/DynamicStitchDynamicStitchgradients/Sum_7_grad/rangegradients/Sum_7_grad/modgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
N
w
gradients/Sum_7_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_7_grad/MaximumMaximum"gradients/Sum_7_grad/DynamicStitchgradients/Sum_7_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
�
gradients/Sum_7_grad/floordivFloorDivgradients/Sum_7_grad/Shapegradients/Sum_7_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_7_grad/Shape
�
gradients/Sum_7_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency"gradients/Sum_7_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_7_grad/TileTilegradients/Sum_7_grad/Reshapegradients/Sum_7_grad/floordiv*

Tmultiples0*
T0
�
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0
�
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshapegradients/Neg_grad/NegBgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0
�
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0
�
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshapegradients/Neg_1_grad/NegBgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0
�
gradients/AddN_1AddNgradients/Sum_8_grad/Tilegradients/Sum_7_grad/Tile*
T0*,
_class"
 loc:@gradients/Sum_8_grad/Tile*
N
s
2gradients/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
�
7gradients/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_13^gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad
�
?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_18^gradients/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/Sum_8_grad/Tile
�
Agradients/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad8^gradients/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad
S
gradients/zeros_like_5	ZerosLike%softmax_cross_entropy_with_logits_2:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*

Tdim0*
T0
�
6gradients/softmax_cross_entropy_with_logits_2_grad/mulMul=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0
�
=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0
�
6gradients/softmax_cross_entropy_with_logits_2_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*

Tdim0*
T0
�
8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_2_grad/Neg*
T0
�
Cgradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_2_grad/mul9^gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
�
Kgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_2_grad/mulD^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul
�
Mgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
S
gradients/zeros_like_6	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*

Tdim0*
T0
�
6gradients/softmax_cross_entropy_with_logits_3_grad/mulMul=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*
T0
�
=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0
�
6gradients/softmax_cross_entropy_with_logits_3_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*

Tdim0*
T0
�
8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_3_grad/Neg*
T0
�
Cgradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_3_grad/mul9^gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
�
Kgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_3_grad/mulD^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul
�
Mgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
�
,gradients/extrinsic_value/MatMul_grad/MatMulMatMul?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependencyextrinsic_value/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
.gradients/extrinsic_value/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
6gradients/extrinsic_value/MatMul_grad/tuple/group_depsNoOp-^gradients/extrinsic_value/MatMul_grad/MatMul/^gradients/extrinsic_value/MatMul_grad/MatMul_1
�
>gradients/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity,gradients/extrinsic_value/MatMul_grad/MatMul7^gradients/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/extrinsic_value/MatMul_grad/MatMul
�
@gradients/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity.gradients/extrinsic_value/MatMul_grad/MatMul_17^gradients/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/extrinsic_value/MatMul_grad/MatMul_1
t
@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapestrided_slice_15*
T0*
out_type0
�
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapestrided_slice_17*
T0*
out_type0
�
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0
Q
%gradients/strided_slice_15_grad/ShapeShapeconcat_2*
T0*
out_type0
�
0gradients/strided_slice_15_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_15_grad/Shapestrided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
Q
%gradients/strided_slice_17_grad/ShapeShapeconcat_2*
T0*
out_type0
�
0gradients/strided_slice_17_grad/StridedSliceGradStridedSliceGrad%gradients/strided_slice_17_grad/Shapestrided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
�
gradients/AddN_2AddN0gradients/strided_slice_15_grad/StridedSliceGrad0gradients/strided_slice_17_grad/StridedSliceGrad*
T0*C
_class9
75loc:@gradients/strided_slice_15_grad/StridedSliceGrad*
N
F
gradients/concat_2_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_2_grad/modFloorModconcat_2/axisgradients/concat_2_grad/Rank*
T0
F
gradients/concat_2_grad/ShapeShapeLog_2*
T0*
out_type0
X
gradients/concat_2_grad/ShapeNShapeNLog_2Log_3*
T0*
out_type0*
N
�
$gradients/concat_2_grad/ConcatOffsetConcatOffsetgradients/concat_2_grad/modgradients/concat_2_grad/ShapeN gradients/concat_2_grad/ShapeN:1*
N
�
gradients/concat_2_grad/SliceSlicegradients/AddN_2$gradients/concat_2_grad/ConcatOffsetgradients/concat_2_grad/ShapeN*
T0*
Index0
�
gradients/concat_2_grad/Slice_1Slicegradients/AddN_2&gradients/concat_2_grad/ConcatOffset:1 gradients/concat_2_grad/ShapeN:1*
T0*
Index0
r
(gradients/concat_2_grad/tuple/group_depsNoOp^gradients/concat_2_grad/Slice ^gradients/concat_2_grad/Slice_1
�
0gradients/concat_2_grad/tuple/control_dependencyIdentitygradients/concat_2_grad/Slice)^gradients/concat_2_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_2_grad/Slice
�
2gradients/concat_2_grad/tuple/control_dependency_1Identitygradients/concat_2_grad/Slice_1)^gradients/concat_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_2_grad/Slice_1
p
gradients/Log_2_grad/Reciprocal
Reciprocaladd_51^gradients/concat_2_grad/tuple/control_dependency*
T0
{
gradients/Log_2_grad/mulMul0gradients/concat_2_grad/tuple/control_dependencygradients/Log_2_grad/Reciprocal*
T0
r
gradients/Log_3_grad/Reciprocal
Reciprocaladd_63^gradients/concat_2_grad/tuple/control_dependency_1*
T0
}
gradients/Log_3_grad/mulMul2gradients/concat_2_grad/tuple/control_dependency_1gradients/Log_3_grad/Reciprocal*
T0
E
gradients/add_5_grad/ShapeShapetruediv*
T0*
out_type0
G
gradients/add_5_grad/Shape_1Shapeadd_5/y*
T0*
out_type0
�
*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0
�
gradients/add_5_grad/SumSumgradients/Log_2_grad/mul*gradients/add_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0
�
gradients/add_5_grad/Sum_1Sumgradients/Log_2_grad/mul,gradients/add_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
�
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape
�
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
G
gradients/add_6_grad/ShapeShape	truediv_1*
T0*
out_type0
G
gradients/add_6_grad/Shape_1Shapeadd_6/y*
T0*
out_type0
�
*gradients/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_6_grad/Shapegradients/add_6_grad/Shape_1*
T0
�
gradients/add_6_grad/SumSumgradients/Log_3_grad/mul*gradients/add_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_6_grad/ReshapeReshapegradients/add_6_grad/Sumgradients/add_6_grad/Shape*
T0*
Tshape0
�
gradients/add_6_grad/Sum_1Sumgradients/Log_3_grad/mul,gradients/add_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_6_grad/Reshape_1Reshapegradients/add_6_grad/Sum_1gradients/add_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_6_grad/tuple/group_depsNoOp^gradients/add_6_grad/Reshape^gradients/add_6_grad/Reshape_1
�
-gradients/add_6_grad/tuple/control_dependencyIdentitygradients/add_6_grad/Reshape&^gradients/add_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_6_grad/Reshape
�
/gradients/add_6_grad/tuple/control_dependency_1Identitygradients/add_6_grad/Reshape_1&^gradients/add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_6_grad/Reshape_1
C
gradients/truediv_grad/ShapeShapeMul*
T0*
out_type0
E
gradients/truediv_grad/Shape_1ShapeSum*
T0*
out_type0
�
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
f
gradients/truediv_grad/RealDivRealDiv-gradients/add_5_grad/tuple/control_dependencySum*
T0
�
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
/
gradients/truediv_grad/NegNegMul*
T0
U
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/NegSum*
T0
[
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1Sum*
T0
{
gradients/truediv_grad/mulMul-gradients/add_5_grad/tuple/control_dependency gradients/truediv_grad/RealDiv_2*
T0
�
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
�
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
�
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
G
gradients/truediv_1_grad/ShapeShapeMul_1*
T0*
out_type0
I
 gradients/truediv_1_grad/Shape_1ShapeSum_1*
T0*
out_type0
�
.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
T0
j
 gradients/truediv_1_grad/RealDivRealDiv-gradients/add_6_grad/tuple/control_dependencySum_1*
T0
�
gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
T0*
Tshape0
3
gradients/truediv_1_grad/NegNegMul_1*
T0
[
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/NegSum_1*
T0
a
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1Sum_1*
T0

gradients/truediv_1_grad/mulMul-gradients/add_6_grad/tuple/control_dependency"gradients/truediv_1_grad/RealDiv_2*
T0
�
gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
�
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape
�
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1
?
gradients/Sum_grad/ShapeShapeMul*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_grad/addAddV2Sum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
�
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*+
_class!
loc:@gradients/Sum_grad/Shape*
valueB *
dtype0
u
gradients/Sum_grad/range/startConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B : *
dtype0
u
gradients/Sum_grad/range/deltaConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
t
gradients/Sum_grad/Fill/valueConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*

index_type0
�
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N
s
gradients/Sum_grad/Maximum/yConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
�
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
�
gradients/Sum_grad/ReshapeReshape1gradients/truediv_grad/tuple/control_dependency_1 gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0
C
gradients/Sum_1_grad/ShapeShapeMul_1*
T0*
out_type0
r
gradients/Sum_1_grad/SizeConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_1_grad/addAddV2Sum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
�
gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_1_grad/range/startConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_1_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*

index_type0
�
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
N
w
gradients/Sum_1_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
�
gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
�
gradients/Sum_1_grad/ReshapeReshape3gradients/truediv_1_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*

Tmultiples0*
T0
�
gradients/AddN_3AddN/gradients/truediv_grad/tuple/control_dependencygradients/Sum_grad/Tile*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
N
A
gradients/Mul_grad/ShapeShapeadd_1*
T0*
out_type0
M
gradients/Mul_grad/Shape_1Shapestrided_slice_2*
T0*
out_type0
�
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
I
gradients/Mul_grad/MulMulgradients/AddN_3strided_slice_2*
T0
�
gradients/Mul_grad/SumSumgradients/Mul_grad/Mul(gradients/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0
A
gradients/Mul_grad/Mul_1Muladd_1gradients/AddN_3*
T0
�
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/Mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
�
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
�
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
�
gradients/AddN_4AddN1gradients/truediv_1_grad/tuple/control_dependencygradients/Sum_1_grad/Tile*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape*
N
C
gradients/Mul_1_grad/ShapeShapeadd_2*
T0*
out_type0
O
gradients/Mul_1_grad/Shape_1Shapestrided_slice_3*
T0*
out_type0
�
*gradients/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_1_grad/Shapegradients/Mul_1_grad/Shape_1*
T0
K
gradients/Mul_1_grad/MulMulgradients/AddN_4strided_slice_3*
T0
�
gradients/Mul_1_grad/SumSumgradients/Mul_1_grad/Mul*gradients/Mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Mul_1_grad/ReshapeReshapegradients/Mul_1_grad/Sumgradients/Mul_1_grad/Shape*
T0*
Tshape0
C
gradients/Mul_1_grad/Mul_1Muladd_2gradients/AddN_4*
T0
�
gradients/Mul_1_grad/Sum_1Sumgradients/Mul_1_grad/Mul_1,gradients/Mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Mul_1_grad/Reshape_1Reshapegradients/Mul_1_grad/Sum_1gradients/Mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Mul_1_grad/tuple/group_depsNoOp^gradients/Mul_1_grad/Reshape^gradients/Mul_1_grad/Reshape_1
�
-gradients/Mul_1_grad/tuple/control_dependencyIdentitygradients/Mul_1_grad/Reshape&^gradients/Mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_1_grad/Reshape
�
/gradients/Mul_1_grad/tuple/control_dependency_1Identitygradients/Mul_1_grad/Reshape_1&^gradients/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Mul_1_grad/Reshape_1
E
gradients/add_1_grad/ShapeShapeSoftmax*
T0*
out_type0
G
gradients/add_1_grad/Shape_1Shapeadd_1/y*
T0*
out_type0
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0
�
gradients/add_1_grad/SumSum+gradients/Mul_grad/tuple/control_dependency*gradients/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0
�
gradients/add_1_grad/Sum_1Sum+gradients/Mul_grad/tuple/control_dependency,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
G
gradients/add_2_grad/ShapeShape	Softmax_1*
T0*
out_type0
G
gradients/add_2_grad/Shape_1Shapeadd_2/y*
T0*
out_type0
�
*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0
�
gradients/add_2_grad/SumSum-gradients/Mul_1_grad/tuple/control_dependency*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0
�
gradients/add_2_grad/Sum_1Sum-gradients/Mul_1_grad/tuple/control_dependency,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
�
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
�
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
b
gradients/Softmax_grad/mulMul-gradients/add_1_grad/tuple/control_dependencySoftmax*
T0
_
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
u
gradients/Softmax_grad/subSub-gradients/add_1_grad/tuple/control_dependencygradients/Softmax_grad/Sum*
T0
Q
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0
f
gradients/Softmax_1_grad/mulMul-gradients/add_2_grad/tuple/control_dependency	Softmax_1*
T0
a
.gradients/Softmax_1_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients/Softmax_1_grad/SumSumgradients/Softmax_1_grad/mul.gradients/Softmax_1_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
y
gradients/Softmax_1_grad/subSub-gradients/add_2_grad/tuple/control_dependencygradients/Softmax_1_grad/Sum*
T0
W
gradients/Softmax_1_grad/mul_1Mulgradients/Softmax_1_grad/sub	Softmax_1*
T0
R
"gradients/strided_slice_grad/ShapeShapeaction_probs*
T0*
out_type0
�
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad"gradients/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2gradients/Softmax_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
T
$gradients/strided_slice_1_grad/ShapeShapeaction_probs*
T0*
out_type0
�
/gradients/strided_slice_1_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_1_grad/Shapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2gradients/Softmax_1_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
�
gradients/AddN_5AddN0gradients/strided_slice_11_grad/StridedSliceGrad0gradients/strided_slice_13_grad/StridedSliceGrad0gradients/strided_slice_10_grad/StridedSliceGrad0gradients/strided_slice_12_grad/StridedSliceGrad-gradients/strided_slice_grad/StridedSliceGrad/gradients/strided_slice_1_grad/StridedSliceGrad*
T0*C
_class9
75loc:@gradients/strided_slice_11_grad/StridedSliceGrad*
N
J
 gradients/action_probs_grad/RankConst*
value	B :*
dtype0
i
gradients/action_probs_grad/modFloorModaction_probs/axis gradients/action_probs_grad/Rank*
T0
Q
!gradients/action_probs_grad/ShapeShapedense/MatMul*
T0*
out_type0
l
"gradients/action_probs_grad/ShapeNShapeNdense/MatMuldense_1/MatMul*
T0*
out_type0*
N
�
(gradients/action_probs_grad/ConcatOffsetConcatOffsetgradients/action_probs_grad/mod"gradients/action_probs_grad/ShapeN$gradients/action_probs_grad/ShapeN:1*
N
�
!gradients/action_probs_grad/SliceSlicegradients/AddN_5(gradients/action_probs_grad/ConcatOffset"gradients/action_probs_grad/ShapeN*
T0*
Index0
�
#gradients/action_probs_grad/Slice_1Slicegradients/AddN_5*gradients/action_probs_grad/ConcatOffset:1$gradients/action_probs_grad/ShapeN:1*
T0*
Index0
~
,gradients/action_probs_grad/tuple/group_depsNoOp"^gradients/action_probs_grad/Slice$^gradients/action_probs_grad/Slice_1
�
4gradients/action_probs_grad/tuple/control_dependencyIdentity!gradients/action_probs_grad/Slice-^gradients/action_probs_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/action_probs_grad/Slice
�
6gradients/action_probs_grad/tuple/control_dependency_1Identity#gradients/action_probs_grad/Slice_1-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Slice_1
�
"gradients/dense/MatMul_grad/MatMulMatMul4gradients/action_probs_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
$gradients/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul4gradients/action_probs_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
�
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
�
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
�
$gradients/dense_1/MatMul_grad/MatMulMatMul6gradients/action_probs_grad/tuple/control_dependency_1dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
&gradients/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients/action_probs_grad/tuple/control_dependency_1*
transpose_b( *
T0*
transpose_a(
�
.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
�
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
�
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
�
gradients/AddN_6AddN>gradients/extrinsic_value/MatMul_grad/tuple/control_dependency4gradients/dense/MatMul_grad/tuple/control_dependency6gradients/dense_1/MatMul_grad/tuple/control_dependency*
T0*?
_class5
31loc:@gradients/extrinsic_value/MatMul_grad/MatMul*
N
o
.gradients/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
�
>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_1/Mul_grad/Shape0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
m
,gradients/main_graph_0/hidden_1/Mul_grad/MulMulgradients/AddN_6main_graph_0/hidden_1/Sigmoid*
T0
�
,gradients/main_graph_0/hidden_1/Mul_grad/SumSum,gradients/main_graph_0/hidden_1/Mul_grad/Mul>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
0gradients/main_graph_0/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_1/Mul_grad/Sum.gradients/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
o
.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAddgradients/AddN_6*
T0
�
.gradients/main_graph_0/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1@gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_1/Mul_grad/Sum_10gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
�
9gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_1/Mul_grad/Reshape3^gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1
�
Agradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
�
Cgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1
�
8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidCgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
�
gradients/AddN_7AddNAgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape*
N
y
8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
T0*
data_formatNHWC
�
=gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_79^gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
�
Egradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_7>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
�
Ggradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
�
2gradients/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
<gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
�
Dgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul
�
Fgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
�
>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_0/Mul_grad/Shape0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
�
,gradients/main_graph_0/hidden_0/Mul_grad/MulMulDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
�
,gradients/main_graph_0/hidden_0/Mul_grad/SumSum,gradients/main_graph_0/hidden_0/Mul_grad/Mul>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
0gradients/main_graph_0/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_0/Mul_grad/Sum.gradients/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
�
.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
�
.gradients/main_graph_0/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1@gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_0/Mul_grad/Sum_10gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
�
9gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_0/Mul_grad/Reshape3^gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
�
Agradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
�
Cgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
�
8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidCgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
�
gradients/AddN_8AddNAgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape*
N
y
8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_8*
T0*
data_formatNHWC
�
=gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_89^gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
�
Egradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_8>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
�
Ggradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
�
2gradients/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
<gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
�
Dgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul
�
Fgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
:
gradients_1/ShapeConst*
valueB *
dtype0
B
gradients_1/grad_ys_0Const*
valueB
 *  �?*
dtype0
]
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0
<
gradients_1/sub_3_grad/NegNeggradients_1/Fill*
T0
_
'gradients_1/sub_3_grad/tuple/group_depsNoOp^gradients_1/Fill^gradients_1/sub_3_grad/Neg
�
/gradients_1/sub_3_grad/tuple/control_dependencyIdentitygradients_1/Fill(^gradients_1/sub_3_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
�
1gradients_1/sub_3_grad/tuple/control_dependency_1Identitygradients_1/sub_3_grad/Neg(^gradients_1/sub_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/sub_3_grad/Neg
b
(gradients_1/add_15_grad/tuple/group_depsNoOp0^gradients_1/sub_3_grad/tuple/control_dependency
�
0gradients_1/add_15_grad/tuple/control_dependencyIdentity/gradients_1/sub_3_grad/tuple/control_dependency)^gradients_1/add_15_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
�
2gradients_1/add_15_grad/tuple/control_dependency_1Identity/gradients_1/sub_3_grad/tuple/control_dependency)^gradients_1/add_15_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
e
gradients_1/mul_7_grad/MulMul1gradients_1/sub_3_grad/tuple/control_dependency_1Mean_4*
T0
r
gradients_1/mul_7_grad/Mul_1Mul1gradients_1/sub_3_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
k
'gradients_1/mul_7_grad/tuple/group_depsNoOp^gradients_1/mul_7_grad/Mul^gradients_1/mul_7_grad/Mul_1
�
/gradients_1/mul_7_grad/tuple/control_dependencyIdentitygradients_1/mul_7_grad/Mul(^gradients_1/mul_7_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_7_grad/Mul
�
1gradients_1/mul_7_grad/tuple/control_dependency_1Identitygradients_1/mul_7_grad/Mul_1(^gradients_1/mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_7_grad/Mul_1
\
gradients_1/Neg_5_grad/NegNeg0gradients_1/add_15_grad/tuple/control_dependency*
T0
f
gradients_1/mul_6_grad/MulMul2gradients_1/add_15_grad/tuple/control_dependency_1Mean_2*
T0
i
gradients_1/mul_6_grad/Mul_1Mul2gradients_1/add_15_grad/tuple/control_dependency_1mul_6/x*
T0
k
'gradients_1/mul_6_grad/tuple/group_depsNoOp^gradients_1/mul_6_grad/Mul^gradients_1/mul_6_grad/Mul_1
�
/gradients_1/mul_6_grad/tuple/control_dependencyIdentitygradients_1/mul_6_grad/Mul(^gradients_1/mul_6_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_6_grad/Mul
�
1gradients_1/mul_6_grad/tuple/control_dependency_1Identitygradients_1/mul_6_grad/Mul_1(^gradients_1/mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_6_grad/Mul_1
S
%gradients_1/Mean_4_grad/Reshape/shapeConst*
valueB:*
dtype0
�
gradients_1/Mean_4_grad/ReshapeReshape1gradients_1/mul_7_grad/tuple/control_dependency_1%gradients_1/Mean_4_grad/Reshape/shape*
T0*
Tshape0
U
gradients_1/Mean_4_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0

gradients_1/Mean_4_grad/TileTilegradients_1/Mean_4_grad/Reshapegradients_1/Mean_4_grad/Shape*

Tmultiples0*
T0
W
gradients_1/Mean_4_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
H
gradients_1/Mean_4_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_4_grad/ConstConst*
valueB: *
dtype0
�
gradients_1/Mean_4_grad/ProdProdgradients_1/Mean_4_grad/Shape_1gradients_1/Mean_4_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_4_grad/Const_1Const*
valueB: *
dtype0
�
gradients_1/Mean_4_grad/Prod_1Prodgradients_1/Mean_4_grad/Shape_2gradients_1/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_4_grad/MaximumMaximumgradients_1/Mean_4_grad/Prod_1!gradients_1/Mean_4_grad/Maximum/y*
T0
t
 gradients_1/Mean_4_grad/floordivFloorDivgradients_1/Mean_4_grad/Prodgradients_1/Mean_4_grad/Maximum*
T0
n
gradients_1/Mean_4_grad/CastCast gradients_1/Mean_4_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_4_grad/truedivRealDivgradients_1/Mean_4_grad/Tilegradients_1/Mean_4_grad/Cast*
T0
Z
%gradients_1/Mean_3_grad/Reshape/shapeConst*
valueB"      *
dtype0
�
gradients_1/Mean_3_grad/ReshapeReshapegradients_1/Neg_5_grad/Neg%gradients_1/Mean_3_grad/Reshape/shape*
T0*
Tshape0
U
gradients_1/Mean_3_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0

gradients_1/Mean_3_grad/TileTilegradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Shape*

Tmultiples0*
T0
W
gradients_1/Mean_3_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
H
gradients_1/Mean_3_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_3_grad/ConstConst*
valueB: *
dtype0
�
gradients_1/Mean_3_grad/ProdProdgradients_1/Mean_3_grad/Shape_1gradients_1/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_3_grad/Const_1Const*
valueB: *
dtype0
�
gradients_1/Mean_3_grad/Prod_1Prodgradients_1/Mean_3_grad/Shape_2gradients_1/Mean_3_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_3_grad/MaximumMaximumgradients_1/Mean_3_grad/Prod_1!gradients_1/Mean_3_grad/Maximum/y*
T0
t
 gradients_1/Mean_3_grad/floordivFloorDivgradients_1/Mean_3_grad/Prodgradients_1/Mean_3_grad/Maximum*
T0
n
gradients_1/Mean_3_grad/CastCast gradients_1/Mean_3_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_3_grad/truedivRealDivgradients_1/Mean_3_grad/Tilegradients_1/Mean_3_grad/Cast*
T0
S
%gradients_1/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0
�
gradients_1/Mean_2_grad/ReshapeReshape1gradients_1/mul_6_grad/tuple/control_dependency_1%gradients_1/Mean_2_grad/Reshape/shape*
T0*
Tshape0
K
gradients_1/Mean_2_grad/ConstConst*
valueB:*
dtype0

gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Const*

Tmultiples0*
T0
L
gradients_1/Mean_2_grad/Const_1Const*
valueB
 *  �?*
dtype0
r
gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Const_1*
T0
@
gradients_1/zeros_like	ZerosLikeDynamicPartition_2*
T0
Q
)gradients_1/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
W
)gradients_1/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
�
(gradients_1/DynamicPartition_2_grad/ProdProd)gradients_1/DynamicPartition_2_grad/Shape)gradients_1/DynamicPartition_2_grad/Const*

Tidx0*
	keep_dims( *
T0
Y
/gradients_1/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
Y
/gradients_1/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
�
)gradients_1/DynamicPartition_2_grad/rangeRange/gradients_1/DynamicPartition_2_grad/range/start(gradients_1/DynamicPartition_2_grad/Prod/gradients_1/DynamicPartition_2_grad/range/delta*

Tidx0
�
+gradients_1/DynamicPartition_2_grad/ReshapeReshape)gradients_1/DynamicPartition_2_grad/range)gradients_1/DynamicPartition_2_grad/Shape*
T0*
Tshape0
�
4gradients_1/DynamicPartition_2_grad/DynamicPartitionDynamicPartition+gradients_1/DynamicPartition_2_grad/ReshapeCast*
num_partitions*
T0
�
1gradients_1/DynamicPartition_2_grad/DynamicStitchDynamicStitch4gradients_1/DynamicPartition_2_grad/DynamicPartition6gradients_1/DynamicPartition_2_grad/DynamicPartition:1gradients_1/zeros_likegradients_1/Mean_4_grad/truediv*
T0*
N
T
+gradients_1/DynamicPartition_2_grad/Shape_1ShapeSum_4*
T0*
out_type0
�
-gradients_1/DynamicPartition_2_grad/Reshape_1Reshape1gradients_1/DynamicPartition_2_grad/DynamicStitch+gradients_1/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
B
gradients_1/zeros_like_1	ZerosLikeDynamicPartition_1*
T0
Q
)gradients_1/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
W
)gradients_1/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
�
(gradients_1/DynamicPartition_1_grad/ProdProd)gradients_1/DynamicPartition_1_grad/Shape)gradients_1/DynamicPartition_1_grad/Const*

Tidx0*
	keep_dims( *
T0
Y
/gradients_1/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
Y
/gradients_1/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
�
)gradients_1/DynamicPartition_1_grad/rangeRange/gradients_1/DynamicPartition_1_grad/range/start(gradients_1/DynamicPartition_1_grad/Prod/gradients_1/DynamicPartition_1_grad/range/delta*

Tidx0
�
+gradients_1/DynamicPartition_1_grad/ReshapeReshape)gradients_1/DynamicPartition_1_grad/range)gradients_1/DynamicPartition_1_grad/Shape*
T0*
Tshape0
�
4gradients_1/DynamicPartition_1_grad/DynamicPartitionDynamicPartition+gradients_1/DynamicPartition_1_grad/ReshapeCast*
num_partitions*
T0
�
1gradients_1/DynamicPartition_1_grad/DynamicStitchDynamicStitch4gradients_1/DynamicPartition_1_grad/DynamicPartition6gradients_1/DynamicPartition_1_grad/DynamicPartition:1gradients_1/zeros_like_1gradients_1/Mean_3_grad/truediv*
T0*
N
V
+gradients_1/DynamicPartition_1_grad/Shape_1ShapeMinimum*
T0*
out_type0
�
-gradients_1/DynamicPartition_1_grad/Reshape_1Reshape1gradients_1/DynamicPartition_1_grad/DynamicStitch+gradients_1/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
p
%gradients_1/Mean_2/input_grad/unstackUnpackgradients_1/Mean_2_grad/truediv*
T0*	
num*

axis 
E
gradients_1/Sum_4_grad/ShapeShapestack*
T0*
out_type0
v
gradients_1/Sum_4_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_4_grad/addAddV2Sum_4/reduction_indicesgradients_1/Sum_4_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape
�
gradients_1/Sum_4_grad/modFloorModgradients_1/Sum_4_grad/addgradients_1/Sum_4_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape
x
gradients_1/Sum_4_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_4_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_4_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_4_grad/rangeRange"gradients_1/Sum_4_grad/range/startgradients_1/Sum_4_grad/Size"gradients_1/Sum_4_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape
|
!gradients_1/Sum_4_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_4_grad/FillFillgradients_1/Sum_4_grad/Shape_1!gradients_1/Sum_4_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*

index_type0
�
$gradients_1/Sum_4_grad/DynamicStitchDynamicStitchgradients_1/Sum_4_grad/rangegradients_1/Sum_4_grad/modgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*
N
{
 gradients_1/Sum_4_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_4_grad/MaximumMaximum$gradients_1/Sum_4_grad/DynamicStitch gradients_1/Sum_4_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape
�
gradients_1/Sum_4_grad/floordivFloorDivgradients_1/Sum_4_grad/Shapegradients_1/Sum_4_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_4_grad/Shape
�
gradients_1/Sum_4_grad/ReshapeReshape-gradients_1/DynamicPartition_2_grad/Reshape_1$gradients_1/Sum_4_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_4_grad/TileTilegradients_1/Sum_4_grad/Reshapegradients_1/Sum_4_grad/floordiv*

Tmultiples0*
T0
G
gradients_1/Minimum_grad/ShapeShapemul_4*
T0*
out_type0
I
 gradients_1/Minimum_grad/Shape_1Shapemul_5*
T0*
out_type0
q
 gradients_1/Minimum_grad/Shape_2Shape-gradients_1/DynamicPartition_1_grad/Reshape_1*
T0*
out_type0
Q
$gradients_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
gradients_1/Minimum_grad/zerosFill gradients_1/Minimum_grad/Shape_2$gradients_1/Minimum_grad/zeros/Const*
T0*

index_type0
F
"gradients_1/Minimum_grad/LessEqual	LessEqualmul_4mul_5*
T0
�
.gradients_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Minimum_grad/Shape gradients_1/Minimum_grad/Shape_1*
T0
�
gradients_1/Minimum_grad/SelectSelect"gradients_1/Minimum_grad/LessEqual-gradients_1/DynamicPartition_1_grad/Reshape_1gradients_1/Minimum_grad/zeros*
T0
�
gradients_1/Minimum_grad/SumSumgradients_1/Minimum_grad/Select.gradients_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/Minimum_grad/ReshapeReshapegradients_1/Minimum_grad/Sumgradients_1/Minimum_grad/Shape*
T0*
Tshape0
�
!gradients_1/Minimum_grad/Select_1Select"gradients_1/Minimum_grad/LessEqualgradients_1/Minimum_grad/zeros-gradients_1/DynamicPartition_1_grad/Reshape_1*
T0
�
gradients_1/Minimum_grad/Sum_1Sum!gradients_1/Minimum_grad/Select_10gradients_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
"gradients_1/Minimum_grad/Reshape_1Reshapegradients_1/Minimum_grad/Sum_1 gradients_1/Minimum_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/Minimum_grad/tuple/group_depsNoOp!^gradients_1/Minimum_grad/Reshape#^gradients_1/Minimum_grad/Reshape_1
�
1gradients_1/Minimum_grad/tuple/control_dependencyIdentity gradients_1/Minimum_grad/Reshape*^gradients_1/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Minimum_grad/Reshape
�
3gradients_1/Minimum_grad/tuple/control_dependency_1Identity"gradients_1/Minimum_grad/Reshape_1*^gradients_1/Minimum_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/Minimum_grad/Reshape_1
S
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0
�
gradients_1/Mean_1_grad/ReshapeReshape%gradients_1/Mean_2/input_grad/unstack%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0
S
gradients_1/Mean_1_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0

gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0
U
gradients_1/Mean_1_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
H
gradients_1/Mean_1_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_1_grad/ConstConst*
valueB: *
dtype0
�
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0
�
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0
t
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0
n
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0
e
gradients_1/stack_grad/unstackUnpackgradients_1/Sum_4_grad/Tile*
T0*	
num*

axis
P
'gradients_1/stack_grad/tuple/group_depsNoOp^gradients_1/stack_grad/unstack
�
/gradients_1/stack_grad/tuple/control_dependencyIdentitygradients_1/stack_grad/unstack(^gradients_1/stack_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/stack_grad/unstack
�
1gradients_1/stack_grad/tuple/control_dependency_1Identity gradients_1/stack_grad/unstack:1(^gradients_1/stack_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/stack_grad/unstack
C
gradients_1/mul_4_grad/ShapeShapeExp*
T0*
out_type0
L
gradients_1/mul_4_grad/Shape_1Shape
ExpandDims*
T0*
out_type0
�
,gradients_1/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_4_grad/Shapegradients_1/mul_4_grad/Shape_1*
T0
i
gradients_1/mul_4_grad/MulMul1gradients_1/Minimum_grad/tuple/control_dependency
ExpandDims*
T0
�
gradients_1/mul_4_grad/SumSumgradients_1/mul_4_grad/Mul,gradients_1/mul_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_4_grad/ReshapeReshapegradients_1/mul_4_grad/Sumgradients_1/mul_4_grad/Shape*
T0*
Tshape0
d
gradients_1/mul_4_grad/Mul_1MulExp1gradients_1/Minimum_grad/tuple/control_dependency*
T0
�
gradients_1/mul_4_grad/Sum_1Sumgradients_1/mul_4_grad/Mul_1.gradients_1/mul_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/mul_4_grad/Reshape_1Reshapegradients_1/mul_4_grad/Sum_1gradients_1/mul_4_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_4_grad/tuple/group_depsNoOp^gradients_1/mul_4_grad/Reshape!^gradients_1/mul_4_grad/Reshape_1
�
/gradients_1/mul_4_grad/tuple/control_dependencyIdentitygradients_1/mul_4_grad/Reshape(^gradients_1/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_4_grad/Reshape
�
1gradients_1/mul_4_grad/tuple/control_dependency_1Identity gradients_1/mul_4_grad/Reshape_1(^gradients_1/mul_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_4_grad/Reshape_1
O
gradients_1/mul_5_grad/ShapeShapeclip_by_value_1*
T0*
out_type0
L
gradients_1/mul_5_grad/Shape_1Shape
ExpandDims*
T0*
out_type0
�
,gradients_1/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_5_grad/Shapegradients_1/mul_5_grad/Shape_1*
T0
k
gradients_1/mul_5_grad/MulMul3gradients_1/Minimum_grad/tuple/control_dependency_1
ExpandDims*
T0
�
gradients_1/mul_5_grad/SumSumgradients_1/mul_5_grad/Mul,gradients_1/mul_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_5_grad/ReshapeReshapegradients_1/mul_5_grad/Sumgradients_1/mul_5_grad/Shape*
T0*
Tshape0
r
gradients_1/mul_5_grad/Mul_1Mulclip_by_value_13gradients_1/Minimum_grad/tuple/control_dependency_1*
T0
�
gradients_1/mul_5_grad/Sum_1Sumgradients_1/mul_5_grad/Mul_1.gradients_1/mul_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/mul_5_grad/Reshape_1Reshapegradients_1/mul_5_grad/Sum_1gradients_1/mul_5_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_5_grad/tuple/group_depsNoOp^gradients_1/mul_5_grad/Reshape!^gradients_1/mul_5_grad/Reshape_1
�
/gradients_1/mul_5_grad/tuple/control_dependencyIdentitygradients_1/mul_5_grad/Reshape(^gradients_1/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_5_grad/Reshape
�
1gradients_1/mul_5_grad/tuple/control_dependency_1Identity gradients_1/mul_5_grad/Reshape_1(^gradients_1/mul_5_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_5_grad/Reshape_1
@
gradients_1/zeros_like_2	ZerosLikeDynamicPartition*
T0
O
'gradients_1/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients_1/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
�
&gradients_1/DynamicPartition_grad/ProdProd'gradients_1/DynamicPartition_grad/Shape'gradients_1/DynamicPartition_grad/Const*

Tidx0*
	keep_dims( *
T0
W
-gradients_1/DynamicPartition_grad/range/startConst*
value	B : *
dtype0
W
-gradients_1/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
�
'gradients_1/DynamicPartition_grad/rangeRange-gradients_1/DynamicPartition_grad/range/start&gradients_1/DynamicPartition_grad/Prod-gradients_1/DynamicPartition_grad/range/delta*

Tidx0
�
)gradients_1/DynamicPartition_grad/ReshapeReshape'gradients_1/DynamicPartition_grad/range'gradients_1/DynamicPartition_grad/Shape*
T0*
Tshape0
�
2gradients_1/DynamicPartition_grad/DynamicPartitionDynamicPartition)gradients_1/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
�
/gradients_1/DynamicPartition_grad/DynamicStitchDynamicStitch2gradients_1/DynamicPartition_grad/DynamicPartition4gradients_1/DynamicPartition_grad/DynamicPartition:1gradients_1/zeros_like_2gradients_1/Mean_1_grad/truediv*
T0*
N
T
)gradients_1/DynamicPartition_grad/Shape_1ShapeMaximum*
T0*
out_type0
�
+gradients_1/DynamicPartition_grad/Reshape_1Reshape/gradients_1/DynamicPartition_grad/DynamicStitch)gradients_1/DynamicPartition_grad/Shape_1*
T0*
Tshape0
�
Bgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
�
Dgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape/gradients_1/stack_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0
�
Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
�
Fgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshape1gradients_1/stack_grad/tuple/control_dependency_1Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0
a
&gradients_1/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
Q
(gradients_1/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
{
(gradients_1/clip_by_value_1_grad/Shape_2Shape/gradients_1/mul_5_grad/tuple/control_dependency*
T0*
out_type0
Y
,gradients_1/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
&gradients_1/clip_by_value_1_grad/zerosFill(gradients_1/clip_by_value_1_grad/Shape_2,gradients_1/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
f
-gradients_1/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/Minimumsub_2*
T0
�
6gradients_1/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients_1/clip_by_value_1_grad/Shape(gradients_1/clip_by_value_1_grad/Shape_1*
T0
�
'gradients_1/clip_by_value_1_grad/SelectSelect-gradients_1/clip_by_value_1_grad/GreaterEqual/gradients_1/mul_5_grad/tuple/control_dependency&gradients_1/clip_by_value_1_grad/zeros*
T0
�
$gradients_1/clip_by_value_1_grad/SumSum'gradients_1/clip_by_value_1_grad/Select6gradients_1/clip_by_value_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
(gradients_1/clip_by_value_1_grad/ReshapeReshape$gradients_1/clip_by_value_1_grad/Sum&gradients_1/clip_by_value_1_grad/Shape*
T0*
Tshape0
�
)gradients_1/clip_by_value_1_grad/Select_1Select-gradients_1/clip_by_value_1_grad/GreaterEqual&gradients_1/clip_by_value_1_grad/zeros/gradients_1/mul_5_grad/tuple/control_dependency*
T0
�
&gradients_1/clip_by_value_1_grad/Sum_1Sum)gradients_1/clip_by_value_1_grad/Select_18gradients_1/clip_by_value_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
*gradients_1/clip_by_value_1_grad/Reshape_1Reshape&gradients_1/clip_by_value_1_grad/Sum_1(gradients_1/clip_by_value_1_grad/Shape_1*
T0*
Tshape0
�
1gradients_1/clip_by_value_1_grad/tuple/group_depsNoOp)^gradients_1/clip_by_value_1_grad/Reshape+^gradients_1/clip_by_value_1_grad/Reshape_1
�
9gradients_1/clip_by_value_1_grad/tuple/control_dependencyIdentity(gradients_1/clip_by_value_1_grad/Reshape2^gradients_1/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/clip_by_value_1_grad/Reshape
�
;gradients_1/clip_by_value_1_grad/tuple/control_dependency_1Identity*gradients_1/clip_by_value_1_grad/Reshape_12^gradients_1/clip_by_value_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/clip_by_value_1_grad/Reshape_1
S
gradients_1/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
W
 gradients_1/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
o
 gradients_1/Maximum_grad/Shape_2Shape+gradients_1/DynamicPartition_grad/Reshape_1*
T0*
out_type0
Q
$gradients_1/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
gradients_1/Maximum_grad/zerosFill gradients_1/Maximum_grad/Shape_2$gradients_1/Maximum_grad/zeros/Const*
T0*

index_type0
f
%gradients_1/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0
�
.gradients_1/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Maximum_grad/Shape gradients_1/Maximum_grad/Shape_1*
T0
�
gradients_1/Maximum_grad/SelectSelect%gradients_1/Maximum_grad/GreaterEqual+gradients_1/DynamicPartition_grad/Reshape_1gradients_1/Maximum_grad/zeros*
T0
�
gradients_1/Maximum_grad/SumSumgradients_1/Maximum_grad/Select.gradients_1/Maximum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/Maximum_grad/ReshapeReshapegradients_1/Maximum_grad/Sumgradients_1/Maximum_grad/Shape*
T0*
Tshape0
�
!gradients_1/Maximum_grad/Select_1Select%gradients_1/Maximum_grad/GreaterEqualgradients_1/Maximum_grad/zeros+gradients_1/DynamicPartition_grad/Reshape_1*
T0
�
gradients_1/Maximum_grad/Sum_1Sum!gradients_1/Maximum_grad/Select_10gradients_1/Maximum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
"gradients_1/Maximum_grad/Reshape_1Reshapegradients_1/Maximum_grad/Sum_1 gradients_1/Maximum_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/Maximum_grad/tuple/group_depsNoOp!^gradients_1/Maximum_grad/Reshape#^gradients_1/Maximum_grad/Reshape_1
�
1gradients_1/Maximum_grad/tuple/control_dependencyIdentity gradients_1/Maximum_grad/Reshape*^gradients_1/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Maximum_grad/Reshape
�
3gradients_1/Maximum_grad/tuple/control_dependency_1Identity"gradients_1/Maximum_grad/Reshape_1*^gradients_1/Maximum_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/Maximum_grad/Reshape_1
S
gradients_1/zeros_like_3	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
t
Agradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
=gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsDgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0
�
6gradients_1/softmax_cross_entropy_with_logits_grad/mulMul=gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0

=gradients_1/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0
�
6gradients_1/softmax_cross_entropy_with_logits_grad/NegNeg=gradients_1/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
?gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsDgradients_1/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0
�
8gradients_1/softmax_cross_entropy_with_logits_grad/mul_1Mul?gradients_1/softmax_cross_entropy_with_logits_grad/ExpandDims_16gradients_1/softmax_cross_entropy_with_logits_grad/Neg*
T0
�
Cgradients_1/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp7^gradients_1/softmax_cross_entropy_with_logits_grad/mul9^gradients_1/softmax_cross_entropy_with_logits_grad/mul_1
�
Kgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity6gradients_1/softmax_cross_entropy_with_logits_grad/mulD^gradients_1/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/softmax_cross_entropy_with_logits_grad/mul
�
Mgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity8gradients_1/softmax_cross_entropy_with_logits_grad/mul_1D^gradients_1/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_grad/mul_1
U
gradients_1/zeros_like_4	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
?gradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*

Tdim0*
T0
�
8gradients_1/softmax_cross_entropy_with_logits_1_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0
�
?gradients_1/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0
�
8gradients_1/softmax_cross_entropy_with_logits_1_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
Agradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*

Tdim0*
T0
�
:gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_1_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
�
Egradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_1_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1
�
Mgradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_1_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_1_grad/mul
�
Ogradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_1_grad/mul_1
U
.gradients_1/clip_by_value_1/Minimum_grad/ShapeShapeExp*
T0*
out_type0
Y
0gradients_1/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0
�
0gradients_1/clip_by_value_1/Minimum_grad/Shape_2Shape9gradients_1/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
a
4gradients_1/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
.gradients_1/clip_by_value_1/Minimum_grad/zerosFill0gradients_1/clip_by_value_1/Minimum_grad/Shape_24gradients_1/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
U
2gradients_1/clip_by_value_1/Minimum_grad/LessEqual	LessEqualExpadd_14*
T0
�
>gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients_1/clip_by_value_1/Minimum_grad/Shape0gradients_1/clip_by_value_1/Minimum_grad/Shape_1*
T0
�
/gradients_1/clip_by_value_1/Minimum_grad/SelectSelect2gradients_1/clip_by_value_1/Minimum_grad/LessEqual9gradients_1/clip_by_value_1_grad/tuple/control_dependency.gradients_1/clip_by_value_1/Minimum_grad/zeros*
T0
�
,gradients_1/clip_by_value_1/Minimum_grad/SumSum/gradients_1/clip_by_value_1/Minimum_grad/Select>gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
0gradients_1/clip_by_value_1/Minimum_grad/ReshapeReshape,gradients_1/clip_by_value_1/Minimum_grad/Sum.gradients_1/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
�
1gradients_1/clip_by_value_1/Minimum_grad/Select_1Select2gradients_1/clip_by_value_1/Minimum_grad/LessEqual.gradients_1/clip_by_value_1/Minimum_grad/zeros9gradients_1/clip_by_value_1_grad/tuple/control_dependency*
T0
�
.gradients_1/clip_by_value_1/Minimum_grad/Sum_1Sum1gradients_1/clip_by_value_1/Minimum_grad/Select_1@gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
2gradients_1/clip_by_value_1/Minimum_grad/Reshape_1Reshape.gradients_1/clip_by_value_1/Minimum_grad/Sum_10gradients_1/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
�
9gradients_1/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp1^gradients_1/clip_by_value_1/Minimum_grad/Reshape3^gradients_1/clip_by_value_1/Minimum_grad/Reshape_1
�
Agradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity0gradients_1/clip_by_value_1/Minimum_grad/Reshape:^gradients_1/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/clip_by_value_1/Minimum_grad/Reshape
�
Cgradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity2gradients_1/clip_by_value_1/Minimum_grad/Reshape_1:^gradients_1/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/clip_by_value_1/Minimum_grad/Reshape_1
�
)gradients_1/SquaredDifference_grad/scalarConst2^gradients_1/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0
�
&gradients_1/SquaredDifference_grad/MulMul)gradients_1/SquaredDifference_grad/scalar1gradients_1/Maximum_grad/tuple/control_dependency*
T0
�
&gradients_1/SquaredDifference_grad/subSubextrinsic_returnsSum_82^gradients_1/Maximum_grad/tuple/control_dependency*
T0
�
(gradients_1/SquaredDifference_grad/mul_1Mul&gradients_1/SquaredDifference_grad/Mul&gradients_1/SquaredDifference_grad/sub*
T0
]
(gradients_1/SquaredDifference_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
S
*gradients_1/SquaredDifference_grad/Shape_1ShapeSum_8*
T0*
out_type0
�
8gradients_1/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients_1/SquaredDifference_grad/Shape*gradients_1/SquaredDifference_grad/Shape_1*
T0
�
&gradients_1/SquaredDifference_grad/SumSum(gradients_1/SquaredDifference_grad/mul_18gradients_1/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
*gradients_1/SquaredDifference_grad/ReshapeReshape&gradients_1/SquaredDifference_grad/Sum(gradients_1/SquaredDifference_grad/Shape*
T0*
Tshape0
�
(gradients_1/SquaredDifference_grad/Sum_1Sum(gradients_1/SquaredDifference_grad/mul_1:gradients_1/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
,gradients_1/SquaredDifference_grad/Reshape_1Reshape(gradients_1/SquaredDifference_grad/Sum_1*gradients_1/SquaredDifference_grad/Shape_1*
T0*
Tshape0
d
&gradients_1/SquaredDifference_grad/NegNeg,gradients_1/SquaredDifference_grad/Reshape_1*
T0
�
3gradients_1/SquaredDifference_grad/tuple/group_depsNoOp'^gradients_1/SquaredDifference_grad/Neg+^gradients_1/SquaredDifference_grad/Reshape
�
;gradients_1/SquaredDifference_grad/tuple/control_dependencyIdentity*gradients_1/SquaredDifference_grad/Reshape4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/SquaredDifference_grad/Reshape
�
=gradients_1/SquaredDifference_grad/tuple/control_dependency_1Identity&gradients_1/SquaredDifference_grad/Neg4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/SquaredDifference_grad/Neg
�
+gradients_1/SquaredDifference_1_grad/scalarConst4^gradients_1/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0
�
(gradients_1/SquaredDifference_1_grad/MulMul+gradients_1/SquaredDifference_1_grad/scalar3gradients_1/Maximum_grad/tuple/control_dependency_1*
T0
�
(gradients_1/SquaredDifference_1_grad/subSubextrinsic_returnsadd_134^gradients_1/Maximum_grad/tuple/control_dependency_1*
T0
�
*gradients_1/SquaredDifference_1_grad/mul_1Mul(gradients_1/SquaredDifference_1_grad/Mul(gradients_1/SquaredDifference_1_grad/sub*
T0
_
*gradients_1/SquaredDifference_1_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
V
,gradients_1/SquaredDifference_1_grad/Shape_1Shapeadd_13*
T0*
out_type0
�
:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients_1/SquaredDifference_1_grad/Shape,gradients_1/SquaredDifference_1_grad/Shape_1*
T0
�
(gradients_1/SquaredDifference_1_grad/SumSum*gradients_1/SquaredDifference_1_grad/mul_1:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
,gradients_1/SquaredDifference_1_grad/ReshapeReshape(gradients_1/SquaredDifference_1_grad/Sum*gradients_1/SquaredDifference_1_grad/Shape*
T0*
Tshape0
�
*gradients_1/SquaredDifference_1_grad/Sum_1Sum*gradients_1/SquaredDifference_1_grad/mul_1<gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
.gradients_1/SquaredDifference_1_grad/Reshape_1Reshape*gradients_1/SquaredDifference_1_grad/Sum_1,gradients_1/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
h
(gradients_1/SquaredDifference_1_grad/NegNeg.gradients_1/SquaredDifference_1_grad/Reshape_1*
T0
�
5gradients_1/SquaredDifference_1_grad/tuple/group_depsNoOp)^gradients_1/SquaredDifference_1_grad/Neg-^gradients_1/SquaredDifference_1_grad/Reshape
�
=gradients_1/SquaredDifference_1_grad/tuple/control_dependencyIdentity,gradients_1/SquaredDifference_1_grad/Reshape6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_1_grad/Reshape
�
?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1Identity(gradients_1/SquaredDifference_1_grad/Neg6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_1_grad/Neg
t
@gradients_1/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapestrided_slice_11*
T0*
out_type0
�
Bgradients_1/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeKgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependency@gradients_1/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
o
Bgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/ShapeShape	Softmax_4*
T0*
out_type0
�
Dgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Bgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapestrided_slice_13*
T0*
out_type0
�
Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0
q
Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ShapeShape	Softmax_5*
T0*
out_type0
�
Fgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/ReshapeReshapeOgradients_1/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Shape*
T0*
Tshape0
�
gradients_1/AddNAddN/gradients_1/mul_4_grad/tuple/control_dependencyAgradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependency*
T0*1
_class'
%#loc:@gradients_1/mul_4_grad/Reshape*
N
?
gradients_1/Exp_grad/mulMulgradients_1/AddNExp*
T0
W
gradients_1/Sum_8_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
v
gradients_1/Sum_8_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_8_grad/addAddV2Sum_8/reduction_indicesgradients_1/Sum_8_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
�
gradients_1/Sum_8_grad/modFloorModgradients_1/Sum_8_grad/addgradients_1/Sum_8_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
x
gradients_1/Sum_8_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_8_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_8_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_8_grad/rangeRange"gradients_1/Sum_8_grad/range/startgradients_1/Sum_8_grad/Size"gradients_1/Sum_8_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
|
!gradients_1/Sum_8_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_8_grad/FillFillgradients_1/Sum_8_grad/Shape_1!gradients_1/Sum_8_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*

index_type0
�
$gradients_1/Sum_8_grad/DynamicStitchDynamicStitchgradients_1/Sum_8_grad/rangegradients_1/Sum_8_grad/modgradients_1/Sum_8_grad/Shapegradients_1/Sum_8_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
N
{
 gradients_1/Sum_8_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_8_grad/MaximumMaximum$gradients_1/Sum_8_grad/DynamicStitch gradients_1/Sum_8_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
�
gradients_1/Sum_8_grad/floordivFloorDivgradients_1/Sum_8_grad/Shapegradients_1/Sum_8_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_8_grad/Shape
�
gradients_1/Sum_8_grad/ReshapeReshape=gradients_1/SquaredDifference_grad/tuple/control_dependency_1$gradients_1/Sum_8_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_8_grad/TileTilegradients_1/Sum_8_grad/Reshapegradients_1/Sum_8_grad/floordiv*

Tmultiples0*
T0
Y
gradients_1/add_13_grad/ShapeShapeextrinsic_value_estimate*
T0*
out_type0
P
gradients_1/add_13_grad/Shape_1Shapeclip_by_value*
T0*
out_type0
�
-gradients_1/add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_13_grad/Shapegradients_1/add_13_grad/Shape_1*
T0
�
gradients_1/add_13_grad/SumSum?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1-gradients_1/add_13_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
}
gradients_1/add_13_grad/ReshapeReshapegradients_1/add_13_grad/Sumgradients_1/add_13_grad/Shape*
T0*
Tshape0
�
gradients_1/add_13_grad/Sum_1Sum?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1/gradients_1/add_13_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
!gradients_1/add_13_grad/Reshape_1Reshapegradients_1/add_13_grad/Sum_1gradients_1/add_13_grad/Shape_1*
T0*
Tshape0
v
(gradients_1/add_13_grad/tuple/group_depsNoOp ^gradients_1/add_13_grad/Reshape"^gradients_1/add_13_grad/Reshape_1
�
0gradients_1/add_13_grad/tuple/control_dependencyIdentitygradients_1/add_13_grad/Reshape)^gradients_1/add_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/add_13_grad/Reshape
�
2gradients_1/add_13_grad/tuple/control_dependency_1Identity!gradients_1/add_13_grad/Reshape_1)^gradients_1/add_13_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/add_13_grad/Reshape_1
W
'gradients_1/strided_slice_11_grad/ShapeShapeaction_probs*
T0*
out_type0
�
2gradients_1/strided_slice_11_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_11_grad/Shapestrided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2Bgradients_1/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask

gradients_1/Softmax_4_grad/mulMulDgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshape	Softmax_4*
T0
c
0gradients_1/Softmax_4_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients_1/Softmax_4_grad/SumSumgradients_1/Softmax_4_grad/mul0gradients_1/Softmax_4_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
�
gradients_1/Softmax_4_grad/subSubDgradients_1/softmax_cross_entropy_with_logits/Reshape_1_grad/Reshapegradients_1/Softmax_4_grad/Sum*
T0
[
 gradients_1/Softmax_4_grad/mul_1Mulgradients_1/Softmax_4_grad/sub	Softmax_4*
T0
W
'gradients_1/strided_slice_13_grad/ShapeShapeaction_probs*
T0*
out_type0
�
2gradients_1/strided_slice_13_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_13_grad/Shapestrided_slice_13/stackstrided_slice_13/stack_1strided_slice_13/stack_2Dgradients_1/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
�
gradients_1/Softmax_5_grad/mulMulFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshape	Softmax_5*
T0
c
0gradients_1/Softmax_5_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients_1/Softmax_5_grad/SumSumgradients_1/Softmax_5_grad/mul0gradients_1/Softmax_5_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
�
gradients_1/Softmax_5_grad/subSubFgradients_1/softmax_cross_entropy_with_logits_1/Reshape_1_grad/Reshapegradients_1/Softmax_5_grad/Sum*
T0
[
 gradients_1/Softmax_5_grad/mul_1Mulgradients_1/Softmax_5_grad/sub	Softmax_5*
T0
E
gradients_1/sub_1_grad/ShapeShapeSum_5*
T0*
out_type0
G
gradients_1/sub_1_grad/Shape_1ShapeSum_6*
T0*
out_type0
�
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0
�
gradients_1/sub_1_grad/SumSumgradients_1/Exp_grad/mul,gradients_1/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
T0*
Tshape0
D
gradients_1/sub_1_grad/NegNeggradients_1/Exp_grad/mul*
T0
�
gradients_1/sub_1_grad/Sum_1Sumgradients_1/sub_1_grad/Neg.gradients_1/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Sum_1gradients_1/sub_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
�
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape
�
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1
]
$gradients_1/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
O
&gradients_1/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
|
&gradients_1/clip_by_value_grad/Shape_2Shape2gradients_1/add_13_grad/tuple/control_dependency_1*
T0*
out_type0
W
*gradients_1/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
$gradients_1/clip_by_value_grad/zerosFill&gradients_1/clip_by_value_grad/Shape_2*gradients_1/clip_by_value_grad/zeros/Const*
T0*

index_type0
b
+gradients_1/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumNeg_4*
T0
�
4gradients_1/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients_1/clip_by_value_grad/Shape&gradients_1/clip_by_value_grad/Shape_1*
T0
�
%gradients_1/clip_by_value_grad/SelectSelect+gradients_1/clip_by_value_grad/GreaterEqual2gradients_1/add_13_grad/tuple/control_dependency_1$gradients_1/clip_by_value_grad/zeros*
T0
�
"gradients_1/clip_by_value_grad/SumSum%gradients_1/clip_by_value_grad/Select4gradients_1/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
&gradients_1/clip_by_value_grad/ReshapeReshape"gradients_1/clip_by_value_grad/Sum$gradients_1/clip_by_value_grad/Shape*
T0*
Tshape0
�
'gradients_1/clip_by_value_grad/Select_1Select+gradients_1/clip_by_value_grad/GreaterEqual$gradients_1/clip_by_value_grad/zeros2gradients_1/add_13_grad/tuple/control_dependency_1*
T0
�
$gradients_1/clip_by_value_grad/Sum_1Sum'gradients_1/clip_by_value_grad/Select_16gradients_1/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
(gradients_1/clip_by_value_grad/Reshape_1Reshape$gradients_1/clip_by_value_grad/Sum_1&gradients_1/clip_by_value_grad/Shape_1*
T0*
Tshape0
�
/gradients_1/clip_by_value_grad/tuple/group_depsNoOp'^gradients_1/clip_by_value_grad/Reshape)^gradients_1/clip_by_value_grad/Reshape_1
�
7gradients_1/clip_by_value_grad/tuple/control_dependencyIdentity&gradients_1/clip_by_value_grad/Reshape0^gradients_1/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/clip_by_value_grad/Reshape
�
9gradients_1/clip_by_value_grad/tuple/control_dependency_1Identity(gradients_1/clip_by_value_grad/Reshape_10^gradients_1/clip_by_value_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/clip_by_value_grad/Reshape_1
W
'gradients_1/strided_slice_10_grad/ShapeShapeaction_probs*
T0*
out_type0
�
2gradients_1/strided_slice_10_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_10_grad/Shapestrided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2 gradients_1/Softmax_4_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
W
'gradients_1/strided_slice_12_grad/ShapeShapeaction_probs*
T0*
out_type0
�
2gradients_1/strided_slice_12_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_12_grad/Shapestrided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2 gradients_1/Softmax_5_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
G
gradients_1/Sum_5_grad/ShapeShapestack_1*
T0*
out_type0
v
gradients_1/Sum_5_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_5_grad/addAddV2Sum_5/reduction_indicesgradients_1/Sum_5_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape
�
gradients_1/Sum_5_grad/modFloorModgradients_1/Sum_5_grad/addgradients_1/Sum_5_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape
x
gradients_1/Sum_5_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_5_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_5_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_5_grad/rangeRange"gradients_1/Sum_5_grad/range/startgradients_1/Sum_5_grad/Size"gradients_1/Sum_5_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape
|
!gradients_1/Sum_5_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_5_grad/FillFillgradients_1/Sum_5_grad/Shape_1!gradients_1/Sum_5_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*

index_type0
�
$gradients_1/Sum_5_grad/DynamicStitchDynamicStitchgradients_1/Sum_5_grad/rangegradients_1/Sum_5_grad/modgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*
N
{
 gradients_1/Sum_5_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_5_grad/MaximumMaximum$gradients_1/Sum_5_grad/DynamicStitch gradients_1/Sum_5_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape
�
gradients_1/Sum_5_grad/floordivFloorDivgradients_1/Sum_5_grad/Shapegradients_1/Sum_5_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_5_grad/Shape
�
gradients_1/Sum_5_grad/ReshapeReshape/gradients_1/sub_1_grad/tuple/control_dependency$gradients_1/Sum_5_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_5_grad/TileTilegradients_1/Sum_5_grad/Reshapegradients_1/Sum_5_grad/floordiv*

Tmultiples0*
T0
S
,gradients_1/clip_by_value/Minimum_grad/ShapeShapesub*
T0*
out_type0
W
.gradients_1/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0
�
.gradients_1/clip_by_value/Minimum_grad/Shape_2Shape7gradients_1/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients_1/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
,gradients_1/clip_by_value/Minimum_grad/zerosFill.gradients_1/clip_by_value/Minimum_grad/Shape_22gradients_1/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0
^
0gradients_1/clip_by_value/Minimum_grad/LessEqual	LessEqualsubPolynomialDecay_1*
T0
�
<gradients_1/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients_1/clip_by_value/Minimum_grad/Shape.gradients_1/clip_by_value/Minimum_grad/Shape_1*
T0
�
-gradients_1/clip_by_value/Minimum_grad/SelectSelect0gradients_1/clip_by_value/Minimum_grad/LessEqual7gradients_1/clip_by_value_grad/tuple/control_dependency,gradients_1/clip_by_value/Minimum_grad/zeros*
T0
�
*gradients_1/clip_by_value/Minimum_grad/SumSum-gradients_1/clip_by_value/Minimum_grad/Select<gradients_1/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
.gradients_1/clip_by_value/Minimum_grad/ReshapeReshape*gradients_1/clip_by_value/Minimum_grad/Sum,gradients_1/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
�
/gradients_1/clip_by_value/Minimum_grad/Select_1Select0gradients_1/clip_by_value/Minimum_grad/LessEqual,gradients_1/clip_by_value/Minimum_grad/zeros7gradients_1/clip_by_value_grad/tuple/control_dependency*
T0
�
,gradients_1/clip_by_value/Minimum_grad/Sum_1Sum/gradients_1/clip_by_value/Minimum_grad/Select_1>gradients_1/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
0gradients_1/clip_by_value/Minimum_grad/Reshape_1Reshape,gradients_1/clip_by_value/Minimum_grad/Sum_1.gradients_1/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0
�
7gradients_1/clip_by_value/Minimum_grad/tuple/group_depsNoOp/^gradients_1/clip_by_value/Minimum_grad/Reshape1^gradients_1/clip_by_value/Minimum_grad/Reshape_1
�
?gradients_1/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity.gradients_1/clip_by_value/Minimum_grad/Reshape8^gradients_1/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/clip_by_value/Minimum_grad/Reshape
�
Agradients_1/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity0gradients_1/clip_by_value/Minimum_grad/Reshape_18^gradients_1/clip_by_value/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/clip_by_value/Minimum_grad/Reshape_1
g
 gradients_1/stack_1_grad/unstackUnpackgradients_1/Sum_5_grad/Tile*
T0*	
num*

axis
T
)gradients_1/stack_1_grad/tuple/group_depsNoOp!^gradients_1/stack_1_grad/unstack
�
1gradients_1/stack_1_grad/tuple/control_dependencyIdentity gradients_1/stack_1_grad/unstack*^gradients_1/stack_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/stack_1_grad/unstack
�
3gradients_1/stack_1_grad/tuple/control_dependency_1Identity"gradients_1/stack_1_grad/unstack:1*^gradients_1/stack_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/stack_1_grad/unstack
C
gradients_1/sub_grad/ShapeShapeSum_7*
T0*
out_type0
X
gradients_1/sub_grad/Shape_1Shapeextrinsic_value_estimate*
T0*
out_type0
�
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0
�
gradients_1/sub_grad/SumSum?gradients_1/clip_by_value/Minimum_grad/tuple/control_dependency*gradients_1/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0
i
gradients_1/sub_grad/NegNeg?gradients_1/clip_by_value/Minimum_grad/tuple/control_dependency*
T0
�
gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*
T0*
Tshape0
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
�
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape
�
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1
[
gradients_1/Neg_grad/NegNeg1gradients_1/stack_1_grad/tuple/control_dependency*
T0
_
gradients_1/Neg_1_grad/NegNeg3gradients_1/stack_1_grad/tuple/control_dependency_1*
T0
W
gradients_1/Sum_7_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
v
gradients_1/Sum_7_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_7_grad/addAddV2Sum_7/reduction_indicesgradients_1/Sum_7_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape
�
gradients_1/Sum_7_grad/modFloorModgradients_1/Sum_7_grad/addgradients_1/Sum_7_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape
x
gradients_1/Sum_7_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_7_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_7_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_7_grad/rangeRange"gradients_1/Sum_7_grad/range/startgradients_1/Sum_7_grad/Size"gradients_1/Sum_7_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape
|
!gradients_1/Sum_7_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_7_grad/FillFillgradients_1/Sum_7_grad/Shape_1!gradients_1/Sum_7_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*

index_type0
�
$gradients_1/Sum_7_grad/DynamicStitchDynamicStitchgradients_1/Sum_7_grad/rangegradients_1/Sum_7_grad/modgradients_1/Sum_7_grad/Shapegradients_1/Sum_7_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*
N
{
 gradients_1/Sum_7_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_7_grad/MaximumMaximum$gradients_1/Sum_7_grad/DynamicStitch gradients_1/Sum_7_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape
�
gradients_1/Sum_7_grad/floordivFloorDivgradients_1/Sum_7_grad/Shapegradients_1/Sum_7_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_7_grad/Shape
�
gradients_1/Sum_7_grad/ReshapeReshape-gradients_1/sub_grad/tuple/control_dependency$gradients_1/Sum_7_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_7_grad/TileTilegradients_1/Sum_7_grad/Reshapegradients_1/Sum_7_grad/floordiv*

Tmultiples0*
T0
�
Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0
�
Fgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshapegradients_1/Neg_grad/NegDgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0
�
Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0
�
Fgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshapegradients_1/Neg_1_grad/NegDgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0
�
gradients_1/AddN_1AddNgradients_1/Sum_8_grad/Tilegradients_1/Sum_7_grad/Tile*
T0*.
_class$
" loc:@gradients_1/Sum_8_grad/Tile*
N
w
4gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_1*
T0*
data_formatNHWC
�
9gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_15^gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad
�
Agradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_1:^gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_1/Sum_8_grad/Tile
�
Cgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad:^gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad
U
gradients_1/zeros_like_5	ZerosLike%softmax_cross_entropy_with_logits_2:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
?gradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*

Tdim0*
T0
�
8gradients_1/softmax_cross_entropy_with_logits_2_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0
�
?gradients_1/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0
�
8gradients_1/softmax_cross_entropy_with_logits_2_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
Agradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*

Tdim0*
T0
�
:gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_2_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_2_grad/Neg*
T0
�
Egradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_2_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1
�
Mgradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_2_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_2_grad/mul
�
Ogradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_2_grad/mul_1
U
gradients_1/zeros_like_6	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0
v
Cgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
?gradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*

Tdim0*
T0
�
8gradients_1/softmax_cross_entropy_with_logits_3_grad/mulMul?gradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*
T0
�
?gradients_1/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0
�
8gradients_1/softmax_cross_entropy_with_logits_3_grad/NegNeg?gradients_1/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0
x
Egradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
valueB :
���������*
dtype0
�
Agradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsFgradients_1/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeEgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*

Tdim0*
T0
�
:gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1MulAgradients_1/softmax_cross_entropy_with_logits_3_grad/ExpandDims_18gradients_1/softmax_cross_entropy_with_logits_3_grad/Neg*
T0
�
Egradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp9^gradients_1/softmax_cross_entropy_with_logits_3_grad/mul;^gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1
�
Mgradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity8gradients_1/softmax_cross_entropy_with_logits_3_grad/mulF^gradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/softmax_cross_entropy_with_logits_3_grad/mul
�
Ogradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity:gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1F^gradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/softmax_cross_entropy_with_logits_3_grad/mul_1
�
.gradients_1/extrinsic_value/MatMul_grad/MatMulMatMulAgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependencyextrinsic_value/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
0gradients_1/extrinsic_value/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/MulAgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
8gradients_1/extrinsic_value/MatMul_grad/tuple/group_depsNoOp/^gradients_1/extrinsic_value/MatMul_grad/MatMul1^gradients_1/extrinsic_value/MatMul_grad/MatMul_1
�
@gradients_1/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/extrinsic_value/MatMul_grad/MatMul9^gradients_1/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul
�
Bgradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/extrinsic_value/MatMul_grad/MatMul_19^gradients_1/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul_1
v
Bgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapestrided_slice_15*
T0*
out_type0
�
Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0
v
Bgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapestrided_slice_17*
T0*
out_type0
�
Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeMgradients_1/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyBgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0
S
'gradients_1/strided_slice_15_grad/ShapeShapeconcat_2*
T0*
out_type0
�
2gradients_1/strided_slice_15_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_15_grad/Shapestrided_slice_15/stackstrided_slice_15/stack_1strided_slice_15/stack_2Dgradients_1/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
S
'gradients_1/strided_slice_17_grad/ShapeShapeconcat_2*
T0*
out_type0
�
2gradients_1/strided_slice_17_grad/StridedSliceGradStridedSliceGrad'gradients_1/strided_slice_17_grad/Shapestrided_slice_17/stackstrided_slice_17/stack_1strided_slice_17/stack_2Dgradients_1/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
�
gradients_1/AddN_2AddN2gradients_1/strided_slice_15_grad/StridedSliceGrad2gradients_1/strided_slice_17_grad/StridedSliceGrad*
T0*E
_class;
97loc:@gradients_1/strided_slice_15_grad/StridedSliceGrad*
N
H
gradients_1/concat_2_grad/RankConst*
value	B :*
dtype0
a
gradients_1/concat_2_grad/modFloorModconcat_2/axisgradients_1/concat_2_grad/Rank*
T0
H
gradients_1/concat_2_grad/ShapeShapeLog_2*
T0*
out_type0
Z
 gradients_1/concat_2_grad/ShapeNShapeNLog_2Log_3*
T0*
out_type0*
N
�
&gradients_1/concat_2_grad/ConcatOffsetConcatOffsetgradients_1/concat_2_grad/mod gradients_1/concat_2_grad/ShapeN"gradients_1/concat_2_grad/ShapeN:1*
N
�
gradients_1/concat_2_grad/SliceSlicegradients_1/AddN_2&gradients_1/concat_2_grad/ConcatOffset gradients_1/concat_2_grad/ShapeN*
T0*
Index0
�
!gradients_1/concat_2_grad/Slice_1Slicegradients_1/AddN_2(gradients_1/concat_2_grad/ConcatOffset:1"gradients_1/concat_2_grad/ShapeN:1*
T0*
Index0
x
*gradients_1/concat_2_grad/tuple/group_depsNoOp ^gradients_1/concat_2_grad/Slice"^gradients_1/concat_2_grad/Slice_1
�
2gradients_1/concat_2_grad/tuple/control_dependencyIdentitygradients_1/concat_2_grad/Slice+^gradients_1/concat_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/concat_2_grad/Slice
�
4gradients_1/concat_2_grad/tuple/control_dependency_1Identity!gradients_1/concat_2_grad/Slice_1+^gradients_1/concat_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/concat_2_grad/Slice_1
t
!gradients_1/Log_2_grad/Reciprocal
Reciprocaladd_53^gradients_1/concat_2_grad/tuple/control_dependency*
T0
�
gradients_1/Log_2_grad/mulMul2gradients_1/concat_2_grad/tuple/control_dependency!gradients_1/Log_2_grad/Reciprocal*
T0
v
!gradients_1/Log_3_grad/Reciprocal
Reciprocaladd_65^gradients_1/concat_2_grad/tuple/control_dependency_1*
T0
�
gradients_1/Log_3_grad/mulMul4gradients_1/concat_2_grad/tuple/control_dependency_1!gradients_1/Log_3_grad/Reciprocal*
T0
G
gradients_1/add_5_grad/ShapeShapetruediv*
T0*
out_type0
I
gradients_1/add_5_grad/Shape_1Shapeadd_5/y*
T0*
out_type0
�
,gradients_1/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_5_grad/Shapegradients_1/add_5_grad/Shape_1*
T0
�
gradients_1/add_5_grad/SumSumgradients_1/Log_2_grad/mul,gradients_1/add_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_5_grad/ReshapeReshapegradients_1/add_5_grad/Sumgradients_1/add_5_grad/Shape*
T0*
Tshape0
�
gradients_1/add_5_grad/Sum_1Sumgradients_1/Log_2_grad/mul.gradients_1/add_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/add_5_grad/Reshape_1Reshapegradients_1/add_5_grad/Sum_1gradients_1/add_5_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_5_grad/tuple/group_depsNoOp^gradients_1/add_5_grad/Reshape!^gradients_1/add_5_grad/Reshape_1
�
/gradients_1/add_5_grad/tuple/control_dependencyIdentitygradients_1/add_5_grad/Reshape(^gradients_1/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_5_grad/Reshape
�
1gradients_1/add_5_grad/tuple/control_dependency_1Identity gradients_1/add_5_grad/Reshape_1(^gradients_1/add_5_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_5_grad/Reshape_1
I
gradients_1/add_6_grad/ShapeShape	truediv_1*
T0*
out_type0
I
gradients_1/add_6_grad/Shape_1Shapeadd_6/y*
T0*
out_type0
�
,gradients_1/add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_6_grad/Shapegradients_1/add_6_grad/Shape_1*
T0
�
gradients_1/add_6_grad/SumSumgradients_1/Log_3_grad/mul,gradients_1/add_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_6_grad/ReshapeReshapegradients_1/add_6_grad/Sumgradients_1/add_6_grad/Shape*
T0*
Tshape0
�
gradients_1/add_6_grad/Sum_1Sumgradients_1/Log_3_grad/mul.gradients_1/add_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/add_6_grad/Reshape_1Reshapegradients_1/add_6_grad/Sum_1gradients_1/add_6_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_6_grad/tuple/group_depsNoOp^gradients_1/add_6_grad/Reshape!^gradients_1/add_6_grad/Reshape_1
�
/gradients_1/add_6_grad/tuple/control_dependencyIdentitygradients_1/add_6_grad/Reshape(^gradients_1/add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_6_grad/Reshape
�
1gradients_1/add_6_grad/tuple/control_dependency_1Identity gradients_1/add_6_grad/Reshape_1(^gradients_1/add_6_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_6_grad/Reshape_1
E
gradients_1/truediv_grad/ShapeShapeMul*
T0*
out_type0
G
 gradients_1/truediv_grad/Shape_1ShapeSum*
T0*
out_type0
�
.gradients_1/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/truediv_grad/Shape gradients_1/truediv_grad/Shape_1*
T0
j
 gradients_1/truediv_grad/RealDivRealDiv/gradients_1/add_5_grad/tuple/control_dependencySum*
T0
�
gradients_1/truediv_grad/SumSum gradients_1/truediv_grad/RealDiv.gradients_1/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/truediv_grad/ReshapeReshapegradients_1/truediv_grad/Sumgradients_1/truediv_grad/Shape*
T0*
Tshape0
1
gradients_1/truediv_grad/NegNegMul*
T0
Y
"gradients_1/truediv_grad/RealDiv_1RealDivgradients_1/truediv_grad/NegSum*
T0
_
"gradients_1/truediv_grad/RealDiv_2RealDiv"gradients_1/truediv_grad/RealDiv_1Sum*
T0
�
gradients_1/truediv_grad/mulMul/gradients_1/add_5_grad/tuple/control_dependency"gradients_1/truediv_grad/RealDiv_2*
T0
�
gradients_1/truediv_grad/Sum_1Sumgradients_1/truediv_grad/mul0gradients_1/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
"gradients_1/truediv_grad/Reshape_1Reshapegradients_1/truediv_grad/Sum_1 gradients_1/truediv_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/truediv_grad/tuple/group_depsNoOp!^gradients_1/truediv_grad/Reshape#^gradients_1/truediv_grad/Reshape_1
�
1gradients_1/truediv_grad/tuple/control_dependencyIdentity gradients_1/truediv_grad/Reshape*^gradients_1/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/truediv_grad/Reshape
�
3gradients_1/truediv_grad/tuple/control_dependency_1Identity"gradients_1/truediv_grad/Reshape_1*^gradients_1/truediv_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/truediv_grad/Reshape_1
I
 gradients_1/truediv_1_grad/ShapeShapeMul_1*
T0*
out_type0
K
"gradients_1/truediv_1_grad/Shape_1ShapeSum_1*
T0*
out_type0
�
0gradients_1/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_1_grad/Shape"gradients_1/truediv_1_grad/Shape_1*
T0
n
"gradients_1/truediv_1_grad/RealDivRealDiv/gradients_1/add_6_grad/tuple/control_dependencySum_1*
T0
�
gradients_1/truediv_1_grad/SumSum"gradients_1/truediv_1_grad/RealDiv0gradients_1/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
"gradients_1/truediv_1_grad/ReshapeReshapegradients_1/truediv_1_grad/Sum gradients_1/truediv_1_grad/Shape*
T0*
Tshape0
5
gradients_1/truediv_1_grad/NegNegMul_1*
T0
_
$gradients_1/truediv_1_grad/RealDiv_1RealDivgradients_1/truediv_1_grad/NegSum_1*
T0
e
$gradients_1/truediv_1_grad/RealDiv_2RealDiv$gradients_1/truediv_1_grad/RealDiv_1Sum_1*
T0
�
gradients_1/truediv_1_grad/mulMul/gradients_1/add_6_grad/tuple/control_dependency$gradients_1/truediv_1_grad/RealDiv_2*
T0
�
 gradients_1/truediv_1_grad/Sum_1Sumgradients_1/truediv_1_grad/mul2gradients_1/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
$gradients_1/truediv_1_grad/Reshape_1Reshape gradients_1/truediv_1_grad/Sum_1"gradients_1/truediv_1_grad/Shape_1*
T0*
Tshape0

+gradients_1/truediv_1_grad/tuple/group_depsNoOp#^gradients_1/truediv_1_grad/Reshape%^gradients_1/truediv_1_grad/Reshape_1
�
3gradients_1/truediv_1_grad/tuple/control_dependencyIdentity"gradients_1/truediv_1_grad/Reshape,^gradients_1/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/truediv_1_grad/Reshape
�
5gradients_1/truediv_1_grad/tuple/control_dependency_1Identity$gradients_1/truediv_1_grad/Reshape_1,^gradients_1/truediv_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/truediv_1_grad/Reshape_1
A
gradients_1/Sum_grad/ShapeShapeMul*
T0*
out_type0
r
gradients_1/Sum_grad/SizeConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_grad/addAddV2Sum/reduction_indicesgradients_1/Sum_grad/Size*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
�
gradients_1/Sum_grad/modFloorModgradients_1/Sum_grad/addgradients_1/Sum_grad/Size*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
t
gradients_1/Sum_grad/Shape_1Const*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
valueB *
dtype0
y
 gradients_1/Sum_grad/range/startConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B : *
dtype0
y
 gradients_1/Sum_grad/range/deltaConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_grad/rangeRange gradients_1/Sum_grad/range/startgradients_1/Sum_grad/Size gradients_1/Sum_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
x
gradients_1/Sum_grad/Fill/valueConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_grad/FillFillgradients_1/Sum_grad/Shape_1gradients_1/Sum_grad/Fill/value*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape*

index_type0
�
"gradients_1/Sum_grad/DynamicStitchDynamicStitchgradients_1/Sum_grad/rangegradients_1/Sum_grad/modgradients_1/Sum_grad/Shapegradients_1/Sum_grad/Fill*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
N
w
gradients_1/Sum_grad/Maximum/yConst*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_grad/MaximumMaximum"gradients_1/Sum_grad/DynamicStitchgradients_1/Sum_grad/Maximum/y*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
�
gradients_1/Sum_grad/floordivFloorDivgradients_1/Sum_grad/Shapegradients_1/Sum_grad/Maximum*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
�
gradients_1/Sum_grad/ReshapeReshape3gradients_1/truediv_grad/tuple/control_dependency_1"gradients_1/Sum_grad/DynamicStitch*
T0*
Tshape0
y
gradients_1/Sum_grad/TileTilegradients_1/Sum_grad/Reshapegradients_1/Sum_grad/floordiv*

Tmultiples0*
T0
E
gradients_1/Sum_1_grad/ShapeShapeMul_1*
T0*
out_type0
v
gradients_1/Sum_1_grad/SizeConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_1_grad/addAddV2Sum_1/reduction_indicesgradients_1/Sum_1_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
�
gradients_1/Sum_1_grad/modFloorModgradients_1/Sum_1_grad/addgradients_1/Sum_1_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
x
gradients_1/Sum_1_grad/Shape_1Const*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
valueB *
dtype0
}
"gradients_1/Sum_1_grad/range/startConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B : *
dtype0
}
"gradients_1/Sum_1_grad/range/deltaConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_1_grad/rangeRange"gradients_1/Sum_1_grad/range/startgradients_1/Sum_1_grad/Size"gradients_1/Sum_1_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
|
!gradients_1/Sum_1_grad/Fill/valueConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_1_grad/FillFillgradients_1/Sum_1_grad/Shape_1!gradients_1/Sum_1_grad/Fill/value*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*

index_type0
�
$gradients_1/Sum_1_grad/DynamicStitchDynamicStitchgradients_1/Sum_1_grad/rangegradients_1/Sum_1_grad/modgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
N
{
 gradients_1/Sum_1_grad/Maximum/yConst*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape*
value	B :*
dtype0
�
gradients_1/Sum_1_grad/MaximumMaximum$gradients_1/Sum_1_grad/DynamicStitch gradients_1/Sum_1_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
�
gradients_1/Sum_1_grad/floordivFloorDivgradients_1/Sum_1_grad/Shapegradients_1/Sum_1_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_1_grad/Shape
�
gradients_1/Sum_1_grad/ReshapeReshape5gradients_1/truediv_1_grad/tuple/control_dependency_1$gradients_1/Sum_1_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_1_grad/TileTilegradients_1/Sum_1_grad/Reshapegradients_1/Sum_1_grad/floordiv*

Tmultiples0*
T0
�
gradients_1/AddN_3AddN1gradients_1/truediv_grad/tuple/control_dependencygradients_1/Sum_grad/Tile*
T0*3
_class)
'%loc:@gradients_1/truediv_grad/Reshape*
N
C
gradients_1/Mul_grad/ShapeShapeadd_1*
T0*
out_type0
O
gradients_1/Mul_grad/Shape_1Shapestrided_slice_2*
T0*
out_type0
�
*gradients_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Mul_grad/Shapegradients_1/Mul_grad/Shape_1*
T0
M
gradients_1/Mul_grad/MulMulgradients_1/AddN_3strided_slice_2*
T0
�
gradients_1/Mul_grad/SumSumgradients_1/Mul_grad/Mul*gradients_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients_1/Mul_grad/ReshapeReshapegradients_1/Mul_grad/Sumgradients_1/Mul_grad/Shape*
T0*
Tshape0
E
gradients_1/Mul_grad/Mul_1Muladd_1gradients_1/AddN_3*
T0
�
gradients_1/Mul_grad/Sum_1Sumgradients_1/Mul_grad/Mul_1,gradients_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients_1/Mul_grad/Reshape_1Reshapegradients_1/Mul_grad/Sum_1gradients_1/Mul_grad/Shape_1*
T0*
Tshape0
m
%gradients_1/Mul_grad/tuple/group_depsNoOp^gradients_1/Mul_grad/Reshape^gradients_1/Mul_grad/Reshape_1
�
-gradients_1/Mul_grad/tuple/control_dependencyIdentitygradients_1/Mul_grad/Reshape&^gradients_1/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/Mul_grad/Reshape
�
/gradients_1/Mul_grad/tuple/control_dependency_1Identitygradients_1/Mul_grad/Reshape_1&^gradients_1/Mul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Mul_grad/Reshape_1
�
gradients_1/AddN_4AddN3gradients_1/truediv_1_grad/tuple/control_dependencygradients_1/Sum_1_grad/Tile*
T0*5
_class+
)'loc:@gradients_1/truediv_1_grad/Reshape*
N
E
gradients_1/Mul_1_grad/ShapeShapeadd_2*
T0*
out_type0
Q
gradients_1/Mul_1_grad/Shape_1Shapestrided_slice_3*
T0*
out_type0
�
,gradients_1/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Mul_1_grad/Shapegradients_1/Mul_1_grad/Shape_1*
T0
O
gradients_1/Mul_1_grad/MulMulgradients_1/AddN_4strided_slice_3*
T0
�
gradients_1/Mul_1_grad/SumSumgradients_1/Mul_1_grad/Mul,gradients_1/Mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/Mul_1_grad/ReshapeReshapegradients_1/Mul_1_grad/Sumgradients_1/Mul_1_grad/Shape*
T0*
Tshape0
G
gradients_1/Mul_1_grad/Mul_1Muladd_2gradients_1/AddN_4*
T0
�
gradients_1/Mul_1_grad/Sum_1Sumgradients_1/Mul_1_grad/Mul_1.gradients_1/Mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/Mul_1_grad/Reshape_1Reshapegradients_1/Mul_1_grad/Sum_1gradients_1/Mul_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/Mul_1_grad/tuple/group_depsNoOp^gradients_1/Mul_1_grad/Reshape!^gradients_1/Mul_1_grad/Reshape_1
�
/gradients_1/Mul_1_grad/tuple/control_dependencyIdentitygradients_1/Mul_1_grad/Reshape(^gradients_1/Mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/Mul_1_grad/Reshape
�
1gradients_1/Mul_1_grad/tuple/control_dependency_1Identity gradients_1/Mul_1_grad/Reshape_1(^gradients_1/Mul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Mul_1_grad/Reshape_1
G
gradients_1/add_1_grad/ShapeShapeSoftmax*
T0*
out_type0
I
gradients_1/add_1_grad/Shape_1Shapeadd_1/y*
T0*
out_type0
�
,gradients_1/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_1_grad/Shapegradients_1/add_1_grad/Shape_1*
T0
�
gradients_1/add_1_grad/SumSum-gradients_1/Mul_grad/tuple/control_dependency,gradients_1/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_1_grad/ReshapeReshapegradients_1/add_1_grad/Sumgradients_1/add_1_grad/Shape*
T0*
Tshape0
�
gradients_1/add_1_grad/Sum_1Sum-gradients_1/Mul_grad/tuple/control_dependency.gradients_1/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/add_1_grad/Reshape_1Reshapegradients_1/add_1_grad/Sum_1gradients_1/add_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_1_grad/tuple/group_depsNoOp^gradients_1/add_1_grad/Reshape!^gradients_1/add_1_grad/Reshape_1
�
/gradients_1/add_1_grad/tuple/control_dependencyIdentitygradients_1/add_1_grad/Reshape(^gradients_1/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_1_grad/Reshape
�
1gradients_1/add_1_grad/tuple/control_dependency_1Identity gradients_1/add_1_grad/Reshape_1(^gradients_1/add_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_1_grad/Reshape_1
I
gradients_1/add_2_grad/ShapeShape	Softmax_1*
T0*
out_type0
I
gradients_1/add_2_grad/Shape_1Shapeadd_2/y*
T0*
out_type0
�
,gradients_1/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_2_grad/Shapegradients_1/add_2_grad/Shape_1*
T0
�
gradients_1/add_2_grad/SumSum/gradients_1/Mul_1_grad/tuple/control_dependency,gradients_1/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_2_grad/ReshapeReshapegradients_1/add_2_grad/Sumgradients_1/add_2_grad/Shape*
T0*
Tshape0
�
gradients_1/add_2_grad/Sum_1Sum/gradients_1/Mul_1_grad/tuple/control_dependency.gradients_1/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/add_2_grad/Reshape_1Reshapegradients_1/add_2_grad/Sum_1gradients_1/add_2_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_2_grad/tuple/group_depsNoOp^gradients_1/add_2_grad/Reshape!^gradients_1/add_2_grad/Reshape_1
�
/gradients_1/add_2_grad/tuple/control_dependencyIdentitygradients_1/add_2_grad/Reshape(^gradients_1/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_2_grad/Reshape
�
1gradients_1/add_2_grad/tuple/control_dependency_1Identity gradients_1/add_2_grad/Reshape_1(^gradients_1/add_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_2_grad/Reshape_1
f
gradients_1/Softmax_grad/mulMul/gradients_1/add_1_grad/tuple/control_dependencySoftmax*
T0
a
.gradients_1/Softmax_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients_1/Softmax_grad/SumSumgradients_1/Softmax_grad/mul.gradients_1/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
{
gradients_1/Softmax_grad/subSub/gradients_1/add_1_grad/tuple/control_dependencygradients_1/Softmax_grad/Sum*
T0
U
gradients_1/Softmax_grad/mul_1Mulgradients_1/Softmax_grad/subSoftmax*
T0
j
gradients_1/Softmax_1_grad/mulMul/gradients_1/add_2_grad/tuple/control_dependency	Softmax_1*
T0
c
0gradients_1/Softmax_1_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0
�
gradients_1/Softmax_1_grad/SumSumgradients_1/Softmax_1_grad/mul0gradients_1/Softmax_1_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0

gradients_1/Softmax_1_grad/subSub/gradients_1/add_2_grad/tuple/control_dependencygradients_1/Softmax_1_grad/Sum*
T0
[
 gradients_1/Softmax_1_grad/mul_1Mulgradients_1/Softmax_1_grad/sub	Softmax_1*
T0
T
$gradients_1/strided_slice_grad/ShapeShapeaction_probs*
T0*
out_type0
�
/gradients_1/strided_slice_grad/StridedSliceGradStridedSliceGrad$gradients_1/strided_slice_grad/Shapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2gradients_1/Softmax_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
V
&gradients_1/strided_slice_1_grad/ShapeShapeaction_probs*
T0*
out_type0
�
1gradients_1/strided_slice_1_grad/StridedSliceGradStridedSliceGrad&gradients_1/strided_slice_1_grad/Shapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2 gradients_1/Softmax_1_grad/mul_1*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
�
gradients_1/AddN_5AddN2gradients_1/strided_slice_11_grad/StridedSliceGrad2gradients_1/strided_slice_13_grad/StridedSliceGrad2gradients_1/strided_slice_10_grad/StridedSliceGrad2gradients_1/strided_slice_12_grad/StridedSliceGrad/gradients_1/strided_slice_grad/StridedSliceGrad1gradients_1/strided_slice_1_grad/StridedSliceGrad*
T0*E
_class;
97loc:@gradients_1/strided_slice_11_grad/StridedSliceGrad*
N
L
"gradients_1/action_probs_grad/RankConst*
value	B :*
dtype0
m
!gradients_1/action_probs_grad/modFloorModaction_probs/axis"gradients_1/action_probs_grad/Rank*
T0
S
#gradients_1/action_probs_grad/ShapeShapedense/MatMul*
T0*
out_type0
n
$gradients_1/action_probs_grad/ShapeNShapeNdense/MatMuldense_1/MatMul*
T0*
out_type0*
N
�
*gradients_1/action_probs_grad/ConcatOffsetConcatOffset!gradients_1/action_probs_grad/mod$gradients_1/action_probs_grad/ShapeN&gradients_1/action_probs_grad/ShapeN:1*
N
�
#gradients_1/action_probs_grad/SliceSlicegradients_1/AddN_5*gradients_1/action_probs_grad/ConcatOffset$gradients_1/action_probs_grad/ShapeN*
T0*
Index0
�
%gradients_1/action_probs_grad/Slice_1Slicegradients_1/AddN_5,gradients_1/action_probs_grad/ConcatOffset:1&gradients_1/action_probs_grad/ShapeN:1*
T0*
Index0
�
.gradients_1/action_probs_grad/tuple/group_depsNoOp$^gradients_1/action_probs_grad/Slice&^gradients_1/action_probs_grad/Slice_1
�
6gradients_1/action_probs_grad/tuple/control_dependencyIdentity#gradients_1/action_probs_grad/Slice/^gradients_1/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/action_probs_grad/Slice
�
8gradients_1/action_probs_grad/tuple/control_dependency_1Identity%gradients_1/action_probs_grad/Slice_1/^gradients_1/action_probs_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/action_probs_grad/Slice_1
�
$gradients_1/dense/MatMul_grad/MatMulMatMul6gradients_1/action_probs_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
&gradients_1/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul6gradients_1/action_probs_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
.gradients_1/dense/MatMul_grad/tuple/group_depsNoOp%^gradients_1/dense/MatMul_grad/MatMul'^gradients_1/dense/MatMul_grad/MatMul_1
�
6gradients_1/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients_1/dense/MatMul_grad/MatMul/^gradients_1/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/dense/MatMul_grad/MatMul
�
8gradients_1/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients_1/dense/MatMul_grad/MatMul_1/^gradients_1/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dense/MatMul_grad/MatMul_1
�
&gradients_1/dense_1/MatMul_grad/MatMulMatMul8gradients_1/action_probs_grad/tuple/control_dependency_1dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
(gradients_1/dense_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul8gradients_1/action_probs_grad/tuple/control_dependency_1*
transpose_b( *
T0*
transpose_a(
�
0gradients_1/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients_1/dense_1/MatMul_grad/MatMul)^gradients_1/dense_1/MatMul_grad/MatMul_1
�
8gradients_1/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/dense_1/MatMul_grad/MatMul1^gradients_1/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dense_1/MatMul_grad/MatMul
�
:gradients_1/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/dense_1/MatMul_grad/MatMul_11^gradients_1/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/dense_1/MatMul_grad/MatMul_1
�
gradients_1/AddN_6AddN@gradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency6gradients_1/dense/MatMul_grad/tuple/control_dependency8gradients_1/dense_1/MatMul_grad/tuple/control_dependency*
T0*A
_class7
53loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul*
N
q
0gradients_1/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
�
@gradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_0/hidden_1/Mul_grad/Shape2gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
q
.gradients_1/main_graph_0/hidden_1/Mul_grad/MulMulgradients_1/AddN_6main_graph_0/hidden_1/Sigmoid*
T0
�
.gradients_1/main_graph_0/hidden_1/Mul_grad/SumSum.gradients_1/main_graph_0/hidden_1/Mul_grad/Mul@gradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
2gradients_1/main_graph_0/hidden_1/Mul_grad/ReshapeReshape.gradients_1/main_graph_0/hidden_1/Mul_grad/Sum0gradients_1/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
s
0gradients_1/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAddgradients_1/AddN_6*
T0
�
0gradients_1/main_graph_0/hidden_1/Mul_grad/Sum_1Sum0gradients_1/main_graph_0/hidden_1/Mul_grad/Mul_1Bgradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
4gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_0/hidden_1/Mul_grad/Sum_12gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
�
;gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape5^gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1
�
Cgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape<^gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape
�
Egradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1<^gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1
�
:gradients_1/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidEgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
�
gradients_1/AddN_7AddNCgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency:gradients_1/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape*
N
}
:gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_7*
T0*
data_formatNHWC
�
?gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_7;^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
�
Ggradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_7@^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape
�
Igradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
�
4gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulGgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
6gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulGgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
>gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul7^gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1
�
Fgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul?^gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul
�
Hgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1?^gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1
q
0gradients_1/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
�
@gradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_0/hidden_0/Mul_grad/Shape2gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
�
.gradients_1/main_graph_0/hidden_0/Mul_grad/MulMulFgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
�
.gradients_1/main_graph_0/hidden_0/Mul_grad/SumSum.gradients_1/main_graph_0/hidden_0/Mul_grad/Mul@gradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
2gradients_1/main_graph_0/hidden_0/Mul_grad/ReshapeReshape.gradients_1/main_graph_0/hidden_0/Mul_grad/Sum0gradients_1/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
�
0gradients_1/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddFgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
�
0gradients_1/main_graph_0/hidden_0/Mul_grad/Sum_1Sum0gradients_1/main_graph_0/hidden_0/Mul_grad/Mul_1Bgradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
4gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_0/hidden_0/Mul_grad/Sum_12gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
�
;gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape5^gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1
�
Cgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape<^gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape
�
Egradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1<^gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1
�
:gradients_1/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidEgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
�
gradients_1/AddN_8AddNCgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency:gradients_1/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape*
N
}
:gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_8*
T0*
data_formatNHWC
�
?gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_8;^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
�
Ggradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_8@^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape
�
Igradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
�
4gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulGgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
6gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationGgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
>gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul7^gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1
�
Fgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul?^gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul
�
Hgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1?^gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
_class
loc:@dense/kernel*
valueB
 *fff?*
dtype0
x
beta1_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/kernel
g
beta2_power/initial_valueConst*
_class
loc:@dense/kernel*
valueB
 *w�?*
dtype0
x
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/kernel
�
Cmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"!   �   */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0
�
9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0
�
3main_graph_0/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
�
!main_graph_0/hidden_0/kernel/Adam
VariableV2*
shape:	!�*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
�
(main_graph_0/hidden_0/kernel/Adam/AssignAssign!main_graph_0/hidden_0/kernel/Adam3main_graph_0/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
�
&main_graph_0/hidden_0/kernel/Adam/readIdentity!main_graph_0/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
�
Emain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"!   �   */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0
�
;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0
�
5main_graph_0/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
�
#main_graph_0/hidden_0/kernel/Adam_1
VariableV2*
shape:	!�*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
�
*main_graph_0/hidden_0/kernel/Adam_1/AssignAssign#main_graph_0/hidden_0/kernel/Adam_15main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
�
(main_graph_0/hidden_0/kernel/Adam_1/readIdentity#main_graph_0/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
�
1main_graph_0/hidden_0/bias/Adam/Initializer/zerosConst*
valueB�*    *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0
�
main_graph_0/hidden_0/bias/Adam
VariableV2*
shape:�*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container 
�
&main_graph_0/hidden_0/bias/Adam/AssignAssignmain_graph_0/hidden_0/bias/Adam1main_graph_0/hidden_0/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
�
$main_graph_0/hidden_0/bias/Adam/readIdentitymain_graph_0/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
�
3main_graph_0/hidden_0/bias/Adam_1/Initializer/zerosConst*
valueB�*    *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0
�
!main_graph_0/hidden_0/bias/Adam_1
VariableV2*
shape:�*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container 
�
(main_graph_0/hidden_0/bias/Adam_1/AssignAssign!main_graph_0/hidden_0/bias/Adam_13main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
�
&main_graph_0/hidden_0/bias/Adam_1/readIdentity!main_graph_0/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
�
Cmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"�   �   */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0
�
9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0
�
3main_graph_0/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
�
!main_graph_0/hidden_1/kernel/Adam
VariableV2*
shape:
��*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
�
(main_graph_0/hidden_1/kernel/Adam/AssignAssign!main_graph_0/hidden_1/kernel/Adam3main_graph_0/hidden_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
�
&main_graph_0/hidden_1/kernel/Adam/readIdentity!main_graph_0/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
�
Emain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"�   �   */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0
�
;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0
�
5main_graph_0/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
�
#main_graph_0/hidden_1/kernel/Adam_1
VariableV2*
shape:
��*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
�
*main_graph_0/hidden_1/kernel/Adam_1/AssignAssign#main_graph_0/hidden_1/kernel/Adam_15main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
�
(main_graph_0/hidden_1/kernel/Adam_1/readIdentity#main_graph_0/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
�
1main_graph_0/hidden_1/bias/Adam/Initializer/zerosConst*
valueB�*    *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0
�
main_graph_0/hidden_1/bias/Adam
VariableV2*
shape:�*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container 
�
&main_graph_0/hidden_1/bias/Adam/AssignAssignmain_graph_0/hidden_1/bias/Adam1main_graph_0/hidden_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
�
$main_graph_0/hidden_1/bias/Adam/readIdentitymain_graph_0/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
�
3main_graph_0/hidden_1/bias/Adam_1/Initializer/zerosConst*
valueB�*    *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0
�
!main_graph_0/hidden_1/bias/Adam_1
VariableV2*
shape:�*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container 
�
(main_graph_0/hidden_1/bias/Adam_1/AssignAssign!main_graph_0/hidden_1/bias/Adam_13main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
�
&main_graph_0/hidden_1/bias/Adam_1/readIdentity!main_graph_0/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
z
#dense/kernel/Adam/Initializer/zerosConst*
valueB	�*    *
_class
loc:@dense/kernel*
dtype0
�
dense/kernel/Adam
VariableV2*
shape:	�*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
�
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel
|
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB	�*    *
_class
loc:@dense/kernel*
dtype0
�
dense/kernel/Adam_1
VariableV2*
shape:	�*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
�
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
~
%dense_1/kernel/Adam/Initializer/zerosConst*
valueB	�*    *!
_class
loc:@dense_1/kernel*
dtype0
�
dense_1/kernel/Adam
VariableV2*
shape:	�*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
�
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel
�
'dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB	�*    *!
_class
loc:@dense_1/kernel*
dtype0
�
dense_1/kernel/Adam_1
VariableV2*
shape:	�*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
�
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel
�
-extrinsic_value/kernel/Adam/Initializer/zerosConst*
valueB	�*    *)
_class
loc:@extrinsic_value/kernel*
dtype0
�
extrinsic_value/kernel/Adam
VariableV2*
shape:	�*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container 
�
"extrinsic_value/kernel/Adam/AssignAssignextrinsic_value/kernel/Adam-extrinsic_value/kernel/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
}
 extrinsic_value/kernel/Adam/readIdentityextrinsic_value/kernel/Adam*
T0*)
_class
loc:@extrinsic_value/kernel
�
/extrinsic_value/kernel/Adam_1/Initializer/zerosConst*
valueB	�*    *)
_class
loc:@extrinsic_value/kernel*
dtype0
�
extrinsic_value/kernel/Adam_1
VariableV2*
shape:	�*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container 
�
$extrinsic_value/kernel/Adam_1/AssignAssignextrinsic_value/kernel/Adam_1/extrinsic_value/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
�
"extrinsic_value/kernel/Adam_1/readIdentityextrinsic_value/kernel/Adam_1*
T0*)
_class
loc:@extrinsic_value/kernel
�
+extrinsic_value/bias/Adam/Initializer/zerosConst*
valueB*    *'
_class
loc:@extrinsic_value/bias*
dtype0
�
extrinsic_value/bias/Adam
VariableV2*
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container 
�
 extrinsic_value/bias/Adam/AssignAssignextrinsic_value/bias/Adam+extrinsic_value/bias/Adam/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
w
extrinsic_value/bias/Adam/readIdentityextrinsic_value/bias/Adam*
T0*'
_class
loc:@extrinsic_value/bias
�
-extrinsic_value/bias/Adam_1/Initializer/zerosConst*
valueB*    *'
_class
loc:@extrinsic_value/bias*
dtype0
�
extrinsic_value/bias/Adam_1
VariableV2*
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container 
�
"extrinsic_value/bias/Adam_1/AssignAssignextrinsic_value/bias/Adam_1-extrinsic_value/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
{
 extrinsic_value/bias/Adam_1/readIdentityextrinsic_value/bias/Adam_1*
T0*'
_class
loc:@extrinsic_value/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w�?*
dtype0
9
Adam/epsilonConst*
valueB
 *w�+2*
dtype0
�
2Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
use_nesterov( 
�
0Adam/update_main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
use_nesterov( 
�
2Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
use_nesterov( 
�
0Adam/update_main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
use_nesterov( 
�
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients_1/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
�
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon:gradients_1/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( 
�
,Adam/update_extrinsic_value/kernel/ApplyAdam	ApplyAdamextrinsic_value/kernelextrinsic_value/kernel/Adamextrinsic_value/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonBgradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@extrinsic_value/kernel*
use_nesterov( 
�
*Adam/update_extrinsic_value/bias/ApplyAdam	ApplyAdamextrinsic_value/biasextrinsic_value/bias/Adamextrinsic_value/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonCgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*'
_class
loc:@extrinsic_value/bias*
use_nesterov( 
�
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/kernel*
validate_shape(
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam*
T0*
_class
loc:@dense/kernel
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
validate_shape(
�
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
�
save/SaveV2/tensor_namesConst*�
value�B�Baction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bextrinsic_value/biasBextrinsic_value/bias/AdamBextrinsic_value/bias/Adam_1Bextrinsic_value/kernelBextrinsic_value/kernel/AdamBextrinsic_value/kernel/Adam_1Bglobal_stepBis_continuous_controlBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeBversion_number*
dtype0
�
save/SaveV2/shape_and_slicesConst*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaction_output_shapebeta1_powerbeta2_powerdense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1extrinsic_value/biasextrinsic_value/bias/Adamextrinsic_value/bias/Adam_1extrinsic_value/kernelextrinsic_value/kernel/Adamextrinsic_value/kernel/Adam_1global_stepis_continuous_controlmain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1main_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1main_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1main_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1memory_sizeversion_number*-
dtypes#
!2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Baction_output_shapeBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bextrinsic_value/biasBextrinsic_value/bias/AdamBextrinsic_value/bias/Adam_1Bextrinsic_value/kernelBextrinsic_value/kernel/AdamBextrinsic_value/kernel/Adam_1Bglobal_stepBis_continuous_controlBmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmemory_sizeBversion_number*
dtype0
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*-
dtypes#
!2
�
save/AssignAssignaction_output_shapesave/RestoreV2*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(
�
save/Assign_1Assignbeta1_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
�
save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
�
save/Assign_3Assigndense/kernelsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
�
save/Assign_4Assigndense/kernel/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
�
save/Assign_5Assigndense/kernel/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
�
save/Assign_6Assigndense_1/kernelsave/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
�
save/Assign_7Assigndense_1/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
�
save/Assign_8Assigndense_1/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
�
save/Assign_9Assignextrinsic_value/biassave/RestoreV2:9*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
�
save/Assign_10Assignextrinsic_value/bias/Adamsave/RestoreV2:10*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
�
save/Assign_11Assignextrinsic_value/bias/Adam_1save/RestoreV2:11*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
�
save/Assign_12Assignextrinsic_value/kernelsave/RestoreV2:12*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
�
save/Assign_13Assignextrinsic_value/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
�
save/Assign_14Assignextrinsic_value/kernel/Adam_1save/RestoreV2:14*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
�
save/Assign_15Assignglobal_stepsave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save/Assign_16Assignis_continuous_controlsave/RestoreV2:16*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(
�
save/Assign_17Assignmain_graph_0/hidden_0/biassave/RestoreV2:17*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
�
save/Assign_18Assignmain_graph_0/hidden_0/bias/Adamsave/RestoreV2:18*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
�
save/Assign_19Assign!main_graph_0/hidden_0/bias/Adam_1save/RestoreV2:19*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
�
save/Assign_20Assignmain_graph_0/hidden_0/kernelsave/RestoreV2:20*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
�
save/Assign_21Assign!main_graph_0/hidden_0/kernel/Adamsave/RestoreV2:21*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
�
save/Assign_22Assign#main_graph_0/hidden_0/kernel/Adam_1save/RestoreV2:22*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
�
save/Assign_23Assignmain_graph_0/hidden_1/biassave/RestoreV2:23*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
�
save/Assign_24Assignmain_graph_0/hidden_1/bias/Adamsave/RestoreV2:24*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
�
save/Assign_25Assign!main_graph_0/hidden_1/bias/Adam_1save/RestoreV2:25*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
�
save/Assign_26Assignmain_graph_0/hidden_1/kernelsave/RestoreV2:26*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
�
save/Assign_27Assign!main_graph_0/hidden_1/kernel/Adamsave/RestoreV2:27*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
�
save/Assign_28Assign#main_graph_0/hidden_1/kernel/Adam_1save/RestoreV2:28*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
�
save/Assign_29Assignmemory_sizesave/RestoreV2:29*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(
�
save/Assign_30Assignversion_numbersave/RestoreV2:30*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
�
initNoOp^action_output_shape/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign!^extrinsic_value/bias/Adam/Assign#^extrinsic_value/bias/Adam_1/Assign^extrinsic_value/bias/Assign#^extrinsic_value/kernel/Adam/Assign%^extrinsic_value/kernel/Adam_1/Assign^extrinsic_value/kernel/Assign^global_step/Assign^is_continuous_control/Assign'^main_graph_0/hidden_0/bias/Adam/Assign)^main_graph_0/hidden_0/bias/Adam_1/Assign"^main_graph_0/hidden_0/bias/Assign)^main_graph_0/hidden_0/kernel/Adam/Assign+^main_graph_0/hidden_0/kernel/Adam_1/Assign$^main_graph_0/hidden_0/kernel/Assign'^main_graph_0/hidden_1/bias/Adam/Assign)^main_graph_0/hidden_1/bias/Adam_1/Assign"^main_graph_0/hidden_1/bias/Assign)^main_graph_0/hidden_1/kernel/Adam/Assign+^main_graph_0/hidden_1/kernel/Adam_1/Assign$^main_graph_0/hidden_1/kernel/Assign^memory_size/Assign^version_number/Assign"w