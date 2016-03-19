.class public final Llpb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Llpd;

.field public c:[Llpc;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1648
    iput-object v1, p0, Llpb;->a:Ljava/lang/Long;

    .line 1649
    invoke-static {}, Llpd;->d()[Llpd;

    move-result-object v0

    iput-object v0, p0, Llpb;->b:[Llpd;

    .line 1650
    invoke-static {}, Llpc;->d()[Llpc;

    move-result-object v0

    iput-object v0, p0, Llpb;->c:[Llpc;

    .line 1651
    iput-object v1, p0, Llpb;->d:Ljava/lang/Integer;

    .line 1652
    iput-object v1, p0, Llpb;->e:Ljava/lang/Integer;

    .line 1653
    iput-object v1, p0, Llpb;->eD:Llyd;

    .line 1654
    const/4 v0, -0x1

    iput v0, p0, Llpb;->eE:I

    .line 645
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1730
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1731
    sparse-switch v0, :sswitch_data_0

    .line 1735
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    :sswitch_0
    return-object p0

    .line 1741
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llpb;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1745
    :sswitch_2
    const/16 v0, 0x12

    .line 1746
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1747
    iget-object v0, p0, Llpb;->b:[Llpd;

    if-nez v0, :cond_2

    move v0, v1

    .line 1748
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llpd;

    .line 1750
    if-eqz v0, :cond_1

    .line 1751
    iget-object v3, p0, Llpb;->b:[Llpd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1753
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1754
    new-instance v3, Llpd;

    invoke-direct {v3}, Llpd;-><init>()V

    aput-object v3, v2, v0

    .line 1755
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1756
    invoke-virtual {p1}, Llxy;->a()I

    .line 1753
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1747
    :cond_2
    iget-object v0, p0, Llpb;->b:[Llpd;

    array-length v0, v0

    goto :goto_1

    .line 1759
    :cond_3
    new-instance v3, Llpd;

    invoke-direct {v3}, Llpd;-><init>()V

    aput-object v3, v2, v0

    .line 1760
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1761
    iput-object v2, p0, Llpb;->b:[Llpd;

    goto :goto_0

    .line 1765
    :sswitch_3
    const/16 v0, 0x1a

    .line 1766
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1767
    iget-object v0, p0, Llpb;->c:[Llpc;

    if-nez v0, :cond_5

    move v0, v1

    .line 1768
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llpc;

    .line 1770
    if-eqz v0, :cond_4

    .line 1771
    iget-object v3, p0, Llpb;->c:[Llpc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1773
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1774
    new-instance v3, Llpc;

    invoke-direct {v3}, Llpc;-><init>()V

    aput-object v3, v2, v0

    .line 1775
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1776
    invoke-virtual {p1}, Llxy;->a()I

    .line 1773
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1767
    :cond_5
    iget-object v0, p0, Llpb;->c:[Llpc;

    array-length v0, v0

    goto :goto_3

    .line 1779
    :cond_6
    new-instance v3, Llpc;

    invoke-direct {v3}, Llpc;-><init>()V

    aput-object v3, v2, v0

    .line 1780
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1781
    iput-object v2, p0, Llpb;->c:[Llpc;

    goto/16 :goto_0

    .line 1785
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpb;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1789
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpb;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1731
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-object v0, p0, Llpb;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x1

    iget-object v2, p0, Llpb;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 664
    :cond_0
    iget-object v0, p0, Llpb;->b:[Llpd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llpb;->b:[Llpd;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 665
    :goto_0
    iget-object v2, p0, Llpb;->b:[Llpd;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 666
    iget-object v2, p0, Llpb;->b:[Llpd;

    aget-object v2, v2, v0

    .line 667
    if-eqz v2, :cond_1

    .line 668
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 665
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    :cond_2
    iget-object v0, p0, Llpb;->c:[Llpc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llpb;->c:[Llpc;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 673
    :goto_1
    iget-object v0, p0, Llpb;->c:[Llpc;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 674
    iget-object v0, p0, Llpb;->c:[Llpc;

    aget-object v0, v0, v1

    .line 675
    if-eqz v0, :cond_3

    .line 676
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 673
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    :cond_4
    iget-object v0, p0, Llpb;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 681
    const/4 v0, 0x4

    iget-object v1, p0, Llpb;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 683
    :cond_5
    iget-object v0, p0, Llpb;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 684
    const/4 v0, 0x5

    iget-object v1, p0, Llpb;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 686
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 687
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 692
    iget-object v2, p0, Llpb;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 693
    const/4 v2, 0x1

    iget-object v3, p0, Llpb;->a:Ljava/lang/Long;

    .line 694
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 696
    :cond_0
    iget-object v2, p0, Llpb;->b:[Llpd;

    if-eqz v2, :cond_3

    iget-object v2, p0, Llpb;->b:[Llpd;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 697
    :goto_0
    iget-object v3, p0, Llpb;->b:[Llpd;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 698
    iget-object v3, p0, Llpb;->b:[Llpd;

    aget-object v3, v3, v0

    .line 699
    if-eqz v3, :cond_1

    .line 700
    const/4 v4, 0x2

    .line 701
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 697
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 705
    :cond_3
    iget-object v2, p0, Llpb;->c:[Llpc;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llpb;->c:[Llpc;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 706
    :goto_1
    iget-object v2, p0, Llpb;->c:[Llpc;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 707
    iget-object v2, p0, Llpb;->c:[Llpc;

    aget-object v2, v2, v1

    .line 708
    if-eqz v2, :cond_4

    .line 709
    const/4 v3, 0x3

    .line 710
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 706
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 714
    :cond_5
    iget-object v1, p0, Llpb;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 715
    const/4 v1, 0x4

    iget-object v2, p0, Llpb;->d:Ljava/lang/Integer;

    .line 716
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 718
    :cond_6
    iget-object v1, p0, Llpb;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 719
    const/4 v1, 0x5

    iget-object v2, p0, Llpb;->e:Ljava/lang/Integer;

    .line 720
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 722
    :cond_7
    return v0
.end method
