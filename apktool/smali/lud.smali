.class public final Llud;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llud;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Llud;


# instance fields
.field public a:[Llua;

.field public b:[Lluf;

.field public c:[Lluc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1972
    invoke-static {}, Llua;->d()[Llua;

    move-result-object v0

    iput-object v0, p0, Llud;->a:[Llua;

    .line 1973
    invoke-static {}, Lluf;->d()[Lluf;

    move-result-object v0

    iput-object v0, p0, Llud;->b:[Lluf;

    .line 1974
    invoke-static {}, Lluc;->d()[Lluc;

    move-result-object v0

    iput-object v0, p0, Llud;->c:[Lluc;

    .line 1975
    const/4 v0, 0x0

    iput-object v0, p0, Llud;->eD:Llyd;

    .line 1976
    const/4 v0, -0x1

    iput v0, p0, Llud;->eE:I

    .line 969
    return-void
.end method

.method public static d()[Llud;
    .locals 2

    .prologue
    .line 945
    sget-object v0, Llud;->d:[Llud;

    if-nez v0, :cond_1

    .line 946
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 948
    :try_start_0
    sget-object v0, Llud;->d:[Llud;

    if-nez v0, :cond_0

    .line 949
    const/4 v0, 0x0

    new-array v0, v0, [Llud;

    sput-object v0, Llud;->d:[Llud;

    .line 951
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :cond_1
    sget-object v0, Llud;->d:[Llud;

    return-object v0

    .line 951
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

    .line 2048
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2049
    sparse-switch v0, :sswitch_data_0

    .line 2053
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2054
    :sswitch_0
    return-object p0

    .line 2059
    :sswitch_1
    const/16 v0, 0xa

    .line 2060
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2061
    iget-object v0, p0, Llud;->a:[Llua;

    if-nez v0, :cond_2

    move v0, v1

    .line 2062
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llua;

    .line 2064
    if-eqz v0, :cond_1

    .line 2065
    iget-object v3, p0, Llud;->a:[Llua;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2067
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2068
    new-instance v3, Llua;

    invoke-direct {v3}, Llua;-><init>()V

    aput-object v3, v2, v0

    .line 2069
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2070
    invoke-virtual {p1}, Llxy;->a()I

    .line 2067
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2061
    :cond_2
    iget-object v0, p0, Llud;->a:[Llua;

    array-length v0, v0

    goto :goto_1

    .line 2073
    :cond_3
    new-instance v3, Llua;

    invoke-direct {v3}, Llua;-><init>()V

    aput-object v3, v2, v0

    .line 2074
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2075
    iput-object v2, p0, Llud;->a:[Llua;

    goto :goto_0

    .line 2079
    :sswitch_2
    const/16 v0, 0x12

    .line 2080
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2081
    iget-object v0, p0, Llud;->b:[Lluf;

    if-nez v0, :cond_5

    move v0, v1

    .line 2082
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lluf;

    .line 2084
    if-eqz v0, :cond_4

    .line 2085
    iget-object v3, p0, Llud;->b:[Lluf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2087
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2088
    new-instance v3, Lluf;

    invoke-direct {v3}, Lluf;-><init>()V

    aput-object v3, v2, v0

    .line 2089
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2090
    invoke-virtual {p1}, Llxy;->a()I

    .line 2087
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2081
    :cond_5
    iget-object v0, p0, Llud;->b:[Lluf;

    array-length v0, v0

    goto :goto_3

    .line 2093
    :cond_6
    new-instance v3, Lluf;

    invoke-direct {v3}, Lluf;-><init>()V

    aput-object v3, v2, v0

    .line 2094
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2095
    iput-object v2, p0, Llud;->b:[Lluf;

    goto/16 :goto_0

    .line 2099
    :sswitch_3
    const/16 v0, 0x1a

    .line 2100
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2101
    iget-object v0, p0, Llud;->c:[Lluc;

    if-nez v0, :cond_8

    move v0, v1

    .line 2102
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lluc;

    .line 2104
    if-eqz v0, :cond_7

    .line 2105
    iget-object v3, p0, Llud;->c:[Lluc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2107
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 2108
    new-instance v3, Lluc;

    invoke-direct {v3}, Lluc;-><init>()V

    aput-object v3, v2, v0

    .line 2109
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2110
    invoke-virtual {p1}, Llxy;->a()I

    .line 2107
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2101
    :cond_8
    iget-object v0, p0, Llud;->c:[Lluc;

    array-length v0, v0

    goto :goto_5

    .line 2113
    :cond_9
    new-instance v3, Lluc;

    invoke-direct {v3}, Lluc;-><init>()V

    aput-object v3, v2, v0

    .line 2114
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2115
    iput-object v2, p0, Llud;->c:[Lluc;

    goto/16 :goto_0

    .line 2049
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 983
    iget-object v0, p0, Llud;->a:[Llua;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llud;->a:[Llua;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 984
    :goto_0
    iget-object v2, p0, Llud;->a:[Llua;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 985
    iget-object v2, p0, Llud;->a:[Llua;

    aget-object v2, v2, v0

    .line 986
    if-eqz v2, :cond_0

    .line 987
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 984
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 991
    :cond_1
    iget-object v0, p0, Llud;->b:[Lluf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llud;->b:[Lluf;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 992
    :goto_1
    iget-object v2, p0, Llud;->b:[Lluf;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 993
    iget-object v2, p0, Llud;->b:[Lluf;

    aget-object v2, v2, v0

    .line 994
    if-eqz v2, :cond_2

    .line 995
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 992
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 999
    :cond_3
    iget-object v0, p0, Llud;->c:[Lluc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llud;->c:[Lluc;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 1000
    :goto_2
    iget-object v0, p0, Llud;->c:[Lluc;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 1001
    iget-object v0, p0, Llud;->c:[Lluc;

    aget-object v0, v0, v1

    .line 1002
    if-eqz v0, :cond_4

    .line 1003
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1000
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1007
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1008
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1012
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1013
    iget-object v2, p0, Llud;->a:[Llua;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llud;->a:[Llua;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 1014
    :goto_0
    iget-object v3, p0, Llud;->a:[Llua;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1015
    iget-object v3, p0, Llud;->a:[Llua;

    aget-object v3, v3, v0

    .line 1016
    if-eqz v3, :cond_0

    .line 1017
    const/4 v4, 0x1

    .line 1018
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1014
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1022
    :cond_2
    iget-object v2, p0, Llud;->b:[Lluf;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llud;->b:[Lluf;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 1023
    :goto_1
    iget-object v3, p0, Llud;->b:[Lluf;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1024
    iget-object v3, p0, Llud;->b:[Lluf;

    aget-object v3, v3, v0

    .line 1025
    if-eqz v3, :cond_3

    .line 1026
    const/4 v4, 0x2

    .line 1027
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1023
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1031
    :cond_5
    iget-object v2, p0, Llud;->c:[Lluc;

    if-eqz v2, :cond_7

    iget-object v2, p0, Llud;->c:[Lluc;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 1032
    :goto_2
    iget-object v2, p0, Llud;->c:[Lluc;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1033
    iget-object v2, p0, Llud;->c:[Lluc;

    aget-object v2, v2, v1

    .line 1034
    if-eqz v2, :cond_6

    .line 1035
    const/4 v3, 0x3

    .line 1036
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1032
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1040
    :cond_7
    return v0
.end method
