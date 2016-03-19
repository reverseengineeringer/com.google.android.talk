.class public final Llee;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llee;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llee;


# instance fields
.field public a:Lleo;

.field public b:[Llef;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 774
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1779
    iput-object v1, p0, Llee;->a:Lleo;

    .line 1780
    invoke-static {}, Llef;->d()[Llef;

    move-result-object v0

    iput-object v0, p0, Llee;->b:[Llef;

    .line 1781
    iput-object v1, p0, Llee;->eD:Llyd;

    .line 1782
    const/4 v0, -0x1

    iput v0, p0, Llee;->eE:I

    .line 776
    return-void
.end method

.method public static d()[Llee;
    .locals 2

    .prologue
    .line 755
    sget-object v0, Llee;->c:[Llee;

    if-nez v0, :cond_1

    .line 756
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 758
    :try_start_0
    sget-object v0, Llee;->c:[Llee;

    if-nez v0, :cond_0

    .line 759
    const/4 v0, 0x0

    new-array v0, v0, [Llee;

    sput-object v0, Llee;->c:[Llee;

    .line 761
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :cond_1
    sget-object v0, Llee;->c:[Llee;

    return-object v0

    .line 761
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1827
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1828
    sparse-switch v0, :sswitch_data_0

    .line 1832
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1833
    :sswitch_0
    return-object p0

    .line 1838
    :sswitch_1
    iget-object v0, p0, Llee;->a:Lleo;

    if-nez v0, :cond_1

    .line 1839
    new-instance v0, Lleo;

    invoke-direct {v0}, Lleo;-><init>()V

    iput-object v0, p0, Llee;->a:Lleo;

    .line 1841
    :cond_1
    iget-object v0, p0, Llee;->a:Lleo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1845
    :sswitch_2
    const/16 v0, 0x12

    .line 1846
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1847
    iget-object v0, p0, Llee;->b:[Llef;

    if-nez v0, :cond_3

    move v0, v1

    .line 1848
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llef;

    .line 1850
    if-eqz v0, :cond_2

    .line 1851
    iget-object v3, p0, Llee;->b:[Llef;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1853
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1854
    new-instance v3, Llef;

    invoke-direct {v3}, Llef;-><init>()V

    aput-object v3, v2, v0

    .line 1855
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1856
    invoke-virtual {p1}, Llxy;->a()I

    .line 1853
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1847
    :cond_3
    iget-object v0, p0, Llee;->b:[Llef;

    array-length v0, v0

    goto :goto_1

    .line 1859
    :cond_4
    new-instance v3, Llef;

    invoke-direct {v3}, Llef;-><init>()V

    aput-object v3, v2, v0

    .line 1860
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1861
    iput-object v2, p0, Llee;->b:[Llef;

    goto :goto_0

    .line 1828
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
    .line 789
    iget-object v0, p0, Llee;->a:Lleo;

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x1

    iget-object v1, p0, Llee;->a:Lleo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 792
    :cond_0
    iget-object v0, p0, Llee;->b:[Llef;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llee;->b:[Llef;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 793
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llee;->b:[Llef;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 794
    iget-object v1, p0, Llee;->b:[Llef;

    aget-object v1, v1, v0

    .line 795
    if-eqz v1, :cond_1

    .line 796
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 793
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 801
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 805
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 806
    iget-object v1, p0, Llee;->a:Lleo;

    if-eqz v1, :cond_0

    .line 807
    const/4 v1, 0x1

    iget-object v2, p0, Llee;->a:Lleo;

    .line 808
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 810
    :cond_0
    iget-object v1, p0, Llee;->b:[Llef;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llee;->b:[Llef;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 811
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llee;->b:[Llef;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 812
    iget-object v2, p0, Llee;->b:[Llef;

    aget-object v2, v2, v0

    .line 813
    if-eqz v2, :cond_1

    .line 814
    const/4 v3, 0x2

    .line 815
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 811
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 819
    :cond_3
    return v0
.end method
