.class public final Lldr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lldb;

.field public c:[J

.field public d:[Z

.field public e:[Lldc;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Llei;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Llyb;-><init>()V

    .line 56
    iput-object v1, p0, Lldr;->a:Ljava/lang/Integer;

    .line 57
    invoke-static {}, Lldb;->d()[Lldb;

    move-result-object v0

    iput-object v0, p0, Lldr;->b:[Lldb;

    .line 58
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Lldr;->c:[J

    .line 59
    sget-object v0, Llyo;->e:[Z

    iput-object v0, p0, Lldr;->d:[Z

    .line 60
    invoke-static {}, Lldc;->d()[Lldc;

    move-result-object v0

    iput-object v0, p0, Lldr;->e:[Lldc;

    .line 61
    iput-object v1, p0, Lldr;->f:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lldr;->g:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lldr;->h:Llei;

    .line 64
    iput-object v1, p0, Lldr;->i:Ljava/lang/Integer;

    .line 65
    iput-object v1, p0, Lldr;->j:Ljava/lang/Integer;

    .line 66
    iput-object v1, p0, Lldr;->eD:Llyd;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lldr;->eE:I

    .line 68
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2189
    sparse-switch v0, :sswitch_data_0

    .line 2193
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2194
    :sswitch_0
    return-object p0

    .line 2199
    :sswitch_1
    const/16 v0, 0xa

    .line 2200
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2201
    iget-object v0, p0, Lldr;->b:[Lldb;

    if-nez v0, :cond_2

    move v0, v1

    .line 2202
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lldb;

    .line 2204
    if-eqz v0, :cond_1

    .line 2205
    iget-object v3, p0, Lldr;->b:[Lldb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2207
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2208
    new-instance v3, Lldb;

    invoke-direct {v3}, Lldb;-><init>()V

    aput-object v3, v2, v0

    .line 2209
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2210
    invoke-virtual {p1}, Llxy;->a()I

    .line 2207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2201
    :cond_2
    iget-object v0, p0, Lldr;->b:[Lldb;

    array-length v0, v0

    goto :goto_1

    .line 2213
    :cond_3
    new-instance v3, Lldb;

    invoke-direct {v3}, Lldb;-><init>()V

    aput-object v3, v2, v0

    .line 2214
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2215
    iput-object v2, p0, Lldr;->b:[Lldb;

    goto :goto_0

    .line 2219
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lldr;->f:Ljava/lang/String;

    goto :goto_0

    .line 2223
    :sswitch_3
    iget-object v0, p0, Lldr;->h:Llei;

    if-nez v0, :cond_4

    .line 2224
    new-instance v0, Llei;

    invoke-direct {v0}, Llei;-><init>()V

    iput-object v0, p0, Lldr;->h:Llei;

    .line 2226
    :cond_4
    iget-object v0, p0, Lldr;->h:Llei;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2230
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lldr;->i:Ljava/lang/Integer;

    goto :goto_0

    .line 2234
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lldr;->j:Ljava/lang/Integer;

    goto :goto_0

    .line 2238
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lldr;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2242
    :sswitch_7
    const/16 v0, 0x38

    .line 2243
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2244
    iget-object v0, p0, Lldr;->c:[J

    if-nez v0, :cond_6

    move v0, v1

    .line 2245
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 2246
    if-eqz v0, :cond_5

    .line 2247
    iget-object v3, p0, Lldr;->c:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2249
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2250
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2251
    invoke-virtual {p1}, Llxy;->a()I

    .line 2249
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2244
    :cond_6
    iget-object v0, p0, Lldr;->c:[J

    array-length v0, v0

    goto :goto_3

    .line 2254
    :cond_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2255
    iput-object v2, p0, Lldr;->c:[J

    goto/16 :goto_0

    .line 2259
    :sswitch_8
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2260
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2263
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2264
    :goto_5
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_8

    .line 2265
    invoke-virtual {p1}, Llxy;->e()J

    .line 2266
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2268
    :cond_8
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2269
    iget-object v2, p0, Lldr;->c:[J

    if-nez v2, :cond_a

    move v2, v1

    .line 2270
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 2271
    if-eqz v2, :cond_9

    .line 2272
    iget-object v4, p0, Lldr;->c:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2274
    :cond_9
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_b

    .line 2275
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 2274
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2269
    :cond_a
    iget-object v2, p0, Lldr;->c:[J

    array-length v2, v2

    goto :goto_6

    .line 2277
    :cond_b
    iput-object v0, p0, Lldr;->c:[J

    .line 2278
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2282
    :sswitch_9
    const/16 v0, 0x40

    .line 2283
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2284
    iget-object v0, p0, Lldr;->d:[Z

    if-nez v0, :cond_d

    move v0, v1

    .line 2285
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Z

    .line 2286
    if-eqz v0, :cond_c

    .line 2287
    iget-object v3, p0, Lldr;->d:[Z

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2289
    :cond_c
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    .line 2290
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 2291
    invoke-virtual {p1}, Llxy;->a()I

    .line 2289
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2284
    :cond_d
    iget-object v0, p0, Lldr;->d:[Z

    array-length v0, v0

    goto :goto_8

    .line 2294
    :cond_e
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 2295
    iput-object v2, p0, Lldr;->d:[Z

    goto/16 :goto_0

    .line 2299
    :sswitch_a
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2300
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2303
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2304
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_f

    .line 2305
    invoke-virtual {p1}, Llxy;->i()Z

    .line 2306
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2308
    :cond_f
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2309
    iget-object v2, p0, Lldr;->d:[Z

    if-nez v2, :cond_11

    move v2, v1

    .line 2310
    :goto_b
    add-int/2addr v0, v2

    new-array v0, v0, [Z

    .line 2311
    if-eqz v2, :cond_10

    .line 2312
    iget-object v4, p0, Lldr;->d:[Z

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2314
    :cond_10
    :goto_c
    array-length v4, v0

    if-ge v2, v4, :cond_12

    .line 2315
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 2314
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2309
    :cond_11
    iget-object v2, p0, Lldr;->d:[Z

    array-length v2, v2

    goto :goto_b

    .line 2317
    :cond_12
    iput-object v0, p0, Lldr;->d:[Z

    .line 2318
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2322
    :sswitch_b
    const/16 v0, 0x4a

    .line 2323
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2324
    iget-object v0, p0, Lldr;->e:[Lldc;

    if-nez v0, :cond_14

    move v0, v1

    .line 2325
    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lldc;

    .line 2327
    if-eqz v0, :cond_13

    .line 2328
    iget-object v3, p0, Lldr;->e:[Lldc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2330
    :cond_13
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_15

    .line 2331
    new-instance v3, Lldc;

    invoke-direct {v3}, Lldc;-><init>()V

    aput-object v3, v2, v0

    .line 2332
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2333
    invoke-virtual {p1}, Llxy;->a()I

    .line 2330
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2324
    :cond_14
    iget-object v0, p0, Lldr;->e:[Lldc;

    array-length v0, v0

    goto :goto_d

    .line 2336
    :cond_15
    new-instance v3, Lldc;

    invoke-direct {v3}, Lldc;-><init>()V

    aput-object v3, v2, v0

    .line 2337
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2338
    iput-object v2, p0, Lldr;->e:[Lldc;

    goto/16 :goto_0

    .line 2342
    :sswitch_c
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lldr;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 2189
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

    .line 73
    iget-object v0, p0, Lldr;->b:[Lldb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lldr;->b:[Lldb;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 74
    :goto_0
    iget-object v2, p0, Lldr;->b:[Lldb;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 75
    iget-object v2, p0, Lldr;->b:[Lldb;

    aget-object v2, v2, v0

    .line 76
    if-eqz v2, :cond_0

    .line 77
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lldr;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x2

    iget-object v2, p0, Lldr;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lldr;->h:Llei;

    if-eqz v0, :cond_3

    .line 85
    const/4 v0, 0x3

    iget-object v2, p0, Lldr;->h:Llei;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 87
    :cond_3
    iget-object v0, p0, Lldr;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 88
    const/4 v0, 0x4

    iget-object v2, p0, Lldr;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 90
    :cond_4
    iget-object v0, p0, Lldr;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 91
    const/4 v0, 0x5

    iget-object v2, p0, Lldr;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 93
    :cond_5
    iget-object v0, p0, Lldr;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 94
    const/4 v0, 0x6

    iget-object v2, p0, Lldr;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 96
    :cond_6
    iget-object v0, p0, Lldr;->c:[J

    if-eqz v0, :cond_7

    iget-object v0, p0, Lldr;->c:[J

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 97
    :goto_1
    iget-object v2, p0, Lldr;->c:[J

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 98
    const/4 v2, 0x7

    iget-object v3, p0, Lldr;->c:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Llxz;->b(IJ)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_7
    iget-object v0, p0, Lldr;->d:[Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lldr;->d:[Z

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 102
    :goto_2
    iget-object v2, p0, Lldr;->d:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 103
    const/16 v2, 0x8

    iget-object v3, p0, Lldr;->d:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(IZ)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 106
    :cond_8
    iget-object v0, p0, Lldr;->e:[Lldc;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lldr;->e:[Lldc;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 107
    :goto_3
    iget-object v0, p0, Lldr;->e:[Lldc;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 108
    iget-object v0, p0, Lldr;->e:[Lldc;

    aget-object v0, v0, v1

    .line 109
    if-eqz v0, :cond_9

    .line 110
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 107
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 114
    :cond_a
    iget-object v0, p0, Lldr;->g:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 115
    const/16 v0, 0xa

    iget-object v1, p0, Lldr;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 117
    :cond_b
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 118
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 123
    iget-object v2, p0, Lldr;->b:[Lldb;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lldr;->b:[Lldb;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 124
    :goto_0
    iget-object v3, p0, Lldr;->b:[Lldb;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 125
    iget-object v3, p0, Lldr;->b:[Lldb;

    aget-object v3, v3, v0

    .line 126
    if-eqz v3, :cond_0

    .line 127
    const/4 v4, 0x1

    .line 128
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    :cond_2
    iget-object v2, p0, Lldr;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 133
    const/4 v2, 0x2

    iget-object v3, p0, Lldr;->f:Ljava/lang/String;

    .line 134
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 136
    :cond_3
    iget-object v2, p0, Lldr;->h:Llei;

    if-eqz v2, :cond_4

    .line 137
    const/4 v2, 0x3

    iget-object v3, p0, Lldr;->h:Llei;

    .line 138
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 140
    :cond_4
    iget-object v2, p0, Lldr;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 141
    const/4 v2, 0x4

    iget-object v3, p0, Lldr;->i:Ljava/lang/Integer;

    .line 142
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 144
    :cond_5
    iget-object v2, p0, Lldr;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 145
    const/4 v2, 0x5

    iget-object v3, p0, Lldr;->j:Ljava/lang/Integer;

    .line 146
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 148
    :cond_6
    iget-object v2, p0, Lldr;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 149
    const/4 v2, 0x6

    iget-object v3, p0, Lldr;->a:Ljava/lang/Integer;

    .line 150
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 152
    :cond_7
    iget-object v2, p0, Lldr;->c:[J

    if-eqz v2, :cond_9

    iget-object v2, p0, Lldr;->c:[J

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v1

    move v3, v1

    .line 154
    :goto_1
    iget-object v4, p0, Lldr;->c:[J

    array-length v4, v4

    if-ge v2, v4, :cond_8

    .line 155
    iget-object v4, p0, Lldr;->c:[J

    aget-wide v4, v4, v2

    .line 1765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v4

    .line 157
    add-int/2addr v3, v4

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 159
    :cond_8
    add-int/2addr v0, v3

    .line 160
    iget-object v2, p0, Lldr;->c:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 162
    :cond_9
    iget-object v2, p0, Lldr;->d:[Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lldr;->d:[Z

    array-length v2, v2

    if-lez v2, :cond_a

    .line 163
    iget-object v2, p0, Lldr;->d:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    .line 164
    add-int/2addr v0, v2

    .line 165
    iget-object v2, p0, Lldr;->d:[Z

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 167
    :cond_a
    iget-object v2, p0, Lldr;->e:[Lldc;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lldr;->e:[Lldc;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 168
    :goto_2
    iget-object v2, p0, Lldr;->e:[Lldc;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 169
    iget-object v2, p0, Lldr;->e:[Lldc;

    aget-object v2, v2, v1

    .line 170
    if-eqz v2, :cond_b

    .line 171
    const/16 v3, 0x9

    .line 172
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_c
    iget-object v1, p0, Lldr;->g:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 177
    const/16 v1, 0xa

    iget-object v2, p0, Lldr;->g:Ljava/lang/String;

    .line 178
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_d
    return v0
.end method
