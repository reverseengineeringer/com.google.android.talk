.class public final Lkjp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lkjq;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Lkiu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1524
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2529
    iput-object v1, p0, Lkjp;->a:Ljava/lang/Integer;

    .line 2530
    iput-object v1, p0, Lkjp;->b:Lkjq;

    .line 2531
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkjp;->c:[Ljava/lang/String;

    .line 2532
    iput-object v1, p0, Lkjp;->d:Ljava/lang/String;

    .line 2533
    iput-object v1, p0, Lkjp;->e:Ljava/lang/String;

    .line 2534
    invoke-static {}, Lkiu;->d()[Lkiu;

    move-result-object v0

    iput-object v0, p0, Lkjp;->f:[Lkiu;

    .line 2535
    iput-object v1, p0, Lkjp;->eD:Llyd;

    .line 2536
    const/4 v0, -0x1

    iput v0, p0, Lkjp;->eE:I

    .line 1526
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2624
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2625
    sparse-switch v0, :sswitch_data_0

    .line 2629
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2630
    :sswitch_0
    return-object p0

    .line 2635
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2636
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2639
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkjp;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2645
    :sswitch_2
    iget-object v0, p0, Lkjp;->b:Lkjq;

    if-nez v0, :cond_1

    .line 2646
    new-instance v0, Lkjq;

    invoke-direct {v0}, Lkjq;-><init>()V

    iput-object v0, p0, Lkjp;->b:Lkjq;

    .line 2648
    :cond_1
    iget-object v0, p0, Lkjp;->b:Lkjq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2652
    :sswitch_3
    const/16 v0, 0x1a

    .line 2653
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2654
    iget-object v0, p0, Lkjp;->c:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 2655
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2656
    if-eqz v0, :cond_2

    .line 2657
    iget-object v3, p0, Lkjp;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2659
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2660
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2661
    invoke-virtual {p1}, Llxy;->a()I

    .line 2659
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2654
    :cond_3
    iget-object v0, p0, Lkjp;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2664
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2665
    iput-object v2, p0, Lkjp;->c:[Ljava/lang/String;

    goto :goto_0

    .line 2669
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjp;->d:Ljava/lang/String;

    goto :goto_0

    .line 2673
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjp;->e:Ljava/lang/String;

    goto :goto_0

    .line 2677
    :sswitch_6
    const/16 v0, 0x32

    .line 2678
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2679
    iget-object v0, p0, Lkjp;->f:[Lkiu;

    if-nez v0, :cond_6

    move v0, v1

    .line 2680
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkiu;

    .line 2682
    if-eqz v0, :cond_5

    .line 2683
    iget-object v3, p0, Lkjp;->f:[Lkiu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2685
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2686
    new-instance v3, Lkiu;

    invoke-direct {v3}, Lkiu;-><init>()V

    aput-object v3, v2, v0

    .line 2687
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2688
    invoke-virtual {p1}, Llxy;->a()I

    .line 2685
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2679
    :cond_6
    iget-object v0, p0, Lkjp;->f:[Lkiu;

    array-length v0, v0

    goto :goto_3

    .line 2691
    :cond_7
    new-instance v3, Lkiu;

    invoke-direct {v3}, Lkiu;-><init>()V

    aput-object v3, v2, v0

    .line 2692
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2693
    iput-object v2, p0, Lkjp;->f:[Lkiu;

    goto/16 :goto_0

    .line 2625
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 2636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1543
    iget-object v0, p0, Lkjp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1544
    const/4 v0, 0x1

    iget-object v2, p0, Lkjp;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 1546
    :cond_0
    iget-object v0, p0, Lkjp;->b:Lkjq;

    if-eqz v0, :cond_1

    .line 1547
    const/4 v0, 0x2

    iget-object v2, p0, Lkjp;->b:Lkjq;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1549
    :cond_1
    iget-object v0, p0, Lkjp;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkjp;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 1550
    :goto_0
    iget-object v2, p0, Lkjp;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1551
    iget-object v2, p0, Lkjp;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1552
    if-eqz v2, :cond_2

    .line 1553
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1550
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1557
    :cond_3
    iget-object v0, p0, Lkjp;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1558
    const/4 v0, 0x4

    iget-object v2, p0, Lkjp;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1560
    :cond_4
    iget-object v0, p0, Lkjp;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1561
    const/4 v0, 0x5

    iget-object v2, p0, Lkjp;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1563
    :cond_5
    iget-object v0, p0, Lkjp;->f:[Lkiu;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lkjp;->f:[Lkiu;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 1564
    :goto_1
    iget-object v0, p0, Lkjp;->f:[Lkiu;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 1565
    iget-object v0, p0, Lkjp;->f:[Lkiu;

    aget-object v0, v0, v1

    .line 1566
    if-eqz v0, :cond_6

    .line 1567
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1564
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1571
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1572
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1576
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1577
    iget-object v1, p0, Lkjp;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1578
    const/4 v1, 0x1

    iget-object v3, p0, Lkjp;->a:Ljava/lang/Integer;

    .line 1579
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1581
    :cond_0
    iget-object v1, p0, Lkjp;->b:Lkjq;

    if-eqz v1, :cond_1

    .line 1582
    const/4 v1, 0x2

    iget-object v3, p0, Lkjp;->b:Lkjq;

    .line 1583
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1585
    :cond_1
    iget-object v1, p0, Lkjp;->c:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkjp;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 1588
    :goto_0
    iget-object v5, p0, Lkjp;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 1589
    iget-object v5, p0, Lkjp;->c:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 1590
    if-eqz v5, :cond_2

    .line 1591
    add-int/lit8 v4, v4, 0x1

    .line 1593
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1588
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1596
    :cond_3
    add-int/2addr v0, v3

    .line 1597
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 1599
    :cond_4
    iget-object v1, p0, Lkjp;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1600
    const/4 v1, 0x4

    iget-object v3, p0, Lkjp;->d:Ljava/lang/String;

    .line 1601
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    :cond_5
    iget-object v1, p0, Lkjp;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1604
    const/4 v1, 0x5

    iget-object v3, p0, Lkjp;->e:Ljava/lang/String;

    .line 1605
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1607
    :cond_6
    iget-object v1, p0, Lkjp;->f:[Lkiu;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lkjp;->f:[Lkiu;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 1608
    :goto_1
    iget-object v1, p0, Lkjp;->f:[Lkiu;

    array-length v1, v1

    if-ge v2, v1, :cond_8

    .line 1609
    iget-object v1, p0, Lkjp;->f:[Lkiu;

    aget-object v1, v1, v2

    .line 1610
    if-eqz v1, :cond_7

    .line 1611
    const/4 v3, 0x6

    .line 1612
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1608
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1616
    :cond_8
    return v0
.end method
