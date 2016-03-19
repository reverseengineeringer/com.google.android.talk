.class public final Lkzm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkzm;",
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

    .line 50
    invoke-direct {p0}, Llyb;-><init>()V

    .line 51
    iput-object v1, p0, Lkzm;->a:[B

    .line 52
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkzm;->b:[I

    .line 53
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkzm;->c:[[B

    .line 54
    sget-object v0, Llyo;->g:[[B

    iput-object v0, p0, Lkzm;->d:[[B

    .line 55
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkzm;->e:[I

    .line 56
    iput-object v1, p0, Lkzm;->f:Ljava/lang/Long;

    .line 57
    iput-object v1, p0, Lkzm;->eD:Llyd;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lkzm;->eE:I

    .line 59
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2161
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2162
    sparse-switch v0, :sswitch_data_0

    .line 2166
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2167
    :sswitch_0
    return-object p0

    .line 2172
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkzm;->a:[B

    goto :goto_0

    .line 2176
    :sswitch_2
    const/16 v0, 0x10

    .line 2177
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2178
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2180
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2181
    if-eqz v3, :cond_1

    .line 2182
    invoke-virtual {p1}, Llxy;->a()I

    .line 2184
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2185
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 2180
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2189
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 2193
    :cond_2
    if-eqz v1, :cond_0

    .line 2194
    iget-object v0, p0, Lkzm;->b:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 2195
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 2196
    iput-object v5, p0, Lkzm;->b:[I

    goto :goto_0

    .line 2194
    :cond_3
    iget-object v0, p0, Lkzm;->b:[I

    array-length v0, v0

    goto :goto_3

    .line 2198
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2199
    if-eqz v0, :cond_5

    .line 2200
    iget-object v4, p0, Lkzm;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2202
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2203
    iput-object v3, p0, Lkzm;->b:[I

    goto :goto_0

    .line 2209
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2210
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2213
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2214
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 2215
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 2219
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2223
    :cond_6
    if-eqz v0, :cond_a

    .line 2224
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2225
    iget-object v1, p0, Lkzm;->b:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 2226
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2227
    if-eqz v1, :cond_7

    .line 2228
    iget-object v0, p0, Lkzm;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2230
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 2231
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2232
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 2236
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 2225
    :cond_8
    iget-object v1, p0, Lkzm;->b:[I

    array-length v1, v1

    goto :goto_5

    .line 2240
    :cond_9
    iput-object v4, p0, Lkzm;->b:[I

    .line 2242
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2246
    :sswitch_4
    const/16 v0, 0x1a

    .line 2247
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v1

    .line 2248
    iget-object v0, p0, Lkzm;->c:[[B

    if-nez v0, :cond_c

    move v0, v2

    .line 2249
    :goto_7
    add-int/2addr v1, v0

    new-array v1, v1, [[B

    .line 2250
    if-eqz v0, :cond_b

    .line 2251
    iget-object v3, p0, Lkzm;->c:[[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2253
    :cond_b
    :goto_8
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 2254
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2255
    invoke-virtual {p1}, Llxy;->a()I

    .line 2253
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2248
    :cond_c
    iget-object v0, p0, Lkzm;->c:[[B

    array-length v0, v0

    goto :goto_7

    .line 2258
    :cond_d
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2259
    iput-object v1, p0, Lkzm;->c:[[B

    goto/16 :goto_0

    .line 2263
    :sswitch_5
    const/16 v0, 0x22

    .line 2264
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v1

    .line 2265
    iget-object v0, p0, Lkzm;->d:[[B

    if-nez v0, :cond_f

    move v0, v2

    .line 2266
    :goto_9
    add-int/2addr v1, v0

    new-array v1, v1, [[B

    .line 2267
    if-eqz v0, :cond_e

    .line 2268
    iget-object v3, p0, Lkzm;->d:[[B

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2270
    :cond_e
    :goto_a
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_10

    .line 2271
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2272
    invoke-virtual {p1}, Llxy;->a()I

    .line 2270
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2265
    :cond_f
    iget-object v0, p0, Lkzm;->d:[[B

    array-length v0, v0

    goto :goto_9

    .line 2275
    :cond_10
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v3

    aput-object v3, v1, v0

    .line 2276
    iput-object v1, p0, Lkzm;->d:[[B

    goto/16 :goto_0

    .line 2280
    :sswitch_6
    const/16 v0, 0x2d

    .line 2281
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v1

    .line 2282
    iget-object v0, p0, Lkzm;->e:[I

    if-nez v0, :cond_12

    move v0, v2

    .line 2283
    :goto_b
    add-int/2addr v1, v0

    new-array v1, v1, [I

    .line 2284
    if-eqz v0, :cond_11

    .line 2285
    iget-object v3, p0, Lkzm;->e:[I

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2287
    :cond_11
    :goto_c
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_13

    .line 2288
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v1, v0

    .line 2289
    invoke-virtual {p1}, Llxy;->a()I

    .line 2287
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2282
    :cond_12
    iget-object v0, p0, Lkzm;->e:[I

    array-length v0, v0

    goto :goto_b

    .line 2292
    :cond_13
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v1, v0

    .line 2293
    iput-object v1, p0, Lkzm;->e:[I

    goto/16 :goto_0

    .line 2297
    :sswitch_7
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2298
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v1

    .line 2299
    div-int/lit8 v3, v0, 0x4

    .line 2300
    iget-object v0, p0, Lkzm;->e:[I

    if-nez v0, :cond_15

    move v0, v2

    .line 2301
    :goto_d
    add-int/2addr v3, v0

    new-array v3, v3, [I

    .line 2302
    if-eqz v0, :cond_14

    .line 2303
    iget-object v4, p0, Lkzm;->e:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2305
    :cond_14
    :goto_e
    array-length v4, v3

    if-ge v0, v4, :cond_16

    .line 2306
    invoke-virtual {p1}, Llxy;->h()I

    move-result v4

    aput v4, v3, v0

    .line 2305
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2300
    :cond_15
    iget-object v0, p0, Lkzm;->e:[I

    array-length v0, v0

    goto :goto_d

    .line 2308
    :cond_16
    iput-object v3, p0, Lkzm;->e:[I

    .line 2309
    invoke-virtual {p1, v1}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2313
    :sswitch_8
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkzm;->f:Ljava/lang/Long;

    goto/16 :goto_0

    .line 2162
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

    .line 2185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2215
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2232
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

    .line 64
    iget-object v0, p0, Lkzm;->a:[B

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iget-object v2, p0, Lkzm;->a:[B

    invoke-virtual {p1, v0, v2}, Llxz;->a(I[B)V

    .line 67
    :cond_0
    iget-object v0, p0, Lkzm;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkzm;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 68
    :goto_0
    iget-object v2, p0, Lkzm;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 69
    const/4 v2, 0x2

    iget-object v3, p0, Lkzm;->b:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lkzm;->c:[[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkzm;->c:[[B

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 73
    :goto_1
    iget-object v2, p0, Lkzm;->c:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 74
    iget-object v2, p0, Lkzm;->c:[[B

    aget-object v2, v2, v0

    .line 75
    if-eqz v2, :cond_2

    .line 76
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Lkzm;->d:[[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkzm;->d:[[B

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 81
    :goto_2
    iget-object v2, p0, Lkzm;->d:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 82
    iget-object v2, p0, Lkzm;->d:[[B

    aget-object v2, v2, v0

    .line 83
    if-eqz v2, :cond_4

    .line 84
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->a(I[B)V

    .line 81
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_5
    iget-object v0, p0, Lkzm;->e:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkzm;->e:[I

    array-length v0, v0

    if-lez v0, :cond_6

    .line 89
    :goto_3
    iget-object v0, p0, Lkzm;->e:[I

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 90
    const/4 v0, 0x5

    iget-object v2, p0, Lkzm;->e:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->b(II)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 93
    :cond_6
    iget-object v0, p0, Lkzm;->f:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 94
    const/4 v0, 0x6

    iget-object v1, p0, Lkzm;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 96
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 97
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 102
    iget-object v1, p0, Lkzm;->a:[B

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    iget-object v3, p0, Lkzm;->a:[B

    .line 104
    invoke-static {v1, v3}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    iget-object v1, p0, Lkzm;->b:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkzm;->b:[I

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    move v3, v2

    .line 108
    :goto_0
    iget-object v4, p0, Lkzm;->b:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 109
    iget-object v4, p0, Lkzm;->b:[I

    aget v4, v4, v1

    .line 111
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    add-int/2addr v0, v3

    .line 114
    iget-object v1, p0, Lkzm;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 116
    :cond_2
    iget-object v1, p0, Lkzm;->c:[[B

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkzm;->c:[[B

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    move v4, v2

    .line 119
    :goto_1
    iget-object v5, p0, Lkzm;->c:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 120
    iget-object v5, p0, Lkzm;->c:[[B

    aget-object v5, v5, v1

    .line 121
    if-eqz v5, :cond_3

    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 124
    invoke-static {v5}, Llxz;->a([B)I

    move-result v5

    add-int/2addr v3, v5

    .line 119
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_4
    add-int/2addr v0, v3

    .line 128
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 130
    :cond_5
    iget-object v1, p0, Lkzm;->d:[[B

    if-eqz v1, :cond_8

    iget-object v1, p0, Lkzm;->d:[[B

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    move v3, v2

    .line 133
    :goto_2
    iget-object v4, p0, Lkzm;->d:[[B

    array-length v4, v4

    if-ge v2, v4, :cond_7

    .line 134
    iget-object v4, p0, Lkzm;->d:[[B

    aget-object v4, v4, v2

    .line 135
    if-eqz v4, :cond_6

    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 138
    invoke-static {v4}, Llxz;->a([B)I

    move-result v4

    add-int/2addr v1, v4

    .line 133
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    :cond_7
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 144
    :cond_8
    iget-object v1, p0, Lkzm;->e:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lkzm;->e:[I

    array-length v1, v1

    if-lez v1, :cond_9

    .line 145
    iget-object v1, p0, Lkzm;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 146
    add-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Lkzm;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 149
    :cond_9
    iget-object v1, p0, Lkzm;->f:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 150
    const/4 v1, 0x6

    iget-object v2, p0, Lkzm;->f:Ljava/lang/Long;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 151
    add-int/2addr v0, v1

    .line 153
    :cond_a
    return v0
.end method
