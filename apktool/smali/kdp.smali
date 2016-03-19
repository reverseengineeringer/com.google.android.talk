.class public final Lkdp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lkfl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1664
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2669
    iput-object v0, p0, Lkdp;->a:Ljava/lang/Integer;

    .line 2670
    iput-object v0, p0, Lkdp;->b:Ljava/lang/String;

    .line 2671
    iput-object v0, p0, Lkdp;->c:Ljava/lang/String;

    .line 2672
    iput-object v0, p0, Lkdp;->d:Ljava/lang/Long;

    .line 2673
    iput-object v0, p0, Lkdp;->e:Ljava/lang/Long;

    .line 2674
    iput-object v0, p0, Lkdp;->f:Ljava/lang/Long;

    .line 2675
    iput-object v0, p0, Lkdp;->g:Ljava/lang/String;

    .line 2676
    iput-object v0, p0, Lkdp;->h:Ljava/lang/String;

    .line 2677
    iput-object v0, p0, Lkdp;->i:Lkfl;

    .line 2678
    iput-object v0, p0, Lkdp;->eD:Llyd;

    .line 2679
    const/4 v0, -0x1

    iput v0, p0, Lkdp;->eE:I

    .line 1666
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2764
    sparse-switch v0, :sswitch_data_0

    .line 2768
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2769
    :sswitch_0
    return-object p0

    .line 2774
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2775
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2788
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkdp;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2794
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdp;->b:Ljava/lang/String;

    goto :goto_0

    .line 2798
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdp;->c:Ljava/lang/String;

    goto :goto_0

    .line 2802
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdp;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2806
    :sswitch_5
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdp;->e:Ljava/lang/Long;

    goto :goto_0

    .line 2810
    :sswitch_6
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdp;->f:Ljava/lang/Long;

    goto :goto_0

    .line 2814
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdp;->g:Ljava/lang/String;

    goto :goto_0

    .line 2818
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdp;->h:Ljava/lang/String;

    goto :goto_0

    .line 2822
    :sswitch_9
    iget-object v0, p0, Lkdp;->i:Lkfl;

    if-nez v0, :cond_1

    .line 2823
    new-instance v0, Lkfl;

    invoke-direct {v0}, Lkfl;-><init>()V

    iput-object v0, p0, Lkdp;->i:Lkfl;

    .line 2825
    :cond_1
    iget-object v0, p0, Lkdp;->i:Lkfl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2764
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 2775
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1686
    iget-object v0, p0, Lkdp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1687
    const/4 v0, 0x1

    iget-object v1, p0, Lkdp;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1689
    :cond_0
    iget-object v0, p0, Lkdp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1690
    const/4 v0, 0x2

    iget-object v1, p0, Lkdp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1692
    :cond_1
    iget-object v0, p0, Lkdp;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1693
    const/4 v0, 0x3

    iget-object v1, p0, Lkdp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1695
    :cond_2
    iget-object v0, p0, Lkdp;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 1696
    const/4 v0, 0x4

    iget-object v1, p0, Lkdp;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1698
    :cond_3
    iget-object v0, p0, Lkdp;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 1699
    const/4 v0, 0x5

    iget-object v1, p0, Lkdp;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1701
    :cond_4
    iget-object v0, p0, Lkdp;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 1702
    const/4 v0, 0x6

    iget-object v1, p0, Lkdp;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1704
    :cond_5
    iget-object v0, p0, Lkdp;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1705
    const/4 v0, 0x7

    iget-object v1, p0, Lkdp;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1707
    :cond_6
    iget-object v0, p0, Lkdp;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1708
    const/16 v0, 0x8

    iget-object v1, p0, Lkdp;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1710
    :cond_7
    iget-object v0, p0, Lkdp;->i:Lkfl;

    if-eqz v0, :cond_8

    .line 1711
    const/16 v0, 0x9

    iget-object v1, p0, Lkdp;->i:Lkfl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1713
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1714
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1718
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1719
    iget-object v1, p0, Lkdp;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1720
    const/4 v1, 0x1

    iget-object v2, p0, Lkdp;->a:Ljava/lang/Integer;

    .line 1721
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1723
    :cond_0
    iget-object v1, p0, Lkdp;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1724
    const/4 v1, 0x2

    iget-object v2, p0, Lkdp;->b:Ljava/lang/String;

    .line 1725
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1727
    :cond_1
    iget-object v1, p0, Lkdp;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1728
    const/4 v1, 0x3

    iget-object v2, p0, Lkdp;->c:Ljava/lang/String;

    .line 1729
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1731
    :cond_2
    iget-object v1, p0, Lkdp;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 1732
    const/4 v1, 0x4

    iget-object v2, p0, Lkdp;->d:Ljava/lang/Long;

    .line 1733
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1735
    :cond_3
    iget-object v1, p0, Lkdp;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 1736
    const/4 v1, 0x5

    iget-object v2, p0, Lkdp;->e:Ljava/lang/Long;

    .line 1737
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1739
    :cond_4
    iget-object v1, p0, Lkdp;->f:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1740
    const/4 v1, 0x6

    iget-object v2, p0, Lkdp;->f:Ljava/lang/Long;

    .line 1741
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1743
    :cond_5
    iget-object v1, p0, Lkdp;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1744
    const/4 v1, 0x7

    iget-object v2, p0, Lkdp;->g:Ljava/lang/String;

    .line 1745
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1747
    :cond_6
    iget-object v1, p0, Lkdp;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1748
    const/16 v1, 0x8

    iget-object v2, p0, Lkdp;->h:Ljava/lang/String;

    .line 1749
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1751
    :cond_7
    iget-object v1, p0, Lkdp;->i:Lkfl;

    if-eqz v1, :cond_8

    .line 1752
    const/16 v1, 0x9

    iget-object v2, p0, Lkdp;->i:Lkfl;

    .line 1753
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1755
    :cond_8
    return v0
.end method
