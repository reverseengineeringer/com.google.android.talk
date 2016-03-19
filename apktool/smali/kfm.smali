.class public final Lkfm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:[I

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Boolean;

.field public g:[I

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12114
    invoke-direct {p0}, Llyb;-><init>()V

    .line 13119
    iput-object v1, p0, Lkfm;->requestHeader:Lkdo;

    .line 13120
    iput-object v1, p0, Lkfm;->a:Ljava/lang/Long;

    .line 13121
    iput-object v1, p0, Lkfm;->b:Ljava/lang/Integer;

    .line 13122
    iput-object v1, p0, Lkfm;->c:Ljava/lang/Integer;

    .line 13123
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkfm;->d:[I

    .line 13124
    iput-object v1, p0, Lkfm;->e:Ljava/lang/Integer;

    .line 13125
    iput-object v1, p0, Lkfm;->f:Ljava/lang/Boolean;

    .line 13126
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkfm;->g:[I

    .line 13127
    iput-object v1, p0, Lkfm;->eD:Llyd;

    .line 13128
    const/4 v0, -0x1

    iput v0, p0, Lkfm;->eE:I

    .line 12116
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 14221
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 14222
    sparse-switch v0, :sswitch_data_0

    .line 14226
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14227
    :sswitch_0
    return-object p0

    .line 14232
    :sswitch_1
    iget-object v0, p0, Lkfm;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 14233
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkfm;->requestHeader:Lkdo;

    .line 14235
    :cond_1
    iget-object v0, p0, Lkfm;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 14239
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfm;->a:Ljava/lang/Long;

    goto :goto_0

    .line 14243
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfm;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 14247
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfm;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 14251
    :sswitch_5
    const/16 v0, 0x28

    .line 14252
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 14253
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 14255
    :goto_1
    if-ge v3, v4, :cond_3

    .line 14256
    if-eqz v3, :cond_2

    .line 14257
    invoke-virtual {p1}, Llxy;->a()I

    .line 14259
    :cond_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 14260
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 14255
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 14267
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 14271
    :cond_3
    if-eqz v1, :cond_0

    .line 14272
    iget-object v0, p0, Lkfm;->d:[I

    if-nez v0, :cond_4

    move v0, v2

    .line 14273
    :goto_3
    if-nez v0, :cond_5

    array-length v3, v5

    if-ne v1, v3, :cond_5

    .line 14274
    iput-object v5, p0, Lkfm;->d:[I

    goto :goto_0

    .line 14272
    :cond_4
    iget-object v0, p0, Lkfm;->d:[I

    array-length v0, v0

    goto :goto_3

    .line 14276
    :cond_5
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 14277
    if-eqz v0, :cond_6

    .line 14278
    iget-object v4, p0, Lkfm;->d:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14280
    :cond_6
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14281
    iput-object v3, p0, Lkfm;->d:[I

    goto/16 :goto_0

    .line 14287
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 14288
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 14291
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 14292
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 14293
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 14300
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 14304
    :cond_7
    if-eqz v0, :cond_b

    .line 14305
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 14306
    iget-object v1, p0, Lkfm;->d:[I

    if-nez v1, :cond_9

    move v1, v2

    .line 14307
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 14308
    if-eqz v1, :cond_8

    .line 14309
    iget-object v0, p0, Lkfm;->d:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14311
    :cond_8
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_a

    .line 14312
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 14313
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 14320
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 14306
    :cond_9
    iget-object v1, p0, Lkfm;->d:[I

    array-length v1, v1

    goto :goto_5

    .line 14324
    :cond_a
    iput-object v4, p0, Lkfm;->d:[I

    .line 14326
    :cond_b
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 14330
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 14331
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 14334
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfm;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 14340
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkfm;->f:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 14344
    :sswitch_9
    const/16 v0, 0x40

    .line 14345
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 14346
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 14348
    :goto_7
    if-ge v3, v4, :cond_d

    .line 14349
    if-eqz v3, :cond_c

    .line 14350
    invoke-virtual {p1}, Llxy;->a()I

    .line 14352
    :cond_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 14353
    packed-switch v6, :pswitch_data_4

    move v0, v1

    .line 14348
    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    .line 14356
    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_8

    .line 14360
    :cond_d
    if-eqz v1, :cond_0

    .line 14361
    iget-object v0, p0, Lkfm;->g:[I

    if-nez v0, :cond_e

    move v0, v2

    .line 14362
    :goto_9
    if-nez v0, :cond_f

    array-length v3, v5

    if-ne v1, v3, :cond_f

    .line 14363
    iput-object v5, p0, Lkfm;->g:[I

    goto/16 :goto_0

    .line 14361
    :cond_e
    iget-object v0, p0, Lkfm;->g:[I

    array-length v0, v0

    goto :goto_9

    .line 14365
    :cond_f
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 14366
    if-eqz v0, :cond_10

    .line 14367
    iget-object v4, p0, Lkfm;->g:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14369
    :cond_10
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14370
    iput-object v3, p0, Lkfm;->g:[I

    goto/16 :goto_0

    .line 14376
    :sswitch_a
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 14377
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 14380
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 14381
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_11

    .line 14382
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_5

    goto :goto_a

    .line 14385
    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 14389
    :cond_11
    if-eqz v0, :cond_15

    .line 14390
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 14391
    iget-object v1, p0, Lkfm;->g:[I

    if-nez v1, :cond_13

    move v1, v2

    .line 14392
    :goto_b
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 14393
    if-eqz v1, :cond_12

    .line 14394
    iget-object v0, p0, Lkfm;->g:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14396
    :cond_12
    :goto_c
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_14

    .line 14397
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 14398
    packed-switch v5, :pswitch_data_6

    goto :goto_c

    .line 14401
    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_c

    .line 14391
    :cond_13
    iget-object v1, p0, Lkfm;->g:[I

    array-length v1, v1

    goto :goto_b

    .line 14405
    :cond_14
    iput-object v4, p0, Lkfm;->g:[I

    .line 14407
    :cond_15
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 14222
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
        0x30 -> :sswitch_7
        0x38 -> :sswitch_8
        0x40 -> :sswitch_9
        0x42 -> :sswitch_a
    .end sparse-switch

    .line 14260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 14293
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 14313
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 14331
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 14353
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 14382
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 14398
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12135
    iget-object v0, p0, Lkfm;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 12136
    const/4 v0, 0x1

    iget-object v2, p0, Lkfm;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 12138
    :cond_0
    iget-object v0, p0, Lkfm;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 12139
    const/4 v0, 0x2

    iget-object v2, p0, Lkfm;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 12141
    :cond_1
    iget-object v0, p0, Lkfm;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 12142
    const/4 v0, 0x3

    iget-object v2, p0, Lkfm;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 12144
    :cond_2
    iget-object v0, p0, Lkfm;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 12145
    const/4 v0, 0x4

    iget-object v2, p0, Lkfm;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 12147
    :cond_3
    iget-object v0, p0, Lkfm;->d:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkfm;->d:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 12148
    :goto_0
    iget-object v2, p0, Lkfm;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 12149
    const/4 v2, 0x5

    iget-object v3, p0, Lkfm;->d:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 12148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12152
    :cond_4
    iget-object v0, p0, Lkfm;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 12153
    const/4 v0, 0x6

    iget-object v2, p0, Lkfm;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 12155
    :cond_5
    iget-object v0, p0, Lkfm;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 12156
    const/4 v0, 0x7

    iget-object v2, p0, Lkfm;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 12158
    :cond_6
    iget-object v0, p0, Lkfm;->g:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lkfm;->g:[I

    array-length v0, v0

    if-lez v0, :cond_7

    .line 12159
    :goto_1
    iget-object v0, p0, Lkfm;->g:[I

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 12160
    const/16 v0, 0x8

    iget-object v2, p0, Lkfm;->g:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 12159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12163
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 12164
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 12168
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 12169
    iget-object v1, p0, Lkfm;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 12170
    const/4 v1, 0x1

    iget-object v3, p0, Lkfm;->requestHeader:Lkdo;

    .line 12171
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12173
    :cond_0
    iget-object v1, p0, Lkfm;->a:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 12174
    const/4 v1, 0x2

    iget-object v3, p0, Lkfm;->a:Ljava/lang/Long;

    .line 12175
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12177
    :cond_1
    iget-object v1, p0, Lkfm;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 12178
    const/4 v1, 0x3

    iget-object v3, p0, Lkfm;->b:Ljava/lang/Integer;

    .line 12179
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12181
    :cond_2
    iget-object v1, p0, Lkfm;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 12182
    const/4 v1, 0x4

    iget-object v3, p0, Lkfm;->c:Ljava/lang/Integer;

    .line 12183
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12185
    :cond_3
    iget-object v1, p0, Lkfm;->d:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkfm;->d:[I

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    .line 12187
    :goto_0
    iget-object v4, p0, Lkfm;->d:[I

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 12188
    iget-object v4, p0, Lkfm;->d:[I

    aget v4, v4, v1

    .line 12190
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 12187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12192
    :cond_4
    add-int/2addr v0, v3

    .line 12193
    iget-object v1, p0, Lkfm;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 12195
    :cond_5
    iget-object v1, p0, Lkfm;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 12196
    const/4 v1, 0x6

    iget-object v3, p0, Lkfm;->e:Ljava/lang/Integer;

    .line 12197
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12199
    :cond_6
    iget-object v1, p0, Lkfm;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 12200
    const/4 v1, 0x7

    iget-object v3, p0, Lkfm;->f:Ljava/lang/Boolean;

    .line 12201
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 12201
    add-int/2addr v0, v1

    .line 12203
    :cond_7
    iget-object v1, p0, Lkfm;->g:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lkfm;->g:[I

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    .line 12205
    :goto_1
    iget-object v3, p0, Lkfm;->g:[I

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 12206
    iget-object v3, p0, Lkfm;->g:[I

    aget v3, v3, v2

    .line 12208
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 12205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12210
    :cond_8
    add-int/2addr v0, v1

    .line 12211
    iget-object v1, p0, Lkfm;->g:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 12213
    :cond_9
    return v0
.end method
