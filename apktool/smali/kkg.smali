.class public final Lkkg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkhf;

.field public c:[Lkkd;

.field public d:Lkkd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 670
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1675
    iput-object v1, p0, Lkkg;->a:Lkii;

    .line 1676
    invoke-static {}, Lkhf;->d()[Lkhf;

    move-result-object v0

    iput-object v0, p0, Lkkg;->b:[Lkhf;

    .line 1677
    invoke-static {}, Lkkd;->d()[Lkkd;

    move-result-object v0

    iput-object v0, p0, Lkkg;->c:[Lkkd;

    .line 1678
    iput-object v1, p0, Lkkg;->d:Lkkd;

    .line 1679
    iput-object v1, p0, Lkkg;->eD:Llyd;

    .line 1680
    const/4 v0, -0x1

    iput v0, p0, Lkkg;->eE:I

    .line 672
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1749
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1750
    sparse-switch v0, :sswitch_data_0

    .line 1754
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1755
    :sswitch_0
    return-object p0

    .line 1760
    :sswitch_1
    iget-object v0, p0, Lkkg;->a:Lkii;

    if-nez v0, :cond_1

    .line 1761
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkkg;->a:Lkii;

    .line 1763
    :cond_1
    iget-object v0, p0, Lkkg;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1767
    :sswitch_2
    const/16 v0, 0x12

    .line 1768
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1769
    iget-object v0, p0, Lkkg;->b:[Lkhf;

    if-nez v0, :cond_3

    move v0, v1

    .line 1770
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhf;

    .line 1772
    if-eqz v0, :cond_2

    .line 1773
    iget-object v3, p0, Lkkg;->b:[Lkhf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1775
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1776
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 1777
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1778
    invoke-virtual {p1}, Llxy;->a()I

    .line 1775
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1769
    :cond_3
    iget-object v0, p0, Lkkg;->b:[Lkhf;

    array-length v0, v0

    goto :goto_1

    .line 1781
    :cond_4
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 1782
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1783
    iput-object v2, p0, Lkkg;->b:[Lkhf;

    goto :goto_0

    .line 1787
    :sswitch_3
    const/16 v0, 0x1a

    .line 1788
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1789
    iget-object v0, p0, Lkkg;->c:[Lkkd;

    if-nez v0, :cond_6

    move v0, v1

    .line 1790
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkkd;

    .line 1792
    if-eqz v0, :cond_5

    .line 1793
    iget-object v3, p0, Lkkg;->c:[Lkkd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1795
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 1796
    new-instance v3, Lkkd;

    invoke-direct {v3}, Lkkd;-><init>()V

    aput-object v3, v2, v0

    .line 1797
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1798
    invoke-virtual {p1}, Llxy;->a()I

    .line 1795
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1789
    :cond_6
    iget-object v0, p0, Lkkg;->c:[Lkkd;

    array-length v0, v0

    goto :goto_3

    .line 1801
    :cond_7
    new-instance v3, Lkkd;

    invoke-direct {v3}, Lkkd;-><init>()V

    aput-object v3, v2, v0

    .line 1802
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1803
    iput-object v2, p0, Lkkg;->c:[Lkkd;

    goto/16 :goto_0

    .line 1807
    :sswitch_4
    iget-object v0, p0, Lkkg;->d:Lkkd;

    if-nez v0, :cond_8

    .line 1808
    new-instance v0, Lkkd;

    invoke-direct {v0}, Lkkd;-><init>()V

    iput-object v0, p0, Lkkg;->d:Lkkd;

    .line 1810
    :cond_8
    iget-object v0, p0, Lkkg;->d:Lkkd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1750
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

    .line 687
    iget-object v0, p0, Lkkg;->a:Lkii;

    if-eqz v0, :cond_0

    .line 688
    const/4 v0, 0x1

    iget-object v2, p0, Lkkg;->a:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 690
    :cond_0
    iget-object v0, p0, Lkkg;->b:[Lkhf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkkg;->b:[Lkhf;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 691
    :goto_0
    iget-object v2, p0, Lkkg;->b:[Lkhf;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 692
    iget-object v2, p0, Lkkg;->b:[Lkhf;

    aget-object v2, v2, v0

    .line 693
    if-eqz v2, :cond_1

    .line 694
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 691
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_2
    iget-object v0, p0, Lkkg;->c:[Lkkd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkkg;->c:[Lkkd;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 699
    :goto_1
    iget-object v0, p0, Lkkg;->c:[Lkkd;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 700
    iget-object v0, p0, Lkkg;->c:[Lkkd;

    aget-object v0, v0, v1

    .line 701
    if-eqz v0, :cond_3

    .line 702
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 699
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 706
    :cond_4
    iget-object v0, p0, Lkkg;->d:Lkkd;

    if-eqz v0, :cond_5

    .line 707
    const/4 v0, 0x4

    iget-object v1, p0, Lkkg;->d:Lkkd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 709
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 710
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 715
    iget-object v2, p0, Lkkg;->a:Lkii;

    if-eqz v2, :cond_0

    .line 716
    const/4 v2, 0x1

    iget-object v3, p0, Lkkg;->a:Lkii;

    .line 717
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 719
    :cond_0
    iget-object v2, p0, Lkkg;->b:[Lkhf;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkkg;->b:[Lkhf;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 720
    :goto_0
    iget-object v3, p0, Lkkg;->b:[Lkhf;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 721
    iget-object v3, p0, Lkkg;->b:[Lkhf;

    aget-object v3, v3, v0

    .line 722
    if-eqz v3, :cond_1

    .line 723
    const/4 v4, 0x2

    .line 724
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 720
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 728
    :cond_3
    iget-object v2, p0, Lkkg;->c:[Lkkd;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkkg;->c:[Lkkd;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 729
    :goto_1
    iget-object v2, p0, Lkkg;->c:[Lkkd;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 730
    iget-object v2, p0, Lkkg;->c:[Lkkd;

    aget-object v2, v2, v1

    .line 731
    if-eqz v2, :cond_4

    .line 732
    const/4 v3, 0x3

    .line 733
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 729
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 737
    :cond_5
    iget-object v1, p0, Lkkg;->d:Lkkd;

    if-eqz v1, :cond_6

    .line 738
    const/4 v1, 0x4

    iget-object v2, p0, Lkkg;->d:Lkkd;

    .line 739
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 741
    :cond_6
    return v0
.end method
