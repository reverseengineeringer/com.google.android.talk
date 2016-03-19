.class public final Ljoj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljoj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljoj;


# instance fields
.field public a:Ljom;

.field public b:Ljon;

.field public c:[Ljok;

.field public d:[Ljol;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1703
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2708
    iput-object v1, p0, Ljoj;->a:Ljom;

    .line 2709
    iput-object v1, p0, Ljoj;->b:Ljon;

    .line 2710
    invoke-static {}, Ljok;->d()[Ljok;

    move-result-object v0

    iput-object v0, p0, Ljoj;->c:[Ljok;

    .line 2711
    invoke-static {}, Ljol;->d()[Ljol;

    move-result-object v0

    iput-object v0, p0, Ljoj;->d:[Ljol;

    .line 2712
    iput-object v1, p0, Ljoj;->eD:Llyd;

    .line 2713
    const/4 v0, -0x1

    iput v0, p0, Ljoj;->eE:I

    .line 1705
    return-void
.end method

.method public static d()[Ljoj;
    .locals 2

    .prologue
    .line 1678
    sget-object v0, Ljoj;->e:[Ljoj;

    if-nez v0, :cond_1

    .line 1679
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1681
    :try_start_0
    sget-object v0, Ljoj;->e:[Ljoj;

    if-nez v0, :cond_0

    .line 1682
    const/4 v0, 0x0

    new-array v0, v0, [Ljoj;

    sput-object v0, Ljoj;->e:[Ljoj;

    .line 1684
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    :cond_1
    sget-object v0, Ljoj;->e:[Ljoj;

    return-object v0

    .line 1684
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

    .line 2782
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2783
    sparse-switch v0, :sswitch_data_0

    .line 2787
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2788
    :sswitch_0
    return-object p0

    .line 2793
    :sswitch_1
    iget-object v0, p0, Ljoj;->a:Ljom;

    if-nez v0, :cond_1

    .line 2794
    new-instance v0, Ljom;

    invoke-direct {v0}, Ljom;-><init>()V

    iput-object v0, p0, Ljoj;->a:Ljom;

    .line 2796
    :cond_1
    iget-object v0, p0, Ljoj;->a:Ljom;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2800
    :sswitch_2
    iget-object v0, p0, Ljoj;->b:Ljon;

    if-nez v0, :cond_2

    .line 2801
    new-instance v0, Ljon;

    invoke-direct {v0}, Ljon;-><init>()V

    iput-object v0, p0, Ljoj;->b:Ljon;

    .line 2803
    :cond_2
    iget-object v0, p0, Ljoj;->b:Ljon;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2807
    :sswitch_3
    const/16 v0, 0x1a

    .line 2808
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2809
    iget-object v0, p0, Ljoj;->c:[Ljok;

    if-nez v0, :cond_4

    move v0, v1

    .line 2810
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljok;

    .line 2812
    if-eqz v0, :cond_3

    .line 2813
    iget-object v3, p0, Ljoj;->c:[Ljok;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2815
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 2816
    new-instance v3, Ljok;

    invoke-direct {v3}, Ljok;-><init>()V

    aput-object v3, v2, v0

    .line 2817
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2818
    invoke-virtual {p1}, Llxy;->a()I

    .line 2815
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2809
    :cond_4
    iget-object v0, p0, Ljoj;->c:[Ljok;

    array-length v0, v0

    goto :goto_1

    .line 2821
    :cond_5
    new-instance v3, Ljok;

    invoke-direct {v3}, Ljok;-><init>()V

    aput-object v3, v2, v0

    .line 2822
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2823
    iput-object v2, p0, Ljoj;->c:[Ljok;

    goto :goto_0

    .line 2827
    :sswitch_4
    const/16 v0, 0x22

    .line 2828
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2829
    iget-object v0, p0, Ljoj;->d:[Ljol;

    if-nez v0, :cond_7

    move v0, v1

    .line 2830
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljol;

    .line 2832
    if-eqz v0, :cond_6

    .line 2833
    iget-object v3, p0, Ljoj;->d:[Ljol;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2835
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 2836
    new-instance v3, Ljol;

    invoke-direct {v3}, Ljol;-><init>()V

    aput-object v3, v2, v0

    .line 2837
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2838
    invoke-virtual {p1}, Llxy;->a()I

    .line 2835
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2829
    :cond_7
    iget-object v0, p0, Ljoj;->d:[Ljol;

    array-length v0, v0

    goto :goto_3

    .line 2841
    :cond_8
    new-instance v3, Ljol;

    invoke-direct {v3}, Ljol;-><init>()V

    aput-object v3, v2, v0

    .line 2842
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2843
    iput-object v2, p0, Ljoj;->d:[Ljol;

    goto/16 :goto_0

    .line 2783
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

    .line 1720
    iget-object v0, p0, Ljoj;->a:Ljom;

    if-eqz v0, :cond_0

    .line 1721
    const/4 v0, 0x1

    iget-object v2, p0, Ljoj;->a:Ljom;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1723
    :cond_0
    iget-object v0, p0, Ljoj;->b:Ljon;

    if-eqz v0, :cond_1

    .line 1724
    const/4 v0, 0x2

    iget-object v2, p0, Ljoj;->b:Ljon;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1726
    :cond_1
    iget-object v0, p0, Ljoj;->c:[Ljok;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljoj;->c:[Ljok;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 1727
    :goto_0
    iget-object v2, p0, Ljoj;->c:[Ljok;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1728
    iget-object v2, p0, Ljoj;->c:[Ljok;

    aget-object v2, v2, v0

    .line 1729
    if-eqz v2, :cond_2

    .line 1730
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1727
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1734
    :cond_3
    iget-object v0, p0, Ljoj;->d:[Ljol;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljoj;->d:[Ljol;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 1735
    :goto_1
    iget-object v0, p0, Ljoj;->d:[Ljol;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 1736
    iget-object v0, p0, Ljoj;->d:[Ljol;

    aget-object v0, v0, v1

    .line 1737
    if-eqz v0, :cond_4

    .line 1738
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1735
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1742
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1743
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1747
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1748
    iget-object v2, p0, Ljoj;->a:Ljom;

    if-eqz v2, :cond_0

    .line 1749
    const/4 v2, 0x1

    iget-object v3, p0, Ljoj;->a:Ljom;

    .line 1750
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1752
    :cond_0
    iget-object v2, p0, Ljoj;->b:Ljon;

    if-eqz v2, :cond_1

    .line 1753
    const/4 v2, 0x2

    iget-object v3, p0, Ljoj;->b:Ljon;

    .line 1754
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1756
    :cond_1
    iget-object v2, p0, Ljoj;->c:[Ljok;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljoj;->c:[Ljok;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 1757
    :goto_0
    iget-object v3, p0, Ljoj;->c:[Ljok;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1758
    iget-object v3, p0, Ljoj;->c:[Ljok;

    aget-object v3, v3, v0

    .line 1759
    if-eqz v3, :cond_2

    .line 1760
    const/4 v4, 0x3

    .line 1761
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1757
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1765
    :cond_4
    iget-object v2, p0, Ljoj;->d:[Ljol;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljoj;->d:[Ljol;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 1766
    :goto_1
    iget-object v2, p0, Ljoj;->d:[Ljol;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 1767
    iget-object v2, p0, Ljoj;->d:[Ljol;

    aget-object v2, v2, v1

    .line 1768
    if-eqz v2, :cond_5

    .line 1769
    const/4 v3, 0x4

    .line 1770
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1766
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1774
    :cond_6
    return v0
.end method
