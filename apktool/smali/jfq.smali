.class public final Ljfq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8431
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8432
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljfq;->a:[I

    .line 8433
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljfq;->b:[I

    .line 8434
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljfq;->c:[I

    .line 8435
    const/4 v0, 0x0

    iput-object v0, p0, Ljfq;->eD:Llyd;

    .line 8436
    const/4 v0, -0x1

    iput v0, p0, Ljfq;->eE:I

    .line 8437
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 9501
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9502
    sparse-switch v0, :sswitch_data_0

    .line 9506
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9507
    :sswitch_0
    return-object p0

    .line 9512
    :sswitch_1
    const/16 v0, 0x8

    .line 9513
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9514
    iget-object v0, p0, Ljfq;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 9515
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 9516
    if-eqz v0, :cond_1

    .line 9517
    iget-object v3, p0, Ljfq;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9519
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 9520
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 9521
    invoke-virtual {p1}, Llxy;->a()I

    .line 9519
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9514
    :cond_2
    iget-object v0, p0, Ljfq;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 9524
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 9525
    iput-object v2, p0, Ljfq;->a:[I

    goto :goto_0

    .line 9529
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 9530
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 9533
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 9534
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 9535
    invoke-virtual {p1}, Llxy;->f()I

    .line 9536
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 9538
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 9539
    iget-object v2, p0, Ljfq;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 9540
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 9541
    if-eqz v2, :cond_5

    .line 9542
    iget-object v4, p0, Ljfq;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9544
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 9545
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 9544
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 9539
    :cond_6
    iget-object v2, p0, Ljfq;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 9547
    :cond_7
    iput-object v0, p0, Ljfq;->a:[I

    .line 9548
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 9552
    :sswitch_3
    const/16 v0, 0x10

    .line 9553
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9554
    iget-object v0, p0, Ljfq;->b:[I

    if-nez v0, :cond_9

    move v0, v1

    .line 9555
    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 9556
    if-eqz v0, :cond_8

    .line 9557
    iget-object v3, p0, Ljfq;->b:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9559
    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 9560
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 9561
    invoke-virtual {p1}, Llxy;->a()I

    .line 9559
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 9554
    :cond_9
    iget-object v0, p0, Ljfq;->b:[I

    array-length v0, v0

    goto :goto_6

    .line 9564
    :cond_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 9565
    iput-object v2, p0, Ljfq;->b:[I

    goto/16 :goto_0

    .line 9569
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 9570
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 9573
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 9574
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_b

    .line 9575
    invoke-virtual {p1}, Llxy;->f()I

    .line 9576
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 9578
    :cond_b
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 9579
    iget-object v2, p0, Ljfq;->b:[I

    if-nez v2, :cond_d

    move v2, v1

    .line 9580
    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 9581
    if-eqz v2, :cond_c

    .line 9582
    iget-object v4, p0, Ljfq;->b:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9584
    :cond_c
    :goto_a
    array-length v4, v0

    if-ge v2, v4, :cond_e

    .line 9585
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 9584
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 9579
    :cond_d
    iget-object v2, p0, Ljfq;->b:[I

    array-length v2, v2

    goto :goto_9

    .line 9587
    :cond_e
    iput-object v0, p0, Ljfq;->b:[I

    .line 9588
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 9592
    :sswitch_5
    const/16 v0, 0x18

    .line 9593
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 9594
    iget-object v0, p0, Ljfq;->c:[I

    if-nez v0, :cond_10

    move v0, v1

    .line 9595
    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 9596
    if-eqz v0, :cond_f

    .line 9597
    iget-object v3, p0, Ljfq;->c:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9599
    :cond_f
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    .line 9600
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 9601
    invoke-virtual {p1}, Llxy;->a()I

    .line 9599
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 9594
    :cond_10
    iget-object v0, p0, Ljfq;->c:[I

    array-length v0, v0

    goto :goto_b

    .line 9604
    :cond_11
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 9605
    iput-object v2, p0, Ljfq;->c:[I

    goto/16 :goto_0

    .line 9609
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 9610
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 9613
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 9614
    :goto_d
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_12

    .line 9615
    invoke-virtual {p1}, Llxy;->f()I

    .line 9616
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 9618
    :cond_12
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 9619
    iget-object v2, p0, Ljfq;->c:[I

    if-nez v2, :cond_14

    move v2, v1

    .line 9620
    :goto_e
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 9621
    if-eqz v2, :cond_13

    .line 9622
    iget-object v4, p0, Ljfq;->c:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9624
    :cond_13
    :goto_f
    array-length v4, v0

    if-ge v2, v4, :cond_15

    .line 9625
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 9624
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 9619
    :cond_14
    iget-object v2, p0, Ljfq;->c:[I

    array-length v2, v2

    goto :goto_e

    .line 9627
    :cond_15
    iput-object v0, p0, Ljfq;->c:[I

    .line 9628
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 9502
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1a -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8442
    iget-object v0, p0, Ljfq;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljfq;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 8443
    :goto_0
    iget-object v2, p0, Ljfq;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 8444
    const/4 v2, 0x1

    iget-object v3, p0, Ljfq;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 8443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8447
    :cond_0
    iget-object v0, p0, Ljfq;->b:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljfq;->b:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 8448
    :goto_1
    iget-object v2, p0, Ljfq;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 8449
    const/4 v2, 0x2

    iget-object v3, p0, Ljfq;->b:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 8448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8452
    :cond_1
    iget-object v0, p0, Ljfq;->c:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljfq;->c:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 8453
    :goto_2
    iget-object v0, p0, Ljfq;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 8454
    const/4 v0, 0x3

    iget-object v2, p0, Ljfq;->c:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 8453
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8457
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8458
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8462
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 8463
    iget-object v0, p0, Ljfq;->a:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljfq;->a:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    move v2, v1

    .line 8465
    :goto_0
    iget-object v4, p0, Ljfq;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 8466
    iget-object v4, p0, Ljfq;->a:[I

    aget v4, v4, v0

    .line 8468
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 8465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8470
    :cond_0
    add-int v0, v3, v2

    .line 8471
    iget-object v2, p0, Ljfq;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 8473
    :goto_1
    iget-object v2, p0, Ljfq;->b:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljfq;->b:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    .line 8475
    :goto_2
    iget-object v4, p0, Ljfq;->b:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 8476
    iget-object v4, p0, Ljfq;->b:[I

    aget v4, v4, v2

    .line 8478
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 8475
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8480
    :cond_1
    add-int/2addr v0, v3

    .line 8481
    iget-object v2, p0, Ljfq;->b:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 8483
    :cond_2
    iget-object v2, p0, Ljfq;->c:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljfq;->c:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    .line 8485
    :goto_3
    iget-object v3, p0, Ljfq;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 8486
    iget-object v3, p0, Ljfq;->c:[I

    aget v3, v3, v1

    .line 8488
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 8485
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8490
    :cond_3
    add-int/2addr v0, v2

    .line 8491
    iget-object v1, p0, Ljfq;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 8493
    :cond_4
    return v0

    :cond_5
    move v0, v3

    goto :goto_1
.end method
