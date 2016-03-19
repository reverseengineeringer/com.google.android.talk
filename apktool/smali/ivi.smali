.class public final Livi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1241
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2246
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Livi;->a:[I

    .line 2247
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Livi;->b:[I

    .line 2248
    iput-object v1, p0, Livi;->c:Ljava/lang/Integer;

    .line 2249
    iput-object v1, p0, Livi;->eD:Llyd;

    .line 2250
    const/4 v0, -0x1

    iput v0, p0, Livi;->eE:I

    .line 1243
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2308
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2309
    sparse-switch v0, :sswitch_data_0

    .line 2313
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2314
    :sswitch_0
    return-object p0

    .line 2319
    :sswitch_1
    const/16 v0, 0x8

    .line 2320
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2321
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2323
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2324
    if-eqz v3, :cond_1

    .line 2325
    invoke-virtual {p1}, Llxy;->a()I

    .line 2327
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2328
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 2323
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 2374
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 2378
    :cond_2
    if-eqz v1, :cond_0

    .line 2379
    iget-object v0, p0, Livi;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 2380
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 2381
    iput-object v5, p0, Livi;->a:[I

    goto :goto_0

    .line 2379
    :cond_3
    iget-object v0, p0, Livi;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 2383
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2384
    if-eqz v0, :cond_5

    .line 2385
    iget-object v4, p0, Livi;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2387
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2388
    iput-object v3, p0, Livi;->a:[I

    goto :goto_0

    .line 2394
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2395
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2398
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2399
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 2400
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_2
    goto :goto_4

    .line 2446
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2450
    :cond_6
    if-eqz v0, :cond_a

    .line 2451
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2452
    iget-object v1, p0, Livi;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 2453
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2454
    if-eqz v1, :cond_7

    .line 2455
    iget-object v0, p0, Livi;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2457
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 2458
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2459
    packed-switch v5, :pswitch_data_2

    :pswitch_4
    goto :goto_6

    .line 2505
    :pswitch_5
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 2452
    :cond_8
    iget-object v1, p0, Livi;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 2509
    :cond_9
    iput-object v4, p0, Livi;->a:[I

    .line 2511
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2515
    :sswitch_3
    const/16 v0, 0x10

    .line 2516
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 2517
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 2519
    :goto_7
    if-ge v3, v4, :cond_c

    .line 2520
    if-eqz v3, :cond_b

    .line 2521
    invoke-virtual {p1}, Llxy;->a()I

    .line 2523
    :cond_b
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 2524
    packed-switch v6, :pswitch_data_3

    move v0, v1

    .line 2519
    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_7

    .line 2533
    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_8

    .line 2537
    :cond_c
    if-eqz v1, :cond_0

    .line 2538
    iget-object v0, p0, Livi;->b:[I

    if-nez v0, :cond_d

    move v0, v2

    .line 2539
    :goto_9
    if-nez v0, :cond_e

    array-length v3, v5

    if-ne v1, v3, :cond_e

    .line 2540
    iput-object v5, p0, Livi;->b:[I

    goto/16 :goto_0

    .line 2538
    :cond_d
    iget-object v0, p0, Livi;->b:[I

    array-length v0, v0

    goto :goto_9

    .line 2542
    :cond_e
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 2543
    if-eqz v0, :cond_f

    .line 2544
    iget-object v4, p0, Livi;->b:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2546
    :cond_f
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2547
    iput-object v3, p0, Livi;->b:[I

    goto/16 :goto_0

    .line 2553
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2554
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2557
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 2558
    :goto_a
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_10

    .line 2559
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    goto :goto_a

    .line 2568
    :pswitch_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2572
    :cond_10
    if-eqz v0, :cond_14

    .line 2573
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 2574
    iget-object v1, p0, Livi;->b:[I

    if-nez v1, :cond_12

    move v1, v2

    .line 2575
    :goto_b
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 2576
    if-eqz v1, :cond_11

    .line 2577
    iget-object v0, p0, Livi;->b:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2579
    :cond_11
    :goto_c
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_13

    .line 2580
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 2581
    packed-switch v5, :pswitch_data_5

    goto :goto_c

    .line 2590
    :pswitch_8
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_c

    .line 2574
    :cond_12
    iget-object v1, p0, Livi;->b:[I

    array-length v1, v1

    goto :goto_b

    .line 2594
    :cond_13
    iput-object v4, p0, Livi;->b:[I

    .line 2596
    :cond_14
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2600
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2601
    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    .line 2604
    :pswitch_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livi;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2309
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
    .end sparse-switch

    .line 2328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2400
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2459
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 2524
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 2559
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 2581
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 2601
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1257
    iget-object v0, p0, Livi;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Livi;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 1258
    :goto_0
    iget-object v2, p0, Livi;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1259
    const/4 v2, 0x1

    iget-object v3, p0, Livi;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 1258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1262
    :cond_0
    iget-object v0, p0, Livi;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Livi;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1263
    :goto_1
    iget-object v0, p0, Livi;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 1264
    const/4 v0, 0x2

    iget-object v2, p0, Livi;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 1263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1267
    :cond_1
    iget-object v0, p0, Livi;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1268
    const/4 v0, 0x3

    iget-object v1, p0, Livi;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1270
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1271
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1275
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 1276
    iget-object v0, p0, Livi;->a:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Livi;->a:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    move v2, v1

    .line 1278
    :goto_0
    iget-object v4, p0, Livi;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 1279
    iget-object v4, p0, Livi;->a:[I

    aget v4, v4, v0

    .line 1281
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1283
    :cond_0
    add-int v0, v3, v2

    .line 1284
    iget-object v2, p0, Livi;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 1286
    :goto_1
    iget-object v2, p0, Livi;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Livi;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 1288
    :goto_2
    iget-object v3, p0, Livi;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1289
    iget-object v3, p0, Livi;->b:[I

    aget v3, v3, v1

    .line 1291
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1288
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1293
    :cond_1
    add-int/2addr v0, v2

    .line 1294
    iget-object v1, p0, Livi;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1296
    :cond_2
    iget-object v1, p0, Livi;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1297
    const/4 v1, 0x3

    iget-object v2, p0, Livi;->c:Ljava/lang/Integer;

    .line 1298
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1300
    :cond_3
    return v0

    :cond_4
    move v0, v3

    goto :goto_1
.end method
