.class public final Ljgd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljgd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:[Ljge;

.field public d:Ljava/lang/Long;

.field public e:Ljfz;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljge;

.field public i:I

.field public j:[Ljge;

.field public k:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 338
    invoke-direct {p0}, Llyb;-><init>()V

    .line 339
    iput-object v1, p0, Ljgd;->a:Ljava/lang/String;

    .line 340
    iput v2, p0, Ljgd;->b:I

    .line 341
    invoke-static {}, Ljge;->d()[Ljge;

    move-result-object v0

    iput-object v0, p0, Ljgd;->c:[Ljge;

    .line 342
    iput-object v1, p0, Ljgd;->d:Ljava/lang/Long;

    .line 343
    iput-object v1, p0, Ljgd;->e:Ljfz;

    .line 344
    iput-object v1, p0, Ljgd;->f:Ljava/lang/String;

    .line 345
    iput-object v1, p0, Ljgd;->g:Ljava/lang/Boolean;

    .line 346
    iput-object v1, p0, Ljgd;->h:Ljge;

    .line 347
    iput v2, p0, Ljgd;->i:I

    .line 348
    invoke-static {}, Ljge;->d()[Ljge;

    move-result-object v0

    iput-object v0, p0, Ljgd;->j:[Ljge;

    .line 349
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljgd;->k:[I

    .line 350
    iput-object v1, p0, Ljgd;->eD:Llyd;

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Ljgd;->eE:I

    .line 352
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2476
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2477
    sparse-switch v0, :sswitch_data_0

    .line 2481
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2482
    :sswitch_0
    return-object p0

    .line 2487
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgd;->a:Ljava/lang/String;

    goto :goto_0

    .line 2491
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2492
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2498
    :pswitch_0
    iput v0, p0, Ljgd;->b:I

    goto :goto_0

    .line 2504
    :sswitch_3
    const/16 v0, 0x1a

    .line 2505
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2506
    iget-object v0, p0, Ljgd;->c:[Ljge;

    if-nez v0, :cond_2

    move v0, v1

    .line 2507
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljge;

    .line 2509
    if-eqz v0, :cond_1

    .line 2510
    iget-object v3, p0, Ljgd;->c:[Ljge;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2512
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2513
    new-instance v3, Ljge;

    invoke-direct {v3}, Ljge;-><init>()V

    aput-object v3, v2, v0

    .line 2514
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2515
    invoke-virtual {p1}, Llxy;->a()I

    .line 2512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2506
    :cond_2
    iget-object v0, p0, Ljgd;->c:[Ljge;

    array-length v0, v0

    goto :goto_1

    .line 2518
    :cond_3
    new-instance v3, Ljge;

    invoke-direct {v3}, Ljge;-><init>()V

    aput-object v3, v2, v0

    .line 2519
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2520
    iput-object v2, p0, Ljgd;->c:[Ljge;

    goto :goto_0

    .line 2524
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljgd;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2528
    :sswitch_5
    iget-object v0, p0, Ljgd;->e:Ljfz;

    if-nez v0, :cond_4

    .line 2529
    new-instance v0, Ljfz;

    invoke-direct {v0}, Ljfz;-><init>()V

    iput-object v0, p0, Ljgd;->e:Ljfz;

    .line 2531
    :cond_4
    iget-object v0, p0, Ljgd;->e:Ljfz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2535
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgd;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 2539
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljgd;->g:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2543
    :sswitch_8
    iget-object v0, p0, Ljgd;->h:Ljge;

    if-nez v0, :cond_5

    .line 2544
    new-instance v0, Ljge;

    invoke-direct {v0}, Ljge;-><init>()V

    iput-object v0, p0, Ljgd;->h:Ljge;

    .line 2546
    :cond_5
    iget-object v0, p0, Ljgd;->h:Ljge;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2550
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2551
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2557
    :pswitch_1
    iput v0, p0, Ljgd;->i:I

    goto/16 :goto_0

    .line 2563
    :sswitch_a
    const/16 v0, 0x52

    .line 2564
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2565
    iget-object v0, p0, Ljgd;->j:[Ljge;

    if-nez v0, :cond_7

    move v0, v1

    .line 2566
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljge;

    .line 2568
    if-eqz v0, :cond_6

    .line 2569
    iget-object v3, p0, Ljgd;->j:[Ljge;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2571
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 2572
    new-instance v3, Ljge;

    invoke-direct {v3}, Ljge;-><init>()V

    aput-object v3, v2, v0

    .line 2573
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2574
    invoke-virtual {p1}, Llxy;->a()I

    .line 2571
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2565
    :cond_7
    iget-object v0, p0, Ljgd;->j:[Ljge;

    array-length v0, v0

    goto :goto_3

    .line 2577
    :cond_8
    new-instance v3, Ljge;

    invoke-direct {v3}, Ljge;-><init>()V

    aput-object v3, v2, v0

    .line 2578
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2579
    iput-object v2, p0, Ljgd;->j:[Ljge;

    goto/16 :goto_0

    .line 2583
    :sswitch_b
    const/16 v0, 0x58

    .line 2584
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2585
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 2587
    :goto_5
    if-ge v3, v4, :cond_a

    .line 2588
    if-eqz v3, :cond_9

    .line 2589
    invoke-virtual {p1}, Llxy;->a()I

    .line 2591
    :cond_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2592
    packed-switch v6, :pswitch_data_2

    move v0, v2

    .line 2587
    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 2595
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_6

    .line 2599
    :cond_a
    if-eqz v2, :cond_0

    .line 2600
    iget-object v0, p0, Ljgd;->k:[I

    if-nez v0, :cond_b

    move v0, v1

    .line 2601
    :goto_7
    if-nez v0, :cond_c

    array-length v3, v5

    if-ne v2, v3, :cond_c

    .line 2602
    iput-object v5, p0, Ljgd;->k:[I

    goto/16 :goto_0

    .line 2600
    :cond_b
    iget-object v0, p0, Ljgd;->k:[I

    array-length v0, v0

    goto :goto_7

    .line 2604
    :cond_c
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 2605
    if-eqz v0, :cond_d

    .line 2606
    iget-object v4, p0, Ljgd;->k:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2608
    :cond_d
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2609
    iput-object v3, p0, Ljgd;->k:[I

    goto/16 :goto_0

    .line 2615
    :sswitch_c
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2616
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2619
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2620
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_e

    .line 2621
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    goto :goto_8

    .line 2624
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2628
    :cond_e
    if-eqz v0, :cond_12

    .line 2629
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2630
    iget-object v2, p0, Ljgd;->k:[I

    if-nez v2, :cond_10

    move v2, v1

    .line 2631
    :goto_9
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 2632
    if-eqz v2, :cond_f

    .line 2633
    iget-object v0, p0, Ljgd;->k:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2635
    :cond_f
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_11

    .line 2636
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2637
    packed-switch v5, :pswitch_data_4

    goto :goto_a

    .line 2640
    :pswitch_4
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_a

    .line 2630
    :cond_10
    iget-object v2, p0, Ljgd;->k:[I

    array-length v2, v2

    goto :goto_9

    .line 2644
    :cond_11
    iput-object v4, p0, Ljgd;->k:[I

    .line 2646
    :cond_12
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2477
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

    .line 2492
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2551
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2592
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2621
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2637
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Ljgd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    iget-object v2, p0, Ljgd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 360
    :cond_0
    iget v0, p0, Ljgd;->b:I

    if-eq v0, v4, :cond_1

    .line 361
    const/4 v0, 0x2

    iget v2, p0, Ljgd;->b:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 363
    :cond_1
    iget-object v0, p0, Ljgd;->c:[Ljge;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljgd;->c:[Ljge;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 364
    :goto_0
    iget-object v2, p0, Ljgd;->c:[Ljge;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 365
    iget-object v2, p0, Ljgd;->c:[Ljge;

    aget-object v2, v2, v0

    .line 366
    if-eqz v2, :cond_2

    .line 367
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 364
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_3
    iget-object v0, p0, Ljgd;->d:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 372
    const/4 v0, 0x4

    iget-object v2, p0, Ljgd;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 374
    :cond_4
    iget-object v0, p0, Ljgd;->e:Ljfz;

    if-eqz v0, :cond_5

    .line 375
    const/4 v0, 0x5

    iget-object v2, p0, Ljgd;->e:Ljfz;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 377
    :cond_5
    iget-object v0, p0, Ljgd;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 378
    const/4 v0, 0x6

    iget-object v2, p0, Ljgd;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 380
    :cond_6
    iget-object v0, p0, Ljgd;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 381
    const/4 v0, 0x7

    iget-object v2, p0, Ljgd;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 383
    :cond_7
    iget-object v0, p0, Ljgd;->h:Ljge;

    if-eqz v0, :cond_8

    .line 384
    const/16 v0, 0x8

    iget-object v2, p0, Ljgd;->h:Ljge;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 386
    :cond_8
    iget v0, p0, Ljgd;->i:I

    if-eq v0, v4, :cond_9

    .line 387
    const/16 v0, 0x9

    iget v2, p0, Ljgd;->i:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 389
    :cond_9
    iget-object v0, p0, Ljgd;->j:[Ljge;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljgd;->j:[Ljge;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 390
    :goto_1
    iget-object v2, p0, Ljgd;->j:[Ljge;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 391
    iget-object v2, p0, Ljgd;->j:[Ljge;

    aget-object v2, v2, v0

    .line 392
    if-eqz v2, :cond_a

    .line 393
    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 390
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    :cond_b
    iget-object v0, p0, Ljgd;->k:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljgd;->k:[I

    array-length v0, v0

    if-lez v0, :cond_c

    .line 398
    :goto_2
    iget-object v0, p0, Ljgd;->k:[I

    array-length v0, v0

    if-ge v1, v0, :cond_c

    .line 399
    const/16 v0, 0xb

    iget-object v2, p0, Ljgd;->k:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 403
    return-void
.end method

.method protected b()I
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/4 v1, 0x0

    .line 407
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 408
    iget-object v2, p0, Ljgd;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 409
    const/4 v2, 0x1

    iget-object v3, p0, Ljgd;->a:Ljava/lang/String;

    .line 410
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 412
    :cond_0
    iget v2, p0, Ljgd;->b:I

    if-eq v2, v6, :cond_1

    .line 413
    const/4 v2, 0x2

    iget v3, p0, Ljgd;->b:I

    .line 414
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 416
    :cond_1
    iget-object v2, p0, Ljgd;->c:[Ljge;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljgd;->c:[Ljge;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 417
    :goto_0
    iget-object v3, p0, Ljgd;->c:[Ljge;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 418
    iget-object v3, p0, Ljgd;->c:[Ljge;

    aget-object v3, v3, v0

    .line 419
    if-eqz v3, :cond_2

    .line 420
    const/4 v4, 0x3

    .line 421
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 417
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 425
    :cond_4
    iget-object v2, p0, Ljgd;->d:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 426
    const/4 v2, 0x4

    iget-object v3, p0, Ljgd;->d:Ljava/lang/Long;

    .line 427
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 429
    :cond_5
    iget-object v2, p0, Ljgd;->e:Ljfz;

    if-eqz v2, :cond_6

    .line 430
    const/4 v2, 0x5

    iget-object v3, p0, Ljgd;->e:Ljfz;

    .line 431
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 433
    :cond_6
    iget-object v2, p0, Ljgd;->f:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 434
    const/4 v2, 0x6

    iget-object v3, p0, Ljgd;->f:Ljava/lang/String;

    .line 435
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 437
    :cond_7
    iget-object v2, p0, Ljgd;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 438
    const/4 v2, 0x7

    iget-object v3, p0, Ljgd;->g:Ljava/lang/Boolean;

    .line 439
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 439
    add-int/2addr v0, v2

    .line 441
    :cond_8
    iget-object v2, p0, Ljgd;->h:Ljge;

    if-eqz v2, :cond_9

    .line 442
    const/16 v2, 0x8

    iget-object v3, p0, Ljgd;->h:Ljge;

    .line 443
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 445
    :cond_9
    iget v2, p0, Ljgd;->i:I

    if-eq v2, v6, :cond_a

    .line 446
    const/16 v2, 0x9

    iget v3, p0, Ljgd;->i:I

    .line 447
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 449
    :cond_a
    iget-object v2, p0, Ljgd;->j:[Ljge;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ljgd;->j:[Ljge;

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v0

    move v0, v1

    .line 450
    :goto_1
    iget-object v3, p0, Ljgd;->j:[Ljge;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 451
    iget-object v3, p0, Ljgd;->j:[Ljge;

    aget-object v3, v3, v0

    .line 452
    if-eqz v3, :cond_b

    .line 453
    const/16 v4, 0xa

    .line 454
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 450
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    move v0, v2

    .line 458
    :cond_d
    iget-object v2, p0, Ljgd;->k:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Ljgd;->k:[I

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v1

    .line 460
    :goto_2
    iget-object v3, p0, Ljgd;->k:[I

    array-length v3, v3

    if-ge v1, v3, :cond_e

    .line 461
    iget-object v3, p0, Ljgd;->k:[I

    aget v3, v3, v1

    .line 463
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 465
    :cond_e
    add-int/2addr v0, v2

    .line 466
    iget-object v1, p0, Ljgd;->k:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 468
    :cond_f
    return v0
.end method
