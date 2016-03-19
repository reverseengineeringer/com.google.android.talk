.class public final Lmme;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmme;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Lmme;


# instance fields
.field public a:Lmiv;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:[Lmme;

.field public f:[Lmmd;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1342
    iput-object v1, p0, Lmme;->a:Lmiv;

    .line 1343
    iput-object v1, p0, Lmme;->b:Ljava/lang/Boolean;

    .line 1344
    iput-object v1, p0, Lmme;->c:Ljava/lang/String;

    .line 1345
    iput-object v1, p0, Lmme;->d:Ljava/lang/Integer;

    .line 1346
    invoke-static {}, Lmme;->d()[Lmme;

    move-result-object v0

    iput-object v0, p0, Lmme;->e:[Lmme;

    .line 1347
    invoke-static {}, Lmmd;->d()[Lmmd;

    move-result-object v0

    iput-object v0, p0, Lmme;->f:[Lmmd;

    .line 1348
    iput-object v1, p0, Lmme;->g:Ljava/lang/Integer;

    .line 1349
    iput-object v1, p0, Lmme;->eD:Llyd;

    .line 1350
    const/4 v0, -0x1

    iput v0, p0, Lmme;->eE:I

    .line 339
    return-void
.end method

.method public static d()[Lmme;
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lmme;->h:[Lmme;

    if-nez v0, :cond_1

    .line 304
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_0
    sget-object v0, Lmme;->h:[Lmme;

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    new-array v0, v0, [Lmme;

    sput-object v0, Lmme;->h:[Lmme;

    .line 309
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_1
    sget-object v0, Lmme;->h:[Lmme;

    return-object v0

    .line 309
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2440
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2441
    sparse-switch v0, :sswitch_data_0

    .line 2445
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2446
    :sswitch_0
    return-object p0

    .line 2451
    :sswitch_1
    iget-object v0, p0, Lmme;->a:Lmiv;

    if-nez v0, :cond_1

    .line 2452
    new-instance v0, Lmiv;

    invoke-direct {v0}, Lmiv;-><init>()V

    iput-object v0, p0, Lmme;->a:Lmiv;

    .line 2454
    :cond_1
    iget-object v0, p0, Lmme;->a:Lmiv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2458
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmme;->c:Ljava/lang/String;

    goto :goto_0

    .line 2462
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmme;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 2466
    :sswitch_4
    const/16 v0, 0x22

    .line 2467
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2468
    iget-object v0, p0, Lmme;->e:[Lmme;

    if-nez v0, :cond_3

    move v0, v1

    .line 2469
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmme;

    .line 2471
    if-eqz v0, :cond_2

    .line 2472
    iget-object v3, p0, Lmme;->e:[Lmme;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2474
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2475
    new-instance v3, Lmme;

    invoke-direct {v3}, Lmme;-><init>()V

    aput-object v3, v2, v0

    .line 2476
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2477
    invoke-virtual {p1}, Llxy;->a()I

    .line 2474
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2468
    :cond_3
    iget-object v0, p0, Lmme;->e:[Lmme;

    array-length v0, v0

    goto :goto_1

    .line 2480
    :cond_4
    new-instance v3, Lmme;

    invoke-direct {v3}, Lmme;-><init>()V

    aput-object v3, v2, v0

    .line 2481
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2482
    iput-object v2, p0, Lmme;->e:[Lmme;

    goto :goto_0

    .line 2486
    :sswitch_5
    const/16 v0, 0x2a

    .line 2487
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2488
    iget-object v0, p0, Lmme;->f:[Lmmd;

    if-nez v0, :cond_6

    move v0, v1

    .line 2489
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmmd;

    .line 2491
    if-eqz v0, :cond_5

    .line 2492
    iget-object v3, p0, Lmme;->f:[Lmmd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2494
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2495
    new-instance v3, Lmmd;

    invoke-direct {v3}, Lmmd;-><init>()V

    aput-object v3, v2, v0

    .line 2496
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2497
    invoke-virtual {p1}, Llxy;->a()I

    .line 2494
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2488
    :cond_6
    iget-object v0, p0, Lmme;->f:[Lmmd;

    array-length v0, v0

    goto :goto_3

    .line 2500
    :cond_7
    new-instance v3, Lmmd;

    invoke-direct {v3}, Lmmd;-><init>()V

    aput-object v3, v2, v0

    .line 2501
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2502
    iput-object v2, p0, Lmme;->f:[Lmmd;

    goto/16 :goto_0

    .line 2506
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2507
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2511
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmme;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2517
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmme;->b:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2441
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    .line 2507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lmme;->a:Lmiv;

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iget-object v2, p0, Lmme;->a:Lmiv;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lmme;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 361
    const/4 v0, 0x2

    iget-object v2, p0, Lmme;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lmme;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 364
    const/4 v0, 0x3

    iget-object v2, p0, Lmme;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 366
    :cond_2
    iget-object v0, p0, Lmme;->e:[Lmme;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmme;->e:[Lmme;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 367
    :goto_0
    iget-object v2, p0, Lmme;->e:[Lmme;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 368
    iget-object v2, p0, Lmme;->e:[Lmme;

    aget-object v2, v2, v0

    .line 369
    if-eqz v2, :cond_3

    .line 370
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 367
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_4
    iget-object v0, p0, Lmme;->f:[Lmmd;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmme;->f:[Lmmd;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 375
    :goto_1
    iget-object v0, p0, Lmme;->f:[Lmmd;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 376
    iget-object v0, p0, Lmme;->f:[Lmmd;

    aget-object v0, v0, v1

    .line 377
    if-eqz v0, :cond_5

    .line 378
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 375
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    :cond_6
    iget-object v0, p0, Lmme;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 383
    const/4 v0, 0x6

    iget-object v1, p0, Lmme;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 385
    :cond_7
    iget-object v0, p0, Lmme;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 386
    const/4 v0, 0x7

    iget-object v1, p0, Lmme;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 388
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 389
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 394
    iget-object v2, p0, Lmme;->a:Lmiv;

    if-eqz v2, :cond_0

    .line 395
    const/4 v2, 0x1

    iget-object v3, p0, Lmme;->a:Lmiv;

    .line 396
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 398
    :cond_0
    iget-object v2, p0, Lmme;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 399
    const/4 v2, 0x2

    iget-object v3, p0, Lmme;->c:Ljava/lang/String;

    .line 400
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 402
    :cond_1
    iget-object v2, p0, Lmme;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 403
    const/4 v2, 0x3

    iget-object v3, p0, Lmme;->d:Ljava/lang/Integer;

    .line 404
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 406
    :cond_2
    iget-object v2, p0, Lmme;->e:[Lmme;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmme;->e:[Lmme;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 407
    :goto_0
    iget-object v3, p0, Lmme;->e:[Lmme;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 408
    iget-object v3, p0, Lmme;->e:[Lmme;

    aget-object v3, v3, v0

    .line 409
    if-eqz v3, :cond_3

    .line 410
    const/4 v4, 0x4

    .line 411
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 407
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 415
    :cond_5
    iget-object v2, p0, Lmme;->f:[Lmmd;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmme;->f:[Lmmd;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 416
    :goto_1
    iget-object v2, p0, Lmme;->f:[Lmmd;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 417
    iget-object v2, p0, Lmme;->f:[Lmmd;

    aget-object v2, v2, v1

    .line 418
    if-eqz v2, :cond_6

    .line 419
    const/4 v3, 0x5

    .line 420
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 416
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    :cond_7
    iget-object v1, p0, Lmme;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 425
    const/4 v1, 0x6

    iget-object v2, p0, Lmme;->g:Ljava/lang/Integer;

    .line 426
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_8
    iget-object v1, p0, Lmme;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 429
    const/4 v1, 0x7

    iget-object v2, p0, Lmme;->b:Ljava/lang/Boolean;

    .line 430
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 430
    add-int/2addr v0, v1

    .line 432
    :cond_9
    return v0
.end method
