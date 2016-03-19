.class public final Lzn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Lwr;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lwr;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lwr;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lwq;

.field e:Ljava/lang/Runnable;

.field final f:Z

.field final g:Lzm;

.field h:I


# direct methods
.method public constructor <init>(Lwq;)V
    .locals 1

    .prologue
    .line 2073
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzn;-><init>(Lwq;B)V

    .line 2074
    return-void
.end method

.method private constructor <init>(Lwq;B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3056
    new-instance v0, Lid;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lid;-><init>(I)V

    iput-object v0, p0, Lzn;->a:Lic;

    .line 3058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    .line 3060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    .line 3070
    iput v2, p0, Lzn;->h:I

    .line 3077
    iput-object p1, p0, Lzn;->d:Lwq;

    .line 3078
    iput-boolean v2, p0, Lzn;->f:Z

    .line 3079
    new-instance v0, Lzm;

    invoke-direct {v0, p0}, Lzm;-><init>(Lzn;)V

    iput-object v0, p0, Lzn;->g:Lzm;

    .line 3080
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lwr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3736
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3737
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3738
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    invoke-virtual {p0, v0}, Lzn;->a(Lwr;)V

    .line 3737
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3740
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3741
    return-void
.end method

.method private a(Lwr;I)V
    .locals 3

    .prologue
    .line 3316
    iget-object v0, p0, Lzn;->d:Lwq;

    invoke-virtual {v0, p1}, Lwq;->a(Lwr;)V

    .line 3317
    iget v0, p1, Lwr;->a:I

    packed-switch v0, :pswitch_data_0

    .line 3325
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3319
    :pswitch_1
    iget-object v0, p0, Lzn;->d:Lwq;

    iget v1, p1, Lwr;->d:I

    invoke-virtual {v0, p2, v1}, Lwq;->a(II)V

    .line 3323
    :goto_0
    return-void

    .line 3322
    :pswitch_2
    iget-object v0, p0, Lzn;->d:Lwq;

    iget v1, p1, Lwr;->d:I

    iget-object v2, p1, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1, v2}, Lwq;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 3317
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lwr;)V
    .locals 0

    .prologue
    .line 3131
    invoke-direct {p0, p1}, Lzn;->g(Lwr;)V

    .line 3132
    return-void
.end method

.method private c(II)I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 3331
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3332
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 3333
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 3334
    iget v2, v0, Lwr;->a:I

    if-ne v2, v7, :cond_9

    .line 3336
    iget v2, v0, Lwr;->b:I

    iget v3, v0, Lwr;->d:I

    if-ge v2, v3, :cond_1

    .line 3337
    iget v3, v0, Lwr;->b:I

    .line 3338
    iget v2, v0, Lwr;->d:I

    .line 3343
    :goto_1
    if-lt v1, v3, :cond_6

    if-gt v1, v2, :cond_6

    .line 3345
    iget v2, v0, Lwr;->b:I

    if-ne v3, v2, :cond_3

    .line 3346
    if-ne p2, v5, :cond_2

    .line 3347
    iget v2, v0, Lwr;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lwr;->d:I

    .line 3352
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 3332
    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 3340
    :cond_1
    iget v3, v0, Lwr;->d:I

    .line 3341
    iget v2, v0, Lwr;->b:I

    goto :goto_1

    .line 3348
    :cond_2
    if-ne p2, v6, :cond_0

    .line 3349
    iget v2, v0, Lwr;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lwr;->d:I

    goto :goto_2

    .line 3354
    :cond_3
    if-ne p2, v5, :cond_5

    .line 3355
    iget v2, v0, Lwr;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lwr;->b:I

    .line 3360
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 3356
    :cond_5
    if-ne p2, v6, :cond_4

    .line 3357
    iget v2, v0, Lwr;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lwr;->b:I

    goto :goto_4

    .line 3362
    :cond_6
    iget v2, v0, Lwr;->b:I

    if-ge v1, v2, :cond_8

    .line 3364
    if-ne p2, v5, :cond_7

    .line 3365
    iget v2, v0, Lwr;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lwr;->b:I

    .line 3366
    iget v2, v0, Lwr;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lwr;->d:I

    move v0, v1

    goto :goto_3

    .line 3367
    :cond_7
    if-ne p2, v6, :cond_8

    .line 3368
    iget v2, v0, Lwr;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lwr;->b:I

    .line 3369
    iget v2, v0, Lwr;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lwr;->d:I

    :cond_8
    move v0, v1

    .line 3372
    goto :goto_3

    .line 3373
    :cond_9
    iget v2, v0, Lwr;->b:I

    if-gt v2, v1, :cond_b

    .line 3374
    iget v2, v0, Lwr;->a:I

    if-ne v2, v5, :cond_a

    .line 3375
    iget v0, v0, Lwr;->d:I

    sub-int v0, v1, v0

    goto :goto_3

    .line 3376
    :cond_a
    iget v2, v0, Lwr;->a:I

    if-ne v2, v6, :cond_d

    .line 3377
    iget v0, v0, Lwr;->d:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 3380
    :cond_b
    if-ne p2, v5, :cond_c

    .line 3381
    iget v2, v0, Lwr;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lwr;->b:I

    move v0, v1

    goto :goto_3

    .line 3382
    :cond_c
    if-ne p2, v6, :cond_d

    .line 3383
    iget v2, v0, Lwr;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lwr;->b:I

    :cond_d
    move v0, v1

    goto :goto_3

    .line 3396
    :cond_e
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_12

    .line 3397
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 3398
    iget v3, v0, Lwr;->a:I

    if-ne v3, v7, :cond_11

    .line 3399
    iget v3, v0, Lwr;->d:I

    iget v4, v0, Lwr;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Lwr;->d:I

    if-gez v3, :cond_10

    .line 3400
    :cond_f
    iget-object v3, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3401
    invoke-virtual {p0, v0}, Lzn;->a(Lwr;)V

    .line 3396
    :cond_10
    :goto_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    .line 3403
    :cond_11
    iget v3, v0, Lwr;->d:I

    if-gtz v3, :cond_10

    .line 3404
    iget-object v3, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3405
    invoke-virtual {p0, v0}, Lzn;->a(Lwr;)V

    goto :goto_6

    .line 3408
    :cond_12
    return v1
.end method

.method private c(Lwr;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3135
    iget v7, p1, Lwr;->b:I

    .line 3137
    iget v0, p1, Lwr;->b:I

    iget v3, p1, Lwr;->d:I

    add-int v4, v0, v3

    .line 3138
    const/4 v5, -0x1

    .line 3139
    iget v3, p1, Lwr;->b:I

    move v6, v2

    :goto_0
    if-ge v3, v4, :cond_3

    .line 3141
    iget-object v0, p0, Lzn;->d:Lwq;

    invoke-virtual {v0, v3}, Lwq;->a(I)Laao;

    move-result-object v0

    .line 3142
    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lzn;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3149
    :cond_0
    if-nez v5, :cond_7

    .line 3152
    invoke-virtual {p0, v8, v7, v6, v9}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v0

    .line 3153
    invoke-direct {p0, v0}, Lzn;->e(Lwr;)V

    move v0, v1

    :goto_1
    move v5, v1

    .line 3169
    :goto_2
    if-eqz v0, :cond_2

    .line 3170
    sub-int v0, v3, v6

    .line 3171
    sub-int v3, v4, v6

    move v4, v1

    .line 3139
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 3160
    :cond_1
    if-ne v5, v1, :cond_6

    .line 3163
    invoke-virtual {p0, v8, v7, v6, v9}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v0

    .line 3164
    invoke-direct {p0, v0}, Lzn;->g(Lwr;)V

    move v0, v1

    :goto_4
    move v5, v2

    .line 3167
    goto :goto_2

    .line 3174
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v10, v3

    move v3, v4

    move v4, v0

    move v0, v10

    goto :goto_3

    .line 3177
    :cond_3
    iget v0, p1, Lwr;->d:I

    if-eq v6, v0, :cond_4

    .line 3178
    invoke-virtual {p0, p1}, Lzn;->a(Lwr;)V

    .line 3179
    invoke-virtual {p0, v8, v7, v6, v9}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object p1

    .line 3181
    :cond_4
    if-nez v5, :cond_5

    .line 3182
    invoke-direct {p0, p1}, Lzn;->e(Lwr;)V

    .line 3186
    :goto_5
    return-void

    .line 3184
    :cond_5
    invoke-direct {p0, p1}, Lzn;->g(Lwr;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private d(II)I
    .locals 5

    .prologue
    .line 3473
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 3474
    :goto_0
    if-ge p2, v2, :cond_4

    .line 3475
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 3476
    iget v3, v0, Lwr;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3477
    iget v3, v0, Lwr;->b:I

    if-ne v3, v1, :cond_1

    .line 3478
    iget v1, v0, Lwr;->d:I

    .line 3474
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3480
    :cond_1
    iget v3, v0, Lwr;->b:I

    if-ge v3, v1, :cond_2

    .line 3481
    add-int/lit8 v1, v1, -0x1

    .line 3483
    :cond_2
    iget v0, v0, Lwr;->d:I

    if-gt v0, v1, :cond_0

    .line 3484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3487
    :cond_3
    iget v3, v0, Lwr;->b:I

    if-gt v3, v1, :cond_0

    .line 3488
    iget v3, v0, Lwr;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 3489
    iget v3, v0, Lwr;->b:I

    iget v4, v0, Lwr;->d:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 3490
    const/4 v1, -0x1

    .line 3498
    :cond_4
    return v1

    .line 3492
    :cond_5
    iget v0, v0, Lwr;->d:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 3493
    :cond_6
    iget v3, v0, Lwr;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3494
    iget v0, v0, Lwr;->d:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method private d(Lwr;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 3189
    iget v2, p1, Lwr;->b:I

    .line 3191
    iget v0, p1, Lwr;->b:I

    iget v3, p1, Lwr;->d:I

    add-int v6, v0, v3

    .line 3192
    const/4 v0, -0x1

    .line 3193
    iget v3, p1, Lwr;->b:I

    move v5, v0

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_4

    .line 3194
    iget-object v7, p0, Lzn;->d:Lwq;

    invoke-virtual {v7, v3}, Lwq;->a(I)Laao;

    move-result-object v7

    .line 3195
    if-nez v7, :cond_0

    invoke-direct {p0, v3}, Lzn;->d(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3196
    :cond_0
    if-nez v5, :cond_1

    .line 3197
    iget-object v5, p1, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v0

    .line 3199
    invoke-direct {p0, v0}, Lzn;->e(Lwr;)V

    move v0, v1

    move v2, v3

    :cond_1
    move v5, v2

    move v2, v0

    move v0, v4

    .line 3214
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 3193
    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v5

    move v5, v9

    goto :goto_0

    .line 3205
    :cond_2
    if-ne v5, v4, :cond_3

    .line 3206
    iget-object v5, p1, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v0

    .line 3208
    invoke-direct {p0, v0}, Lzn;->g(Lwr;)V

    move v0, v1

    move v2, v3

    :cond_3
    move v5, v2

    move v2, v0

    move v0, v1

    .line 3212
    goto :goto_1

    .line 3216
    :cond_4
    iget v1, p1, Lwr;->d:I

    if-eq v0, v1, :cond_5

    .line 3217
    iget-object v1, p1, Lwr;->c:Ljava/lang/Object;

    .line 3218
    invoke-virtual {p0, p1}, Lzn;->a(Lwr;)V

    .line 3219
    invoke-virtual {p0, v8, v2, v0, v1}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object p1

    .line 3221
    :cond_5
    if-nez v5, :cond_6

    .line 3222
    invoke-direct {p0, p1}, Lzn;->e(Lwr;)V

    .line 3226
    :goto_2
    return-void

    .line 3224
    :cond_6
    invoke-direct {p0, p1}, Lzn;->g(Lwr;)V

    goto :goto_2
.end method

.method private d(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3412
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 3413
    :goto_0
    if-ge v3, v4, :cond_3

    .line 3414
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 3415
    iget v5, v0, Lwr;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 3416
    iget v0, v0, Lwr;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v0, v5}, Lzn;->d(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 3429
    :goto_1
    return v0

    .line 3419
    :cond_0
    iget v5, v0, Lwr;->a:I

    if-ne v5, v1, :cond_2

    .line 3421
    iget v5, v0, Lwr;->b:I

    iget v6, v0, Lwr;->d:I

    add-int/2addr v5, v6

    .line 3422
    iget v0, v0, Lwr;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 3423
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v0, v6}, Lzn;->d(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 3424
    goto :goto_1

    .line 3422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3413
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 3429
    goto :goto_1
.end method

.method private e(Lwr;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3232
    iget v0, p1, Lwr;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lwr;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 3233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3246
    :cond_1
    iget v0, p1, Lwr;->b:I

    iget v3, p1, Lwr;->a:I

    invoke-direct {p0, v0, v3}, Lzn;->c(II)I

    move-result v4

    .line 3251
    iget v3, p1, Lwr;->b:I

    .line 3253
    iget v0, p1, Lwr;->a:I

    packed-switch v0, :pswitch_data_0

    .line 3261
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    .line 3263
    :goto_1
    iget v7, p1, Lwr;->d:I

    if-ge v3, v7, :cond_6

    .line 3264
    iget v7, p1, Lwr;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 3265
    iget v8, p1, Lwr;->a:I

    invoke-direct {p0, v7, v8}, Lzn;->c(II)I

    move-result v8

    .line 3270
    iget v7, p1, Lwr;->a:I

    packed-switch v7, :pswitch_data_1

    :pswitch_2
    move v7, v2

    .line 3278
    :goto_2
    if-eqz v7, :cond_4

    .line 3279
    add-int/lit8 v5, v5, 0x1

    .line 3263
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    move v0, v2

    .line 3259
    goto :goto_0

    .line 3272
    :pswitch_4
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    .line 3275
    :pswitch_5
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    .line 3282
    :cond_4
    iget v7, p1, Lwr;->a:I

    iget-object v9, p1, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v6

    .line 3286
    invoke-direct {p0, v6, v4}, Lzn;->a(Lwr;I)V

    .line 3287
    invoke-virtual {p0, v6}, Lzn;->a(Lwr;)V

    .line 3288
    iget v6, p1, Lwr;->a:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 3289
    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    .line 3292
    goto :goto_3

    .line 3295
    :cond_6
    iget-object v0, p1, Lwr;->c:Ljava/lang/Object;

    .line 3296
    invoke-virtual {p0, p1}, Lzn;->a(Lwr;)V

    .line 3297
    if-lez v5, :cond_7

    .line 3298
    iget v1, p1, Lwr;->a:I

    invoke-virtual {p0, v1, v6, v5, v0}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v0

    .line 3302
    invoke-direct {p0, v0, v4}, Lzn;->a(Lwr;I)V

    .line 3303
    invoke-virtual {p0, v0}, Lzn;->a(Lwr;)V

    .line 3313
    :cond_7
    return-void

    .line 3253
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3270
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private f(Lwr;)V
    .locals 0

    .prologue
    .line 3433
    invoke-direct {p0, p1}, Lzn;->g(Lwr;)V

    .line 3434
    return-void
.end method

.method private g(Lwr;)V
    .locals 4

    .prologue
    .line 3440
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3441
    iget v0, p1, Lwr;->a:I

    packed-switch v0, :pswitch_data_0

    .line 3456
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3443
    :pswitch_1
    iget-object v0, p0, Lzn;->d:Lwq;

    iget v1, p1, Lwr;->b:I

    iget v2, p1, Lwr;->d:I

    invoke-virtual {v0, v1, v2}, Lwq;->c(II)V

    .line 3454
    :goto_0
    return-void

    .line 3446
    :pswitch_2
    iget-object v0, p0, Lzn;->d:Lwq;

    iget v1, p1, Lwr;->b:I

    iget v2, p1, Lwr;->d:I

    invoke-virtual {v0, v1, v2}, Lwq;->d(II)V

    goto :goto_0

    .line 3449
    :pswitch_3
    iget-object v0, p0, Lzn;->d:Lwq;

    iget v1, p1, Lwr;->b:I

    iget v2, p1, Lwr;->d:I

    invoke-virtual {v0, v1, v2}, Lwq;->b(II)V

    goto :goto_0

    .line 3453
    :pswitch_4
    iget-object v0, p0, Lzn;->d:Lwq;

    iget v1, p1, Lwr;->b:I

    iget v2, p1, Lwr;->d:I

    iget-object v3, p1, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lwq;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 3441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(IIILjava/lang/Object;)Lwr;
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lzn;->a:Lic;

    invoke-interface {v0}, Lic;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 1716
    if-nez v0, :cond_0

    .line 1717
    new-instance v0, Lwr;

    invoke-direct {v0, p1, p2, p3, p4}, Lwr;-><init>(IIILjava/lang/Object;)V

    .line 1724
    :goto_0
    return-object v0

    .line 1719
    :cond_0
    iput p1, v0, Lwr;->a:I

    .line 1720
    iput p2, v0, Lwr;->b:I

    .line 1721
    iput p3, v0, Lwr;->d:I

    .line 1722
    iput-object p4, v0, Lwr;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 3088
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzn;->a(Ljava/util/List;)V

    .line 3089
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzn;->a(Ljava/util/List;)V

    .line 3090
    const/4 v0, 0x0

    iput v0, p0, Lzn;->h:I

    .line 3091
    return-void
.end method

.method public a(Lwr;)V
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lzn;->f:Z

    if-nez v0, :cond_0

    .line 1730
    const/4 v0, 0x0

    iput-object v0, p1, Lwr;->c:Ljava/lang/Object;

    .line 1731
    iget-object v0, p0, Lzn;->a:Lic;

    invoke-interface {v0, p1}, Lic;->a(Ljava/lang/Object;)Z

    .line 1733
    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 3465
    iget v0, p0, Lzn;->h:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3514
    iget-object v1, p0, Lzn;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, p2, v2}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3515
    iget v1, p0, Lzn;->h:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzn;->h:I

    .line 3516
    iget-object v1, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3505
    iget-object v1, p0, Lzn;->b:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, p2, p3}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3506
    iget v1, p0, Lzn;->h:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lzn;->h:I

    .line 3507
    iget-object v1, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 3469
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzn;->d(II)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 3094
    iget-object v0, p0, Lzn;->g:Lzm;

    iget-object v1, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lzm;->a(Ljava/util/List;)V

    .line 3095
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3096
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3097
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 3098
    iget v3, v0, Lwr;->a:I

    packed-switch v3, :pswitch_data_0

    .line 3112
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lzn;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3113
    iget-object v0, p0, Lzn;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3096
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3100
    :pswitch_1
    invoke-direct {p0, v0}, Lzn;->f(Lwr;)V

    goto :goto_1

    .line 3103
    :pswitch_2
    invoke-direct {p0, v0}, Lzn;->c(Lwr;)V

    goto :goto_1

    .line 3106
    :pswitch_3
    invoke-direct {p0, v0}, Lzn;->d(Lwr;)V

    goto :goto_1

    .line 3109
    :pswitch_4
    invoke-direct {p0, v0}, Lzn;->b(Lwr;)V

    goto :goto_1

    .line 3116
    :cond_1
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3117
    return-void

    .line 3098
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method b(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3523
    iget-object v1, p0, Lzn;->b:Ljava/util/ArrayList;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, p2, v3}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3524
    iget v1, p0, Lzn;->h:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lzn;->h:I

    .line 3525
    iget-object v1, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 6

    .prologue
    .line 3580
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3581
    const/4 v0, 0x0

    move v2, v0

    move v1, p1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 3582
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 3583
    iget v4, v0, Lwr;->a:I

    sparse-switch v4, :sswitch_data_0

    .line 3581
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 3585
    :sswitch_0
    iget v4, v0, Lwr;->b:I

    if-gt v4, v1, :cond_0

    .line 3586
    iget v0, v0, Lwr;->d:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 3590
    :sswitch_1
    iget v4, v0, Lwr;->b:I

    if-gt v4, v1, :cond_0

    .line 3591
    iget v4, v0, Lwr;->b:I

    iget v5, v0, Lwr;->d:I

    add-int/2addr v4, v5

    .line 3592
    if-le v4, v1, :cond_2

    .line 3593
    const/4 v1, -0x1

    .line 3612
    :cond_1
    return v1

    .line 3595
    :cond_2
    iget v0, v0, Lwr;->d:I

    sub-int/2addr v1, v0

    .line 3596
    goto :goto_1

    .line 3599
    :sswitch_2
    iget v4, v0, Lwr;->b:I

    if-ne v4, v1, :cond_3

    .line 3600
    iget v1, v0, Lwr;->d:I

    goto :goto_1

    .line 3602
    :cond_3
    iget v4, v0, Lwr;->b:I

    if-ge v4, v1, :cond_4

    .line 3603
    add-int/lit8 v1, v1, -0x1

    .line 3605
    :cond_4
    iget v0, v0, Lwr;->d:I

    if-gt v0, v1, :cond_0

    .line 3606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3583
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3120
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 3121
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3122
    iget-object v4, p0, Lzn;->d:Lwq;

    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    invoke-virtual {v4, v0}, Lwq;->b(Lwr;)V

    .line 3121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3124
    :cond_0
    iget-object v0, p0, Lzn;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzn;->a(Ljava/util/List;)V

    .line 3125
    iput v2, p0, Lzn;->h:I

    .line 3126
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 3461
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3549
    invoke-virtual {p0}, Lzn;->c()V

    .line 3550
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 3551
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3552
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 3553
    iget v4, v0, Lwr;->a:I

    packed-switch v4, :pswitch_data_0

    .line 3571
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lzn;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Lzn;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3551
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3555
    :pswitch_1
    iget-object v4, p0, Lzn;->d:Lwq;

    invoke-virtual {v4, v0}, Lwq;->b(Lwr;)V

    .line 3556
    iget-object v4, p0, Lzn;->d:Lwq;

    iget v5, v0, Lwr;->b:I

    iget v0, v0, Lwr;->d:I

    invoke-virtual {v4, v5, v0}, Lwq;->c(II)V

    goto :goto_1

    .line 3559
    :pswitch_2
    iget-object v4, p0, Lzn;->d:Lwq;

    invoke-virtual {v4, v0}, Lwq;->b(Lwr;)V

    .line 3560
    iget-object v4, p0, Lzn;->d:Lwq;

    iget v5, v0, Lwr;->b:I

    iget v0, v0, Lwr;->d:I

    invoke-virtual {v4, v5, v0}, Lwq;->a(II)V

    goto :goto_1

    .line 3563
    :pswitch_3
    iget-object v4, p0, Lzn;->d:Lwq;

    invoke-virtual {v4, v0}, Lwq;->b(Lwr;)V

    .line 3564
    iget-object v4, p0, Lzn;->d:Lwq;

    iget v5, v0, Lwr;->b:I

    iget v6, v0, Lwr;->d:I

    iget-object v0, v0, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v0}, Lwq;->a(IILjava/lang/Object;)V

    goto :goto_1

    .line 3567
    :pswitch_4
    iget-object v4, p0, Lzn;->d:Lwq;

    invoke-virtual {v4, v0}, Lwq;->b(Lwr;)V

    .line 3568
    iget-object v4, p0, Lzn;->d:Lwq;

    iget v5, v0, Lwr;->b:I

    iget v0, v0, Lwr;->d:I

    invoke-virtual {v4, v5, v0}, Lwq;->d(II)V

    goto :goto_1

    .line 3575
    :cond_1
    iget-object v0, p0, Lzn;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lzn;->a(Ljava/util/List;)V

    .line 3576
    iput v2, p0, Lzn;->h:I

    .line 3577
    return-void

    .line 3553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
