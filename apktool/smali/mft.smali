.class public final Lmft;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmft;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmfv;

.field public b:[Lmfu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Llyb;-><init>()V

    .line 765
    invoke-static {}, Lmfv;->d()[Lmfv;

    move-result-object v0

    iput-object v0, p0, Lmft;->a:[Lmfv;

    .line 766
    invoke-static {}, Lmfu;->d()[Lmfu;

    move-result-object v0

    iput-object v0, p0, Lmft;->b:[Lmfu;

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lmft;->eD:Llyd;

    .line 768
    const/4 v0, -0x1

    iput v0, p0, Lmft;->eE:I

    .line 769
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1822
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1823
    sparse-switch v0, :sswitch_data_0

    .line 1827
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    :sswitch_0
    return-object p0

    .line 1833
    :sswitch_1
    const/16 v0, 0xa

    .line 1834
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1835
    iget-object v0, p0, Lmft;->a:[Lmfv;

    if-nez v0, :cond_2

    move v0, v1

    .line 1836
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmfv;

    .line 1838
    if-eqz v0, :cond_1

    .line 1839
    iget-object v3, p0, Lmft;->a:[Lmfv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1841
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1842
    new-instance v3, Lmfv;

    invoke-direct {v3}, Lmfv;-><init>()V

    aput-object v3, v2, v0

    .line 1843
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1844
    invoke-virtual {p1}, Llxy;->a()I

    .line 1841
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1835
    :cond_2
    iget-object v0, p0, Lmft;->a:[Lmfv;

    array-length v0, v0

    goto :goto_1

    .line 1847
    :cond_3
    new-instance v3, Lmfv;

    invoke-direct {v3}, Lmfv;-><init>()V

    aput-object v3, v2, v0

    .line 1848
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1849
    iput-object v2, p0, Lmft;->a:[Lmfv;

    goto :goto_0

    .line 1853
    :sswitch_2
    const/16 v0, 0x12

    .line 1854
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1855
    iget-object v0, p0, Lmft;->b:[Lmfu;

    if-nez v0, :cond_5

    move v0, v1

    .line 1856
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmfu;

    .line 1858
    if-eqz v0, :cond_4

    .line 1859
    iget-object v3, p0, Lmft;->b:[Lmfu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1861
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1862
    new-instance v3, Lmfu;

    invoke-direct {v3}, Lmfu;-><init>()V

    aput-object v3, v2, v0

    .line 1863
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1864
    invoke-virtual {p1}, Llxy;->a()I

    .line 1861
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1855
    :cond_5
    iget-object v0, p0, Lmft;->b:[Lmfu;

    array-length v0, v0

    goto :goto_3

    .line 1867
    :cond_6
    new-instance v3, Lmfu;

    invoke-direct {v3}, Lmfu;-><init>()V

    aput-object v3, v2, v0

    .line 1868
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1869
    iput-object v2, p0, Lmft;->b:[Lmfu;

    goto/16 :goto_0

    .line 1823
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

    .line 774
    iget-object v0, p0, Lmft;->a:[Lmfv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmft;->a:[Lmfv;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 775
    :goto_0
    iget-object v2, p0, Lmft;->a:[Lmfv;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 776
    iget-object v2, p0, Lmft;->a:[Lmfv;

    aget-object v2, v2, v0

    .line 777
    if-eqz v2, :cond_0

    .line 778
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 775
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_1
    iget-object v0, p0, Lmft;->b:[Lmfu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmft;->b:[Lmfu;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 783
    :goto_1
    iget-object v0, p0, Lmft;->b:[Lmfu;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 784
    iget-object v0, p0, Lmft;->b:[Lmfu;

    aget-object v0, v0, v1

    .line 785
    if-eqz v0, :cond_2

    .line 786
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 783
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 790
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 791
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 795
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 796
    iget-object v2, p0, Lmft;->a:[Lmfv;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmft;->a:[Lmfv;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 797
    :goto_0
    iget-object v3, p0, Lmft;->a:[Lmfv;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 798
    iget-object v3, p0, Lmft;->a:[Lmfv;

    aget-object v3, v3, v0

    .line 799
    if-eqz v3, :cond_0

    .line 800
    const/4 v4, 0x1

    .line 801
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 805
    :cond_2
    iget-object v2, p0, Lmft;->b:[Lmfu;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmft;->b:[Lmfu;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 806
    :goto_1
    iget-object v2, p0, Lmft;->b:[Lmfu;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 807
    iget-object v2, p0, Lmft;->b:[Lmfu;

    aget-object v2, v2, v1

    .line 808
    if-eqz v2, :cond_3

    .line 809
    const/4 v3, 0x2

    .line 810
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 806
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 814
    :cond_4
    return v0
.end method
