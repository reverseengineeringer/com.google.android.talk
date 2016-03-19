.class public final Lkkf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkim;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1737
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2742
    iput-object v1, p0, Lkkf;->a:Lkii;

    .line 2743
    invoke-static {}, Lkim;->d()[Lkim;

    move-result-object v0

    iput-object v0, p0, Lkkf;->b:[Lkim;

    .line 2744
    iput-object v1, p0, Lkkf;->eD:Llyd;

    .line 2745
    const/4 v0, -0x1

    iput v0, p0, Lkkf;->eE:I

    .line 1739
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2790
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2791
    sparse-switch v0, :sswitch_data_0

    .line 2795
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2796
    :sswitch_0
    return-object p0

    .line 2801
    :sswitch_1
    iget-object v0, p0, Lkkf;->a:Lkii;

    if-nez v0, :cond_1

    .line 2802
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkkf;->a:Lkii;

    .line 2804
    :cond_1
    iget-object v0, p0, Lkkf;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2808
    :sswitch_2
    const/16 v0, 0x12

    .line 2809
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2810
    iget-object v0, p0, Lkkf;->b:[Lkim;

    if-nez v0, :cond_3

    move v0, v1

    .line 2811
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkim;

    .line 2813
    if-eqz v0, :cond_2

    .line 2814
    iget-object v3, p0, Lkkf;->b:[Lkim;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2816
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2817
    new-instance v3, Lkim;

    invoke-direct {v3}, Lkim;-><init>()V

    aput-object v3, v2, v0

    .line 2818
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2819
    invoke-virtual {p1}, Llxy;->a()I

    .line 2816
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2810
    :cond_3
    iget-object v0, p0, Lkkf;->b:[Lkim;

    array-length v0, v0

    goto :goto_1

    .line 2822
    :cond_4
    new-instance v3, Lkim;

    invoke-direct {v3}, Lkim;-><init>()V

    aput-object v3, v2, v0

    .line 2823
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2824
    iput-object v2, p0, Lkkf;->b:[Lkim;

    goto :goto_0

    .line 2791
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1752
    iget-object v0, p0, Lkkf;->a:Lkii;

    if-eqz v0, :cond_0

    .line 1753
    const/4 v0, 0x1

    iget-object v1, p0, Lkkf;->a:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1755
    :cond_0
    iget-object v0, p0, Lkkf;->b:[Lkim;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkkf;->b:[Lkim;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1756
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkkf;->b:[Lkim;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1757
    iget-object v1, p0, Lkkf;->b:[Lkim;

    aget-object v1, v1, v0

    .line 1758
    if-eqz v1, :cond_1

    .line 1759
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1756
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1764
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1768
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1769
    iget-object v1, p0, Lkkf;->a:Lkii;

    if-eqz v1, :cond_0

    .line 1770
    const/4 v1, 0x1

    iget-object v2, p0, Lkkf;->a:Lkii;

    .line 1771
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1773
    :cond_0
    iget-object v1, p0, Lkkf;->b:[Lkim;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkkf;->b:[Lkim;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1774
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkkf;->b:[Lkim;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1775
    iget-object v2, p0, Lkkf;->b:[Lkim;

    aget-object v2, v2, v0

    .line 1776
    if-eqz v2, :cond_1

    .line 1777
    const/4 v3, 0x2

    .line 1778
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1774
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1782
    :cond_3
    return v0
.end method
