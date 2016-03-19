.class public final Ljdf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljdf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Integer;

.field public h:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1439
    iput-object v1, p0, Ljdf;->a:Ljava/lang/Long;

    .line 1440
    iput-object v1, p0, Ljdf;->b:Ljava/lang/Long;

    .line 1441
    iput-object v1, p0, Ljdf;->c:Ljava/lang/Boolean;

    .line 1442
    iput-object v1, p0, Ljdf;->d:Ljava/lang/Integer;

    .line 1443
    iput-object v1, p0, Ljdf;->e:Ljava/lang/Long;

    .line 1444
    iput-object v1, p0, Ljdf;->f:Ljava/lang/Long;

    .line 1445
    iput-object v1, p0, Ljdf;->g:Ljava/lang/Integer;

    .line 1446
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Ljdf;->h:[J

    .line 1447
    iput-object v1, p0, Ljdf;->eD:Llyd;

    .line 1448
    const/4 v0, -0x1

    iput v0, p0, Ljdf;->eE:I

    .line 436
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2533
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2534
    sparse-switch v0, :sswitch_data_0

    .line 2538
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2539
    :sswitch_0
    return-object p0

    .line 2544
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljdf;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2548
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljdf;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2552
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljdf;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 2556
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2557
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2561
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljdf;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 2567
    :sswitch_5
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljdf;->e:Ljava/lang/Long;

    goto :goto_0

    .line 2571
    :sswitch_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljdf;->f:Ljava/lang/Long;

    goto :goto_0

    .line 2575
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljdf;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 2579
    :sswitch_8
    const/16 v0, 0x40

    .line 2580
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2581
    iget-object v0, p0, Ljdf;->h:[J

    if-nez v0, :cond_2

    move v0, v1

    .line 2582
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 2583
    if-eqz v0, :cond_1

    .line 2584
    iget-object v3, p0, Ljdf;->h:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2586
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2587
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2588
    invoke-virtual {p1}, Llxy;->a()I

    .line 2586
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2581
    :cond_2
    iget-object v0, p0, Ljdf;->h:[J

    array-length v0, v0

    goto :goto_1

    .line 2591
    :cond_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2592
    iput-object v2, p0, Ljdf;->h:[J

    goto/16 :goto_0

    .line 2596
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2597
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2600
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2601
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 2602
    invoke-virtual {p1}, Llxy;->e()J

    .line 2603
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2605
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2606
    iget-object v2, p0, Ljdf;->h:[J

    if-nez v2, :cond_6

    move v2, v1

    .line 2607
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 2608
    if-eqz v2, :cond_5

    .line 2609
    iget-object v4, p0, Ljdf;->h:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2611
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 2612
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 2611
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2606
    :cond_6
    iget-object v2, p0, Ljdf;->h:[J

    array-length v2, v2

    goto :goto_4

    .line 2614
    :cond_7
    iput-object v0, p0, Ljdf;->h:[J

    .line 2615
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2534
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x42 -> :sswitch_9
    .end sparse-switch

    .line 2557
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
    .line 455
    iget-object v0, p0, Ljdf;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x1

    iget-object v1, p0, Ljdf;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 458
    :cond_0
    iget-object v0, p0, Ljdf;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 459
    const/4 v0, 0x2

    iget-object v1, p0, Ljdf;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 461
    :cond_1
    iget-object v0, p0, Ljdf;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 462
    const/4 v0, 0x3

    iget-object v1, p0, Ljdf;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 464
    :cond_2
    iget-object v0, p0, Ljdf;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 465
    const/4 v0, 0x4

    iget-object v1, p0, Ljdf;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 467
    :cond_3
    iget-object v0, p0, Ljdf;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 468
    const/4 v0, 0x5

    iget-object v1, p0, Ljdf;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 470
    :cond_4
    iget-object v0, p0, Ljdf;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 471
    const/4 v0, 0x6

    iget-object v1, p0, Ljdf;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 473
    :cond_5
    iget-object v0, p0, Ljdf;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 474
    const/4 v0, 0x7

    iget-object v1, p0, Ljdf;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 476
    :cond_6
    iget-object v0, p0, Ljdf;->h:[J

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljdf;->h:[J

    array-length v0, v0

    if-lez v0, :cond_7

    .line 477
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljdf;->h:[J

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 478
    const/16 v1, 0x8

    iget-object v2, p0, Ljdf;->h:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Llxz;->b(IJ)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 482
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 487
    iget-object v2, p0, Ljdf;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 488
    const/4 v2, 0x1

    iget-object v3, p0, Ljdf;->a:Ljava/lang/Long;

    .line 489
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 491
    :cond_0
    iget-object v2, p0, Ljdf;->b:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 492
    const/4 v2, 0x2

    iget-object v3, p0, Ljdf;->b:Ljava/lang/Long;

    .line 493
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 495
    :cond_1
    iget-object v2, p0, Ljdf;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 496
    const/4 v2, 0x3

    iget-object v3, p0, Ljdf;->c:Ljava/lang/Boolean;

    .line 497
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 497
    add-int/2addr v0, v2

    .line 499
    :cond_2
    iget-object v2, p0, Ljdf;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 500
    const/4 v2, 0x4

    iget-object v3, p0, Ljdf;->d:Ljava/lang/Integer;

    .line 501
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 503
    :cond_3
    iget-object v2, p0, Ljdf;->e:Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 504
    const/4 v2, 0x5

    iget-object v3, p0, Ljdf;->e:Ljava/lang/Long;

    .line 505
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 507
    :cond_4
    iget-object v2, p0, Ljdf;->f:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 508
    const/4 v2, 0x6

    iget-object v3, p0, Ljdf;->f:Ljava/lang/Long;

    .line 509
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 511
    :cond_5
    iget-object v2, p0, Ljdf;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 512
    const/4 v2, 0x7

    iget-object v3, p0, Ljdf;->g:Ljava/lang/Integer;

    .line 513
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 515
    :cond_6
    iget-object v2, p0, Ljdf;->h:[J

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljdf;->h:[J

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    .line 517
    :goto_0
    iget-object v3, p0, Ljdf;->h:[J

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 518
    iget-object v3, p0, Ljdf;->h:[J

    aget-wide v4, v3, v1

    .line 1765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v3

    .line 520
    add-int/2addr v2, v3

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    :cond_7
    add-int/2addr v0, v2

    .line 523
    iget-object v1, p0, Ljdf;->h:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 525
    :cond_8
    return v0
.end method
