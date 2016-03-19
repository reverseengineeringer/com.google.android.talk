.class public final Lkkn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkjm;

.field public c:[Lkkm;

.field public d:Lkkm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1553
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2558
    iput-object v1, p0, Lkkn;->a:Lkii;

    .line 2559
    invoke-static {}, Lkjm;->d()[Lkjm;

    move-result-object v0

    iput-object v0, p0, Lkkn;->b:[Lkjm;

    .line 2560
    invoke-static {}, Lkkm;->d()[Lkkm;

    move-result-object v0

    iput-object v0, p0, Lkkn;->c:[Lkkm;

    .line 2561
    iput-object v1, p0, Lkkn;->d:Lkkm;

    .line 2562
    iput-object v1, p0, Lkkn;->eD:Llyd;

    .line 2563
    const/4 v0, -0x1

    iput v0, p0, Lkkn;->eE:I

    .line 1555
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2632
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2633
    sparse-switch v0, :sswitch_data_0

    .line 2637
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2638
    :sswitch_0
    return-object p0

    .line 2643
    :sswitch_1
    iget-object v0, p0, Lkkn;->a:Lkii;

    if-nez v0, :cond_1

    .line 2644
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkkn;->a:Lkii;

    .line 2646
    :cond_1
    iget-object v0, p0, Lkkn;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2650
    :sswitch_2
    const/16 v0, 0x12

    .line 2651
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2652
    iget-object v0, p0, Lkkn;->b:[Lkjm;

    if-nez v0, :cond_3

    move v0, v1

    .line 2653
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkjm;

    .line 2655
    if-eqz v0, :cond_2

    .line 2656
    iget-object v3, p0, Lkkn;->b:[Lkjm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2658
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2659
    new-instance v3, Lkjm;

    invoke-direct {v3}, Lkjm;-><init>()V

    aput-object v3, v2, v0

    .line 2660
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2661
    invoke-virtual {p1}, Llxy;->a()I

    .line 2658
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2652
    :cond_3
    iget-object v0, p0, Lkkn;->b:[Lkjm;

    array-length v0, v0

    goto :goto_1

    .line 2664
    :cond_4
    new-instance v3, Lkjm;

    invoke-direct {v3}, Lkjm;-><init>()V

    aput-object v3, v2, v0

    .line 2665
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2666
    iput-object v2, p0, Lkkn;->b:[Lkjm;

    goto :goto_0

    .line 2670
    :sswitch_3
    const/16 v0, 0x1a

    .line 2671
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2672
    iget-object v0, p0, Lkkn;->c:[Lkkm;

    if-nez v0, :cond_6

    move v0, v1

    .line 2673
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkkm;

    .line 2675
    if-eqz v0, :cond_5

    .line 2676
    iget-object v3, p0, Lkkn;->c:[Lkkm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2678
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2679
    new-instance v3, Lkkm;

    invoke-direct {v3}, Lkkm;-><init>()V

    aput-object v3, v2, v0

    .line 2680
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2681
    invoke-virtual {p1}, Llxy;->a()I

    .line 2678
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2672
    :cond_6
    iget-object v0, p0, Lkkn;->c:[Lkkm;

    array-length v0, v0

    goto :goto_3

    .line 2684
    :cond_7
    new-instance v3, Lkkm;

    invoke-direct {v3}, Lkkm;-><init>()V

    aput-object v3, v2, v0

    .line 2685
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2686
    iput-object v2, p0, Lkkn;->c:[Lkkm;

    goto/16 :goto_0

    .line 2690
    :sswitch_4
    iget-object v0, p0, Lkkn;->d:Lkkm;

    if-nez v0, :cond_8

    .line 2691
    new-instance v0, Lkkm;

    invoke-direct {v0}, Lkkm;-><init>()V

    iput-object v0, p0, Lkkn;->d:Lkkm;

    .line 2693
    :cond_8
    iget-object v0, p0, Lkkn;->d:Lkkm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2633
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1570
    iget-object v0, p0, Lkkn;->a:Lkii;

    if-eqz v0, :cond_0

    .line 1571
    const/4 v0, 0x1

    iget-object v2, p0, Lkkn;->a:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1573
    :cond_0
    iget-object v0, p0, Lkkn;->b:[Lkjm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkkn;->b:[Lkjm;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1574
    :goto_0
    iget-object v2, p0, Lkkn;->b:[Lkjm;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1575
    iget-object v2, p0, Lkkn;->b:[Lkjm;

    aget-object v2, v2, v0

    .line 1576
    if-eqz v2, :cond_1

    .line 1577
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1574
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1581
    :cond_2
    iget-object v0, p0, Lkkn;->c:[Lkkm;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkkn;->c:[Lkkm;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1582
    :goto_1
    iget-object v0, p0, Lkkn;->c:[Lkkm;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 1583
    iget-object v0, p0, Lkkn;->c:[Lkkm;

    aget-object v0, v0, v1

    .line 1584
    if-eqz v0, :cond_3

    .line 1585
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1582
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1589
    :cond_4
    iget-object v0, p0, Lkkn;->d:Lkkm;

    if-eqz v0, :cond_5

    .line 1590
    const/4 v0, 0x4

    iget-object v1, p0, Lkkn;->d:Lkkm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1592
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1593
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1597
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1598
    iget-object v2, p0, Lkkn;->a:Lkii;

    if-eqz v2, :cond_0

    .line 1599
    const/4 v2, 0x1

    iget-object v3, p0, Lkkn;->a:Lkii;

    .line 1600
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1602
    :cond_0
    iget-object v2, p0, Lkkn;->b:[Lkjm;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkkn;->b:[Lkjm;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 1603
    :goto_0
    iget-object v3, p0, Lkkn;->b:[Lkjm;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1604
    iget-object v3, p0, Lkkn;->b:[Lkjm;

    aget-object v3, v3, v0

    .line 1605
    if-eqz v3, :cond_1

    .line 1606
    const/4 v4, 0x2

    .line 1607
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1611
    :cond_3
    iget-object v2, p0, Lkkn;->c:[Lkkm;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkkn;->c:[Lkkm;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1612
    :goto_1
    iget-object v2, p0, Lkkn;->c:[Lkkm;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1613
    iget-object v2, p0, Lkkn;->c:[Lkkm;

    aget-object v2, v2, v1

    .line 1614
    if-eqz v2, :cond_4

    .line 1615
    const/4 v3, 0x3

    .line 1616
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1612
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1620
    :cond_5
    iget-object v1, p0, Lkkn;->d:Lkkm;

    if-eqz v1, :cond_6

    .line 1621
    const/4 v1, 0x4

    iget-object v2, p0, Lkkn;->d:Lkkm;

    .line 1622
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1624
    :cond_6
    return v0
.end method
