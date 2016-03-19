.class public final Lkiq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkiq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile i:[Lkiq;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:[Lkir;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1857
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2862
    iput-object v1, p0, Lkiq;->a:Ljava/lang/Integer;

    .line 2863
    iput-object v1, p0, Lkiq;->b:Ljava/lang/String;

    .line 2864
    iput-object v1, p0, Lkiq;->c:Ljava/lang/Integer;

    .line 2865
    iput-object v1, p0, Lkiq;->d:Ljava/lang/Integer;

    .line 2866
    iput-object v1, p0, Lkiq;->e:Ljava/lang/Integer;

    .line 2867
    iput-object v1, p0, Lkiq;->f:Ljava/lang/Integer;

    .line 2868
    iput-object v1, p0, Lkiq;->g:Ljava/lang/Integer;

    .line 2869
    invoke-static {}, Lkir;->d()[Lkir;

    move-result-object v0

    iput-object v0, p0, Lkiq;->h:[Lkir;

    .line 2870
    iput-object v1, p0, Lkiq;->eD:Llyd;

    .line 2871
    const/4 v0, -0x1

    iput v0, p0, Lkiq;->eE:I

    .line 1859
    return-void
.end method

.method public static d()[Lkiq;
    .locals 2

    .prologue
    .line 1820
    sget-object v0, Lkiq;->i:[Lkiq;

    if-nez v0, :cond_1

    .line 1821
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1823
    :try_start_0
    sget-object v0, Lkiq;->i:[Lkiq;

    if-nez v0, :cond_0

    .line 1824
    const/4 v0, 0x0

    new-array v0, v0, [Lkiq;

    sput-object v0, Lkiq;->i:[Lkiq;

    .line 1826
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    :cond_1
    sget-object v0, Lkiq;->i:[Lkiq;

    return-object v0

    .line 1826
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

    .line 2958
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2959
    sparse-switch v0, :sswitch_data_0

    .line 2963
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2964
    :sswitch_0
    return-object p0

    .line 2969
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiq;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2973
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkiq;->b:Ljava/lang/String;

    goto :goto_0

    .line 2977
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2978
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2983
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiq;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2989
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiq;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 2993
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiq;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 2997
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiq;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 3001
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkiq;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 3005
    :sswitch_8
    const/16 v0, 0x42

    .line 3006
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3007
    iget-object v0, p0, Lkiq;->h:[Lkir;

    if-nez v0, :cond_2

    move v0, v1

    .line 3008
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkir;

    .line 3010
    if-eqz v0, :cond_1

    .line 3011
    iget-object v3, p0, Lkiq;->h:[Lkir;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3013
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3014
    new-instance v3, Lkir;

    invoke-direct {v3}, Lkir;-><init>()V

    aput-object v3, v2, v0

    .line 3015
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3016
    invoke-virtual {p1}, Llxy;->a()I

    .line 3013
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3007
    :cond_2
    iget-object v0, p0, Lkiq;->h:[Lkir;

    array-length v0, v0

    goto :goto_1

    .line 3019
    :cond_3
    new-instance v3, Lkir;

    invoke-direct {v3}, Lkir;-><init>()V

    aput-object v3, v2, v0

    .line 3020
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3021
    iput-object v2, p0, Lkiq;->h:[Lkir;

    goto/16 :goto_0

    .line 2959
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch

    .line 2978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1878
    iget-object v0, p0, Lkiq;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1879
    const/4 v0, 0x1

    iget-object v1, p0, Lkiq;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1881
    :cond_0
    iget-object v0, p0, Lkiq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1882
    const/4 v0, 0x2

    iget-object v1, p0, Lkiq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1884
    :cond_1
    iget-object v0, p0, Lkiq;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1885
    const/4 v0, 0x3

    iget-object v1, p0, Lkiq;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1887
    :cond_2
    iget-object v0, p0, Lkiq;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1888
    const/4 v0, 0x4

    iget-object v1, p0, Lkiq;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1890
    :cond_3
    iget-object v0, p0, Lkiq;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1891
    const/4 v0, 0x5

    iget-object v1, p0, Lkiq;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1893
    :cond_4
    iget-object v0, p0, Lkiq;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1894
    const/4 v0, 0x6

    iget-object v1, p0, Lkiq;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1896
    :cond_5
    iget-object v0, p0, Lkiq;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1897
    const/4 v0, 0x7

    iget-object v1, p0, Lkiq;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1899
    :cond_6
    iget-object v0, p0, Lkiq;->h:[Lkir;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lkiq;->h:[Lkir;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 1900
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkiq;->h:[Lkir;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 1901
    iget-object v1, p0, Lkiq;->h:[Lkir;

    aget-object v1, v1, v0

    .line 1902
    if-eqz v1, :cond_7

    .line 1903
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1900
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1907
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1908
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1912
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1913
    iget-object v1, p0, Lkiq;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1914
    const/4 v1, 0x1

    iget-object v2, p0, Lkiq;->a:Ljava/lang/Integer;

    .line 1915
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1917
    :cond_0
    iget-object v1, p0, Lkiq;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1918
    const/4 v1, 0x2

    iget-object v2, p0, Lkiq;->b:Ljava/lang/String;

    .line 1919
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1921
    :cond_1
    iget-object v1, p0, Lkiq;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1922
    const/4 v1, 0x3

    iget-object v2, p0, Lkiq;->c:Ljava/lang/Integer;

    .line 1923
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1925
    :cond_2
    iget-object v1, p0, Lkiq;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 1926
    const/4 v1, 0x4

    iget-object v2, p0, Lkiq;->d:Ljava/lang/Integer;

    .line 1927
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1929
    :cond_3
    iget-object v1, p0, Lkiq;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1930
    const/4 v1, 0x5

    iget-object v2, p0, Lkiq;->e:Ljava/lang/Integer;

    .line 1931
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1933
    :cond_4
    iget-object v1, p0, Lkiq;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 1934
    const/4 v1, 0x6

    iget-object v2, p0, Lkiq;->f:Ljava/lang/Integer;

    .line 1935
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1937
    :cond_5
    iget-object v1, p0, Lkiq;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1938
    const/4 v1, 0x7

    iget-object v2, p0, Lkiq;->g:Ljava/lang/Integer;

    .line 1939
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1941
    :cond_6
    iget-object v1, p0, Lkiq;->h:[Lkir;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lkiq;->h:[Lkir;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 1942
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkiq;->h:[Lkir;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 1943
    iget-object v2, p0, Lkiq;->h:[Lkir;

    aget-object v2, v2, v0

    .line 1944
    if-eqz v2, :cond_7

    .line 1945
    const/16 v3, 0x8

    .line 1946
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1942
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 1950
    :cond_9
    return v0
.end method
