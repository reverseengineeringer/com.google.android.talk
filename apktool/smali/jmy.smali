.class public final Ljmy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljmy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljpc;

.field public b:[Ljpc;

.field public c:Ljmu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 793
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1798
    iput-object v1, p0, Ljmy;->a:Ljpc;

    .line 1799
    invoke-static {}, Ljpc;->d()[Ljpc;

    move-result-object v0

    iput-object v0, p0, Ljmy;->b:[Ljpc;

    .line 1800
    iput-object v1, p0, Ljmy;->c:Ljmu;

    .line 1801
    iput-object v1, p0, Ljmy;->eD:Llyd;

    .line 1802
    const/4 v0, -0x1

    iput v0, p0, Ljmy;->eE:I

    .line 795
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1855
    sparse-switch v0, :sswitch_data_0

    .line 1859
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1860
    :sswitch_0
    return-object p0

    .line 1865
    :sswitch_1
    iget-object v0, p0, Ljmy;->a:Ljpc;

    if-nez v0, :cond_1

    .line 1866
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljmy;->a:Ljpc;

    .line 1868
    :cond_1
    iget-object v0, p0, Ljmy;->a:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1872
    :sswitch_2
    const/16 v0, 0x2a

    .line 1873
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1874
    iget-object v0, p0, Ljmy;->b:[Ljpc;

    if-nez v0, :cond_3

    move v0, v1

    .line 1875
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljpc;

    .line 1877
    if-eqz v0, :cond_2

    .line 1878
    iget-object v3, p0, Ljmy;->b:[Ljpc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1880
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1881
    new-instance v3, Ljpc;

    invoke-direct {v3}, Ljpc;-><init>()V

    aput-object v3, v2, v0

    .line 1882
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1883
    invoke-virtual {p1}, Llxy;->a()I

    .line 1880
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1874
    :cond_3
    iget-object v0, p0, Ljmy;->b:[Ljpc;

    array-length v0, v0

    goto :goto_1

    .line 1886
    :cond_4
    new-instance v3, Ljpc;

    invoke-direct {v3}, Ljpc;-><init>()V

    aput-object v3, v2, v0

    .line 1887
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1888
    iput-object v2, p0, Ljmy;->b:[Ljpc;

    goto :goto_0

    .line 1892
    :sswitch_3
    iget-object v0, p0, Ljmy;->c:Ljmu;

    if-nez v0, :cond_5

    .line 1893
    new-instance v0, Ljmu;

    invoke-direct {v0}, Ljmu;-><init>()V

    iput-object v0, p0, Ljmy;->c:Ljmu;

    .line 1895
    :cond_5
    iget-object v0, p0, Ljmy;->c:Ljmu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1855
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
    .line 809
    iget-object v0, p0, Ljmy;->a:Ljpc;

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x4

    iget-object v1, p0, Ljmy;->a:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 812
    :cond_0
    iget-object v0, p0, Ljmy;->b:[Ljpc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljmy;->b:[Ljpc;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 813
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljmy;->b:[Ljpc;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 814
    iget-object v1, p0, Ljmy;->b:[Ljpc;

    aget-object v1, v1, v0

    .line 815
    if-eqz v1, :cond_1

    .line 816
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 813
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    :cond_2
    iget-object v0, p0, Ljmy;->c:Ljmu;

    if-eqz v0, :cond_3

    .line 821
    const/4 v0, 0x6

    iget-object v1, p0, Ljmy;->c:Ljmu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 823
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 824
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 828
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 829
    iget-object v1, p0, Ljmy;->a:Ljpc;

    if-eqz v1, :cond_0

    .line 830
    const/4 v1, 0x4

    iget-object v2, p0, Ljmy;->a:Ljpc;

    .line 831
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    :cond_0
    iget-object v1, p0, Ljmy;->b:[Ljpc;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljmy;->b:[Ljpc;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 834
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljmy;->b:[Ljpc;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 835
    iget-object v2, p0, Ljmy;->b:[Ljpc;

    aget-object v2, v2, v0

    .line 836
    if-eqz v2, :cond_1

    .line 837
    const/4 v3, 0x5

    .line 838
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 834
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 842
    :cond_3
    iget-object v1, p0, Ljmy;->c:Ljmu;

    if-eqz v1, :cond_4

    .line 843
    const/4 v1, 0x6

    iget-object v2, p0, Ljmy;->c:Ljmu;

    .line 844
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 846
    :cond_4
    return v0
.end method
