.class public final Ljbi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:[Ljbj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 759
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1764
    iput-object v1, p0, Ljbi;->a:Ljbn;

    .line 1765
    invoke-static {}, Ljbj;->d()[Ljbj;

    move-result-object v0

    iput-object v0, p0, Ljbi;->b:[Ljbj;

    .line 1766
    iput-object v1, p0, Ljbi;->eD:Llyd;

    .line 1767
    const/4 v0, -0x1

    iput v0, p0, Ljbi;->eE:I

    .line 761
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1812
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1813
    sparse-switch v0, :sswitch_data_0

    .line 1817
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1818
    :sswitch_0
    return-object p0

    .line 1823
    :sswitch_1
    iget-object v0, p0, Ljbi;->a:Ljbn;

    if-nez v0, :cond_1

    .line 1824
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbi;->a:Ljbn;

    .line 1826
    :cond_1
    iget-object v0, p0, Ljbi;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1830
    :sswitch_2
    const/16 v0, 0x12

    .line 1831
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1832
    iget-object v0, p0, Ljbi;->b:[Ljbj;

    if-nez v0, :cond_3

    move v0, v1

    .line 1833
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljbj;

    .line 1835
    if-eqz v0, :cond_2

    .line 1836
    iget-object v3, p0, Ljbi;->b:[Ljbj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1838
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1839
    new-instance v3, Ljbj;

    invoke-direct {v3}, Ljbj;-><init>()V

    aput-object v3, v2, v0

    .line 1840
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1841
    invoke-virtual {p1}, Llxy;->a()I

    .line 1838
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1832
    :cond_3
    iget-object v0, p0, Ljbi;->b:[Ljbj;

    array-length v0, v0

    goto :goto_1

    .line 1844
    :cond_4
    new-instance v3, Ljbj;

    invoke-direct {v3}, Ljbj;-><init>()V

    aput-object v3, v2, v0

    .line 1845
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1846
    iput-object v2, p0, Ljbi;->b:[Ljbj;

    goto :goto_0

    .line 1813
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
    .line 774
    iget-object v0, p0, Ljbi;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 775
    const/4 v0, 0x1

    iget-object v1, p0, Ljbi;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 777
    :cond_0
    iget-object v0, p0, Ljbi;->b:[Ljbj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljbi;->b:[Ljbj;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 778
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljbi;->b:[Ljbj;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 779
    iget-object v1, p0, Ljbi;->b:[Ljbj;

    aget-object v1, v1, v0

    .line 780
    if-eqz v1, :cond_1

    .line 781
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 778
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 786
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 790
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 791
    iget-object v1, p0, Ljbi;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 792
    const/4 v1, 0x1

    iget-object v2, p0, Ljbi;->a:Ljbn;

    .line 793
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 795
    :cond_0
    iget-object v1, p0, Ljbi;->b:[Ljbj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljbi;->b:[Ljbj;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 796
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljbi;->b:[Ljbj;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 797
    iget-object v2, p0, Ljbi;->b:[Ljbj;

    aget-object v2, v2, v0

    .line 798
    if-eqz v2, :cond_1

    .line 799
    const/4 v3, 0x2

    .line 800
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 796
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 804
    :cond_3
    return v0
.end method
