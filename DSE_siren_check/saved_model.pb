ЇН
Р
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58ё
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0

Adam/v/dense_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/dense_104/bias
{
)Adam/v/dense_104/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_104/bias*
_output_shapes
:*
dtype0

Adam/m/dense_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/dense_104/bias
{
)Adam/m/dense_104/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_104/bias*
_output_shapes
:*
dtype0

Adam/v/dense_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/v/dense_104/kernel

+Adam/v/dense_104/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_104/kernel*
_output_shapes
:	*
dtype0

Adam/m/dense_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameAdam/m/dense_104/kernel

+Adam/m/dense_104/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_104/kernel*
_output_shapes
:	*
dtype0

Adam/v/conv2d_419/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_419/bias
~
*Adam/v/conv2d_419/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_419/bias*
_output_shapes	
:*
dtype0

Adam/m/conv2d_419/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_419/bias
~
*Adam/m/conv2d_419/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_419/bias*
_output_shapes	
:*
dtype0

Adam/v/conv2d_419/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/v/conv2d_419/kernel

,Adam/v/conv2d_419/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_419/kernel*'
_output_shapes
:@*
dtype0

Adam/m/conv2d_419/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/m/conv2d_419/kernel

,Adam/m/conv2d_419/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_419/kernel*'
_output_shapes
:@*
dtype0

Adam/v/conv2d_418/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/v/conv2d_418/bias
}
*Adam/v/conv2d_418/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_418/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_418/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/m/conv2d_418/bias
}
*Adam/m/conv2d_418/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_418/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_418/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/v/conv2d_418/kernel

,Adam/v/conv2d_418/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_418/kernel*&
_output_shapes
: @*
dtype0

Adam/m/conv2d_418/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/m/conv2d_418/kernel

,Adam/m/conv2d_418/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_418/kernel*&
_output_shapes
: @*
dtype0

Adam/v/conv2d_417/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_417/bias
}
*Adam/v/conv2d_417/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_417/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_417/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_417/bias
}
*Adam/m/conv2d_417/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_417/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_417/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/v/conv2d_417/kernel

,Adam/v/conv2d_417/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_417/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d_417/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/m/conv2d_417/kernel

,Adam/m/conv2d_417/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_417/kernel*&
_output_shapes
: *
dtype0

Adam/v/conv2d_416/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_416/bias
}
*Adam/v/conv2d_416/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_416/bias*
_output_shapes
:*
dtype0

Adam/m/conv2d_416/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_416/bias
}
*Adam/m/conv2d_416/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_416/bias*
_output_shapes
:*
dtype0

Adam/v/conv2d_416/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/conv2d_416/kernel

,Adam/v/conv2d_416/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_416/kernel*&
_output_shapes
:*
dtype0

Adam/m/conv2d_416/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/conv2d_416/kernel

,Adam/m/conv2d_416/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_416/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
t
dense_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_104/bias
m
"dense_104/bias/Read/ReadVariableOpReadVariableOpdense_104/bias*
_output_shapes
:*
dtype0
}
dense_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*!
shared_namedense_104/kernel
v
$dense_104/kernel/Read/ReadVariableOpReadVariableOpdense_104/kernel*
_output_shapes
:	*
dtype0
w
conv2d_419/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_419/bias
p
#conv2d_419/bias/Read/ReadVariableOpReadVariableOpconv2d_419/bias*
_output_shapes	
:*
dtype0

conv2d_419/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv2d_419/kernel

%conv2d_419/kernel/Read/ReadVariableOpReadVariableOpconv2d_419/kernel*'
_output_shapes
:@*
dtype0
v
conv2d_418/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_418/bias
o
#conv2d_418/bias/Read/ReadVariableOpReadVariableOpconv2d_418/bias*
_output_shapes
:@*
dtype0

conv2d_418/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_418/kernel

%conv2d_418/kernel/Read/ReadVariableOpReadVariableOpconv2d_418/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_417/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_417/bias
o
#conv2d_417/bias/Read/ReadVariableOpReadVariableOpconv2d_417/bias*
_output_shapes
: *
dtype0

conv2d_417/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_417/kernel

%conv2d_417/kernel/Read/ReadVariableOpReadVariableOpconv2d_417/kernel*&
_output_shapes
: *
dtype0
v
conv2d_416/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_416/bias
o
#conv2d_416/bias/Read/ReadVariableOpReadVariableOpconv2d_416/bias*
_output_shapes
:*
dtype0

conv2d_416/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_416/kernel

%conv2d_416/kernel/Read/ReadVariableOpReadVariableOpconv2d_416/kernel*&
_output_shapes
:*
dtype0

 serving_default_conv2d_416_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ-*
dtype0*$
shape:џџџџџџџџџ-

StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_416_inputconv2d_416/kernelconv2d_416/biasconv2d_417/kernelconv2d_417/biasconv2d_418/kernelconv2d_418/biasconv2d_419/kernelconv2d_419/biasdense_104/kerneldense_104/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_6430811

NoOpNoOp
n
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Рm
valueЖmBГm BЌm

layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*

"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
Ѕ
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator* 
Ш
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op*

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
Ѕ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator* 
Ш
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op*

N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
Ѕ
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator* 
Ш
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
 c_jit_compiled_convolution_op*

d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
Ѕ
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator* 

q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses* 

w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
Ћ
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
L
0
 1
52
63
K4
L5
a6
b7
8
9*
L
0
 1
52
63
K4
L5
a6
b7
8
9*
* 
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 


_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla*

serving_default* 

0
 1*

0
 1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0* 

 trace_0* 
a[
VARIABLE_VALUEconv2d_416/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_416/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Ёnon_trainable_variables
Ђlayers
Ѓmetrics
 Єlayer_regularization_losses
Ѕlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

Іtrace_0* 

Їtrace_0* 
* 
* 
* 

Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

­trace_0
Ўtrace_1* 

Џtrace_0
Аtrace_1* 
* 

50
61*

50
61*
* 

Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

Жtrace_0* 

Зtrace_0* 
a[
VARIABLE_VALUEconv2d_417/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_417/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

Нtrace_0* 

Оtrace_0* 
* 
* 
* 

Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

Фtrace_0
Хtrace_1* 

Цtrace_0
Чtrace_1* 
* 

K0
L1*

K0
L1*
* 

Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
a[
VARIABLE_VALUEconv2d_418/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_418/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

дtrace_0* 

еtrace_0* 
* 
* 
* 

жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

лtrace_0
мtrace_1* 

нtrace_0
оtrace_1* 
* 

a0
b1*

a0
b1*
* 

пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

фtrace_0* 

хtrace_0* 
a[
VARIABLE_VALUEconv2d_419/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_419/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

ыtrace_0* 

ьtrace_0* 
* 
* 
* 

эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

ђtrace_0
ѓtrace_1* 

єtrace_0
ѕtrace_1* 
* 
* 
* 
* 

іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 

ћtrace_0* 

ќtrace_0* 
* 
* 
* 

§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEdense_104/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_104/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
З
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
0
1
2
3
4
5
6
7
8
9*
T
0
1
2
3
4
5
6
7
8
 9*

Ёtrace_0
Ђtrace_1
Ѓtrace_2
Єtrace_3
Ѕtrace_4
Іtrace_5
Їtrace_6
Јtrace_7
Љtrace_8
Њtrace_9* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Ћ	variables
Ќ	keras_api

­total

Ўcount*
M
Џ	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs*
c]
VARIABLE_VALUEAdam/m/conv2d_416/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_416/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_416/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_416/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_417/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_417/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_417/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_417/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_418/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_418/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_418/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_418/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv2d_419/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_419/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_419/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_419/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/dense_104/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/dense_104/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_104/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_104/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

­0
Ў1*

Ћ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Б0
В1*

Џ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
я
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_416/kernel/Read/ReadVariableOp#conv2d_416/bias/Read/ReadVariableOp%conv2d_417/kernel/Read/ReadVariableOp#conv2d_417/bias/Read/ReadVariableOp%conv2d_418/kernel/Read/ReadVariableOp#conv2d_418/bias/Read/ReadVariableOp%conv2d_419/kernel/Read/ReadVariableOp#conv2d_419/bias/Read/ReadVariableOp$dense_104/kernel/Read/ReadVariableOp"dense_104/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp,Adam/m/conv2d_416/kernel/Read/ReadVariableOp,Adam/v/conv2d_416/kernel/Read/ReadVariableOp*Adam/m/conv2d_416/bias/Read/ReadVariableOp*Adam/v/conv2d_416/bias/Read/ReadVariableOp,Adam/m/conv2d_417/kernel/Read/ReadVariableOp,Adam/v/conv2d_417/kernel/Read/ReadVariableOp*Adam/m/conv2d_417/bias/Read/ReadVariableOp*Adam/v/conv2d_417/bias/Read/ReadVariableOp,Adam/m/conv2d_418/kernel/Read/ReadVariableOp,Adam/v/conv2d_418/kernel/Read/ReadVariableOp*Adam/m/conv2d_418/bias/Read/ReadVariableOp*Adam/v/conv2d_418/bias/Read/ReadVariableOp,Adam/m/conv2d_419/kernel/Read/ReadVariableOp,Adam/v/conv2d_419/kernel/Read/ReadVariableOp*Adam/m/conv2d_419/bias/Read/ReadVariableOp*Adam/v/conv2d_419/bias/Read/ReadVariableOp+Adam/m/dense_104/kernel/Read/ReadVariableOp+Adam/v/dense_104/kernel/Read/ReadVariableOp)Adam/m/dense_104/bias/Read/ReadVariableOp)Adam/v/dense_104/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*1
Tin*
(2&	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_6431392

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_416/kernelconv2d_416/biasconv2d_417/kernelconv2d_417/biasconv2d_418/kernelconv2d_418/biasconv2d_419/kernelconv2d_419/biasdense_104/kerneldense_104/bias	iterationlearning_rateAdam/m/conv2d_416/kernelAdam/v/conv2d_416/kernelAdam/m/conv2d_416/biasAdam/v/conv2d_416/biasAdam/m/conv2d_417/kernelAdam/v/conv2d_417/kernelAdam/m/conv2d_417/biasAdam/v/conv2d_417/biasAdam/m/conv2d_418/kernelAdam/v/conv2d_418/kernelAdam/m/conv2d_418/biasAdam/v/conv2d_418/biasAdam/m/conv2d_419/kernelAdam/v/conv2d_419/kernelAdam/m/conv2d_419/biasAdam/v/conv2d_419/biasAdam/m/dense_104/kernelAdam/v/dense_104/kernelAdam/m/dense_104/biasAdam/v/dense_104/biastotal_1count_1totalcount*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_6431510ёЙ	
б
X
$__inference__update_step_xla_6374285
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
­
L
$__inference__update_step_xla_6374290
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
П`
П
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430991

inputsC
)conv2d_416_conv2d_readvariableop_resource:8
*conv2d_416_biasadd_readvariableop_resource:C
)conv2d_417_conv2d_readvariableop_resource: 8
*conv2d_417_biasadd_readvariableop_resource: C
)conv2d_418_conv2d_readvariableop_resource: @8
*conv2d_418_biasadd_readvariableop_resource:@D
)conv2d_419_conv2d_readvariableop_resource:@9
*conv2d_419_biasadd_readvariableop_resource:	;
(dense_104_matmul_readvariableop_resource:	7
)dense_104_biasadd_readvariableop_resource:
identityЂ!conv2d_416/BiasAdd/ReadVariableOpЂ conv2d_416/Conv2D/ReadVariableOpЂ!conv2d_417/BiasAdd/ReadVariableOpЂ conv2d_417/Conv2D/ReadVariableOpЂ!conv2d_418/BiasAdd/ReadVariableOpЂ conv2d_418/Conv2D/ReadVariableOpЂ!conv2d_419/BiasAdd/ReadVariableOpЂ conv2d_419/Conv2D/ReadVariableOpЂ dense_104/BiasAdd/ReadVariableOpЂdense_104/MatMul/ReadVariableOp
 conv2d_416/Conv2D/ReadVariableOpReadVariableOp)conv2d_416_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Џ
conv2d_416/Conv2DConv2Dinputs(conv2d_416/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides

!conv2d_416/BiasAdd/ReadVariableOpReadVariableOp*conv2d_416_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_416/BiasAddBiasAddconv2d_416/Conv2D:output:0)conv2d_416/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-n
conv2d_416/ReluReluconv2d_416/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-Џ
max_pooling2d_416/MaxPoolMaxPoolconv2d_416/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
^
dropout_416/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
dropout_416/dropout/MulMul"max_pooling2d_416/MaxPool:output:0"dropout_416/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџk
dropout_416/dropout/ShapeShape"max_pooling2d_416/MaxPool:output:0*
T0*
_output_shapes
:И
0dropout_416/dropout/random_uniform/RandomUniformRandomUniform"dropout_416/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0*

seed*g
"dropout_416/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>в
 dropout_416/dropout/GreaterEqualGreaterEqual9dropout_416/dropout/random_uniform/RandomUniform:output:0+dropout_416/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ`
dropout_416/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_416/dropout/SelectV2SelectV2$dropout_416/dropout/GreaterEqual:z:0dropout_416/dropout/Mul:z:0$dropout_416/dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
 conv2d_417/Conv2D/ReadVariableOpReadVariableOp)conv2d_417_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ю
conv2d_417/Conv2DConv2D%dropout_416/dropout/SelectV2:output:0(conv2d_417/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

!conv2d_417/BiasAdd/ReadVariableOpReadVariableOp*conv2d_417_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_417/BiasAddBiasAddconv2d_417/Conv2D:output:0)conv2d_417/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ n
conv2d_417/ReluReluconv2d_417/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ Џ
max_pooling2d_417/MaxPoolMaxPoolconv2d_417/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingSAME*
strides
^
dropout_417/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
dropout_417/dropout/MulMul"max_pooling2d_417/MaxPool:output:0"dropout_417/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ k
dropout_417/dropout/ShapeShape"max_pooling2d_417/MaxPool:output:0*
T0*
_output_shapes
:Х
0dropout_417/dropout/random_uniform/RandomUniformRandomUniform"dropout_417/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ *
dtype0*

seed**
seed2g
"dropout_417/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>в
 dropout_417/dropout/GreaterEqualGreaterEqual9dropout_417/dropout/random_uniform/RandomUniform:output:0+dropout_417/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ `
dropout_417/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_417/dropout/SelectV2SelectV2$dropout_417/dropout/GreaterEqual:z:0dropout_417/dropout/Mul:z:0$dropout_417/dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 
 conv2d_418/Conv2D/ReadVariableOpReadVariableOp)conv2d_418_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ю
conv2d_418/Conv2DConv2D%dropout_417/dropout/SelectV2:output:0(conv2d_418/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

!conv2d_418/BiasAdd/ReadVariableOpReadVariableOp*conv2d_418_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_418/BiasAddBiasAddconv2d_418/Conv2D:output:0)conv2d_418/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@n
conv2d_418/ReluReluconv2d_418/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Џ
max_pooling2d_418/MaxPoolMaxPoolconv2d_418/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingSAME*
strides
^
dropout_418/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ? 
dropout_418/dropout/MulMul"max_pooling2d_418/MaxPool:output:0"dropout_418/dropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@k
dropout_418/dropout/ShapeShape"max_pooling2d_418/MaxPool:output:0*
T0*
_output_shapes
:Х
0dropout_418/dropout/random_uniform/RandomUniformRandomUniform"dropout_418/dropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed**
seed2g
"dropout_418/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>в
 dropout_418/dropout/GreaterEqualGreaterEqual9dropout_418/dropout/random_uniform/RandomUniform:output:0+dropout_418/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@`
dropout_418/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_418/dropout/SelectV2SelectV2$dropout_418/dropout/GreaterEqual:z:0dropout_418/dropout/Mul:z:0$dropout_418/dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@
 conv2d_419/Conv2D/ReadVariableOpReadVariableOp)conv2d_419_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Я
conv2d_419/Conv2DConv2D%dropout_418/dropout/SelectV2:output:0(conv2d_419/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

!conv2d_419/BiasAdd/ReadVariableOpReadVariableOp*conv2d_419_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_419/BiasAddBiasAddconv2d_419/Conv2D:output:0)conv2d_419/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџo
conv2d_419/ReluReluconv2d_419/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџА
max_pooling2d_419/MaxPoolMaxPoolconv2d_419/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
^
dropout_419/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
dropout_419/dropout/MulMul"max_pooling2d_419/MaxPool:output:0"dropout_419/dropout/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџk
dropout_419/dropout/ShapeShape"max_pooling2d_419/MaxPool:output:0*
T0*
_output_shapes
:Ц
0dropout_419/dropout/random_uniform/RandomUniformRandomUniform"dropout_419/dropout/Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
dtype0*

seed**
seed2g
"dropout_419/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>г
 dropout_419/dropout/GreaterEqualGreaterEqual9dropout_419/dropout/random_uniform/RandomUniform:output:0+dropout_419/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџ`
dropout_419/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout_419/dropout/SelectV2SelectV2$dropout_419/dropout/GreaterEqual:z:0dropout_419/dropout/Mul:z:0$dropout_419/dropout/Const_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
3global_average_pooling2d_104/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      С
!global_average_pooling2d_104/MeanMean%dropout_419/dropout/SelectV2:output:0<global_average_pooling2d_104/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
flatten_104/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_104/ReshapeReshape*global_average_pooling2d_104/Mean:output:0flatten_104/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_104/MatMulMatMulflatten_104/Reshape:output:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџj
dense_104/SoftmaxSoftmaxdense_104/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
IdentityIdentitydense_104/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
NoOpNoOp"^conv2d_416/BiasAdd/ReadVariableOp!^conv2d_416/Conv2D/ReadVariableOp"^conv2d_417/BiasAdd/ReadVariableOp!^conv2d_417/Conv2D/ReadVariableOp"^conv2d_418/BiasAdd/ReadVariableOp!^conv2d_418/Conv2D/ReadVariableOp"^conv2d_419/BiasAdd/ReadVariableOp!^conv2d_419/Conv2D/ReadVariableOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 2F
!conv2d_416/BiasAdd/ReadVariableOp!conv2d_416/BiasAdd/ReadVariableOp2D
 conv2d_416/Conv2D/ReadVariableOp conv2d_416/Conv2D/ReadVariableOp2F
!conv2d_417/BiasAdd/ReadVariableOp!conv2d_417/BiasAdd/ReadVariableOp2D
 conv2d_417/Conv2D/ReadVariableOp conv2d_417/Conv2D/ReadVariableOp2F
!conv2d_418/BiasAdd/ReadVariableOp!conv2d_418/BiasAdd/ReadVariableOp2D
 conv2d_418/Conv2D/ReadVariableOp conv2d_418/Conv2D/ReadVariableOp2F
!conv2d_419/BiasAdd/ReadVariableOp!conv2d_419/BiasAdd/ReadVariableOp2D
 conv2d_419/Conv2D/ReadVariableOp conv2d_419/Conv2D/ReadVariableOp2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
ћ
f
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431093

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
І

ј
F__inference_dense_104_layer_call_and_return_conditional_losses_6431261

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
М
d
H__inference_flatten_104_layer_call_and_return_conditional_losses_6430399

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
С
O
3__inference_max_pooling2d_416_layer_call_fn_6431016

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6430233
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
?
П
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430912

inputsC
)conv2d_416_conv2d_readvariableop_resource:8
*conv2d_416_biasadd_readvariableop_resource:C
)conv2d_417_conv2d_readvariableop_resource: 8
*conv2d_417_biasadd_readvariableop_resource: C
)conv2d_418_conv2d_readvariableop_resource: @8
*conv2d_418_biasadd_readvariableop_resource:@D
)conv2d_419_conv2d_readvariableop_resource:@9
*conv2d_419_biasadd_readvariableop_resource:	;
(dense_104_matmul_readvariableop_resource:	7
)dense_104_biasadd_readvariableop_resource:
identityЂ!conv2d_416/BiasAdd/ReadVariableOpЂ conv2d_416/Conv2D/ReadVariableOpЂ!conv2d_417/BiasAdd/ReadVariableOpЂ conv2d_417/Conv2D/ReadVariableOpЂ!conv2d_418/BiasAdd/ReadVariableOpЂ conv2d_418/Conv2D/ReadVariableOpЂ!conv2d_419/BiasAdd/ReadVariableOpЂ conv2d_419/Conv2D/ReadVariableOpЂ dense_104/BiasAdd/ReadVariableOpЂdense_104/MatMul/ReadVariableOp
 conv2d_416/Conv2D/ReadVariableOpReadVariableOp)conv2d_416_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Џ
conv2d_416/Conv2DConv2Dinputs(conv2d_416/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides

!conv2d_416/BiasAdd/ReadVariableOpReadVariableOp*conv2d_416_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_416/BiasAddBiasAddconv2d_416/Conv2D:output:0)conv2d_416/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-n
conv2d_416/ReluReluconv2d_416/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-Џ
max_pooling2d_416/MaxPoolMaxPoolconv2d_416/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides
~
dropout_416/IdentityIdentity"max_pooling2d_416/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
 conv2d_417/Conv2D/ReadVariableOpReadVariableOp)conv2d_417_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ц
conv2d_417/Conv2DConv2Ddropout_416/Identity:output:0(conv2d_417/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides

!conv2d_417/BiasAdd/ReadVariableOpReadVariableOp*conv2d_417_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_417/BiasAddBiasAddconv2d_417/Conv2D:output:0)conv2d_417/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ n
conv2d_417/ReluReluconv2d_417/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ Џ
max_pooling2d_417/MaxPoolMaxPoolconv2d_417/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingSAME*
strides
~
dropout_417/IdentityIdentity"max_pooling2d_417/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 
 conv2d_418/Conv2D/ReadVariableOpReadVariableOp)conv2d_418_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ц
conv2d_418/Conv2DConv2Ddropout_417/Identity:output:0(conv2d_418/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides

!conv2d_418/BiasAdd/ReadVariableOpReadVariableOp*conv2d_418_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_418/BiasAddBiasAddconv2d_418/Conv2D:output:0)conv2d_418/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@n
conv2d_418/ReluReluconv2d_418/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Џ
max_pooling2d_418/MaxPoolMaxPoolconv2d_418/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingSAME*
strides
~
dropout_418/IdentityIdentity"max_pooling2d_418/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@
 conv2d_419/Conv2D/ReadVariableOpReadVariableOp)conv2d_419_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ч
conv2d_419/Conv2DConv2Ddropout_418/Identity:output:0(conv2d_419/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

!conv2d_419/BiasAdd/ReadVariableOpReadVariableOp*conv2d_419_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_419/BiasAddBiasAddconv2d_419/Conv2D:output:0)conv2d_419/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџo
conv2d_419/ReluReluconv2d_419/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџА
max_pooling2d_419/MaxPoolMaxPoolconv2d_419/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides

dropout_419/IdentityIdentity"max_pooling2d_419/MaxPool:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
3global_average_pooling2d_104/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Й
!global_average_pooling2d_104/MeanMeandropout_419/Identity:output:0<global_average_pooling2d_104/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
flatten_104/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
flatten_104/ReshapeReshape*global_average_pooling2d_104/Mean:output:0flatten_104/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_104/MatMulMatMulflatten_104/Reshape:output:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџj
dense_104/SoftmaxSoftmaxdense_104/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџj
IdentityIdentitydense_104/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
NoOpNoOp"^conv2d_416/BiasAdd/ReadVariableOp!^conv2d_416/Conv2D/ReadVariableOp"^conv2d_417/BiasAdd/ReadVariableOp!^conv2d_417/Conv2D/ReadVariableOp"^conv2d_418/BiasAdd/ReadVariableOp!^conv2d_418/Conv2D/ReadVariableOp"^conv2d_419/BiasAdd/ReadVariableOp!^conv2d_419/Conv2D/ReadVariableOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 2F
!conv2d_416/BiasAdd/ReadVariableOp!conv2d_416/BiasAdd/ReadVariableOp2D
 conv2d_416/Conv2D/ReadVariableOp conv2d_416/Conv2D/ReadVariableOp2F
!conv2d_417/BiasAdd/ReadVariableOp!conv2d_417/BiasAdd/ReadVariableOp2D
 conv2d_417/Conv2D/ReadVariableOp conv2d_417/Conv2D/ReadVariableOp2F
!conv2d_418/BiasAdd/ReadVariableOp!conv2d_418/BiasAdd/ReadVariableOp2D
 conv2d_418/Conv2D/ReadVariableOp conv2d_418/Conv2D/ReadVariableOp2F
!conv2d_419/BiasAdd/ReadVariableOp!conv2d_419/BiasAdd/ReadVariableOp2D
 conv2d_419/Conv2D/ReadVariableOp conv2d_419/Conv2D/ReadVariableOp2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
Ј
ћ
#__inference__traced_restore_6431510
file_prefix<
"assignvariableop_conv2d_416_kernel:0
"assignvariableop_1_conv2d_416_bias:>
$assignvariableop_2_conv2d_417_kernel: 0
"assignvariableop_3_conv2d_417_bias: >
$assignvariableop_4_conv2d_418_kernel: @0
"assignvariableop_5_conv2d_418_bias:@?
$assignvariableop_6_conv2d_419_kernel:@1
"assignvariableop_7_conv2d_419_bias:	6
#assignvariableop_8_dense_104_kernel:	/
!assignvariableop_9_dense_104_bias:'
assignvariableop_10_iteration:	 +
!assignvariableop_11_learning_rate: F
,assignvariableop_12_adam_m_conv2d_416_kernel:F
,assignvariableop_13_adam_v_conv2d_416_kernel:8
*assignvariableop_14_adam_m_conv2d_416_bias:8
*assignvariableop_15_adam_v_conv2d_416_bias:F
,assignvariableop_16_adam_m_conv2d_417_kernel: F
,assignvariableop_17_adam_v_conv2d_417_kernel: 8
*assignvariableop_18_adam_m_conv2d_417_bias: 8
*assignvariableop_19_adam_v_conv2d_417_bias: F
,assignvariableop_20_adam_m_conv2d_418_kernel: @F
,assignvariableop_21_adam_v_conv2d_418_kernel: @8
*assignvariableop_22_adam_m_conv2d_418_bias:@8
*assignvariableop_23_adam_v_conv2d_418_bias:@G
,assignvariableop_24_adam_m_conv2d_419_kernel:@G
,assignvariableop_25_adam_v_conv2d_419_kernel:@9
*assignvariableop_26_adam_m_conv2d_419_bias:	9
*assignvariableop_27_adam_v_conv2d_419_bias:	>
+assignvariableop_28_adam_m_dense_104_kernel:	>
+assignvariableop_29_adam_v_dense_104_kernel:	7
)assignvariableop_30_adam_m_dense_104_bias:7
)assignvariableop_31_adam_v_dense_104_bias:%
assignvariableop_32_total_1: %
assignvariableop_33_count_1: #
assignvariableop_34_total: #
assignvariableop_35_count: 
identity_37ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9љ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*
valueB%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHК
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B к
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Њ
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_416_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_416_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_417_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_417_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_418_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_418_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_419_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_419_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_104_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_104_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_10AssignVariableOpassignvariableop_10_iterationIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOp!assignvariableop_11_learning_rateIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_12AssignVariableOp,assignvariableop_12_adam_m_conv2d_416_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_v_conv2d_416_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_m_conv2d_416_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_v_conv2d_416_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_16AssignVariableOp,assignvariableop_16_adam_m_conv2d_417_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_v_conv2d_417_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_m_conv2d_417_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_v_conv2d_417_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_m_conv2d_418_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_v_conv2d_418_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_conv2d_418_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_conv2d_418_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_m_conv2d_419_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_v_conv2d_419_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_conv2d_419_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_conv2d_419_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_m_dense_104_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_v_dense_104_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_dense_104_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_dense_104_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ч
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
К
u
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6431230

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6431135

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ќ
I
-__inference_flatten_104_layer_call_fn_6431235

inputs
identityЗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_104_layer_call_and_return_conditional_losses_6430399a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
в

g
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431048

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
щN
Ь

"__inference__wrapped_model_6430224
conv2d_416_inputR
8sequential_104_conv2d_416_conv2d_readvariableop_resource:G
9sequential_104_conv2d_416_biasadd_readvariableop_resource:R
8sequential_104_conv2d_417_conv2d_readvariableop_resource: G
9sequential_104_conv2d_417_biasadd_readvariableop_resource: R
8sequential_104_conv2d_418_conv2d_readvariableop_resource: @G
9sequential_104_conv2d_418_biasadd_readvariableop_resource:@S
8sequential_104_conv2d_419_conv2d_readvariableop_resource:@H
9sequential_104_conv2d_419_biasadd_readvariableop_resource:	J
7sequential_104_dense_104_matmul_readvariableop_resource:	F
8sequential_104_dense_104_biasadd_readvariableop_resource:
identityЂ0sequential_104/conv2d_416/BiasAdd/ReadVariableOpЂ/sequential_104/conv2d_416/Conv2D/ReadVariableOpЂ0sequential_104/conv2d_417/BiasAdd/ReadVariableOpЂ/sequential_104/conv2d_417/Conv2D/ReadVariableOpЂ0sequential_104/conv2d_418/BiasAdd/ReadVariableOpЂ/sequential_104/conv2d_418/Conv2D/ReadVariableOpЂ0sequential_104/conv2d_419/BiasAdd/ReadVariableOpЂ/sequential_104/conv2d_419/Conv2D/ReadVariableOpЂ/sequential_104/dense_104/BiasAdd/ReadVariableOpЂ.sequential_104/dense_104/MatMul/ReadVariableOpА
/sequential_104/conv2d_416/Conv2D/ReadVariableOpReadVariableOp8sequential_104_conv2d_416_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0з
 sequential_104/conv2d_416/Conv2DConv2Dconv2d_416_input7sequential_104/conv2d_416/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
І
0sequential_104/conv2d_416/BiasAdd/ReadVariableOpReadVariableOp9sequential_104_conv2d_416_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
!sequential_104/conv2d_416/BiasAddBiasAdd)sequential_104/conv2d_416/Conv2D:output:08sequential_104/conv2d_416/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-
sequential_104/conv2d_416/ReluRelu*sequential_104/conv2d_416/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-Э
(sequential_104/max_pooling2d_416/MaxPoolMaxPool,sequential_104/conv2d_416/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides

#sequential_104/dropout_416/IdentityIdentity1sequential_104/max_pooling2d_416/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџА
/sequential_104/conv2d_417/Conv2D/ReadVariableOpReadVariableOp8sequential_104_conv2d_417_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ѓ
 sequential_104/conv2d_417/Conv2DConv2D,sequential_104/dropout_416/Identity:output:07sequential_104/conv2d_417/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
І
0sequential_104/conv2d_417/BiasAdd/ReadVariableOpReadVariableOp9sequential_104_conv2d_417_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
!sequential_104/conv2d_417/BiasAddBiasAdd)sequential_104/conv2d_417/Conv2D:output:08sequential_104/conv2d_417/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ 
sequential_104/conv2d_417/ReluRelu*sequential_104/conv2d_417/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ Э
(sequential_104/max_pooling2d_417/MaxPoolMaxPool,sequential_104/conv2d_417/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ *
ksize
*
paddingSAME*
strides

#sequential_104/dropout_417/IdentityIdentity1sequential_104/max_pooling2d_417/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ А
/sequential_104/conv2d_418/Conv2D/ReadVariableOpReadVariableOp8sequential_104_conv2d_418_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ѓ
 sequential_104/conv2d_418/Conv2DConv2D,sequential_104/dropout_417/Identity:output:07sequential_104/conv2d_418/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
І
0sequential_104/conv2d_418/BiasAdd/ReadVariableOpReadVariableOp9sequential_104_conv2d_418_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
!sequential_104/conv2d_418/BiasAddBiasAdd)sequential_104/conv2d_418/Conv2D:output:08sequential_104/conv2d_418/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@
sequential_104/conv2d_418/ReluRelu*sequential_104/conv2d_418/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Э
(sequential_104/max_pooling2d_418/MaxPoolMaxPool,sequential_104/conv2d_418/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingSAME*
strides

#sequential_104/dropout_418/IdentityIdentity1sequential_104/max_pooling2d_418/MaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@Б
/sequential_104/conv2d_419/Conv2D/ReadVariableOpReadVariableOp8sequential_104_conv2d_419_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0є
 sequential_104/conv2d_419/Conv2DConv2D,sequential_104/dropout_418/Identity:output:07sequential_104/conv2d_419/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
Ї
0sequential_104/conv2d_419/BiasAdd/ReadVariableOpReadVariableOp9sequential_104_conv2d_419_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ь
!sequential_104/conv2d_419/BiasAddBiasAdd)sequential_104/conv2d_419/Conv2D:output:08sequential_104/conv2d_419/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ
sequential_104/conv2d_419/ReluRelu*sequential_104/conv2d_419/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџЮ
(sequential_104/max_pooling2d_419/MaxPoolMaxPool,sequential_104/conv2d_419/Relu:activations:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingSAME*
strides

#sequential_104/dropout_419/IdentityIdentity1sequential_104/max_pooling2d_419/MaxPool:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
Bsequential_104/global_average_pooling2d_104/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      ц
0sequential_104/global_average_pooling2d_104/MeanMean,sequential_104/dropout_419/Identity:output:0Ksequential_104/global_average_pooling2d_104/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџq
 sequential_104/flatten_104/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ц
"sequential_104/flatten_104/ReshapeReshape9sequential_104/global_average_pooling2d_104/Mean:output:0)sequential_104/flatten_104/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџЇ
.sequential_104/dense_104/MatMul/ReadVariableOpReadVariableOp7sequential_104_dense_104_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Р
sequential_104/dense_104/MatMulMatMul+sequential_104/flatten_104/Reshape:output:06sequential_104/dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
/sequential_104/dense_104/BiasAdd/ReadVariableOpReadVariableOp8sequential_104_dense_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
 sequential_104/dense_104/BiasAddBiasAdd)sequential_104/dense_104/MatMul:product:07sequential_104/dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
 sequential_104/dense_104/SoftmaxSoftmax)sequential_104/dense_104/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџy
IdentityIdentity*sequential_104/dense_104/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџН
NoOpNoOp1^sequential_104/conv2d_416/BiasAdd/ReadVariableOp0^sequential_104/conv2d_416/Conv2D/ReadVariableOp1^sequential_104/conv2d_417/BiasAdd/ReadVariableOp0^sequential_104/conv2d_417/Conv2D/ReadVariableOp1^sequential_104/conv2d_418/BiasAdd/ReadVariableOp0^sequential_104/conv2d_418/Conv2D/ReadVariableOp1^sequential_104/conv2d_419/BiasAdd/ReadVariableOp0^sequential_104/conv2d_419/Conv2D/ReadVariableOp0^sequential_104/dense_104/BiasAdd/ReadVariableOp/^sequential_104/dense_104/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 2d
0sequential_104/conv2d_416/BiasAdd/ReadVariableOp0sequential_104/conv2d_416/BiasAdd/ReadVariableOp2b
/sequential_104/conv2d_416/Conv2D/ReadVariableOp/sequential_104/conv2d_416/Conv2D/ReadVariableOp2d
0sequential_104/conv2d_417/BiasAdd/ReadVariableOp0sequential_104/conv2d_417/BiasAdd/ReadVariableOp2b
/sequential_104/conv2d_417/Conv2D/ReadVariableOp/sequential_104/conv2d_417/Conv2D/ReadVariableOp2d
0sequential_104/conv2d_418/BiasAdd/ReadVariableOp0sequential_104/conv2d_418/BiasAdd/ReadVariableOp2b
/sequential_104/conv2d_418/Conv2D/ReadVariableOp/sequential_104/conv2d_418/Conv2D/ReadVariableOp2d
0sequential_104/conv2d_419/BiasAdd/ReadVariableOp0sequential_104/conv2d_419/BiasAdd/ReadVariableOp2b
/sequential_104/conv2d_419/Conv2D/ReadVariableOp/sequential_104/conv2d_419/Conv2D/ReadVariableOp2b
/sequential_104/dense_104/BiasAdd/ReadVariableOp/sequential_104/dense_104/BiasAdd/ReadVariableOp2`
.sequential_104/dense_104/MatMul/ReadVariableOp.sequential_104/dense_104/MatMul/ReadVariableOp:a ]
/
_output_shapes
:џџџџџџџџџ-
*
_user_specified_nameconv2d_416_input
ћ
f
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430315

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_conv2d_418_layer_call_and_return_conditional_losses_6431125

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

f
-__inference_dropout_419_layer_call_fn_6431202

inputs
identityЂStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430478x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


G__inference_conv2d_418_layer_call_and_return_conditional_losses_6430353

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
в

g
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431105

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ѓ
Ё
,__inference_conv2d_416_layer_call_fn_6431000

inputs!
unknown:
	unknown_0:
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6430303w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ-`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ-: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
Р


%__inference_signature_wrapper_6430811
conv2d_416_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	
	unknown_7:	
	unknown_8:
identityЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallconv2d_416_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_6430224o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџ-
*
_user_specified_nameconv2d_416_input

f
-__inference_dropout_418_layer_call_fn_6431145

inputs
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430511w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ћ
f
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431036

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѓ
Ё
,__inference_conv2d_418_layer_call_fn_6431114

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6430353w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ђ
Z
>__inference_global_average_pooling2d_104_layer_call_fn_6431224

inputs
identityа
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6430282i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
К
u
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6430282

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
С
O
3__inference_max_pooling2d_419_layer_call_fn_6431187

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6430269
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


G__inference_conv2d_417_layer_call_and_return_conditional_losses_6430328

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ж


0__inference_sequential_104_layer_call_fn_6430861

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	
	unknown_7:	
	unknown_8:
identityЂStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
ћ
f
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430340

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
й

g
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431219

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ё
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Џ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6431021

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
в

g
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430544

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


G__inference_conv2d_419_layer_call_and_return_conditional_losses_6430378

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


G__inference_conv2d_416_layer_call_and_return_conditional_losses_6430303

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ-w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
в

g
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430577

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџi
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б
X
$__inference__update_step_xla_6374265
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:P L
&
_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ћ
f
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430365

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
є

Ђ
0__inference_sequential_104_layer_call_fn_6430704
conv2d_416_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	
	unknown_7:	
	unknown_8:
identityЂStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallconv2d_416_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџ-
*
_user_specified_nameconv2d_416_input
в

g
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431162

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6430233

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


G__inference_conv2d_416_layer_call_and_return_conditional_losses_6431011

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ-X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ-i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ-w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
ё:
Е
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430743
conv2d_416_input,
conv2d_416_6430707: 
conv2d_416_6430709:,
conv2d_417_6430714:  
conv2d_417_6430716: ,
conv2d_418_6430721: @ 
conv2d_418_6430723:@-
conv2d_419_6430728:@!
conv2d_419_6430730:	$
dense_104_6430737:	
dense_104_6430739:
identityЂ"conv2d_416/StatefulPartitionedCallЂ"conv2d_417/StatefulPartitionedCallЂ"conv2d_418/StatefulPartitionedCallЂ"conv2d_419/StatefulPartitionedCallЂ!dense_104/StatefulPartitionedCall
"conv2d_416/StatefulPartitionedCallStatefulPartitionedCallconv2d_416_inputconv2d_416_6430707conv2d_416_6430709*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6430303ћ
!max_pooling2d_416/PartitionedCallPartitionedCall+conv2d_416/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6430233ю
dropout_416/PartitionedCallPartitionedCall*max_pooling2d_416/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430315Є
"conv2d_417/StatefulPartitionedCallStatefulPartitionedCall$dropout_416/PartitionedCall:output:0conv2d_417_6430714conv2d_417_6430716*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6430328ћ
!max_pooling2d_417/PartitionedCallPartitionedCall+conv2d_417/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6430245ю
dropout_417/PartitionedCallPartitionedCall*max_pooling2d_417/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430340Є
"conv2d_418/StatefulPartitionedCallStatefulPartitionedCall$dropout_417/PartitionedCall:output:0conv2d_418_6430721conv2d_418_6430723*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6430353ћ
!max_pooling2d_418/PartitionedCallPartitionedCall+conv2d_418/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6430257ю
dropout_418/PartitionedCallPartitionedCall*max_pooling2d_418/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430365Ѕ
"conv2d_419/StatefulPartitionedCallStatefulPartitionedCall$dropout_418/PartitionedCall:output:0conv2d_419_6430728conv2d_419_6430730*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6430378ќ
!max_pooling2d_419/PartitionedCallPartitionedCall+conv2d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6430269я
dropout_419/PartitionedCallPartitionedCall*max_pooling2d_419/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430390
,global_average_pooling2d_104/PartitionedCallPartitionedCall$dropout_419/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6430282ђ
flatten_104/PartitionedCallPartitionedCall5global_average_pooling2d_104/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_104_layer_call_and_return_conditional_losses_6430399
!dense_104/StatefulPartitionedCallStatefulPartitionedCall$flatten_104/PartitionedCall:output:0dense_104_6430737dense_104_6430739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_104_layer_call_and_return_conditional_losses_6430412y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџў
NoOpNoOp#^conv2d_416/StatefulPartitionedCall#^conv2d_417/StatefulPartitionedCall#^conv2d_418/StatefulPartitionedCall#^conv2d_419/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 2H
"conv2d_416/StatefulPartitionedCall"conv2d_416/StatefulPartitionedCall2H
"conv2d_417/StatefulPartitionedCall"conv2d_417/StatefulPartitionedCall2H
"conv2d_418/StatefulPartitionedCall"conv2d_418/StatefulPartitionedCall2H
"conv2d_419/StatefulPartitionedCall"conv2d_419/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџ-
*
_user_specified_nameconv2d_416_input
А
M
$__inference__update_step_xla_6374300
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

f
-__inference_dropout_416_layer_call_fn_6431031

inputs
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430577w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
L
$__inference__update_step_xla_6374310
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
М
Q
$__inference__update_step_xla_6374305
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	: *
	_noinline(:I E

_output_shapes
:	
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
­
L
$__inference__update_step_xla_6374280
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
й

g
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430478

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:џџџџџџџџџC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ё
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:џџџџџџџџџ*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Џ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:џџџџџџџџџT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ
f
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430390

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:џџџџџџџџџd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
б
X
$__inference__update_step_xla_6374275
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ш
I
-__inference_dropout_417_layer_call_fn_6431083

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430340h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ :W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


G__inference_conv2d_417_layer_call_and_return_conditional_losses_6431068

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ
f
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431207

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:џџџџџџџџџd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6430269

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
М
d
H__inference_flatten_104_layer_call_and_return_conditional_losses_6431241

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:џџџџџџџџџ:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш
I
-__inference_dropout_416_layer_call_fn_6431026

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430315h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЃA
Э
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430782
conv2d_416_input,
conv2d_416_6430746: 
conv2d_416_6430748:,
conv2d_417_6430753:  
conv2d_417_6430755: ,
conv2d_418_6430760: @ 
conv2d_418_6430762:@-
conv2d_419_6430767:@!
conv2d_419_6430769:	$
dense_104_6430776:	
dense_104_6430778:
identityЂ"conv2d_416/StatefulPartitionedCallЂ"conv2d_417/StatefulPartitionedCallЂ"conv2d_418/StatefulPartitionedCallЂ"conv2d_419/StatefulPartitionedCallЂ!dense_104/StatefulPartitionedCallЂ#dropout_416/StatefulPartitionedCallЂ#dropout_417/StatefulPartitionedCallЂ#dropout_418/StatefulPartitionedCallЂ#dropout_419/StatefulPartitionedCall
"conv2d_416/StatefulPartitionedCallStatefulPartitionedCallconv2d_416_inputconv2d_416_6430746conv2d_416_6430748*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6430303ћ
!max_pooling2d_416/PartitionedCallPartitionedCall+conv2d_416/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6430233ў
#dropout_416/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_416/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430577Ќ
"conv2d_417/StatefulPartitionedCallStatefulPartitionedCall,dropout_416/StatefulPartitionedCall:output:0conv2d_417_6430753conv2d_417_6430755*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6430328ћ
!max_pooling2d_417/PartitionedCallPartitionedCall+conv2d_417/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6430245Є
#dropout_417/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_417/PartitionedCall:output:0$^dropout_416/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430544Ќ
"conv2d_418/StatefulPartitionedCallStatefulPartitionedCall,dropout_417/StatefulPartitionedCall:output:0conv2d_418_6430760conv2d_418_6430762*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6430353ћ
!max_pooling2d_418/PartitionedCallPartitionedCall+conv2d_418/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6430257Є
#dropout_418/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_418/PartitionedCall:output:0$^dropout_417/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430511­
"conv2d_419/StatefulPartitionedCallStatefulPartitionedCall,dropout_418/StatefulPartitionedCall:output:0conv2d_419_6430767conv2d_419_6430769*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6430378ќ
!max_pooling2d_419/PartitionedCallPartitionedCall+conv2d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6430269Ѕ
#dropout_419/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_419/PartitionedCall:output:0$^dropout_418/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430478
,global_average_pooling2d_104/PartitionedCallPartitionedCall,dropout_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6430282ђ
flatten_104/PartitionedCallPartitionedCall5global_average_pooling2d_104/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_104_layer_call_and_return_conditional_losses_6430399
!dense_104/StatefulPartitionedCallStatefulPartitionedCall$flatten_104/PartitionedCall:output:0dense_104_6430776dense_104_6430778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_104_layer_call_and_return_conditional_losses_6430412y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp#^conv2d_416/StatefulPartitionedCall#^conv2d_417/StatefulPartitionedCall#^conv2d_418/StatefulPartitionedCall#^conv2d_419/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall$^dropout_416/StatefulPartitionedCall$^dropout_417/StatefulPartitionedCall$^dropout_418/StatefulPartitionedCall$^dropout_419/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 2H
"conv2d_416/StatefulPartitionedCall"conv2d_416/StatefulPartitionedCall2H
"conv2d_417/StatefulPartitionedCall"conv2d_417/StatefulPartitionedCall2H
"conv2d_418/StatefulPartitionedCall"conv2d_418/StatefulPartitionedCall2H
"conv2d_419/StatefulPartitionedCall"conv2d_419/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2J
#dropout_416/StatefulPartitionedCall#dropout_416/StatefulPartitionedCall2J
#dropout_417/StatefulPartitionedCall#dropout_417/StatefulPartitionedCall2J
#dropout_418/StatefulPartitionedCall#dropout_418/StatefulPartitionedCall2J
#dropout_419/StatefulPartitionedCall#dropout_419/StatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџ-
*
_user_specified_nameconv2d_416_input
Ш
I
-__inference_dropout_418_layer_call_fn_6431140

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430365h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ћ
f
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431150

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:џџџџџџџџџ@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
С
O
3__inference_max_pooling2d_417_layer_call_fn_6431073

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6430245
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6430257

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ж


0__inference_sequential_104_layer_call_fn_6430836

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	
	unknown_7:	
	unknown_8:
identityЂStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430419o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
Ь

+__inference_dense_104_layer_call_fn_6431250

inputs
unknown:	
	unknown_0:
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_104_layer_call_and_return_conditional_losses_6430412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
С
O
3__inference_max_pooling2d_418_layer_call_fn_6431130

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6430257
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

f
-__inference_dropout_417_layer_call_fn_6431088

inputs
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430544w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
І

ј
F__inference_dense_104_layer_call_and_return_conditional_losses_6430412

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6431078

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
йJ
Ѕ
 __inference__traced_save_6431392
file_prefix0
,savev2_conv2d_416_kernel_read_readvariableop.
*savev2_conv2d_416_bias_read_readvariableop0
,savev2_conv2d_417_kernel_read_readvariableop.
*savev2_conv2d_417_bias_read_readvariableop0
,savev2_conv2d_418_kernel_read_readvariableop.
*savev2_conv2d_418_bias_read_readvariableop0
,savev2_conv2d_419_kernel_read_readvariableop.
*savev2_conv2d_419_bias_read_readvariableop/
+savev2_dense_104_kernel_read_readvariableop-
)savev2_dense_104_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop7
3savev2_adam_m_conv2d_416_kernel_read_readvariableop7
3savev2_adam_v_conv2d_416_kernel_read_readvariableop5
1savev2_adam_m_conv2d_416_bias_read_readvariableop5
1savev2_adam_v_conv2d_416_bias_read_readvariableop7
3savev2_adam_m_conv2d_417_kernel_read_readvariableop7
3savev2_adam_v_conv2d_417_kernel_read_readvariableop5
1savev2_adam_m_conv2d_417_bias_read_readvariableop5
1savev2_adam_v_conv2d_417_bias_read_readvariableop7
3savev2_adam_m_conv2d_418_kernel_read_readvariableop7
3savev2_adam_v_conv2d_418_kernel_read_readvariableop5
1savev2_adam_m_conv2d_418_bias_read_readvariableop5
1savev2_adam_v_conv2d_418_bias_read_readvariableop7
3savev2_adam_m_conv2d_419_kernel_read_readvariableop7
3savev2_adam_v_conv2d_419_kernel_read_readvariableop5
1savev2_adam_m_conv2d_419_bias_read_readvariableop5
1savev2_adam_v_conv2d_419_bias_read_readvariableop6
2savev2_adam_m_dense_104_kernel_read_readvariableop6
2savev2_adam_v_dense_104_kernel_read_readvariableop4
0savev2_adam_m_dense_104_bias_read_readvariableop4
0savev2_adam_v_dense_104_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: і
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*
valueB%B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЗ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Є
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_416_kernel_read_readvariableop*savev2_conv2d_416_bias_read_readvariableop,savev2_conv2d_417_kernel_read_readvariableop*savev2_conv2d_417_bias_read_readvariableop,savev2_conv2d_418_kernel_read_readvariableop*savev2_conv2d_418_bias_read_readvariableop,savev2_conv2d_419_kernel_read_readvariableop*savev2_conv2d_419_bias_read_readvariableop+savev2_dense_104_kernel_read_readvariableop)savev2_dense_104_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop3savev2_adam_m_conv2d_416_kernel_read_readvariableop3savev2_adam_v_conv2d_416_kernel_read_readvariableop1savev2_adam_m_conv2d_416_bias_read_readvariableop1savev2_adam_v_conv2d_416_bias_read_readvariableop3savev2_adam_m_conv2d_417_kernel_read_readvariableop3savev2_adam_v_conv2d_417_kernel_read_readvariableop1savev2_adam_m_conv2d_417_bias_read_readvariableop1savev2_adam_v_conv2d_417_bias_read_readvariableop3savev2_adam_m_conv2d_418_kernel_read_readvariableop3savev2_adam_v_conv2d_418_kernel_read_readvariableop1savev2_adam_m_conv2d_418_bias_read_readvariableop1savev2_adam_v_conv2d_418_bias_read_readvariableop3savev2_adam_m_conv2d_419_kernel_read_readvariableop3savev2_adam_v_conv2d_419_kernel_read_readvariableop1savev2_adam_m_conv2d_419_bias_read_readvariableop1savev2_adam_v_conv2d_419_bias_read_readvariableop2savev2_adam_m_dense_104_kernel_read_readvariableop2savev2_adam_v_dense_104_kernel_read_readvariableop0savev2_adam_m_dense_104_bias_read_readvariableop0savev2_adam_v_dense_104_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ў
_input_shapesь
щ: ::: : : @:@:@::	:: : ::::: : : : : @: @:@:@:@:@:::	:	::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::%	!

_output_shapes
:	: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	:%!

_output_shapes
:	: 

_output_shapes
::  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: 

j
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6430245

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ь
I
-__inference_dropout_419_layer_call_fn_6431197

inputs
identityП
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430390i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
L
$__inference__update_step_xla_6374270
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
д
Y
$__inference__update_step_xla_6374295
gradient#
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:@: *
	_noinline(:Q M
'
_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable


G__inference_conv2d_419_layer_call_and_return_conditional_losses_6431182

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
г:
Ћ
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430419

inputs,
conv2d_416_6430304: 
conv2d_416_6430306:,
conv2d_417_6430329:  
conv2d_417_6430331: ,
conv2d_418_6430354: @ 
conv2d_418_6430356:@-
conv2d_419_6430379:@!
conv2d_419_6430381:	$
dense_104_6430413:	
dense_104_6430415:
identityЂ"conv2d_416/StatefulPartitionedCallЂ"conv2d_417/StatefulPartitionedCallЂ"conv2d_418/StatefulPartitionedCallЂ"conv2d_419/StatefulPartitionedCallЂ!dense_104/StatefulPartitionedCall
"conv2d_416/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_416_6430304conv2d_416_6430306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6430303ћ
!max_pooling2d_416/PartitionedCallPartitionedCall+conv2d_416/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6430233ю
dropout_416/PartitionedCallPartitionedCall*max_pooling2d_416/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430315Є
"conv2d_417/StatefulPartitionedCallStatefulPartitionedCall$dropout_416/PartitionedCall:output:0conv2d_417_6430329conv2d_417_6430331*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6430328ћ
!max_pooling2d_417/PartitionedCallPartitionedCall+conv2d_417/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6430245ю
dropout_417/PartitionedCallPartitionedCall*max_pooling2d_417/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430340Є
"conv2d_418/StatefulPartitionedCallStatefulPartitionedCall$dropout_417/PartitionedCall:output:0conv2d_418_6430354conv2d_418_6430356*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6430353ћ
!max_pooling2d_418/PartitionedCallPartitionedCall+conv2d_418/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6430257ю
dropout_418/PartitionedCallPartitionedCall*max_pooling2d_418/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430365Ѕ
"conv2d_419/StatefulPartitionedCallStatefulPartitionedCall$dropout_418/PartitionedCall:output:0conv2d_419_6430379conv2d_419_6430381*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6430378ќ
!max_pooling2d_419/PartitionedCallPartitionedCall+conv2d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6430269я
dropout_419/PartitionedCallPartitionedCall*max_pooling2d_419/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430390
,global_average_pooling2d_104/PartitionedCallPartitionedCall$dropout_419/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6430282ђ
flatten_104/PartitionedCallPartitionedCall5global_average_pooling2d_104/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_104_layer_call_and_return_conditional_losses_6430399
!dense_104/StatefulPartitionedCallStatefulPartitionedCall$flatten_104/PartitionedCall:output:0dense_104_6430413dense_104_6430415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_104_layer_call_and_return_conditional_losses_6430412y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџў
NoOpNoOp#^conv2d_416/StatefulPartitionedCall#^conv2d_417/StatefulPartitionedCall#^conv2d_418/StatefulPartitionedCall#^conv2d_419/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 2H
"conv2d_416/StatefulPartitionedCall"conv2d_416/StatefulPartitionedCall2H
"conv2d_417/StatefulPartitionedCall"conv2d_417/StatefulPartitionedCall2H
"conv2d_418/StatefulPartitionedCall"conv2d_418/StatefulPartitionedCall2H
"conv2d_419/StatefulPartitionedCall"conv2d_419/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
в

g
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430511

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ў
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ї
Ѓ
,__inference_conv2d_419_layer_call_fn_6431171

inputs"
unknown:@
	unknown_0:	
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6430378x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
A
У
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430656

inputs,
conv2d_416_6430620: 
conv2d_416_6430622:,
conv2d_417_6430627:  
conv2d_417_6430629: ,
conv2d_418_6430634: @ 
conv2d_418_6430636:@-
conv2d_419_6430641:@!
conv2d_419_6430643:	$
dense_104_6430650:	
dense_104_6430652:
identityЂ"conv2d_416/StatefulPartitionedCallЂ"conv2d_417/StatefulPartitionedCallЂ"conv2d_418/StatefulPartitionedCallЂ"conv2d_419/StatefulPartitionedCallЂ!dense_104/StatefulPartitionedCallЂ#dropout_416/StatefulPartitionedCallЂ#dropout_417/StatefulPartitionedCallЂ#dropout_418/StatefulPartitionedCallЂ#dropout_419/StatefulPartitionedCall
"conv2d_416/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_416_6430620conv2d_416_6430622*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6430303ћ
!max_pooling2d_416/PartitionedCallPartitionedCall+conv2d_416/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6430233ў
#dropout_416/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_416/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_416_layer_call_and_return_conditional_losses_6430577Ќ
"conv2d_417/StatefulPartitionedCallStatefulPartitionedCall,dropout_416/StatefulPartitionedCall:output:0conv2d_417_6430627conv2d_417_6430629*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6430328ћ
!max_pooling2d_417/PartitionedCallPartitionedCall+conv2d_417/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6430245Є
#dropout_417/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_417/PartitionedCall:output:0$^dropout_416/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_417_layer_call_and_return_conditional_losses_6430544Ќ
"conv2d_418/StatefulPartitionedCallStatefulPartitionedCall,dropout_417/StatefulPartitionedCall:output:0conv2d_418_6430634conv2d_418_6430636*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6430353ћ
!max_pooling2d_418/PartitionedCallPartitionedCall+conv2d_418/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6430257Є
#dropout_418/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_418/PartitionedCall:output:0$^dropout_417/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_418_layer_call_and_return_conditional_losses_6430511­
"conv2d_419/StatefulPartitionedCallStatefulPartitionedCall,dropout_418/StatefulPartitionedCall:output:0conv2d_419_6430641conv2d_419_6430643*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6430378ќ
!max_pooling2d_419/PartitionedCallPartitionedCall+conv2d_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6430269Ѕ
#dropout_419/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_419/PartitionedCall:output:0$^dropout_418/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_419_layer_call_and_return_conditional_losses_6430478
,global_average_pooling2d_104/PartitionedCallPartitionedCall,dropout_419/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *b
f]R[
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6430282ђ
flatten_104/PartitionedCallPartitionedCall5global_average_pooling2d_104/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_flatten_104_layer_call_and_return_conditional_losses_6430399
!dense_104/StatefulPartitionedCallStatefulPartitionedCall$flatten_104/PartitionedCall:output:0dense_104_6430650dense_104_6430652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_104_layer_call_and_return_conditional_losses_6430412y
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp#^conv2d_416/StatefulPartitionedCall#^conv2d_417/StatefulPartitionedCall#^conv2d_418/StatefulPartitionedCall#^conv2d_419/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall$^dropout_416/StatefulPartitionedCall$^dropout_417/StatefulPartitionedCall$^dropout_418/StatefulPartitionedCall$^dropout_419/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 2H
"conv2d_416/StatefulPartitionedCall"conv2d_416/StatefulPartitionedCall2H
"conv2d_417/StatefulPartitionedCall"conv2d_417/StatefulPartitionedCall2H
"conv2d_418/StatefulPartitionedCall"conv2d_418/StatefulPartitionedCall2H
"conv2d_419/StatefulPartitionedCall"conv2d_419/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2J
#dropout_416/StatefulPartitionedCall#dropout_416/StatefulPartitionedCall2J
#dropout_417/StatefulPartitionedCall#dropout_417/StatefulPartitionedCall2J
#dropout_418/StatefulPartitionedCall#dropout_418/StatefulPartitionedCall2J
#dropout_419/StatefulPartitionedCall#dropout_419/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ-
 
_user_specified_nameinputs
є

Ђ
0__inference_sequential_104_layer_call_fn_6430442
conv2d_416_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@
	unknown_6:	
	unknown_7:	
	unknown_8:
identityЂStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallconv2d_416_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430419o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:џџџџџџџџџ-
*
_user_specified_nameconv2d_416_input
ѓ
Ё
,__inference_conv2d_417_layer_call_fn_6431057

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6430328w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6431192

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ц
serving_defaultВ
U
conv2d_416_inputA
"serving_default_conv2d_416_input:0џџџџџџџџџ-=
	dense_1040
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ѓ
А
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
М
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator"
_tf_keras_layer
н
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
М
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator"
_tf_keras_layer
н
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
М
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator"
_tf_keras_layer
н
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
 c_jit_compiled_convolution_op"
_tf_keras_layer
Ѕ
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
М
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator"
_tf_keras_layer
Ѕ
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
Р
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
h
0
 1
52
63
K4
L5
a6
b7
8
9"
trackable_list_wrapper
h
0
 1
52
63
K4
L5
a6
b7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
§
trace_0
trace_1
trace_2
trace_32
0__inference_sequential_104_layer_call_fn_6430442
0__inference_sequential_104_layer_call_fn_6430836
0__inference_sequential_104_layer_call_fn_6430861
0__inference_sequential_104_layer_call_fn_6430704П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
щ
trace_0
trace_1
trace_2
trace_32і
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430912
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430991
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430743
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430782П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
жBг
"__inference__wrapped_model_6430224conv2d_416_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ѓ

_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla"
experimentalOptimizer
-
serving_default"
signature_map
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ђ
trace_02г
,__inference_conv2d_416_layer_call_fn_6431000Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

 trace_02ю
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6431011Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z trace_0
+:)2conv2d_416/kernel
:2conv2d_416/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ёnon_trainable_variables
Ђlayers
Ѓmetrics
 Єlayer_regularization_losses
Ѕlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
љ
Іtrace_02к
3__inference_max_pooling2d_416_layer_call_fn_6431016Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zІtrace_0

Їtrace_02ѕ
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6431021Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЇtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Я
­trace_0
Ўtrace_12
-__inference_dropout_416_layer_call_fn_6431026
-__inference_dropout_416_layer_call_fn_6431031Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z­trace_0zЎtrace_1

Џtrace_0
Аtrace_12Ъ
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431036
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431048Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЏtrace_0zАtrace_1
"
_generic_user_object
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ђ
Жtrace_02г
,__inference_conv2d_417_layer_call_fn_6431057Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЖtrace_0

Зtrace_02ю
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6431068Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЗtrace_0
+:) 2conv2d_417/kernel
: 2conv2d_417/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
љ
Нtrace_02к
3__inference_max_pooling2d_417_layer_call_fn_6431073Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zНtrace_0

Оtrace_02ѕ
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6431078Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zОtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
Я
Фtrace_0
Хtrace_12
-__inference_dropout_417_layer_call_fn_6431083
-__inference_dropout_417_layer_call_fn_6431088Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0zХtrace_1

Цtrace_0
Чtrace_12Ъ
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431093
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431105Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЦtrace_0zЧtrace_1
"
_generic_user_object
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
ђ
Эtrace_02г
,__inference_conv2d_418_layer_call_fn_6431114Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЭtrace_0

Юtrace_02ю
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6431125Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЮtrace_0
+:) @2conv2d_418/kernel
:@2conv2d_418/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
љ
дtrace_02к
3__inference_max_pooling2d_418_layer_call_fn_6431130Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zдtrace_0

еtrace_02ѕ
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6431135Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zеtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
Я
лtrace_0
мtrace_12
-__inference_dropout_418_layer_call_fn_6431140
-__inference_dropout_418_layer_call_fn_6431145Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zлtrace_0zмtrace_1

нtrace_0
оtrace_12Ъ
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431150
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431162Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zнtrace_0zоtrace_1
"
_generic_user_object
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
ђ
фtrace_02г
,__inference_conv2d_419_layer_call_fn_6431171Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zфtrace_0

хtrace_02ю
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6431182Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zхtrace_0
,:*@2conv2d_419/kernel
:2conv2d_419/bias
Д2БЎ
ЃВ
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
љ
ыtrace_02к
3__inference_max_pooling2d_419_layer_call_fn_6431187Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zыtrace_0

ьtrace_02ѕ
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6431192Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zьtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
Я
ђtrace_0
ѓtrace_12
-__inference_dropout_419_layer_call_fn_6431197
-__inference_dropout_419_layer_call_fn_6431202Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zђtrace_0zѓtrace_1

єtrace_0
ѕtrace_12Ъ
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431207
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431219Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zєtrace_0zѕtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object

ћtrace_02х
>__inference_global_average_pooling2d_104_layer_call_fn_6431224Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zћtrace_0

ќtrace_02
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6431230Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zќtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
ѓ
trace_02д
-__inference_flatten_104_layer_call_fn_6431235Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02я
H__inference_flatten_104_layer_call_and_return_conditional_losses_6431241Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ё
trace_02в
+__inference_dense_104_layer_call_fn_6431250Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02э
F__inference_dense_104_layer_call_and_return_conditional_losses_6431261Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
#:!	2dense_104/kernel
:2dense_104/bias
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_sequential_104_layer_call_fn_6430442conv2d_416_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
0__inference_sequential_104_layer_call_fn_6430836inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bў
0__inference_sequential_104_layer_call_fn_6430861inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
0__inference_sequential_104_layer_call_fn_6430704conv2d_416_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430912inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430991inputs"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ІBЃ
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430743conv2d_416_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ІBЃ
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430782conv2d_416_input"П
ЖВВ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
0
1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
p
0
1
2
3
4
5
6
7
8
 9"
trackable_list_wrapper
г
Ёtrace_0
Ђtrace_1
Ѓtrace_2
Єtrace_3
Ѕtrace_4
Іtrace_5
Їtrace_6
Јtrace_7
Љtrace_8
Њtrace_92И
$__inference__update_step_xla_6374265
$__inference__update_step_xla_6374270
$__inference__update_step_xla_6374275
$__inference__update_step_xla_6374280
$__inference__update_step_xla_6374285
$__inference__update_step_xla_6374290
$__inference__update_step_xla_6374295
$__inference__update_step_xla_6374300
$__inference__update_step_xla_6374305
$__inference__update_step_xla_6374310Й
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zЁtrace_0zЂtrace_1zЃtrace_2zЄtrace_3zЅtrace_4zІtrace_5zЇtrace_6zЈtrace_7zЉtrace_8zЊtrace_9
еBв
%__inference_signature_wrapper_6430811conv2d_416_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_conv2d_416_layer_call_fn_6431000inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6431011inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
чBф
3__inference_max_pooling2d_416_layer_call_fn_6431016inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bџ
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6431021inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ђBя
-__inference_dropout_416_layer_call_fn_6431026inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
-__inference_dropout_416_layer_call_fn_6431031inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431036inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431048inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_conv2d_417_layer_call_fn_6431057inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6431068inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
чBф
3__inference_max_pooling2d_417_layer_call_fn_6431073inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bџ
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6431078inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ђBя
-__inference_dropout_417_layer_call_fn_6431083inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
-__inference_dropout_417_layer_call_fn_6431088inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431093inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431105inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_conv2d_418_layer_call_fn_6431114inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6431125inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
чBф
3__inference_max_pooling2d_418_layer_call_fn_6431130inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bџ
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6431135inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ђBя
-__inference_dropout_418_layer_call_fn_6431140inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
-__inference_dropout_418_layer_call_fn_6431145inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431150inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431162inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
,__inference_conv2d_419_layer_call_fn_6431171inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6431182inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
чBф
3__inference_max_pooling2d_419_layer_call_fn_6431187inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bџ
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6431192inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ђBя
-__inference_dropout_419_layer_call_fn_6431197inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
-__inference_dropout_419_layer_call_fn_6431202inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431207inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431219inputs"Г
ЊВІ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ђBя
>__inference_global_average_pooling2d_104_layer_call_fn_6431224inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6431230inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сBо
-__inference_flatten_104_layer_call_fn_6431235inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
H__inference_flatten_104_layer_call_and_return_conditional_losses_6431241inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
+__inference_dense_104_layer_call_fn_6431250inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
F__inference_dense_104_layer_call_and_return_conditional_losses_6431261inputs"Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
Ћ	variables
Ќ	keras_api

­total

Ўcount"
_tf_keras_metric
c
Џ	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs"
_tf_keras_metric
0:.2Adam/m/conv2d_416/kernel
0:.2Adam/v/conv2d_416/kernel
": 2Adam/m/conv2d_416/bias
": 2Adam/v/conv2d_416/bias
0:. 2Adam/m/conv2d_417/kernel
0:. 2Adam/v/conv2d_417/kernel
":  2Adam/m/conv2d_417/bias
":  2Adam/v/conv2d_417/bias
0:. @2Adam/m/conv2d_418/kernel
0:. @2Adam/v/conv2d_418/kernel
": @2Adam/m/conv2d_418/bias
": @2Adam/v/conv2d_418/bias
1:/@2Adam/m/conv2d_419/kernel
1:/@2Adam/v/conv2d_419/kernel
#:!2Adam/m/conv2d_419/bias
#:!2Adam/v/conv2d_419/bias
(:&	2Adam/m/dense_104/kernel
(:&	2Adam/v/dense_104/kernel
!:2Adam/m/dense_104/bias
!:2Adam/v/dense_104/bias
љBі
$__inference__update_step_xla_6374265gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374270gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374275gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374280gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374285gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374290gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374295gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374300gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374305gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
љBі
$__inference__update_step_xla_6374310gradientvariable"З
ЎВЊ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
­0
Ў1"
trackable_list_wrapper
.
Ћ	variables"
_generic_user_object
:  (2total
:  (2count
0
Б0
В1"
trackable_list_wrapper
.
Џ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperІ
$__inference__update_step_xla_6374265~xЂu
nЂk
!
gradient
<9	%Ђ"
њ

p
` VariableSpec 
`рїйтЏћ?
Њ "
 
$__inference__update_step_xla_6374270f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
` ЭйтЏћ?
Њ "
 І
$__inference__update_step_xla_6374275~xЂu
nЂk
!
gradient 
<9	%Ђ"
њ 

p
` VariableSpec 
` ІЉуЏћ?
Њ "
 
$__inference__update_step_xla_6374280f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
` ЋЉуЏћ?
Њ "
 І
$__inference__update_step_xla_6374285~xЂu
nЂk
!
gradient @
<9	%Ђ"
њ @

p
` VariableSpec 
`ЧЂзТћ?
Њ "
 
$__inference__update_step_xla_6374290f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` ТфЏћ?
Њ "
 Љ
$__inference__update_step_xla_6374295zЂw
pЂm
"
gradient@
=:	&Ђ#
њ@

p
` VariableSpec 
` ШтЏћ?
Њ "
 
$__inference__update_step_xla_6374300hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
`щфЏћ?
Њ "
 
$__inference__update_step_xla_6374305pjЂg
`Ђ]

gradient	
52	Ђ
њ	

p
` VariableSpec 
`ЉШТћ?
Њ "
 
$__inference__update_step_xla_6374310f`Ђ]
VЂS

gradient
0-	Ђ
њ

p
` VariableSpec 
`РЉШТћ?
Њ "
 Џ
"__inference__wrapped_model_6430224 56KLabAЂ>
7Ђ4
2/
conv2d_416_inputџџџџџџџџџ-
Њ "5Њ2
0
	dense_104# 
	dense_104џџџџџџџџџО
G__inference_conv2d_416_layer_call_and_return_conditional_losses_6431011s 7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ-
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ-
 
,__inference_conv2d_416_layer_call_fn_6431000h 7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ-
Њ ")&
unknownџџџџџџџџџ-О
G__inference_conv2d_417_layer_call_and_return_conditional_losses_6431068s567Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ 
 
,__inference_conv2d_417_layer_call_fn_6431057h567Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
Њ ")&
unknownџџџџџџџџџ О
G__inference_conv2d_418_layer_call_and_return_conditional_losses_6431125sKL7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ@
 
,__inference_conv2d_418_layer_call_fn_6431114hKL7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ ")&
unknownџџџџџџџџџ@П
G__inference_conv2d_419_layer_call_and_return_conditional_losses_6431182tab7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 
,__inference_conv2d_419_layer_call_fn_6431171iab7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "*'
unknownџџџџџџџџџА
F__inference_dense_104_layer_call_and_return_conditional_losses_6431261f0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
+__inference_dense_104_layer_call_fn_6431250[0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџП
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431036s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 П
H__inference_dropout_416_layer_call_and_return_conditional_losses_6431048s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ
 
-__inference_dropout_416_layer_call_fn_6431026h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p 
Њ ")&
unknownџџџџџџџџџ
-__inference_dropout_416_layer_call_fn_6431031h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ
p
Њ ")&
unknownџџџџџџџџџП
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431093s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ 
 П
H__inference_dropout_417_layer_call_and_return_conditional_losses_6431105s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ 
 
-__inference_dropout_417_layer_call_fn_6431083h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p 
Њ ")&
unknownџџџџџџџџџ 
-__inference_dropout_417_layer_call_fn_6431088h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p
Њ ")&
unknownџџџџџџџџџ П
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431150s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@
p 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ@
 П
H__inference_dropout_418_layer_call_and_return_conditional_losses_6431162s;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@
p
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ@
 
-__inference_dropout_418_layer_call_fn_6431140h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@
p 
Њ ")&
unknownџџџџџџџџџ@
-__inference_dropout_418_layer_call_fn_6431145h;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ@
p
Њ ")&
unknownџџџџџџџџџ@С
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431207u<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 С
H__inference_dropout_419_layer_call_and_return_conditional_losses_6431219u<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 
-__inference_dropout_419_layer_call_fn_6431197j<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p 
Њ "*'
unknownџџџџџџџџџ
-__inference_dropout_419_layer_call_fn_6431202j<Ђ9
2Ђ/
)&
inputsџџџџџџџџџ
p
Њ "*'
unknownџџџџџџџџџ­
H__inference_flatten_104_layer_call_and_return_conditional_losses_6431241a0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "-Ђ*
# 
tensor_0џџџџџџџџџ
 
-__inference_flatten_104_layer_call_fn_6431235V0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ ""
unknownџџџџџџџџџщ
Y__inference_global_average_pooling2d_104_layer_call_and_return_conditional_losses_6431230RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "5Ђ2
+(
tensor_0џџџџџџџџџџџџџџџџџџ
 У
>__inference_global_average_pooling2d_104_layer_call_fn_6431224RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "*'
unknownџџџџџџџџџџџџџџџџџџј
N__inference_max_pooling2d_416_layer_call_and_return_conditional_losses_6431021ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 в
3__inference_max_pooling2d_416_layer_call_fn_6431016RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџј
N__inference_max_pooling2d_417_layer_call_and_return_conditional_losses_6431078ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 в
3__inference_max_pooling2d_417_layer_call_fn_6431073RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџј
N__inference_max_pooling2d_418_layer_call_and_return_conditional_losses_6431135ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 в
3__inference_max_pooling2d_418_layer_call_fn_6431130RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџј
N__inference_max_pooling2d_419_layer_call_and_return_conditional_losses_6431192ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 в
3__inference_max_pooling2d_419_layer_call_fn_6431187RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџз
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430743 56KLabIЂF
?Ђ<
2/
conv2d_416_inputџџџџџџџџџ-
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 з
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430782 56KLabIЂF
?Ђ<
2/
conv2d_416_inputџџџџџџџџџ-
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ь
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430912} 56KLab?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ-
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ь
K__inference_sequential_104_layer_call_and_return_conditional_losses_6430991} 56KLab?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ-
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 А
0__inference_sequential_104_layer_call_fn_6430442| 56KLabIЂF
?Ђ<
2/
conv2d_416_inputџџџџџџџџџ-
p 

 
Њ "!
unknownџџџџџџџџџА
0__inference_sequential_104_layer_call_fn_6430704| 56KLabIЂF
?Ђ<
2/
conv2d_416_inputџџџџџџџџџ-
p

 
Њ "!
unknownџџџџџџџџџІ
0__inference_sequential_104_layer_call_fn_6430836r 56KLab?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ-
p 

 
Њ "!
unknownџџџџџџџџџІ
0__inference_sequential_104_layer_call_fn_6430861r 56KLab?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ-
p

 
Њ "!
unknownџџџџџџџџџЦ
%__inference_signature_wrapper_6430811 56KLabUЂR
Ђ 
KЊH
F
conv2d_416_input2/
conv2d_416_inputџџџџџџџџџ-"5Њ2
0
	dense_104# 
	dense_104џџџџџџџџџ