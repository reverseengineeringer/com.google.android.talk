.class public final Lmlg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmmm;

.field public b:[Lmlf;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Lmks;

.field public f:Lmmb;

.field public g:Lmla;

.field public h:Lmld;

.field public i:Lmlh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1912
    iput-object v1, p0, Lmlg;->a:Lmmm;

    .line 1913
    invoke-static {}, Lmlf;->d()[Lmlf;

    move-result-object v0

    iput-object v0, p0, Lmlg;->b:[Lmlf;

    .line 1914
    iput-object v1, p0, Lmlg;->c:Ljava/lang/Integer;

    .line 1915
    iput-object v1, p0, Lmlg;->d:Ljava/lang/Integer;

    .line 1916
    iput-object v1, p0, Lmlg;->e:Lmks;

    .line 1917
    iput-object v1, p0, Lmlg;->f:Lmmb;

    .line 1918
    iput-object v1, p0, Lmlg;->g:Lmla;

    .line 1919
    iput-object v1, p0, Lmlg;->h:Lmld;

    .line 1920
    iput-object v1, p0, Lmlg;->i:Lmlh;

    .line 1921
    iput-object v1, p0, Lmlg;->eD:Llyd;

    .line 1922
    const/4 v0, -0x1

    iput v0, p0, Lmlg;->eE:I

    .line 909
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2016
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2017
    sparse-switch v0, :sswitch_data_0

    .line 2021
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    :sswitch_0
    return-object p0

    .line 2027
    :sswitch_1
    iget-object v0, p0, Lmlg;->a:Lmmm;

    if-nez v0, :cond_1

    .line 2028
    new-instance v0, Lmmm;

    invoke-direct {v0}, Lmmm;-><init>()V

    iput-object v0, p0, Lmlg;->a:Lmmm;

    .line 2030
    :cond_1
    iget-object v0, p0, Lmlg;->a:Lmmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2034
    :sswitch_2
    const/16 v0, 0x12

    .line 2035
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2036
    iget-object v0, p0, Lmlg;->b:[Lmlf;

    if-nez v0, :cond_3

    move v0, v1

    .line 2037
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmlf;

    .line 2039
    if-eqz v0, :cond_2

    .line 2040
    iget-object v3, p0, Lmlg;->b:[Lmlf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2042
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2043
    new-instance v3, Lmlf;

    invoke-direct {v3}, Lmlf;-><init>()V

    aput-object v3, v2, v0

    .line 2044
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2045
    invoke-virtual {p1}, Llxy;->a()I

    .line 2042
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2036
    :cond_3
    iget-object v0, p0, Lmlg;->b:[Lmlf;

    array-length v0, v0

    goto :goto_1

    .line 2048
    :cond_4
    new-instance v3, Lmlf;

    invoke-direct {v3}, Lmlf;-><init>()V

    aput-object v3, v2, v0

    .line 2049
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2050
    iput-object v2, p0, Lmlg;->b:[Lmlf;

    goto :goto_0

    .line 2054
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlg;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2058
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlg;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 2062
    :sswitch_5
    iget-object v0, p0, Lmlg;->e:Lmks;

    if-nez v0, :cond_5

    .line 2063
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmlg;->e:Lmks;

    .line 2065
    :cond_5
    iget-object v0, p0, Lmlg;->e:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2069
    :sswitch_6
    iget-object v0, p0, Lmlg;->f:Lmmb;

    if-nez v0, :cond_6

    .line 2070
    new-instance v0, Lmmb;

    invoke-direct {v0}, Lmmb;-><init>()V

    iput-object v0, p0, Lmlg;->f:Lmmb;

    .line 2072
    :cond_6
    iget-object v0, p0, Lmlg;->f:Lmmb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2076
    :sswitch_7
    iget-object v0, p0, Lmlg;->g:Lmla;

    if-nez v0, :cond_7

    .line 2077
    new-instance v0, Lmla;

    invoke-direct {v0}, Lmla;-><init>()V

    iput-object v0, p0, Lmlg;->g:Lmla;

    .line 2079
    :cond_7
    iget-object v0, p0, Lmlg;->g:Lmla;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2083
    :sswitch_8
    iget-object v0, p0, Lmlg;->h:Lmld;

    if-nez v0, :cond_8

    .line 2084
    new-instance v0, Lmld;

    invoke-direct {v0}, Lmld;-><init>()V

    iput-object v0, p0, Lmlg;->h:Lmld;

    .line 2086
    :cond_8
    iget-object v0, p0, Lmlg;->h:Lmld;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2090
    :sswitch_9
    iget-object v0, p0, Lmlg;->i:Lmlh;

    if-nez v0, :cond_9

    .line 2091
    new-instance v0, Lmlh;

    invoke-direct {v0}, Lmlh;-><init>()V

    iput-object v0, p0, Lmlg;->i:Lmlh;

    .line 2093
    :cond_9
    iget-object v0, p0, Lmlg;->i:Lmlh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2017
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x1e2 -> :sswitch_8
        0x1ea -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 929
    iget-object v0, p0, Lmlg;->a:Lmmm;

    if-eqz v0, :cond_0

    .line 930
    const/4 v0, 0x1

    iget-object v1, p0, Lmlg;->a:Lmmm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 932
    :cond_0
    iget-object v0, p0, Lmlg;->b:[Lmlf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmlg;->b:[Lmlf;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 933
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmlg;->b:[Lmlf;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 934
    iget-object v1, p0, Lmlg;->b:[Lmlf;

    aget-object v1, v1, v0

    .line 935
    if-eqz v1, :cond_1

    .line 936
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 933
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :cond_2
    iget-object v0, p0, Lmlg;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 941
    const/4 v0, 0x3

    iget-object v1, p0, Lmlg;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 943
    :cond_3
    iget-object v0, p0, Lmlg;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 944
    const/4 v0, 0x4

    iget-object v1, p0, Lmlg;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 946
    :cond_4
    iget-object v0, p0, Lmlg;->e:Lmks;

    if-eqz v0, :cond_5

    .line 947
    const/4 v0, 0x5

    iget-object v1, p0, Lmlg;->e:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 949
    :cond_5
    iget-object v0, p0, Lmlg;->f:Lmmb;

    if-eqz v0, :cond_6

    .line 950
    const/4 v0, 0x6

    iget-object v1, p0, Lmlg;->f:Lmmb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 952
    :cond_6
    iget-object v0, p0, Lmlg;->g:Lmla;

    if-eqz v0, :cond_7

    .line 953
    const/4 v0, 0x7

    iget-object v1, p0, Lmlg;->g:Lmla;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 955
    :cond_7
    iget-object v0, p0, Lmlg;->h:Lmld;

    if-eqz v0, :cond_8

    .line 956
    const/16 v0, 0x3c

    iget-object v1, p0, Lmlg;->h:Lmld;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 958
    :cond_8
    iget-object v0, p0, Lmlg;->i:Lmlh;

    if-eqz v0, :cond_9

    .line 959
    const/16 v0, 0x3d

    iget-object v1, p0, Lmlg;->i:Lmlh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 961
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 962
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 966
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 967
    iget-object v1, p0, Lmlg;->a:Lmmm;

    if-eqz v1, :cond_0

    .line 968
    const/4 v1, 0x1

    iget-object v2, p0, Lmlg;->a:Lmmm;

    .line 969
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 971
    :cond_0
    iget-object v1, p0, Lmlg;->b:[Lmlf;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmlg;->b:[Lmlf;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 972
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmlg;->b:[Lmlf;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 973
    iget-object v2, p0, Lmlg;->b:[Lmlf;

    aget-object v2, v2, v0

    .line 974
    if-eqz v2, :cond_1

    .line 975
    const/4 v3, 0x2

    .line 976
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 972
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 980
    :cond_3
    iget-object v1, p0, Lmlg;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 981
    const/4 v1, 0x3

    iget-object v2, p0, Lmlg;->c:Ljava/lang/Integer;

    .line 982
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_4
    iget-object v1, p0, Lmlg;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 985
    const/4 v1, 0x4

    iget-object v2, p0, Lmlg;->d:Ljava/lang/Integer;

    .line 986
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_5
    iget-object v1, p0, Lmlg;->e:Lmks;

    if-eqz v1, :cond_6

    .line 989
    const/4 v1, 0x5

    iget-object v2, p0, Lmlg;->e:Lmks;

    .line 990
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    :cond_6
    iget-object v1, p0, Lmlg;->f:Lmmb;

    if-eqz v1, :cond_7

    .line 993
    const/4 v1, 0x6

    iget-object v2, p0, Lmlg;->f:Lmmb;

    .line 994
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_7
    iget-object v1, p0, Lmlg;->g:Lmla;

    if-eqz v1, :cond_8

    .line 997
    const/4 v1, 0x7

    iget-object v2, p0, Lmlg;->g:Lmla;

    .line 998
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    :cond_8
    iget-object v1, p0, Lmlg;->h:Lmld;

    if-eqz v1, :cond_9

    .line 1001
    const/16 v1, 0x3c

    iget-object v2, p0, Lmlg;->h:Lmld;

    .line 1002
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    :cond_9
    iget-object v1, p0, Lmlg;->i:Lmlh;

    if-eqz v1, :cond_a

    .line 1005
    const/16 v1, 0x3d

    iget-object v2, p0, Lmlg;->i:Lmlh;

    .line 1006
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_a
    return v0
.end method
