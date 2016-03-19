.class public final Lleg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lleg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lldu;

.field public c:[J

.field public d:[Z

.field public e:[Lldv;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lleh;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2052
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3057
    iput-object v1, p0, Lleg;->a:Ljava/lang/Integer;

    .line 3058
    invoke-static {}, Lldu;->d()[Lldu;

    move-result-object v0

    iput-object v0, p0, Lleg;->b:[Lldu;

    .line 3059
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Lleg;->c:[J

    .line 3060
    sget-object v0, Llyo;->e:[Z

    iput-object v0, p0, Lleg;->d:[Z

    .line 3061
    invoke-static {}, Lldv;->d()[Lldv;

    move-result-object v0

    iput-object v0, p0, Lleg;->e:[Lldv;

    .line 3062
    iput-object v1, p0, Lleg;->f:Ljava/lang/String;

    .line 3063
    iput-object v1, p0, Lleg;->g:Ljava/lang/String;

    .line 3064
    iput-object v1, p0, Lleg;->h:Lleh;

    .line 3065
    iput-object v1, p0, Lleg;->i:Ljava/lang/Integer;

    .line 3066
    iput-object v1, p0, Lleg;->j:Ljava/lang/Integer;

    .line 3067
    iput-object v1, p0, Lleg;->eD:Llyd;

    .line 3068
    const/4 v0, -0x1

    iput v0, p0, Lleg;->eE:I

    .line 2054
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4191
    sparse-switch v0, :sswitch_data_0

    .line 4195
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4196
    :sswitch_0
    return-object p0

    .line 4201
    :sswitch_1
    const/16 v0, 0xa

    .line 4202
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4203
    iget-object v0, p0, Lleg;->b:[Lldu;

    if-nez v0, :cond_2

    move v0, v1

    .line 4204
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lldu;

    .line 4206
    if-eqz v0, :cond_1

    .line 4207
    iget-object v3, p0, Lleg;->b:[Lldu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4209
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4210
    new-instance v3, Lldu;

    invoke-direct {v3}, Lldu;-><init>()V

    aput-object v3, v2, v0

    .line 4211
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4212
    invoke-virtual {p1}, Llxy;->a()I

    .line 4209
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4203
    :cond_2
    iget-object v0, p0, Lleg;->b:[Lldu;

    array-length v0, v0

    goto :goto_1

    .line 4215
    :cond_3
    new-instance v3, Lldu;

    invoke-direct {v3}, Lldu;-><init>()V

    aput-object v3, v2, v0

    .line 4216
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4217
    iput-object v2, p0, Lleg;->b:[Lldu;

    goto :goto_0

    .line 4221
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lleg;->f:Ljava/lang/String;

    goto :goto_0

    .line 4225
    :sswitch_3
    iget-object v0, p0, Lleg;->h:Lleh;

    if-nez v0, :cond_4

    .line 4226
    new-instance v0, Lleh;

    invoke-direct {v0}, Lleh;-><init>()V

    iput-object v0, p0, Lleg;->h:Lleh;

    .line 4228
    :cond_4
    iget-object v0, p0, Lleg;->h:Lleh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4232
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lleg;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 4236
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lleg;->j:Ljava/lang/Integer;

    goto :goto_0

    .line 4240
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lleg;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 4244
    :sswitch_7
    const/16 v0, 0x38

    .line 4245
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4246
    iget-object v0, p0, Lleg;->c:[J

    if-nez v0, :cond_6

    move v0, v1

    .line 4247
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 4248
    if-eqz v0, :cond_5

    .line 4249
    iget-object v3, p0, Lleg;->c:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4251
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 4252
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 4253
    invoke-virtual {p1}, Llxy;->a()I

    .line 4251
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4246
    :cond_6
    iget-object v0, p0, Lleg;->c:[J

    array-length v0, v0

    goto :goto_3

    .line 4256
    :cond_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 4257
    iput-object v2, p0, Lleg;->c:[J

    goto/16 :goto_0

    .line 4261
    :sswitch_8
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 4262
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 4265
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 4266
    :goto_5
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_8

    .line 4267
    invoke-virtual {p1}, Llxy;->e()J

    .line 4268
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4270
    :cond_8
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 4271
    iget-object v2, p0, Lleg;->c:[J

    if-nez v2, :cond_a

    move v2, v1

    .line 4272
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 4273
    if-eqz v2, :cond_9

    .line 4274
    iget-object v4, p0, Lleg;->c:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4276
    :cond_9
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_b

    .line 4277
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 4276
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4271
    :cond_a
    iget-object v2, p0, Lleg;->c:[J

    array-length v2, v2

    goto :goto_6

    .line 4279
    :cond_b
    iput-object v0, p0, Lleg;->c:[J

    .line 4280
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 4284
    :sswitch_9
    const/16 v0, 0x40

    .line 4285
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4286
    iget-object v0, p0, Lleg;->d:[Z

    if-nez v0, :cond_d

    move v0, v1

    .line 4287
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Z

    .line 4288
    if-eqz v0, :cond_c

    .line 4289
    iget-object v3, p0, Lleg;->d:[Z

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4291
    :cond_c
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    .line 4292
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 4293
    invoke-virtual {p1}, Llxy;->a()I

    .line 4291
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4286
    :cond_d
    iget-object v0, p0, Lleg;->d:[Z

    array-length v0, v0

    goto :goto_8

    .line 4296
    :cond_e
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 4297
    iput-object v2, p0, Lleg;->d:[Z

    goto/16 :goto_0

    .line 4301
    :sswitch_a
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 4302
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 4305
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 4306
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_f

    .line 4307
    invoke-virtual {p1}, Llxy;->i()Z

    .line 4308
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4310
    :cond_f
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 4311
    iget-object v2, p0, Lleg;->d:[Z

    if-nez v2, :cond_11

    move v2, v1

    .line 4312
    :goto_b
    add-int/2addr v0, v2

    new-array v0, v0, [Z

    .line 4313
    if-eqz v2, :cond_10

    .line 4314
    iget-object v4, p0, Lleg;->d:[Z

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4316
    :cond_10
    :goto_c
    array-length v4, v0

    if-ge v2, v4, :cond_12

    .line 4317
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 4316
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4311
    :cond_11
    iget-object v2, p0, Lleg;->d:[Z

    array-length v2, v2

    goto :goto_b

    .line 4319
    :cond_12
    iput-object v0, p0, Lleg;->d:[Z

    .line 4320
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 4324
    :sswitch_b
    const/16 v0, 0x4a

    .line 4325
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4326
    iget-object v0, p0, Lleg;->e:[Lldv;

    if-nez v0, :cond_14

    move v0, v1

    .line 4327
    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lldv;

    .line 4329
    if-eqz v0, :cond_13

    .line 4330
    iget-object v3, p0, Lleg;->e:[Lldv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4332
    :cond_13
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_15

    .line 4333
    new-instance v3, Lldv;

    invoke-direct {v3}, Lldv;-><init>()V

    aput-object v3, v2, v0

    .line 4334
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4335
    invoke-virtual {p1}, Llxy;->a()I

    .line 4332
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 4326
    :cond_14
    iget-object v0, p0, Lleg;->e:[Lldv;

    array-length v0, v0

    goto :goto_d

    .line 4338
    :cond_15
    new-instance v3, Lldv;

    invoke-direct {v3}, Lldv;-><init>()V

    aput-object v3, v2, v0

    .line 4339
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4340
    iput-object v2, p0, Lleg;->e:[Lldv;

    goto/16 :goto_0

    .line 4344
    :sswitch_c
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lleg;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 4191
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x3a -> :sswitch_8
        0x40 -> :sswitch_9
        0x42 -> :sswitch_a
        0x4a -> :sswitch_b
        0x52 -> :sswitch_c
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2075
    iget-object v0, p0, Lleg;->b:[Lldu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lleg;->b:[Lldu;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 2076
    :goto_0
    iget-object v2, p0, Lleg;->b:[Lldu;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2077
    iget-object v2, p0, Lleg;->b:[Lldu;

    aget-object v2, v2, v0

    .line 2078
    if-eqz v2, :cond_0

    .line 2079
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2076
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v0, p0, Lleg;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2084
    const/4 v0, 0x2

    iget-object v2, p0, Lleg;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 2086
    :cond_2
    iget-object v0, p0, Lleg;->h:Lleh;

    if-eqz v0, :cond_3

    .line 2087
    const/4 v0, 0x3

    iget-object v2, p0, Lleg;->h:Lleh;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2089
    :cond_3
    iget-object v0, p0, Lleg;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 2090
    const/4 v0, 0x4

    iget-object v2, p0, Lleg;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 2092
    :cond_4
    iget-object v0, p0, Lleg;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 2093
    const/4 v0, 0x5

    iget-object v2, p0, Lleg;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 2095
    :cond_5
    iget-object v0, p0, Lleg;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 2096
    const/4 v0, 0x6

    iget-object v2, p0, Lleg;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 2098
    :cond_6
    iget-object v0, p0, Lleg;->c:[J

    if-eqz v0, :cond_7

    iget-object v0, p0, Lleg;->c:[J

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 2099
    :goto_1
    iget-object v2, p0, Lleg;->c:[J

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 2100
    const/4 v2, 0x7

    iget-object v3, p0, Lleg;->c:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Llxz;->b(IJ)V

    .line 2099
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2103
    :cond_7
    iget-object v0, p0, Lleg;->d:[Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lleg;->d:[Z

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 2104
    :goto_2
    iget-object v2, p0, Lleg;->d:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 2105
    const/16 v2, 0x8

    iget-object v3, p0, Lleg;->d:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(IZ)V

    .line 2104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2108
    :cond_8
    iget-object v0, p0, Lleg;->e:[Lldv;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lleg;->e:[Lldv;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 2109
    :goto_3
    iget-object v0, p0, Lleg;->e:[Lldv;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 2110
    iget-object v0, p0, Lleg;->e:[Lldv;

    aget-object v0, v0, v1

    .line 2111
    if-eqz v0, :cond_9

    .line 2112
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 2109
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2116
    :cond_a
    iget-object v0, p0, Lleg;->g:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2117
    const/16 v0, 0xa

    iget-object v1, p0, Lleg;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2119
    :cond_b
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2120
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2124
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2125
    iget-object v2, p0, Lleg;->b:[Lldu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lleg;->b:[Lldu;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 2126
    :goto_0
    iget-object v3, p0, Lleg;->b:[Lldu;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2127
    iget-object v3, p0, Lleg;->b:[Lldu;

    aget-object v3, v3, v0

    .line 2128
    if-eqz v3, :cond_0

    .line 2129
    const/4 v4, 0x1

    .line 2130
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2134
    :cond_2
    iget-object v2, p0, Lleg;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2135
    const/4 v2, 0x2

    iget-object v3, p0, Lleg;->f:Ljava/lang/String;

    .line 2136
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2138
    :cond_3
    iget-object v2, p0, Lleg;->h:Lleh;

    if-eqz v2, :cond_4

    .line 2139
    const/4 v2, 0x3

    iget-object v3, p0, Lleg;->h:Lleh;

    .line 2140
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2142
    :cond_4
    iget-object v2, p0, Lleg;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 2143
    const/4 v2, 0x4

    iget-object v3, p0, Lleg;->i:Ljava/lang/Integer;

    .line 2144
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2146
    :cond_5
    iget-object v2, p0, Lleg;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 2147
    const/4 v2, 0x5

    iget-object v3, p0, Lleg;->j:Ljava/lang/Integer;

    .line 2148
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2150
    :cond_6
    iget-object v2, p0, Lleg;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 2151
    const/4 v2, 0x6

    iget-object v3, p0, Lleg;->a:Ljava/lang/Integer;

    .line 2152
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2154
    :cond_7
    iget-object v2, p0, Lleg;->c:[J

    if-eqz v2, :cond_9

    iget-object v2, p0, Lleg;->c:[J

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v1

    move v3, v1

    .line 2156
    :goto_1
    iget-object v4, p0, Lleg;->c:[J

    array-length v4, v4

    if-ge v2, v4, :cond_8

    .line 2157
    iget-object v4, p0, Lleg;->c:[J

    aget-wide v4, v4, v2

    .line 3765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v4

    .line 2159
    add-int/2addr v3, v4

    .line 2156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2161
    :cond_8
    add-int/2addr v0, v3

    .line 2162
    iget-object v2, p0, Lleg;->c:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 2164
    :cond_9
    iget-object v2, p0, Lleg;->d:[Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lleg;->d:[Z

    array-length v2, v2

    if-lez v2, :cond_a

    .line 2165
    iget-object v2, p0, Lleg;->d:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    .line 2166
    add-int/2addr v0, v2

    .line 2167
    iget-object v2, p0, Lleg;->d:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 2169
    :cond_a
    iget-object v2, p0, Lleg;->e:[Lldv;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lleg;->e:[Lldv;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 2170
    :goto_2
    iget-object v2, p0, Lleg;->e:[Lldv;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 2171
    iget-object v2, p0, Lleg;->e:[Lldv;

    aget-object v2, v2, v1

    .line 2172
    if-eqz v2, :cond_b

    .line 2173
    const/16 v3, 0x9

    .line 2174
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2170
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2178
    :cond_c
    iget-object v1, p0, Lleg;->g:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 2179
    const/16 v1, 0xa

    iget-object v2, p0, Lleg;->g:Ljava/lang/String;

    .line 2180
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2182
    :cond_d
    return v0
.end method
