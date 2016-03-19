.class public final Ljvy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1604
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2609
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljvy;->a:[Ljava/lang/String;

    .line 2610
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljvy;->b:[Ljava/lang/String;

    .line 2611
    const/4 v0, 0x0

    iput-object v0, p0, Ljvy;->eD:Llyd;

    .line 2612
    const/4 v0, -0x1

    iput v0, p0, Ljvy;->eE:I

    .line 1606
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2677
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2678
    sparse-switch v0, :sswitch_data_0

    .line 2682
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2683
    :sswitch_0
    return-object p0

    .line 2688
    :sswitch_1
    const/16 v0, 0xa

    .line 2689
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2690
    iget-object v0, p0, Ljvy;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 2691
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2692
    if-eqz v0, :cond_1

    .line 2693
    iget-object v3, p0, Ljvy;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2695
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2696
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2697
    invoke-virtual {p1}, Llxy;->a()I

    .line 2695
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2690
    :cond_2
    iget-object v0, p0, Ljvy;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2700
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2701
    iput-object v2, p0, Ljvy;->a:[Ljava/lang/String;

    goto :goto_0

    .line 2705
    :sswitch_2
    const/16 v0, 0x12

    .line 2706
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2707
    iget-object v0, p0, Ljvy;->b:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 2708
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2709
    if-eqz v0, :cond_4

    .line 2710
    iget-object v3, p0, Ljvy;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2712
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2713
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2714
    invoke-virtual {p1}, Llxy;->a()I

    .line 2712
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2707
    :cond_5
    iget-object v0, p0, Ljvy;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 2717
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2718
    iput-object v2, p0, Ljvy;->b:[Ljava/lang/String;

    goto :goto_0

    .line 2678
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1619
    iget-object v0, p0, Ljvy;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvy;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 1620
    :goto_0
    iget-object v2, p0, Ljvy;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1621
    iget-object v2, p0, Ljvy;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1622
    if-eqz v2, :cond_0

    .line 1623
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1627
    :cond_1
    iget-object v0, p0, Ljvy;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljvy;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1628
    :goto_1
    iget-object v0, p0, Ljvy;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 1629
    iget-object v0, p0, Ljvy;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 1630
    if-eqz v0, :cond_2

    .line 1631
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 1628
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1635
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1636
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1640
    invoke-super {p0}, Llyb;->b()I

    move-result v4

    .line 1641
    iget-object v0, p0, Ljvy;->a:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljvy;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    move v2, v1

    move v3, v1

    .line 1644
    :goto_0
    iget-object v5, p0, Ljvy;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 1645
    iget-object v5, p0, Ljvy;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 1646
    if-eqz v5, :cond_0

    .line 1647
    add-int/lit8 v3, v3, 0x1

    .line 1649
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 1644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1652
    :cond_1
    add-int v0, v4, v2

    .line 1653
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 1655
    :goto_1
    iget-object v2, p0, Ljvy;->b:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljvy;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 1658
    :goto_2
    iget-object v4, p0, Ljvy;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 1659
    iget-object v4, p0, Ljvy;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1660
    if-eqz v4, :cond_2

    .line 1661
    add-int/lit8 v3, v3, 0x1

    .line 1663
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1658
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1666
    :cond_3
    add-int/2addr v0, v2

    .line 1667
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 1669
    :cond_4
    return v0

    :cond_5
    move v0, v4

    goto :goto_1
.end method
