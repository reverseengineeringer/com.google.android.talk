.class public final Ljnj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljlq;

.field public b:[Ljlq;

.field public c:Ljnf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 764
    invoke-direct {p0}, Llyb;-><init>()V

    .line 765
    iput-object v1, p0, Ljnj;->a:Ljlq;

    .line 766
    invoke-static {}, Ljlq;->d()[Ljlq;

    move-result-object v0

    iput-object v0, p0, Ljnj;->b:[Ljlq;

    .line 767
    iput-object v1, p0, Ljnj;->c:Ljnf;

    .line 768
    iput-object v1, p0, Ljnj;->eD:Llyd;

    .line 769
    const/4 v0, -0x1

    iput v0, p0, Ljnj;->eE:I

    .line 770
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1820
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1821
    sparse-switch v0, :sswitch_data_0

    .line 1825
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1826
    :sswitch_0
    return-object p0

    .line 1831
    :sswitch_1
    iget-object v0, p0, Ljnj;->a:Ljlq;

    if-nez v0, :cond_1

    .line 1832
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnj;->a:Ljlq;

    .line 1834
    :cond_1
    iget-object v0, p0, Ljnj;->a:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1838
    :sswitch_2
    const/16 v0, 0x2a

    .line 1839
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1840
    iget-object v0, p0, Ljnj;->b:[Ljlq;

    if-nez v0, :cond_3

    move v0, v1

    .line 1841
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljlq;

    .line 1843
    if-eqz v0, :cond_2

    .line 1844
    iget-object v3, p0, Ljnj;->b:[Ljlq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1846
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1847
    new-instance v3, Ljlq;

    invoke-direct {v3}, Ljlq;-><init>()V

    aput-object v3, v2, v0

    .line 1848
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1849
    invoke-virtual {p1}, Llxy;->a()I

    .line 1846
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1840
    :cond_3
    iget-object v0, p0, Ljnj;->b:[Ljlq;

    array-length v0, v0

    goto :goto_1

    .line 1852
    :cond_4
    new-instance v3, Ljlq;

    invoke-direct {v3}, Ljlq;-><init>()V

    aput-object v3, v2, v0

    .line 1853
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1854
    iput-object v2, p0, Ljnj;->b:[Ljlq;

    goto :goto_0

    .line 1858
    :sswitch_3
    iget-object v0, p0, Ljnj;->c:Ljnf;

    if-nez v0, :cond_5

    .line 1859
    new-instance v0, Ljnf;

    invoke-direct {v0}, Ljnf;-><init>()V

    iput-object v0, p0, Ljnj;->c:Ljnf;

    .line 1861
    :cond_5
    iget-object v0, p0, Ljnj;->c:Ljnf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1821
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2a -> :sswitch_2
        0x32 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Ljnj;->a:Ljlq;

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x4

    iget-object v1, p0, Ljnj;->a:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 778
    :cond_0
    iget-object v0, p0, Ljnj;->b:[Ljlq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljnj;->b:[Ljlq;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 779
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljnj;->b:[Ljlq;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 780
    iget-object v1, p0, Ljnj;->b:[Ljlq;

    aget-object v1, v1, v0

    .line 781
    if-eqz v1, :cond_1

    .line 782
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 779
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 786
    :cond_2
    iget-object v0, p0, Ljnj;->c:Ljnf;

    if-eqz v0, :cond_3

    .line 787
    const/4 v0, 0x6

    iget-object v1, p0, Ljnj;->c:Ljnf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 789
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 790
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 794
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 795
    iget-object v1, p0, Ljnj;->a:Ljlq;

    if-eqz v1, :cond_0

    .line 796
    const/4 v1, 0x4

    iget-object v2, p0, Ljnj;->a:Ljlq;

    .line 797
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 799
    :cond_0
    iget-object v1, p0, Ljnj;->b:[Ljlq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljnj;->b:[Ljlq;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 800
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljnj;->b:[Ljlq;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 801
    iget-object v2, p0, Ljnj;->b:[Ljlq;

    aget-object v2, v2, v0

    .line 802
    if-eqz v2, :cond_1

    .line 803
    const/4 v3, 0x5

    .line 804
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 800
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 808
    :cond_3
    iget-object v1, p0, Ljnj;->c:Ljnf;

    if-eqz v1, :cond_4

    .line 809
    const/4 v1, 0x6

    iget-object v2, p0, Ljnj;->c:Ljnf;

    .line 810
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 812
    :cond_4
    return v0
.end method
