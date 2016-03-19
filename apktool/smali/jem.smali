.class public final Ljem;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:[Ljen;

.field public d:Ljava/lang/Long;

.field public e:Ljei;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljen;

.field public i:Ljava/lang/Integer;

.field public j:[Ljen;

.field public k:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1370
    iput-object v1, p0, Ljem;->a:Ljava/lang/String;

    .line 1371
    iput-object v1, p0, Ljem;->b:Ljava/lang/Integer;

    .line 1372
    invoke-static {}, Ljen;->d()[Ljen;

    move-result-object v0

    iput-object v0, p0, Ljem;->c:[Ljen;

    .line 1373
    iput-object v1, p0, Ljem;->d:Ljava/lang/Long;

    .line 1374
    iput-object v1, p0, Ljem;->e:Ljei;

    .line 1375
    iput-object v1, p0, Ljem;->f:Ljava/lang/String;

    .line 1376
    iput-object v1, p0, Ljem;->g:Ljava/lang/Boolean;

    .line 1377
    iput-object v1, p0, Ljem;->h:Ljen;

    .line 1378
    iput-object v1, p0, Ljem;->i:Ljava/lang/Integer;

    .line 1379
    invoke-static {}, Ljen;->d()[Ljen;

    move-result-object v0

    iput-object v0, p0, Ljem;->j:[Ljen;

    .line 1380
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljem;->k:[I

    .line 1381
    iput-object v1, p0, Ljem;->eD:Llyd;

    .line 1382
    const/4 v0, -0x1

    iput v0, p0, Ljem;->eE:I

    .line 367
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2509
    sparse-switch v0, :sswitch_data_0

    .line 2513
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2514
    :sswitch_0
    return-object p0

    .line 2519
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljem;->a:Ljava/lang/String;

    goto :goto_0

    .line 2523
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2524
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2530
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljem;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2536
    :sswitch_3
    const/16 v0, 0x1a

    .line 2537
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2538
    iget-object v0, p0, Ljem;->c:[Ljen;

    if-nez v0, :cond_2

    move v0, v1

    .line 2539
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljen;

    .line 2541
    if-eqz v0, :cond_1

    .line 2542
    iget-object v3, p0, Ljem;->c:[Ljen;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2544
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2545
    new-instance v3, Ljen;

    invoke-direct {v3}, Ljen;-><init>()V

    aput-object v3, v2, v0

    .line 2546
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2547
    invoke-virtual {p1}, Llxy;->a()I

    .line 2544
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2538
    :cond_2
    iget-object v0, p0, Ljem;->c:[Ljen;

    array-length v0, v0

    goto :goto_1

    .line 2550
    :cond_3
    new-instance v3, Ljen;

    invoke-direct {v3}, Ljen;-><init>()V

    aput-object v3, v2, v0

    .line 2551
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2552
    iput-object v2, p0, Ljem;->c:[Ljen;

    goto :goto_0

    .line 2556
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljem;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2560
    :sswitch_5
    iget-object v0, p0, Ljem;->e:Ljei;

    if-nez v0, :cond_4

    .line 2561
    new-instance v0, Ljei;

    invoke-direct {v0}, Ljei;-><init>()V

    iput-object v0, p0, Ljem;->e:Ljei;

    .line 2563
    :cond_4
    iget-object v0, p0, Ljem;->e:Ljei;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2567
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljem;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 2571
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljem;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2575
    :sswitch_8
    iget-object v0, p0, Ljem;->h:Ljen;

    if-nez v0, :cond_5

    .line 2576
    new-instance v0, Ljen;

    invoke-direct {v0}, Ljen;-><init>()V

    iput-object v0, p0, Ljem;->h:Ljen;

    .line 2578
    :cond_5
    iget-object v0, p0, Ljem;->h:Ljen;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2582
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2583
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2589
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljem;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2595
    :sswitch_a
    const/16 v0, 0x52

    .line 2596
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2597
    iget-object v0, p0, Ljem;->j:[Ljen;

    if-nez v0, :cond_7

    move v0, v1

    .line 2598
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljen;

    .line 2600
    if-eqz v0, :cond_6

    .line 2601
    iget-object v3, p0, Ljem;->j:[Ljen;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2603
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 2604
    new-instance v3, Ljen;

    invoke-direct {v3}, Ljen;-><init>()V

    aput-object v3, v2, v0

    .line 2605
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2606
    invoke-virtual {p1}, Llxy;->a()I

    .line 2603
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2597
    :cond_7
    iget-object v0, p0, Ljem;->j:[Ljen;

    array-length v0, v0

    goto :goto_3

    .line 2609
    :cond_8
    new-instance v3, Ljen;

    invoke-direct {v3}, Ljen;-><init>()V

    aput-object v3, v2, v0

    .line 2610
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2611
    iput-object v2, p0, Ljem;->j:[Ljen;

    goto/16 :goto_0

    .line 2615
    :sswitch_b
    const/16 v0, 0x58

    .line 2616
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2617
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 2619
    :goto_5
    if-ge v3, v4, :cond_a

    .line 2620
    if-eqz v3, :cond_9

    .line 2621
    invoke-virtual {p1}, Llxy;->a()I

    .line 2623
    :cond_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2624
    packed-switch v6, :pswitch_data_2

    move v0, v2

    .line 2619
    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 2627
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_6

    .line 2631
    :cond_a
    if-eqz v2, :cond_0

    .line 2632
    iget-object v0, p0, Ljem;->k:[I

    if-nez v0, :cond_b

    move v0, v1

    .line 2633
    :goto_7
    if-nez v0, :cond_c

    array-length v3, v5

    if-ne v2, v3, :cond_c

    .line 2634
    iput-object v5, p0, Ljem;->k:[I

    goto/16 :goto_0

    .line 2632
    :cond_b
    iget-object v0, p0, Ljem;->k:[I

    array-length v0, v0

    goto :goto_7

    .line 2636
    :cond_c
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 2637
    if-eqz v0, :cond_d

    .line 2638
    iget-object v4, p0, Ljem;->k:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2640
    :cond_d
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2641
    iput-object v3, p0, Ljem;->k:[I

    goto/16 :goto_0

    .line 2647
    :sswitch_c
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2648
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2651
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2652
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_e

    .line 2653
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    goto :goto_8

    .line 2656
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2660
    :cond_e
    if-eqz v0, :cond_12

    .line 2661
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2662
    iget-object v2, p0, Ljem;->k:[I

    if-nez v2, :cond_10

    move v2, v1

    .line 2663
    :goto_9
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 2664
    if-eqz v2, :cond_f

    .line 2665
    iget-object v0, p0, Ljem;->k:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2667
    :cond_f
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_11

    .line 2668
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2669
    packed-switch v5, :pswitch_data_4

    goto :goto_a

    .line 2672
    :pswitch_4
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_a

    .line 2662
    :cond_10
    iget-object v2, p0, Ljem;->k:[I

    array-length v2, v2

    goto :goto_9

    .line 2676
    :cond_11
    iput-object v4, p0, Ljem;->k:[I

    .line 2678
    :cond_12
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2509
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x5a -> :sswitch_c
    .end sparse-switch

    .line 2524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2583
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2624
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2653
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2669
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Ljem;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    iget-object v2, p0, Ljem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 392
    :cond_0
    iget-object v0, p0, Ljem;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 393
    const/4 v0, 0x2

    iget-object v2, p0, Ljem;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 395
    :cond_1
    iget-object v0, p0, Ljem;->c:[Ljen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljem;->c:[Ljen;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 396
    :goto_0
    iget-object v2, p0, Ljem;->c:[Ljen;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 397
    iget-object v2, p0, Ljem;->c:[Ljen;

    aget-object v2, v2, v0

    .line 398
    if-eqz v2, :cond_2

    .line 399
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 396
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p0, Ljem;->d:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 404
    const/4 v0, 0x4

    iget-object v2, p0, Ljem;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 406
    :cond_4
    iget-object v0, p0, Ljem;->e:Ljei;

    if-eqz v0, :cond_5

    .line 407
    const/4 v0, 0x5

    iget-object v2, p0, Ljem;->e:Ljei;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 409
    :cond_5
    iget-object v0, p0, Ljem;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 410
    const/4 v0, 0x6

    iget-object v2, p0, Ljem;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 412
    :cond_6
    iget-object v0, p0, Ljem;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 413
    const/4 v0, 0x7

    iget-object v2, p0, Ljem;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 415
    :cond_7
    iget-object v0, p0, Ljem;->h:Ljen;

    if-eqz v0, :cond_8

    .line 416
    const/16 v0, 0x8

    iget-object v2, p0, Ljem;->h:Ljen;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 418
    :cond_8
    iget-object v0, p0, Ljem;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 419
    const/16 v0, 0x9

    iget-object v2, p0, Ljem;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 421
    :cond_9
    iget-object v0, p0, Ljem;->j:[Ljen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljem;->j:[Ljen;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 422
    :goto_1
    iget-object v2, p0, Ljem;->j:[Ljen;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 423
    iget-object v2, p0, Ljem;->j:[Ljen;

    aget-object v2, v2, v0

    .line 424
    if-eqz v2, :cond_a

    .line 425
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 422
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    :cond_b
    iget-object v0, p0, Ljem;->k:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljem;->k:[I

    array-length v0, v0

    if-lez v0, :cond_c

    .line 430
    :goto_2
    iget-object v0, p0, Ljem;->k:[I

    array-length v0, v0

    if-ge v1, v0, :cond_c

    .line 431
    const/16 v0, 0xb

    iget-object v2, p0, Ljem;->k:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 434
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 435
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 440
    iget-object v2, p0, Ljem;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 441
    const/4 v2, 0x1

    iget-object v3, p0, Ljem;->a:Ljava/lang/String;

    .line 442
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 444
    :cond_0
    iget-object v2, p0, Ljem;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 445
    const/4 v2, 0x2

    iget-object v3, p0, Ljem;->b:Ljava/lang/Integer;

    .line 446
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 448
    :cond_1
    iget-object v2, p0, Ljem;->c:[Ljen;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljem;->c:[Ljen;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 449
    :goto_0
    iget-object v3, p0, Ljem;->c:[Ljen;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 450
    iget-object v3, p0, Ljem;->c:[Ljen;

    aget-object v3, v3, v0

    .line 451
    if-eqz v3, :cond_2

    .line 452
    const/4 v4, 0x3

    .line 453
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 449
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 457
    :cond_4
    iget-object v2, p0, Ljem;->d:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 458
    const/4 v2, 0x4

    iget-object v3, p0, Ljem;->d:Ljava/lang/Long;

    .line 459
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 461
    :cond_5
    iget-object v2, p0, Ljem;->e:Ljei;

    if-eqz v2, :cond_6

    .line 462
    const/4 v2, 0x5

    iget-object v3, p0, Ljem;->e:Ljei;

    .line 463
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 465
    :cond_6
    iget-object v2, p0, Ljem;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 466
    const/4 v2, 0x6

    iget-object v3, p0, Ljem;->f:Ljava/lang/String;

    .line 467
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 469
    :cond_7
    iget-object v2, p0, Ljem;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 470
    const/4 v2, 0x7

    iget-object v3, p0, Ljem;->g:Ljava/lang/Boolean;

    .line 471
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 471
    add-int/2addr v0, v2

    .line 473
    :cond_8
    iget-object v2, p0, Ljem;->h:Ljen;

    if-eqz v2, :cond_9

    .line 474
    const/16 v2, 0x8

    iget-object v3, p0, Ljem;->h:Ljen;

    .line 475
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 477
    :cond_9
    iget-object v2, p0, Ljem;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 478
    const/16 v2, 0x9

    iget-object v3, p0, Ljem;->i:Ljava/lang/Integer;

    .line 479
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 481
    :cond_a
    iget-object v2, p0, Ljem;->j:[Ljen;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljem;->j:[Ljen;

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v0

    move v0, v1

    .line 482
    :goto_1
    iget-object v3, p0, Ljem;->j:[Ljen;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 483
    iget-object v3, p0, Ljem;->j:[Ljen;

    aget-object v3, v3, v0

    .line 484
    if-eqz v3, :cond_b

    .line 485
    const/16 v4, 0xa

    .line 486
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 482
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    move v0, v2

    .line 490
    :cond_d
    iget-object v2, p0, Ljem;->k:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Ljem;->k:[I

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v1

    .line 492
    :goto_2
    iget-object v3, p0, Ljem;->k:[I

    array-length v3, v3

    if-ge v1, v3, :cond_e

    .line 493
    iget-object v3, p0, Ljem;->k:[I

    aget v3, v3, v1

    .line 495
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 497
    :cond_e
    add-int/2addr v0, v2

    .line 498
    iget-object v1, p0, Ljem;->k:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 500
    :cond_f
    return v0
.end method
