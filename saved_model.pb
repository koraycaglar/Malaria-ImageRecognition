??-
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??)
?
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0
?
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0
?
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0
?
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0
?
!batch_normalization/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization/moving_stddev
?
5batch_normalization/moving_stddev/Read/ReadVariableOpReadVariableOp!batch_normalization/moving_stddev*
_output_shapes
:*
dtype0
?
batch_normalization/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/renorm_mean
?
3batch_normalization/renorm_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/renorm_mean*
_output_shapes
:*
dtype0
?
!batch_normalization/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization/renorm_stddev
?
5batch_normalization/renorm_stddev/Read/ReadVariableOpReadVariableOp!batch_normalization/renorm_stddev*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_1/gamma
?
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_1/beta
?
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/moving_mean
?
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_1/moving_variance
?
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
?
#batch_normalization_1/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_1/moving_stddev
?
7batch_normalization_1/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_1/moving_stddev*
_output_shapes
:@*
dtype0
?
!batch_normalization_1/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_1/renorm_mean
?
5batch_normalization_1/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/renorm_mean*
_output_shapes
:@*
dtype0
?
#batch_normalization_1/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_1/renorm_stddev
?
7batch_normalization_1/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_1/renorm_stddev*
_output_shapes
:@*
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@?*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_2/gamma
?
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_2/beta
?
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_2/moving_mean
?
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_2/moving_variance
?
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:?*
dtype0
?
#batch_normalization_2/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_2/moving_stddev
?
7batch_normalization_2/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_2/moving_stddev*
_output_shapes	
:?*
dtype0
?
!batch_normalization_2/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_2/renorm_mean
?
5batch_normalization_2/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/renorm_mean*
_output_shapes	
:?*
dtype0
?
#batch_normalization_2/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_2/renorm_stddev
?
7batch_normalization_2/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_2/renorm_stddev*
_output_shapes	
:?*
dtype0
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_2/kernel
}
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*(
_output_shapes
:??*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_3/gamma
?
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_3/beta
?
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_3/moving_mean
?
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_3/moving_variance
?
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:?*
dtype0
?
#batch_normalization_3/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_3/moving_stddev
?
7batch_normalization_3/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_3/moving_stddev*
_output_shapes	
:?*
dtype0
?
!batch_normalization_3/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_3/renorm_mean
?
5batch_normalization_3/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/renorm_mean*
_output_shapes	
:?*
dtype0
?
#batch_normalization_3/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_3/renorm_stddev
?
7batch_normalization_3/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_3/renorm_stddev*
_output_shapes	
:?*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
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
?
 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/m
?
4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:*
dtype0
?
Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/m
?
3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:*
dtype0
?
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/m
?
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/m
?
6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/m
?
5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_1/kernel/m
?
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_1/bias/m
z
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/m
?
6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/m
?
5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_2/kernel/m
?
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_3/gamma/m
?
6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_3/beta/m
?
5Adam/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/v
?
4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:*
dtype0
?
Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/v
?
3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:*
dtype0
?
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d/kernel/v
?
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_1/gamma/v
?
6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
:@*
dtype0
?
!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_1/beta/v
?
5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_1/kernel/v
?
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_1/bias/v
z
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/v
?
6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/v
?
5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_2/kernel/v
?
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_3/gamma/v
?
6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_3/beta/v
?
5Adam/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures

_rng
	keras_api

_rng
	keras_api
?
renorm_clipping
axis
	gamma
beta
moving_mean
moving_variance
 moving_stddev
!renorm_mean
"renorm_stddev
#regularization_losses
$	variables
%trainable_variables
&	keras_api
h

'kernel
(bias
)regularization_losses
*	variables
+trainable_variables
,	keras_api
R
-regularization_losses
.	variables
/trainable_variables
0	keras_api
?
1renorm_clipping
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7moving_stddev
8renorm_mean
9renorm_stddev
:regularization_losses
;	variables
<trainable_variables
=	keras_api
h

>kernel
?bias
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
R
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
?
Hrenorm_clipping
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
Nmoving_stddev
Orenorm_mean
Prenorm_stddev
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
h

Ukernel
Vbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
R
[regularization_losses
\	variables
]trainable_variables
^	keras_api
?
_renorm_clipping
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
emoving_stddev
frenorm_mean
grenorm_stddev
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
R
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
h

pkernel
qbias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
h

vkernel
wbias
xregularization_losses
y	variables
ztrainable_variables
{	keras_api
?
|iter

}beta_1

~beta_2
	decay
?learning_ratem?m?'m?(m?3m?4m?>m??m?Jm?Km?Um?Vm?am?bm?pm?qm?vm?wm?v?v?'v?(v?3v?4v?>v??v?Jv?Kv?Uv?Vv?av?bv?pv?qv?vv?wv?
 
?
0
1
2
3
 4
!5
"6
'7
(8
39
410
511
612
713
814
915
>16
?17
J18
K19
L20
M21
N22
O23
P24
U25
V26
a27
b28
c29
d30
e31
f32
g33
p34
q35
v36
w37
?
0
1
'2
(3
34
45
>6
?7
J8
K9
U10
V11
a12
b13
p14
q15
v16
w17
?
 ?layer_regularization_losses
?layers
?metrics
?non_trainable_variables
regularization_losses
	variables
?layer_metrics
trainable_variables
 

?
_state_var
 

?
_state_var
 
 
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE!batch_normalization/moving_stddev=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/renorm_mean;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE!batch_normalization/renorm_stddev=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
 4
!5
"6

0
1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
#regularization_losses
$	variables
?layer_metrics
%trainable_variables
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
)regularization_losses
*	variables
?layer_metrics
+trainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
-regularization_losses
.	variables
?layer_metrics
/trainable_variables
 
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_1/moving_stddev=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/renorm_mean;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_1/renorm_stddev=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
30
41
52
63
74
85
96

30
41
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
:regularization_losses
;	variables
?layer_metrics
<trainable_variables
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

>0
?1

>0
?1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
@regularization_losses
A	variables
?layer_metrics
Btrainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
Dregularization_losses
E	variables
?layer_metrics
Ftrainable_variables
 
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_2/moving_stddev=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/renorm_mean;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_2/renorm_stddev=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
J0
K1
L2
M3
N4
O5
P6

J0
K1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
Qregularization_losses
R	variables
?layer_metrics
Strainable_variables
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

U0
V1

U0
V1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
Wregularization_losses
X	variables
?layer_metrics
Ytrainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
[regularization_losses
\	variables
?layer_metrics
]trainable_variables
 
 
fd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_3/moving_stddev=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/renorm_mean;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE#batch_normalization_3/renorm_stddev=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE
 
1
a0
b1
c2
d3
e4
f5
g6

a0
b1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
hregularization_losses
i	variables
?layer_metrics
jtrainable_variables
 
 
 
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
lregularization_losses
m	variables
?layer_metrics
ntrainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

p0
q1

p0
q1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
rregularization_losses
s	variables
?layer_metrics
ttrainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

v0
w1
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
xregularization_losses
y	variables
?layer_metrics
ztrainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
n
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
14

?0
?1
?
0
1
 2
!3
"4
55
66
77
88
99
L10
M11
N12
O13
P14
c15
d16
e17
f18
g19
 
PN
VARIABLE_VALUEVariable2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUE
Variable_12layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
#
0
1
 2
!3
"4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#
50
61
72
83
94
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#
L0
M1
N2
O3
P4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
#
c0
d1
e2
f3
g4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_3/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_3/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_3/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_3/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d/kernelconv2d/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betaconv2d_1/kernelconv2d_1/bias%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betaconv2d_2/kernelconv2d_2/bias%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betadense/kernel
dense/biasdense_1/kerneldense_1/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_16204
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?!
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp5batch_normalization/moving_stddev/Read/ReadVariableOp3batch_normalization/renorm_mean/Read/ReadVariableOp5batch_normalization/renorm_stddev/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp7batch_normalization_1/moving_stddev/Read/ReadVariableOp5batch_normalization_1/renorm_mean/Read/ReadVariableOp7batch_normalization_1/renorm_stddev/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp7batch_normalization_2/moving_stddev/Read/ReadVariableOp5batch_normalization_2/renorm_mean/Read/ReadVariableOp7batch_normalization_2/renorm_stddev/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp7batch_normalization_3/moving_stddev/Read/ReadVariableOp5batch_normalization_3/renorm_mean/Read/ReadVariableOp7batch_normalization_3/renorm_stddev/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_3/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_3/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*b
Tin[
Y2W			*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_18406
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variance!batch_normalization/moving_stddevbatch_normalization/renorm_mean!batch_normalization/renorm_stddevconv2d/kernelconv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variance#batch_normalization_1/moving_stddev!batch_normalization_1/renorm_mean#batch_normalization_1/renorm_stddevconv2d_1/kernelconv2d_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variance#batch_normalization_2/moving_stddev!batch_normalization_2/renorm_mean#batch_normalization_2/renorm_stddevconv2d_2/kernelconv2d_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variance#batch_normalization_3/moving_stddev!batch_normalization_3/renorm_mean#batch_normalization_3/renorm_stddevdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1totalcounttotal_1count_1 Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/mAdam/conv2d/kernel/mAdam/conv2d/bias/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/vAdam/conv2d/kernel/vAdam/conv2d/bias/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*a
TinZ
X2V*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_18671??&
?h
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_14970

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_14938
assignmovingavg_3_14947
assignnewvalue_14959

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*1
_output_shapes
:???????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14938*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_14938*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14938*
_output_shapes
:2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14938*
_output_shapes
:2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_14938AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14938*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14947*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_14947*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14947*
_output_shapes
:2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14947*
_output_shapes
:2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_14947AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14947*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_14947&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_14947&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_14959Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/14959*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity_6"!

identity_6Identity_6:output:0*L
_input_shapes;
9:???????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_17190

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_149702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*L
_input_shapes;
9:???????????:::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17613

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_3_layer_call_fn_18067

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_155212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_17203

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_149902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?j
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17593

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_17561
assignmovingavg_3_17570
assignnewvalue_17582

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17561*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_17561*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17561*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17561*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_17561AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17561*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17570*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_17570*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17570*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17570*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_17570AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17570*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_17570&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_17570&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_17582Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/17582*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity_6"!

identity_6Identity_6:output:0*]
_input_shapesL
J:,????????????????????????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_18109

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_3_layer_call_fn_17933

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_147472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_16795

inputs9
5batch_normalization_batchnorm_readvariableop_resource=
9batch_normalization_batchnorm_mul_readvariableop_resource;
7batch_normalization_batchnorm_readvariableop_1_resource;
7batch_normalization_batchnorm_readvariableop_2_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource;
7batch_normalization_1_batchnorm_readvariableop_resource?
;batch_normalization_1_batchnorm_mul_readvariableop_resource=
9batch_normalization_1_batchnorm_readvariableop_1_resource=
9batch_normalization_1_batchnorm_readvariableop_2_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource;
7batch_normalization_2_batchnorm_readvariableop_resource?
;batch_normalization_2_batchnorm_mul_readvariableop_resource=
9batch_normalization_2_batchnorm_readvariableop_1_resource=
9batch_normalization_2_batchnorm_readvariableop_2_resource+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource;
7batch_normalization_3_batchnorm_readvariableop_resource?
;batch_normalization_3_batchnorm_mul_readvariableop_resource=
9batch_normalization_3_batchnorm_readvariableop_1_resource=
9batch_normalization_3_batchnorm_readvariableop_2_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??,batch_normalization/batchnorm/ReadVariableOp?.batch_normalization/batchnorm/ReadVariableOp_1?.batch_normalization/batchnorm/ReadVariableOp_2?0batch_normalization/batchnorm/mul/ReadVariableOp?.batch_normalization_1/batchnorm/ReadVariableOp?0batch_normalization_1/batchnorm/ReadVariableOp_1?0batch_normalization_1/batchnorm/ReadVariableOp_2?2batch_normalization_1/batchnorm/mul/ReadVariableOp?.batch_normalization_2/batchnorm/ReadVariableOp?0batch_normalization_2/batchnorm/ReadVariableOp_1?0batch_normalization_2/batchnorm/ReadVariableOp_2?2batch_normalization_2/batchnorm/mul/ReadVariableOp?.batch_normalization_3/batchnorm/ReadVariableOp?0batch_normalization_3/batchnorm/ReadVariableOp_1?0batch_normalization_3/batchnorm/ReadVariableOp_2?2batch_normalization_3/batchnorm/mul/ReadVariableOp?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02.
,batch_normalization/batchnorm/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/Rsqrt?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1Mulinputs%batch_normalization/batchnorm/mul:z:0*
T0*1
_output_shapes
:???????????2%
#batch_normalization/batchnorm/mul_1?
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1?
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/mul_2?
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2?
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????2%
#batch_normalization/batchnorm/add_1?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2D'batch_normalization/batchnorm/add_1:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
conv2d/Relu?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:?????????@@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype020
.batch_normalization_1/batchnorm/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/Rsqrt?
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOp?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulmax_pooling2d/MaxPool:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@@@2'
%batch_normalization_1/batchnorm/mul_1?
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_1?
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/mul_2?
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_2?
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%batch_normalization_1/batchnorm/add_1?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2D)batch_normalization_1/batchnorm/add_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?2
conv2d_1/Relu?
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOp?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1Mul max_pooling2d_1/MaxPool:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*0
_output_shapes
:?????????  ?2'
%batch_normalization_2/batchnorm/mul_1?
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_1?
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_2?
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????  ?2'
%batch_normalization_2/batchnorm/add_1?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D)batch_normalization_2/batchnorm/add_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_2/Relu?
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool?
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.batch_normalization_3/batchnorm/ReadVariableOp?
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_3/batchnorm/add/y?
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/add?
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/Rsqrt?
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2batch_normalization_3/batchnorm/mul/ReadVariableOp?
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/mul?
%batch_normalization_3/batchnorm/mul_1Mul max_pooling2d_2/MaxPool:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/mul_1?
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_1?
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/mul_2?
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0batch_normalization_3/batchnorm/ReadVariableOp_2?
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/sub?
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*0
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshape)batch_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoid?	
IdentityIdentitydense_1/Sigmoid:y:0-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?i
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13958

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_13926
assignmovingavg_3_13935
assignnewvalue_13947

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/13926*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_13926*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/13926*
_output_shapes
:2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/13926*
_output_shapes
:2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_13926AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/13926*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/13935*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_13935*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/13935*
_output_shapes
:2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/13935*
_output_shapes
:2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_13935AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/13935*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_13935&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_13935&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_13947Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/13947*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity_6"!

identity_6Identity_6:output:0*\
_input_shapesK
I:+???????????????????????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17325

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?j
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_14458

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_14426
assignmovingavg_3_14435
assignnewvalue_14447

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14426*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_14426*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14426*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14426*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_14426AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14426*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14435*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_14435*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14435*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14435*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_14435AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14435*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_14435&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_14435&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_14447Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/14447*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity_6"!

identity_6Identity_6:output:0*]
_input_shapesL
J:,????????????????????????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?,
E__inference_sequential_layer_call_and_return_conditional_losses_16687

inputs=
9random_rotation_stateful_uniform_statefuluniform_resource7
3batch_normalization_maximum_readvariableop_resource3
/batch_normalization_sub_readvariableop_resource3
/batch_normalization_mul_readvariableop_resource5
1batch_normalization_add_1_readvariableop_resource/
+batch_normalization_assignmovingavg_2_16381/
+batch_normalization_assignmovingavg_3_16390,
(batch_normalization_assignnewvalue_16402)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource9
5batch_normalization_1_maximum_readvariableop_resource5
1batch_normalization_1_sub_readvariableop_resource5
1batch_normalization_1_mul_readvariableop_resource7
3batch_normalization_1_add_1_readvariableop_resource1
-batch_normalization_1_assignmovingavg_2_164671
-batch_normalization_1_assignmovingavg_3_16476.
*batch_normalization_1_assignnewvalue_16488+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource9
5batch_normalization_2_maximum_readvariableop_resource5
1batch_normalization_2_sub_readvariableop_resource5
1batch_normalization_2_mul_readvariableop_resource7
3batch_normalization_2_add_1_readvariableop_resource1
-batch_normalization_2_assignmovingavg_2_165531
-batch_normalization_2_assignmovingavg_3_16562.
*batch_normalization_2_assignnewvalue_16574+
'conv2d_2_conv2d_readvariableop_resource,
(conv2d_2_biasadd_readvariableop_resource9
5batch_normalization_3_maximum_readvariableop_resource5
1batch_normalization_3_sub_readvariableop_resource5
1batch_normalization_3_mul_readvariableop_resource7
3batch_normalization_3_add_1_readvariableop_resource1
-batch_normalization_3_assignmovingavg_2_166391
-batch_normalization_3_assignmovingavg_3_16648.
*batch_normalization_3_assignnewvalue_16660(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??7batch_normalization/AssignMovingAvg/AssignSubVariableOp?2batch_normalization/AssignMovingAvg/ReadVariableOp?9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?9batch_normalization/AssignMovingAvg_2/AssignSubVariableOp?4batch_normalization/AssignMovingAvg_2/ReadVariableOp?9batch_normalization/AssignMovingAvg_3/AssignSubVariableOp?4batch_normalization/AssignMovingAvg_3/ReadVariableOp?"batch_normalization/AssignNewValue?*batch_normalization/Maximum/ReadVariableOp?"batch_normalization/ReadVariableOp?(batch_normalization/add_1/ReadVariableOp?&batch_normalization/mul/ReadVariableOp?(batch_normalization/mul_1/ReadVariableOp?(batch_normalization/mul_2/ReadVariableOp?&batch_normalization/sub/ReadVariableOp?9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?;batch_normalization_1/AssignMovingAvg_2/AssignSubVariableOp?6batch_normalization_1/AssignMovingAvg_2/ReadVariableOp?;batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOp?6batch_normalization_1/AssignMovingAvg_3/ReadVariableOp?$batch_normalization_1/AssignNewValue?,batch_normalization_1/Maximum/ReadVariableOp?$batch_normalization_1/ReadVariableOp?*batch_normalization_1/add_1/ReadVariableOp?(batch_normalization_1/mul/ReadVariableOp?*batch_normalization_1/mul_1/ReadVariableOp?*batch_normalization_1/mul_2/ReadVariableOp?(batch_normalization_1/sub/ReadVariableOp?9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_2/AssignMovingAvg/ReadVariableOp?;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?;batch_normalization_2/AssignMovingAvg_2/AssignSubVariableOp?6batch_normalization_2/AssignMovingAvg_2/ReadVariableOp?;batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOp?6batch_normalization_2/AssignMovingAvg_3/ReadVariableOp?$batch_normalization_2/AssignNewValue?,batch_normalization_2/Maximum/ReadVariableOp?$batch_normalization_2/ReadVariableOp?*batch_normalization_2/add_1/ReadVariableOp?(batch_normalization_2/mul/ReadVariableOp?*batch_normalization_2/mul_1/ReadVariableOp?*batch_normalization_2/mul_2/ReadVariableOp?(batch_normalization_2/sub/ReadVariableOp?9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?4batch_normalization_3/AssignMovingAvg/ReadVariableOp?;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?;batch_normalization_3/AssignMovingAvg_2/AssignSubVariableOp?6batch_normalization_3/AssignMovingAvg_2/ReadVariableOp?;batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOp?6batch_normalization_3/AssignMovingAvg_3/ReadVariableOp?$batch_normalization_3/AssignNewValue?,batch_normalization_3/Maximum/ReadVariableOp?$batch_normalization_3/ReadVariableOp?*batch_normalization_3/add_1/ReadVariableOp?(batch_normalization_3/mul/ReadVariableOp?*batch_normalization_3/mul_1/ReadVariableOp?*batch_normalization_3/mul_2/ReadVariableOp?(batch_normalization_3/sub/ReadVariableOp?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?0random_rotation/stateful_uniform/StatefulUniform?
5random_flip/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????27
5random_flip/random_flip_left_right/control_dependency?
(random_flip/random_flip_left_right/ShapeShape>random_flip/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2*
(random_flip/random_flip_left_right/Shape?
6random_flip/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_flip/random_flip_left_right/strided_slice/stack?
8random_flip/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_1?
8random_flip/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_2?
0random_flip/random_flip_left_right/strided_sliceStridedSlice1random_flip/random_flip_left_right/Shape:output:0?random_flip/random_flip_left_right/strided_slice/stack:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_1:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_flip/random_flip_left_right/strided_slice?
7random_flip/random_flip_left_right/random_uniform/shapePack9random_flip/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7random_flip/random_flip_left_right/random_uniform/shape?
5random_flip/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_flip/random_flip_left_right/random_uniform/min?
5random_flip/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5random_flip/random_flip_left_right/random_uniform/max?
?random_flip/random_flip_left_right/random_uniform/RandomUniformRandomUniform@random_flip/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02A
?random_flip/random_flip_left_right/random_uniform/RandomUniform?
5random_flip/random_flip_left_right/random_uniform/MulMulHrandom_flip/random_flip_left_right/random_uniform/RandomUniform:output:0>random_flip/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????27
5random_flip/random_flip_left_right/random_uniform/Mul?
2random_flip/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/1?
2random_flip/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/2?
2random_flip/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/3?
0random_flip/random_flip_left_right/Reshape/shapePack9random_flip/random_flip_left_right/strided_slice:output:0;random_flip/random_flip_left_right/Reshape/shape/1:output:0;random_flip/random_flip_left_right/Reshape/shape/2:output:0;random_flip/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0random_flip/random_flip_left_right/Reshape/shape?
*random_flip/random_flip_left_right/ReshapeReshape9random_flip/random_flip_left_right/random_uniform/Mul:z:09random_flip/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip/random_flip_left_right/Reshape?
(random_flip/random_flip_left_right/RoundRound3random_flip/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2*
(random_flip/random_flip_left_right/Round?
1random_flip/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:23
1random_flip/random_flip_left_right/ReverseV2/axis?
,random_flip/random_flip_left_right/ReverseV2	ReverseV2>random_flip/random_flip_left_right/control_dependency:output:0:random_flip/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2.
,random_flip/random_flip_left_right/ReverseV2?
&random_flip/random_flip_left_right/mulMul,random_flip/random_flip_left_right/Round:y:05random_flip/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2(
&random_flip/random_flip_left_right/mul?
(random_flip/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(random_flip/random_flip_left_right/sub/x?
&random_flip/random_flip_left_right/subSub1random_flip/random_flip_left_right/sub/x:output:0,random_flip/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2(
&random_flip/random_flip_left_right/sub?
(random_flip/random_flip_left_right/mul_1Mul*random_flip/random_flip_left_right/sub:z:0>random_flip/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2*
(random_flip/random_flip_left_right/mul_1?
&random_flip/random_flip_left_right/addAddV2*random_flip/random_flip_left_right/mul:z:0,random_flip/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2(
&random_flip/random_flip_left_right/add?
random_rotation/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation/Shape?
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stack?
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1?
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2?
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_slice?
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stack?
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1?
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2?
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1?
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast?
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stack?
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1?
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2?
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2?
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1?
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shape?
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2&
$random_rotation/stateful_uniform/min?
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2&
$random_rotation/stateful_uniform/max?
:random_rotation/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2<
:random_rotation/stateful_uniform/StatefulUniform/algorithm?
0random_rotation/stateful_uniform/StatefulUniformStatefulUniform9random_rotation_stateful_uniform_statefuluniform_resourceCrandom_rotation/stateful_uniform/StatefulUniform/algorithm:output:0/random_rotation/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype022
0random_rotation/stateful_uniform/StatefulUniform?
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/sub?
$random_rotation/stateful_uniform/mulMul9random_rotation/stateful_uniform/StatefulUniform:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2&
$random_rotation/stateful_uniform/mul?
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2"
 random_rotation/stateful_uniform?
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%random_rotation/rotation_matrix/sub/y?
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub?
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Cos?
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_1/y?
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1?
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/mul?
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Sin?
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_2/y?
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2?
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_1?
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_3?
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_4?
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/y?
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2)
'random_rotation/rotation_matrix/truediv?
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_5/y?
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5?
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_1?
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_6/y?
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6?
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_2?
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_1?
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_7/y?
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7?
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_3?
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/add?
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_8?
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/y?
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation/rotation_matrix/truediv_1?
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shape?
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stack?
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1?
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2?
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice?
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_2?
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack?
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1?
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2?
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1?
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_2?
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack?
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1?
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2?
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2?
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Neg?
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack?
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1?
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2?
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3?
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_3?
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack?
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1?
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2?
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4?
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_3?
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack?
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1?
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2?
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5?
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack?
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1?
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2?
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6?
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/y?
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mul?
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,random_rotation/rotation_matrix/zeros/Less/y?
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/Less?
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1?
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packed?
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Const?
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/zeros?
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis?
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2(
&random_rotation/rotation_matrix/concat?
random_rotation/transform/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2!
random_rotation/transform/Shape?
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stack?
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1?
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2?
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_slice?
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_value?
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3*random_flip/random_flip_left_right/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3?
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          24
2batch_normalization/moments/mean/reduction_indices?
 batch_normalization/moments/meanMeanIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2"
 batch_normalization/moments/mean?
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*&
_output_shapes
:2*
(batch_normalization/moments/StopGradient?
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:01batch_normalization/moments/StopGradient:output:0*
T0*1
_output_shapes
:???????????2/
-batch_normalization/moments/SquaredDifference?
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          28
6batch_normalization/moments/variance/reduction_indices?
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2&
$batch_normalization/moments/variance?
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2%
#batch_normalization/moments/Squeeze?
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1{
batch_normalization/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization/add/y?
batch_normalization/addAddV2.batch_normalization/moments/Squeeze_1:output:0"batch_normalization/add/y:output:0*
T0*
_output_shapes
:2
batch_normalization/add~
batch_normalization/SqrtSqrtbatch_normalization/add:z:0*
T0*
_output_shapes
:2
batch_normalization/Sqrt?
batch_normalization/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization/Sqrt_1/x?
batch_normalization/Sqrt_1Sqrt%batch_normalization/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization/Sqrt_1?
*batch_normalization/Maximum/ReadVariableOpReadVariableOp3batch_normalization_maximum_readvariableop_resource*
_output_shapes
:*
dtype02,
*batch_normalization/Maximum/ReadVariableOp?
batch_normalization/MaximumMaximum2batch_normalization/Maximum/ReadVariableOp:value:0batch_normalization/Sqrt_1:y:0*
T0*
_output_shapes
:2
batch_normalization/Maximum?
batch_normalization/truedivRealDivbatch_normalization/Sqrt:y:0batch_normalization/Maximum:z:0*
T0*
_output_shapes
:2
batch_normalization/truediv?
&batch_normalization/sub/ReadVariableOpReadVariableOp/batch_normalization_sub_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization/sub/ReadVariableOp?
batch_normalization/subSub,batch_normalization/moments/Squeeze:output:0.batch_normalization/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/sub?
batch_normalization/truediv_1RealDivbatch_normalization/sub:z:0batch_normalization/Maximum:z:0*
T0*
_output_shapes
:2
batch_normalization/truediv_1?
batch_normalization/IdentityIdentity,batch_normalization/moments/Squeeze:output:0^batch_normalization/truediv^batch_normalization/truediv_1*
T0*
_output_shapes
:2
batch_normalization/Identity?
batch_normalization/Identity_1Identitybatch_normalization/Sqrt:y:0^batch_normalization/truediv^batch_normalization/truediv_1*
T0*
_output_shapes
:2 
batch_normalization/Identity_1?
batch_normalization/Identity_2Identity%batch_normalization/Identity:output:0*
T0*
_output_shapes
:2 
batch_normalization/Identity_2?
)batch_normalization/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization/sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)batch_normalization/AssignMovingAvg/decay?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp/batch_normalization_sub_readvariableop_resource*
_output_shapes
:*
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp?
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0'batch_normalization/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization/sub/ReadVariableOp/resource*
_output_shapes
:2)
'batch_normalization/AssignMovingAvg/sub?
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization/sub/ReadVariableOp/resource*
_output_shapes
:2)
'batch_normalization/AssignMovingAvg/mul?
7batch_normalization/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp/batch_normalization_sub_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp'^batch_normalization/sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization/sub/ReadVariableOp/resource*
_output_shapes
 *
dtype029
7batch_normalization/AssignMovingAvg/AssignSubVariableOp?
batch_normalization/Identity_3Identity'batch_normalization/Identity_1:output:0*
T0*
_output_shapes
:2 
batch_normalization/Identity_3?
+batch_normalization/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*F
_class<
:8loc:@batch_normalization/Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization/AssignMovingAvg_1/decay?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp3batch_normalization_maximum_readvariableop_resource*
_output_shapes
:*
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOp?
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0'batch_normalization/Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@batch_normalization/Maximum/ReadVariableOp/resource*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_1/sub?
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*F
_class<
:8loc:@batch_normalization/Maximum/ReadVariableOp/resource*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_1/mul?
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp3batch_normalization_maximum_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp+^batch_normalization/Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*F
_class<
:8loc:@batch_normalization/Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02;
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp?
batch_normalization/Identity_4Identity%batch_normalization/Identity:output:08^batch_normalization/AssignMovingAvg/AssignSubVariableOp:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2 
batch_normalization/Identity_4?
batch_normalization/Identity_5Identity.batch_normalization/moments/Squeeze_1:output:08^batch_normalization/AssignMovingAvg/AssignSubVariableOp:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2 
batch_normalization/Identity_5?
batch_normalization/renorm_rStopGradientbatch_normalization/truediv:z:0*
T0*
_output_shapes
:2
batch_normalization/renorm_r?
batch_normalization/renorm_dStopGradient!batch_normalization/truediv_1:z:0*
T0*
_output_shapes
:2
batch_normalization/renorm_d?
&batch_normalization/mul/ReadVariableOpReadVariableOp/batch_normalization_mul_readvariableop_resource*
_output_shapes
:*
dtype02(
&batch_normalization/mul/ReadVariableOp?
batch_normalization/mulMul%batch_normalization/renorm_r:output:0.batch_normalization/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/mul?
(batch_normalization/mul_1/ReadVariableOpReadVariableOp/batch_normalization_mul_readvariableop_resource*
_output_shapes
:*
dtype02*
(batch_normalization/mul_1/ReadVariableOp?
batch_normalization/mul_1Mul%batch_normalization/renorm_d:output:00batch_normalization/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/mul_1?
(batch_normalization/add_1/ReadVariableOpReadVariableOp1batch_normalization_add_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(batch_normalization/add_1/ReadVariableOp?
batch_normalization/add_1AddV2batch_normalization/mul_1:z:00batch_normalization/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/add_1?
+batch_normalization/AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_2/16381*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization/AssignMovingAvg_2/decay?
4batch_normalization/AssignMovingAvg_2/ReadVariableOpReadVariableOp+batch_normalization_assignmovingavg_2_16381*
_output_shapes
:*
dtype026
4batch_normalization/AssignMovingAvg_2/ReadVariableOp?
)batch_normalization/AssignMovingAvg_2/subSub<batch_normalization/AssignMovingAvg_2/ReadVariableOp:value:0'batch_normalization/Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_2/16381*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_2/sub?
)batch_normalization/AssignMovingAvg_2/mulMul-batch_normalization/AssignMovingAvg_2/sub:z:04batch_normalization/AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_2/16381*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_2/mul?
9batch_normalization/AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOp+batch_normalization_assignmovingavg_2_16381-batch_normalization/AssignMovingAvg_2/mul:z:05^batch_normalization/AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_2/16381*
_output_shapes
 *
dtype02;
9batch_normalization/AssignMovingAvg_2/AssignSubVariableOp
batch_normalization/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization/add_2/y?
batch_normalization/add_2AddV2'batch_normalization/Identity_5:output:0$batch_normalization/add_2/y:output:0*
T0*
_output_shapes
:2
batch_normalization/add_2?
batch_normalization/Sqrt_2Sqrtbatch_normalization/add_2:z:0*
T0*
_output_shapes
:2
batch_normalization/Sqrt_2?
+batch_normalization/AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_3/16390*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization/AssignMovingAvg_3/decay?
4batch_normalization/AssignMovingAvg_3/ReadVariableOpReadVariableOp+batch_normalization_assignmovingavg_3_16390*
_output_shapes
:*
dtype026
4batch_normalization/AssignMovingAvg_3/ReadVariableOp?
)batch_normalization/AssignMovingAvg_3/subSub<batch_normalization/AssignMovingAvg_3/ReadVariableOp:value:0batch_normalization/Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_3/16390*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_3/sub?
)batch_normalization/AssignMovingAvg_3/mulMul-batch_normalization/AssignMovingAvg_3/sub:z:04batch_normalization/AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_3/16390*
_output_shapes
:2+
)batch_normalization/AssignMovingAvg_3/mul?
9batch_normalization/AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOp+batch_normalization_assignmovingavg_3_16390-batch_normalization/AssignMovingAvg_3/mul:z:05^batch_normalization/AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*>
_class4
20loc:@batch_normalization/AssignMovingAvg_3/16390*
_output_shapes
 *
dtype02;
9batch_normalization/AssignMovingAvg_3/AssignSubVariableOp?
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_assignmovingavg_3_16390:^batch_normalization/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOp?
(batch_normalization/mul_2/ReadVariableOpReadVariableOp+batch_normalization_assignmovingavg_3_16390:^batch_normalization/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02*
(batch_normalization/mul_2/ReadVariableOp?
batch_normalization/mul_2Mul*batch_normalization/ReadVariableOp:value:00batch_normalization/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batch_normalization/mul_2
batch_normalization/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization/sub_1/y?
batch_normalization/sub_1Subbatch_normalization/mul_2:z:0$batch_normalization/sub_1/y:output:0*
T0*
_output_shapes
:2
batch_normalization/sub_1?
batch_normalization/ReluRelubatch_normalization/sub_1:z:0*
T0*
_output_shapes
:2
batch_normalization/Relu?
"batch_normalization/AssignNewValueAssignVariableOp(batch_normalization_assignnewvalue_16402&batch_normalization/Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@batch_normalization/AssignNewValue/16402*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/Rsqrt?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:0batch_normalization/mul:z:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1MulIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0%batch_normalization/batchnorm/mul:z:0*
T0*1
_output_shapes
:???????????2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:2%
#batch_normalization/batchnorm/mul_2?
!batch_normalization/batchnorm/subSubbatch_normalization/add_1:z:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????2%
#batch_normalization/batchnorm/add_1?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2D'batch_normalization/batchnorm/add_1:z:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
conv2d/Relu?
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:?????????@@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanmax_pooling2d/MaxPool:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*&
_output_shapes
:@2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencemax_pooling2d/MaxPool:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1
batch_normalization_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_1/add/y?
batch_normalization_1/addAddV20batch_normalization_1/moments/Squeeze_1:output:0$batch_normalization_1/add/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_1/add?
batch_normalization_1/SqrtSqrtbatch_normalization_1/add:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/Sqrt?
batch_normalization_1/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
batch_normalization_1/Sqrt_1/x?
batch_normalization_1/Sqrt_1Sqrt'batch_normalization_1/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_1/Sqrt_1?
,batch_normalization_1/Maximum/ReadVariableOpReadVariableOp5batch_normalization_1_maximum_readvariableop_resource*
_output_shapes
:@*
dtype02.
,batch_normalization_1/Maximum/ReadVariableOp?
batch_normalization_1/MaximumMaximum4batch_normalization_1/Maximum/ReadVariableOp:value:0 batch_normalization_1/Sqrt_1:y:0*
T0*
_output_shapes
:@2
batch_normalization_1/Maximum?
batch_normalization_1/truedivRealDivbatch_normalization_1/Sqrt:y:0!batch_normalization_1/Maximum:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/truediv?
(batch_normalization_1/sub/ReadVariableOpReadVariableOp1batch_normalization_1_sub_readvariableop_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_1/sub/ReadVariableOp?
batch_normalization_1/subSub.batch_normalization_1/moments/Squeeze:output:00batch_normalization_1/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/sub?
batch_normalization_1/truediv_1RealDivbatch_normalization_1/sub:z:0!batch_normalization_1/Maximum:z:0*
T0*
_output_shapes
:@2!
batch_normalization_1/truediv_1?
batch_normalization_1/IdentityIdentity.batch_normalization_1/moments/Squeeze:output:0^batch_normalization_1/truediv ^batch_normalization_1/truediv_1*
T0*
_output_shapes
:@2 
batch_normalization_1/Identity?
 batch_normalization_1/Identity_1Identitybatch_normalization_1/Sqrt:y:0^batch_normalization_1/truediv ^batch_normalization_1/truediv_1*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_1?
 batch_normalization_1/Identity_2Identity'batch_normalization_1/Identity:output:0*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_2?
+batch_normalization_1/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*D
_class:
86loc:@batch_normalization_1/sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_1_sub_readvariableop_resource*
_output_shapes
:@*
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_1/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@batch_normalization_1/sub/ReadVariableOp/resource*
_output_shapes
:@2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@batch_normalization_1/sub/ReadVariableOp/resource*
_output_shapes
:@2+
)batch_normalization_1/AssignMovingAvg/mul?
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp1batch_normalization_1_sub_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp)^batch_normalization_1/sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*D
_class:
86loc:@batch_normalization_1/sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02;
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp?
 batch_normalization_1/Identity_3Identity)batch_normalization_1/Identity_1:output:0*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_3?
-batch_normalization_1/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*H
_class>
<:loc:@batch_normalization_1/Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_1_maximum_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_1/Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*H
_class>
<:loc:@batch_normalization_1/Maximum/ReadVariableOp/resource*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*H
_class>
<:loc:@batch_normalization_1/Maximum/ReadVariableOp/resource*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_1/mul?
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp5batch_normalization_1_maximum_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_1/Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*H
_class>
<:loc:@batch_normalization_1/Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02=
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp?
 batch_normalization_1/Identity_4Identity'batch_normalization_1/Identity:output:0:^batch_normalization_1/AssignMovingAvg/AssignSubVariableOp<^batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_4?
 batch_normalization_1/Identity_5Identity0batch_normalization_1/moments/Squeeze_1:output:0:^batch_normalization_1/AssignMovingAvg/AssignSubVariableOp<^batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2"
 batch_normalization_1/Identity_5?
batch_normalization_1/renorm_rStopGradient!batch_normalization_1/truediv:z:0*
T0*
_output_shapes
:@2 
batch_normalization_1/renorm_r?
batch_normalization_1/renorm_dStopGradient#batch_normalization_1/truediv_1:z:0*
T0*
_output_shapes
:@2 
batch_normalization_1/renorm_d?
(batch_normalization_1/mul/ReadVariableOpReadVariableOp1batch_normalization_1_mul_readvariableop_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_1/mul/ReadVariableOp?
batch_normalization_1/mulMul'batch_normalization_1/renorm_r:output:00batch_normalization_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/mul?
*batch_normalization_1/mul_1/ReadVariableOpReadVariableOp1batch_normalization_1_mul_readvariableop_resource*
_output_shapes
:@*
dtype02,
*batch_normalization_1/mul_1/ReadVariableOp?
batch_normalization_1/mul_1Mul'batch_normalization_1/renorm_d:output:02batch_normalization_1/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/mul_1?
*batch_normalization_1/add_1/ReadVariableOpReadVariableOp3batch_normalization_1_add_1_readvariableop_resource*
_output_shapes
:@*
dtype02,
*batch_normalization_1/add_1/ReadVariableOp?
batch_normalization_1/add_1AddV2batch_normalization_1/mul_1:z:02batch_normalization_1/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/add_1?
-batch_normalization_1/AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_2/16467*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_1/AssignMovingAvg_2/decay?
6batch_normalization_1/AssignMovingAvg_2/ReadVariableOpReadVariableOp-batch_normalization_1_assignmovingavg_2_16467*
_output_shapes
:@*
dtype028
6batch_normalization_1/AssignMovingAvg_2/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_2/subSub>batch_normalization_1/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_1/Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_2/16467*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_2/sub?
+batch_normalization_1/AssignMovingAvg_2/mulMul/batch_normalization_1/AssignMovingAvg_2/sub:z:06batch_normalization_1/AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_2/16467*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_2/mul?
;batch_normalization_1/AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOp-batch_normalization_1_assignmovingavg_2_16467/batch_normalization_1/AssignMovingAvg_2/mul:z:07^batch_normalization_1/AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_2/16467*
_output_shapes
 *
dtype02=
;batch_normalization_1/AssignMovingAvg_2/AssignSubVariableOp?
batch_normalization_1/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_1/add_2/y?
batch_normalization_1/add_2AddV2)batch_normalization_1/Identity_5:output:0&batch_normalization_1/add_2/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_1/add_2?
batch_normalization_1/Sqrt_2Sqrtbatch_normalization_1/add_2:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/Sqrt_2?
-batch_normalization_1/AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_3/16476*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_1/AssignMovingAvg_3/decay?
6batch_normalization_1/AssignMovingAvg_3/ReadVariableOpReadVariableOp-batch_normalization_1_assignmovingavg_3_16476*
_output_shapes
:@*
dtype028
6batch_normalization_1/AssignMovingAvg_3/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_3/subSub>batch_normalization_1/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_1/Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_3/16476*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_3/sub?
+batch_normalization_1/AssignMovingAvg_3/mulMul/batch_normalization_1/AssignMovingAvg_3/sub:z:06batch_normalization_1/AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_3/16476*
_output_shapes
:@2-
+batch_normalization_1/AssignMovingAvg_3/mul?
;batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOp-batch_normalization_1_assignmovingavg_3_16476/batch_normalization_1/AssignMovingAvg_3/mul:z:07^batch_normalization_1/AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_1/AssignMovingAvg_3/16476*
_output_shapes
 *
dtype02=
;batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOp?
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_assignmovingavg_3_16476<^batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02&
$batch_normalization_1/ReadVariableOp?
*batch_normalization_1/mul_2/ReadVariableOpReadVariableOp-batch_normalization_1_assignmovingavg_3_16476<^batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02,
*batch_normalization_1/mul_2/ReadVariableOp?
batch_normalization_1/mul_2Mul,batch_normalization_1/ReadVariableOp:value:02batch_normalization_1/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batch_normalization_1/mul_2?
batch_normalization_1/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_1/sub_1/y?
batch_normalization_1/sub_1Subbatch_normalization_1/mul_2:z:0&batch_normalization_1/sub_1/y:output:0*
T0*
_output_shapes
:@2
batch_normalization_1/sub_1?
batch_normalization_1/ReluRelubatch_normalization_1/sub_1:z:0*
T0*
_output_shapes
:@2
batch_normalization_1/Relu?
$batch_normalization_1/AssignNewValueAssignVariableOp*batch_normalization_1_assignnewvalue_16488(batch_normalization_1/Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@batch_normalization_1/AssignNewValue/16488*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/Rsqrt?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0batch_normalization_1/mul:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1Mulmax_pooling2d/MaxPool:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@@@2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@2'
%batch_normalization_1/batchnorm/mul_2?
#batch_normalization_1/batchnorm/subSubbatch_normalization_1/add_1:z:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????@@@2'
%batch_normalization_1/batchnorm/add_1?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2D)batch_normalization_1/batchnorm/add_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?2
conv2d_1/Relu?
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool?
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_2/moments/mean/reduction_indices?
"batch_normalization_2/moments/meanMean max_pooling2d_1/MaxPool:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2$
"batch_normalization_2/moments/mean?
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*'
_output_shapes
:?2,
*batch_normalization_2/moments/StopGradient?
/batch_normalization_2/moments/SquaredDifferenceSquaredDifference max_pooling2d_1/MaxPool:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?21
/batch_normalization_2/moments/SquaredDifference?
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_2/moments/variance/reduction_indices?
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2(
&batch_normalization_2/moments/variance?
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_2/moments/Squeeze?
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1
batch_normalization_2/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_2/add/y?
batch_normalization_2/addAddV20batch_normalization_2/moments/Squeeze_1:output:0$batch_normalization_2/add/y:output:0*
T0*
_output_shapes	
:?2
batch_normalization_2/add?
batch_normalization_2/SqrtSqrtbatch_normalization_2/add:z:0*
T0*
_output_shapes	
:?2
batch_normalization_2/Sqrt?
batch_normalization_2/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
batch_normalization_2/Sqrt_1/x?
batch_normalization_2/Sqrt_1Sqrt'batch_normalization_2/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_2/Sqrt_1?
,batch_normalization_2/Maximum/ReadVariableOpReadVariableOp5batch_normalization_2_maximum_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,batch_normalization_2/Maximum/ReadVariableOp?
batch_normalization_2/MaximumMaximum4batch_normalization_2/Maximum/ReadVariableOp:value:0 batch_normalization_2/Sqrt_1:y:0*
T0*
_output_shapes	
:?2
batch_normalization_2/Maximum?
batch_normalization_2/truedivRealDivbatch_normalization_2/Sqrt:y:0!batch_normalization_2/Maximum:z:0*
T0*
_output_shapes	
:?2
batch_normalization_2/truediv?
(batch_normalization_2/sub/ReadVariableOpReadVariableOp1batch_normalization_2_sub_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_2/sub/ReadVariableOp?
batch_normalization_2/subSub.batch_normalization_2/moments/Squeeze:output:00batch_normalization_2/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_2/sub?
batch_normalization_2/truediv_1RealDivbatch_normalization_2/sub:z:0!batch_normalization_2/Maximum:z:0*
T0*
_output_shapes	
:?2!
batch_normalization_2/truediv_1?
batch_normalization_2/IdentityIdentity.batch_normalization_2/moments/Squeeze:output:0^batch_normalization_2/truediv ^batch_normalization_2/truediv_1*
T0*
_output_shapes	
:?2 
batch_normalization_2/Identity?
 batch_normalization_2/Identity_1Identitybatch_normalization_2/Sqrt:y:0^batch_normalization_2/truediv ^batch_normalization_2/truediv_1*
T0*
_output_shapes	
:?2"
 batch_normalization_2/Identity_1?
 batch_normalization_2/Identity_2Identity'batch_normalization_2/Identity:output:0*
T0*
_output_shapes	
:?2"
 batch_normalization_2/Identity_2?
+batch_normalization_2/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*D
_class:
86loc:@batch_normalization_2/sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_2/AssignMovingAvg/decay?
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_2_sub_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOp?
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_2/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@batch_normalization_2/sub/ReadVariableOp/resource*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/sub?
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@batch_normalization_2/sub/ReadVariableOp/resource*
_output_shapes	
:?2+
)batch_normalization_2/AssignMovingAvg/mul?
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp1batch_normalization_2_sub_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp)^batch_normalization_2/sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*D
_class:
86loc:@batch_normalization_2/sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02;
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp?
 batch_normalization_2/Identity_3Identity)batch_normalization_2/Identity_1:output:0*
T0*
_output_shapes	
:?2"
 batch_normalization_2/Identity_3?
-batch_normalization_2/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*H
_class>
<:loc:@batch_normalization_2/Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_2/AssignMovingAvg_1/decay?
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_2_maximum_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_2/Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*H
_class>
<:loc:@batch_normalization_2/Maximum/ReadVariableOp/resource*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/sub?
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*H
_class>
<:loc:@batch_normalization_2/Maximum/ReadVariableOp/resource*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_1/mul?
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp5batch_normalization_2_maximum_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_2/Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*H
_class>
<:loc:@batch_normalization_2/Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02=
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp?
 batch_normalization_2/Identity_4Identity'batch_normalization_2/Identity:output:0:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2"
 batch_normalization_2/Identity_4?
 batch_normalization_2/Identity_5Identity0batch_normalization_2/moments/Squeeze_1:output:0:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2"
 batch_normalization_2/Identity_5?
batch_normalization_2/renorm_rStopGradient!batch_normalization_2/truediv:z:0*
T0*
_output_shapes	
:?2 
batch_normalization_2/renorm_r?
batch_normalization_2/renorm_dStopGradient#batch_normalization_2/truediv_1:z:0*
T0*
_output_shapes	
:?2 
batch_normalization_2/renorm_d?
(batch_normalization_2/mul/ReadVariableOpReadVariableOp1batch_normalization_2_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_2/mul/ReadVariableOp?
batch_normalization_2/mulMul'batch_normalization_2/renorm_r:output:00batch_normalization_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_2/mul?
*batch_normalization_2/mul_1/ReadVariableOpReadVariableOp1batch_normalization_2_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*batch_normalization_2/mul_1/ReadVariableOp?
batch_normalization_2/mul_1Mul'batch_normalization_2/renorm_d:output:02batch_normalization_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_2/mul_1?
*batch_normalization_2/add_1/ReadVariableOpReadVariableOp3batch_normalization_2_add_1_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*batch_normalization_2/add_1/ReadVariableOp?
batch_normalization_2/add_1AddV2batch_normalization_2/mul_1:z:02batch_normalization_2/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_2/add_1?
-batch_normalization_2/AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_2/16553*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_2/AssignMovingAvg_2/decay?
6batch_normalization_2/AssignMovingAvg_2/ReadVariableOpReadVariableOp-batch_normalization_2_assignmovingavg_2_16553*
_output_shapes	
:?*
dtype028
6batch_normalization_2/AssignMovingAvg_2/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_2/subSub>batch_normalization_2/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_2/Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_2/16553*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_2/sub?
+batch_normalization_2/AssignMovingAvg_2/mulMul/batch_normalization_2/AssignMovingAvg_2/sub:z:06batch_normalization_2/AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_2/16553*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_2/mul?
;batch_normalization_2/AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOp-batch_normalization_2_assignmovingavg_2_16553/batch_normalization_2/AssignMovingAvg_2/mul:z:07^batch_normalization_2/AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_2/16553*
_output_shapes
 *
dtype02=
;batch_normalization_2/AssignMovingAvg_2/AssignSubVariableOp?
batch_normalization_2/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_2/add_2/y?
batch_normalization_2/add_2AddV2)batch_normalization_2/Identity_5:output:0&batch_normalization_2/add_2/y:output:0*
T0*
_output_shapes	
:?2
batch_normalization_2/add_2?
batch_normalization_2/Sqrt_2Sqrtbatch_normalization_2/add_2:z:0*
T0*
_output_shapes	
:?2
batch_normalization_2/Sqrt_2?
-batch_normalization_2/AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_3/16562*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_2/AssignMovingAvg_3/decay?
6batch_normalization_2/AssignMovingAvg_3/ReadVariableOpReadVariableOp-batch_normalization_2_assignmovingavg_3_16562*
_output_shapes	
:?*
dtype028
6batch_normalization_2/AssignMovingAvg_3/ReadVariableOp?
+batch_normalization_2/AssignMovingAvg_3/subSub>batch_normalization_2/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_2/Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_3/16562*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_3/sub?
+batch_normalization_2/AssignMovingAvg_3/mulMul/batch_normalization_2/AssignMovingAvg_3/sub:z:06batch_normalization_2/AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_3/16562*
_output_shapes	
:?2-
+batch_normalization_2/AssignMovingAvg_3/mul?
;batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOp-batch_normalization_2_assignmovingavg_3_16562/batch_normalization_2/AssignMovingAvg_3/mul:z:07^batch_normalization_2/AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_3/16562*
_output_shapes
 *
dtype02=
;batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOp?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_assignmovingavg_3_16562<^batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
*batch_normalization_2/mul_2/ReadVariableOpReadVariableOp-batch_normalization_2_assignmovingavg_3_16562<^batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02,
*batch_normalization_2/mul_2/ReadVariableOp?
batch_normalization_2/mul_2Mul,batch_normalization_2/ReadVariableOp:value:02batch_normalization_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_2/mul_2?
batch_normalization_2/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_2/sub_1/y?
batch_normalization_2/sub_1Subbatch_normalization_2/mul_2:z:0&batch_normalization_2/sub_1/y:output:0*
T0*
_output_shapes	
:?2
batch_normalization_2/sub_1?
batch_normalization_2/ReluRelubatch_normalization_2/sub_1:z:0*
T0*
_output_shapes	
:?2
batch_normalization_2/Relu?
$batch_normalization_2/AssignNewValueAssignVariableOp*batch_normalization_2_assignnewvalue_16574(batch_normalization_2/Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@batch_normalization_2/AssignNewValue/16574*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue?
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_2/batchnorm/add/y?
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/add?
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/Rsqrt?
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0batch_normalization_2/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/mul?
%batch_normalization_2/batchnorm/mul_1Mul max_pooling2d_1/MaxPool:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*0
_output_shapes
:?????????  ?2'
%batch_normalization_2/batchnorm/mul_1?
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_2/batchnorm/mul_2?
#batch_normalization_2/batchnorm/subSubbatch_normalization_2/add_1:z:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_2/batchnorm/sub?
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????  ?2'
%batch_normalization_2/batchnorm/add_1?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2D)batch_normalization_2/batchnorm/add_1:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
conv2d_2/Relu?
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool?
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          26
4batch_normalization_3/moments/mean/reduction_indices?
"batch_normalization_3/moments/meanMean max_pooling2d_2/MaxPool:output:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2$
"batch_normalization_3/moments/mean?
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*'
_output_shapes
:?2,
*batch_normalization_3/moments/StopGradient?
/batch_normalization_3/moments/SquaredDifferenceSquaredDifference max_pooling2d_2/MaxPool:output:03batch_normalization_3/moments/StopGradient:output:0*
T0*0
_output_shapes
:??????????21
/batch_normalization_3/moments/SquaredDifference?
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2:
8batch_normalization_3/moments/variance/reduction_indices?
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2(
&batch_normalization_3/moments/variance?
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2'
%batch_normalization_3/moments/Squeeze?
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2)
'batch_normalization_3/moments/Squeeze_1
batch_normalization_3/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_3/add/y?
batch_normalization_3/addAddV20batch_normalization_3/moments/Squeeze_1:output:0$batch_normalization_3/add/y:output:0*
T0*
_output_shapes	
:?2
batch_normalization_3/add?
batch_normalization_3/SqrtSqrtbatch_normalization_3/add:z:0*
T0*
_output_shapes	
:?2
batch_normalization_3/Sqrt?
batch_normalization_3/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2 
batch_normalization_3/Sqrt_1/x?
batch_normalization_3/Sqrt_1Sqrt'batch_normalization_3/Sqrt_1/x:output:0*
T0*
_output_shapes
: 2
batch_normalization_3/Sqrt_1?
,batch_normalization_3/Maximum/ReadVariableOpReadVariableOp5batch_normalization_3_maximum_readvariableop_resource*
_output_shapes	
:?*
dtype02.
,batch_normalization_3/Maximum/ReadVariableOp?
batch_normalization_3/MaximumMaximum4batch_normalization_3/Maximum/ReadVariableOp:value:0 batch_normalization_3/Sqrt_1:y:0*
T0*
_output_shapes	
:?2
batch_normalization_3/Maximum?
batch_normalization_3/truedivRealDivbatch_normalization_3/Sqrt:y:0!batch_normalization_3/Maximum:z:0*
T0*
_output_shapes	
:?2
batch_normalization_3/truediv?
(batch_normalization_3/sub/ReadVariableOpReadVariableOp1batch_normalization_3_sub_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_3/sub/ReadVariableOp?
batch_normalization_3/subSub.batch_normalization_3/moments/Squeeze:output:00batch_normalization_3/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_3/sub?
batch_normalization_3/truediv_1RealDivbatch_normalization_3/sub:z:0!batch_normalization_3/Maximum:z:0*
T0*
_output_shapes	
:?2!
batch_normalization_3/truediv_1?
batch_normalization_3/IdentityIdentity.batch_normalization_3/moments/Squeeze:output:0^batch_normalization_3/truediv ^batch_normalization_3/truediv_1*
T0*
_output_shapes	
:?2 
batch_normalization_3/Identity?
 batch_normalization_3/Identity_1Identitybatch_normalization_3/Sqrt:y:0^batch_normalization_3/truediv ^batch_normalization_3/truediv_1*
T0*
_output_shapes	
:?2"
 batch_normalization_3/Identity_1?
 batch_normalization_3/Identity_2Identity'batch_normalization_3/Identity:output:0*
T0*
_output_shapes	
:?2"
 batch_normalization_3/Identity_2?
+batch_normalization_3/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*D
_class:
86loc:@batch_normalization_3/sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_3/AssignMovingAvg/decay?
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_3_sub_readvariableop_resource*
_output_shapes	
:?*
dtype026
4batch_normalization_3/AssignMovingAvg/ReadVariableOp?
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_3/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@batch_normalization_3/sub/ReadVariableOp/resource*
_output_shapes	
:?2+
)batch_normalization_3/AssignMovingAvg/sub?
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*D
_class:
86loc:@batch_normalization_3/sub/ReadVariableOp/resource*
_output_shapes	
:?2+
)batch_normalization_3/AssignMovingAvg/mul?
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp1batch_normalization_3_sub_readvariableop_resource-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp)^batch_normalization_3/sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*D
_class:
86loc:@batch_normalization_3/sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02;
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp?
 batch_normalization_3/Identity_3Identity)batch_normalization_3/Identity_1:output:0*
T0*
_output_shapes	
:?2"
 batch_normalization_3/Identity_3?
-batch_normalization_3/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*H
_class>
<:loc:@batch_normalization_3/Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_3/AssignMovingAvg_1/decay?
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_3_maximum_readvariableop_resource*
_output_shapes	
:?*
dtype028
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_3/Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*H
_class>
<:loc:@batch_normalization_3/Maximum/ReadVariableOp/resource*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_1/sub?
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*H
_class>
<:loc:@batch_normalization_3/Maximum/ReadVariableOp/resource*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_1/mul?
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp5batch_normalization_3_maximum_readvariableop_resource/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_3/Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*H
_class>
<:loc:@batch_normalization_3/Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02=
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp?
 batch_normalization_3/Identity_4Identity'batch_normalization_3/Identity:output:0:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2"
 batch_normalization_3/Identity_4?
 batch_normalization_3/Identity_5Identity0batch_normalization_3/moments/Squeeze_1:output:0:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2"
 batch_normalization_3/Identity_5?
batch_normalization_3/renorm_rStopGradient!batch_normalization_3/truediv:z:0*
T0*
_output_shapes	
:?2 
batch_normalization_3/renorm_r?
batch_normalization_3/renorm_dStopGradient#batch_normalization_3/truediv_1:z:0*
T0*
_output_shapes	
:?2 
batch_normalization_3/renorm_d?
(batch_normalization_3/mul/ReadVariableOpReadVariableOp1batch_normalization_3_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_3/mul/ReadVariableOp?
batch_normalization_3/mulMul'batch_normalization_3/renorm_r:output:00batch_normalization_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_3/mul?
*batch_normalization_3/mul_1/ReadVariableOpReadVariableOp1batch_normalization_3_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*batch_normalization_3/mul_1/ReadVariableOp?
batch_normalization_3/mul_1Mul'batch_normalization_3/renorm_d:output:02batch_normalization_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_3/mul_1?
*batch_normalization_3/add_1/ReadVariableOpReadVariableOp3batch_normalization_3_add_1_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*batch_normalization_3/add_1/ReadVariableOp?
batch_normalization_3/add_1AddV2batch_normalization_3/mul_1:z:02batch_normalization_3/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_3/add_1?
-batch_normalization_3/AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_2/16639*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_3/AssignMovingAvg_2/decay?
6batch_normalization_3/AssignMovingAvg_2/ReadVariableOpReadVariableOp-batch_normalization_3_assignmovingavg_2_16639*
_output_shapes	
:?*
dtype028
6batch_normalization_3/AssignMovingAvg_2/ReadVariableOp?
+batch_normalization_3/AssignMovingAvg_2/subSub>batch_normalization_3/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_3/Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_2/16639*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_2/sub?
+batch_normalization_3/AssignMovingAvg_2/mulMul/batch_normalization_3/AssignMovingAvg_2/sub:z:06batch_normalization_3/AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_2/16639*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_2/mul?
;batch_normalization_3/AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOp-batch_normalization_3_assignmovingavg_2_16639/batch_normalization_3/AssignMovingAvg_2/mul:z:07^batch_normalization_3/AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_2/16639*
_output_shapes
 *
dtype02=
;batch_normalization_3/AssignMovingAvg_2/AssignSubVariableOp?
batch_normalization_3/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_3/add_2/y?
batch_normalization_3/add_2AddV2)batch_normalization_3/Identity_5:output:0&batch_normalization_3/add_2/y:output:0*
T0*
_output_shapes	
:?2
batch_normalization_3/add_2?
batch_normalization_3/Sqrt_2Sqrtbatch_normalization_3/add_2:z:0*
T0*
_output_shapes	
:?2
batch_normalization_3/Sqrt_2?
-batch_normalization_3/AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_3/16648*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_3/AssignMovingAvg_3/decay?
6batch_normalization_3/AssignMovingAvg_3/ReadVariableOpReadVariableOp-batch_normalization_3_assignmovingavg_3_16648*
_output_shapes	
:?*
dtype028
6batch_normalization_3/AssignMovingAvg_3/ReadVariableOp?
+batch_normalization_3/AssignMovingAvg_3/subSub>batch_normalization_3/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_3/Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_3/16648*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_3/sub?
+batch_normalization_3/AssignMovingAvg_3/mulMul/batch_normalization_3/AssignMovingAvg_3/sub:z:06batch_normalization_3/AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_3/16648*
_output_shapes	
:?2-
+batch_normalization_3/AssignMovingAvg_3/mul?
;batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOp-batch_normalization_3_assignmovingavg_3_16648/batch_normalization_3/AssignMovingAvg_3/mul:z:07^batch_normalization_3/AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_3/AssignMovingAvg_3/16648*
_output_shapes
 *
dtype02=
;batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOp?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_assignmovingavg_3_16648<^batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02&
$batch_normalization_3/ReadVariableOp?
*batch_normalization_3/mul_2/ReadVariableOpReadVariableOp-batch_normalization_3_assignmovingavg_3_16648<^batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02,
*batch_normalization_3/mul_2/ReadVariableOp?
batch_normalization_3/mul_2Mul,batch_normalization_3/ReadVariableOp:value:02batch_normalization_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batch_normalization_3/mul_2?
batch_normalization_3/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batch_normalization_3/sub_1/y?
batch_normalization_3/sub_1Subbatch_normalization_3/mul_2:z:0&batch_normalization_3/sub_1/y:output:0*
T0*
_output_shapes	
:?2
batch_normalization_3/sub_1?
batch_normalization_3/ReluRelubatch_normalization_3/sub_1:z:0*
T0*
_output_shapes	
:?2
batch_normalization_3/Relu?
$batch_normalization_3/AssignNewValueAssignVariableOp*batch_normalization_3_assignnewvalue_16660(batch_normalization_3/Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@batch_normalization_3/AssignNewValue/16660*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValue?
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_3/batchnorm/add/y?
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/add?
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/Rsqrt?
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0batch_normalization_3/mul:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/mul?
%batch_normalization_3/batchnorm/mul_1Mul max_pooling2d_2/MaxPool:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/mul_1?
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%batch_normalization_3/batchnorm/mul_2?
#batch_normalization_3/batchnorm/subSubbatch_normalization_3/add_1:z:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#batch_normalization_3/batchnorm/sub?
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*0
_output_shapes
:??????????2'
%batch_normalization_3/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshape)batch_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Sigmoid?
IdentityIdentitydense_1/Sigmoid:y:08^batch_normalization/AssignMovingAvg/AssignSubVariableOp3^batch_normalization/AssignMovingAvg/ReadVariableOp:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp5^batch_normalization/AssignMovingAvg_1/ReadVariableOp:^batch_normalization/AssignMovingAvg_2/AssignSubVariableOp5^batch_normalization/AssignMovingAvg_2/ReadVariableOp:^batch_normalization/AssignMovingAvg_3/AssignSubVariableOp5^batch_normalization/AssignMovingAvg_3/ReadVariableOp#^batch_normalization/AssignNewValue+^batch_normalization/Maximum/ReadVariableOp#^batch_normalization/ReadVariableOp)^batch_normalization/add_1/ReadVariableOp'^batch_normalization/mul/ReadVariableOp)^batch_normalization/mul_1/ReadVariableOp)^batch_normalization/mul_2/ReadVariableOp'^batch_normalization/sub/ReadVariableOp:^batch_normalization_1/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_1/AssignMovingAvg/ReadVariableOp<^batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp<^batch_normalization_1/AssignMovingAvg_2/AssignSubVariableOp7^batch_normalization_1/AssignMovingAvg_2/ReadVariableOp<^batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOp7^batch_normalization_1/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_1/AssignNewValue-^batch_normalization_1/Maximum/ReadVariableOp%^batch_normalization_1/ReadVariableOp+^batch_normalization_1/add_1/ReadVariableOp)^batch_normalization_1/mul/ReadVariableOp+^batch_normalization_1/mul_1/ReadVariableOp+^batch_normalization_1/mul_2/ReadVariableOp)^batch_normalization_1/sub/ReadVariableOp:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_2/AssignMovingAvg/ReadVariableOp<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp<^batch_normalization_2/AssignMovingAvg_2/AssignSubVariableOp7^batch_normalization_2/AssignMovingAvg_2/ReadVariableOp<^batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOp7^batch_normalization_2/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_2/AssignNewValue-^batch_normalization_2/Maximum/ReadVariableOp%^batch_normalization_2/ReadVariableOp+^batch_normalization_2/add_1/ReadVariableOp)^batch_normalization_2/mul/ReadVariableOp+^batch_normalization_2/mul_1/ReadVariableOp+^batch_normalization_2/mul_2/ReadVariableOp)^batch_normalization_2/sub/ReadVariableOp:^batch_normalization_3/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_3/AssignMovingAvg/ReadVariableOp<^batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp<^batch_normalization_3/AssignMovingAvg_2/AssignSubVariableOp7^batch_normalization_3/AssignMovingAvg_2/ReadVariableOp<^batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOp7^batch_normalization_3/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_3/AssignNewValue-^batch_normalization_3/Maximum/ReadVariableOp%^batch_normalization_3/ReadVariableOp+^batch_normalization_3/add_1/ReadVariableOp)^batch_normalization_3/mul/ReadVariableOp+^batch_normalization_3/mul_1/ReadVariableOp+^batch_normalization_3/mul_2/ReadVariableOp)^batch_normalization_3/sub/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp1^random_rotation/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::::::::::2r
7batch_normalization/AssignMovingAvg/AssignSubVariableOp7batch_normalization/AssignMovingAvg/AssignSubVariableOp2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2v
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp2l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2v
9batch_normalization/AssignMovingAvg_2/AssignSubVariableOp9batch_normalization/AssignMovingAvg_2/AssignSubVariableOp2l
4batch_normalization/AssignMovingAvg_2/ReadVariableOp4batch_normalization/AssignMovingAvg_2/ReadVariableOp2v
9batch_normalization/AssignMovingAvg_3/AssignSubVariableOp9batch_normalization/AssignMovingAvg_3/AssignSubVariableOp2l
4batch_normalization/AssignMovingAvg_3/ReadVariableOp4batch_normalization/AssignMovingAvg_3/ReadVariableOp2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2X
*batch_normalization/Maximum/ReadVariableOp*batch_normalization/Maximum/ReadVariableOp2H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2T
(batch_normalization/add_1/ReadVariableOp(batch_normalization/add_1/ReadVariableOp2P
&batch_normalization/mul/ReadVariableOp&batch_normalization/mul/ReadVariableOp2T
(batch_normalization/mul_1/ReadVariableOp(batch_normalization/mul_1/ReadVariableOp2T
(batch_normalization/mul_2/ReadVariableOp(batch_normalization/mul_2/ReadVariableOp2P
&batch_normalization/sub/ReadVariableOp&batch_normalization/sub/ReadVariableOp2v
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2z
;batch_normalization_1/AssignMovingAvg_2/AssignSubVariableOp;batch_normalization_1/AssignMovingAvg_2/AssignSubVariableOp2p
6batch_normalization_1/AssignMovingAvg_2/ReadVariableOp6batch_normalization_1/AssignMovingAvg_2/ReadVariableOp2z
;batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOp;batch_normalization_1/AssignMovingAvg_3/AssignSubVariableOp2p
6batch_normalization_1/AssignMovingAvg_3/ReadVariableOp6batch_normalization_1/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2\
,batch_normalization_1/Maximum/ReadVariableOp,batch_normalization_1/Maximum/ReadVariableOp2L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2X
*batch_normalization_1/add_1/ReadVariableOp*batch_normalization_1/add_1/ReadVariableOp2T
(batch_normalization_1/mul/ReadVariableOp(batch_normalization_1/mul/ReadVariableOp2X
*batch_normalization_1/mul_1/ReadVariableOp*batch_normalization_1/mul_1/ReadVariableOp2X
*batch_normalization_1/mul_2/ReadVariableOp*batch_normalization_1/mul_2/ReadVariableOp2T
(batch_normalization_1/sub/ReadVariableOp(batch_normalization_1/sub/ReadVariableOp2v
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2z
;batch_normalization_2/AssignMovingAvg_2/AssignSubVariableOp;batch_normalization_2/AssignMovingAvg_2/AssignSubVariableOp2p
6batch_normalization_2/AssignMovingAvg_2/ReadVariableOp6batch_normalization_2/AssignMovingAvg_2/ReadVariableOp2z
;batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOp;batch_normalization_2/AssignMovingAvg_3/AssignSubVariableOp2p
6batch_normalization_2/AssignMovingAvg_3/ReadVariableOp6batch_normalization_2/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2\
,batch_normalization_2/Maximum/ReadVariableOp,batch_normalization_2/Maximum/ReadVariableOp2L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2X
*batch_normalization_2/add_1/ReadVariableOp*batch_normalization_2/add_1/ReadVariableOp2T
(batch_normalization_2/mul/ReadVariableOp(batch_normalization_2/mul/ReadVariableOp2X
*batch_normalization_2/mul_1/ReadVariableOp*batch_normalization_2/mul_1/ReadVariableOp2X
*batch_normalization_2/mul_2/ReadVariableOp*batch_normalization_2/mul_2/ReadVariableOp2T
(batch_normalization_2/sub/ReadVariableOp(batch_normalization_2/sub/ReadVariableOp2v
9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp9batch_normalization_3/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_3/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2z
;batch_normalization_3/AssignMovingAvg_2/AssignSubVariableOp;batch_normalization_3/AssignMovingAvg_2/AssignSubVariableOp2p
6batch_normalization_3/AssignMovingAvg_2/ReadVariableOp6batch_normalization_3/AssignMovingAvg_2/ReadVariableOp2z
;batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOp;batch_normalization_3/AssignMovingAvg_3/AssignSubVariableOp2p
6batch_normalization_3/AssignMovingAvg_3/ReadVariableOp6batch_normalization_3/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2\
,batch_normalization_3/Maximum/ReadVariableOp,batch_normalization_3/Maximum/ReadVariableOp2L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2X
*batch_normalization_3/add_1/ReadVariableOp*batch_normalization_3/add_1/ReadVariableOp2T
(batch_normalization_3/mul/ReadVariableOp(batch_normalization_3/mul/ReadVariableOp2X
*batch_normalization_3/mul_1/ReadVariableOp*batch_normalization_3/mul_1/ReadVariableOp2X
*batch_normalization_3/mul_2/ReadVariableOp*batch_normalization_3/mul_2/ReadVariableOp2T
(batch_normalization_3/sub/ReadVariableOp(batch_normalization_3/sub/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2d
0random_rotation/stateful_uniform/StatefulUniform0random_rotation/stateful_uniform/StatefulUniform:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?0
!__inference__traced_restore_18671
file_prefix.
*assignvariableop_batch_normalization_gamma/
+assignvariableop_1_batch_normalization_beta6
2assignvariableop_2_batch_normalization_moving_mean:
6assignvariableop_3_batch_normalization_moving_variance8
4assignvariableop_4_batch_normalization_moving_stddev6
2assignvariableop_5_batch_normalization_renorm_mean8
4assignvariableop_6_batch_normalization_renorm_stddev$
 assignvariableop_7_conv2d_kernel"
assignvariableop_8_conv2d_bias2
.assignvariableop_9_batch_normalization_1_gamma2
.assignvariableop_10_batch_normalization_1_beta9
5assignvariableop_11_batch_normalization_1_moving_mean=
9assignvariableop_12_batch_normalization_1_moving_variance;
7assignvariableop_13_batch_normalization_1_moving_stddev9
5assignvariableop_14_batch_normalization_1_renorm_mean;
7assignvariableop_15_batch_normalization_1_renorm_stddev'
#assignvariableop_16_conv2d_1_kernel%
!assignvariableop_17_conv2d_1_bias3
/assignvariableop_18_batch_normalization_2_gamma2
.assignvariableop_19_batch_normalization_2_beta9
5assignvariableop_20_batch_normalization_2_moving_mean=
9assignvariableop_21_batch_normalization_2_moving_variance;
7assignvariableop_22_batch_normalization_2_moving_stddev9
5assignvariableop_23_batch_normalization_2_renorm_mean;
7assignvariableop_24_batch_normalization_2_renorm_stddev'
#assignvariableop_25_conv2d_2_kernel%
!assignvariableop_26_conv2d_2_bias3
/assignvariableop_27_batch_normalization_3_gamma2
.assignvariableop_28_batch_normalization_3_beta9
5assignvariableop_29_batch_normalization_3_moving_mean=
9assignvariableop_30_batch_normalization_3_moving_variance;
7assignvariableop_31_batch_normalization_3_moving_stddev9
5assignvariableop_32_batch_normalization_3_renorm_mean;
7assignvariableop_33_batch_normalization_3_renorm_stddev$
 assignvariableop_34_dense_kernel"
assignvariableop_35_dense_bias&
"assignvariableop_36_dense_1_kernel$
 assignvariableop_37_dense_1_bias!
assignvariableop_38_adam_iter#
assignvariableop_39_adam_beta_1#
assignvariableop_40_adam_beta_2"
assignvariableop_41_adam_decay*
&assignvariableop_42_adam_learning_rate 
assignvariableop_43_variable"
assignvariableop_44_variable_1
assignvariableop_45_total
assignvariableop_46_count
assignvariableop_47_total_1
assignvariableop_48_count_18
4assignvariableop_49_adam_batch_normalization_gamma_m7
3assignvariableop_50_adam_batch_normalization_beta_m,
(assignvariableop_51_adam_conv2d_kernel_m*
&assignvariableop_52_adam_conv2d_bias_m:
6assignvariableop_53_adam_batch_normalization_1_gamma_m9
5assignvariableop_54_adam_batch_normalization_1_beta_m.
*assignvariableop_55_adam_conv2d_1_kernel_m,
(assignvariableop_56_adam_conv2d_1_bias_m:
6assignvariableop_57_adam_batch_normalization_2_gamma_m9
5assignvariableop_58_adam_batch_normalization_2_beta_m.
*assignvariableop_59_adam_conv2d_2_kernel_m,
(assignvariableop_60_adam_conv2d_2_bias_m:
6assignvariableop_61_adam_batch_normalization_3_gamma_m9
5assignvariableop_62_adam_batch_normalization_3_beta_m+
'assignvariableop_63_adam_dense_kernel_m)
%assignvariableop_64_adam_dense_bias_m-
)assignvariableop_65_adam_dense_1_kernel_m+
'assignvariableop_66_adam_dense_1_bias_m8
4assignvariableop_67_adam_batch_normalization_gamma_v7
3assignvariableop_68_adam_batch_normalization_beta_v,
(assignvariableop_69_adam_conv2d_kernel_v*
&assignvariableop_70_adam_conv2d_bias_v:
6assignvariableop_71_adam_batch_normalization_1_gamma_v9
5assignvariableop_72_adam_batch_normalization_1_beta_v.
*assignvariableop_73_adam_conv2d_1_kernel_v,
(assignvariableop_74_adam_conv2d_1_bias_v:
6assignvariableop_75_adam_batch_normalization_2_gamma_v9
5assignvariableop_76_adam_batch_normalization_2_beta_v.
*assignvariableop_77_adam_conv2d_2_kernel_v,
(assignvariableop_78_adam_conv2d_2_bias_v:
6assignvariableop_79_adam_batch_normalization_3_gamma_v9
5assignvariableop_80_adam_batch_normalization_3_beta_v+
'assignvariableop_81_adam_dense_kernel_v)
%assignvariableop_82_adam_dense_bias_v-
)assignvariableop_83_adam_dense_1_kernel_v+
'assignvariableop_84_adam_dense_1_bias_v
identity_86??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_9?.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?-
value?-B?-VB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*d
dtypesZ
X2V			2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp*assignvariableop_batch_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp+assignvariableop_1_batch_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp2assignvariableop_2_batch_normalization_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp6assignvariableop_3_batch_normalization_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_moving_stddevIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp2assignvariableop_5_batch_normalization_renorm_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp4assignvariableop_6_batch_normalization_renorm_stddevIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv2d_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_1_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_1_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_1_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_1_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp7assignvariableop_13_batch_normalization_1_moving_stddevIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp5assignvariableop_14_batch_normalization_1_renorm_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp7assignvariableop_15_batch_normalization_1_renorm_stddevIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_2_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp.assignvariableop_19_batch_normalization_2_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp5assignvariableop_20_batch_normalization_2_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp9assignvariableop_21_batch_normalization_2_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_2_moving_stddevIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp5assignvariableop_23_batch_normalization_2_renorm_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp7assignvariableop_24_batch_normalization_2_renorm_stddevIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_2_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp!assignvariableop_26_conv2d_2_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_3_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp.assignvariableop_28_batch_normalization_3_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp5assignvariableop_29_batch_normalization_3_moving_meanIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp9assignvariableop_30_batch_normalization_3_moving_varianceIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp7assignvariableop_31_batch_normalization_3_moving_stddevIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp5assignvariableop_32_batch_normalization_3_renorm_meanIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp7assignvariableop_33_batch_normalization_3_renorm_stddevIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp assignvariableop_34_dense_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_dense_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_1_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_1_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_iterIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_beta_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_beta_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_decayIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_learning_rateIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_variableIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_variable_1Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpassignvariableop_47_total_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_count_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp4assignvariableop_49_adam_batch_normalization_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp3assignvariableop_50_adam_batch_normalization_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_conv2d_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_conv2d_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_batch_normalization_1_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp5assignvariableop_54_adam_batch_normalization_1_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_1_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_conv2d_1_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp6assignvariableop_57_adam_batch_normalization_2_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp5assignvariableop_58_adam_batch_normalization_2_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_conv2d_2_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_conv2d_2_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp6assignvariableop_61_adam_batch_normalization_3_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp5assignvariableop_62_adam_batch_normalization_3_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp'assignvariableop_63_adam_dense_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp%assignvariableop_64_adam_dense_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_dense_1_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_dense_1_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp4assignvariableop_67_adam_batch_normalization_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp3assignvariableop_68_adam_batch_normalization_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp(assignvariableop_69_adam_conv2d_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp&assignvariableop_70_adam_conv2d_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_batch_normalization_1_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp5assignvariableop_72_adam_batch_normalization_1_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_conv2d_1_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_conv2d_1_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adam_batch_normalization_2_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp5assignvariableop_76_adam_batch_normalization_2_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_conv2d_2_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_conv2d_2_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_batch_normalization_3_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp5assignvariableop_80_adam_batch_normalization_3_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp'assignvariableop_81_adam_dense_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp%assignvariableop_82_adam_dense_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp)assignvariableop_83_adam_dense_1_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp'assignvariableop_84_adam_dense_1_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_849
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_85Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_85?
Identity_86IdentityIdentity_85:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_86"#
identity_86Identity_86:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Χ
?&
__inference__traced_save_18406
file_prefix8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop@
<savev2_batch_normalization_moving_stddev_read_readvariableop>
:savev2_batch_normalization_renorm_mean_read_readvariableop@
<savev2_batch_normalization_renorm_stddev_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableopB
>savev2_batch_normalization_1_moving_stddev_read_readvariableop@
<savev2_batch_normalization_1_renorm_mean_read_readvariableopB
>savev2_batch_normalization_1_renorm_stddev_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableopB
>savev2_batch_normalization_2_moving_stddev_read_readvariableop@
<savev2_batch_normalization_2_renorm_mean_read_readvariableopB
>savev2_batch_normalization_2_renorm_stddev_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableopB
>savev2_batch_normalization_3_moving_stddev_read_readvariableop@
<savev2_batch_normalization_3_renorm_mean_read_readvariableopB
>savev2_batch_normalization_3_renorm_stddev_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?-
value?-B?-VB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB2layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB2layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?%
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop<savev2_batch_normalization_moving_stddev_read_readvariableop:savev2_batch_normalization_renorm_mean_read_readvariableop<savev2_batch_normalization_renorm_stddev_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop>savev2_batch_normalization_1_moving_stddev_read_readvariableop<savev2_batch_normalization_1_renorm_mean_read_readvariableop>savev2_batch_normalization_1_renorm_stddev_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop>savev2_batch_normalization_2_moving_stddev_read_readvariableop<savev2_batch_normalization_2_renorm_mean_read_readvariableop>savev2_batch_normalization_2_renorm_stddev_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop>savev2_batch_normalization_3_moving_stddev_read_readvariableop<savev2_batch_normalization_3_renorm_mean_read_readvariableop>savev2_batch_normalization_3_renorm_stddev_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop<savev2_adam_batch_normalization_3_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop<savev2_adam_batch_normalization_3_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *d
dtypesZ
X2V			2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::::@:@:@:@:@:@:@:@:@:@?:?:?:?:?:?:?:?:?:??:?:?:?:?:?:?:?:?:
??:::: : : : : ::: : : : :::@:@:@:@:@?:?:?:?:??:?:?:?:
??::::::@:@:@:@:@?:?:?:?:??:?:?:?:
??:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??: $

_output_shapes
::$% 

_output_shapes

:: &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: : ,

_output_shapes
:: -

_output_shapes
::.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: : 2

_output_shapes
:: 3

_output_shapes
::,4(
&
_output_shapes
:@: 5

_output_shapes
:@: 6

_output_shapes
:@: 7

_output_shapes
:@:-8)
'
_output_shapes
:@?:!9

_output_shapes	
:?:!:

_output_shapes	
:?:!;

_output_shapes	
:?:.<*
(
_output_shapes
:??:!=

_output_shapes	
:?:!>

_output_shapes	
:?:!?

_output_shapes	
:?:&@"
 
_output_shapes
:
??: A

_output_shapes
::$B 

_output_shapes

:: C

_output_shapes
:: D

_output_shapes
:: E

_output_shapes
::,F(
&
_output_shapes
:@: G

_output_shapes
:@: H

_output_shapes
:@: I

_output_shapes
:@:-J)
'
_output_shapes
:@?:!K

_output_shapes	
:?:!L

_output_shapes	
:?:!M

_output_shapes	
:?:.N*
(
_output_shapes
:??:!O

_output_shapes	
:?:!P

_output_shapes	
:?:!Q

_output_shapes	
:?:&R"
 
_output_shapes
:
??: S

_output_shapes
::$T 

_output_shapes

:: U

_output_shapes
::V

_output_shapes
: 
?

?
A__inference_conv2d_layer_call_and_return_conditional_losses_15049

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17171

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_2_layer_call_fn_17632

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_144582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:,????????????????????????????:::::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_14264

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_15930

inputs=
9random_rotation_stateful_uniform_statefuluniform_resource
batch_normalization_15840
batch_normalization_15842
batch_normalization_15844
batch_normalization_15846
batch_normalization_15848
batch_normalization_15850
batch_normalization_15852
conv2d_15855
conv2d_15857
batch_normalization_1_15861
batch_normalization_1_15863
batch_normalization_1_15865
batch_normalization_1_15867
batch_normalization_1_15869
batch_normalization_1_15871
batch_normalization_1_15873
conv2d_1_15876
conv2d_1_15878
batch_normalization_2_15882
batch_normalization_2_15884
batch_normalization_2_15886
batch_normalization_2_15888
batch_normalization_2_15890
batch_normalization_2_15892
batch_normalization_2_15894
conv2d_2_15897
conv2d_2_15899
batch_normalization_3_15903
batch_normalization_3_15905
batch_normalization_3_15907
batch_normalization_3_15909
batch_normalization_3_15911
batch_normalization_3_15913
batch_normalization_3_15915
dense_15919
dense_15921
dense_1_15924
dense_1_15926
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?0random_rotation/stateful_uniform/StatefulUniform?
5random_flip/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:???????????27
5random_flip/random_flip_left_right/control_dependency?
(random_flip/random_flip_left_right/ShapeShape>random_flip/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2*
(random_flip/random_flip_left_right/Shape?
6random_flip/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_flip/random_flip_left_right/strided_slice/stack?
8random_flip/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_1?
8random_flip/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_2?
0random_flip/random_flip_left_right/strided_sliceStridedSlice1random_flip/random_flip_left_right/Shape:output:0?random_flip/random_flip_left_right/strided_slice/stack:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_1:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_flip/random_flip_left_right/strided_slice?
7random_flip/random_flip_left_right/random_uniform/shapePack9random_flip/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7random_flip/random_flip_left_right/random_uniform/shape?
5random_flip/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_flip/random_flip_left_right/random_uniform/min?
5random_flip/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5random_flip/random_flip_left_right/random_uniform/max?
?random_flip/random_flip_left_right/random_uniform/RandomUniformRandomUniform@random_flip/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02A
?random_flip/random_flip_left_right/random_uniform/RandomUniform?
5random_flip/random_flip_left_right/random_uniform/MulMulHrandom_flip/random_flip_left_right/random_uniform/RandomUniform:output:0>random_flip/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????27
5random_flip/random_flip_left_right/random_uniform/Mul?
2random_flip/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/1?
2random_flip/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/2?
2random_flip/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/3?
0random_flip/random_flip_left_right/Reshape/shapePack9random_flip/random_flip_left_right/strided_slice:output:0;random_flip/random_flip_left_right/Reshape/shape/1:output:0;random_flip/random_flip_left_right/Reshape/shape/2:output:0;random_flip/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0random_flip/random_flip_left_right/Reshape/shape?
*random_flip/random_flip_left_right/ReshapeReshape9random_flip/random_flip_left_right/random_uniform/Mul:z:09random_flip/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip/random_flip_left_right/Reshape?
(random_flip/random_flip_left_right/RoundRound3random_flip/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2*
(random_flip/random_flip_left_right/Round?
1random_flip/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:23
1random_flip/random_flip_left_right/ReverseV2/axis?
,random_flip/random_flip_left_right/ReverseV2	ReverseV2>random_flip/random_flip_left_right/control_dependency:output:0:random_flip/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2.
,random_flip/random_flip_left_right/ReverseV2?
&random_flip/random_flip_left_right/mulMul,random_flip/random_flip_left_right/Round:y:05random_flip/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2(
&random_flip/random_flip_left_right/mul?
(random_flip/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(random_flip/random_flip_left_right/sub/x?
&random_flip/random_flip_left_right/subSub1random_flip/random_flip_left_right/sub/x:output:0,random_flip/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2(
&random_flip/random_flip_left_right/sub?
(random_flip/random_flip_left_right/mul_1Mul*random_flip/random_flip_left_right/sub:z:0>random_flip/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2*
(random_flip/random_flip_left_right/mul_1?
&random_flip/random_flip_left_right/addAddV2*random_flip/random_flip_left_right/mul:z:0,random_flip/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2(
&random_flip/random_flip_left_right/add?
random_rotation/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation/Shape?
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stack?
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1?
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2?
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_slice?
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stack?
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1?
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2?
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1?
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast?
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stack?
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1?
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2?
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2?
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1?
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shape?
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2&
$random_rotation/stateful_uniform/min?
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2&
$random_rotation/stateful_uniform/max?
:random_rotation/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2<
:random_rotation/stateful_uniform/StatefulUniform/algorithm?
0random_rotation/stateful_uniform/StatefulUniformStatefulUniform9random_rotation_stateful_uniform_statefuluniform_resourceCrandom_rotation/stateful_uniform/StatefulUniform/algorithm:output:0/random_rotation/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype022
0random_rotation/stateful_uniform/StatefulUniform?
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/sub?
$random_rotation/stateful_uniform/mulMul9random_rotation/stateful_uniform/StatefulUniform:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2&
$random_rotation/stateful_uniform/mul?
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2"
 random_rotation/stateful_uniform?
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%random_rotation/rotation_matrix/sub/y?
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub?
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Cos?
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_1/y?
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1?
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/mul?
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Sin?
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_2/y?
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2?
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_1?
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_3?
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_4?
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/y?
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2)
'random_rotation/rotation_matrix/truediv?
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_5/y?
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5?
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_1?
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_6/y?
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6?
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_2?
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_1?
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_7/y?
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7?
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_3?
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/add?
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_8?
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/y?
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation/rotation_matrix/truediv_1?
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shape?
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stack?
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1?
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2?
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice?
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_2?
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack?
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1?
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2?
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1?
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_2?
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack?
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1?
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2?
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2?
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Neg?
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack?
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1?
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2?
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3?
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_3?
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack?
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1?
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2?
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4?
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_3?
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack?
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1?
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2?
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5?
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack?
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1?
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2?
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6?
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/y?
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mul?
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,random_rotation/rotation_matrix/zeros/Less/y?
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/Less?
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1?
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packed?
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Const?
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/zeros?
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis?
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2(
&random_rotation/rotation_matrix/concat?
random_rotation/transform/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2!
random_rotation/transform/Shape?
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stack?
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1?
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2?
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_slice?
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_value?
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3*random_flip/random_flip_left_right/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0batch_normalization_15840batch_normalization_15842batch_normalization_15844batch_normalization_15846batch_normalization_15848batch_normalization_15850batch_normalization_15852*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_149702-
+batch_normalization/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_15855conv2d_15857*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_150492 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_140142
max_pooling2d/PartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_15861batch_normalization_1_15863batch_normalization_1_15865batch_normalization_1_15867batch_normalization_1_15869batch_normalization_1_15871batch_normalization_1_15873*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_151472/
-batch_normalization_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_15876conv2d_1_15878*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_152262"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_142642!
max_pooling2d_1/PartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_15882batch_normalization_2_15884batch_normalization_2_15886batch_normalization_2_15888batch_normalization_2_15890batch_normalization_2_15892batch_normalization_2_15894*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_153242/
-batch_normalization_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_15897conv2d_2_15899*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_154032"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_145142!
max_pooling2d_2/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_15903batch_normalization_3_15905batch_normalization_3_15907batch_normalization_3_15909batch_normalization_3_15911batch_normalization_3_15913batch_normalization_3_15915*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_155012/
-batch_normalization_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_155752
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_15919dense_15921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_155942
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_15924dense_1_15926*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_156212!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall1^random_rotation/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0random_rotation/stateful_uniform/StatefulUniform0random_rotation/stateful_uniform/StatefulUniform:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_3_layer_call_fn_18054

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_155012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:??????????:::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?i
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18015

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_17983
assignmovingavg_3_17992
assignnewvalue_18004

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17983*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_17983*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17983*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17983*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_17983AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17983*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17992*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_17992*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17992*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17992*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_17992AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17992*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_17992&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_17992&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_18004Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/18004*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity_6"!

identity_6Identity_6:output:0*K
_input_shapes:
8:??????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_2_layer_call_fn_14520

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_145142
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?j
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17881

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_17849
assignmovingavg_3_17858
assignnewvalue_17870

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17849*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_17849*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17849*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17849*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_17849AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17849*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17858*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_17858*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17858*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17858*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_17858AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17858*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_17858&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_17858&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_17870Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/17870*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity_6"!

identity_6Identity_6:output:0*]
_input_shapesL
J:,????????????????????????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_17056

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_139582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*\
_input_shapesK
I:+???????????????????????????:::::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_16204
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_137702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15167

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17901

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_13997

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_17478

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_142082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*\
_input_shapesK
I:+???????????????????????????@:::::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17459

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_2_layer_call_fn_17779

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_153442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????  ?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?i
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15501

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_15469
assignmovingavg_3_15478
assignnewvalue_15490

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/15469*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_15469*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/15469*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/15469*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_15469AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/15469*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/15478*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_15478*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/15478*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/15478*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_15478AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/15478*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_15478&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_15478&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_15490Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/15490*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity_6"!

identity_6Identity_6:output:0*K
_input_shapes:
8:??????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?D
?	
E__inference_sequential_layer_call_and_return_conditional_losses_16082

inputs
batch_normalization_16016
batch_normalization_16018
batch_normalization_16020
batch_normalization_16022
conv2d_16025
conv2d_16027
batch_normalization_1_16031
batch_normalization_1_16033
batch_normalization_1_16035
batch_normalization_1_16037
conv2d_1_16040
conv2d_1_16042
batch_normalization_2_16046
batch_normalization_2_16048
batch_normalization_2_16050
batch_normalization_2_16052
conv2d_2_16055
conv2d_2_16057
batch_normalization_3_16061
batch_normalization_3_16063
batch_normalization_3_16065
batch_normalization_3_16067
dense_16071
dense_16073
dense_1_16076
dense_1_16078
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_16016batch_normalization_16018batch_normalization_16020batch_normalization_16022*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_149902-
+batch_normalization/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_16025conv2d_16027*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_150492 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_140142
max_pooling2d/PartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_16031batch_normalization_1_16033batch_normalization_1_16035batch_normalization_1_16037*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_151672/
-batch_normalization_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_16040conv2d_1_16042*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_152262"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_142642!
max_pooling2d_1/PartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_16046batch_normalization_2_16048batch_normalization_2_16050batch_normalization_2_16052*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_153442/
-batch_normalization_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_16055conv2d_2_16057*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_154032"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_145142!
max_pooling2d_2/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_16061batch_normalization_3_16063batch_normalization_3_16065batch_normalization_3_16067*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_155212/
-batch_normalization_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_155752
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_16071dense_16073*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_155942
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_16076dense_1_16078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_156212!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
}
(__inference_conv2d_1_layer_call_fn_17511

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_152262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_17357

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_151672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????@@@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_14747

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_16137
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_160822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
K
/__inference_max_pooling2d_1_layer_call_fn_14270

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_142642
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17790

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????  ?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
{
&__inference_conv2d_layer_call_fn_17223

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_150492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_15226

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?h
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_15147

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_15115
assignmovingavg_3_15124
assignnewvalue_15136

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/15115*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_15115*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/15115*
_output_shapes
:@2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/15115*
_output_shapes
:@2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_15115AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/15115*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/15124*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_15124*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/15124*
_output_shapes
:@2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/15124*
_output_shapes
:@2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_15124AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/15124*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_15124&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_15124&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_15136Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/15136*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity_6"!

identity_6Identity_6:output:0*J
_input_shapes9
7:?????????@@@:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?

?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_15403

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????  ?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?

?
A__inference_conv2d_layer_call_and_return_conditional_losses_17214

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_15638
input_1=
9random_rotation_stateful_uniform_statefuluniform_resource
batch_normalization_15023
batch_normalization_15025
batch_normalization_15027
batch_normalization_15029
batch_normalization_15031
batch_normalization_15033
batch_normalization_15035
conv2d_15060
conv2d_15062
batch_normalization_1_15200
batch_normalization_1_15202
batch_normalization_1_15204
batch_normalization_1_15206
batch_normalization_1_15208
batch_normalization_1_15210
batch_normalization_1_15212
conv2d_1_15237
conv2d_1_15239
batch_normalization_2_15377
batch_normalization_2_15379
batch_normalization_2_15381
batch_normalization_2_15383
batch_normalization_2_15385
batch_normalization_2_15387
batch_normalization_2_15389
conv2d_2_15414
conv2d_2_15416
batch_normalization_3_15554
batch_normalization_3_15556
batch_normalization_3_15558
batch_normalization_3_15560
batch_normalization_3_15562
batch_normalization_3_15564
batch_normalization_3_15566
dense_15605
dense_15607
dense_1_15632
dense_1_15634
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?0random_rotation/stateful_uniform/StatefulUniform?
5random_flip/random_flip_left_right/control_dependencyIdentityinput_1*
T0*
_class
loc:@input_1*1
_output_shapes
:???????????27
5random_flip/random_flip_left_right/control_dependency?
(random_flip/random_flip_left_right/ShapeShape>random_flip/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2*
(random_flip/random_flip_left_right/Shape?
6random_flip/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_flip/random_flip_left_right/strided_slice/stack?
8random_flip/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_1?
8random_flip/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_flip/random_flip_left_right/strided_slice/stack_2?
0random_flip/random_flip_left_right/strided_sliceStridedSlice1random_flip/random_flip_left_right/Shape:output:0?random_flip/random_flip_left_right/strided_slice/stack:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_1:output:0Arandom_flip/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_flip/random_flip_left_right/strided_slice?
7random_flip/random_flip_left_right/random_uniform/shapePack9random_flip/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7random_flip/random_flip_left_right/random_uniform/shape?
5random_flip/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5random_flip/random_flip_left_right/random_uniform/min?
5random_flip/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??27
5random_flip/random_flip_left_right/random_uniform/max?
?random_flip/random_flip_left_right/random_uniform/RandomUniformRandomUniform@random_flip/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02A
?random_flip/random_flip_left_right/random_uniform/RandomUniform?
5random_flip/random_flip_left_right/random_uniform/MulMulHrandom_flip/random_flip_left_right/random_uniform/RandomUniform:output:0>random_flip/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????27
5random_flip/random_flip_left_right/random_uniform/Mul?
2random_flip/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/1?
2random_flip/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/2?
2random_flip/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :24
2random_flip/random_flip_left_right/Reshape/shape/3?
0random_flip/random_flip_left_right/Reshape/shapePack9random_flip/random_flip_left_right/strided_slice:output:0;random_flip/random_flip_left_right/Reshape/shape/1:output:0;random_flip/random_flip_left_right/Reshape/shape/2:output:0;random_flip/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:22
0random_flip/random_flip_left_right/Reshape/shape?
*random_flip/random_flip_left_right/ReshapeReshape9random_flip/random_flip_left_right/random_uniform/Mul:z:09random_flip/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2,
*random_flip/random_flip_left_right/Reshape?
(random_flip/random_flip_left_right/RoundRound3random_flip/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????2*
(random_flip/random_flip_left_right/Round?
1random_flip/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:23
1random_flip/random_flip_left_right/ReverseV2/axis?
,random_flip/random_flip_left_right/ReverseV2	ReverseV2>random_flip/random_flip_left_right/control_dependency:output:0:random_flip/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:???????????2.
,random_flip/random_flip_left_right/ReverseV2?
&random_flip/random_flip_left_right/mulMul,random_flip/random_flip_left_right/Round:y:05random_flip/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:???????????2(
&random_flip/random_flip_left_right/mul?
(random_flip/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(random_flip/random_flip_left_right/sub/x?
&random_flip/random_flip_left_right/subSub1random_flip/random_flip_left_right/sub/x:output:0,random_flip/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????2(
&random_flip/random_flip_left_right/sub?
(random_flip/random_flip_left_right/mul_1Mul*random_flip/random_flip_left_right/sub:z:0>random_flip/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:???????????2*
(random_flip/random_flip_left_right/mul_1?
&random_flip/random_flip_left_right/addAddV2*random_flip/random_flip_left_right/mul:z:0,random_flip/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:???????????2(
&random_flip/random_flip_left_right/add?
random_rotation/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation/Shape?
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#random_rotation/strided_slice/stack?
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_1?
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice/stack_2?
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_rotation/strided_slice?
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_1/stack?
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_1?
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_1/stack_2?
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_1?
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast?
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2'
%random_rotation/strided_slice_2/stack?
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_1?
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation/strided_slice_2/stack_2?
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation/strided_slice_2?
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation/Cast_1?
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:2(
&random_rotation/stateful_uniform/shape?
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2&
$random_rotation/stateful_uniform/min?
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|? ?2&
$random_rotation/stateful_uniform/max?
:random_rotation/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2<
:random_rotation/stateful_uniform/StatefulUniform/algorithm?
0random_rotation/stateful_uniform/StatefulUniformStatefulUniform9random_rotation_stateful_uniform_statefuluniform_resourceCrandom_rotation/stateful_uniform/StatefulUniform/algorithm:output:0/random_rotation/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype022
0random_rotation/stateful_uniform/StatefulUniform?
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_rotation/stateful_uniform/sub?
$random_rotation/stateful_uniform/mulMul9random_rotation/stateful_uniform/StatefulUniform:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2&
$random_rotation/stateful_uniform/mul?
 random_rotation/stateful_uniformAdd(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2"
 random_rotation/stateful_uniform?
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2'
%random_rotation/rotation_matrix/sub/y?
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2%
#random_rotation/rotation_matrix/sub?
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Cos?
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_1/y?
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_1?
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/mul?
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Sin?
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_2/y?
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_2?
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_1?
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_3?
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_4?
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2+
)random_rotation/rotation_matrix/truediv/y?
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2)
'random_rotation/rotation_matrix/truediv?
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_5/y?
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_5?
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_1?
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_6/y?
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_6?
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_2?
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_1?
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation/rotation_matrix/sub_7/y?
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation/rotation_matrix/sub_7?
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/mul_3?
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/add?
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/sub_8?
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation/rotation_matrix/truediv_1/y?
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation/rotation_matrix/truediv_1?
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
:2'
%random_rotation/rotation_matrix/Shape?
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3random_rotation/rotation_matrix/strided_slice/stack?
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_1?
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5random_rotation/rotation_matrix/strided_slice/stack_2?
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-random_rotation/rotation_matrix/strided_slice?
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_2?
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_1/stack?
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_1/stack_1?
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_1/stack_2?
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_1?
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_2?
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_2/stack?
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_2/stack_1?
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_2/stack_2?
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_2?
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2%
#random_rotation/rotation_matrix/Neg?
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_3/stack?
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_3/stack_1?
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_3/stack_2?
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_3?
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Sin_3?
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_4/stack?
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_4/stack_1?
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_4/stack_2?
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_4?
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/Cos_3?
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_5/stack?
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_5/stack_1?
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_5/stack_2?
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_5?
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        27
5random_rotation/rotation_matrix/strided_slice_6/stack?
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation/rotation_matrix/strided_slice_6/stack_1?
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7random_rotation/rotation_matrix/strided_slice_6/stack_2?
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask21
/random_rotation/rotation_matrix/strided_slice_6?
+random_rotation/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/zeros/mul/y?
)random_rotation/rotation_matrix/zeros/mulMul6random_rotation/rotation_matrix/strided_slice:output:04random_rotation/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2+
)random_rotation/rotation_matrix/zeros/mul?
,random_rotation/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2.
,random_rotation/rotation_matrix/zeros/Less/y?
*random_rotation/rotation_matrix/zeros/LessLess-random_rotation/rotation_matrix/zeros/mul:z:05random_rotation/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2,
*random_rotation/rotation_matrix/zeros/Less?
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation/rotation_matrix/zeros/packed/1?
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2.
,random_rotation/rotation_matrix/zeros/packed?
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2-
+random_rotation/rotation_matrix/zeros/Const?
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation/rotation_matrix/zeros?
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+random_rotation/rotation_matrix/concat/axis?
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2(
&random_rotation/rotation_matrix/concat?
random_rotation/transform/ShapeShape*random_flip/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2!
random_rotation/transform/Shape?
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-random_rotation/transform/strided_slice/stack?
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_1?
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation/transform/strided_slice/stack_2?
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2)
'random_rotation/transform/strided_slice?
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$random_rotation/transform/fill_value?
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3*random_flip/random_flip_left_right/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:???????????*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR26
4random_rotation/transform/ImageProjectiveTransformV3?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0batch_normalization_15023batch_normalization_15025batch_normalization_15027batch_normalization_15029batch_normalization_15031batch_normalization_15033batch_normalization_15035*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_149702-
+batch_normalization/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_15060conv2d_15062*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_150492 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_140142
max_pooling2d/PartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_15200batch_normalization_1_15202batch_normalization_1_15204batch_normalization_1_15206batch_normalization_1_15208batch_normalization_1_15210batch_normalization_1_15212*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_151472/
-batch_normalization_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_15237conv2d_1_15239*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_152262"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_142642!
max_pooling2d_1/PartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_15377batch_normalization_2_15379batch_normalization_2_15381batch_normalization_2_15383batch_normalization_2_15385batch_normalization_2_15387batch_normalization_2_15389*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_153242/
-batch_normalization_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_15414conv2d_2_15416*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_154032"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_145142!
max_pooling2d_2/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_15554batch_normalization_3_15556batch_normalization_3_15558batch_normalization_3_15560batch_normalization_3_15562batch_normalization_3_15564batch_normalization_3_15566*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_155012/
-batch_normalization_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_155752
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_15605dense_15607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_155942
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_15632dense_1_15634*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_156212!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall1^random_rotation/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2d
0random_rotation/stateful_uniform/StatefulUniform0random_rotation/stateful_uniform/StatefulUniform:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?i
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17439

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_17407
assignmovingavg_3_17416
assignnewvalue_17428

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17407*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_17407*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17407*
_output_shapes
:@2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17407*
_output_shapes
:@2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_17407AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17407*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17416*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_17416*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17416*
_output_shapes
:@2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17416*
_output_shapes
:@2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_17416AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17416*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_17416&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_17416&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_17428Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/17428*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_6"!

identity_6Identity_6:output:0*\
_input_shapesK
I:+???????????????????????????@:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_14497

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
3__inference_batch_normalization_layer_call_fn_17069

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_139972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_17491

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_142472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
}
(__inference_conv2d_2_layer_call_fn_17799

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_154032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????  ?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_3_layer_call_fn_17920

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_147082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:,????????????????????????????:::::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_16878

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
 $%&'*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_159302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18035

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_14990

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:???????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_16011
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*4
_read_only_resource_inputs
	
 $%&'*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_159302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????:::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?

?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17502

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????@@?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_2_layer_call_fn_17766

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_153242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*K
_input_shapes:
8:?????????  ?:::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?h
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17151

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_17119
assignmovingavg_3_17128
assignnewvalue_17140

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*1
_output_shapes
:???????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17119*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_17119*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17119*
_output_shapes
:2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17119*
_output_shapes
:2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_17119AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17119*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17128*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_17128*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17128*
_output_shapes
:2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17128*
_output_shapes
:2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_17128AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17128*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_17128&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_17128&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_17140Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/17140*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity_6"!

identity_6Identity_6:output:0*L
_input_shapes;
9:???????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_16935

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_160822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?h
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17305

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_17273
assignmovingavg_3_17282
assignnewvalue_17294

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*/
_output_shapes
:?????????@@@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17273*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_17273*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17273*
_output_shapes
:@2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17273*
_output_shapes
:@2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_17273AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17273*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17282*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_17282*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17282*
_output_shapes
:@2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17282*
_output_shapes
:@2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_17282AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17282*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_17282&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_17282&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_17294Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/17294*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????@@@2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*/
_output_shapes
:?????????@@@2

Identity_6"!

identity_6Identity_6:output:0*J
_input_shapes9
7:?????????@@@:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
I
-__inference_max_pooling2d_layer_call_fn_14020

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_140142
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_13770
input_1D
@sequential_batch_normalization_batchnorm_readvariableop_resourceH
Dsequential_batch_normalization_batchnorm_mul_readvariableop_resourceF
Bsequential_batch_normalization_batchnorm_readvariableop_1_resourceF
Bsequential_batch_normalization_batchnorm_readvariableop_2_resource4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resourceF
Bsequential_batch_normalization_1_batchnorm_readvariableop_resourceJ
Fsequential_batch_normalization_1_batchnorm_mul_readvariableop_resourceH
Dsequential_batch_normalization_1_batchnorm_readvariableop_1_resourceH
Dsequential_batch_normalization_1_batchnorm_readvariableop_2_resource6
2sequential_conv2d_1_conv2d_readvariableop_resource7
3sequential_conv2d_1_biasadd_readvariableop_resourceF
Bsequential_batch_normalization_2_batchnorm_readvariableop_resourceJ
Fsequential_batch_normalization_2_batchnorm_mul_readvariableop_resourceH
Dsequential_batch_normalization_2_batchnorm_readvariableop_1_resourceH
Dsequential_batch_normalization_2_batchnorm_readvariableop_2_resource6
2sequential_conv2d_2_conv2d_readvariableop_resource7
3sequential_conv2d_2_biasadd_readvariableop_resourceF
Bsequential_batch_normalization_3_batchnorm_readvariableop_resourceJ
Fsequential_batch_normalization_3_batchnorm_mul_readvariableop_resourceH
Dsequential_batch_normalization_3_batchnorm_readvariableop_1_resourceH
Dsequential_batch_normalization_3_batchnorm_readvariableop_2_resource3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource
identity??7sequential/batch_normalization/batchnorm/ReadVariableOp?9sequential/batch_normalization/batchnorm/ReadVariableOp_1?9sequential/batch_normalization/batchnorm/ReadVariableOp_2?;sequential/batch_normalization/batchnorm/mul/ReadVariableOp?9sequential/batch_normalization_1/batchnorm/ReadVariableOp?;sequential/batch_normalization_1/batchnorm/ReadVariableOp_1?;sequential/batch_normalization_1/batchnorm/ReadVariableOp_2?=sequential/batch_normalization_1/batchnorm/mul/ReadVariableOp?9sequential/batch_normalization_2/batchnorm/ReadVariableOp?;sequential/batch_normalization_2/batchnorm/ReadVariableOp_1?;sequential/batch_normalization_2/batchnorm/ReadVariableOp_2?=sequential/batch_normalization_2/batchnorm/mul/ReadVariableOp?9sequential/batch_normalization_3/batchnorm/ReadVariableOp?;sequential/batch_normalization_3/batchnorm/ReadVariableOp_1?;sequential/batch_normalization_3/batchnorm/ReadVariableOp_2?=sequential/batch_normalization_3/batchnorm/mul/ReadVariableOp?(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?
7sequential/batch_normalization/batchnorm/ReadVariableOpReadVariableOp@sequential_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype029
7sequential/batch_normalization/batchnorm/ReadVariableOp?
.sequential/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:20
.sequential/batch_normalization/batchnorm/add/y?
,sequential/batch_normalization/batchnorm/addAddV2?sequential/batch_normalization/batchnorm/ReadVariableOp:value:07sequential/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:2.
,sequential/batch_normalization/batchnorm/add?
.sequential/batch_normalization/batchnorm/RsqrtRsqrt0sequential/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:20
.sequential/batch_normalization/batchnorm/Rsqrt?
;sequential/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpDsequential_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02=
;sequential/batch_normalization/batchnorm/mul/ReadVariableOp?
,sequential/batch_normalization/batchnorm/mulMul2sequential/batch_normalization/batchnorm/Rsqrt:y:0Csequential/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2.
,sequential/batch_normalization/batchnorm/mul?
.sequential/batch_normalization/batchnorm/mul_1Mulinput_10sequential/batch_normalization/batchnorm/mul:z:0*
T0*1
_output_shapes
:???????????20
.sequential/batch_normalization/batchnorm/mul_1?
9sequential/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_1?
.sequential/batch_normalization/batchnorm/mul_2MulAsequential/batch_normalization/batchnorm/ReadVariableOp_1:value:00sequential/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:20
.sequential/batch_normalization/batchnorm/mul_2?
9sequential/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpBsequential_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02;
9sequential/batch_normalization/batchnorm/ReadVariableOp_2?
,sequential/batch_normalization/batchnorm/subSubAsequential/batch_normalization/batchnorm/ReadVariableOp_2:value:02sequential/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2.
,sequential/batch_normalization/batchnorm/sub?
.sequential/batch_normalization/batchnorm/add_1AddV22sequential/batch_normalization/batchnorm/mul_1:z:00sequential/batch_normalization/batchnorm/sub:z:0*
T0*1
_output_shapes
:???????????20
.sequential/batch_normalization/batchnorm/add_1?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2D2sequential/batch_normalization/batchnorm/add_1:z:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
sequential/conv2d/Relu?
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:?????????@@@*
ksize
*
paddingVALID*
strides
2"
 sequential/max_pooling2d/MaxPool?
9sequential/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpBsequential_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential/batch_normalization_1/batchnorm/ReadVariableOp?
0sequential/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0sequential/batch_normalization_1/batchnorm/add/y?
.sequential/batch_normalization_1/batchnorm/addAddV2Asequential/batch_normalization_1/batchnorm/ReadVariableOp:value:09sequential/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@20
.sequential/batch_normalization_1/batchnorm/add?
0sequential/batch_normalization_1/batchnorm/RsqrtRsqrt2sequential/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:@22
0sequential/batch_normalization_1/batchnorm/Rsqrt?
=sequential/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpFsequential_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02?
=sequential/batch_normalization_1/batchnorm/mul/ReadVariableOp?
.sequential/batch_normalization_1/batchnorm/mulMul4sequential/batch_normalization_1/batchnorm/Rsqrt:y:0Esequential/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@20
.sequential/batch_normalization_1/batchnorm/mul?
0sequential/batch_normalization_1/batchnorm/mul_1Mul)sequential/max_pooling2d/MaxPool:output:02sequential/batch_normalization_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????@@@22
0sequential/batch_normalization_1/batchnorm/mul_1?
;sequential/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOpDsequential_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;sequential/batch_normalization_1/batchnorm/ReadVariableOp_1?
0sequential/batch_normalization_1/batchnorm/mul_2MulCsequential/batch_normalization_1/batchnorm/ReadVariableOp_1:value:02sequential/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@22
0sequential/batch_normalization_1/batchnorm/mul_2?
;sequential/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOpDsequential_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02=
;sequential/batch_normalization_1/batchnorm/ReadVariableOp_2?
.sequential/batch_normalization_1/batchnorm/subSubCsequential/batch_normalization_1/batchnorm/ReadVariableOp_2:value:04sequential/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@20
.sequential/batch_normalization_1/batchnorm/sub?
0sequential/batch_normalization_1/batchnorm/add_1AddV24sequential/batch_normalization_1/batchnorm/mul_1:z:02sequential/batch_normalization_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????@@@22
0sequential/batch_normalization_1/batchnorm/add_1?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D4sequential/batch_normalization_1/batchnorm/add_1:z:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?2
sequential/conv2d_1/Relu?
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_1/MaxPool?
9sequential/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpBsequential_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential/batch_normalization_2/batchnorm/ReadVariableOp?
0sequential/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0sequential/batch_normalization_2/batchnorm/add/y?
.sequential/batch_normalization_2/batchnorm/addAddV2Asequential/batch_normalization_2/batchnorm/ReadVariableOp:value:09sequential/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?20
.sequential/batch_normalization_2/batchnorm/add?
0sequential/batch_normalization_2/batchnorm/RsqrtRsqrt2sequential/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:?22
0sequential/batch_normalization_2/batchnorm/Rsqrt?
=sequential/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpFsequential_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential/batch_normalization_2/batchnorm/mul/ReadVariableOp?
.sequential/batch_normalization_2/batchnorm/mulMul4sequential/batch_normalization_2/batchnorm/Rsqrt:y:0Esequential/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?20
.sequential/batch_normalization_2/batchnorm/mul?
0sequential/batch_normalization_2/batchnorm/mul_1Mul+sequential/max_pooling2d_1/MaxPool:output:02sequential/batch_normalization_2/batchnorm/mul:z:0*
T0*0
_output_shapes
:?????????  ?22
0sequential/batch_normalization_2/batchnorm/mul_1?
;sequential/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpDsequential_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;sequential/batch_normalization_2/batchnorm/ReadVariableOp_1?
0sequential/batch_normalization_2/batchnorm/mul_2MulCsequential/batch_normalization_2/batchnorm/ReadVariableOp_1:value:02sequential/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:?22
0sequential/batch_normalization_2/batchnorm/mul_2?
;sequential/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpDsequential_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02=
;sequential/batch_normalization_2/batchnorm/ReadVariableOp_2?
.sequential/batch_normalization_2/batchnorm/subSubCsequential/batch_normalization_2/batchnorm/ReadVariableOp_2:value:04sequential/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?20
.sequential/batch_normalization_2/batchnorm/sub?
0sequential/batch_normalization_2/batchnorm/add_1AddV24sequential/batch_normalization_2/batchnorm/mul_1:z:02sequential/batch_normalization_2/batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????  ?22
0sequential/batch_normalization_2/batchnorm/add_1?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D4sequential/batch_normalization_2/batchnorm/add_1:z:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?*
paddingSAME*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????  ?2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????  ?2
sequential/conv2d_2/Relu?
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2$
"sequential/max_pooling2d_2/MaxPool?
9sequential/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpBsequential_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential/batch_normalization_3/batchnorm/ReadVariableOp?
0sequential/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:22
0sequential/batch_normalization_3/batchnorm/add/y?
.sequential/batch_normalization_3/batchnorm/addAddV2Asequential/batch_normalization_3/batchnorm/ReadVariableOp:value:09sequential/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?20
.sequential/batch_normalization_3/batchnorm/add?
0sequential/batch_normalization_3/batchnorm/RsqrtRsqrt2sequential/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:?22
0sequential/batch_normalization_3/batchnorm/Rsqrt?
=sequential/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpFsequential_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential/batch_normalization_3/batchnorm/mul/ReadVariableOp?
.sequential/batch_normalization_3/batchnorm/mulMul4sequential/batch_normalization_3/batchnorm/Rsqrt:y:0Esequential/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?20
.sequential/batch_normalization_3/batchnorm/mul?
0sequential/batch_normalization_3/batchnorm/mul_1Mul+sequential/max_pooling2d_2/MaxPool:output:02sequential/batch_normalization_3/batchnorm/mul:z:0*
T0*0
_output_shapes
:??????????22
0sequential/batch_normalization_3/batchnorm/mul_1?
;sequential/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpDsequential_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02=
;sequential/batch_normalization_3/batchnorm/ReadVariableOp_1?
0sequential/batch_normalization_3/batchnorm/mul_2MulCsequential/batch_normalization_3/batchnorm/ReadVariableOp_1:value:02sequential/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:?22
0sequential/batch_normalization_3/batchnorm/mul_2?
;sequential/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpDsequential_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02=
;sequential/batch_normalization_3/batchnorm/ReadVariableOp_2?
.sequential/batch_normalization_3/batchnorm/subSubCsequential/batch_normalization_3/batchnorm/ReadVariableOp_2:value:04sequential/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?20
.sequential/batch_normalization_3/batchnorm/sub?
0sequential/batch_normalization_3/batchnorm/add_1AddV24sequential/batch_normalization_3/batchnorm/mul_1:z:02sequential/batch_normalization_3/batchnorm/sub:z:0*
T0*0
_output_shapes
:??????????22
0sequential/batch_normalization_3/batchnorm/add_1?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape4sequential/batch_normalization_3/batchnorm/add_1:z:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential/dense/Relu?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/BiasAdd?
sequential/dense_1/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/Sigmoid?
IdentityIdentitysequential/dense_1/Sigmoid:y:08^sequential/batch_normalization/batchnorm/ReadVariableOp:^sequential/batch_normalization/batchnorm/ReadVariableOp_1:^sequential/batch_normalization/batchnorm/ReadVariableOp_2<^sequential/batch_normalization/batchnorm/mul/ReadVariableOp:^sequential/batch_normalization_1/batchnorm/ReadVariableOp<^sequential/batch_normalization_1/batchnorm/ReadVariableOp_1<^sequential/batch_normalization_1/batchnorm/ReadVariableOp_2>^sequential/batch_normalization_1/batchnorm/mul/ReadVariableOp:^sequential/batch_normalization_2/batchnorm/ReadVariableOp<^sequential/batch_normalization_2/batchnorm/ReadVariableOp_1<^sequential/batch_normalization_2/batchnorm/ReadVariableOp_2>^sequential/batch_normalization_2/batchnorm/mul/ReadVariableOp:^sequential/batch_normalization_3/batchnorm/ReadVariableOp<^sequential/batch_normalization_3/batchnorm/ReadVariableOp_1<^sequential/batch_normalization_3/batchnorm/ReadVariableOp_2>^sequential/batch_normalization_3/batchnorm/mul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2r
7sequential/batch_normalization/batchnorm/ReadVariableOp7sequential/batch_normalization/batchnorm/ReadVariableOp2v
9sequential/batch_normalization/batchnorm/ReadVariableOp_19sequential/batch_normalization/batchnorm/ReadVariableOp_12v
9sequential/batch_normalization/batchnorm/ReadVariableOp_29sequential/batch_normalization/batchnorm/ReadVariableOp_22z
;sequential/batch_normalization/batchnorm/mul/ReadVariableOp;sequential/batch_normalization/batchnorm/mul/ReadVariableOp2v
9sequential/batch_normalization_1/batchnorm/ReadVariableOp9sequential/batch_normalization_1/batchnorm/ReadVariableOp2z
;sequential/batch_normalization_1/batchnorm/ReadVariableOp_1;sequential/batch_normalization_1/batchnorm/ReadVariableOp_12z
;sequential/batch_normalization_1/batchnorm/ReadVariableOp_2;sequential/batch_normalization_1/batchnorm/ReadVariableOp_22~
=sequential/batch_normalization_1/batchnorm/mul/ReadVariableOp=sequential/batch_normalization_1/batchnorm/mul/ReadVariableOp2v
9sequential/batch_normalization_2/batchnorm/ReadVariableOp9sequential/batch_normalization_2/batchnorm/ReadVariableOp2z
;sequential/batch_normalization_2/batchnorm/ReadVariableOp_1;sequential/batch_normalization_2/batchnorm/ReadVariableOp_12z
;sequential/batch_normalization_2/batchnorm/ReadVariableOp_2;sequential/batch_normalization_2/batchnorm/ReadVariableOp_22~
=sequential/batch_normalization_2/batchnorm/mul/ReadVariableOp=sequential/batch_normalization_2/batchnorm/mul/ReadVariableOp2v
9sequential/batch_normalization_3/batchnorm/ReadVariableOp9sequential/batch_normalization_3/batchnorm/ReadVariableOp2z
;sequential/batch_normalization_3/batchnorm/ReadVariableOp_1;sequential/batch_normalization_3/batchnorm/ReadVariableOp_12z
;sequential/batch_normalization_3/batchnorm/ReadVariableOp_2;sequential/batch_normalization_3/batchnorm/ReadVariableOp_22~
=sequential/batch_normalization_3/batchnorm/mul/ReadVariableOp=sequential/batch_normalization_3/batchnorm/mul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?i
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15324

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_15292
assignmovingavg_3_15301
assignnewvalue_15313

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/15292*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_15292*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/15292*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/15292*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_15292AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/15292*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/15301*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_15301*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/15301*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/15301*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_15301AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/15301*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_15301&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_15301&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_15313Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/15313*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity_6"!

identity_6Identity_6:output:0*K
_input_shapes:
8:?????????  ?:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?i
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_14208

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_14176
assignmovingavg_3_14185
assignnewvalue_14197

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:@2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:@2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14176*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_14176*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14176*
_output_shapes
:@2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14176*
_output_shapes
:@2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_14176AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14176*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14185*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_14185*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14185*
_output_shapes
:@2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14185*
_output_shapes
:@2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_14185AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14185*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_14185&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_14185&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:@*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_14197Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/14197*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity_6"!

identity_6Identity_6:output:0*\
_input_shapesK
I:+???????????????????????????@:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?D
?	
E__inference_sequential_layer_call_and_return_conditional_losses_15707
input_1
batch_normalization_15641
batch_normalization_15643
batch_normalization_15645
batch_normalization_15647
conv2d_15650
conv2d_15652
batch_normalization_1_15656
batch_normalization_1_15658
batch_normalization_1_15660
batch_normalization_1_15662
conv2d_1_15665
conv2d_1_15667
batch_normalization_2_15671
batch_normalization_2_15673
batch_normalization_2_15675
batch_normalization_2_15677
conv2d_2_15680
conv2d_2_15682
batch_normalization_3_15686
batch_normalization_3_15688
batch_normalization_3_15690
batch_normalization_3_15692
dense_15696
dense_15698
dense_1_15701
dense_1_15703
identity??+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?-batch_normalization_2/StatefulPartitionedCall?-batch_normalization_3/StatefulPartitionedCall?conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCallinput_1batch_normalization_15641batch_normalization_15643batch_normalization_15645batch_normalization_15647*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_149902-
+batch_normalization/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0conv2d_15650conv2d_15652*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_150492 
conv2d/StatefulPartitionedCall?
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_140142
max_pooling2d/PartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0batch_normalization_1_15656batch_normalization_1_15658batch_normalization_1_15660batch_normalization_1_15662*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_151672/
-batch_normalization_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_1_15665conv2d_1_15667*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_152262"
 conv2d_1/StatefulPartitionedCall?
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_142642!
max_pooling2d_1/PartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0batch_normalization_2_15671batch_normalization_2_15673batch_normalization_2_15675batch_normalization_2_15677*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_153442/
-batch_normalization_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0conv2d_2_15680conv2d_2_15682*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_154032"
 conv2d_2/StatefulPartitionedCall?
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_145142!
max_pooling2d_2/PartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0batch_normalization_3_15686batch_normalization_3_15688batch_normalization_3_15690batch_normalization_3_15692*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_155212/
-batch_normalization_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_155752
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_15696dense_15698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_155942
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_15701dense_1_15703*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_156212!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
C
'__inference_flatten_layer_call_fn_18078

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_155752
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_18073

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
|
'__inference_dense_1_layer_call_fn_18118

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_156212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_14247

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_15344

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????  ?::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
z
%__inference_dense_layer_call_fn_18098

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_155942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17037

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?j
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_14708

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_14676
assignmovingavg_3_14685
assignnewvalue_14697

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14676*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_14676*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14676*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/14676*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_14676AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/14676*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14685*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_14685*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14685*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/14685*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_14685AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/14685*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_14685&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_14685&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_14697Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/14697*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity_6"!

identity_6Identity_6:output:0*]
_input_shapesL
J:,????????????????????????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_18089

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_2_layer_call_fn_17645

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_144972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_14514

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?i
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17017

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_16985
assignmovingavg_3_16994
assignnewvalue_17006

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/yd
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:2
addB
SqrtSqrtadd:z:0*
T0*
_output_shapes
:2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02
Maximum/ReadVariableOpn
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:2	
MaximumY
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02
sub/ReadVariableOpl
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:2
sub\
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:2
	truediv_1u
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identityi

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:2

Identity_1\

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp^

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes
:2

Identity_5V
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:2

renorm_rX
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul/ReadVariableOpe
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpk
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype02
add_1/ReadVariableOpe
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/16985*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_16985*
_output_shapes
:*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/16985*
_output_shapes
:2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/16985*
_output_shapes
:2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_16985AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/16985*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yc
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:2
add_2H
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/16994*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_16994*
_output_shapes
:*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/16994*
_output_shapes
:2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/16994*
_output_shapes
:2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_16994AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/16994*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_16994&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_16994&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpp
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yW
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:2
sub_1D
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_17006Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/17006*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrth
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2j
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity_6"!

identity_6Identity_6:output:0*\
_input_shapesK
I:+???????????????????????????:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?i
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17727

inputs#
maximum_readvariableop_resource
sub_readvariableop_resource
mul_readvariableop_resource!
add_1_readvariableop_resource
assignmovingavg_2_17695
assignmovingavg_3_17704
assignnewvalue_17716

identity_6??#AssignMovingAvg/AssignSubVariableOp?AssignMovingAvg/ReadVariableOp?%AssignMovingAvg_1/AssignSubVariableOp? AssignMovingAvg_1/ReadVariableOp?%AssignMovingAvg_2/AssignSubVariableOp? AssignMovingAvg_2/ReadVariableOp?%AssignMovingAvg_3/AssignSubVariableOp? AssignMovingAvg_3/ReadVariableOp?AssignNewValue?Maximum/ReadVariableOp?ReadVariableOp?add_1/ReadVariableOp?mul/ReadVariableOp?mul_1/ReadVariableOp?mul_2/ReadVariableOp?sub/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*0
_output_shapes
:?????????  ?2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1S
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
add/ye
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:?2
addC
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:?2
SqrtY
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2

Sqrt_1/xL
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: 2
Sqrt_1?
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02
Maximum/ReadVariableOpo
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:?2	
MaximumZ
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:?2	
truediv?
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02
sub/ReadVariableOpm
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
sub]
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:?2
	truediv_1v
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identityj

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:?2

Identity_1]

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:?2

Identity_2?
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*.
_class$
" loc:@sub/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp_

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:?2

Identity_3?
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*2
_class(
&$loc:@Maximum/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?

Identity_4IdentityIdentity:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identitymoments/Squeeze_1:output:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*
_output_shapes	
:?2

Identity_5W
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:?2

renorm_rY
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:?2

renorm_d?
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul/ReadVariableOpf
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul?
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:?*
dtype02
mul_1/ReadVariableOpl
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_1?
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:?*
dtype02
add_1/ReadVariableOpf
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
add_1?
AssignMovingAvg_2/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17695*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_2/decay?
 AssignMovingAvg_2/ReadVariableOpReadVariableOpassignmovingavg_2_17695*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_2/ReadVariableOp?
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17695*
_output_shapes	
:?2
AssignMovingAvg_2/sub?
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_2/17695*
_output_shapes	
:?2
AssignMovingAvg_2/mul?
%AssignMovingAvg_2/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2_17695AssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_2/17695*
_output_shapes
 *
dtype02'
%AssignMovingAvg_2/AssignSubVariableOpW
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
add_2/yd
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?2
add_2I
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:?2
Sqrt_2?
AssignMovingAvg_3/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17704*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_3/decay?
 AssignMovingAvg_3/ReadVariableOpReadVariableOpassignmovingavg_3_17704*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_3/ReadVariableOp?
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17704*
_output_shapes	
:?2
AssignMovingAvg_3/sub?
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_3/17704*
_output_shapes	
:?2
AssignMovingAvg_3/mul?
%AssignMovingAvg_3/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3_17704AssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_3/17704*
_output_shapes
 *
dtype02'
%AssignMovingAvg_3/AssignSubVariableOp?
ReadVariableOpReadVariableOpassignmovingavg_3_17704&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
ReadVariableOp?
mul_2/ReadVariableOpReadVariableOpassignmovingavg_3_17704&^AssignMovingAvg_3/AssignSubVariableOp*
_output_shapes	
:?*
dtype02
mul_2/ReadVariableOpq
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
mul_2W
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2	
sub_1/yX
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:?2
sub_1E
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:?2
Relu?
AssignNewValueAssignVariableOpassignnewvalue_17716Relu:activations:0",/job:localhost/replica:0/task:0/device:GPU:0*'
_class
loc:@AssignNewValue/17716*
_output_shapes
 *
dtype02
AssignNewValueg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrti
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2k
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/add_1?

Identity_6Identitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp&^AssignMovingAvg_2/AssignSubVariableOp!^AssignMovingAvg_2/ReadVariableOp&^AssignMovingAvg_3/AssignSubVariableOp!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity_6"!

identity_6Identity_6:output:0*K
_input_shapes:
8:?????????  ?:::::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2N
%AssignMovingAvg_2/AssignSubVariableOp%AssignMovingAvg_2/AssignSubVariableOp2D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2N
%AssignMovingAvg_3/AssignSubVariableOp%AssignMovingAvg_3/AssignSubVariableOp2D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17747

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:?????????  ?2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:?????????  ?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????  ?::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_15575

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_17344

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_151472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@@2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:?????????@@@:::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_15594

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_14014

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_15521

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*0
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_15621

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_1:
serving_default_input_1:0???????????;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:܅
?x
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?s
_tf_keras_sequential?s{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 128, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 0.01, "amsgrad": false}}}}
?
_rng
	keras_api"?
_tf_keras_layer?{"class_name": "RandomFlip", "name": "random_flip", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_flip", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
_rng
	keras_api"?
_tf_keras_layer?{"class_name": "RandomRotation", "name": "random_rotation", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation", "trainable": true, "dtype": "float32", "factor": 0.1, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?

renorm_clipping
axis
	gamma
beta
moving_mean
moving_variance
 moving_stddev
!renorm_mean
"renorm_stddev
#regularization_losses
$	variables
%trainable_variables
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}}
?	

'kernel
(bias
)regularization_losses
*	variables
+trainable_variables
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 3]}}
?
-regularization_losses
.	variables
/trainable_variables
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

1renorm_clipping
2axis
	3gamma
4beta
5moving_mean
6moving_variance
7moving_stddev
8renorm_mean
9renorm_stddev
:regularization_losses
;	variables
<trainable_variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
?	

>kernel
?bias
@regularization_losses
A	variables
Btrainable_variables
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 64]}}
?
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

Hrenorm_clipping
Iaxis
	Jgamma
Kbeta
Lmoving_mean
Mmoving_variance
Nmoving_stddev
Orenorm_mean
Prenorm_stddev
Qregularization_losses
R	variables
Strainable_variables
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
?	

Ukernel
Vbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 128]}}
?
[regularization_losses
\	variables
]trainable_variables
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

_renorm_clipping
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
emoving_stddev
frenorm_mean
grenorm_stddev
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null, "renorm": true, "renorm_clipping": {}, "renorm_momentum": 0.99}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 256]}}
?
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

pkernel
qbias
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 6, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 65536}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 65536]}}
?

vkernel
wbias
xregularization_losses
y	variables
ztrainable_variables
{	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6]}}
?
|iter

}beta_1

~beta_2
	decay
?learning_ratem?m?'m?(m?3m?4m?>m??m?Jm?Km?Um?Vm?am?bm?pm?qm?vm?wm?v?v?'v?(v?3v?4v?>v??v?Jv?Kv?Uv?Vv?av?bv?pv?qv?vv?wv?"
	optimizer
 "
trackable_list_wrapper
?
0
1
2
3
 4
!5
"6
'7
(8
39
410
511
612
713
814
915
>16
?17
J18
K19
L20
M21
N22
O23
P24
U25
V26
a27
b28
c29
d30
e31
f32
g33
p34
q35
v36
w37"
trackable_list_wrapper
?
0
1
'2
(3
34
45
>6
?7
J8
K9
U10
V11
a12
b13
p14
q15
v16
w17"
trackable_list_wrapper
?
 ?layer_regularization_losses
?layers
?metrics
?non_trainable_variables
regularization_losses
	variables
?layer_metrics
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
1:/ (2!batch_normalization/moving_stddev
/:- (2batch_normalization/renorm_mean
1:/ (2!batch_normalization/renorm_stddev
 "
trackable_list_wrapper
Q
0
1
2
3
 4
!5
"6"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
#regularization_losses
$	variables
?layer_metrics
%trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%@2conv2d/kernel
:@2conv2d/bias
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
)regularization_losses
*	variables
?layer_metrics
+trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
-regularization_losses
.	variables
?layer_metrics
/trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
):'@2batch_normalization_1/gamma
(:&@2batch_normalization_1/beta
1:/@ (2!batch_normalization_1/moving_mean
5:3@ (2%batch_normalization_1/moving_variance
3:1@ (2#batch_normalization_1/moving_stddev
1:/@ (2!batch_normalization_1/renorm_mean
3:1@ (2#batch_normalization_1/renorm_stddev
 "
trackable_list_wrapper
Q
30
41
52
63
74
85
96"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
:regularization_losses
;	variables
?layer_metrics
<trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@?2conv2d_1/kernel
:?2conv2d_1/bias
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
@regularization_losses
A	variables
?layer_metrics
Btrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
Dregularization_losses
E	variables
?layer_metrics
Ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(?2batch_normalization_2/gamma
):'?2batch_normalization_2/beta
2:0? (2!batch_normalization_2/moving_mean
6:4? (2%batch_normalization_2/moving_variance
4:2? (2#batch_normalization_2/moving_stddev
2:0? (2!batch_normalization_2/renorm_mean
4:2? (2#batch_normalization_2/renorm_stddev
 "
trackable_list_wrapper
Q
J0
K1
L2
M3
N4
O5
P6"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
Qregularization_losses
R	variables
?layer_metrics
Strainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)??2conv2d_2/kernel
:?2conv2d_2/bias
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
Wregularization_losses
X	variables
?layer_metrics
Ytrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
[regularization_losses
\	variables
?layer_metrics
]trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(?2batch_normalization_3/gamma
):'?2batch_normalization_3/beta
2:0? (2!batch_normalization_3/moving_mean
6:4? (2%batch_normalization_3/moving_variance
4:2? (2#batch_normalization_3/moving_stddev
2:0? (2!batch_normalization_3/renorm_mean
4:2? (2#batch_normalization_3/renorm_stddev
 "
trackable_list_wrapper
Q
a0
b1
c2
d3
e4
f5
g6"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
hregularization_losses
i	variables
?layer_metrics
jtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
lregularization_losses
m	variables
?layer_metrics
ntrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
??2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
rregularization_losses
s	variables
?layer_metrics
ttrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?metrics
?layers
?non_trainable_variables
xregularization_losses
y	variables
?layer_metrics
ztrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
?
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
?0
?1"
trackable_list_wrapper
?
0
1
 2
!3
"4
55
66
77
88
99
L10
M11
N12
O13
P14
c15
d16
e17
f18
g19"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	2Variable
:	2Variable
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
 2
!3
"4"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
50
61
72
83
94"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
L0
M1
N2
O3
P4"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
c0
d1
e2
f3
g4"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "binary_accuracy", "dtype": "float32", "config": {"name": "binary_accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:*2 Adam/batch_normalization/gamma/m
+:)2Adam/batch_normalization/beta/m
,:*@2Adam/conv2d/kernel/m
:@2Adam/conv2d/bias/m
.:,@2"Adam/batch_normalization_1/gamma/m
-:+@2!Adam/batch_normalization_1/beta/m
/:-@?2Adam/conv2d_1/kernel/m
!:?2Adam/conv2d_1/bias/m
/:-?2"Adam/batch_normalization_2/gamma/m
.:,?2!Adam/batch_normalization_2/beta/m
0:.??2Adam/conv2d_2/kernel/m
!:?2Adam/conv2d_2/bias/m
/:-?2"Adam/batch_normalization_3/gamma/m
.:,?2!Adam/batch_normalization_3/beta/m
%:#
??2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*2 Adam/batch_normalization/gamma/v
+:)2Adam/batch_normalization/beta/v
,:*@2Adam/conv2d/kernel/v
:@2Adam/conv2d/bias/v
.:,@2"Adam/batch_normalization_1/gamma/v
-:+@2!Adam/batch_normalization_1/beta/v
/:-@?2Adam/conv2d_1/kernel/v
!:?2Adam/conv2d_1/bias/v
/:-?2"Adam/batch_normalization_2/gamma/v
.:,?2!Adam/batch_normalization_2/beta/v
0:.??2Adam/conv2d_2/kernel/v
!:?2Adam/conv2d_2/bias/v
/:-?2"Adam/batch_normalization_3/gamma/v
.:,?2!Adam/batch_normalization_3/beta/v
%:#
??2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
?2?
*__inference_sequential_layer_call_fn_16935
*__inference_sequential_layer_call_fn_16137
*__inference_sequential_layer_call_fn_16011
*__inference_sequential_layer_call_fn_16878?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_15638
E__inference_sequential_layer_call_and_return_conditional_losses_16687
E__inference_sequential_layer_call_and_return_conditional_losses_15707
E__inference_sequential_layer_call_and_return_conditional_losses_16795?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_13770?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
input_1???????????
?2?
3__inference_batch_normalization_layer_call_fn_17056
3__inference_batch_normalization_layer_call_fn_17069
3__inference_batch_normalization_layer_call_fn_17190
3__inference_batch_normalization_layer_call_fn_17203?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17017
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17037
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17171
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17151?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_conv2d_layer_call_fn_17223?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_conv2d_layer_call_and_return_conditional_losses_17214?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_max_pooling2d_layer_call_fn_14020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_14014?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
5__inference_batch_normalization_1_layer_call_fn_17357
5__inference_batch_normalization_1_layer_call_fn_17478
5__inference_batch_normalization_1_layer_call_fn_17491
5__inference_batch_normalization_1_layer_call_fn_17344?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17459
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17325
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17305
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17439?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_conv2d_1_layer_call_fn_17511?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17502?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_1_layer_call_fn_14270?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_14264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
5__inference_batch_normalization_2_layer_call_fn_17632
5__inference_batch_normalization_2_layer_call_fn_17645
5__inference_batch_normalization_2_layer_call_fn_17779
5__inference_batch_normalization_2_layer_call_fn_17766?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17727
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17613
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17747
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17593?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_conv2d_2_layer_call_fn_17799?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_2_layer_call_fn_14520?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_14514?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
5__inference_batch_normalization_3_layer_call_fn_17933
5__inference_batch_normalization_3_layer_call_fn_18054
5__inference_batch_normalization_3_layer_call_fn_17920
5__inference_batch_normalization_3_layer_call_fn_18067?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17901
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18015
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17881
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18035?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_flatten_layer_call_fn_18078?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_flatten_layer_call_and_return_conditional_losses_18073?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_18098?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_18089?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_18118?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_18109?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_16204input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_13770?'(6354>?MJLKUVdacbpqvw:?7
0?-
+?(
input_1???????????
? "1?.
,
dense_1!?
dense_1??????????
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17305u9834576;?8
1?.
(?%
inputs?????????@@@
p
? "-?*
#? 
0?????????@@@
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17325r6354;?8
1?.
(?%
inputs?????????@@@
p 
? "-?*
#? 
0?????????@@@
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17439?9834576M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_17459?6354M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
5__inference_batch_normalization_1_layer_call_fn_17344h9834576;?8
1?.
(?%
inputs?????????@@@
p
? " ??????????@@@?
5__inference_batch_normalization_1_layer_call_fn_17357e6354;?8
1?.
(?%
inputs?????????@@@
p 
? " ??????????@@@?
5__inference_batch_normalization_1_layer_call_fn_17478?9834576M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
5__inference_batch_normalization_1_layer_call_fn_17491?6354M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17593?POJKLNMN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17613?MJLKN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17727wPOJKLNM<?9
2?/
)?&
inputs?????????  ?
p
? ".?+
$?!
0?????????  ?
? ?
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_17747tMJLK<?9
2?/
)?&
inputs?????????  ?
p 
? ".?+
$?!
0?????????  ?
? ?
5__inference_batch_normalization_2_layer_call_fn_17632?POJKLNMN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
5__inference_batch_normalization_2_layer_call_fn_17645?MJLKN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
5__inference_batch_normalization_2_layer_call_fn_17766jPOJKLNM<?9
2?/
)?&
inputs?????????  ?
p
? "!??????????  ??
5__inference_batch_normalization_2_layer_call_fn_17779gMJLK<?9
2?/
)?&
inputs?????????  ?
p 
? "!??????????  ??
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17881?gfabcedN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_17901?dacbN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18015wgfabced<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_18035tdacb<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
5__inference_batch_normalization_3_layer_call_fn_17920?gfabcedN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
5__inference_batch_normalization_3_layer_call_fn_17933?dacbN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
5__inference_batch_normalization_3_layer_call_fn_18054jgfabced<?9
2?/
)?&
inputs??????????
p
? "!????????????
5__inference_batch_normalization_3_layer_call_fn_18067gdacb<?9
2?/
)?&
inputs??????????
p 
? "!????????????
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17017?"! M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17037?M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17151y"! =?:
3?0
*?'
inputs???????????
p
? "/?,
%?"
0???????????
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_17171v=?:
3?0
*?'
inputs???????????
p 
? "/?,
%?"
0???????????
? ?
3__inference_batch_normalization_layer_call_fn_17056?"! M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
3__inference_batch_normalization_layer_call_fn_17069?M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
3__inference_batch_normalization_layer_call_fn_17190l"! =?:
3?0
*?'
inputs???????????
p
? ""?????????????
3__inference_batch_normalization_layer_call_fn_17203i=?:
3?0
*?'
inputs???????????
p 
? ""?????????????
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17502m>?7?4
-?*
(?%
inputs?????????@@@
? ".?+
$?!
0?????????@@?
? ?
(__inference_conv2d_1_layer_call_fn_17511`>?7?4
-?*
(?%
inputs?????????@@@
? "!??????????@@??
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17790nUV8?5
.?+
)?&
inputs?????????  ?
? ".?+
$?!
0?????????  ?
? ?
(__inference_conv2d_2_layer_call_fn_17799aUV8?5
.?+
)?&
inputs?????????  ?
? "!??????????  ??
A__inference_conv2d_layer_call_and_return_conditional_losses_17214p'(9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????@
? ?
&__inference_conv2d_layer_call_fn_17223c'(9?6
/?,
*?'
inputs???????????
? ""????????????@?
B__inference_dense_1_layer_call_and_return_conditional_losses_18109\vw/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_18118Ovw/?,
%?"
 ?
inputs?????????
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_18089^pq1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? z
%__inference_dense_layer_call_fn_18098Qpq1?.
'?$
"?
inputs???????????
? "???????????
B__inference_flatten_layer_call_and_return_conditional_losses_18073c8?5
.?+
)?&
inputs??????????
? "'?$
?
0???????????
? ?
'__inference_flatten_layer_call_fn_18078V8?5
.?+
)?&
inputs??????????
? "?????????????
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_14264?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_1_layer_call_fn_14270?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_14514?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_2_layer_call_fn_14520?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_14014?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_max_pooling2d_layer_call_fn_14020?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
E__inference_sequential_layer_call_and_return_conditional_losses_15638?(?"! '(9834576>?POJKLNMUVgfabcedpqvwB??
8?5
+?(
input_1???????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_15707?'(6354>?MJLKUVdacbpqvwB??
8?5
+?(
input_1???????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_16687?(?"! '(9834576>?POJKLNMUVgfabcedpqvwA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_16795?'(6354>?MJLKUVdacbpqvwA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_16011?(?"! '(9834576>?POJKLNMUVgfabcedpqvwB??
8?5
+?(
input_1???????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_16137z'(6354>?MJLKUVdacbpqvwB??
8?5
+?(
input_1???????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_16878?(?"! '(9834576>?POJKLNMUVgfabcedpqvwA?>
7?4
*?'
inputs???????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_16935y'(6354>?MJLKUVdacbpqvwA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
#__inference_signature_wrapper_16204?'(6354>?MJLKUVdacbpqvwE?B
? 
;?8
6
input_1+?(
input_1???????????"1?.
,
dense_1!?
dense_1?????????