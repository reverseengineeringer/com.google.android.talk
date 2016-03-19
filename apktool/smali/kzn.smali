.class public final Lkzn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkzn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[I

.field public c:[[B

.field public d:[[B

.field public e:[I

.field public f:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1059
    iput-object v1, p0, Lkzn;->a:[B

    .line 1060
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkzn;->b:[I

    .line 1061
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkzn;->c:[[B

    .line 1062
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkzn;->d:[[B

    .line 1063
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkzn;->e:[I

    .line 1064
    iput-object v1, p0, Lkzn;->f:Ljava/lang/Long;

    .line 1065
    iput-object v1, p0, Lkzn;->eD:Llyd;

    .line 1066
    const/4 v0, -0x1

    iput v0, p0, Lkzn;->eE:I

    .line 56
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2170
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2171
    sparse-switch v0, :sswitch_data_0

    .line 2175
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2176
    :sswitch_0
    return-object p0

    .line 2181
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkzn;->a:[B

    goto :goto_0

    .line 2185
    :sswitch_2
    const/16 v0, 0x10

    .line 2186
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2187
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2189
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2190
    if-eqz v3, :cond_1

    .line 2191
    invoke-virtual {p1}, Llxy;->a()I

    .line 2193
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2194
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 2189
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2198
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 2202
    :cond_2
    if-eqz v1, :cond_0

    .line 2203
    iget-object v0, p0, Lkzn;->b:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 2204
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 2205
    iput-object v5, p0, Lkzn;->b:[I

    goto :goto_0

    .line 2203
    :cond_3
    iget-object v0, p0, Lkzn;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 2207
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2208
    if-eqz v0, :cond_5

    .line 2209
    iget-object v4, p0, Lkzn;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2211
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2212
    iput-object v3, p0, Lkzn;->b:[I

    goto :goto_0

    .line 2218
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2219
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2222
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2223
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 2224
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 2228
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2232
    :cond_6
    if-eqz v0, :cond_a

    .line 2233
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2234
    iget-object v1, p0, Lkzn;->b:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 2235
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2236
    if-eqz v1, :cond_7

    .line 2237
    iget-object v0, p0, Lkzn;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2239
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 2240
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2241
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 2245
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 2234
    :cond_8
    iget-object v1, p0, Lkzn;->b:[I

    array-length v1, v1

    goto :goto_5

    .line 2249
    :cond_9
    iput-object v4, p0, Lkzn;->b:[I

    .line 2251
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2255
    :sswitch_4
    const/16 v0, 0x1a

    .line 2256
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v1

    .line 2257
    iget-object v0, p0, Lkzn;->c:[[B

    if-nez v0, :cond_c

    move v0, v2

    .line 2258
    :goto_7
    add-int/2addr v1, v0

    new-array v1, v1, [[B

    .line 2259
    if-eqz v0, :cond_b

    .line 2260
    iget-object v3, p0, Lkzn;->c:[[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2262
    :cond_b
    :goto_8
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 2263
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2264
    invoke-virtual {p1}, Llxy;->a()I

    .line 2262
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2257
    :cond_c
    iget-object v0, p0, Lkzn;->c:[[B

    array-length v0, v0

    goto :goto_7

    .line 2267
    :cond_d
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2268
    iput-object v1, p0, Lkzn;->c:[[B

    goto/16 :goto_0

    .line 2272
    :sswitch_5
    const/16 v0, 0x22

    .line 2273
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v1

    .line 2274
    iget-object v0, p0, Lkzn;->d:[[B

    if-nez v0, :cond_f

    move v0, v2

    .line 2275
    :goto_9
    add-int/2addr v1, v0

    new-array v1, v1, [[B

    .line 2276
    if-eqz v0, :cond_e

    .line 2277
    iget-object v3, p0, Lkzn;->d:[[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2279
    :cond_e
    :goto_a
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_10

    .line 2280
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2281
    invoke-virtual {p1}, Llxy;->a()I

    .line 2279
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2274
    :cond_f
    iget-object v0, p0, Lkzn;->d:[[B

    array-length v0, v0

    goto :goto_9

    .line 2284
    :cond_10
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2285
    iput-object v1, p0, Lkzn;->d:[[B

    goto/16 :goto_0

    .line 2289
    :sswitch_6
    const/16 v0, 0x2d

    .line 2290
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v1

    .line 2291
    iget-object v0, p0, Lkzn;->e:[I

    if-nez v0, :cond_12

    move v0, v2

    .line 2292
    :goto_b
    add-int/2addr v1, v0

    new-array v1, v1, [I

    .line 2293
    if-eqz v0, :cond_11

    .line 2294
    iget-object v3, p0, Lkzn;->e:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2296
    :cond_11
    :goto_c
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_13

    .line 2297
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v1, v0

    .line 2298
    invoke-virtual {p1}, Llxy;->a()I

    .line 2296
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2291
    :cond_12
    iget-object v0, p0, Lkzn;->e:[I

    array-length v0, v0

    goto :goto_b

    .line 2301
    :cond_13
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v1, v0

    .line 2302
    iput-object v1, p0, Lkzn;->e:[I

    goto/16 :goto_0

    .line 2306
    :sswitch_7
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2307
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v1

    .line 2308
    div-int/lit8 v3, v0, 0x4

    .line 2309
    iget-object v0, p0, Lkzn;->e:[I

    if-nez v0, :cond_15

    move v0, v2

    .line 2310
    :goto_d
    add-int/2addr v3, v0

    new-array v3, v3, [I

    .line 2311
    if-eqz v0, :cond_14

    .line 2312
    iget-object v4, p0, Lkzn;->e:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2314
    :cond_14
    :goto_e
    array-length v4, v3

    if-ge v0, v4, :cond_16

    .line 2315
    invoke-virtual {p1}, Llxy;->h()I

    move-result v4

    aput v4, v3, v0

    .line 2314
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2309
    :cond_15
    iget-object v0, p0, Lkzn;->e:[I

    array-length v0, v0

    goto :goto_d

    .line 2317
    :cond_16
    iput-object v3, p0, Lkzn;->e:[I

    .line 2318
    invoke-virtual {p1, v1}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2322
    :sswitch_8
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkzn;->f:Ljava/lang/Long;

    goto/16 :goto_0

    .line 2171
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_7
        0x2d -> :sswitch_6
        0x31 -> :sswitch_8
    .end sparse-switch

    .line 2194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2224
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2241
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lkzn;->a:[B

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iget-object v2, p0, Lkzn;->a:[B

    invoke-virtual {p1, v0, v2}, Llxz;->a(I[B)V

    .line 76
    :cond_0
    iget-object v0, p0, Lkzn;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkzn;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 77
    :goto_0
    iget-object v2, p0, Lkzn;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 78
    const/4 v2, 0x2

    iget-object v3, p0, Lkzn;->b:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lkzn;->c:[[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkzn;->c:[[B

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 82
    :goto_1
    iget-object v2, p0, Lkzn;->c:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 83
    iget-object v2, p0, Lkzn;->c:[[B

    aget-object v2, v2, v0

    .line 84
    if-eqz v2, :cond_2

    .line 85
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lkzn;->d:[[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkzn;->d:[[B

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 90
    :goto_2
    iget-object v2, p0, Lkzn;->d:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 91
    iget-object v2, p0, Lkzn;->d:[[B

    aget-object v2, v2, v0

    .line 92
    if-eqz v2, :cond_4

    .line 93
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 90
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_5
    iget-object v0, p0, Lkzn;->e:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkzn;->e:[I

    array-length v0, v0

    if-lez v0, :cond_6

    .line 98
    :goto_3
    iget-object v0, p0, Lkzn;->e:[I

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 99
    const/4 v0, 0x5

    iget-object v2, p0, Lkzn;->e:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->b(II)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 102
    :cond_6
    iget-object v0, p0, Lkzn;->f:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 103
    const/4 v0, 0x6

    iget-object v1, p0, Lkzn;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 105
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 106
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 111
    iget-object v1, p0, Lkzn;->a:[B

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    iget-object v3, p0, Lkzn;->a:[B

    .line 113
    invoke-static {v1, v3}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    iget-object v1, p0, Lkzn;->b:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkzn;->b:[I

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    move v3, v2

    .line 117
    :goto_0
    iget-object v4, p0, Lkzn;->b:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 118
    iget-object v4, p0, Lkzn;->b:[I

    aget v4, v4, v1

    .line 120
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    add-int/2addr v0, v3

    .line 123
    iget-object v1, p0, Lkzn;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 125
    :cond_2
    iget-object v1, p0, Lkzn;->c:[[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkzn;->c:[[B

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    move v4, v2

    .line 128
    :goto_1
    iget-object v5, p0, Lkzn;->c:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 129
    iget-object v5, p0, Lkzn;->c:[[B

    aget-object v5, v5, v1

    .line 130
    if-eqz v5, :cond_3

    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 133
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 128
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :cond_4
    add-int/2addr v0, v3

    .line 137
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 139
    :cond_5
    iget-object v1, p0, Lkzn;->d:[[B

    if-eqz v1, :cond_8

    iget-object v1, p0, Lkzn;->d:[[B

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    move v3, v2

    .line 142
    :goto_2
    iget-object v4, p0, Lkzn;->d:[[B

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 143
    iget-object v4, p0, Lkzn;->d:[[B

    aget-object v4, v4, v2

    .line 144
    if-eqz v4, :cond_6

    .line 145
    add-int/lit8 v3, v3, 0x1

    .line 147
    invoke-static {v4}, Llxz;->a([B)I

    move-result v4

    add-int/2addr v1, v4

    .line 142
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    :cond_7
    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 153
    :cond_8
    iget-object v1, p0, Lkzn;->e:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lkzn;->e:[I

    array-length v1, v1

    if-lez v1, :cond_9

    .line 154
    iget-object v1, p0, Lkzn;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 155
    add-int/2addr v0, v1

    .line 156
    iget-object v1, p0, Lkzn;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 158
    :cond_9
    iget-object v1, p0, Lkzn;->f:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 159
    const/4 v1, 0x6

    iget-object v2, p0, Lkzn;->f:Ljava/lang/Long;

    .line 160
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 160
    add-int/2addr v0, v1

    .line 162
    :cond_a
    return v0
.end method
