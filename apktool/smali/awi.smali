.class public final Lawi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lawi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljwm;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 771
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1776
    invoke-static {}, Ljwm;->d()[Ljwm;

    move-result-object v0

    iput-object v0, p0, Lawi;->a:[Ljwm;

    .line 1777
    iput-object v1, p0, Lawi;->b:Ljava/lang/Integer;

    .line 1778
    iput-object v1, p0, Lawi;->eD:Llyd;

    .line 1779
    const/4 v0, -0x1

    iput v0, p0, Lawi;->eE:I

    .line 773
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1825
    sparse-switch v0, :sswitch_data_0

    .line 1829
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1830
    :sswitch_0
    return-object p0

    .line 1835
    :sswitch_1
    const/16 v0, 0xa

    .line 1836
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1837
    iget-object v0, p0, Lawi;->a:[Ljwm;

    if-nez v0, :cond_2

    move v0, v1

    .line 1838
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljwm;

    .line 1840
    if-eqz v0, :cond_1

    .line 1841
    iget-object v3, p0, Lawi;->a:[Ljwm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1843
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1844
    new-instance v3, Ljwm;

    invoke-direct {v3}, Ljwm;-><init>()V

    aput-object v3, v2, v0

    .line 1845
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1846
    invoke-virtual {p1}, Llxy;->a()I

    .line 1843
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1837
    :cond_2
    iget-object v0, p0, Lawi;->a:[Ljwm;

    array-length v0, v0

    goto :goto_1

    .line 1849
    :cond_3
    new-instance v3, Ljwm;

    invoke-direct {v3}, Ljwm;-><init>()V

    aput-object v3, v2, v0

    .line 1850
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1851
    iput-object v2, p0, Lawi;->a:[Ljwm;

    goto :goto_0

    .line 1855
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lawi;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1825
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lawi;->a:[Ljwm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawi;->a:[Ljwm;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 787
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lawi;->a:[Ljwm;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 788
    iget-object v1, p0, Lawi;->a:[Ljwm;

    aget-object v1, v1, v0

    .line 789
    if-eqz v1, :cond_0

    .line 790
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 787
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    :cond_1
    iget-object v0, p0, Lawi;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 795
    const/4 v0, 0x2

    iget-object v1, p0, Lawi;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 797
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 798
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 802
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 803
    iget-object v0, p0, Lawi;->a:[Ljwm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lawi;->a:[Ljwm;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 804
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lawi;->a:[Ljwm;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 805
    iget-object v2, p0, Lawi;->a:[Ljwm;

    aget-object v2, v2, v0

    .line 806
    if-eqz v2, :cond_0

    .line 807
    const/4 v3, 0x1

    .line 808
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 804
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_1
    iget-object v0, p0, Lawi;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 813
    const/4 v0, 0x2

    iget-object v2, p0, Lawi;->b:Ljava/lang/Integer;

    .line 814
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 816
    :cond_2
    return v1
.end method
