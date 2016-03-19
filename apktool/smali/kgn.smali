.class public final Lkgn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkgd;

.field public b:Lkii;

.field public c:[Lkgd;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1589
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2594
    iput-object v1, p0, Lkgn;->requestHeader:Lkdo;

    .line 2595
    iput-object v1, p0, Lkgn;->a:Lkgd;

    .line 2596
    iput-object v1, p0, Lkgn;->b:Lkii;

    .line 2597
    invoke-static {}, Lkgd;->d()[Lkgd;

    move-result-object v0

    iput-object v0, p0, Lkgn;->c:[Lkgd;

    .line 2598
    iput-object v1, p0, Lkgn;->eD:Llyd;

    .line 2599
    const/4 v0, -0x1

    iput v0, p0, Lkgn;->eE:I

    .line 1591
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2658
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2659
    sparse-switch v0, :sswitch_data_0

    .line 2663
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2664
    :sswitch_0
    return-object p0

    .line 2669
    :sswitch_1
    iget-object v0, p0, Lkgn;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 2670
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkgn;->requestHeader:Lkdo;

    .line 2672
    :cond_1
    iget-object v0, p0, Lkgn;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2676
    :sswitch_2
    iget-object v0, p0, Lkgn;->a:Lkgd;

    if-nez v0, :cond_2

    .line 2677
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    iput-object v0, p0, Lkgn;->a:Lkgd;

    .line 2679
    :cond_2
    iget-object v0, p0, Lkgn;->a:Lkgd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2683
    :sswitch_3
    iget-object v0, p0, Lkgn;->b:Lkii;

    if-nez v0, :cond_3

    .line 2684
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgn;->b:Lkii;

    .line 2686
    :cond_3
    iget-object v0, p0, Lkgn;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2690
    :sswitch_4
    const/16 v0, 0x22

    .line 2691
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2692
    iget-object v0, p0, Lkgn;->c:[Lkgd;

    if-nez v0, :cond_5

    move v0, v1

    .line 2693
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgd;

    .line 2695
    if-eqz v0, :cond_4

    .line 2696
    iget-object v3, p0, Lkgn;->c:[Lkgd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2698
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2699
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 2700
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2701
    invoke-virtual {p1}, Llxy;->a()I

    .line 2698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2692
    :cond_5
    iget-object v0, p0, Lkgn;->c:[Lkgd;

    array-length v0, v0

    goto :goto_1

    .line 2704
    :cond_6
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 2705
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2706
    iput-object v2, p0, Lkgn;->c:[Lkgd;

    goto :goto_0

    .line 2659
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
    .locals 3

    .prologue
    .line 1606
    iget-object v0, p0, Lkgn;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 1607
    const/4 v0, 0x1

    iget-object v1, p0, Lkgn;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1609
    :cond_0
    iget-object v0, p0, Lkgn;->a:Lkgd;

    if-eqz v0, :cond_1

    .line 1610
    const/4 v0, 0x2

    iget-object v1, p0, Lkgn;->a:Lkgd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1612
    :cond_1
    iget-object v0, p0, Lkgn;->b:Lkii;

    if-eqz v0, :cond_2

    .line 1613
    const/4 v0, 0x3

    iget-object v1, p0, Lkgn;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1615
    :cond_2
    iget-object v0, p0, Lkgn;->c:[Lkgd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkgn;->c:[Lkgd;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1616
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkgn;->c:[Lkgd;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1617
    iget-object v1, p0, Lkgn;->c:[Lkgd;

    aget-object v1, v1, v0

    .line 1618
    if-eqz v1, :cond_3

    .line 1619
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1616
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1623
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1624
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1628
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1629
    iget-object v1, p0, Lkgn;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 1630
    const/4 v1, 0x1

    iget-object v2, p0, Lkgn;->requestHeader:Lkdo;

    .line 1631
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1633
    :cond_0
    iget-object v1, p0, Lkgn;->a:Lkgd;

    if-eqz v1, :cond_1

    .line 1634
    const/4 v1, 0x2

    iget-object v2, p0, Lkgn;->a:Lkgd;

    .line 1635
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1637
    :cond_1
    iget-object v1, p0, Lkgn;->b:Lkii;

    if-eqz v1, :cond_2

    .line 1638
    const/4 v1, 0x3

    iget-object v2, p0, Lkgn;->b:Lkii;

    .line 1639
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1641
    :cond_2
    iget-object v1, p0, Lkgn;->c:[Lkgd;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkgn;->c:[Lkgd;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1642
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkgn;->c:[Lkgd;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1643
    iget-object v2, p0, Lkgn;->c:[Lkgd;

    aget-object v2, v2, v0

    .line 1644
    if-eqz v2, :cond_3

    .line 1645
    const/4 v3, 0x4

    .line 1646
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1642
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1650
    :cond_5
    return v0
.end method
