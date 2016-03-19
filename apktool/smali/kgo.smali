.class public final Lkgo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkgd;

.field public b:Lkii;

.field public c:[Lkgd;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1756
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2761
    iput-object v1, p0, Lkgo;->responseHeader:Lkdp;

    .line 2762
    iput-object v1, p0, Lkgo;->a:Lkgd;

    .line 2763
    iput-object v1, p0, Lkgo;->b:Lkii;

    .line 2764
    invoke-static {}, Lkgd;->d()[Lkgd;

    move-result-object v0

    iput-object v0, p0, Lkgo;->c:[Lkgd;

    .line 2765
    iput-object v1, p0, Lkgo;->eD:Llyd;

    .line 2766
    const/4 v0, -0x1

    iput v0, p0, Lkgo;->eE:I

    .line 1758
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2825
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2826
    sparse-switch v0, :sswitch_data_0

    .line 2830
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2831
    :sswitch_0
    return-object p0

    .line 2836
    :sswitch_1
    iget-object v0, p0, Lkgo;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 2837
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkgo;->responseHeader:Lkdp;

    .line 2839
    :cond_1
    iget-object v0, p0, Lkgo;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2843
    :sswitch_2
    iget-object v0, p0, Lkgo;->a:Lkgd;

    if-nez v0, :cond_2

    .line 2844
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    iput-object v0, p0, Lkgo;->a:Lkgd;

    .line 2846
    :cond_2
    iget-object v0, p0, Lkgo;->a:Lkgd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2850
    :sswitch_3
    iget-object v0, p0, Lkgo;->b:Lkii;

    if-nez v0, :cond_3

    .line 2851
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgo;->b:Lkii;

    .line 2853
    :cond_3
    iget-object v0, p0, Lkgo;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2857
    :sswitch_4
    const/16 v0, 0x22

    .line 2858
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2859
    iget-object v0, p0, Lkgo;->c:[Lkgd;

    if-nez v0, :cond_5

    move v0, v1

    .line 2860
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgd;

    .line 2862
    if-eqz v0, :cond_4

    .line 2863
    iget-object v3, p0, Lkgo;->c:[Lkgd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2865
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2866
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 2867
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2868
    invoke-virtual {p1}, Llxy;->a()I

    .line 2865
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2859
    :cond_5
    iget-object v0, p0, Lkgo;->c:[Lkgd;

    array-length v0, v0

    goto :goto_1

    .line 2871
    :cond_6
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 2872
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2873
    iput-object v2, p0, Lkgo;->c:[Lkgd;

    goto :goto_0

    .line 2826
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
    .line 1773
    iget-object v0, p0, Lkgo;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 1774
    const/4 v0, 0x1

    iget-object v1, p0, Lkgo;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1776
    :cond_0
    iget-object v0, p0, Lkgo;->a:Lkgd;

    if-eqz v0, :cond_1

    .line 1777
    const/4 v0, 0x2

    iget-object v1, p0, Lkgo;->a:Lkgd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1779
    :cond_1
    iget-object v0, p0, Lkgo;->b:Lkii;

    if-eqz v0, :cond_2

    .line 1780
    const/4 v0, 0x3

    iget-object v1, p0, Lkgo;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1782
    :cond_2
    iget-object v0, p0, Lkgo;->c:[Lkgd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkgo;->c:[Lkgd;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1783
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkgo;->c:[Lkgd;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1784
    iget-object v1, p0, Lkgo;->c:[Lkgd;

    aget-object v1, v1, v0

    .line 1785
    if-eqz v1, :cond_3

    .line 1786
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1783
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1790
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1791
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1795
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1796
    iget-object v1, p0, Lkgo;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 1797
    const/4 v1, 0x1

    iget-object v2, p0, Lkgo;->responseHeader:Lkdp;

    .line 1798
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1800
    :cond_0
    iget-object v1, p0, Lkgo;->a:Lkgd;

    if-eqz v1, :cond_1

    .line 1801
    const/4 v1, 0x2

    iget-object v2, p0, Lkgo;->a:Lkgd;

    .line 1802
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1804
    :cond_1
    iget-object v1, p0, Lkgo;->b:Lkii;

    if-eqz v1, :cond_2

    .line 1805
    const/4 v1, 0x3

    iget-object v2, p0, Lkgo;->b:Lkii;

    .line 1806
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1808
    :cond_2
    iget-object v1, p0, Lkgo;->c:[Lkgd;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkgo;->c:[Lkgd;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 1809
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkgo;->c:[Lkgd;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1810
    iget-object v2, p0, Lkgo;->c:[Lkgd;

    aget-object v2, v2, v0

    .line 1811
    if-eqz v2, :cond_3

    .line 1812
    const/4 v3, 0x4

    .line 1813
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1809
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1817
    :cond_5
    return v0
.end method
