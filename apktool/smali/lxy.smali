.class public final Llxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const v0, 0x7fffffff

    iput v0, p0, Llxy;->g:I

    .line 410
    const/16 v0, 0x40

    iput v0, p0, Llxy;->i:I

    .line 413
    const/high16 v0, 0x4000000

    iput v0, p0, Llxy;->j:I

    .line 419
    iput-object p1, p0, Llxy;->a:[B

    .line 420
    iput p2, p0, Llxy;->b:I

    .line 421
    add-int v0, p2, p3

    iput v0, p0, Llxy;->c:I

    .line 422
    iput p2, p0, Llxy;->e:I

    .line 423
    return-void
.end method

.method public static a([B)Llxy;
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Llxy;->a([BII)Llxy;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Llxy;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Llxy;

    invoke-direct {v0, p0, p1, p2}, Llxy;-><init>([BII)V

    return-object v0
.end method

.method private f(I)V
    .locals 2

    .prologue
    .line 625
    if-gez p1, :cond_0

    .line 626
    invoke-static {}, Llyg;->b()Llyg;

    move-result-object v0

    throw v0

    .line 629
    :cond_0
    iget v0, p0, Llxy;->e:I

    add-int/2addr v0, p1

    iget v1, p0, Llxy;->g:I

    if-le v0, v1, :cond_1

    .line 631
    iget v0, p0, Llxy;->g:I

    iget v1, p0, Llxy;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Llxy;->f(I)V

    .line 633
    invoke-static {}, Llyg;->a()Llyg;

    move-result-object v0

    throw v0

    .line 636
    :cond_1
    iget v0, p0, Llxy;->c:I

    iget v1, p0, Llxy;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 638
    iget v0, p0, Llxy;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Llxy;->e:I

    return-void

    .line 640
    :cond_2
    invoke-static {}, Llyg;->a()Llyg;

    move-result-object v0

    throw v0
.end method

.method private s()J
    .locals 6

    .prologue
    .line 323
    const/4 v2, 0x0

    .line 324
    const-wide/16 v0, 0x0

    .line 325
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 326
    invoke-direct {p0}, Llxy;->w()B

    move-result v3

    .line 327
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 328
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 329
    return-wide v0

    .line 331
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 332
    goto :goto_0

    .line 333
    :cond_1
    invoke-static {}, Llyg;->c()Llyg;

    move-result-object v0

    throw v0
.end method

.method private t()I
    .locals 4

    .prologue
    .line 338
    invoke-direct {p0}, Llxy;->w()B

    move-result v0

    .line 339
    invoke-direct {p0}, Llxy;->w()B

    move-result v1

    .line 340
    invoke-direct {p0}, Llxy;->w()B

    move-result v2

    .line 341
    invoke-direct {p0}, Llxy;->w()B

    move-result v3

    .line 342
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private u()J
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    .line 350
    invoke-direct {p0}, Llxy;->w()B

    move-result v0

    .line 351
    invoke-direct {p0}, Llxy;->w()B

    move-result v1

    .line 352
    invoke-direct {p0}, Llxy;->w()B

    move-result v2

    .line 353
    invoke-direct {p0}, Llxy;->w()B

    move-result v3

    .line 354
    invoke-direct {p0}, Llxy;->w()B

    move-result v4

    .line 355
    invoke-direct {p0}, Llxy;->w()B

    move-result v5

    .line 356
    invoke-direct {p0}, Llxy;->w()B

    move-result v6

    .line 357
    invoke-direct {p0}, Llxy;->w()B

    move-result v7

    .line 358
    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Llxy;->c:I

    iget v1, p0, Llxy;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Llxy;->c:I

    .line 497
    iget v0, p0, Llxy;->c:I

    .line 498
    iget v1, p0, Llxy;->g:I

    if-le v0, v1, :cond_0

    .line 500
    iget v1, p0, Llxy;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Llxy;->d:I

    .line 501
    iget v0, p0, Llxy;->c:I

    iget v1, p0, Llxy;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Llxy;->c:I

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Llxy;->d:I

    goto :goto_0
.end method

.method private w()B
    .locals 3

    .prologue
    .line 584
    iget v0, p0, Llxy;->e:I

    iget v1, p0, Llxy;->c:I

    if-ne v0, v1, :cond_0

    .line 585
    invoke-static {}, Llyg;->a()Llyg;

    move-result-object v0

    throw v0

    .line 587
    :cond_0
    iget-object v0, p0, Llxy;->a:[B

    iget v1, p0, Llxy;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Llxy;->e:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1536
    iget v1, p0, Llxy;->e:I

    iget v2, p0, Llxy;->c:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 71
    :goto_0
    if-eqz v1, :cond_1

    .line 72
    iput v0, p0, Llxy;->f:I

    .line 81
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 1536
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Llxy;->p()I

    move-result v0

    iput v0, p0, Llxy;->f:I

    .line 77
    iget v0, p0, Llxy;->f:I

    if-nez v0, :cond_2

    .line 2068
    new-instance v0, Llyg;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Llyg;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0

    .line 81
    :cond_2
    iget v0, p0, Llxy;->f:I

    goto :goto_1
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Llxy;->f:I

    if-eq v0, p1, :cond_0

    .line 2073
    new-instance v0, Llyg;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Llyg;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public a(Llyi;)V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Llxy;->p()I

    move-result v0

    .line 218
    iget v1, p0, Llxy;->h:I

    iget v2, p0, Llxy;->i:I

    if-lt v1, v2, :cond_0

    .line 219
    invoke-static {}, Llyg;->d()Llyg;

    move-result-object v0

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Llxy;->c(I)I

    move-result v0

    .line 222
    iget v1, p0, Llxy;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llxy;->h:I

    .line 223
    invoke-virtual {p1, p0}, Llyi;->a(Llxy;)Llyi;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Llxy;->a(I)V

    .line 225
    iget v1, p0, Llxy;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Llxy;->h:I

    .line 226
    invoke-virtual {p0, v0}, Llxy;->d(I)V

    .line 227
    return-void
.end method

.method public a(Llyi;I)V
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Llxy;->h:I

    iget v1, p0, Llxy;->i:I

    if-lt v0, v1, :cond_0

    .line 206
    invoke-static {}, Llyg;->d()Llyg;

    move-result-object v0

    throw v0

    .line 208
    :cond_0
    iget v0, p0, Llxy;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llxy;->h:I

    .line 209
    invoke-virtual {p1, p0}, Llyi;->a(Llxy;)Llyi;

    .line 5072
    shl-int/lit8 v0, p2, 0x3

    or-int/lit8 v0, v0, 0x4

    .line 210
    invoke-virtual {p0, v0}, Llxy;->a(I)V

    .line 212
    iget v0, p0, Llxy;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llxy;->h:I

    .line 213
    return-void
.end method

.method public a(II)[B
    .locals 4

    .prologue
    .line 554
    if-nez p2, :cond_0

    .line 555
    sget-object v0, Llyo;->h:[B

    .line 560
    :goto_0
    return-object v0

    .line 557
    :cond_0
    new-array v0, p2, [B

    .line 558
    iget v1, p0, Llxy;->b:I

    add-int/2addr v1, p1

    .line 559
    iget-object v2, p0, Llxy;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Llxy;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3062
    and-int/lit8 v1, p1, 0x7

    .line 106
    packed-switch v1, :pswitch_data_0

    .line 4078
    new-instance v0, Llyg;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Llyg;-><init>(Ljava/lang/String;)V

    .line 128
    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Llxy;->f()I

    .line 126
    :goto_0
    return v0

    .line 111
    :pswitch_1
    invoke-direct {p0}, Llxy;->u()J

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Llxy;->p()I

    move-result v1

    invoke-direct {p0, v1}, Llxy;->f(I)V

    goto :goto_0

    .line 3138
    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Llxy;->a()I

    move-result v1

    .line 3139
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Llxy;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4067
    :cond_1
    ushr-int/lit8 v1, p1, 0x3

    .line 4072
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 118
    invoke-virtual {p0, v1}, Llxy;->a(I)V

    goto :goto_0

    .line 123
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :pswitch_5
    invoke-direct {p0}, Llxy;->t()I

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public c()F
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Llxy;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 2

    .prologue
    .line 480
    if-gez p1, :cond_0

    .line 481
    invoke-static {}, Llyg;->b()Llyg;

    move-result-object v0

    throw v0

    .line 483
    :cond_0
    iget v0, p0, Llxy;->e:I

    add-int/2addr v0, p1

    .line 484
    iget v1, p0, Llxy;->g:I

    .line 485
    if-le v0, v1, :cond_1

    .line 486
    invoke-static {}, Llyg;->a()Llyg;

    move-result-object v0

    throw v0

    .line 488
    :cond_1
    iput v0, p0, Llxy;->g:I

    .line 490
    invoke-direct {p0}, Llxy;->v()V

    .line 492
    return v1
.end method

.method public d()J
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Llxy;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 513
    iput p1, p0, Llxy;->g:I

    .line 514
    invoke-direct {p0}, Llxy;->v()V

    .line 515
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Llxy;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(I)V
    .locals 4

    .prologue
    .line 567
    iget v0, p0, Llxy;->e:I

    iget v1, p0, Llxy;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Llxy;->e:I

    iget v2, p0, Llxy;->b:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    if-gez p1, :cond_1

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1
    iget v0, p0, Llxy;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Llxy;->e:I

    .line 575
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Llxy;->p()I

    move-result v0

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Llxy;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Llxy;->t()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Llxy;->p()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    invoke-virtual {p0}, Llxy;->p()I

    move-result v0

    .line 190
    if-gez v0, :cond_0

    .line 191
    invoke-static {}, Llyg;->b()Llyg;

    move-result-object v0

    throw v0

    .line 193
    :cond_0
    iget v1, p0, Llxy;->c:I

    iget v2, p0, Llxy;->e:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 194
    invoke-static {}, Llyg;->a()Llyg;

    move-result-object v0

    throw v0

    .line 197
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Llxy;->a:[B

    iget v3, p0, Llxy;->e:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 198
    iget v2, p0, Llxy;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Llxy;->e:I

    .line 199
    return-object v1
.end method

.method public k()[B
    .locals 5

    .prologue
    .line 231
    invoke-virtual {p0}, Llxy;->p()I

    move-result v1

    .line 232
    if-gez v1, :cond_0

    .line 233
    invoke-static {}, Llyg;->b()Llyg;

    move-result-object v0

    throw v0

    .line 235
    :cond_0
    if-nez v1, :cond_1

    .line 236
    sget-object v0, Llyo;->h:[B

    .line 245
    :goto_0
    return-object v0

    .line 238
    :cond_1
    iget v0, p0, Llxy;->c:I

    iget v2, p0, Llxy;->e:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_2

    .line 239
    invoke-static {}, Llyg;->a()Llyg;

    move-result-object v0

    throw v0

    .line 242
    :cond_2
    new-array v0, v1, [B

    .line 243
    iget-object v2, p0, Llxy;->a:[B

    iget v3, p0, Llxy;->e:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget v2, p0, Llxy;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Llxy;->e:I

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Llxy;->p()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Llxy;->t()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Llxy;->p()I

    move-result v0

    .line 5379
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 273
    return v0
.end method

.method public o()J
    .locals 6

    .prologue
    .line 278
    invoke-direct {p0}, Llxy;->s()J

    move-result-wide v0

    .line 5393
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    .line 278
    return-wide v0
.end method

.method public p()I
    .locals 3

    .prologue
    .line 288
    invoke-direct {p0}, Llxy;->w()B

    move-result v0

    .line 289
    if-ltz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 293
    invoke-direct {p0}, Llxy;->w()B

    move-result v1

    if-ltz v1, :cond_2

    .line 294
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    .line 296
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 297
    invoke-direct {p0}, Llxy;->w()B

    move-result v1

    if-ltz v1, :cond_3

    .line 298
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    .line 300
    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 301
    invoke-direct {p0}, Llxy;->w()B

    move-result v1

    if-ltz v1, :cond_4

    .line 302
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    .line 304
    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 305
    invoke-direct {p0}, Llxy;->w()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 306
    if-gez v1, :cond_0

    .line 308
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 309
    invoke-direct {p0}, Llxy;->w()B

    move-result v2

    if-gez v2, :cond_0

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_5
    invoke-static {}, Llyg;->c()Llyg;

    move-result-object v0

    throw v0
.end method

.method public q()I
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Llxy;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 523
    const/4 v0, -0x1

    .line 527
    :goto_0
    return v0

    .line 526
    :cond_0
    iget v0, p0, Llxy;->e:I

    .line 527
    iget v1, p0, Llxy;->g:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public r()I
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Llxy;->e:I

    iget v1, p0, Llxy;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
