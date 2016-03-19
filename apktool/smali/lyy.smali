.class public final Llyy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llyy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:[Llzb;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 746
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1751
    iput-object v1, p0, Llyy;->a:Ljava/lang/Long;

    .line 1752
    iput-object v1, p0, Llyy;->b:Ljava/lang/String;

    .line 1753
    invoke-static {}, Llzb;->d()[Llzb;

    move-result-object v0

    iput-object v0, p0, Llyy;->c:[Llzb;

    .line 1754
    iput-object v1, p0, Llyy;->d:Ljava/lang/String;

    .line 1755
    iput-object v1, p0, Llyy;->eD:Llyd;

    .line 1756
    const/4 v0, -0x1

    iput v0, p0, Llyy;->eE:I

    .line 748
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1815
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1816
    sparse-switch v0, :sswitch_data_0

    .line 1820
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1821
    :sswitch_0
    return-object p0

    .line 1826
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llyy;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1830
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyy;->b:Ljava/lang/String;

    goto :goto_0

    .line 1834
    :sswitch_3
    const/16 v0, 0x1a

    .line 1835
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1836
    iget-object v0, p0, Llyy;->c:[Llzb;

    if-nez v0, :cond_2

    move v0, v1

    .line 1837
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzb;

    .line 1839
    if-eqz v0, :cond_1

    .line 1840
    iget-object v3, p0, Llyy;->c:[Llzb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1842
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1843
    new-instance v3, Llzb;

    invoke-direct {v3}, Llzb;-><init>()V

    aput-object v3, v2, v0

    .line 1844
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1845
    invoke-virtual {p1}, Llxy;->a()I

    .line 1842
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1836
    :cond_2
    iget-object v0, p0, Llyy;->c:[Llzb;

    array-length v0, v0

    goto :goto_1

    .line 1848
    :cond_3
    new-instance v3, Llzb;

    invoke-direct {v3}, Llzb;-><init>()V

    aput-object v3, v2, v0

    .line 1849
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1850
    iput-object v2, p0, Llyy;->c:[Llzb;

    goto :goto_0

    .line 1854
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyy;->d:Ljava/lang/String;

    goto :goto_0

    .line 1816
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 763
    iget-object v0, p0, Llyy;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x1

    iget-object v1, p0, Llyy;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 766
    :cond_0
    iget-object v0, p0, Llyy;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 767
    const/4 v0, 0x2

    iget-object v1, p0, Llyy;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 769
    :cond_1
    iget-object v0, p0, Llyy;->c:[Llzb;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llyy;->c:[Llzb;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 770
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llyy;->c:[Llzb;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 771
    iget-object v1, p0, Llyy;->c:[Llzb;

    aget-object v1, v1, v0

    .line 772
    if-eqz v1, :cond_2

    .line 773
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 770
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :cond_3
    iget-object v0, p0, Llyy;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 778
    const/4 v0, 0x4

    iget-object v1, p0, Llyy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 780
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 781
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 785
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 786
    iget-object v1, p0, Llyy;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 787
    const/4 v1, 0x1

    iget-object v2, p0, Llyy;->a:Ljava/lang/Long;

    .line 788
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_0
    iget-object v1, p0, Llyy;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 791
    const/4 v1, 0x2

    iget-object v2, p0, Llyy;->b:Ljava/lang/String;

    .line 792
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 794
    :cond_1
    iget-object v1, p0, Llyy;->c:[Llzb;

    if-eqz v1, :cond_4

    iget-object v1, p0, Llyy;->c:[Llzb;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 795
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llyy;->c:[Llzb;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 796
    iget-object v2, p0, Llyy;->c:[Llzb;

    aget-object v2, v2, v0

    .line 797
    if-eqz v2, :cond_2

    .line 798
    const/4 v3, 0x3

    .line 799
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 795
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 803
    :cond_4
    iget-object v1, p0, Llyy;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 804
    const/4 v1, 0x4

    iget-object v2, p0, Llyy;->d:Ljava/lang/String;

    .line 805
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 807
    :cond_5
    return v0
.end method
