       £K"	  је°е„Abrain.Event:2№ґh®ґ     Fфњ	`Гсе°е„A"©≠
r
Input_Layer/xPlaceholder*
shape:€€€€€€€€€Р*(
_output_shapes
:€€€€€€€€€Р*
dtype0
r
Input_Layer/Reshape/shapeConst*
_output_shapes
:*%
valueB"€€€€         *
dtype0
Р
Input_Layer/ReshapeReshapeInput_Layer/xInput_Layer/Reshape/shape*
T0*
Tshape0*/
_output_shapes
:€€€€€€€€€
w
C1_Conv/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            
b
C1_Conv/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
d
C1_Conv/truncated_normal/stddevConst*
valueB
 *Ќћћ=*
_output_shapes
: *
dtype0
≤
(C1_Conv/truncated_normal/TruncatedNormalTruncatedNormalC1_Conv/truncated_normal/shape*

seed *&
_output_shapes
:*
T0*
dtype0*
seed2 
Я
C1_Conv/truncated_normal/mulMul(C1_Conv/truncated_normal/TruncatedNormalC1_Conv/truncated_normal/stddev*
T0*&
_output_shapes
:
Н
C1_Conv/truncated_normalAddC1_Conv/truncated_normal/mulC1_Conv/truncated_normal/mean*&
_output_shapes
:*
T0
Н
	C1_Conv/W
VariableV2*
shape:*
dtype0*
	container *
shared_name *&
_output_shapes
:
Ј
C1_Conv/W/AssignAssign	C1_Conv/WC1_Conv/truncated_normal*
use_locking(*
_class
loc:@C1_Conv/W*
validate_shape(*
T0*&
_output_shapes
:
t
C1_Conv/W/readIdentity	C1_Conv/W*
T0*&
_output_shapes
:*
_class
loc:@C1_Conv/W
Z
C1_Conv/ConstConst*
dtype0*
_output_shapes
:*
valueB*Ќћћ=
u
	C1_Conv/b
VariableV2*
shared_name *
	container *
shape:*
dtype0*
_output_shapes
:
†
C1_Conv/b/AssignAssign	C1_Conv/bC1_Conv/Const*
_class
loc:@C1_Conv/b*
_output_shapes
:*
use_locking(*
T0*
validate_shape(
h
C1_Conv/b/readIdentity	C1_Conv/b*
T0*
_class
loc:@C1_Conv/b*
_output_shapes
:
е
C1_Conv/Conv2DConv2DInput_Layer/ReshapeC1_Conv/W/read*
	dilations
*
strides
*/
_output_shapes
:€€€€€€€€€*
T0*
paddingSAME*
use_cudnn_on_gpu(*
data_formatNHWC
l
C1_Conv/addAddC1_Conv/Conv2DC1_Conv/b/read*/
_output_shapes
:€€€€€€€€€*
T0
[
C1_Conv/ReluReluC1_Conv/add*
T0*/
_output_shapes
:€€€€€€€€€
і
C1_Pool/MaxPoolMaxPoolC1_Conv/Relu*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
strides
*
data_formatNHWC*
ksize
*
T0
w
C2_Conv/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         $   
b
C2_Conv/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
d
C2_Conv/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=
≤
(C2_Conv/truncated_normal/TruncatedNormalTruncatedNormalC2_Conv/truncated_normal/shape*
dtype0*
seed2 *

seed *&
_output_shapes
:$*
T0
Я
C2_Conv/truncated_normal/mulMul(C2_Conv/truncated_normal/TruncatedNormalC2_Conv/truncated_normal/stddev*
T0*&
_output_shapes
:$
Н
C2_Conv/truncated_normalAddC2_Conv/truncated_normal/mulC2_Conv/truncated_normal/mean*&
_output_shapes
:$*
T0
Н
	C2_Conv/W
VariableV2*
shape:$*
	container *
shared_name *
dtype0*&
_output_shapes
:$
Ј
C2_Conv/W/AssignAssign	C2_Conv/WC2_Conv/truncated_normal*
validate_shape(*&
_output_shapes
:$*
_class
loc:@C2_Conv/W*
use_locking(*
T0
t
C2_Conv/W/readIdentity	C2_Conv/W*&
_output_shapes
:$*
_class
loc:@C2_Conv/W*
T0
Z
C2_Conv/ConstConst*
valueB$*Ќћћ=*
dtype0*
_output_shapes
:$
u
	C2_Conv/b
VariableV2*
	container *
shared_name *
shape:$*
_output_shapes
:$*
dtype0
†
C2_Conv/b/AssignAssign	C2_Conv/bC2_Conv/Const*
T0*
use_locking(*
_output_shapes
:$*
validate_shape(*
_class
loc:@C2_Conv/b
h
C2_Conv/b/readIdentity	C2_Conv/b*
T0*
_class
loc:@C2_Conv/b*
_output_shapes
:$
б
C2_Conv/Conv2DConv2DC1_Pool/MaxPoolC2_Conv/W/read*
paddingSAME*
	dilations
*/
_output_shapes
:€€€€€€€€€$*
use_cudnn_on_gpu(*
T0*
data_formatNHWC*
strides

l
C2_Conv/addAddC2_Conv/Conv2DC2_Conv/b/read*/
_output_shapes
:€€€€€€€€€$*
T0
[
C2_Conv/ReluReluC2_Conv/add*/
_output_shapes
:€€€€€€€€€$*
T0
і
C2_Pool/MaxPoolMaxPoolC2_Conv/Relu*
paddingSAME*
T0*
ksize
*
data_formatNHWC*
strides
*/
_output_shapes
:€€€€€€€€€$
e
D_Flat/Reshape/shapeConst*
valueB"€€€€д  *
_output_shapes
:*
dtype0
Б
D_Flat/ReshapeReshapeC2_Pool/MaxPoolD_Flat/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€д
v
%D_Hidden_Layer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"д  А   *
dtype0
i
$D_Hidden_Layer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
&D_Hidden_Layer/truncated_normal/stddevConst*
valueB
 *Ќћћ=*
dtype0*
_output_shapes
: 
Ї
/D_Hidden_Layer/truncated_normal/TruncatedNormalTruncatedNormal%D_Hidden_Layer/truncated_normal/shape*
seed2 *

seed * 
_output_shapes
:
дА*
dtype0*
T0
Ѓ
#D_Hidden_Layer/truncated_normal/mulMul/D_Hidden_Layer/truncated_normal/TruncatedNormal&D_Hidden_Layer/truncated_normal/stddev* 
_output_shapes
:
дА*
T0
Ь
D_Hidden_Layer/truncated_normalAdd#D_Hidden_Layer/truncated_normal/mul$D_Hidden_Layer/truncated_normal/mean*
T0* 
_output_shapes
:
дА
И
D_Hidden_Layer/W
VariableV2*
shape:
дА*
	container * 
_output_shapes
:
дА*
shared_name *
dtype0
Ќ
D_Hidden_Layer/W/AssignAssignD_Hidden_Layer/WD_Hidden_Layer/truncated_normal*
validate_shape(*#
_class
loc:@D_Hidden_Layer/W* 
_output_shapes
:
дА*
T0*
use_locking(
Г
D_Hidden_Layer/W/readIdentityD_Hidden_Layer/W*
T0* 
_output_shapes
:
дА*#
_class
loc:@D_Hidden_Layer/W
c
D_Hidden_Layer/ConstConst*
valueBА*Ќћћ=*
_output_shapes	
:А*
dtype0
~
D_Hidden_Layer/b
VariableV2*
shape:А*
	container *
dtype0*
_output_shapes	
:А*
shared_name 
љ
D_Hidden_Layer/b/AssignAssignD_Hidden_Layer/bD_Hidden_Layer/Const*
T0*
use_locking(*
validate_shape(*#
_class
loc:@D_Hidden_Layer/b*
_output_shapes	
:А
~
D_Hidden_Layer/b/readIdentityD_Hidden_Layer/b*
_output_shapes	
:А*
T0*#
_class
loc:@D_Hidden_Layer/b
Я
D_Hidden_Layer/MatMulMatMulD_Flat/ReshapeD_Hidden_Layer/W/read*
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
z
D_Hidden_Layer/addAddD_Hidden_Layer/MatMulD_Hidden_Layer/b/read*
T0*(
_output_shapes
:€€€€€€€€€А
b
D_Hidden_Layer/ReluReluD_Hidden_Layer/add*(
_output_shapes
:€€€€€€€€€А*
T0
e
 D_Hidden_Layer/dropout/keep_probConst*
dtype0*
_output_shapes
: *
valueB
 *ЌћL?
o
D_Hidden_Layer/dropout/ShapeShapeD_Hidden_Layer/Relu*
_output_shapes
:*
out_type0*
T0
n
)D_Hidden_Layer/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
n
)D_Hidden_Layer/dropout/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
ї
3D_Hidden_Layer/dropout/random_uniform/RandomUniformRandomUniformD_Hidden_Layer/dropout/Shape*
T0*
seed2 *(
_output_shapes
:€€€€€€€€€А*

seed *
dtype0
І
)D_Hidden_Layer/dropout/random_uniform/subSub)D_Hidden_Layer/dropout/random_uniform/max)D_Hidden_Layer/dropout/random_uniform/min*
_output_shapes
: *
T0
√
)D_Hidden_Layer/dropout/random_uniform/mulMul3D_Hidden_Layer/dropout/random_uniform/RandomUniform)D_Hidden_Layer/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
µ
%D_Hidden_Layer/dropout/random_uniformAdd)D_Hidden_Layer/dropout/random_uniform/mul)D_Hidden_Layer/dropout/random_uniform/min*(
_output_shapes
:€€€€€€€€€А*
T0
Э
D_Hidden_Layer/dropout/addAdd D_Hidden_Layer/dropout/keep_prob%D_Hidden_Layer/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
t
D_Hidden_Layer/dropout/FloorFloorD_Hidden_Layer/dropout/add*(
_output_shapes
:€€€€€€€€€А*
T0
П
D_Hidden_Layer/dropout/divRealDivD_Hidden_Layer/Relu D_Hidden_Layer/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
О
D_Hidden_Layer/dropout/mulMulD_Hidden_Layer/dropout/divD_Hidden_Layer/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
t
#Output_Layer/truncated_normal/shapeConst*
valueB"А   
   *
_output_shapes
:*
dtype0
g
"Output_Layer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
i
$Output_Layer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *Ќћћ=*
dtype0
µ
-Output_Layer/truncated_normal/TruncatedNormalTruncatedNormal#Output_Layer/truncated_normal/shape*
seed2 *
dtype0*
T0*
_output_shapes
:	А
*

seed 
І
!Output_Layer/truncated_normal/mulMul-Output_Layer/truncated_normal/TruncatedNormal$Output_Layer/truncated_normal/stddev*
_output_shapes
:	А
*
T0
Х
Output_Layer/truncated_normalAdd!Output_Layer/truncated_normal/mul"Output_Layer/truncated_normal/mean*
_output_shapes
:	А
*
T0
Д
Output_Layer/W
VariableV2*
_output_shapes
:	А
*
shape:	А
*
dtype0*
shared_name *
	container 
ƒ
Output_Layer/W/AssignAssignOutput_Layer/WOutput_Layer/truncated_normal*
T0*
validate_shape(*!
_class
loc:@Output_Layer/W*
use_locking(*
_output_shapes
:	А

|
Output_Layer/W/readIdentityOutput_Layer/W*!
_class
loc:@Output_Layer/W*
_output_shapes
:	А
*
T0
_
Output_Layer/ConstConst*
_output_shapes
:
*
valueB
*Ќћћ=*
dtype0
z
Output_Layer/b
VariableV2*
shared_name *
	container *
_output_shapes
:
*
dtype0*
shape:

і
Output_Layer/b/AssignAssignOutput_Layer/bOutput_Layer/Const*
validate_shape(*
_output_shapes
:
*
use_locking(*!
_class
loc:@Output_Layer/b*
T0
w
Output_Layer/b/readIdentityOutput_Layer/b*
T0*!
_class
loc:@Output_Layer/b*
_output_shapes
:

¶
Output_Layer/MatMulMatMulD_Hidden_Layer/dropout/mulOutput_Layer/W/read*'
_output_shapes
:€€€€€€€€€
*
T0*
transpose_b( *
transpose_a( 
s
Output_Layer/addAddOutput_Layer/MatMulOutput_Layer/b/read*
T0*'
_output_shapes
:€€€€€€€€€

c
Output_Layer/SoftmaxSoftmaxOutput_Layer/add*'
_output_shapes
:€€€€€€€€€
*
T0
t
optimizer/y_labelPlaceholder*'
_output_shapes
:€€€€€€€€€
*
shape:€€€€€€€€€
*
dtype0
Ш
Coptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientoptimizer/y_label*
T0*'
_output_shapes
:€€€€€€€€€

u
3optimizer/softmax_cross_entropy_with_logits_sg/RankConst*
_output_shapes
: *
value	B :*
dtype0
И
4optimizer/softmax_cross_entropy_with_logits_sg/ShapeShapeOutput_Layer/Softmax*
T0*
out_type0*
_output_shapes
:
w
5optimizer/softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
К
6optimizer/softmax_cross_entropy_with_logits_sg/Shape_1ShapeOutput_Layer/Softmax*
_output_shapes
:*
T0*
out_type0
v
4optimizer/softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
«
2optimizer/softmax_cross_entropy_with_logits_sg/SubSub5optimizer/softmax_cross_entropy_with_logits_sg/Rank_14optimizer/softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 
∞
:optimizer/softmax_cross_entropy_with_logits_sg/Slice/beginPack2optimizer/softmax_cross_entropy_with_logits_sg/Sub*
T0*
N*
_output_shapes
:*

axis 
Г
9optimizer/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ю
4optimizer/softmax_cross_entropy_with_logits_sg/SliceSlice6optimizer/softmax_cross_entropy_with_logits_sg/Shape_1:optimizer/softmax_cross_entropy_with_logits_sg/Slice/begin9optimizer/softmax_cross_entropy_with_logits_sg/Slice/size*
_output_shapes
:*
Index0*
T0
С
>optimizer/softmax_cross_entropy_with_logits_sg/concat/values_0Const*
dtype0*
valueB:
€€€€€€€€€*
_output_shapes
:
|
:optimizer/softmax_cross_entropy_with_logits_sg/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
≠
5optimizer/softmax_cross_entropy_with_logits_sg/concatConcatV2>optimizer/softmax_cross_entropy_with_logits_sg/concat/values_04optimizer/softmax_cross_entropy_with_logits_sg/Slice:optimizer/softmax_cross_entropy_with_logits_sg/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
„
6optimizer/softmax_cross_entropy_with_logits_sg/ReshapeReshapeOutput_Layer/Softmax5optimizer/softmax_cross_entropy_with_logits_sg/concat*
Tshape0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
w
5optimizer/softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
є
6optimizer/softmax_cross_entropy_with_logits_sg/Shape_2ShapeCoptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0*
_output_shapes
:
x
6optimizer/softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
Ћ
4optimizer/softmax_cross_entropy_with_logits_sg/Sub_1Sub5optimizer/softmax_cross_entropy_with_logits_sg/Rank_26optimizer/softmax_cross_entropy_with_logits_sg/Sub_1/y*
_output_shapes
: *
T0
і
<optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/beginPack4optimizer/softmax_cross_entropy_with_logits_sg/Sub_1*
T0*
_output_shapes
:*
N*

axis 
Е
;optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
§
6optimizer/softmax_cross_entropy_with_logits_sg/Slice_1Slice6optimizer/softmax_cross_entropy_with_logits_sg/Shape_2<optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/begin;optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
T0*
_output_shapes
:
У
@optimizer/softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
~
<optimizer/softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
µ
7optimizer/softmax_cross_entropy_with_logits_sg/concat_1ConcatV2@optimizer/softmax_cross_entropy_with_logits_sg/concat_1/values_06optimizer/softmax_cross_entropy_with_logits_sg/Slice_1<optimizer/softmax_cross_entropy_with_logits_sg/concat_1/axis*

Tidx0*
_output_shapes
:*
N*
T0
К
8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_1ReshapeCoptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradient7optimizer/softmax_cross_entropy_with_logits_sg/concat_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tshape0*
T0
Л
.optimizer/softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits6optimizer/softmax_cross_entropy_with_logits_sg/Reshape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_1*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€*
T0
x
6optimizer/softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :
…
4optimizer/softmax_cross_entropy_with_logits_sg/Sub_2Sub3optimizer/softmax_cross_entropy_with_logits_sg/Rank6optimizer/softmax_cross_entropy_with_logits_sg/Sub_2/y*
_output_shapes
: *
T0
Ж
<optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
_output_shapes
:*
valueB: *
dtype0
≥
;optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/sizePack4optimizer/softmax_cross_entropy_with_logits_sg/Sub_2*
_output_shapes
:*

axis *
T0*
N
Ґ
6optimizer/softmax_cross_entropy_with_logits_sg/Slice_2Slice4optimizer/softmax_cross_entropy_with_logits_sg/Shape<optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/begin;optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/size*
T0*
_output_shapes
:*
Index0
з
8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2Reshape.optimizer/softmax_cross_entropy_with_logits_sg6optimizer/softmax_cross_entropy_with_logits_sg/Slice_2*
Tshape0*
T0*#
_output_shapes
:€€€€€€€€€
Y
optimizer/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Я
optimizer/MeanMean8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2optimizer/Const*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
\
optimizer/gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
b
optimizer/gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  А?
Н
optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0

5optimizer/gradients/optimizer/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Њ
/optimizer/gradients/optimizer/Mean_grad/ReshapeReshapeoptimizer/gradients/Fill5optimizer/gradients/optimizer/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
•
-optimizer/gradients/optimizer/Mean_grad/ShapeShape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2*
_output_shapes
:*
out_type0*
T0
‘
,optimizer/gradients/optimizer/Mean_grad/TileTile/optimizer/gradients/optimizer/Mean_grad/Reshape-optimizer/gradients/optimizer/Mean_grad/Shape*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
І
/optimizer/gradients/optimizer/Mean_grad/Shape_1Shape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2*
out_type0*
_output_shapes
:*
T0
r
/optimizer/gradients/optimizer/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
w
-optimizer/gradients/optimizer/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
“
,optimizer/gradients/optimizer/Mean_grad/ProdProd/optimizer/gradients/optimizer/Mean_grad/Shape_1-optimizer/gradients/optimizer/Mean_grad/Const*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
y
/optimizer/gradients/optimizer/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
÷
.optimizer/gradients/optimizer/Mean_grad/Prod_1Prod/optimizer/gradients/optimizer/Mean_grad/Shape_2/optimizer/gradients/optimizer/Mean_grad/Const_1*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
s
1optimizer/gradients/optimizer/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
Њ
/optimizer/gradients/optimizer/Mean_grad/MaximumMaximum.optimizer/gradients/optimizer/Mean_grad/Prod_11optimizer/gradients/optimizer/Mean_grad/Maximum/y*
_output_shapes
: *
T0
Љ
0optimizer/gradients/optimizer/Mean_grad/floordivFloorDiv,optimizer/gradients/optimizer/Mean_grad/Prod/optimizer/gradients/optimizer/Mean_grad/Maximum*
_output_shapes
: *
T0
¶
,optimizer/gradients/optimizer/Mean_grad/CastCast0optimizer/gradients/optimizer/Mean_grad/floordiv*
_output_shapes
: *

SrcT0*

DstT0*
Truncate( 
ƒ
/optimizer/gradients/optimizer/Mean_grad/truedivRealDiv,optimizer/gradients/optimizer/Mean_grad/Tile,optimizer/gradients/optimizer/Mean_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0
≈
Woptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape.optimizer/softmax_cross_entropy_with_logits_sg*
T0*
_output_shapes
:*
out_type0
™
Yoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshape/optimizer/gradients/optimizer/Mean_grad/truedivWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ш
optimizer/gradients/zeros_like	ZerosLike0optimizer/softmax_cross_entropy_with_logits_sg:1*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
°
Voptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
—
Roptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsYoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeVoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
У
Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulMulRoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims0optimizer/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
”
Roptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax6optimizer/softmax_cross_entropy_with_logits_sg/Reshape*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
б
Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/NegNegRoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
£
Xoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
’
Toptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsYoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeXoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*'
_output_shapes
:€€€€€€€€€*
T0*

Tdim0
≤
Moptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1MulToptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ю
Xoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOpL^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulN^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1
ѓ
`optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentityKoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulY^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*^
_classT
RPloc:@optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
µ
boptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1IdentityMoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1Y^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*`
_classV
TRloc:@optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1
©
Uoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapeOutput_Layer/Softmax*
T0*
out_type0*
_output_shapes
:
џ
Woptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshape`optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyUoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
Tshape0*
T0*'
_output_shapes
:€€€€€€€€€

ў
1optimizer/gradients/Output_Layer/Softmax_grad/mulMulWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeOutput_Layer/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

О
Coptimizer/gradients/Output_Layer/Softmax_grad/Sum/reduction_indicesConst*
valueB :
€€€€€€€€€*
_output_shapes
: *
dtype0
€
1optimizer/gradients/Output_Layer/Softmax_grad/SumSum1optimizer/gradients/Output_Layer/Softmax_grad/mulCoptimizer/gradients/Output_Layer/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0*
	keep_dims(
ц
1optimizer/gradients/Output_Layer/Softmax_grad/subSubWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape1optimizer/gradients/Output_Layer/Softmax_grad/Sum*'
_output_shapes
:€€€€€€€€€
*
T0
µ
3optimizer/gradients/Output_Layer/Softmax_grad/mul_1Mul1optimizer/gradients/Output_Layer/Softmax_grad/subOutput_Layer/Softmax*'
_output_shapes
:€€€€€€€€€
*
T0
В
/optimizer/gradients/Output_Layer/add_grad/ShapeShapeOutput_Layer/MatMul*
T0*
out_type0*
_output_shapes
:
{
1optimizer/gradients/Output_Layer/add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
щ
?optimizer/gradients/Output_Layer/add_grad/BroadcastGradientArgsBroadcastGradientArgs/optimizer/gradients/Output_Layer/add_grad/Shape1optimizer/gradients/Output_Layer/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
к
-optimizer/gradients/Output_Layer/add_grad/SumSum3optimizer/gradients/Output_Layer/Softmax_grad/mul_1?optimizer/gradients/Output_Layer/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
№
1optimizer/gradients/Output_Layer/add_grad/ReshapeReshape-optimizer/gradients/Output_Layer/add_grad/Sum/optimizer/gradients/Output_Layer/add_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
T0*
Tshape0
о
/optimizer/gradients/Output_Layer/add_grad/Sum_1Sum3optimizer/gradients/Output_Layer/Softmax_grad/mul_1Aoptimizer/gradients/Output_Layer/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
’
3optimizer/gradients/Output_Layer/add_grad/Reshape_1Reshape/optimizer/gradients/Output_Layer/add_grad/Sum_11optimizer/gradients/Output_Layer/add_grad/Shape_1*
_output_shapes
:
*
T0*
Tshape0
ђ
:optimizer/gradients/Output_Layer/add_grad/tuple/group_depsNoOp2^optimizer/gradients/Output_Layer/add_grad/Reshape4^optimizer/gradients/Output_Layer/add_grad/Reshape_1
ґ
Boptimizer/gradients/Output_Layer/add_grad/tuple/control_dependencyIdentity1optimizer/gradients/Output_Layer/add_grad/Reshape;^optimizer/gradients/Output_Layer/add_grad/tuple/group_deps*D
_class:
86loc:@optimizer/gradients/Output_Layer/add_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€

ѓ
Doptimizer/gradients/Output_Layer/add_grad/tuple/control_dependency_1Identity3optimizer/gradients/Output_Layer/add_grad/Reshape_1;^optimizer/gradients/Output_Layer/add_grad/tuple/group_deps*
T0*
_output_shapes
:
*F
_class<
:8loc:@optimizer/gradients/Output_Layer/add_grad/Reshape_1
п
3optimizer/gradients/Output_Layer/MatMul_grad/MatMulMatMulBoptimizer/gradients/Output_Layer/add_grad/tuple/control_dependencyOutput_Layer/W/read*
transpose_a( *
T0*
transpose_b(*(
_output_shapes
:€€€€€€€€€А
п
5optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1MatMulD_Hidden_Layer/dropout/mulBoptimizer/gradients/Output_Layer/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	А

≥
=optimizer/gradients/Output_Layer/MatMul_grad/tuple/group_depsNoOp4^optimizer/gradients/Output_Layer/MatMul_grad/MatMul6^optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1
Ѕ
Eoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependencyIdentity3optimizer/gradients/Output_Layer/MatMul_grad/MatMul>^optimizer/gradients/Output_Layer/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*F
_class<
:8loc:@optimizer/gradients/Output_Layer/MatMul_grad/MatMul
Њ
Goptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependency_1Identity5optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1>^optimizer/gradients/Output_Layer/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	А
*H
_class>
<:loc:@optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1
У
9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/ShapeShapeD_Hidden_Layer/dropout/div*
T0*
_output_shapes
:*
out_type0
Ч
;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape_1ShapeD_Hidden_Layer/dropout/Floor*
out_type0*
_output_shapes
:*
T0
Ч
Ioptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
÷
7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/MulMulEoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependencyD_Hidden_Layer/dropout/Floor*(
_output_shapes
:€€€€€€€€€А*
T0
В
7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/SumSum7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/MulIoptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ы
;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/ReshapeReshape7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Sum9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
÷
9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Mul_1MulD_Hidden_Layer/dropout/divEoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
И
9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Sum_1Sum9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Mul_1Koptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Б
=optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1Reshape9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Sum_1;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape_1*
T0*(
_output_shapes
:€€€€€€€€€А*
Tshape0
 
Doptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/group_depsNoOp<^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape>^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1
я
Loptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependencyIdentity;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/ReshapeE^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*N
_classD
B@loc:@optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape
е
Noptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependency_1Identity=optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1E^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*P
_classF
DBloc:@optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1*
T0
М
9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/ShapeShapeD_Hidden_Layer/Relu*
T0*
_output_shapes
:*
out_type0
~
;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
Ч
Ioptimizer/gradients/D_Hidden_Layer/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
й
;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDivRealDivLoptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependency D_Hidden_Layer/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
Ж
7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/SumSum;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDivIoptimizer/gradients/D_Hidden_Layer/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
ы
;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/ReshapeReshape7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Sum9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ж
7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/NegNegD_Hidden_Layer/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
÷
=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_1RealDiv7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Neg D_Hidden_Layer/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
№
=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_2RealDiv=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_1 D_Hidden_Layer/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
ю
7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/mulMulLoptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependency=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:€€€€€€€€€А
Ж
9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Sum_1Sum7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/mulKoptimizer/gradients/D_Hidden_Layer/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
п
=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1Reshape9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Sum_1;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
 
Doptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/group_depsNoOp<^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape>^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1
я
Loptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/control_dependencyIdentity;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/ReshapeE^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/group_deps*N
_classD
B@loc:@optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape*(
_output_shapes
:€€€€€€€€€А*
T0
”
Noptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/control_dependency_1Identity=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1E^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
: *P
_classF
DBloc:@optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1
„
5optimizer/gradients/D_Hidden_Layer/Relu_grad/ReluGradReluGradLoptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/control_dependencyD_Hidden_Layer/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
Ж
1optimizer/gradients/D_Hidden_Layer/add_grad/ShapeShapeD_Hidden_Layer/MatMul*
out_type0*
T0*
_output_shapes
:
~
3optimizer/gradients/D_Hidden_Layer/add_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:А
€
Aoptimizer/gradients/D_Hidden_Layer/add_grad/BroadcastGradientArgsBroadcastGradientArgs1optimizer/gradients/D_Hidden_Layer/add_grad/Shape3optimizer/gradients/D_Hidden_Layer/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
р
/optimizer/gradients/D_Hidden_Layer/add_grad/SumSum5optimizer/gradients/D_Hidden_Layer/Relu_grad/ReluGradAoptimizer/gradients/D_Hidden_Layer/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
г
3optimizer/gradients/D_Hidden_Layer/add_grad/ReshapeReshape/optimizer/gradients/D_Hidden_Layer/add_grad/Sum1optimizer/gradients/D_Hidden_Layer/add_grad/Shape*
Tshape0*
T0*(
_output_shapes
:€€€€€€€€€А
ф
1optimizer/gradients/D_Hidden_Layer/add_grad/Sum_1Sum5optimizer/gradients/D_Hidden_Layer/Relu_grad/ReluGradCoptimizer/gradients/D_Hidden_Layer/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
№
5optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1Reshape1optimizer/gradients/D_Hidden_Layer/add_grad/Sum_13optimizer/gradients/D_Hidden_Layer/add_grad/Shape_1*
_output_shapes	
:А*
T0*
Tshape0
≤
<optimizer/gradients/D_Hidden_Layer/add_grad/tuple/group_depsNoOp4^optimizer/gradients/D_Hidden_Layer/add_grad/Reshape6^optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1
њ
Doptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependencyIdentity3optimizer/gradients/D_Hidden_Layer/add_grad/Reshape=^optimizer/gradients/D_Hidden_Layer/add_grad/tuple/group_deps*F
_class<
:8loc:@optimizer/gradients/D_Hidden_Layer/add_grad/Reshape*(
_output_shapes
:€€€€€€€€€А*
T0
Є
Foptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependency_1Identity5optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1=^optimizer/gradients/D_Hidden_Layer/add_grad/tuple/group_deps*
T0*H
_class>
<:loc:@optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1*
_output_shapes	
:А
х
5optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMulMatMulDoptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependencyD_Hidden_Layer/W/read*
transpose_a( *
transpose_b(*
T0*(
_output_shapes
:€€€€€€€€€д
и
7optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1MatMulD_Flat/ReshapeDoptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependency* 
_output_shapes
:
дА*
transpose_a(*
transpose_b( *
T0
є
?optimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/group_depsNoOp6^optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul8^optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1
…
Goptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependencyIdentity5optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul@^optimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€д
«
Ioptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependency_1Identity7optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1@^optimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/group_deps*
T0*J
_class@
><loc:@optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1* 
_output_shapes
:
дА
|
-optimizer/gradients/D_Flat/Reshape_grad/ShapeShapeC2_Pool/MaxPool*
out_type0*
_output_shapes
:*
T0
ъ
/optimizer/gradients/D_Flat/Reshape_grad/ReshapeReshapeGoptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependency-optimizer/gradients/D_Flat/Reshape_grad/Shape*
Tshape0*
T0*/
_output_shapes
:€€€€€€€€€$
Я
4optimizer/gradients/C2_Pool/MaxPool_grad/MaxPoolGradMaxPoolGradC2_Conv/ReluC2_Pool/MaxPool/optimizer/gradients/D_Flat/Reshape_grad/Reshape*/
_output_shapes
:€€€€€€€€€$*
paddingSAME*
strides
*
data_formatNHWC*
ksize
*
T0
Є
.optimizer/gradients/C2_Conv/Relu_grad/ReluGradReluGrad4optimizer/gradients/C2_Pool/MaxPool_grad/MaxPoolGradC2_Conv/Relu*
T0*/
_output_shapes
:€€€€€€€€€$
x
*optimizer/gradients/C2_Conv/add_grad/ShapeShapeC2_Conv/Conv2D*
T0*
out_type0*
_output_shapes
:
v
,optimizer/gradients/C2_Conv/add_grad/Shape_1Const*
valueB:$*
_output_shapes
:*
dtype0
к
:optimizer/gradients/C2_Conv/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/C2_Conv/add_grad/Shape,optimizer/gradients/C2_Conv/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
џ
(optimizer/gradients/C2_Conv/add_grad/SumSum.optimizer/gradients/C2_Conv/Relu_grad/ReluGrad:optimizer/gradients/C2_Conv/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
’
,optimizer/gradients/C2_Conv/add_grad/ReshapeReshape(optimizer/gradients/C2_Conv/add_grad/Sum*optimizer/gradients/C2_Conv/add_grad/Shape*/
_output_shapes
:€€€€€€€€€$*
T0*
Tshape0
я
*optimizer/gradients/C2_Conv/add_grad/Sum_1Sum.optimizer/gradients/C2_Conv/Relu_grad/ReluGrad<optimizer/gradients/C2_Conv/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
∆
.optimizer/gradients/C2_Conv/add_grad/Reshape_1Reshape*optimizer/gradients/C2_Conv/add_grad/Sum_1,optimizer/gradients/C2_Conv/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:$
Э
5optimizer/gradients/C2_Conv/add_grad/tuple/group_depsNoOp-^optimizer/gradients/C2_Conv/add_grad/Reshape/^optimizer/gradients/C2_Conv/add_grad/Reshape_1
™
=optimizer/gradients/C2_Conv/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/C2_Conv/add_grad/Reshape6^optimizer/gradients/C2_Conv/add_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€$*
T0*?
_class5
31loc:@optimizer/gradients/C2_Conv/add_grad/Reshape
Ы
?optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/C2_Conv/add_grad/Reshape_16^optimizer/gradients/C2_Conv/add_grad/tuple/group_deps*
T0*A
_class7
53loc:@optimizer/gradients/C2_Conv/add_grad/Reshape_1*
_output_shapes
:$
Э
.optimizer/gradients/C2_Conv/Conv2D_grad/ShapeNShapeNC1_Pool/MaxPoolC2_Conv/W/read* 
_output_shapes
::*
T0*
N*
out_type0
щ
;optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput.optimizer/gradients/C2_Conv/Conv2D_grad/ShapeNC2_Conv/W/read=optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency*
	dilations
*
use_cudnn_on_gpu(*
T0*
strides
*
data_formatNHWC*
paddingSAME*/
_output_shapes
:€€€€€€€€€
х
<optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterC1_Pool/MaxPool0optimizer/gradients/C2_Conv/Conv2D_grad/ShapeN:1=optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency*
data_formatNHWC*
paddingSAME*
	dilations
*
T0*
use_cudnn_on_gpu(*&
_output_shapes
:$*
strides

љ
8optimizer/gradients/C2_Conv/Conv2D_grad/tuple/group_depsNoOp=^optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilter<^optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInput
ќ
@optimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependencyIdentity;optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInput9^optimizer/gradients/C2_Conv/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*N
_classD
B@loc:@optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInput
…
Boptimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependency_1Identity<optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilter9^optimizer/gradients/C2_Conv/Conv2D_grad/tuple/group_deps*&
_output_shapes
:$*O
_classE
CAloc:@optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilter*
T0
∞
4optimizer/gradients/C1_Pool/MaxPool_grad/MaxPoolGradMaxPoolGradC1_Conv/ReluC1_Pool/MaxPool@optimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependency*
T0*
strides
*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
data_formatNHWC*
ksize

Є
.optimizer/gradients/C1_Conv/Relu_grad/ReluGradReluGrad4optimizer/gradients/C1_Pool/MaxPool_grad/MaxPoolGradC1_Conv/Relu*/
_output_shapes
:€€€€€€€€€*
T0
x
*optimizer/gradients/C1_Conv/add_grad/ShapeShapeC1_Conv/Conv2D*
T0*
out_type0*
_output_shapes
:
v
,optimizer/gradients/C1_Conv/add_grad/Shape_1Const*
_output_shapes
:*
valueB:*
dtype0
к
:optimizer/gradients/C1_Conv/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/C1_Conv/add_grad/Shape,optimizer/gradients/C1_Conv/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
џ
(optimizer/gradients/C1_Conv/add_grad/SumSum.optimizer/gradients/C1_Conv/Relu_grad/ReluGrad:optimizer/gradients/C1_Conv/add_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
’
,optimizer/gradients/C1_Conv/add_grad/ReshapeReshape(optimizer/gradients/C1_Conv/add_grad/Sum*optimizer/gradients/C1_Conv/add_grad/Shape*
T0*/
_output_shapes
:€€€€€€€€€*
Tshape0
я
*optimizer/gradients/C1_Conv/add_grad/Sum_1Sum.optimizer/gradients/C1_Conv/Relu_grad/ReluGrad<optimizer/gradients/C1_Conv/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
∆
.optimizer/gradients/C1_Conv/add_grad/Reshape_1Reshape*optimizer/gradients/C1_Conv/add_grad/Sum_1,optimizer/gradients/C1_Conv/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
Э
5optimizer/gradients/C1_Conv/add_grad/tuple/group_depsNoOp-^optimizer/gradients/C1_Conv/add_grad/Reshape/^optimizer/gradients/C1_Conv/add_grad/Reshape_1
™
=optimizer/gradients/C1_Conv/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/C1_Conv/add_grad/Reshape6^optimizer/gradients/C1_Conv/add_grad/tuple/group_deps*
T0*/
_output_shapes
:€€€€€€€€€*?
_class5
31loc:@optimizer/gradients/C1_Conv/add_grad/Reshape
Ы
?optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/C1_Conv/add_grad/Reshape_16^optimizer/gradients/C1_Conv/add_grad/tuple/group_deps*
T0*
_output_shapes
:*A
_class7
53loc:@optimizer/gradients/C1_Conv/add_grad/Reshape_1
°
.optimizer/gradients/C1_Conv/Conv2D_grad/ShapeNShapeNInput_Layer/ReshapeC1_Conv/W/read*
T0* 
_output_shapes
::*
out_type0*
N
щ
;optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput.optimizer/gradients/C1_Conv/Conv2D_grad/ShapeNC1_Conv/W/read=optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€*
T0*
paddingSAME*
	dilations
*
strides
*
use_cudnn_on_gpu(
щ
<optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterInput_Layer/Reshape0optimizer/gradients/C1_Conv/Conv2D_grad/ShapeN:1=optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency*
strides
*
paddingSAME*
use_cudnn_on_gpu(*
	dilations
*&
_output_shapes
:*
data_formatNHWC*
T0
љ
8optimizer/gradients/C1_Conv/Conv2D_grad/tuple/group_depsNoOp=^optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilter<^optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInput
ќ
@optimizer/gradients/C1_Conv/Conv2D_grad/tuple/control_dependencyIdentity;optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInput9^optimizer/gradients/C1_Conv/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*N
_classD
B@loc:@optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInput*
T0
…
Boptimizer/gradients/C1_Conv/Conv2D_grad/tuple/control_dependency_1Identity<optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilter9^optimizer/gradients/C1_Conv/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*O
_classE
CAloc:@optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilter*
T0
Ж
#optimizer/beta1_power/initial_valueConst*
_output_shapes
: *
_class
loc:@C1_Conv/W*
valueB
 *fff?*
dtype0
Ч
optimizer/beta1_power
VariableV2*
_output_shapes
: *
dtype0*
_class
loc:@C1_Conv/W*
	container *
shape: *
shared_name 
 
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
_class
loc:@C1_Conv/W*
_output_shapes
: *
use_locking(*
T0*
validate_shape(
|
optimizer/beta1_power/readIdentityoptimizer/beta1_power*
T0*
_output_shapes
: *
_class
loc:@C1_Conv/W
Ж
#optimizer/beta2_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *wЊ?*
_class
loc:@C1_Conv/W
Ч
optimizer/beta2_power
VariableV2*
	container *
dtype0*
_output_shapes
: *
_class
loc:@C1_Conv/W*
shape: *
shared_name 
 
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
T0*
use_locking(*
_output_shapes
: *
_class
loc:@C1_Conv/W*
validate_shape(
|
optimizer/beta2_power/readIdentityoptimizer/beta2_power*
T0*
_output_shapes
: *
_class
loc:@C1_Conv/W
£
 C1_Conv/W/Adam/Initializer/zerosConst*
_class
loc:@C1_Conv/W*&
_output_shapes
:*%
valueB*    *
dtype0
∞
C1_Conv/W/Adam
VariableV2*
	container *
shared_name *&
_output_shapes
:*
shape:*
dtype0*
_class
loc:@C1_Conv/W
…
C1_Conv/W/Adam/AssignAssignC1_Conv/W/Adam C1_Conv/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@C1_Conv/W*
validate_shape(*&
_output_shapes
:
~
C1_Conv/W/Adam/readIdentityC1_Conv/W/Adam*&
_output_shapes
:*
_class
loc:@C1_Conv/W*
T0
•
"C1_Conv/W/Adam_1/Initializer/zerosConst*
_class
loc:@C1_Conv/W*
dtype0*%
valueB*    *&
_output_shapes
:
≤
C1_Conv/W/Adam_1
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *
_class
loc:@C1_Conv/W*
shape:*
	container 
ѕ
C1_Conv/W/Adam_1/AssignAssignC1_Conv/W/Adam_1"C1_Conv/W/Adam_1/Initializer/zeros*
_class
loc:@C1_Conv/W*
T0*&
_output_shapes
:*
use_locking(*
validate_shape(
В
C1_Conv/W/Adam_1/readIdentityC1_Conv/W/Adam_1*
_class
loc:@C1_Conv/W*
T0*&
_output_shapes
:
Л
 C1_Conv/b/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@C1_Conv/b*
dtype0*
_output_shapes
:
Ш
C1_Conv/b/Adam
VariableV2*
shape:*
	container *
_class
loc:@C1_Conv/b*
dtype0*
shared_name *
_output_shapes
:
љ
C1_Conv/b/Adam/AssignAssignC1_Conv/b/Adam C1_Conv/b/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@C1_Conv/b*
_output_shapes
:
r
C1_Conv/b/Adam/readIdentityC1_Conv/b/Adam*
_output_shapes
:*
T0*
_class
loc:@C1_Conv/b
Н
"C1_Conv/b/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@C1_Conv/b*
valueB*    
Ъ
C1_Conv/b/Adam_1
VariableV2*
shape:*
_output_shapes
:*
_class
loc:@C1_Conv/b*
dtype0*
	container *
shared_name 
√
C1_Conv/b/Adam_1/AssignAssignC1_Conv/b/Adam_1"C1_Conv/b/Adam_1/Initializer/zeros*
_class
loc:@C1_Conv/b*
validate_shape(*
T0*
use_locking(*
_output_shapes
:
v
C1_Conv/b/Adam_1/readIdentityC1_Conv/b/Adam_1*
_class
loc:@C1_Conv/b*
T0*
_output_shapes
:
І
0C2_Conv/W/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@C2_Conv/W*%
valueB"         $   *
dtype0
Й
&C2_Conv/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@C2_Conv/W*
_output_shapes
: *
dtype0
г
 C2_Conv/W/Adam/Initializer/zerosFill0C2_Conv/W/Adam/Initializer/zeros/shape_as_tensor&C2_Conv/W/Adam/Initializer/zeros/Const*

index_type0*&
_output_shapes
:$*
_class
loc:@C2_Conv/W*
T0
∞
C2_Conv/W/Adam
VariableV2*
_class
loc:@C2_Conv/W*
shared_name *
shape:$*
dtype0*&
_output_shapes
:$*
	container 
…
C2_Conv/W/Adam/AssignAssignC2_Conv/W/Adam C2_Conv/W/Adam/Initializer/zeros*
_class
loc:@C2_Conv/W*
use_locking(*&
_output_shapes
:$*
T0*
validate_shape(
~
C2_Conv/W/Adam/readIdentityC2_Conv/W/Adam*
_class
loc:@C2_Conv/W*&
_output_shapes
:$*
T0
©
2C2_Conv/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"         $   *
_class
loc:@C2_Conv/W
Л
(C2_Conv/W/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@C2_Conv/W
й
"C2_Conv/W/Adam_1/Initializer/zerosFill2C2_Conv/W/Adam_1/Initializer/zeros/shape_as_tensor(C2_Conv/W/Adam_1/Initializer/zeros/Const*

index_type0*
T0*&
_output_shapes
:$*
_class
loc:@C2_Conv/W
≤
C2_Conv/W/Adam_1
VariableV2*
dtype0*
shape:$*&
_output_shapes
:$*
shared_name *
_class
loc:@C2_Conv/W*
	container 
ѕ
C2_Conv/W/Adam_1/AssignAssignC2_Conv/W/Adam_1"C2_Conv/W/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*&
_output_shapes
:$*
T0*
_class
loc:@C2_Conv/W
В
C2_Conv/W/Adam_1/readIdentityC2_Conv/W/Adam_1*
T0*&
_output_shapes
:$*
_class
loc:@C2_Conv/W
Л
 C2_Conv/b/Adam/Initializer/zerosConst*
_class
loc:@C2_Conv/b*
valueB$*    *
_output_shapes
:$*
dtype0
Ш
C2_Conv/b/Adam
VariableV2*
_output_shapes
:$*
shape:$*
dtype0*
_class
loc:@C2_Conv/b*
shared_name *
	container 
љ
C2_Conv/b/Adam/AssignAssignC2_Conv/b/Adam C2_Conv/b/Adam/Initializer/zeros*
_output_shapes
:$*
use_locking(*
_class
loc:@C2_Conv/b*
T0*
validate_shape(
r
C2_Conv/b/Adam/readIdentityC2_Conv/b/Adam*
_output_shapes
:$*
_class
loc:@C2_Conv/b*
T0
Н
"C2_Conv/b/Adam_1/Initializer/zerosConst*
valueB$*    *
_output_shapes
:$*
_class
loc:@C2_Conv/b*
dtype0
Ъ
C2_Conv/b/Adam_1
VariableV2*
_class
loc:@C2_Conv/b*
shape:$*
	container *
shared_name *
_output_shapes
:$*
dtype0
√
C2_Conv/b/Adam_1/AssignAssignC2_Conv/b/Adam_1"C2_Conv/b/Adam_1/Initializer/zeros*
_output_shapes
:$*
validate_shape(*
T0*
use_locking(*
_class
loc:@C2_Conv/b
v
C2_Conv/b/Adam_1/readIdentityC2_Conv/b/Adam_1*
T0*
_output_shapes
:$*
_class
loc:@C2_Conv/b
≠
7D_Hidden_Layer/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@D_Hidden_Layer/W*
_output_shapes
:*
valueB"д  А   *
dtype0
Ч
-D_Hidden_Layer/W/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *#
_class
loc:@D_Hidden_Layer/W
щ
'D_Hidden_Layer/W/Adam/Initializer/zerosFill7D_Hidden_Layer/W/Adam/Initializer/zeros/shape_as_tensor-D_Hidden_Layer/W/Adam/Initializer/zeros/Const*#
_class
loc:@D_Hidden_Layer/W*
T0* 
_output_shapes
:
дА*

index_type0
≤
D_Hidden_Layer/W/Adam
VariableV2*#
_class
loc:@D_Hidden_Layer/W*
shared_name *
shape:
дА*
dtype0*
	container * 
_output_shapes
:
дА
я
D_Hidden_Layer/W/Adam/AssignAssignD_Hidden_Layer/W/Adam'D_Hidden_Layer/W/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_output_shapes
:
дА*#
_class
loc:@D_Hidden_Layer/W
Н
D_Hidden_Layer/W/Adam/readIdentityD_Hidden_Layer/W/Adam*
T0*#
_class
loc:@D_Hidden_Layer/W* 
_output_shapes
:
дА
ѓ
9D_Hidden_Layer/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@D_Hidden_Layer/W*
dtype0*
valueB"д  А   *
_output_shapes
:
Щ
/D_Hidden_Layer/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@D_Hidden_Layer/W*
dtype0*
_output_shapes
: 
€
)D_Hidden_Layer/W/Adam_1/Initializer/zerosFill9D_Hidden_Layer/W/Adam_1/Initializer/zeros/shape_as_tensor/D_Hidden_Layer/W/Adam_1/Initializer/zeros/Const*#
_class
loc:@D_Hidden_Layer/W*

index_type0*
T0* 
_output_shapes
:
дА
і
D_Hidden_Layer/W/Adam_1
VariableV2*
	container * 
_output_shapes
:
дА*
shared_name *#
_class
loc:@D_Hidden_Layer/W*
shape:
дА*
dtype0
е
D_Hidden_Layer/W/Adam_1/AssignAssignD_Hidden_Layer/W/Adam_1)D_Hidden_Layer/W/Adam_1/Initializer/zeros*
T0*#
_class
loc:@D_Hidden_Layer/W*
validate_shape(* 
_output_shapes
:
дА*
use_locking(
С
D_Hidden_Layer/W/Adam_1/readIdentityD_Hidden_Layer/W/Adam_1* 
_output_shapes
:
дА*
T0*#
_class
loc:@D_Hidden_Layer/W
Ы
'D_Hidden_Layer/b/Adam/Initializer/zerosConst*#
_class
loc:@D_Hidden_Layer/b*
valueBА*    *
dtype0*
_output_shapes	
:А
®
D_Hidden_Layer/b/Adam
VariableV2*
	container *
shape:А*#
_class
loc:@D_Hidden_Layer/b*
_output_shapes	
:А*
dtype0*
shared_name 
Џ
D_Hidden_Layer/b/Adam/AssignAssignD_Hidden_Layer/b/Adam'D_Hidden_Layer/b/Adam/Initializer/zeros*
validate_shape(*#
_class
loc:@D_Hidden_Layer/b*
_output_shapes	
:А*
use_locking(*
T0
И
D_Hidden_Layer/b/Adam/readIdentityD_Hidden_Layer/b/Adam*#
_class
loc:@D_Hidden_Layer/b*
T0*
_output_shapes	
:А
Э
)D_Hidden_Layer/b/Adam_1/Initializer/zerosConst*
_output_shapes	
:А*
dtype0*#
_class
loc:@D_Hidden_Layer/b*
valueBА*    
™
D_Hidden_Layer/b/Adam_1
VariableV2*
_output_shapes	
:А*
shared_name *
	container *
shape:А*#
_class
loc:@D_Hidden_Layer/b*
dtype0
а
D_Hidden_Layer/b/Adam_1/AssignAssignD_Hidden_Layer/b/Adam_1)D_Hidden_Layer/b/Adam_1/Initializer/zeros*#
_class
loc:@D_Hidden_Layer/b*
validate_shape(*
use_locking(*
_output_shapes	
:А*
T0
М
D_Hidden_Layer/b/Adam_1/readIdentityD_Hidden_Layer/b/Adam_1*
T0*
_output_shapes	
:А*#
_class
loc:@D_Hidden_Layer/b
©
5Output_Layer/W/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*!
_class
loc:@Output_Layer/W*
valueB"А   
   
У
+Output_Layer/W/Adam/Initializer/zeros/ConstConst*
dtype0*!
_class
loc:@Output_Layer/W*
valueB
 *    *
_output_shapes
: 
р
%Output_Layer/W/Adam/Initializer/zerosFill5Output_Layer/W/Adam/Initializer/zeros/shape_as_tensor+Output_Layer/W/Adam/Initializer/zeros/Const*!
_class
loc:@Output_Layer/W*
_output_shapes
:	А
*
T0*

index_type0
ђ
Output_Layer/W/Adam
VariableV2*!
_class
loc:@Output_Layer/W*
dtype0*
_output_shapes
:	А
*
shared_name *
shape:	А
*
	container 
÷
Output_Layer/W/Adam/AssignAssignOutput_Layer/W/Adam%Output_Layer/W/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:	А
*!
_class
loc:@Output_Layer/W*
T0
Ж
Output_Layer/W/Adam/readIdentityOutput_Layer/W/Adam*!
_class
loc:@Output_Layer/W*
_output_shapes
:	А
*
T0
Ђ
7Output_Layer/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*!
_class
loc:@Output_Layer/W*
valueB"А   
   
Х
-Output_Layer/W/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *!
_class
loc:@Output_Layer/W*
dtype0*
valueB
 *    
ц
'Output_Layer/W/Adam_1/Initializer/zerosFill7Output_Layer/W/Adam_1/Initializer/zeros/shape_as_tensor-Output_Layer/W/Adam_1/Initializer/zeros/Const*
_output_shapes
:	А
*

index_type0*!
_class
loc:@Output_Layer/W*
T0
Ѓ
Output_Layer/W/Adam_1
VariableV2*!
_class
loc:@Output_Layer/W*
shared_name *
dtype0*
_output_shapes
:	А
*
shape:	А
*
	container 
№
Output_Layer/W/Adam_1/AssignAssignOutput_Layer/W/Adam_1'Output_Layer/W/Adam_1/Initializer/zeros*!
_class
loc:@Output_Layer/W*
use_locking(*
_output_shapes
:	А
*
validate_shape(*
T0
К
Output_Layer/W/Adam_1/readIdentityOutput_Layer/W/Adam_1*!
_class
loc:@Output_Layer/W*
_output_shapes
:	А
*
T0
Х
%Output_Layer/b/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    *!
_class
loc:@Output_Layer/b
Ґ
Output_Layer/b/Adam
VariableV2*
_output_shapes
:
*
	container *
shared_name *
dtype0*!
_class
loc:@Output_Layer/b*
shape:

—
Output_Layer/b/Adam/AssignAssignOutput_Layer/b/Adam%Output_Layer/b/Adam/Initializer/zeros*
use_locking(*!
_class
loc:@Output_Layer/b*
T0*
_output_shapes
:
*
validate_shape(
Б
Output_Layer/b/Adam/readIdentityOutput_Layer/b/Adam*!
_class
loc:@Output_Layer/b*
_output_shapes
:
*
T0
Ч
'Output_Layer/b/Adam_1/Initializer/zerosConst*
_output_shapes
:
*
dtype0*
valueB
*    *!
_class
loc:@Output_Layer/b
§
Output_Layer/b/Adam_1
VariableV2*
dtype0*
_output_shapes
:
*
shared_name *
shape:
*!
_class
loc:@Output_Layer/b*
	container 
„
Output_Layer/b/Adam_1/AssignAssignOutput_Layer/b/Adam_1'Output_Layer/b/Adam_1/Initializer/zeros*!
_class
loc:@Output_Layer/b*
use_locking(*
T0*
_output_shapes
:
*
validate_shape(
Е
Output_Layer/b/Adam_1/readIdentityOutput_Layer/b/Adam_1*
T0*!
_class
loc:@Output_Layer/b*
_output_shapes
:

a
optimizer/Adam/learning_rateConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
Y
optimizer/Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
Y
optimizer/Adam/beta2Const*
valueB
 *wЊ?*
_output_shapes
: *
dtype0
[
optimizer/Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *wћ+2
Ј
)optimizer/Adam/update_C1_Conv/W/ApplyAdam	ApplyAdam	C1_Conv/WC1_Conv/W/AdamC1_Conv/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/C1_Conv/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *
T0*
_class
loc:@C1_Conv/W*
use_locking( *&
_output_shapes
:
®
)optimizer/Adam/update_C1_Conv/b/ApplyAdam	ApplyAdam	C1_Conv/bC1_Conv/b/AdamC1_Conv/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency_1*
_output_shapes
:*
T0*
_class
loc:@C1_Conv/b*
use_nesterov( *
use_locking( 
Ј
)optimizer/Adam/update_C2_Conv/W/ApplyAdam	ApplyAdam	C2_Conv/WC2_Conv/W/AdamC2_Conv/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
:$*
T0*
_class
loc:@C2_Conv/W*
use_nesterov( *
use_locking( 
®
)optimizer/Adam/update_C2_Conv/b/ApplyAdam	ApplyAdam	C2_Conv/bC2_Conv/b/AdamC2_Conv/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency_1*
use_nesterov( *
_class
loc:@C2_Conv/b*
_output_shapes
:$*
T0*
use_locking( 
џ
0optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam	ApplyAdamD_Hidden_Layer/WD_Hidden_Layer/W/AdamD_Hidden_Layer/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonIoptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_output_shapes
:
дА*
use_nesterov( *#
_class
loc:@D_Hidden_Layer/W
”
0optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam	ApplyAdamD_Hidden_Layer/bD_Hidden_Layer/b/AdamD_Hidden_Layer/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonFoptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes	
:А*
T0*
use_locking( *#
_class
loc:@D_Hidden_Layer/b
ќ
.optimizer/Adam/update_Output_Layer/W/ApplyAdam	ApplyAdamOutput_Layer/WOutput_Layer/W/AdamOutput_Layer/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonGoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@Output_Layer/W*
use_nesterov( *
use_locking( *
_output_shapes
:	А
*
T0
∆
.optimizer/Adam/update_Output_Layer/b/ApplyAdam	ApplyAdamOutput_Layer/bOutput_Layer/b/AdamOutput_Layer/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonDoptimizer/gradients/Output_Layer/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:
*!
_class
loc:@Output_Layer/b*
T0*
use_locking( 
В
optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta1*^optimizer/Adam/update_C1_Conv/W/ApplyAdam*^optimizer/Adam/update_C1_Conv/b/ApplyAdam*^optimizer/Adam/update_C2_Conv/W/ApplyAdam*^optimizer/Adam/update_C2_Conv/b/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam/^optimizer/Adam/update_Output_Layer/W/ApplyAdam/^optimizer/Adam/update_Output_Layer/b/ApplyAdam*
_class
loc:@C1_Conv/W*
T0*
_output_shapes
: 
≤
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
use_locking( *
_class
loc:@C1_Conv/W*
validate_shape(*
_output_shapes
: *
T0
Д
optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta2*^optimizer/Adam/update_C1_Conv/W/ApplyAdam*^optimizer/Adam/update_C1_Conv/b/ApplyAdam*^optimizer/Adam/update_C2_Conv/W/ApplyAdam*^optimizer/Adam/update_C2_Conv/b/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam/^optimizer/Adam/update_Output_Layer/W/ApplyAdam/^optimizer/Adam/update_Output_Layer/b/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@C1_Conv/W
ґ
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
_output_shapes
: *
_class
loc:@C1_Conv/W*
T0*
use_locking( *
validate_shape(
ј
optimizer/AdamNoOp^optimizer/Adam/Assign^optimizer/Adam/Assign_1*^optimizer/Adam/update_C1_Conv/W/ApplyAdam*^optimizer/Adam/update_C1_Conv/b/ApplyAdam*^optimizer/Adam/update_C2_Conv/W/ApplyAdam*^optimizer/Adam/update_C2_Conv/b/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam/^optimizer/Adam/update_Output_Layer/W/ApplyAdam/^optimizer/Adam/update_Output_Layer/b/ApplyAdam
a
evaluate_model/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
†
evaluate_model/ArgMaxArgMaxoptimizer/y_labelevaluate_model/ArgMax/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*
T0*

Tidx0
c
!evaluate_model/ArgMax_1/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
І
evaluate_model/ArgMax_1ArgMaxOutput_Layer/Softmax!evaluate_model/ArgMax_1/dimension*
T0*

Tidx0*#
_output_shapes
:€€€€€€€€€*
output_type0	
{
evaluate_model/EqualEqualevaluate_model/ArgMaxevaluate_model/ArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€
~
evaluate_model/CastCastevaluate_model/Equal*

SrcT0
*#
_output_shapes
:€€€€€€€€€*
Truncate( *

DstT0
^
evaluate_model/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Д
evaluate_model/MeanMeanevaluate_model/Castevaluate_model/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
Ї
initNoOp^C1_Conv/W/Adam/Assign^C1_Conv/W/Adam_1/Assign^C1_Conv/W/Assign^C1_Conv/b/Adam/Assign^C1_Conv/b/Adam_1/Assign^C1_Conv/b/Assign^C2_Conv/W/Adam/Assign^C2_Conv/W/Adam_1/Assign^C2_Conv/W/Assign^C2_Conv/b/Adam/Assign^C2_Conv/b/Adam_1/Assign^C2_Conv/b/Assign^D_Hidden_Layer/W/Adam/Assign^D_Hidden_Layer/W/Adam_1/Assign^D_Hidden_Layer/W/Assign^D_Hidden_Layer/b/Adam/Assign^D_Hidden_Layer/b/Adam_1/Assign^D_Hidden_Layer/b/Assign^Output_Layer/W/Adam/Assign^Output_Layer/W/Adam_1/Assign^Output_Layer/W/Assign^Output_Layer/b/Adam/Assign^Output_Layer/b/Adam_1/Assign^Output_Layer/b/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign
R
ArgMax/dimensionConst*
_output_shapes
: *
value	B :*
dtype0
Е
ArgMaxArgMaxOutput_Layer/SoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0"hҐ/Л28     Oф9	Руе°е„AJ•р
…&І&
:
Add
x"T
y"T
z"T"
Ttype:
2	
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
м
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
‘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
о
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
2
StopGradient

input"T
output"T"	
Ttype
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
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
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype*1.12.02v1.12.0-0-ga6d8ffae09©≠
r
Input_Layer/xPlaceholder*
dtype0*(
_output_shapes
:€€€€€€€€€Р*
shape:€€€€€€€€€Р
r
Input_Layer/Reshape/shapeConst*%
valueB"€€€€         *
_output_shapes
:*
dtype0
Р
Input_Layer/ReshapeReshapeInput_Layer/xInput_Layer/Reshape/shape*
Tshape0*/
_output_shapes
:€€€€€€€€€*
T0
w
C1_Conv/truncated_normal/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
b
C1_Conv/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
d
C1_Conv/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=
≤
(C1_Conv/truncated_normal/TruncatedNormalTruncatedNormalC1_Conv/truncated_normal/shape*

seed *
dtype0*
seed2 *
T0*&
_output_shapes
:
Я
C1_Conv/truncated_normal/mulMul(C1_Conv/truncated_normal/TruncatedNormalC1_Conv/truncated_normal/stddev*
T0*&
_output_shapes
:
Н
C1_Conv/truncated_normalAddC1_Conv/truncated_normal/mulC1_Conv/truncated_normal/mean*
T0*&
_output_shapes
:
Н
	C1_Conv/W
VariableV2*
shape:*
	container *
shared_name *&
_output_shapes
:*
dtype0
Ј
C1_Conv/W/AssignAssign	C1_Conv/WC1_Conv/truncated_normal*&
_output_shapes
:*
use_locking(*
_class
loc:@C1_Conv/W*
validate_shape(*
T0
t
C1_Conv/W/readIdentity	C1_Conv/W*
T0*
_class
loc:@C1_Conv/W*&
_output_shapes
:
Z
C1_Conv/ConstConst*
dtype0*
valueB*Ќћћ=*
_output_shapes
:
u
	C1_Conv/b
VariableV2*
dtype0*
	container *
shape:*
_output_shapes
:*
shared_name 
†
C1_Conv/b/AssignAssign	C1_Conv/bC1_Conv/Const*
_output_shapes
:*
_class
loc:@C1_Conv/b*
T0*
validate_shape(*
use_locking(
h
C1_Conv/b/readIdentity	C1_Conv/b*
_output_shapes
:*
T0*
_class
loc:@C1_Conv/b
е
C1_Conv/Conv2DConv2DInput_Layer/ReshapeC1_Conv/W/read*
T0*
paddingSAME*/
_output_shapes
:€€€€€€€€€*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
	dilations

l
C1_Conv/addAddC1_Conv/Conv2DC1_Conv/b/read*
T0*/
_output_shapes
:€€€€€€€€€
[
C1_Conv/ReluReluC1_Conv/add*/
_output_shapes
:€€€€€€€€€*
T0
і
C1_Pool/MaxPoolMaxPoolC1_Conv/Relu*
paddingSAME*/
_output_shapes
:€€€€€€€€€*
data_formatNHWC*
strides
*
ksize
*
T0
w
C2_Conv/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*%
valueB"         $   
b
C2_Conv/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
d
C2_Conv/truncated_normal/stddevConst*
valueB
 *Ќћћ=*
dtype0*
_output_shapes
: 
≤
(C2_Conv/truncated_normal/TruncatedNormalTruncatedNormalC2_Conv/truncated_normal/shape*
T0*&
_output_shapes
:$*
dtype0*

seed *
seed2 
Я
C2_Conv/truncated_normal/mulMul(C2_Conv/truncated_normal/TruncatedNormalC2_Conv/truncated_normal/stddev*&
_output_shapes
:$*
T0
Н
C2_Conv/truncated_normalAddC2_Conv/truncated_normal/mulC2_Conv/truncated_normal/mean*
T0*&
_output_shapes
:$
Н
	C2_Conv/W
VariableV2*
dtype0*&
_output_shapes
:$*
shape:$*
	container *
shared_name 
Ј
C2_Conv/W/AssignAssign	C2_Conv/WC2_Conv/truncated_normal*
_class
loc:@C2_Conv/W*
use_locking(*&
_output_shapes
:$*
T0*
validate_shape(
t
C2_Conv/W/readIdentity	C2_Conv/W*&
_output_shapes
:$*
_class
loc:@C2_Conv/W*
T0
Z
C2_Conv/ConstConst*
dtype0*
valueB$*Ќћћ=*
_output_shapes
:$
u
	C2_Conv/b
VariableV2*
	container *
shared_name *
dtype0*
_output_shapes
:$*
shape:$
†
C2_Conv/b/AssignAssign	C2_Conv/bC2_Conv/Const*
use_locking(*
_output_shapes
:$*
_class
loc:@C2_Conv/b*
validate_shape(*
T0
h
C2_Conv/b/readIdentity	C2_Conv/b*
T0*
_class
loc:@C2_Conv/b*
_output_shapes
:$
б
C2_Conv/Conv2DConv2DC1_Pool/MaxPoolC2_Conv/W/read*
paddingSAME*
use_cudnn_on_gpu(*
T0*/
_output_shapes
:€€€€€€€€€$*
data_formatNHWC*
strides
*
	dilations

l
C2_Conv/addAddC2_Conv/Conv2DC2_Conv/b/read*
T0*/
_output_shapes
:€€€€€€€€€$
[
C2_Conv/ReluReluC2_Conv/add*/
_output_shapes
:€€€€€€€€€$*
T0
і
C2_Pool/MaxPoolMaxPoolC2_Conv/Relu*
paddingSAME*
strides
*
T0*
ksize
*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€$
e
D_Flat/Reshape/shapeConst*
dtype0*
valueB"€€€€д  *
_output_shapes
:
Б
D_Flat/ReshapeReshapeC2_Pool/MaxPoolD_Flat/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€д
v
%D_Hidden_Layer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*
valueB"д  А   
i
$D_Hidden_Layer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
k
&D_Hidden_Layer/truncated_normal/stddevConst*
dtype0*
valueB
 *Ќћћ=*
_output_shapes
: 
Ї
/D_Hidden_Layer/truncated_normal/TruncatedNormalTruncatedNormal%D_Hidden_Layer/truncated_normal/shape* 
_output_shapes
:
дА*
dtype0*
T0*
seed2 *

seed 
Ѓ
#D_Hidden_Layer/truncated_normal/mulMul/D_Hidden_Layer/truncated_normal/TruncatedNormal&D_Hidden_Layer/truncated_normal/stddev*
T0* 
_output_shapes
:
дА
Ь
D_Hidden_Layer/truncated_normalAdd#D_Hidden_Layer/truncated_normal/mul$D_Hidden_Layer/truncated_normal/mean* 
_output_shapes
:
дА*
T0
И
D_Hidden_Layer/W
VariableV2*
	container *
shape:
дА*
shared_name * 
_output_shapes
:
дА*
dtype0
Ќ
D_Hidden_Layer/W/AssignAssignD_Hidden_Layer/WD_Hidden_Layer/truncated_normal*
T0* 
_output_shapes
:
дА*#
_class
loc:@D_Hidden_Layer/W*
use_locking(*
validate_shape(
Г
D_Hidden_Layer/W/readIdentityD_Hidden_Layer/W* 
_output_shapes
:
дА*
T0*#
_class
loc:@D_Hidden_Layer/W
c
D_Hidden_Layer/ConstConst*
valueBА*Ќћћ=*
dtype0*
_output_shapes	
:А
~
D_Hidden_Layer/b
VariableV2*
shape:А*
shared_name *
_output_shapes	
:А*
	container *
dtype0
љ
D_Hidden_Layer/b/AssignAssignD_Hidden_Layer/bD_Hidden_Layer/Const*
use_locking(*
_output_shapes	
:А*
validate_shape(*
T0*#
_class
loc:@D_Hidden_Layer/b
~
D_Hidden_Layer/b/readIdentityD_Hidden_Layer/b*
T0*#
_class
loc:@D_Hidden_Layer/b*
_output_shapes	
:А
Я
D_Hidden_Layer/MatMulMatMulD_Flat/ReshapeD_Hidden_Layer/W/read*
transpose_b( *(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_a( 
z
D_Hidden_Layer/addAddD_Hidden_Layer/MatMulD_Hidden_Layer/b/read*(
_output_shapes
:€€€€€€€€€А*
T0
b
D_Hidden_Layer/ReluReluD_Hidden_Layer/add*(
_output_shapes
:€€€€€€€€€А*
T0
e
 D_Hidden_Layer/dropout/keep_probConst*
_output_shapes
: *
valueB
 *ЌћL?*
dtype0
o
D_Hidden_Layer/dropout/ShapeShapeD_Hidden_Layer/Relu*
T0*
out_type0*
_output_shapes
:
n
)D_Hidden_Layer/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
n
)D_Hidden_Layer/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
ї
3D_Hidden_Layer/dropout/random_uniform/RandomUniformRandomUniformD_Hidden_Layer/dropout/Shape*
dtype0*(
_output_shapes
:€€€€€€€€€А*
seed2 *
T0*

seed 
І
)D_Hidden_Layer/dropout/random_uniform/subSub)D_Hidden_Layer/dropout/random_uniform/max)D_Hidden_Layer/dropout/random_uniform/min*
_output_shapes
: *
T0
√
)D_Hidden_Layer/dropout/random_uniform/mulMul3D_Hidden_Layer/dropout/random_uniform/RandomUniform)D_Hidden_Layer/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
µ
%D_Hidden_Layer/dropout/random_uniformAdd)D_Hidden_Layer/dropout/random_uniform/mul)D_Hidden_Layer/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
Э
D_Hidden_Layer/dropout/addAdd D_Hidden_Layer/dropout/keep_prob%D_Hidden_Layer/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
t
D_Hidden_Layer/dropout/FloorFloorD_Hidden_Layer/dropout/add*
T0*(
_output_shapes
:€€€€€€€€€А
П
D_Hidden_Layer/dropout/divRealDivD_Hidden_Layer/Relu D_Hidden_Layer/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
О
D_Hidden_Layer/dropout/mulMulD_Hidden_Layer/dropout/divD_Hidden_Layer/dropout/Floor*(
_output_shapes
:€€€€€€€€€А*
T0
t
#Output_Layer/truncated_normal/shapeConst*
_output_shapes
:*
valueB"А   
   *
dtype0
g
"Output_Layer/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
i
$Output_Layer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=
µ
-Output_Layer/truncated_normal/TruncatedNormalTruncatedNormal#Output_Layer/truncated_normal/shape*
dtype0*
seed2 *
T0*

seed *
_output_shapes
:	А

І
!Output_Layer/truncated_normal/mulMul-Output_Layer/truncated_normal/TruncatedNormal$Output_Layer/truncated_normal/stddev*
T0*
_output_shapes
:	А

Х
Output_Layer/truncated_normalAdd!Output_Layer/truncated_normal/mul"Output_Layer/truncated_normal/mean*
T0*
_output_shapes
:	А

Д
Output_Layer/W
VariableV2*
dtype0*
shape:	А
*
shared_name *
_output_shapes
:	А
*
	container 
ƒ
Output_Layer/W/AssignAssignOutput_Layer/WOutput_Layer/truncated_normal*!
_class
loc:@Output_Layer/W*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	А

|
Output_Layer/W/readIdentityOutput_Layer/W*
T0*
_output_shapes
:	А
*!
_class
loc:@Output_Layer/W
_
Output_Layer/ConstConst*
_output_shapes
:
*
valueB
*Ќћћ=*
dtype0
z
Output_Layer/b
VariableV2*
shared_name *
dtype0*
_output_shapes
:
*
	container *
shape:

і
Output_Layer/b/AssignAssignOutput_Layer/bOutput_Layer/Const*
use_locking(*
_output_shapes
:
*
T0*!
_class
loc:@Output_Layer/b*
validate_shape(
w
Output_Layer/b/readIdentityOutput_Layer/b*!
_class
loc:@Output_Layer/b*
T0*
_output_shapes
:

¶
Output_Layer/MatMulMatMulD_Hidden_Layer/dropout/mulOutput_Layer/W/read*
transpose_a( *'
_output_shapes
:€€€€€€€€€
*
transpose_b( *
T0
s
Output_Layer/addAddOutput_Layer/MatMulOutput_Layer/b/read*
T0*'
_output_shapes
:€€€€€€€€€

c
Output_Layer/SoftmaxSoftmaxOutput_Layer/add*'
_output_shapes
:€€€€€€€€€
*
T0
t
optimizer/y_labelPlaceholder*
dtype0*
shape:€€€€€€€€€
*'
_output_shapes
:€€€€€€€€€

Ш
Coptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientoptimizer/y_label*'
_output_shapes
:€€€€€€€€€
*
T0
u
3optimizer/softmax_cross_entropy_with_logits_sg/RankConst*
value	B :*
dtype0*
_output_shapes
: 
И
4optimizer/softmax_cross_entropy_with_logits_sg/ShapeShapeOutput_Layer/Softmax*
_output_shapes
:*
out_type0*
T0
w
5optimizer/softmax_cross_entropy_with_logits_sg/Rank_1Const*
_output_shapes
: *
value	B :*
dtype0
К
6optimizer/softmax_cross_entropy_with_logits_sg/Shape_1ShapeOutput_Layer/Softmax*
T0*
out_type0*
_output_shapes
:
v
4optimizer/softmax_cross_entropy_with_logits_sg/Sub/yConst*
_output_shapes
: *
value	B :*
dtype0
«
2optimizer/softmax_cross_entropy_with_logits_sg/SubSub5optimizer/softmax_cross_entropy_with_logits_sg/Rank_14optimizer/softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 
∞
:optimizer/softmax_cross_entropy_with_logits_sg/Slice/beginPack2optimizer/softmax_cross_entropy_with_logits_sg/Sub*
T0*
N*

axis *
_output_shapes
:
Г
9optimizer/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ю
4optimizer/softmax_cross_entropy_with_logits_sg/SliceSlice6optimizer/softmax_cross_entropy_with_logits_sg/Shape_1:optimizer/softmax_cross_entropy_with_logits_sg/Slice/begin9optimizer/softmax_cross_entropy_with_logits_sg/Slice/size*
T0*
Index0*
_output_shapes
:
С
>optimizer/softmax_cross_entropy_with_logits_sg/concat/values_0Const*
_output_shapes
:*
valueB:
€€€€€€€€€*
dtype0
|
:optimizer/softmax_cross_entropy_with_logits_sg/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
≠
5optimizer/softmax_cross_entropy_with_logits_sg/concatConcatV2>optimizer/softmax_cross_entropy_with_logits_sg/concat/values_04optimizer/softmax_cross_entropy_with_logits_sg/Slice:optimizer/softmax_cross_entropy_with_logits_sg/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
„
6optimizer/softmax_cross_entropy_with_logits_sg/ReshapeReshapeOutput_Layer/Softmax5optimizer/softmax_cross_entropy_with_logits_sg/concat*
Tshape0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
w
5optimizer/softmax_cross_entropy_with_logits_sg/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :
є
6optimizer/softmax_cross_entropy_with_logits_sg/Shape_2ShapeCoptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0*
_output_shapes
:
x
6optimizer/softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
dtype0*
_output_shapes
: *
value	B :
Ћ
4optimizer/softmax_cross_entropy_with_logits_sg/Sub_1Sub5optimizer/softmax_cross_entropy_with_logits_sg/Rank_26optimizer/softmax_cross_entropy_with_logits_sg/Sub_1/y*
_output_shapes
: *
T0
і
<optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/beginPack4optimizer/softmax_cross_entropy_with_logits_sg/Sub_1*
T0*
N*
_output_shapes
:*

axis 
Е
;optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
§
6optimizer/softmax_cross_entropy_with_logits_sg/Slice_1Slice6optimizer/softmax_cross_entropy_with_logits_sg/Shape_2<optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/begin;optimizer/softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
_output_shapes
:*
T0
У
@optimizer/softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
~
<optimizer/softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
µ
7optimizer/softmax_cross_entropy_with_logits_sg/concat_1ConcatV2@optimizer/softmax_cross_entropy_with_logits_sg/concat_1/values_06optimizer/softmax_cross_entropy_with_logits_sg/Slice_1<optimizer/softmax_cross_entropy_with_logits_sg/concat_1/axis*
N*

Tidx0*
_output_shapes
:*
T0
К
8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_1ReshapeCoptimizer/softmax_cross_entropy_with_logits_sg/labels_stop_gradient7optimizer/softmax_cross_entropy_with_logits_sg/concat_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tshape0*
T0
Л
.optimizer/softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits6optimizer/softmax_cross_entropy_with_logits_sg/Reshape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_1*?
_output_shapes-
+:€€€€€€€€€:€€€€€€€€€€€€€€€€€€*
T0
x
6optimizer/softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
…
4optimizer/softmax_cross_entropy_with_logits_sg/Sub_2Sub3optimizer/softmax_cross_entropy_with_logits_sg/Rank6optimizer/softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0*
_output_shapes
: 
Ж
<optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
≥
;optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/sizePack4optimizer/softmax_cross_entropy_with_logits_sg/Sub_2*
_output_shapes
:*
N*
T0*

axis 
Ґ
6optimizer/softmax_cross_entropy_with_logits_sg/Slice_2Slice4optimizer/softmax_cross_entropy_with_logits_sg/Shape<optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/begin;optimizer/softmax_cross_entropy_with_logits_sg/Slice_2/size*
T0*
_output_shapes
:*
Index0
з
8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2Reshape.optimizer/softmax_cross_entropy_with_logits_sg6optimizer/softmax_cross_entropy_with_logits_sg/Slice_2*
Tshape0*
T0*#
_output_shapes
:€€€€€€€€€
Y
optimizer/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Я
optimizer/MeanMean8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2optimizer/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
\
optimizer/gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
b
optimizer/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Н
optimizer/gradients/FillFilloptimizer/gradients/Shapeoptimizer/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0

5optimizer/gradients/optimizer/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
Њ
/optimizer/gradients/optimizer/Mean_grad/ReshapeReshapeoptimizer/gradients/Fill5optimizer/gradients/optimizer/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
•
-optimizer/gradients/optimizer/Mean_grad/ShapeShape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2*
_output_shapes
:*
out_type0*
T0
‘
,optimizer/gradients/optimizer/Mean_grad/TileTile/optimizer/gradients/optimizer/Mean_grad/Reshape-optimizer/gradients/optimizer/Mean_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*

Tmultiples0
І
/optimizer/gradients/optimizer/Mean_grad/Shape_1Shape8optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
_output_shapes
:*
out_type0
r
/optimizer/gradients/optimizer/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
w
-optimizer/gradients/optimizer/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
“
,optimizer/gradients/optimizer/Mean_grad/ProdProd/optimizer/gradients/optimizer/Mean_grad/Shape_1-optimizer/gradients/optimizer/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
y
/optimizer/gradients/optimizer/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
÷
.optimizer/gradients/optimizer/Mean_grad/Prod_1Prod/optimizer/gradients/optimizer/Mean_grad/Shape_2/optimizer/gradients/optimizer/Mean_grad/Const_1*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
s
1optimizer/gradients/optimizer/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
Њ
/optimizer/gradients/optimizer/Mean_grad/MaximumMaximum.optimizer/gradients/optimizer/Mean_grad/Prod_11optimizer/gradients/optimizer/Mean_grad/Maximum/y*
_output_shapes
: *
T0
Љ
0optimizer/gradients/optimizer/Mean_grad/floordivFloorDiv,optimizer/gradients/optimizer/Mean_grad/Prod/optimizer/gradients/optimizer/Mean_grad/Maximum*
T0*
_output_shapes
: 
¶
,optimizer/gradients/optimizer/Mean_grad/CastCast0optimizer/gradients/optimizer/Mean_grad/floordiv*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
ƒ
/optimizer/gradients/optimizer/Mean_grad/truedivRealDiv,optimizer/gradients/optimizer/Mean_grad/Tile,optimizer/gradients/optimizer/Mean_grad/Cast*#
_output_shapes
:€€€€€€€€€*
T0
≈
Woptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape.optimizer/softmax_cross_entropy_with_logits_sg*
out_type0*
T0*
_output_shapes
:
™
Yoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshape/optimizer/gradients/optimizer/Mean_grad/truedivWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
Ш
optimizer/gradients/zeros_like	ZerosLike0optimizer/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
°
Voptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
—
Roptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsYoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeVoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*

Tdim0*'
_output_shapes
:€€€€€€€€€*
T0
У
Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulMulRoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims0optimizer/softmax_cross_entropy_with_logits_sg:1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
”
Roptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax6optimizer/softmax_cross_entropy_with_logits_sg/Reshape*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
б
Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/NegNegRoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
£
Xoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
’
Toptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsYoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeXoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*'
_output_shapes
:€€€€€€€€€*
T0*

Tdim0
≤
Moptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1MulToptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1Koptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/Neg*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
ю
Xoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOpL^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulN^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1
ѓ
`optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentityKoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mulY^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*^
_classT
RPloc:@optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul
µ
boptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1IdentityMoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1Y^optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*`
_classV
TRloc:@optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/mul_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
©
Uoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapeOutput_Layer/Softmax*
T0*
_output_shapes
:*
out_type0
џ
Woptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshape`optimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyUoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*'
_output_shapes
:€€€€€€€€€
*
Tshape0
ў
1optimizer/gradients/Output_Layer/Softmax_grad/mulMulWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeOutput_Layer/Softmax*'
_output_shapes
:€€€€€€€€€
*
T0
О
Coptimizer/gradients/Output_Layer/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
€
1optimizer/gradients/Output_Layer/Softmax_grad/SumSum1optimizer/gradients/Output_Layer/Softmax_grad/mulCoptimizer/gradients/Output_Layer/Softmax_grad/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*
	keep_dims(*
T0*

Tidx0
ц
1optimizer/gradients/Output_Layer/Softmax_grad/subSubWoptimizer/gradients/optimizer/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape1optimizer/gradients/Output_Layer/Softmax_grad/Sum*
T0*'
_output_shapes
:€€€€€€€€€

µ
3optimizer/gradients/Output_Layer/Softmax_grad/mul_1Mul1optimizer/gradients/Output_Layer/Softmax_grad/subOutput_Layer/Softmax*'
_output_shapes
:€€€€€€€€€
*
T0
В
/optimizer/gradients/Output_Layer/add_grad/ShapeShapeOutput_Layer/MatMul*
out_type0*
_output_shapes
:*
T0
{
1optimizer/gradients/Output_Layer/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
щ
?optimizer/gradients/Output_Layer/add_grad/BroadcastGradientArgsBroadcastGradientArgs/optimizer/gradients/Output_Layer/add_grad/Shape1optimizer/gradients/Output_Layer/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
-optimizer/gradients/Output_Layer/add_grad/SumSum3optimizer/gradients/Output_Layer/Softmax_grad/mul_1?optimizer/gradients/Output_Layer/add_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0
№
1optimizer/gradients/Output_Layer/add_grad/ReshapeReshape-optimizer/gradients/Output_Layer/add_grad/Sum/optimizer/gradients/Output_Layer/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

о
/optimizer/gradients/Output_Layer/add_grad/Sum_1Sum3optimizer/gradients/Output_Layer/Softmax_grad/mul_1Aoptimizer/gradients/Output_Layer/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
’
3optimizer/gradients/Output_Layer/add_grad/Reshape_1Reshape/optimizer/gradients/Output_Layer/add_grad/Sum_11optimizer/gradients/Output_Layer/add_grad/Shape_1*
Tshape0*
_output_shapes
:
*
T0
ђ
:optimizer/gradients/Output_Layer/add_grad/tuple/group_depsNoOp2^optimizer/gradients/Output_Layer/add_grad/Reshape4^optimizer/gradients/Output_Layer/add_grad/Reshape_1
ґ
Boptimizer/gradients/Output_Layer/add_grad/tuple/control_dependencyIdentity1optimizer/gradients/Output_Layer/add_grad/Reshape;^optimizer/gradients/Output_Layer/add_grad/tuple/group_deps*
T0*'
_output_shapes
:€€€€€€€€€
*D
_class:
86loc:@optimizer/gradients/Output_Layer/add_grad/Reshape
ѓ
Doptimizer/gradients/Output_Layer/add_grad/tuple/control_dependency_1Identity3optimizer/gradients/Output_Layer/add_grad/Reshape_1;^optimizer/gradients/Output_Layer/add_grad/tuple/group_deps*
T0*
_output_shapes
:
*F
_class<
:8loc:@optimizer/gradients/Output_Layer/add_grad/Reshape_1
п
3optimizer/gradients/Output_Layer/MatMul_grad/MatMulMatMulBoptimizer/gradients/Output_Layer/add_grad/tuple/control_dependencyOutput_Layer/W/read*
transpose_b(*(
_output_shapes
:€€€€€€€€€А*
T0*
transpose_a( 
п
5optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1MatMulD_Hidden_Layer/dropout/mulBoptimizer/gradients/Output_Layer/add_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	А
*
transpose_b( *
T0
≥
=optimizer/gradients/Output_Layer/MatMul_grad/tuple/group_depsNoOp4^optimizer/gradients/Output_Layer/MatMul_grad/MatMul6^optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1
Ѕ
Eoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependencyIdentity3optimizer/gradients/Output_Layer/MatMul_grad/MatMul>^optimizer/gradients/Output_Layer/MatMul_grad/tuple/group_deps*F
_class<
:8loc:@optimizer/gradients/Output_Layer/MatMul_grad/MatMul*
T0*(
_output_shapes
:€€€€€€€€€А
Њ
Goptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependency_1Identity5optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1>^optimizer/gradients/Output_Layer/MatMul_grad/tuple/group_deps*H
_class>
<:loc:@optimizer/gradients/Output_Layer/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А

У
9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/ShapeShapeD_Hidden_Layer/dropout/div*
_output_shapes
:*
T0*
out_type0
Ч
;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape_1ShapeD_Hidden_Layer/dropout/Floor*
T0*
out_type0*
_output_shapes
:
Ч
Ioptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
÷
7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/MulMulEoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependencyD_Hidden_Layer/dropout/Floor*(
_output_shapes
:€€€€€€€€€А*
T0
В
7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/SumSum7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/MulIoptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ы
;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/ReshapeReshape7optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Sum9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
÷
9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Mul_1MulD_Hidden_Layer/dropout/divEoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependency*(
_output_shapes
:€€€€€€€€€А*
T0
И
9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Sum_1Sum9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Mul_1Koptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Б
=optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1Reshape9optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Sum_1;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Shape_1*(
_output_shapes
:€€€€€€€€€А*
Tshape0*
T0
 
Doptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/group_depsNoOp<^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape>^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1
я
Loptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependencyIdentity;optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/ReshapeE^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*N
_classD
B@loc:@optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape*
T0
е
Noptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependency_1Identity=optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1E^optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€А*P
_classF
DBloc:@optimizer/gradients/D_Hidden_Layer/dropout/mul_grad/Reshape_1
М
9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/ShapeShapeD_Hidden_Layer/Relu*
T0*
_output_shapes
:*
out_type0
~
;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Ч
Ioptimizer/gradients/D_Hidden_Layer/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
й
;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDivRealDivLoptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependency D_Hidden_Layer/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
Ж
7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/SumSum;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDivIoptimizer/gradients/D_Hidden_Layer/dropout/div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0*
_output_shapes
:
ы
;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/ReshapeReshape7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Sum9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ж
7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/NegNegD_Hidden_Layer/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
÷
=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_1RealDiv7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Neg D_Hidden_Layer/dropout/keep_prob*(
_output_shapes
:€€€€€€€€€А*
T0
№
=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_2RealDiv=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_1 D_Hidden_Layer/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
ю
7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/mulMulLoptimizer/gradients/D_Hidden_Layer/dropout/mul_grad/tuple/control_dependency=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:€€€€€€€€€А
Ж
9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Sum_1Sum7optimizer/gradients/D_Hidden_Layer/dropout/div_grad/mulKoptimizer/gradients/D_Hidden_Layer/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0
п
=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1Reshape9optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Sum_1;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Shape_1*
Tshape0*
T0*
_output_shapes
: 
 
Doptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/group_depsNoOp<^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape>^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1
я
Loptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/control_dependencyIdentity;optimizer/gradients/D_Hidden_Layer/dropout/div_grad/ReshapeE^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/group_deps*
T0*N
_classD
B@loc:@optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
”
Noptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/control_dependency_1Identity=optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1E^optimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/group_deps*
T0*P
_classF
DBloc:@optimizer/gradients/D_Hidden_Layer/dropout/div_grad/Reshape_1*
_output_shapes
: 
„
5optimizer/gradients/D_Hidden_Layer/Relu_grad/ReluGradReluGradLoptimizer/gradients/D_Hidden_Layer/dropout/div_grad/tuple/control_dependencyD_Hidden_Layer/Relu*(
_output_shapes
:€€€€€€€€€А*
T0
Ж
1optimizer/gradients/D_Hidden_Layer/add_grad/ShapeShapeD_Hidden_Layer/MatMul*
out_type0*
_output_shapes
:*
T0
~
3optimizer/gradients/D_Hidden_Layer/add_grad/Shape_1Const*
valueB:А*
_output_shapes
:*
dtype0
€
Aoptimizer/gradients/D_Hidden_Layer/add_grad/BroadcastGradientArgsBroadcastGradientArgs1optimizer/gradients/D_Hidden_Layer/add_grad/Shape3optimizer/gradients/D_Hidden_Layer/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
р
/optimizer/gradients/D_Hidden_Layer/add_grad/SumSum5optimizer/gradients/D_Hidden_Layer/Relu_grad/ReluGradAoptimizer/gradients/D_Hidden_Layer/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
г
3optimizer/gradients/D_Hidden_Layer/add_grad/ReshapeReshape/optimizer/gradients/D_Hidden_Layer/add_grad/Sum1optimizer/gradients/D_Hidden_Layer/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ф
1optimizer/gradients/D_Hidden_Layer/add_grad/Sum_1Sum5optimizer/gradients/D_Hidden_Layer/Relu_grad/ReluGradCoptimizer/gradients/D_Hidden_Layer/add_grad/BroadcastGradientArgs:1*

Tidx0*
_output_shapes
:*
	keep_dims( *
T0
№
5optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1Reshape1optimizer/gradients/D_Hidden_Layer/add_grad/Sum_13optimizer/gradients/D_Hidden_Layer/add_grad/Shape_1*
_output_shapes	
:А*
Tshape0*
T0
≤
<optimizer/gradients/D_Hidden_Layer/add_grad/tuple/group_depsNoOp4^optimizer/gradients/D_Hidden_Layer/add_grad/Reshape6^optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1
њ
Doptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependencyIdentity3optimizer/gradients/D_Hidden_Layer/add_grad/Reshape=^optimizer/gradients/D_Hidden_Layer/add_grad/tuple/group_deps*
T0*F
_class<
:8loc:@optimizer/gradients/D_Hidden_Layer/add_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
Є
Foptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependency_1Identity5optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1=^optimizer/gradients/D_Hidden_Layer/add_grad/tuple/group_deps*H
_class>
<:loc:@optimizer/gradients/D_Hidden_Layer/add_grad/Reshape_1*
T0*
_output_shapes	
:А
х
5optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMulMatMulDoptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependencyD_Hidden_Layer/W/read*
T0*
transpose_a( *(
_output_shapes
:€€€€€€€€€д*
transpose_b(
и
7optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1MatMulD_Flat/ReshapeDoptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0* 
_output_shapes
:
дА
є
?optimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/group_depsNoOp6^optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul8^optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1
…
Goptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependencyIdentity5optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul@^optimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:€€€€€€€€€д*H
_class>
<:loc:@optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul
«
Ioptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependency_1Identity7optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1@^optimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/group_deps* 
_output_shapes
:
дА*
T0*J
_class@
><loc:@optimizer/gradients/D_Hidden_Layer/MatMul_grad/MatMul_1
|
-optimizer/gradients/D_Flat/Reshape_grad/ShapeShapeC2_Pool/MaxPool*
T0*
_output_shapes
:*
out_type0
ъ
/optimizer/gradients/D_Flat/Reshape_grad/ReshapeReshapeGoptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependency-optimizer/gradients/D_Flat/Reshape_grad/Shape*
Tshape0*
T0*/
_output_shapes
:€€€€€€€€€$
Я
4optimizer/gradients/C2_Pool/MaxPool_grad/MaxPoolGradMaxPoolGradC2_Conv/ReluC2_Pool/MaxPool/optimizer/gradients/D_Flat/Reshape_grad/Reshape*/
_output_shapes
:€€€€€€€€€$*
paddingSAME*
data_formatNHWC*
T0*
ksize
*
strides

Є
.optimizer/gradients/C2_Conv/Relu_grad/ReluGradReluGrad4optimizer/gradients/C2_Pool/MaxPool_grad/MaxPoolGradC2_Conv/Relu*
T0*/
_output_shapes
:€€€€€€€€€$
x
*optimizer/gradients/C2_Conv/add_grad/ShapeShapeC2_Conv/Conv2D*
_output_shapes
:*
T0*
out_type0
v
,optimizer/gradients/C2_Conv/add_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:$
к
:optimizer/gradients/C2_Conv/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/C2_Conv/add_grad/Shape,optimizer/gradients/C2_Conv/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
џ
(optimizer/gradients/C2_Conv/add_grad/SumSum.optimizer/gradients/C2_Conv/Relu_grad/ReluGrad:optimizer/gradients/C2_Conv/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
’
,optimizer/gradients/C2_Conv/add_grad/ReshapeReshape(optimizer/gradients/C2_Conv/add_grad/Sum*optimizer/gradients/C2_Conv/add_grad/Shape*
Tshape0*/
_output_shapes
:€€€€€€€€€$*
T0
я
*optimizer/gradients/C2_Conv/add_grad/Sum_1Sum.optimizer/gradients/C2_Conv/Relu_grad/ReluGrad<optimizer/gradients/C2_Conv/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
T0*
	keep_dims( 
∆
.optimizer/gradients/C2_Conv/add_grad/Reshape_1Reshape*optimizer/gradients/C2_Conv/add_grad/Sum_1,optimizer/gradients/C2_Conv/add_grad/Shape_1*
T0*
_output_shapes
:$*
Tshape0
Э
5optimizer/gradients/C2_Conv/add_grad/tuple/group_depsNoOp-^optimizer/gradients/C2_Conv/add_grad/Reshape/^optimizer/gradients/C2_Conv/add_grad/Reshape_1
™
=optimizer/gradients/C2_Conv/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/C2_Conv/add_grad/Reshape6^optimizer/gradients/C2_Conv/add_grad/tuple/group_deps*?
_class5
31loc:@optimizer/gradients/C2_Conv/add_grad/Reshape*/
_output_shapes
:€€€€€€€€€$*
T0
Ы
?optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/C2_Conv/add_grad/Reshape_16^optimizer/gradients/C2_Conv/add_grad/tuple/group_deps*
_output_shapes
:$*
T0*A
_class7
53loc:@optimizer/gradients/C2_Conv/add_grad/Reshape_1
Э
.optimizer/gradients/C2_Conv/Conv2D_grad/ShapeNShapeNC1_Pool/MaxPoolC2_Conv/W/read*
N* 
_output_shapes
::*
out_type0*
T0
щ
;optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput.optimizer/gradients/C2_Conv/Conv2D_grad/ShapeNC2_Conv/W/read=optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency*
	dilations
*
strides
*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€*
T0*
use_cudnn_on_gpu(*
paddingSAME
х
<optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterC1_Pool/MaxPool0optimizer/gradients/C2_Conv/Conv2D_grad/ShapeN:1=optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
	dilations
*
use_cudnn_on_gpu(*&
_output_shapes
:$*
paddingSAME
љ
8optimizer/gradients/C2_Conv/Conv2D_grad/tuple/group_depsNoOp=^optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilter<^optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInput
ќ
@optimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependencyIdentity;optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInput9^optimizer/gradients/C2_Conv/Conv2D_grad/tuple/group_deps*
T0*N
_classD
B@loc:@optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:€€€€€€€€€
…
Boptimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependency_1Identity<optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilter9^optimizer/gradients/C2_Conv/Conv2D_grad/tuple/group_deps*&
_output_shapes
:$*O
_classE
CAloc:@optimizer/gradients/C2_Conv/Conv2D_grad/Conv2DBackpropFilter*
T0
∞
4optimizer/gradients/C1_Pool/MaxPool_grad/MaxPoolGradMaxPoolGradC1_Conv/ReluC1_Pool/MaxPool@optimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependency*
strides
*/
_output_shapes
:€€€€€€€€€*
paddingSAME*
T0*
ksize
*
data_formatNHWC
Є
.optimizer/gradients/C1_Conv/Relu_grad/ReluGradReluGrad4optimizer/gradients/C1_Pool/MaxPool_grad/MaxPoolGradC1_Conv/Relu*/
_output_shapes
:€€€€€€€€€*
T0
x
*optimizer/gradients/C1_Conv/add_grad/ShapeShapeC1_Conv/Conv2D*
T0*
_output_shapes
:*
out_type0
v
,optimizer/gradients/C1_Conv/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
к
:optimizer/gradients/C1_Conv/add_grad/BroadcastGradientArgsBroadcastGradientArgs*optimizer/gradients/C1_Conv/add_grad/Shape,optimizer/gradients/C1_Conv/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
џ
(optimizer/gradients/C1_Conv/add_grad/SumSum.optimizer/gradients/C1_Conv/Relu_grad/ReluGrad:optimizer/gradients/C1_Conv/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
’
,optimizer/gradients/C1_Conv/add_grad/ReshapeReshape(optimizer/gradients/C1_Conv/add_grad/Sum*optimizer/gradients/C1_Conv/add_grad/Shape*/
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
я
*optimizer/gradients/C1_Conv/add_grad/Sum_1Sum.optimizer/gradients/C1_Conv/Relu_grad/ReluGrad<optimizer/gradients/C1_Conv/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
∆
.optimizer/gradients/C1_Conv/add_grad/Reshape_1Reshape*optimizer/gradients/C1_Conv/add_grad/Sum_1,optimizer/gradients/C1_Conv/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes
:
Э
5optimizer/gradients/C1_Conv/add_grad/tuple/group_depsNoOp-^optimizer/gradients/C1_Conv/add_grad/Reshape/^optimizer/gradients/C1_Conv/add_grad/Reshape_1
™
=optimizer/gradients/C1_Conv/add_grad/tuple/control_dependencyIdentity,optimizer/gradients/C1_Conv/add_grad/Reshape6^optimizer/gradients/C1_Conv/add_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*?
_class5
31loc:@optimizer/gradients/C1_Conv/add_grad/Reshape
Ы
?optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency_1Identity.optimizer/gradients/C1_Conv/add_grad/Reshape_16^optimizer/gradients/C1_Conv/add_grad/tuple/group_deps*A
_class7
53loc:@optimizer/gradients/C1_Conv/add_grad/Reshape_1*
T0*
_output_shapes
:
°
.optimizer/gradients/C1_Conv/Conv2D_grad/ShapeNShapeNInput_Layer/ReshapeC1_Conv/W/read*
N*
T0*
out_type0* 
_output_shapes
::
щ
;optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput.optimizer/gradients/C1_Conv/Conv2D_grad/ShapeNC1_Conv/W/read=optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency*
T0*
paddingSAME*
data_formatNHWC*/
_output_shapes
:€€€€€€€€€*
strides
*
use_cudnn_on_gpu(*
	dilations

щ
<optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterInput_Layer/Reshape0optimizer/gradients/C1_Conv/Conv2D_grad/ShapeN:1=optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency*
T0*
data_formatNHWC*
use_cudnn_on_gpu(*&
_output_shapes
:*
strides
*
paddingSAME*
	dilations

љ
8optimizer/gradients/C1_Conv/Conv2D_grad/tuple/group_depsNoOp=^optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilter<^optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInput
ќ
@optimizer/gradients/C1_Conv/Conv2D_grad/tuple/control_dependencyIdentity;optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInput9^optimizer/gradients/C1_Conv/Conv2D_grad/tuple/group_deps*/
_output_shapes
:€€€€€€€€€*
T0*N
_classD
B@loc:@optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropInput
…
Boptimizer/gradients/C1_Conv/Conv2D_grad/tuple/control_dependency_1Identity<optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilter9^optimizer/gradients/C1_Conv/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*O
_classE
CAloc:@optimizer/gradients/C1_Conv/Conv2D_grad/Conv2DBackpropFilter
Ж
#optimizer/beta1_power/initial_valueConst*
dtype0*
valueB
 *fff?*
_output_shapes
: *
_class
loc:@C1_Conv/W
Ч
optimizer/beta1_power
VariableV2*
dtype0*
_class
loc:@C1_Conv/W*
shape: *
	container *
_output_shapes
: *
shared_name 
 
optimizer/beta1_power/AssignAssignoptimizer/beta1_power#optimizer/beta1_power/initial_value*
use_locking(*
_class
loc:@C1_Conv/W*
validate_shape(*
_output_shapes
: *
T0
|
optimizer/beta1_power/readIdentityoptimizer/beta1_power*
T0*
_output_shapes
: *
_class
loc:@C1_Conv/W
Ж
#optimizer/beta2_power/initial_valueConst*
_class
loc:@C1_Conv/W*
dtype0*
_output_shapes
: *
valueB
 *wЊ?
Ч
optimizer/beta2_power
VariableV2*
shared_name *
_output_shapes
: *
	container *
dtype0*
shape: *
_class
loc:@C1_Conv/W
 
optimizer/beta2_power/AssignAssignoptimizer/beta2_power#optimizer/beta2_power/initial_value*
_class
loc:@C1_Conv/W*
validate_shape(*
use_locking(*
T0*
_output_shapes
: 
|
optimizer/beta2_power/readIdentityoptimizer/beta2_power*
_output_shapes
: *
T0*
_class
loc:@C1_Conv/W
£
 C1_Conv/W/Adam/Initializer/zerosConst*&
_output_shapes
:*
dtype0*%
valueB*    *
_class
loc:@C1_Conv/W
∞
C1_Conv/W/Adam
VariableV2*
shape:*
_class
loc:@C1_Conv/W*
dtype0*&
_output_shapes
:*
shared_name *
	container 
…
C1_Conv/W/Adam/AssignAssignC1_Conv/W/Adam C1_Conv/W/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*&
_output_shapes
:*
_class
loc:@C1_Conv/W
~
C1_Conv/W/Adam/readIdentityC1_Conv/W/Adam*
T0*
_class
loc:@C1_Conv/W*&
_output_shapes
:
•
"C1_Conv/W/Adam_1/Initializer/zerosConst*
_class
loc:@C1_Conv/W*%
valueB*    *
dtype0*&
_output_shapes
:
≤
C1_Conv/W/Adam_1
VariableV2*&
_output_shapes
:*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@C1_Conv/W
ѕ
C1_Conv/W/Adam_1/AssignAssignC1_Conv/W/Adam_1"C1_Conv/W/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_class
loc:@C1_Conv/W*&
_output_shapes
:
В
C1_Conv/W/Adam_1/readIdentityC1_Conv/W/Adam_1*
T0*
_class
loc:@C1_Conv/W*&
_output_shapes
:
Л
 C1_Conv/b/Adam/Initializer/zerosConst*
_class
loc:@C1_Conv/b*
dtype0*
_output_shapes
:*
valueB*    
Ш
C1_Conv/b/Adam
VariableV2*
_output_shapes
:*
dtype0*
shared_name *
_class
loc:@C1_Conv/b*
shape:*
	container 
љ
C1_Conv/b/Adam/AssignAssignC1_Conv/b/Adam C1_Conv/b/Adam/Initializer/zeros*
T0*
use_locking(*
_output_shapes
:*
_class
loc:@C1_Conv/b*
validate_shape(
r
C1_Conv/b/Adam/readIdentityC1_Conv/b/Adam*
_class
loc:@C1_Conv/b*
T0*
_output_shapes
:
Н
"C1_Conv/b/Adam_1/Initializer/zerosConst*
_output_shapes
:*
dtype0*
_class
loc:@C1_Conv/b*
valueB*    
Ъ
C1_Conv/b/Adam_1
VariableV2*
_class
loc:@C1_Conv/b*
	container *
dtype0*
shape:*
shared_name *
_output_shapes
:
√
C1_Conv/b/Adam_1/AssignAssignC1_Conv/b/Adam_1"C1_Conv/b/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*
_class
loc:@C1_Conv/b
v
C1_Conv/b/Adam_1/readIdentityC1_Conv/b/Adam_1*
_output_shapes
:*
T0*
_class
loc:@C1_Conv/b
І
0C2_Conv/W/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@C2_Conv/W*
_output_shapes
:*
dtype0*%
valueB"         $   
Й
&C2_Conv/W/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@C2_Conv/W*
dtype0*
_output_shapes
: 
г
 C2_Conv/W/Adam/Initializer/zerosFill0C2_Conv/W/Adam/Initializer/zeros/shape_as_tensor&C2_Conv/W/Adam/Initializer/zeros/Const*

index_type0*&
_output_shapes
:$*
_class
loc:@C2_Conv/W*
T0
∞
C2_Conv/W/Adam
VariableV2*
shared_name *
	container *&
_output_shapes
:$*
shape:$*
dtype0*
_class
loc:@C2_Conv/W
…
C2_Conv/W/Adam/AssignAssignC2_Conv/W/Adam C2_Conv/W/Adam/Initializer/zeros*
_class
loc:@C2_Conv/W*&
_output_shapes
:$*
validate_shape(*
T0*
use_locking(
~
C2_Conv/W/Adam/readIdentityC2_Conv/W/Adam*&
_output_shapes
:$*
T0*
_class
loc:@C2_Conv/W
©
2C2_Conv/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@C2_Conv/W*%
valueB"         $   *
_output_shapes
:
Л
(C2_Conv/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@C2_Conv/W*
_output_shapes
: 
й
"C2_Conv/W/Adam_1/Initializer/zerosFill2C2_Conv/W/Adam_1/Initializer/zeros/shape_as_tensor(C2_Conv/W/Adam_1/Initializer/zeros/Const*

index_type0*
T0*&
_output_shapes
:$*
_class
loc:@C2_Conv/W
≤
C2_Conv/W/Adam_1
VariableV2*&
_output_shapes
:$*
shape:$*
dtype0*
	container *
_class
loc:@C2_Conv/W*
shared_name 
ѕ
C2_Conv/W/Adam_1/AssignAssignC2_Conv/W/Adam_1"C2_Conv/W/Adam_1/Initializer/zeros*
validate_shape(*
_class
loc:@C2_Conv/W*&
_output_shapes
:$*
use_locking(*
T0
В
C2_Conv/W/Adam_1/readIdentityC2_Conv/W/Adam_1*
T0*&
_output_shapes
:$*
_class
loc:@C2_Conv/W
Л
 C2_Conv/b/Adam/Initializer/zerosConst*
valueB$*    *
dtype0*
_output_shapes
:$*
_class
loc:@C2_Conv/b
Ш
C2_Conv/b/Adam
VariableV2*
_class
loc:@C2_Conv/b*
shared_name *
	container *
dtype0*
_output_shapes
:$*
shape:$
љ
C2_Conv/b/Adam/AssignAssignC2_Conv/b/Adam C2_Conv/b/Adam/Initializer/zeros*
_output_shapes
:$*
T0*
use_locking(*
_class
loc:@C2_Conv/b*
validate_shape(
r
C2_Conv/b/Adam/readIdentityC2_Conv/b/Adam*
_output_shapes
:$*
T0*
_class
loc:@C2_Conv/b
Н
"C2_Conv/b/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:$*
_class
loc:@C2_Conv/b*
valueB$*    
Ъ
C2_Conv/b/Adam_1
VariableV2*
_output_shapes
:$*
_class
loc:@C2_Conv/b*
shape:$*
dtype0*
shared_name *
	container 
√
C2_Conv/b/Adam_1/AssignAssignC2_Conv/b/Adam_1"C2_Conv/b/Adam_1/Initializer/zeros*
T0*
_output_shapes
:$*
validate_shape(*
_class
loc:@C2_Conv/b*
use_locking(
v
C2_Conv/b/Adam_1/readIdentityC2_Conv/b/Adam_1*
_class
loc:@C2_Conv/b*
_output_shapes
:$*
T0
≠
7D_Hidden_Layer/W/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@D_Hidden_Layer/W*
dtype0*
valueB"д  А   *
_output_shapes
:
Ч
-D_Hidden_Layer/W/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *#
_class
loc:@D_Hidden_Layer/W*
_output_shapes
: 
щ
'D_Hidden_Layer/W/Adam/Initializer/zerosFill7D_Hidden_Layer/W/Adam/Initializer/zeros/shape_as_tensor-D_Hidden_Layer/W/Adam/Initializer/zeros/Const*

index_type0*
T0* 
_output_shapes
:
дА*#
_class
loc:@D_Hidden_Layer/W
≤
D_Hidden_Layer/W/Adam
VariableV2*
shape:
дА*
dtype0*#
_class
loc:@D_Hidden_Layer/W*
	container *
shared_name * 
_output_shapes
:
дА
я
D_Hidden_Layer/W/Adam/AssignAssignD_Hidden_Layer/W/Adam'D_Hidden_Layer/W/Adam/Initializer/zeros* 
_output_shapes
:
дА*
validate_shape(*
T0*
use_locking(*#
_class
loc:@D_Hidden_Layer/W
Н
D_Hidden_Layer/W/Adam/readIdentityD_Hidden_Layer/W/Adam*
T0* 
_output_shapes
:
дА*#
_class
loc:@D_Hidden_Layer/W
ѓ
9D_Hidden_Layer/W/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@D_Hidden_Layer/W*
dtype0*
_output_shapes
:*
valueB"д  А   
Щ
/D_Hidden_Layer/W/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    *#
_class
loc:@D_Hidden_Layer/W
€
)D_Hidden_Layer/W/Adam_1/Initializer/zerosFill9D_Hidden_Layer/W/Adam_1/Initializer/zeros/shape_as_tensor/D_Hidden_Layer/W/Adam_1/Initializer/zeros/Const*#
_class
loc:@D_Hidden_Layer/W*
T0* 
_output_shapes
:
дА*

index_type0
і
D_Hidden_Layer/W/Adam_1
VariableV2* 
_output_shapes
:
дА*#
_class
loc:@D_Hidden_Layer/W*
shape:
дА*
dtype0*
	container *
shared_name 
е
D_Hidden_Layer/W/Adam_1/AssignAssignD_Hidden_Layer/W/Adam_1)D_Hidden_Layer/W/Adam_1/Initializer/zeros* 
_output_shapes
:
дА*
validate_shape(*#
_class
loc:@D_Hidden_Layer/W*
T0*
use_locking(
С
D_Hidden_Layer/W/Adam_1/readIdentityD_Hidden_Layer/W/Adam_1*
T0*#
_class
loc:@D_Hidden_Layer/W* 
_output_shapes
:
дА
Ы
'D_Hidden_Layer/b/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*#
_class
loc:@D_Hidden_Layer/b*
valueBА*    
®
D_Hidden_Layer/b/Adam
VariableV2*#
_class
loc:@D_Hidden_Layer/b*
shape:А*
	container *
dtype0*
shared_name *
_output_shapes	
:А
Џ
D_Hidden_Layer/b/Adam/AssignAssignD_Hidden_Layer/b/Adam'D_Hidden_Layer/b/Adam/Initializer/zeros*
T0*
use_locking(*
_output_shapes	
:А*
validate_shape(*#
_class
loc:@D_Hidden_Layer/b
И
D_Hidden_Layer/b/Adam/readIdentityD_Hidden_Layer/b/Adam*
_output_shapes	
:А*
T0*#
_class
loc:@D_Hidden_Layer/b
Э
)D_Hidden_Layer/b/Adam_1/Initializer/zerosConst*
dtype0*
valueBА*    *
_output_shapes	
:А*#
_class
loc:@D_Hidden_Layer/b
™
D_Hidden_Layer/b/Adam_1
VariableV2*
shape:А*#
_class
loc:@D_Hidden_Layer/b*
	container *
shared_name *
dtype0*
_output_shapes	
:А
а
D_Hidden_Layer/b/Adam_1/AssignAssignD_Hidden_Layer/b/Adam_1)D_Hidden_Layer/b/Adam_1/Initializer/zeros*
validate_shape(*
T0*#
_class
loc:@D_Hidden_Layer/b*
_output_shapes	
:А*
use_locking(
М
D_Hidden_Layer/b/Adam_1/readIdentityD_Hidden_Layer/b/Adam_1*
T0*#
_class
loc:@D_Hidden_Layer/b*
_output_shapes	
:А
©
5Output_Layer/W/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@Output_Layer/W*
valueB"А   
   *
dtype0*
_output_shapes
:
У
+Output_Layer/W/Adam/Initializer/zeros/ConstConst*!
_class
loc:@Output_Layer/W*
valueB
 *    *
_output_shapes
: *
dtype0
р
%Output_Layer/W/Adam/Initializer/zerosFill5Output_Layer/W/Adam/Initializer/zeros/shape_as_tensor+Output_Layer/W/Adam/Initializer/zeros/Const*
_output_shapes
:	А
*
T0*

index_type0*!
_class
loc:@Output_Layer/W
ђ
Output_Layer/W/Adam
VariableV2*
shape:	А
*!
_class
loc:@Output_Layer/W*
_output_shapes
:	А
*
	container *
shared_name *
dtype0
÷
Output_Layer/W/Adam/AssignAssignOutput_Layer/W/Adam%Output_Layer/W/Adam/Initializer/zeros*!
_class
loc:@Output_Layer/W*
use_locking(*
validate_shape(*
_output_shapes
:	А
*
T0
Ж
Output_Layer/W/Adam/readIdentityOutput_Layer/W/Adam*!
_class
loc:@Output_Layer/W*
T0*
_output_shapes
:	А

Ђ
7Output_Layer/W/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"А   
   *
dtype0*
_output_shapes
:*!
_class
loc:@Output_Layer/W
Х
-Output_Layer/W/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@Output_Layer/W*
_output_shapes
: *
dtype0
ц
'Output_Layer/W/Adam_1/Initializer/zerosFill7Output_Layer/W/Adam_1/Initializer/zeros/shape_as_tensor-Output_Layer/W/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	А
*!
_class
loc:@Output_Layer/W*

index_type0
Ѓ
Output_Layer/W/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	А
*
	container *!
_class
loc:@Output_Layer/W*
_output_shapes
:	А

№
Output_Layer/W/Adam_1/AssignAssignOutput_Layer/W/Adam_1'Output_Layer/W/Adam_1/Initializer/zeros*
_output_shapes
:	А
*
use_locking(*
T0*
validate_shape(*!
_class
loc:@Output_Layer/W
К
Output_Layer/W/Adam_1/readIdentityOutput_Layer/W/Adam_1*
T0*!
_class
loc:@Output_Layer/W*
_output_shapes
:	А

Х
%Output_Layer/b/Adam/Initializer/zerosConst*!
_class
loc:@Output_Layer/b*
dtype0*
valueB
*    *
_output_shapes
:

Ґ
Output_Layer/b/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
_output_shapes
:
*!
_class
loc:@Output_Layer/b*
	container 
—
Output_Layer/b/Adam/AssignAssignOutput_Layer/b/Adam%Output_Layer/b/Adam/Initializer/zeros*!
_class
loc:@Output_Layer/b*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(
Б
Output_Layer/b/Adam/readIdentityOutput_Layer/b/Adam*
_output_shapes
:
*
T0*!
_class
loc:@Output_Layer/b
Ч
'Output_Layer/b/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*!
_class
loc:@Output_Layer/b*
_output_shapes
:

§
Output_Layer/b/Adam_1
VariableV2*
	container *!
_class
loc:@Output_Layer/b*
dtype0*
shared_name *
_output_shapes
:
*
shape:

„
Output_Layer/b/Adam_1/AssignAssignOutput_Layer/b/Adam_1'Output_Layer/b/Adam_1/Initializer/zeros*
_output_shapes
:
*
use_locking(*
T0*
validate_shape(*!
_class
loc:@Output_Layer/b
Е
Output_Layer/b/Adam_1/readIdentityOutput_Layer/b/Adam_1*
_output_shapes
:
*!
_class
loc:@Output_Layer/b*
T0
a
optimizer/Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
Y
optimizer/Adam/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
Y
optimizer/Adam/beta2Const*
_output_shapes
: *
valueB
 *wЊ?*
dtype0
[
optimizer/Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *wћ+2
Ј
)optimizer/Adam/update_C1_Conv/W/ApplyAdam	ApplyAdam	C1_Conv/WC1_Conv/W/AdamC1_Conv/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/C1_Conv/Conv2D_grad/tuple/control_dependency_1*
_class
loc:@C1_Conv/W*
use_locking( *
T0*&
_output_shapes
:*
use_nesterov( 
®
)optimizer/Adam/update_C1_Conv/b/ApplyAdam	ApplyAdam	C1_Conv/bC1_Conv/b/AdamC1_Conv/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/C1_Conv/add_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
_class
loc:@C1_Conv/b*
_output_shapes
:*
T0
Ј
)optimizer/Adam/update_C2_Conv/W/ApplyAdam	ApplyAdam	C2_Conv/WC2_Conv/W/AdamC2_Conv/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonBoptimizer/gradients/C2_Conv/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
:$*
use_locking( *
T0*
_class
loc:@C2_Conv/W
®
)optimizer/Adam/update_C2_Conv/b/ApplyAdam	ApplyAdam	C2_Conv/bC2_Conv/b/AdamC2_Conv/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilon?optimizer/gradients/C2_Conv/add_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:$*
use_locking( *
T0*
_class
loc:@C2_Conv/b
џ
0optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam	ApplyAdamD_Hidden_Layer/WD_Hidden_Layer/W/AdamD_Hidden_Layer/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonIoptimizer/gradients/D_Hidden_Layer/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *#
_class
loc:@D_Hidden_Layer/W* 
_output_shapes
:
дА*
use_nesterov( 
”
0optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam	ApplyAdamD_Hidden_Layer/bD_Hidden_Layer/b/AdamD_Hidden_Layer/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonFoptimizer/gradients/D_Hidden_Layer/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_output_shapes	
:А*#
_class
loc:@D_Hidden_Layer/b*
use_nesterov( 
ќ
.optimizer/Adam/update_Output_Layer/W/ApplyAdam	ApplyAdamOutput_Layer/WOutput_Layer/W/AdamOutput_Layer/W/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonGoptimizer/gradients/Output_Layer/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	А
*
use_locking( *
T0*
use_nesterov( *!
_class
loc:@Output_Layer/W
∆
.optimizer/Adam/update_Output_Layer/b/ApplyAdam	ApplyAdamOutput_Layer/bOutput_Layer/b/AdamOutput_Layer/b/Adam_1optimizer/beta1_power/readoptimizer/beta2_power/readoptimizer/Adam/learning_rateoptimizer/Adam/beta1optimizer/Adam/beta2optimizer/Adam/epsilonDoptimizer/gradients/Output_Layer/add_grad/tuple/control_dependency_1*
T0*
use_nesterov( *
_output_shapes
:
*!
_class
loc:@Output_Layer/b*
use_locking( 
В
optimizer/Adam/mulMuloptimizer/beta1_power/readoptimizer/Adam/beta1*^optimizer/Adam/update_C1_Conv/W/ApplyAdam*^optimizer/Adam/update_C1_Conv/b/ApplyAdam*^optimizer/Adam/update_C2_Conv/W/ApplyAdam*^optimizer/Adam/update_C2_Conv/b/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam/^optimizer/Adam/update_Output_Layer/W/ApplyAdam/^optimizer/Adam/update_Output_Layer/b/ApplyAdam*
_class
loc:@C1_Conv/W*
_output_shapes
: *
T0
≤
optimizer/Adam/AssignAssignoptimizer/beta1_poweroptimizer/Adam/mul*
T0*
use_locking( *
_class
loc:@C1_Conv/W*
validate_shape(*
_output_shapes
: 
Д
optimizer/Adam/mul_1Muloptimizer/beta2_power/readoptimizer/Adam/beta2*^optimizer/Adam/update_C1_Conv/W/ApplyAdam*^optimizer/Adam/update_C1_Conv/b/ApplyAdam*^optimizer/Adam/update_C2_Conv/W/ApplyAdam*^optimizer/Adam/update_C2_Conv/b/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam/^optimizer/Adam/update_Output_Layer/W/ApplyAdam/^optimizer/Adam/update_Output_Layer/b/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@C1_Conv/W
ґ
optimizer/Adam/Assign_1Assignoptimizer/beta2_poweroptimizer/Adam/mul_1*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@C1_Conv/W*
validate_shape(
ј
optimizer/AdamNoOp^optimizer/Adam/Assign^optimizer/Adam/Assign_1*^optimizer/Adam/update_C1_Conv/W/ApplyAdam*^optimizer/Adam/update_C1_Conv/b/ApplyAdam*^optimizer/Adam/update_C2_Conv/W/ApplyAdam*^optimizer/Adam/update_C2_Conv/b/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/W/ApplyAdam1^optimizer/Adam/update_D_Hidden_Layer/b/ApplyAdam/^optimizer/Adam/update_Output_Layer/W/ApplyAdam/^optimizer/Adam/update_Output_Layer/b/ApplyAdam
a
evaluate_model/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
†
evaluate_model/ArgMaxArgMaxoptimizer/y_labelevaluate_model/ArgMax/dimension*#
_output_shapes
:€€€€€€€€€*

Tidx0*
output_type0	*
T0
c
!evaluate_model/ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
І
evaluate_model/ArgMax_1ArgMaxOutput_Layer/Softmax!evaluate_model/ArgMax_1/dimension*

Tidx0*
output_type0	*
T0*#
_output_shapes
:€€€€€€€€€
{
evaluate_model/EqualEqualevaluate_model/ArgMaxevaluate_model/ArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€
~
evaluate_model/CastCastevaluate_model/Equal*

DstT0*
Truncate( *#
_output_shapes
:€€€€€€€€€*

SrcT0

^
evaluate_model/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Д
evaluate_model/MeanMeanevaluate_model/Castevaluate_model/Const*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
Ї
initNoOp^C1_Conv/W/Adam/Assign^C1_Conv/W/Adam_1/Assign^C1_Conv/W/Assign^C1_Conv/b/Adam/Assign^C1_Conv/b/Adam_1/Assign^C1_Conv/b/Assign^C2_Conv/W/Adam/Assign^C2_Conv/W/Adam_1/Assign^C2_Conv/W/Assign^C2_Conv/b/Adam/Assign^C2_Conv/b/Adam_1/Assign^C2_Conv/b/Assign^D_Hidden_Layer/W/Adam/Assign^D_Hidden_Layer/W/Adam_1/Assign^D_Hidden_Layer/W/Assign^D_Hidden_Layer/b/Adam/Assign^D_Hidden_Layer/b/Adam_1/Assign^D_Hidden_Layer/b/Assign^Output_Layer/W/Adam/Assign^Output_Layer/W/Adam_1/Assign^Output_Layer/W/Assign^Output_Layer/b/Adam/Assign^Output_Layer/b/Adam_1/Assign^Output_Layer/b/Assign^optimizer/beta1_power/Assign^optimizer/beta2_power/Assign
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
Е
ArgMaxArgMaxOutput_Layer/SoftmaxArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€*
output_type0	""„
trainable_variablesњЉ
O
C1_Conv/W:0C1_Conv/W/AssignC1_Conv/W/read:02C1_Conv/truncated_normal:08
D
C1_Conv/b:0C1_Conv/b/AssignC1_Conv/b/read:02C1_Conv/Const:08
O
C2_Conv/W:0C2_Conv/W/AssignC2_Conv/W/read:02C2_Conv/truncated_normal:08
D
C2_Conv/b:0C2_Conv/b/AssignC2_Conv/b/read:02C2_Conv/Const:08
k
D_Hidden_Layer/W:0D_Hidden_Layer/W/AssignD_Hidden_Layer/W/read:02!D_Hidden_Layer/truncated_normal:08
`
D_Hidden_Layer/b:0D_Hidden_Layer/b/AssignD_Hidden_Layer/b/read:02D_Hidden_Layer/Const:08
c
Output_Layer/W:0Output_Layer/W/AssignOutput_Layer/W/read:02Output_Layer/truncated_normal:08
X
Output_Layer/b:0Output_Layer/b/AssignOutput_Layer/b/read:02Output_Layer/Const:08"
train_op

optimizer/Adam"ѓ
	variables°Ю
O
C1_Conv/W:0C1_Conv/W/AssignC1_Conv/W/read:02C1_Conv/truncated_normal:08
D
C1_Conv/b:0C1_Conv/b/AssignC1_Conv/b/read:02C1_Conv/Const:08
O
C2_Conv/W:0C2_Conv/W/AssignC2_Conv/W/read:02C2_Conv/truncated_normal:08
D
C2_Conv/b:0C2_Conv/b/AssignC2_Conv/b/read:02C2_Conv/Const:08
k
D_Hidden_Layer/W:0D_Hidden_Layer/W/AssignD_Hidden_Layer/W/read:02!D_Hidden_Layer/truncated_normal:08
`
D_Hidden_Layer/b:0D_Hidden_Layer/b/AssignD_Hidden_Layer/b/read:02D_Hidden_Layer/Const:08
c
Output_Layer/W:0Output_Layer/W/AssignOutput_Layer/W/read:02Output_Layer/truncated_normal:08
X
Output_Layer/b:0Output_Layer/b/AssignOutput_Layer/b/read:02Output_Layer/Const:08
|
optimizer/beta1_power:0optimiz