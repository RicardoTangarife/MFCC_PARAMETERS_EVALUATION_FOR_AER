љЩ
Щн
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
В
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.22v2.9.1-132-g18960c44ad38ЊС
В
Adam/dense_674/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_674/bias/v
{
)Adam/dense_674/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_674/bias/v*
_output_shapes
:*
dtype0
Л
Adam/dense_674/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*(
shared_nameAdam/dense_674/kernel/v
Д
+Adam/dense_674/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_674/kernel/v*
_output_shapes
:	А*
dtype0
З
Adam/conv2d_2699/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv2d_2699/bias/v
А
+Adam/conv2d_2699/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2699/bias/v*
_output_shapes	
:А*
dtype0
Ч
Adam/conv2d_2699/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А**
shared_nameAdam/conv2d_2699/kernel/v
Р
-Adam/conv2d_2699/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2699/kernel/v*'
_output_shapes
:@А*
dtype0
Ж
Adam/conv2d_2698/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_2698/bias/v

+Adam/conv2d_2698/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2698/bias/v*
_output_shapes
:@*
dtype0
Ц
Adam/conv2d_2698/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_2698/kernel/v
П
-Adam/conv2d_2698/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2698/kernel/v*&
_output_shapes
: @*
dtype0
Ж
Adam/conv2d_2697/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_2697/bias/v

+Adam/conv2d_2697/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2697/bias/v*
_output_shapes
: *
dtype0
Ц
Adam/conv2d_2697/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_2697/kernel/v
П
-Adam/conv2d_2697/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2697/kernel/v*&
_output_shapes
: *
dtype0
Ж
Adam/conv2d_2696/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_2696/bias/v

+Adam/conv2d_2696/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2696/bias/v*
_output_shapes
:*
dtype0
Ц
Adam/conv2d_2696/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_2696/kernel/v
П
-Adam/conv2d_2696/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2696/kernel/v*&
_output_shapes
:*
dtype0
В
Adam/dense_674/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_674/bias/m
{
)Adam/dense_674/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_674/bias/m*
_output_shapes
:*
dtype0
Л
Adam/dense_674/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*(
shared_nameAdam/dense_674/kernel/m
Д
+Adam/dense_674/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_674/kernel/m*
_output_shapes
:	А*
dtype0
З
Adam/conv2d_2699/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdam/conv2d_2699/bias/m
А
+Adam/conv2d_2699/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2699/bias/m*
_output_shapes	
:А*
dtype0
Ч
Adam/conv2d_2699/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А**
shared_nameAdam/conv2d_2699/kernel/m
Р
-Adam/conv2d_2699/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2699/kernel/m*'
_output_shapes
:@А*
dtype0
Ж
Adam/conv2d_2698/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_2698/bias/m

+Adam/conv2d_2698/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2698/bias/m*
_output_shapes
:@*
dtype0
Ц
Adam/conv2d_2698/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameAdam/conv2d_2698/kernel/m
П
-Adam/conv2d_2698/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2698/kernel/m*&
_output_shapes
: @*
dtype0
Ж
Adam/conv2d_2697/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_2697/bias/m

+Adam/conv2d_2697/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2697/bias/m*
_output_shapes
: *
dtype0
Ц
Adam/conv2d_2697/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv2d_2697/kernel/m
П
-Adam/conv2d_2697/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2697/kernel/m*&
_output_shapes
: *
dtype0
Ж
Adam/conv2d_2696/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_2696/bias/m

+Adam/conv2d_2696/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2696/bias/m*
_output_shapes
:*
dtype0
Ц
Adam/conv2d_2696/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv2d_2696/kernel/m
П
-Adam/conv2d_2696/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2696/kernel/m*&
_output_shapes
:*
dtype0
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
t
dense_674/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_674/bias
m
"dense_674/bias/Read/ReadVariableOpReadVariableOpdense_674/bias*
_output_shapes
:*
dtype0
}
dense_674/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*!
shared_namedense_674/kernel
v
$dense_674/kernel/Read/ReadVariableOpReadVariableOpdense_674/kernel*
_output_shapes
:	А*
dtype0
y
conv2d_2699/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_nameconv2d_2699/bias
r
$conv2d_2699/bias/Read/ReadVariableOpReadVariableOpconv2d_2699/bias*
_output_shapes	
:А*
dtype0
Й
conv2d_2699/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*#
shared_nameconv2d_2699/kernel
В
&conv2d_2699/kernel/Read/ReadVariableOpReadVariableOpconv2d_2699/kernel*'
_output_shapes
:@А*
dtype0
x
conv2d_2698/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_2698/bias
q
$conv2d_2698/bias/Read/ReadVariableOpReadVariableOpconv2d_2698/bias*
_output_shapes
:@*
dtype0
И
conv2d_2698/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameconv2d_2698/kernel
Б
&conv2d_2698/kernel/Read/ReadVariableOpReadVariableOpconv2d_2698/kernel*&
_output_shapes
: @*
dtype0
x
conv2d_2697/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_2697/bias
q
$conv2d_2697/bias/Read/ReadVariableOpReadVariableOpconv2d_2697/bias*
_output_shapes
: *
dtype0
И
conv2d_2697/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconv2d_2697/kernel
Б
&conv2d_2697/kernel/Read/ReadVariableOpReadVariableOpconv2d_2697/kernel*&
_output_shapes
: *
dtype0
x
conv2d_2696/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_2696/bias
q
$conv2d_2696/bias/Read/ReadVariableOpReadVariableOpconv2d_2696/bias*
_output_shapes
:*
dtype0
И
conv2d_2696/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv2d_2696/kernel
Б
&conv2d_2696/kernel/Read/ReadVariableOpReadVariableOpconv2d_2696/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
€q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Їq
value∞qB≠q B¶q
Ц
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
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*
О
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
•
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator* 
»
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op*
О
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
•
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator* 
»
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op*
О
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
•
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator* 
»
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
 c_jit_compiled_convolution_op*
О
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
•
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator* 
О
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses* 
О
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
Ђ
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гkernel
	Дbias*
L
0
 1
52
63
K4
L5
a6
b7
Г8
Д9*
L
0
 1
52
63
K4
L5
a6
b7
Г8
Д9*
* 
µ
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Кtrace_0
Лtrace_1
Мtrace_2
Нtrace_3* 
:
Оtrace_0
Пtrace_1
Рtrace_2
Сtrace_3* 
* 
Х
	Тiter
Уbeta_1
Фbeta_2

Хdecay
Цlearning_ratemФ mХ5mЦ6mЧKmШLmЩamЪbmЫ	ГmЬ	ДmЭvЮ vЯ5v†6v°KvҐLv£av§bv•	Гv¶	ДvІ*

Чserving_default* 

0
 1*

0
 1*
* 
Ш
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
b\
VARIABLE_VALUEconv2d_2696/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2d_2696/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

§trace_0* 

•trace_0* 
* 
* 
* 
Ц
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

Ђtrace_0
ђtrace_1* 

≠trace_0
Ѓtrace_1* 
* 

50
61*

50
61*
* 
Ш
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

іtrace_0* 

µtrace_0* 
b\
VARIABLE_VALUEconv2d_2697/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2d_2697/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

їtrace_0* 

Љtrace_0* 
* 
* 
* 
Ц
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

¬trace_0
√trace_1* 

ƒtrace_0
≈trace_1* 
* 

K0
L1*

K0
L1*
* 
Ш
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

Ћtrace_0* 

ћtrace_0* 
b\
VARIABLE_VALUEconv2d_2698/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2d_2698/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

“trace_0* 

”trace_0* 
* 
* 
* 
Ц
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

ўtrace_0
Џtrace_1* 

џtrace_0
№trace_1* 
* 

a0
b1*

a0
b1*
* 
Ш
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

вtrace_0* 

гtrace_0* 
b\
VARIABLE_VALUEconv2d_2699/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv2d_2699/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

йtrace_0* 

кtrace_0* 
* 
* 
* 
Ц
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

рtrace_0
сtrace_1* 

тtrace_0
уtrace_1* 
* 
* 
* 
* 
Ц
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 

щtrace_0* 

ъtrace_0* 
* 
* 
* 
Ц
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 

Г0
Д1*

Г0
Д1*
* 
Ы
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
`Z
VARIABLE_VALUEdense_674/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_674/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
Й0
К1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
Л	variables
М	keras_api

Нtotal

Оcount*
M
П	variables
Р	keras_api

Сtotal

Тcount
У
_fn_kwargs*

Н0
О1*

Л	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

С0
Т1*

П	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Е
VARIABLE_VALUEAdam/conv2d_2696/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2696/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv2d_2697/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2697/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv2d_2698/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2698/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv2d_2699/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2699/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_674/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_674/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv2d_2696/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2696/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv2d_2697/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2697/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv2d_2698/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2698/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv2d_2699/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv2d_2699/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_674/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_674/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ф
!serving_default_conv2d_2696_inputPlaceholder*/
_output_shapes
:€€€€€€€€€-*
dtype0*$
shape:€€€€€€€€€-
П
StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv2d_2696_inputconv2d_2696/kernelconv2d_2696/biasconv2d_2697/kernelconv2d_2697/biasconv2d_2698/kernelconv2d_2698/biasconv2d_2699/kernelconv2d_2699/biasdense_674/kerneldense_674/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В */
f*R(
&__inference_signature_wrapper_36822032
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
т
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv2d_2696/kernel/Read/ReadVariableOp$conv2d_2696/bias/Read/ReadVariableOp&conv2d_2697/kernel/Read/ReadVariableOp$conv2d_2697/bias/Read/ReadVariableOp&conv2d_2698/kernel/Read/ReadVariableOp$conv2d_2698/bias/Read/ReadVariableOp&conv2d_2699/kernel/Read/ReadVariableOp$conv2d_2699/bias/Read/ReadVariableOp$dense_674/kernel/Read/ReadVariableOp"dense_674/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp-Adam/conv2d_2696/kernel/m/Read/ReadVariableOp+Adam/conv2d_2696/bias/m/Read/ReadVariableOp-Adam/conv2d_2697/kernel/m/Read/ReadVariableOp+Adam/conv2d_2697/bias/m/Read/ReadVariableOp-Adam/conv2d_2698/kernel/m/Read/ReadVariableOp+Adam/conv2d_2698/bias/m/Read/ReadVariableOp-Adam/conv2d_2699/kernel/m/Read/ReadVariableOp+Adam/conv2d_2699/bias/m/Read/ReadVariableOp+Adam/dense_674/kernel/m/Read/ReadVariableOp)Adam/dense_674/bias/m/Read/ReadVariableOp-Adam/conv2d_2696/kernel/v/Read/ReadVariableOp+Adam/conv2d_2696/bias/v/Read/ReadVariableOp-Adam/conv2d_2697/kernel/v/Read/ReadVariableOp+Adam/conv2d_2697/bias/v/Read/ReadVariableOp-Adam/conv2d_2698/kernel/v/Read/ReadVariableOp+Adam/conv2d_2698/bias/v/Read/ReadVariableOp-Adam/conv2d_2699/kernel/v/Read/ReadVariableOp+Adam/conv2d_2699/bias/v/Read/ReadVariableOp+Adam/dense_674/kernel/v/Read/ReadVariableOp)Adam/dense_674/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU2*0J 8В **
f%R#
!__inference__traced_save_36822622
б
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_2696/kernelconv2d_2696/biasconv2d_2697/kernelconv2d_2697/biasconv2d_2698/kernelconv2d_2698/biasconv2d_2699/kernelconv2d_2699/biasdense_674/kerneldense_674/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_2696/kernel/mAdam/conv2d_2696/bias/mAdam/conv2d_2697/kernel/mAdam/conv2d_2697/bias/mAdam/conv2d_2698/kernel/mAdam/conv2d_2698/bias/mAdam/conv2d_2699/kernel/mAdam/conv2d_2699/bias/mAdam/dense_674/kernel/mAdam/dense_674/bias/mAdam/conv2d_2696/kernel/vAdam/conv2d_2696/bias/vAdam/conv2d_2697/kernel/vAdam/conv2d_2697/bias/vAdam/conv2d_2698/kernel/vAdam/conv2d_2698/bias/vAdam/conv2d_2699/kernel/vAdam/conv2d_2699/bias/vAdam/dense_674/kernel/vAdam/dense_674/bias/v*3
Tin,
*2(*
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
GPU2*0J 8В *-
f(R&
$__inference__traced_restore_36822749Зі	
э
h
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822314

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
И
В
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36821545

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
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
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
h
/__inference_dropout_2699_layer_call_fn_36822423

inputs
identityИҐStatefulPartitionedCall—
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821695x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ы
•
.__inference_conv2d_2699_layer_call_fn_36822392

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36821595x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ў

Щ
1__inference_sequential_674_layer_call_fn_36822057

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821636o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
№;
Ќ
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821960
conv2d_2696_input.
conv2d_2696_36821924:"
conv2d_2696_36821926:.
conv2d_2697_36821931: "
conv2d_2697_36821933: .
conv2d_2698_36821938: @"
conv2d_2698_36821940:@/
conv2d_2699_36821945:@А#
conv2d_2699_36821947:	А%
dense_674_36821954:	А 
dense_674_36821956:
identityИҐ#conv2d_2696/StatefulPartitionedCallҐ#conv2d_2697/StatefulPartitionedCallҐ#conv2d_2698/StatefulPartitionedCallҐ#conv2d_2699/StatefulPartitionedCallҐ!dense_674/StatefulPartitionedCallШ
#conv2d_2696/StatefulPartitionedCallStatefulPartitionedCallconv2d_2696_inputconv2d_2696_36821924conv2d_2696_36821926*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36821520€
"max_pooling2d_2696/PartitionedCallPartitionedCall,conv2d_2696/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36821450т
dropout_2696/PartitionedCallPartitionedCall+max_pooling2d_2696/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821532ђ
#conv2d_2697/StatefulPartitionedCallStatefulPartitionedCall%dropout_2696/PartitionedCall:output:0conv2d_2697_36821931conv2d_2697_36821933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36821545€
"max_pooling2d_2697/PartitionedCallPartitionedCall,conv2d_2697/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36821462т
dropout_2697/PartitionedCallPartitionedCall+max_pooling2d_2697/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821557ђ
#conv2d_2698/StatefulPartitionedCallStatefulPartitionedCall%dropout_2697/PartitionedCall:output:0conv2d_2698_36821938conv2d_2698_36821940*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36821570€
"max_pooling2d_2698/PartitionedCallPartitionedCall,conv2d_2698/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36821474т
dropout_2698/PartitionedCallPartitionedCall+max_pooling2d_2698/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821582≠
#conv2d_2699/StatefulPartitionedCallStatefulPartitionedCall%dropout_2698/PartitionedCall:output:0conv2d_2699_36821945conv2d_2699_36821947*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36821595А
"max_pooling2d_2699/PartitionedCallPartitionedCall,conv2d_2699/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36821486у
dropout_2699/PartitionedCallPartitionedCall+max_pooling2d_2699/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821607Е
,global_average_pooling2d_674/PartitionedCallPartitionedCall%dropout_2699/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *c
f^R\
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36821499у
flatten_674/PartitionedCallPartitionedCall5global_average_pooling2d_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_674_layer_call_and_return_conditional_losses_36821616Ы
!dense_674/StatefulPartitionedCallStatefulPartitionedCall$flatten_674/PartitionedCall:output:0dense_674_36821954dense_674_36821956*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dense_674_layer_call_and_return_conditional_losses_36821629y
IdentityIdentity*dense_674/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€В
NoOpNoOp$^conv2d_2696/StatefulPartitionedCall$^conv2d_2697/StatefulPartitionedCall$^conv2d_2698/StatefulPartitionedCall$^conv2d_2699/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 2J
#conv2d_2696/StatefulPartitionedCall#conv2d_2696/StatefulPartitionedCall2J
#conv2d_2697/StatefulPartitionedCall#conv2d_2697/StatefulPartitionedCall2J
#conv2d_2698/StatefulPartitionedCall#conv2d_2698/StatefulPartitionedCall2J
#conv2d_2699/StatefulPartitionedCall#conv2d_2699/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€-
+
_user_specified_nameconv2d_2696_input
И
В
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36821570

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36822242

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ю?
–
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822133

inputsD
*conv2d_2696_conv2d_readvariableop_resource:9
+conv2d_2696_biasadd_readvariableop_resource:D
*conv2d_2697_conv2d_readvariableop_resource: 9
+conv2d_2697_biasadd_readvariableop_resource: D
*conv2d_2698_conv2d_readvariableop_resource: @9
+conv2d_2698_biasadd_readvariableop_resource:@E
*conv2d_2699_conv2d_readvariableop_resource:@А:
+conv2d_2699_biasadd_readvariableop_resource:	А;
(dense_674_matmul_readvariableop_resource:	А7
)dense_674_biasadd_readvariableop_resource:
identityИҐ"conv2d_2696/BiasAdd/ReadVariableOpҐ!conv2d_2696/Conv2D/ReadVariableOpҐ"conv2d_2697/BiasAdd/ReadVariableOpҐ!conv2d_2697/Conv2D/ReadVariableOpҐ"conv2d_2698/BiasAdd/ReadVariableOpҐ!conv2d_2698/Conv2D/ReadVariableOpҐ"conv2d_2699/BiasAdd/ReadVariableOpҐ!conv2d_2699/Conv2D/ReadVariableOpҐ dense_674/BiasAdd/ReadVariableOpҐdense_674/MatMul/ReadVariableOpФ
!conv2d_2696/Conv2D/ReadVariableOpReadVariableOp*conv2d_2696_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0±
conv2d_2696/Conv2DConv2Dinputs)conv2d_2696/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-*
paddingSAME*
strides
К
"conv2d_2696/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2696_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
conv2d_2696/BiasAddBiasAddconv2d_2696/Conv2D:output:0*conv2d_2696/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-p
conv2d_2696/ReluReluconv2d_2696/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-±
max_pooling2d_2696/MaxPoolMaxPoolconv2d_2696/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
А
dropout_2696/IdentityIdentity#max_pooling2d_2696/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ф
!conv2d_2697/Conv2D/ReadVariableOpReadVariableOp*conv2d_2697_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0…
conv2d_2697/Conv2DConv2Ddropout_2696/Identity:output:0)conv2d_2697/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
К
"conv2d_2697/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2697_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0°
conv2d_2697/BiasAddBiasAddconv2d_2697/Conv2D:output:0*conv2d_2697/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ p
conv2d_2697/ReluReluconv2d_2697/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ±
max_pooling2d_2697/MaxPoolMaxPoolconv2d_2697/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
А
dropout_2697/IdentityIdentity#max_pooling2d_2697/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Ф
!conv2d_2698/Conv2D/ReadVariableOpReadVariableOp*conv2d_2698_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0…
conv2d_2698/Conv2DConv2Ddropout_2697/Identity:output:0)conv2d_2698/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
К
"conv2d_2698/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2698_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0°
conv2d_2698/BiasAddBiasAddconv2d_2698/Conv2D:output:0*conv2d_2698/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@p
conv2d_2698/ReluReluconv2d_2698/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@±
max_pooling2d_2698/MaxPoolMaxPoolconv2d_2698/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
А
dropout_2698/IdentityIdentity#max_pooling2d_2698/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Х
!conv2d_2699/Conv2D/ReadVariableOpReadVariableOp*conv2d_2699_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0 
conv2d_2699/Conv2DConv2Ddropout_2698/Identity:output:0)conv2d_2699/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Л
"conv2d_2699/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2699_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ґ
conv2d_2699/BiasAddBiasAddconv2d_2699/Conv2D:output:0*conv2d_2699/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аq
conv2d_2699/ReluReluconv2d_2699/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А≤
max_pooling2d_2699/MaxPoolMaxPoolconv2d_2699/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
Б
dropout_2699/IdentityIdentity#max_pooling2d_2699/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€АД
3global_average_pooling2d_674/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ї
!global_average_pooling2d_674/MeanMeandropout_2699/Identity:output:0<global_average_pooling2d_674/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
flatten_674/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Щ
flatten_674/ReshapeReshape*global_average_pooling2d_674/Mean:output:0flatten_674/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
dense_674/MatMul/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0У
dense_674/MatMulMatMulflatten_674/Reshape:output:0'dense_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
 dense_674/BiasAdd/ReadVariableOpReadVariableOp)dense_674_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_674/BiasAddBiasAdddense_674/MatMul:product:0(dense_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€j
dense_674/SoftmaxSoftmaxdense_674/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitydense_674/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ѓ
NoOpNoOp#^conv2d_2696/BiasAdd/ReadVariableOp"^conv2d_2696/Conv2D/ReadVariableOp#^conv2d_2697/BiasAdd/ReadVariableOp"^conv2d_2697/Conv2D/ReadVariableOp#^conv2d_2698/BiasAdd/ReadVariableOp"^conv2d_2698/Conv2D/ReadVariableOp#^conv2d_2699/BiasAdd/ReadVariableOp"^conv2d_2699/Conv2D/ReadVariableOp!^dense_674/BiasAdd/ReadVariableOp ^dense_674/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 2H
"conv2d_2696/BiasAdd/ReadVariableOp"conv2d_2696/BiasAdd/ReadVariableOp2F
!conv2d_2696/Conv2D/ReadVariableOp!conv2d_2696/Conv2D/ReadVariableOp2H
"conv2d_2697/BiasAdd/ReadVariableOp"conv2d_2697/BiasAdd/ReadVariableOp2F
!conv2d_2697/Conv2D/ReadVariableOp!conv2d_2697/Conv2D/ReadVariableOp2H
"conv2d_2698/BiasAdd/ReadVariableOp"conv2d_2698/BiasAdd/ReadVariableOp2F
!conv2d_2698/Conv2D/ReadVariableOp!conv2d_2698/Conv2D/ReadVariableOp2H
"conv2d_2699/BiasAdd/ReadVariableOp"conv2d_2699/BiasAdd/ReadVariableOp2F
!conv2d_2699/Conv2D/ReadVariableOp!conv2d_2699/Conv2D/ReadVariableOp2D
 dense_674/BiasAdd/ReadVariableOp dense_674/BiasAdd/ReadVariableOp2B
dense_674/MatMul/ReadVariableOpdense_674/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
љ
e
I__inference_flatten_674_layer_call_and_return_conditional_losses_36822462

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36822413

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ћ

i
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822440

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:°
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
э
h
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821582

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ƒ

i
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822269

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
щ

§
1__inference_sequential_674_layer_call_fn_36821659
conv2d_2696_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallconv2d_2696_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821636o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€-
+
_user_specified_nameconv2d_2696_input
І

щ
G__inference_dense_674_layer_call_and_return_conditional_losses_36822482

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќ
Ъ
,__inference_dense_674_layer_call_fn_36822471

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dense_674_layer_call_and_return_conditional_losses_36821629o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
И
В
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36822289

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
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
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒ

i
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821728

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
щ

§
1__inference_sequential_674_layer_call_fn_36821921
conv2d_2696_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallconv2d_2696_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821873o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€-
+
_user_specified_nameconv2d_2696_input
ч
£
.__inference_conv2d_2697_layer_call_fn_36822278

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36821545w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’O
ё

#__inference__wrapped_model_36821441
conv2d_2696_inputS
9sequential_674_conv2d_2696_conv2d_readvariableop_resource:H
:sequential_674_conv2d_2696_biasadd_readvariableop_resource:S
9sequential_674_conv2d_2697_conv2d_readvariableop_resource: H
:sequential_674_conv2d_2697_biasadd_readvariableop_resource: S
9sequential_674_conv2d_2698_conv2d_readvariableop_resource: @H
:sequential_674_conv2d_2698_biasadd_readvariableop_resource:@T
9sequential_674_conv2d_2699_conv2d_readvariableop_resource:@АI
:sequential_674_conv2d_2699_biasadd_readvariableop_resource:	АJ
7sequential_674_dense_674_matmul_readvariableop_resource:	АF
8sequential_674_dense_674_biasadd_readvariableop_resource:
identityИҐ1sequential_674/conv2d_2696/BiasAdd/ReadVariableOpҐ0sequential_674/conv2d_2696/Conv2D/ReadVariableOpҐ1sequential_674/conv2d_2697/BiasAdd/ReadVariableOpҐ0sequential_674/conv2d_2697/Conv2D/ReadVariableOpҐ1sequential_674/conv2d_2698/BiasAdd/ReadVariableOpҐ0sequential_674/conv2d_2698/Conv2D/ReadVariableOpҐ1sequential_674/conv2d_2699/BiasAdd/ReadVariableOpҐ0sequential_674/conv2d_2699/Conv2D/ReadVariableOpҐ/sequential_674/dense_674/BiasAdd/ReadVariableOpҐ.sequential_674/dense_674/MatMul/ReadVariableOp≤
0sequential_674/conv2d_2696/Conv2D/ReadVariableOpReadVariableOp9sequential_674_conv2d_2696_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Џ
!sequential_674/conv2d_2696/Conv2DConv2Dconv2d_2696_input8sequential_674/conv2d_2696/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-*
paddingSAME*
strides
®
1sequential_674/conv2d_2696/BiasAdd/ReadVariableOpReadVariableOp:sequential_674_conv2d_2696_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ќ
"sequential_674/conv2d_2696/BiasAddBiasAdd*sequential_674/conv2d_2696/Conv2D:output:09sequential_674/conv2d_2696/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-О
sequential_674/conv2d_2696/ReluRelu+sequential_674/conv2d_2696/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-ѕ
)sequential_674/max_pooling2d_2696/MaxPoolMaxPool-sequential_674/conv2d_2696/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
Ю
$sequential_674/dropout_2696/IdentityIdentity2sequential_674/max_pooling2d_2696/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€≤
0sequential_674/conv2d_2697/Conv2D/ReadVariableOpReadVariableOp9sequential_674_conv2d_2697_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ц
!sequential_674/conv2d_2697/Conv2DConv2D-sequential_674/dropout_2696/Identity:output:08sequential_674/conv2d_2697/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
®
1sequential_674/conv2d_2697/BiasAdd/ReadVariableOpReadVariableOp:sequential_674_conv2d_2697_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ќ
"sequential_674/conv2d_2697/BiasAddBiasAdd*sequential_674/conv2d_2697/Conv2D:output:09sequential_674/conv2d_2697/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ О
sequential_674/conv2d_2697/ReluRelu+sequential_674/conv2d_2697/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ѕ
)sequential_674/max_pooling2d_2697/MaxPoolMaxPool-sequential_674/conv2d_2697/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
Ю
$sequential_674/dropout_2697/IdentityIdentity2sequential_674/max_pooling2d_2697/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ≤
0sequential_674/conv2d_2698/Conv2D/ReadVariableOpReadVariableOp9sequential_674_conv2d_2698_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ц
!sequential_674/conv2d_2698/Conv2DConv2D-sequential_674/dropout_2697/Identity:output:08sequential_674/conv2d_2698/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
®
1sequential_674/conv2d_2698/BiasAdd/ReadVariableOpReadVariableOp:sequential_674_conv2d_2698_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ќ
"sequential_674/conv2d_2698/BiasAddBiasAdd*sequential_674/conv2d_2698/Conv2D:output:09sequential_674/conv2d_2698/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@О
sequential_674/conv2d_2698/ReluRelu+sequential_674/conv2d_2698/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@ѕ
)sequential_674/max_pooling2d_2698/MaxPoolMaxPool-sequential_674/conv2d_2698/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
Ю
$sequential_674/dropout_2698/IdentityIdentity2sequential_674/max_pooling2d_2698/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€@≥
0sequential_674/conv2d_2699/Conv2D/ReadVariableOpReadVariableOp9sequential_674_conv2d_2699_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ч
!sequential_674/conv2d_2699/Conv2DConv2D-sequential_674/dropout_2698/Identity:output:08sequential_674/conv2d_2699/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
©
1sequential_674/conv2d_2699/BiasAdd/ReadVariableOpReadVariableOp:sequential_674_conv2d_2699_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ѕ
"sequential_674/conv2d_2699/BiasAddBiasAdd*sequential_674/conv2d_2699/Conv2D:output:09sequential_674/conv2d_2699/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АП
sequential_674/conv2d_2699/ReluRelu+sequential_674/conv2d_2699/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А–
)sequential_674/max_pooling2d_2699/MaxPoolMaxPool-sequential_674/conv2d_2699/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
Я
$sequential_674/dropout_2699/IdentityIdentity2sequential_674/max_pooling2d_2699/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€АУ
Bsequential_674/global_average_pooling2d_674/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      з
0sequential_674/global_average_pooling2d_674/MeanMean-sequential_674/dropout_2699/Identity:output:0Ksequential_674/global_average_pooling2d_674/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
 sequential_674/flatten_674/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ∆
"sequential_674/flatten_674/ReshapeReshape9sequential_674/global_average_pooling2d_674/Mean:output:0)sequential_674/flatten_674/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АІ
.sequential_674/dense_674/MatMul/ReadVariableOpReadVariableOp7sequential_674_dense_674_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ј
sequential_674/dense_674/MatMulMatMul+sequential_674/flatten_674/Reshape:output:06sequential_674/dense_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€§
/sequential_674/dense_674/BiasAdd/ReadVariableOpReadVariableOp8sequential_674_dense_674_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ѕ
 sequential_674/dense_674/BiasAddBiasAdd)sequential_674/dense_674/MatMul:product:07sequential_674/dense_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€И
 sequential_674/dense_674/SoftmaxSoftmax)sequential_674/dense_674/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€y
IdentityIdentity*sequential_674/dense_674/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€≈
NoOpNoOp2^sequential_674/conv2d_2696/BiasAdd/ReadVariableOp1^sequential_674/conv2d_2696/Conv2D/ReadVariableOp2^sequential_674/conv2d_2697/BiasAdd/ReadVariableOp1^sequential_674/conv2d_2697/Conv2D/ReadVariableOp2^sequential_674/conv2d_2698/BiasAdd/ReadVariableOp1^sequential_674/conv2d_2698/Conv2D/ReadVariableOp2^sequential_674/conv2d_2699/BiasAdd/ReadVariableOp1^sequential_674/conv2d_2699/Conv2D/ReadVariableOp0^sequential_674/dense_674/BiasAdd/ReadVariableOp/^sequential_674/dense_674/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 2f
1sequential_674/conv2d_2696/BiasAdd/ReadVariableOp1sequential_674/conv2d_2696/BiasAdd/ReadVariableOp2d
0sequential_674/conv2d_2696/Conv2D/ReadVariableOp0sequential_674/conv2d_2696/Conv2D/ReadVariableOp2f
1sequential_674/conv2d_2697/BiasAdd/ReadVariableOp1sequential_674/conv2d_2697/BiasAdd/ReadVariableOp2d
0sequential_674/conv2d_2697/Conv2D/ReadVariableOp0sequential_674/conv2d_2697/Conv2D/ReadVariableOp2f
1sequential_674/conv2d_2698/BiasAdd/ReadVariableOp1sequential_674/conv2d_2698/BiasAdd/ReadVariableOp2d
0sequential_674/conv2d_2698/Conv2D/ReadVariableOp0sequential_674/conv2d_2698/Conv2D/ReadVariableOp2f
1sequential_674/conv2d_2699/BiasAdd/ReadVariableOp1sequential_674/conv2d_2699/BiasAdd/ReadVariableOp2d
0sequential_674/conv2d_2699/Conv2D/ReadVariableOp0sequential_674/conv2d_2699/Conv2D/ReadVariableOp2b
/sequential_674/dense_674/BiasAdd/ReadVariableOp/sequential_674/dense_674/BiasAdd/ReadVariableOp2`
.sequential_674/dense_674/MatMul/ReadVariableOp.sequential_674/dense_674/MatMul/ReadVariableOp:b ^
/
_output_shapes
:€€€€€€€€€-
+
_user_specified_nameconv2d_2696_input
Ѓ
J
.__inference_flatten_674_layer_call_fn_36822456

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_674_layer_call_and_return_conditional_losses_36821616a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ї
v
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36822451

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
:€€€€€€€€€€€€€€€€€€^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ƒ

i
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821794

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
И
В
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36821520

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-*
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
:€€€€€€€€€-X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€-w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
ƒ

i
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822326

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ч
£
.__inference_conv2d_2696_layer_call_fn_36822221

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36821520w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€-`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
ќЭ
џ
$__inference__traced_restore_36822749
file_prefix=
#assignvariableop_conv2d_2696_kernel:1
#assignvariableop_1_conv2d_2696_bias:?
%assignvariableop_2_conv2d_2697_kernel: 1
#assignvariableop_3_conv2d_2697_bias: ?
%assignvariableop_4_conv2d_2698_kernel: @1
#assignvariableop_5_conv2d_2698_bias:@@
%assignvariableop_6_conv2d_2699_kernel:@А2
#assignvariableop_7_conv2d_2699_bias:	А6
#assignvariableop_8_dense_674_kernel:	А/
!assignvariableop_9_dense_674_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: G
-assignvariableop_19_adam_conv2d_2696_kernel_m:9
+assignvariableop_20_adam_conv2d_2696_bias_m:G
-assignvariableop_21_adam_conv2d_2697_kernel_m: 9
+assignvariableop_22_adam_conv2d_2697_bias_m: G
-assignvariableop_23_adam_conv2d_2698_kernel_m: @9
+assignvariableop_24_adam_conv2d_2698_bias_m:@H
-assignvariableop_25_adam_conv2d_2699_kernel_m:@А:
+assignvariableop_26_adam_conv2d_2699_bias_m:	А>
+assignvariableop_27_adam_dense_674_kernel_m:	А7
)assignvariableop_28_adam_dense_674_bias_m:G
-assignvariableop_29_adam_conv2d_2696_kernel_v:9
+assignvariableop_30_adam_conv2d_2696_bias_v:G
-assignvariableop_31_adam_conv2d_2697_kernel_v: 9
+assignvariableop_32_adam_conv2d_2697_bias_v: G
-assignvariableop_33_adam_conv2d_2698_kernel_v: @9
+assignvariableop_34_adam_conv2d_2698_bias_v:@H
-assignvariableop_35_adam_conv2d_2699_kernel_v:@А:
+assignvariableop_36_adam_conv2d_2699_bias_v:	А>
+assignvariableop_37_adam_dense_674_kernel_v:	А7
)assignvariableop_38_adam_dense_674_bias_v:
identity_40ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9м
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHј
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B й
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ґ
_output_shapes£
†::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOpAssignVariableOp#assignvariableop_conv2d_2696_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv2d_2696_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv2d_2697_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv2d_2697_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_4AssignVariableOp%assignvariableop_4_conv2d_2698_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_2698_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv2d_2699_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_2699_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_674_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_674_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adam_conv2d_2696_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv2d_2696_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_conv2d_2697_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_conv2d_2697_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adam_conv2d_2698_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_conv2d_2698_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_conv2d_2699_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv2d_2699_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_674_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_674_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adam_conv2d_2696_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_conv2d_2696_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_31AssignVariableOp-assignvariableop_31_adam_conv2d_2697_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_2697_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adam_conv2d_2698_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_2698_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adam_conv2d_2699_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_2699_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_674_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_674_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ©
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: Ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
Ю
h
/__inference_dropout_2698_layer_call_fn_36822366

inputs
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821728w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ч
£
.__inference_conv2d_2698_layer_call_fn_36822335

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36821570w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Р
Д
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36822403

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36821474

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≈
Q
5__inference_max_pooling2d_2697_layer_call_fn_36822294

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36821462Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ƒ

i
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822383

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ћ
K
/__inference_dropout_2697_layer_call_fn_36822304

inputs
identityј
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821557h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36821462

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36821450

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36822299

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ў

Щ
1__inference_sequential_674_layer_call_fn_36822082

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821873o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
ћ
K
/__inference_dropout_2698_layer_call_fn_36822361

inputs
identityј
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821582h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ћ

i
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821695

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:°
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ю
h
/__inference_dropout_2696_layer_call_fn_36822252

inputs
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821794w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
И
В
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36822232

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-*
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
:€€€€€€€€€-X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€-w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€-: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
–
K
/__inference_dropout_2699_layer_call_fn_36822418

inputs
identityЅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821607i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ЪS
∆
!__inference__traced_save_36822622
file_prefix1
-savev2_conv2d_2696_kernel_read_readvariableop/
+savev2_conv2d_2696_bias_read_readvariableop1
-savev2_conv2d_2697_kernel_read_readvariableop/
+savev2_conv2d_2697_bias_read_readvariableop1
-savev2_conv2d_2698_kernel_read_readvariableop/
+savev2_conv2d_2698_bias_read_readvariableop1
-savev2_conv2d_2699_kernel_read_readvariableop/
+savev2_conv2d_2699_bias_read_readvariableop/
+savev2_dense_674_kernel_read_readvariableop-
)savev2_dense_674_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop8
4savev2_adam_conv2d_2696_kernel_m_read_readvariableop6
2savev2_adam_conv2d_2696_bias_m_read_readvariableop8
4savev2_adam_conv2d_2697_kernel_m_read_readvariableop6
2savev2_adam_conv2d_2697_bias_m_read_readvariableop8
4savev2_adam_conv2d_2698_kernel_m_read_readvariableop6
2savev2_adam_conv2d_2698_bias_m_read_readvariableop8
4savev2_adam_conv2d_2699_kernel_m_read_readvariableop6
2savev2_adam_conv2d_2699_bias_m_read_readvariableop6
2savev2_adam_dense_674_kernel_m_read_readvariableop4
0savev2_adam_dense_674_bias_m_read_readvariableop8
4savev2_adam_conv2d_2696_kernel_v_read_readvariableop6
2savev2_adam_conv2d_2696_bias_v_read_readvariableop8
4savev2_adam_conv2d_2697_kernel_v_read_readvariableop6
2savev2_adam_conv2d_2697_bias_v_read_readvariableop8
4savev2_adam_conv2d_2698_kernel_v_read_readvariableop6
2savev2_adam_conv2d_2698_bias_v_read_readvariableop8
4savev2_adam_conv2d_2699_kernel_v_read_readvariableop6
2savev2_adam_conv2d_2699_bias_v_read_readvariableop6
2savev2_adam_dense_674_kernel_v_read_readvariableop4
0savev2_adam_dense_674_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: й
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*Т
valueИBЕ(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHљ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B У
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv2d_2696_kernel_read_readvariableop+savev2_conv2d_2696_bias_read_readvariableop-savev2_conv2d_2697_kernel_read_readvariableop+savev2_conv2d_2697_bias_read_readvariableop-savev2_conv2d_2698_kernel_read_readvariableop+savev2_conv2d_2698_bias_read_readvariableop-savev2_conv2d_2699_kernel_read_readvariableop+savev2_conv2d_2699_bias_read_readvariableop+savev2_dense_674_kernel_read_readvariableop)savev2_dense_674_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop4savev2_adam_conv2d_2696_kernel_m_read_readvariableop2savev2_adam_conv2d_2696_bias_m_read_readvariableop4savev2_adam_conv2d_2697_kernel_m_read_readvariableop2savev2_adam_conv2d_2697_bias_m_read_readvariableop4savev2_adam_conv2d_2698_kernel_m_read_readvariableop2savev2_adam_conv2d_2698_bias_m_read_readvariableop4savev2_adam_conv2d_2699_kernel_m_read_readvariableop2savev2_adam_conv2d_2699_bias_m_read_readvariableop2savev2_adam_dense_674_kernel_m_read_readvariableop0savev2_adam_dense_674_bias_m_read_readvariableop4savev2_adam_conv2d_2696_kernel_v_read_readvariableop2savev2_adam_conv2d_2696_bias_v_read_readvariableop4savev2_adam_conv2d_2697_kernel_v_read_readvariableop2savev2_adam_conv2d_2697_bias_v_read_readvariableop4savev2_adam_conv2d_2698_kernel_v_read_readvariableop2savev2_adam_conv2d_2698_bias_v_read_readvariableop4savev2_adam_conv2d_2699_kernel_v_read_readvariableop2savev2_adam_conv2d_2699_bias_v_read_readvariableop2savev2_adam_dense_674_kernel_v_read_readvariableop0savev2_adam_dense_674_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*Д
_input_shapesт
п: ::: : : @:@:@А:А:	А:: : : : : : : : : ::: : : @:@:@А:А:	А:::: : : @:@:@А:А:	А:: 2(
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
:@А:!

_output_shapes	
:А:%	!

_output_shapes
:	А: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
: : !

_output_shapes
: :,"(
&
_output_shapes
: @: #

_output_shapes
:@:-$)
'
_output_shapes
:@А:!%

_output_shapes	
:А:%&!

_output_shapes
:	А: '

_output_shapes
::(

_output_shapes
: 
э
h
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822371

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
АB
ё
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821873

inputs.
conv2d_2696_36821837:"
conv2d_2696_36821839:.
conv2d_2697_36821844: "
conv2d_2697_36821846: .
conv2d_2698_36821851: @"
conv2d_2698_36821853:@/
conv2d_2699_36821858:@А#
conv2d_2699_36821860:	А%
dense_674_36821867:	А 
dense_674_36821869:
identityИҐ#conv2d_2696/StatefulPartitionedCallҐ#conv2d_2697/StatefulPartitionedCallҐ#conv2d_2698/StatefulPartitionedCallҐ#conv2d_2699/StatefulPartitionedCallҐ!dense_674/StatefulPartitionedCallҐ$dropout_2696/StatefulPartitionedCallҐ$dropout_2697/StatefulPartitionedCallҐ$dropout_2698/StatefulPartitionedCallҐ$dropout_2699/StatefulPartitionedCallН
#conv2d_2696/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2696_36821837conv2d_2696_36821839*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36821520€
"max_pooling2d_2696/PartitionedCallPartitionedCall,conv2d_2696/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36821450В
$dropout_2696/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2696/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821794і
#conv2d_2697/StatefulPartitionedCallStatefulPartitionedCall-dropout_2696/StatefulPartitionedCall:output:0conv2d_2697_36821844conv2d_2697_36821846*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36821545€
"max_pooling2d_2697/PartitionedCallPartitionedCall,conv2d_2697/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36821462©
$dropout_2697/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2697/PartitionedCall:output:0%^dropout_2696/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821761і
#conv2d_2698/StatefulPartitionedCallStatefulPartitionedCall-dropout_2697/StatefulPartitionedCall:output:0conv2d_2698_36821851conv2d_2698_36821853*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36821570€
"max_pooling2d_2698/PartitionedCallPartitionedCall,conv2d_2698/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36821474©
$dropout_2698/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2698/PartitionedCall:output:0%^dropout_2697/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821728µ
#conv2d_2699/StatefulPartitionedCallStatefulPartitionedCall-dropout_2698/StatefulPartitionedCall:output:0conv2d_2699_36821858conv2d_2699_36821860*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36821595А
"max_pooling2d_2699/PartitionedCallPartitionedCall,conv2d_2699/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36821486™
$dropout_2699/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2699/PartitionedCall:output:0%^dropout_2698/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821695Н
,global_average_pooling2d_674/PartitionedCallPartitionedCall-dropout_2699/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *c
f^R\
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36821499у
flatten_674/PartitionedCallPartitionedCall5global_average_pooling2d_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_674_layer_call_and_return_conditional_losses_36821616Ы
!dense_674/StatefulPartitionedCallStatefulPartitionedCall$flatten_674/PartitionedCall:output:0dense_674_36821867dense_674_36821869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dense_674_layer_call_and_return_conditional_losses_36821629y
IdentityIdentity*dense_674/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ю
NoOpNoOp$^conv2d_2696/StatefulPartitionedCall$^conv2d_2697/StatefulPartitionedCall$^conv2d_2698/StatefulPartitionedCall$^conv2d_2699/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall%^dropout_2696/StatefulPartitionedCall%^dropout_2697/StatefulPartitionedCall%^dropout_2698/StatefulPartitionedCall%^dropout_2699/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 2J
#conv2d_2696/StatefulPartitionedCall#conv2d_2696/StatefulPartitionedCall2J
#conv2d_2697/StatefulPartitionedCall#conv2d_2697/StatefulPartitionedCall2J
#conv2d_2698/StatefulPartitionedCall#conv2d_2698/StatefulPartitionedCall2J
#conv2d_2699/StatefulPartitionedCall#conv2d_2699/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2L
$dropout_2696/StatefulPartitionedCall$dropout_2696/StatefulPartitionedCall2L
$dropout_2697/StatefulPartitionedCall$dropout_2697/StatefulPartitionedCall2L
$dropout_2698/StatefulPartitionedCall$dropout_2698/StatefulPartitionedCall2L
$dropout_2699/StatefulPartitionedCall$dropout_2699/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
Р
Д
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36821595

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ћ
K
/__inference_dropout_2696_layer_call_fn_36822247

inputs
identityј
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821532h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
§
[
?__inference_global_average_pooling2d_674_layer_call_fn_36822445

inputs
identity—
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *c
f^R\
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36821499i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ї;
¬
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821636

inputs.
conv2d_2696_36821521:"
conv2d_2696_36821523:.
conv2d_2697_36821546: "
conv2d_2697_36821548: .
conv2d_2698_36821571: @"
conv2d_2698_36821573:@/
conv2d_2699_36821596:@А#
conv2d_2699_36821598:	А%
dense_674_36821630:	А 
dense_674_36821632:
identityИҐ#conv2d_2696/StatefulPartitionedCallҐ#conv2d_2697/StatefulPartitionedCallҐ#conv2d_2698/StatefulPartitionedCallҐ#conv2d_2699/StatefulPartitionedCallҐ!dense_674/StatefulPartitionedCallН
#conv2d_2696/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2696_36821521conv2d_2696_36821523*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36821520€
"max_pooling2d_2696/PartitionedCallPartitionedCall,conv2d_2696/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36821450т
dropout_2696/PartitionedCallPartitionedCall+max_pooling2d_2696/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821532ђ
#conv2d_2697/StatefulPartitionedCallStatefulPartitionedCall%dropout_2696/PartitionedCall:output:0conv2d_2697_36821546conv2d_2697_36821548*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36821545€
"max_pooling2d_2697/PartitionedCallPartitionedCall,conv2d_2697/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36821462т
dropout_2697/PartitionedCallPartitionedCall+max_pooling2d_2697/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821557ђ
#conv2d_2698/StatefulPartitionedCallStatefulPartitionedCall%dropout_2697/PartitionedCall:output:0conv2d_2698_36821571conv2d_2698_36821573*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36821570€
"max_pooling2d_2698/PartitionedCallPartitionedCall,conv2d_2698/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36821474т
dropout_2698/PartitionedCallPartitionedCall+max_pooling2d_2698/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821582≠
#conv2d_2699/StatefulPartitionedCallStatefulPartitionedCall%dropout_2698/PartitionedCall:output:0conv2d_2699_36821596conv2d_2699_36821598*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36821595А
"max_pooling2d_2699/PartitionedCallPartitionedCall,conv2d_2699/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36821486у
dropout_2699/PartitionedCallPartitionedCall+max_pooling2d_2699/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821607Е
,global_average_pooling2d_674/PartitionedCallPartitionedCall%dropout_2699/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *c
f^R\
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36821499у
flatten_674/PartitionedCallPartitionedCall5global_average_pooling2d_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_674_layer_call_and_return_conditional_losses_36821616Ы
!dense_674/StatefulPartitionedCallStatefulPartitionedCall$flatten_674/PartitionedCall:output:0dense_674_36821630dense_674_36821632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dense_674_layer_call_and_return_conditional_losses_36821629y
IdentityIdentity*dense_674/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€В
NoOpNoOp$^conv2d_2696/StatefulPartitionedCall$^conv2d_2697/StatefulPartitionedCall$^conv2d_2698/StatefulPartitionedCall$^conv2d_2699/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 2J
#conv2d_2696/StatefulPartitionedCall#conv2d_2696/StatefulPartitionedCall2J
#conv2d_2697/StatefulPartitionedCall#conv2d_2697/StatefulPartitionedCall2J
#conv2d_2698/StatefulPartitionedCall#conv2d_2698/StatefulPartitionedCall2J
#conv2d_2699/StatefulPartitionedCall#conv2d_2699/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
Б
h
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821607

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≈
Q
5__inference_max_pooling2d_2696_layer_call_fn_36822237

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36821450Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
И
В
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36822346

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
љ
e
I__inference_flatten_674_layer_call_and_return_conditional_losses_36821616

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Б
h
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822428

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≠a
–
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822212

inputsD
*conv2d_2696_conv2d_readvariableop_resource:9
+conv2d_2696_biasadd_readvariableop_resource:D
*conv2d_2697_conv2d_readvariableop_resource: 9
+conv2d_2697_biasadd_readvariableop_resource: D
*conv2d_2698_conv2d_readvariableop_resource: @9
+conv2d_2698_biasadd_readvariableop_resource:@E
*conv2d_2699_conv2d_readvariableop_resource:@А:
+conv2d_2699_biasadd_readvariableop_resource:	А;
(dense_674_matmul_readvariableop_resource:	А7
)dense_674_biasadd_readvariableop_resource:
identityИҐ"conv2d_2696/BiasAdd/ReadVariableOpҐ!conv2d_2696/Conv2D/ReadVariableOpҐ"conv2d_2697/BiasAdd/ReadVariableOpҐ!conv2d_2697/Conv2D/ReadVariableOpҐ"conv2d_2698/BiasAdd/ReadVariableOpҐ!conv2d_2698/Conv2D/ReadVariableOpҐ"conv2d_2699/BiasAdd/ReadVariableOpҐ!conv2d_2699/Conv2D/ReadVariableOpҐ dense_674/BiasAdd/ReadVariableOpҐdense_674/MatMul/ReadVariableOpФ
!conv2d_2696/Conv2D/ReadVariableOpReadVariableOp*conv2d_2696_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0±
conv2d_2696/Conv2DConv2Dinputs)conv2d_2696/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-*
paddingSAME*
strides
К
"conv2d_2696/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2696_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
conv2d_2696/BiasAddBiasAddconv2d_2696/Conv2D:output:0*conv2d_2696/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€-p
conv2d_2696/ReluReluconv2d_2696/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€-±
max_pooling2d_2696/MaxPoolMaxPoolconv2d_2696/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
_
dropout_2696/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?£
dropout_2696/dropout/MulMul#max_pooling2d_2696/MaxPool:output:0#dropout_2696/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€m
dropout_2696/dropout/ShapeShape#max_pooling2d_2696/MaxPool:output:0*
T0*
_output_shapes
:Ї
1dropout_2696/dropout/random_uniform/RandomUniformRandomUniform#dropout_2696/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€*
dtype0*

seed*h
#dropout_2696/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>’
!dropout_2696/dropout/GreaterEqualGreaterEqual:dropout_2696/dropout/random_uniform/RandomUniform:output:0,dropout_2696/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€С
dropout_2696/dropout/CastCast%dropout_2696/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€Ш
dropout_2696/dropout/Mul_1Muldropout_2696/dropout/Mul:z:0dropout_2696/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€Ф
!conv2d_2697/Conv2D/ReadVariableOpReadVariableOp*conv2d_2697_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0…
conv2d_2697/Conv2DConv2Ddropout_2696/dropout/Mul_1:z:0)conv2d_2697/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
К
"conv2d_2697/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2697_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0°
conv2d_2697/BiasAddBiasAddconv2d_2697/Conv2D:output:0*conv2d_2697/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ p
conv2d_2697/ReluReluconv2d_2697/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ±
max_pooling2d_2697/MaxPoolMaxPoolconv2d_2697/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
_
dropout_2697/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?£
dropout_2697/dropout/MulMul#max_pooling2d_2697/MaxPool:output:0#dropout_2697/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ m
dropout_2697/dropout/ShapeShape#max_pooling2d_2697/MaxPool:output:0*
T0*
_output_shapes
:«
1dropout_2697/dropout/random_uniform/RandomUniformRandomUniform#dropout_2697/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype0*

seed**
seed2h
#dropout_2697/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>’
!dropout_2697/dropout/GreaterEqualGreaterEqual:dropout_2697/dropout/random_uniform/RandomUniform:output:0,dropout_2697/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ С
dropout_2697/dropout/CastCast%dropout_2697/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ Ш
dropout_2697/dropout/Mul_1Muldropout_2697/dropout/Mul:z:0dropout_2697/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ Ф
!conv2d_2698/Conv2D/ReadVariableOpReadVariableOp*conv2d_2698_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0…
conv2d_2698/Conv2DConv2Ddropout_2697/dropout/Mul_1:z:0)conv2d_2698/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
К
"conv2d_2698/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2698_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0°
conv2d_2698/BiasAddBiasAddconv2d_2698/Conv2D:output:0*conv2d_2698/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@p
conv2d_2698/ReluReluconv2d_2698/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@±
max_pooling2d_2698/MaxPoolMaxPoolconv2d_2698/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
_
dropout_2698/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?£
dropout_2698/dropout/MulMul#max_pooling2d_2698/MaxPool:output:0#dropout_2698/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@m
dropout_2698/dropout/ShapeShape#max_pooling2d_2698/MaxPool:output:0*
T0*
_output_shapes
:«
1dropout_2698/dropout/random_uniform/RandomUniformRandomUniform#dropout_2698/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype0*

seed**
seed2h
#dropout_2698/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>’
!dropout_2698/dropout/GreaterEqualGreaterEqual:dropout_2698/dropout/random_uniform/RandomUniform:output:0,dropout_2698/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@С
dropout_2698/dropout/CastCast%dropout_2698/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€@Ш
dropout_2698/dropout/Mul_1Muldropout_2698/dropout/Mul:z:0dropout_2698/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€@Х
!conv2d_2699/Conv2D/ReadVariableOpReadVariableOp*conv2d_2699_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0 
conv2d_2699/Conv2DConv2Ddropout_2698/dropout/Mul_1:z:0)conv2d_2699/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
Л
"conv2d_2699/BiasAdd/ReadVariableOpReadVariableOp+conv2d_2699_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ґ
conv2d_2699/BiasAddBiasAddconv2d_2699/Conv2D:output:0*conv2d_2699/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аq
conv2d_2699/ReluReluconv2d_2699/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А≤
max_pooling2d_2699/MaxPoolMaxPoolconv2d_2699/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
_
dropout_2699/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?§
dropout_2699/dropout/MulMul#max_pooling2d_2699/MaxPool:output:0#dropout_2699/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
dropout_2699/dropout/ShapeShape#max_pooling2d_2699/MaxPool:output:0*
T0*
_output_shapes
:»
1dropout_2699/dropout/random_uniform/RandomUniformRandomUniform#dropout_2699/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0*

seed**
seed2h
#dropout_2699/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>÷
!dropout_2699/dropout/GreaterEqualGreaterEqual:dropout_2699/dropout/random_uniform/RandomUniform:output:0,dropout_2699/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€АТ
dropout_2699/dropout/CastCast%dropout_2699/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€АЩ
dropout_2699/dropout/Mul_1Muldropout_2699/dropout/Mul:z:0dropout_2699/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€АД
3global_average_pooling2d_674/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ї
!global_average_pooling2d_674/MeanMeandropout_2699/dropout/Mul_1:z:0<global_average_pooling2d_674/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
flatten_674/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А   Щ
flatten_674/ReshapeReshape*global_average_pooling2d_674/Mean:output:0flatten_674/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЙ
dense_674/MatMul/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0У
dense_674/MatMulMatMulflatten_674/Reshape:output:0'dense_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
 dense_674/BiasAdd/ReadVariableOpReadVariableOp)dense_674_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_674/BiasAddBiasAdddense_674/MatMul:product:0(dense_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€j
dense_674/SoftmaxSoftmaxdense_674/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitydense_674/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ѓ
NoOpNoOp#^conv2d_2696/BiasAdd/ReadVariableOp"^conv2d_2696/Conv2D/ReadVariableOp#^conv2d_2697/BiasAdd/ReadVariableOp"^conv2d_2697/Conv2D/ReadVariableOp#^conv2d_2698/BiasAdd/ReadVariableOp"^conv2d_2698/Conv2D/ReadVariableOp#^conv2d_2699/BiasAdd/ReadVariableOp"^conv2d_2699/Conv2D/ReadVariableOp!^dense_674/BiasAdd/ReadVariableOp ^dense_674/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 2H
"conv2d_2696/BiasAdd/ReadVariableOp"conv2d_2696/BiasAdd/ReadVariableOp2F
!conv2d_2696/Conv2D/ReadVariableOp!conv2d_2696/Conv2D/ReadVariableOp2H
"conv2d_2697/BiasAdd/ReadVariableOp"conv2d_2697/BiasAdd/ReadVariableOp2F
!conv2d_2697/Conv2D/ReadVariableOp!conv2d_2697/Conv2D/ReadVariableOp2H
"conv2d_2698/BiasAdd/ReadVariableOp"conv2d_2698/BiasAdd/ReadVariableOp2F
!conv2d_2698/Conv2D/ReadVariableOp!conv2d_2698/Conv2D/ReadVariableOp2H
"conv2d_2699/BiasAdd/ReadVariableOp"conv2d_2699/BiasAdd/ReadVariableOp2F
!conv2d_2699/Conv2D/ReadVariableOp!conv2d_2699/Conv2D/ReadVariableOp2D
 dense_674/BiasAdd/ReadVariableOp dense_674/BiasAdd/ReadVariableOp2B
dense_674/MatMul/ReadVariableOpdense_674/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€-
 
_user_specified_nameinputs
°B
й
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821999
conv2d_2696_input.
conv2d_2696_36821963:"
conv2d_2696_36821965:.
conv2d_2697_36821970: "
conv2d_2697_36821972: .
conv2d_2698_36821977: @"
conv2d_2698_36821979:@/
conv2d_2699_36821984:@А#
conv2d_2699_36821986:	А%
dense_674_36821993:	А 
dense_674_36821995:
identityИҐ#conv2d_2696/StatefulPartitionedCallҐ#conv2d_2697/StatefulPartitionedCallҐ#conv2d_2698/StatefulPartitionedCallҐ#conv2d_2699/StatefulPartitionedCallҐ!dense_674/StatefulPartitionedCallҐ$dropout_2696/StatefulPartitionedCallҐ$dropout_2697/StatefulPartitionedCallҐ$dropout_2698/StatefulPartitionedCallҐ$dropout_2699/StatefulPartitionedCallШ
#conv2d_2696/StatefulPartitionedCallStatefulPartitionedCallconv2d_2696_inputconv2d_2696_36821963conv2d_2696_36821965*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€-*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36821520€
"max_pooling2d_2696/PartitionedCallPartitionedCall,conv2d_2696/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36821450В
$dropout_2696/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2696/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821794і
#conv2d_2697/StatefulPartitionedCallStatefulPartitionedCall-dropout_2696/StatefulPartitionedCall:output:0conv2d_2697_36821970conv2d_2697_36821972*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36821545€
"max_pooling2d_2697/PartitionedCallPartitionedCall,conv2d_2697/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36821462©
$dropout_2697/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2697/PartitionedCall:output:0%^dropout_2696/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821761і
#conv2d_2698/StatefulPartitionedCallStatefulPartitionedCall-dropout_2697/StatefulPartitionedCall:output:0conv2d_2698_36821977conv2d_2698_36821979*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36821570€
"max_pooling2d_2698/PartitionedCallPartitionedCall,conv2d_2698/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36821474©
$dropout_2698/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2698/PartitionedCall:output:0%^dropout_2697/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36821728µ
#conv2d_2699/StatefulPartitionedCallStatefulPartitionedCall-dropout_2698/StatefulPartitionedCall:output:0conv2d_2699_36821984conv2d_2699_36821986*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36821595А
"max_pooling2d_2699/PartitionedCallPartitionedCall,conv2d_2699/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36821486™
$dropout_2699/StatefulPartitionedCallStatefulPartitionedCall+max_pooling2d_2699/PartitionedCall:output:0%^dropout_2698/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36821695Н
,global_average_pooling2d_674/PartitionedCallPartitionedCall-dropout_2699/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *c
f^R\
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36821499у
flatten_674/PartitionedCallPartitionedCall5global_average_pooling2d_674/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_flatten_674_layer_call_and_return_conditional_losses_36821616Ы
!dense_674/StatefulPartitionedCallStatefulPartitionedCall$flatten_674/PartitionedCall:output:0dense_674_36821993dense_674_36821995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dense_674_layer_call_and_return_conditional_losses_36821629y
IdentityIdentity*dense_674/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ю
NoOpNoOp$^conv2d_2696/StatefulPartitionedCall$^conv2d_2697/StatefulPartitionedCall$^conv2d_2698/StatefulPartitionedCall$^conv2d_2699/StatefulPartitionedCall"^dense_674/StatefulPartitionedCall%^dropout_2696/StatefulPartitionedCall%^dropout_2697/StatefulPartitionedCall%^dropout_2698/StatefulPartitionedCall%^dropout_2699/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 2J
#conv2d_2696/StatefulPartitionedCall#conv2d_2696/StatefulPartitionedCall2J
#conv2d_2697/StatefulPartitionedCall#conv2d_2697/StatefulPartitionedCall2J
#conv2d_2698/StatefulPartitionedCall#conv2d_2698/StatefulPartitionedCall2J
#conv2d_2699/StatefulPartitionedCall#conv2d_2699/StatefulPartitionedCall2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2L
$dropout_2696/StatefulPartitionedCall$dropout_2696/StatefulPartitionedCall2L
$dropout_2697/StatefulPartitionedCall$dropout_2697/StatefulPartitionedCall2L
$dropout_2698/StatefulPartitionedCall$dropout_2698/StatefulPartitionedCall2L
$dropout_2699/StatefulPartitionedCall$dropout_2699/StatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€-
+
_user_specified_nameconv2d_2696_input
≈
Q
5__inference_max_pooling2d_2698_layer_call_fn_36822351

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36821474Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36822356

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ч
l
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36821486

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
э
h
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36821532

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
І

щ
G__inference_dense_674_layer_call_and_return_conditional_losses_36821629

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
э
h
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822257

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≈
Q
5__inference_max_pooling2d_2699_layer_call_fn_36822408

inputs
identityб
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36821486Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≈

Щ
&__inference_signature_wrapper_36822032
conv2d_2696_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:
identityИҐStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallconv2d_2696_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__wrapped_model_36821441o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€-: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€-
+
_user_specified_nameconv2d_2696_input
э
h
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821557

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ƒ

i
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821761

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ї
v
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36821499

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
:€€€€€€€€€€€€€€€€€€^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ю
h
/__inference_dropout_2697_layer_call_fn_36822309

inputs
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36821761w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs"њL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_defaultі
W
conv2d_2696_inputB
#serving_default_conv2d_2696_input:0€€€€€€€€€-=
	dense_6740
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:бр
∞
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
Ё
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
•
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator"
_tf_keras_layer
Ё
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
•
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator"
_tf_keras_layer
Ё
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
•
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator"
_tf_keras_layer
Ё
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
•
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator"
_tf_keras_layer
•
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
•
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
ј
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Гkernel
	Дbias"
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
Г8
Д9"
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
Г8
Д9"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
В
Кtrace_0
Лtrace_1
Мtrace_2
Нtrace_32П
1__inference_sequential_674_layer_call_fn_36821659
1__inference_sequential_674_layer_call_fn_36822057
1__inference_sequential_674_layer_call_fn_36822082
1__inference_sequential_674_layer_call_fn_36821921ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zКtrace_0zЛtrace_1zМtrace_2zНtrace_3
о
Оtrace_0
Пtrace_1
Рtrace_2
Сtrace_32ы
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822133
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822212
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821960
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821999ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zОtrace_0zПtrace_1zРtrace_2zСtrace_3
ЎB’
#__inference__wrapped_model_36821441conv2d_2696_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
§
	Тiter
Уbeta_1
Фbeta_2

Хdecay
Цlearning_ratemФ mХ5mЦ6mЧKmШLmЩamЪbmЫ	ГmЬ	ДmЭvЮ vЯ5v†6v°KvҐLv£av§bv•	Гv¶	ДvІ"
	optimizer
-
Чserving_default"
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
≤
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ф
Эtrace_02’
.__inference_conv2d_2696_layer_call_fn_36822221Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0
П
Юtrace_02р
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36822232Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЮtrace_0
,:*2conv2d_2696/kernel
:2conv2d_2696/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
ы
§trace_02№
5__inference_max_pooling2d_2696_layer_call_fn_36822237Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0
Ц
•trace_02ч
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36822242Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z•trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
‘
Ђtrace_0
ђtrace_12Щ
/__inference_dropout_2696_layer_call_fn_36822247
/__inference_dropout_2696_layer_call_fn_36822252і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zЂtrace_0zђtrace_1
К
≠trace_0
Ѓtrace_12ѕ
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822257
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822269і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z≠trace_0zЃtrace_1
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
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ф
іtrace_02’
.__inference_conv2d_2697_layer_call_fn_36822278Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0
П
µtrace_02р
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36822289Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0
,:* 2conv2d_2697/kernel
: 2conv2d_2697/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ы
їtrace_02№
5__inference_max_pooling2d_2697_layer_call_fn_36822294Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zїtrace_0
Ц
Љtrace_02ч
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36822299Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЉtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
‘
¬trace_0
√trace_12Щ
/__inference_dropout_2697_layer_call_fn_36822304
/__inference_dropout_2697_layer_call_fn_36822309і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z¬trace_0z√trace_1
К
ƒtrace_0
≈trace_12ѕ
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822314
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822326і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zƒtrace_0z≈trace_1
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
≤
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
ф
Ћtrace_02’
.__inference_conv2d_2698_layer_call_fn_36822335Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
П
ћtrace_02р
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36822346Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
,:* @2conv2d_2698/kernel
:@2conv2d_2698/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
ы
“trace_02№
5__inference_max_pooling2d_2698_layer_call_fn_36822351Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
Ц
”trace_02ч
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36822356Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
‘
ўtrace_0
Џtrace_12Щ
/__inference_dropout_2698_layer_call_fn_36822361
/__inference_dropout_2698_layer_call_fn_36822366і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zўtrace_0zЏtrace_1
К
џtrace_0
№trace_12ѕ
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822371
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822383і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zџtrace_0z№trace_1
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
≤
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
ф
вtrace_02’
.__inference_conv2d_2699_layer_call_fn_36822392Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zвtrace_0
П
гtrace_02р
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36822403Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zгtrace_0
-:+@А2conv2d_2699/kernel
:А2conv2d_2699/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
ы
йtrace_02№
5__inference_max_pooling2d_2699_layer_call_fn_36822408Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zйtrace_0
Ц
кtrace_02ч
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36822413Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zкtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
‘
рtrace_0
сtrace_12Щ
/__inference_dropout_2699_layer_call_fn_36822418
/__inference_dropout_2699_layer_call_fn_36822423і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zрtrace_0zсtrace_1
К
тtrace_0
уtrace_12ѕ
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822428
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822440і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zтtrace_0zуtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
Е
щtrace_02ж
?__inference_global_average_pooling2d_674_layer_call_fn_36822445Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zщtrace_0
†
ъtrace_02Б
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36822451Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zъtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
ф
Аtrace_02’
.__inference_flatten_674_layer_call_fn_36822456Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0
П
Бtrace_02р
I__inference_flatten_674_layer_call_and_return_conditional_losses_36822462Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0
0
Г0
Д1"
trackable_list_wrapper
0
Г0
Д1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
т
Зtrace_02”
,__inference_dense_674_layer_call_fn_36822471Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0
Н
Иtrace_02о
G__inference_dense_674_layer_call_and_return_conditional_losses_36822482Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
#:!	А2dense_674/kernel
:2dense_674/bias
 "
trackable_list_wrapper
О
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
Й0
К1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ОBЛ
1__inference_sequential_674_layer_call_fn_36821659conv2d_2696_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ГBА
1__inference_sequential_674_layer_call_fn_36822057inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ГBА
1__inference_sequential_674_layer_call_fn_36822082inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ОBЛ
1__inference_sequential_674_layer_call_fn_36821921conv2d_2696_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЮBЫ
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822133inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЮBЫ
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822212inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
©B¶
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821960conv2d_2696_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
©B¶
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821999conv2d_2696_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
„B‘
&__inference_signature_wrapper_36822032conv2d_2696_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
вBя
.__inference_conv2d_2696_layer_call_fn_36822221inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36822232inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
йBж
5__inference_max_pooling2d_2696_layer_call_fn_36822237inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36822242inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
хBт
/__inference_dropout_2696_layer_call_fn_36822247inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
хBт
/__inference_dropout_2696_layer_call_fn_36822252inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822257inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822269inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
вBя
.__inference_conv2d_2697_layer_call_fn_36822278inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36822289inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
йBж
5__inference_max_pooling2d_2697_layer_call_fn_36822294inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36822299inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
хBт
/__inference_dropout_2697_layer_call_fn_36822304inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
хBт
/__inference_dropout_2697_layer_call_fn_36822309inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822314inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822326inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
вBя
.__inference_conv2d_2698_layer_call_fn_36822335inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36822346inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
йBж
5__inference_max_pooling2d_2698_layer_call_fn_36822351inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36822356inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
хBт
/__inference_dropout_2698_layer_call_fn_36822361inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
хBт
/__inference_dropout_2698_layer_call_fn_36822366inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822371inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822383inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
вBя
.__inference_conv2d_2699_layer_call_fn_36822392inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36822403inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
йBж
5__inference_max_pooling2d_2699_layer_call_fn_36822408inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36822413inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
хBт
/__inference_dropout_2699_layer_call_fn_36822418inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
хBт
/__inference_dropout_2699_layer_call_fn_36822423inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822428inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
РBН
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822440inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
уBр
?__inference_global_average_pooling2d_674_layer_call_fn_36822445inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36822451inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
вBя
.__inference_flatten_674_layer_call_fn_36822456inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
I__inference_flatten_674_layer_call_and_return_conditional_losses_36822462inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
аBЁ
,__inference_dense_674_layer_call_fn_36822471inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
G__inference_dense_674_layer_call_and_return_conditional_losses_36822482inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Л	variables
М	keras_api

Нtotal

Оcount"
_tf_keras_metric
c
П	variables
Р	keras_api

Сtotal

Тcount
У
_fn_kwargs"
_tf_keras_metric
0
Н0
О1"
trackable_list_wrapper
.
Л	variables"
_generic_user_object
:  (2total
:  (2count
0
С0
Т1"
trackable_list_wrapper
.
П	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
1:/2Adam/conv2d_2696/kernel/m
#:!2Adam/conv2d_2696/bias/m
1:/ 2Adam/conv2d_2697/kernel/m
#:! 2Adam/conv2d_2697/bias/m
1:/ @2Adam/conv2d_2698/kernel/m
#:!@2Adam/conv2d_2698/bias/m
2:0@А2Adam/conv2d_2699/kernel/m
$:"А2Adam/conv2d_2699/bias/m
(:&	А2Adam/dense_674/kernel/m
!:2Adam/dense_674/bias/m
1:/2Adam/conv2d_2696/kernel/v
#:!2Adam/conv2d_2696/bias/v
1:/ 2Adam/conv2d_2697/kernel/v
#:! 2Adam/conv2d_2697/bias/v
1:/ @2Adam/conv2d_2698/kernel/v
#:!@2Adam/conv2d_2698/bias/v
2:0@А2Adam/conv2d_2699/kernel/v
$:"А2Adam/conv2d_2699/bias/v
(:&	А2Adam/dense_674/kernel/v
!:2Adam/dense_674/bias/v±
#__inference__wrapped_model_36821441Й 56KLabГДBҐ?
8Ґ5
3К0
conv2d_2696_input€€€€€€€€€-
™ "5™2
0
	dense_674#К 
	dense_674€€€€€€€€€є
I__inference_conv2d_2696_layer_call_and_return_conditional_losses_36822232l 7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€-
™ "-Ґ*
#К 
0€€€€€€€€€-
Ъ С
.__inference_conv2d_2696_layer_call_fn_36822221_ 7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€-
™ " К€€€€€€€€€-є
I__inference_conv2d_2697_layer_call_and_return_conditional_losses_36822289l567Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ С
.__inference_conv2d_2697_layer_call_fn_36822278_567Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€ є
I__inference_conv2d_2698_layer_call_and_return_conditional_losses_36822346lKL7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ С
.__inference_conv2d_2698_layer_call_fn_36822335_KL7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@Ї
I__inference_conv2d_2699_layer_call_and_return_conditional_losses_36822403mab7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Т
.__inference_conv2d_2699_layer_call_fn_36822392`ab7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€А™
G__inference_dense_674_layer_call_and_return_conditional_losses_36822482_ГД0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ В
,__inference_dense_674_layer_call_fn_36822471RГД0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ї
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822257l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p 
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Ї
J__inference_dropout_2696_layer_call_and_return_conditional_losses_36822269l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p
™ "-Ґ*
#К 
0€€€€€€€€€
Ъ Т
/__inference_dropout_2696_layer_call_fn_36822247_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p 
™ " К€€€€€€€€€Т
/__inference_dropout_2696_layer_call_fn_36822252_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€
p
™ " К€€€€€€€€€Ї
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822314l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Ї
J__inference_dropout_2697_layer_call_and_return_conditional_losses_36822326l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Т
/__inference_dropout_2697_layer_call_fn_36822304_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ " К€€€€€€€€€ Т
/__inference_dropout_2697_layer_call_fn_36822309_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ " К€€€€€€€€€ Ї
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822371l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Ї
J__inference_dropout_2698_layer_call_and_return_conditional_losses_36822383l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Т
/__inference_dropout_2698_layer_call_fn_36822361_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ " К€€€€€€€€€@Т
/__inference_dropout_2698_layer_call_fn_36822366_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ " К€€€€€€€€€@Љ
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822428n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Љ
J__inference_dropout_2699_layer_call_and_return_conditional_losses_36822440n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Ф
/__inference_dropout_2699_layer_call_fn_36822418a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АФ
/__inference_dropout_2699_layer_call_fn_36822423a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€АІ
I__inference_flatten_674_layer_call_and_return_conditional_losses_36822462Z0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
.__inference_flatten_674_layer_call_fn_36822456M0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Аг
Z__inference_global_average_pooling2d_674_layer_call_and_return_conditional_losses_36822451ДRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ Ї
?__inference_global_average_pooling2d_674_layer_call_fn_36822445wRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "!К€€€€€€€€€€€€€€€€€€у
P__inference_max_pooling2d_2696_layer_call_and_return_conditional_losses_36822242ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
5__inference_max_pooling2d_2696_layer_call_fn_36822237СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€у
P__inference_max_pooling2d_2697_layer_call_and_return_conditional_losses_36822299ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
5__inference_max_pooling2d_2697_layer_call_fn_36822294СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€у
P__inference_max_pooling2d_2698_layer_call_and_return_conditional_losses_36822356ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
5__inference_max_pooling2d_2698_layer_call_fn_36822351СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€у
P__inference_max_pooling2d_2699_layer_call_and_return_conditional_losses_36822413ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
5__inference_max_pooling2d_2699_layer_call_fn_36822408СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€“
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821960Б 56KLabГДJҐG
@Ґ=
3К0
conv2d_2696_input€€€€€€€€€-
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ “
L__inference_sequential_674_layer_call_and_return_conditional_losses_36821999Б 56KLabГДJҐG
@Ґ=
3К0
conv2d_2696_input€€€€€€€€€-
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∆
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822133v 56KLabГД?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€-
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∆
L__inference_sequential_674_layer_call_and_return_conditional_losses_36822212v 56KLabГД?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€-
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ©
1__inference_sequential_674_layer_call_fn_36821659t 56KLabГДJҐG
@Ґ=
3К0
conv2d_2696_input€€€€€€€€€-
p 

 
™ "К€€€€€€€€€©
1__inference_sequential_674_layer_call_fn_36821921t 56KLabГДJҐG
@Ґ=
3К0
conv2d_2696_input€€€€€€€€€-
p

 
™ "К€€€€€€€€€Ю
1__inference_sequential_674_layer_call_fn_36822057i 56KLabГД?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€-
p 

 
™ "К€€€€€€€€€Ю
1__inference_sequential_674_layer_call_fn_36822082i 56KLabГД?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€-
p

 
™ "К€€€€€€€€€…
&__inference_signature_wrapper_36822032Ю 56KLabГДWҐT
Ґ 
M™J
H
conv2d_2696_input3К0
conv2d_2696_input€€€€€€€€€-"5™2
0
	dense_674#К 
	dense_674€€€€€€€€€