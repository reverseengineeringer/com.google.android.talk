.class public final Lles;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lles;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lles;


# instance fields
.field public a:[I

.field public b:Lleu;

.field public c:Lleu;

.field public d:Llet;

.field public e:[D

.field public f:Llep;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 985
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1990
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lles;->a:[I

    .line 1991
    iput-object v1, p0, Lles;->b:Lleu;

    .line 1992
    iput-object v1, p0, Lles;->c:Lleu;

    .line 1993
    iput-object v1, p0, Lles;->d:Llet;

    .line 1994
    sget-object v0, Llyo;->d:[D

    iput-object v0, p0, Lles;->e:[D

    .line 1995
    iput-object v1, p0, Lles;->f:Llep;

    .line 1996
    iput-object v1, p0, Lles;->eD:Llyd;

    .line 1997
    const/4 v0, -0x1

    iput v0, p0, Lles;->eE:I

    .line 987
    return-void
.end method

.method public static d()[Lles;
    .locals 2

    .prologue
    .line 954
    sget-object v0, Lles;->g:[Lles;

    if-nez v0, :cond_1

    .line 955
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_0
    sget-object v0, Lles;->g:[Lles;

    if-nez v0, :cond_0

    .line 958
    const/4 v0, 0x0

    new-array v0, v0, [Lles;

    sput-object v0, Lles;->g:[Lles;

    .line 960
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_1
    sget-object v0, Lles;->g:[Lles;

    return-object v0

    .line 960
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
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2071
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2072
    sparse-switch v0, :sswitch_data_0

    .line 2076
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2077
    :sswitch_0
    return-object p0

    .line 2082
    :sswitch_1
    const/16 v0, 0x8

    .line 2083
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2084
    iget-object v0, p0, Lles;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 2085
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 2086
    if-eqz v0, :cond_1

    .line 2087
    iget-object v3, p0, Lles;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2089
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2090
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 2091
    invoke-virtual {p1}, Llxy;->a()I

    .line 2089
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2084
    :cond_2
    iget-object v0, p0, Lles;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 2094
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 2095
    iput-object v2, p0, Lles;->a:[I

    goto :goto_0

    .line 2099
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2100
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2103
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2104
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 2105
    invoke-virtual {p1}, Llxy;->f()I

    .line 2106
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2108
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2109
    iget-object v2, p0, Lles;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 2110
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 2111
    if-eqz v2, :cond_5

    .line 2112
    iget-object v4, p0, Lles;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2114
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 2115
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 2114
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2109
    :cond_6
    iget-object v2, p0, Lles;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 2117
    :cond_7
    iput-object v0, p0, Lles;->a:[I

    .line 2118
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2122
    :sswitch_3
    iget-object v0, p0, Lles;->b:Lleu;

    if-nez v0, :cond_8

    .line 2123
    new-instance v0, Lleu;

    invoke-direct {v0}, Lleu;-><init>()V

    iput-object v0, p0, Lles;->b:Lleu;

    .line 2125
    :cond_8
    iget-object v0, p0, Lles;->b:Lleu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2129
    :sswitch_4
    iget-object v0, p0, Lles;->c:Lleu;

    if-nez v0, :cond_9

    .line 2130
    new-instance v0, Lleu;

    invoke-direct {v0}, Lleu;-><init>()V

    iput-object v0, p0, Lles;->c:Lleu;

    .line 2132
    :cond_9
    iget-object v0, p0, Lles;->c:Lleu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2136
    :sswitch_5
    iget-object v0, p0, Lles;->d:Llet;

    if-nez v0, :cond_a

    .line 2137
    new-instance v0, Llet;

    invoke-direct {v0}, Llet;-><init>()V

    iput-object v0, p0, Lles;->d:Llet;

    .line 2139
    :cond_a
    iget-object v0, p0, Lles;->d:Llet;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2143
    :sswitch_6
    const/16 v0, 0x29

    .line 2144
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2145
    iget-object v0, p0, Lles;->e:[D

    if-nez v0, :cond_c

    move v0, v1

    .line 2146
    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [D

    .line 2147
    if-eqz v0, :cond_b

    .line 2148
    iget-object v3, p0, Lles;->e:[D

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2150
    :cond_b
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 2151
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2152
    invoke-virtual {p1}, Llxy;->a()I

    .line 2150
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2145
    :cond_c
    iget-object v0, p0, Lles;->e:[D

    array-length v0, v0

    goto :goto_6

    .line 2155
    :cond_d
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2156
    iput-object v2, p0, Lles;->e:[D

    goto/16 :goto_0

    .line 2160
    :sswitch_7
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2161
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 2162
    div-int/lit8 v3, v0, 0x8

    .line 2163
    iget-object v0, p0, Lles;->e:[D

    if-nez v0, :cond_f

    move v0, v1

    .line 2164
    :goto_8
    add-int/2addr v3, v0

    new-array v3, v3, [D

    .line 2165
    if-eqz v0, :cond_e

    .line 2166
    iget-object v4, p0, Lles;->e:[D

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2168
    :cond_e
    :goto_9
    array-length v4, v3

    if-ge v0, v4, :cond_10

    .line 2169
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 2168
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2163
    :cond_f
    iget-object v0, p0, Lles;->e:[D

    array-length v0, v0

    goto :goto_8

    .line 2171
    :cond_10
    iput-object v3, p0, Lles;->e:[D

    .line 2172
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2176
    :sswitch_8
    iget-object v0, p0, Lles;->f:Llep;

    if-nez v0, :cond_11

    .line 2177
    new-instance v0, Llep;

    invoke-direct {v0}, Llep;-><init>()V

    iput-object v0, p0, Lles;->f:Llep;

    .line 2179
    :cond_11
    iget-object v0, p0, Lles;->f:Llep;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2072
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x29 -> :sswitch_6
        0x2a -> :sswitch_7
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1004
    iget-object v0, p0, Lles;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lles;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 1005
    :goto_0
    iget-object v2, p0, Lles;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1006
    const/4 v2, 0x1

    iget-object v3, p0, Lles;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    :cond_0
    iget-object v0, p0, Lles;->b:Lleu;

    if-eqz v0, :cond_1

    .line 1010
    const/4 v0, 0x2

    iget-object v2, p0, Lles;->b:Lleu;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1012
    :cond_1
    iget-object v0, p0, Lles;->c:Lleu;

    if-eqz v0, :cond_2

    .line 1013
    const/4 v0, 0x3

    iget-object v2, p0, Lles;->c:Lleu;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1015
    :cond_2
    iget-object v0, p0, Lles;->d:Llet;

    if-eqz v0, :cond_3

    .line 1016
    const/4 v0, 0x4

    iget-object v2, p0, Lles;->d:Llet;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1018
    :cond_3
    iget-object v0, p0, Lles;->e:[D

    if-eqz v0, :cond_4

    iget-object v0, p0, Lles;->e:[D

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1019
    :goto_1
    iget-object v0, p0, Lles;->e:[D

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 1020
    const/4 v0, 0x5

    iget-object v2, p0, Lles;->e:[D

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1023
    :cond_4
    iget-object v0, p0, Lles;->f:Llep;

    if-eqz v0, :cond_5

    .line 1024
    const/4 v0, 0x6

    iget-object v1, p0, Lles;->f:Llep;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1026
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1027
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1031
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 1032
    iget-object v1, p0, Lles;->a:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lles;->a:[I

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    .line 1034
    :goto_0
    iget-object v3, p0, Lles;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1035
    iget-object v3, p0, Lles;->a:[I

    aget v3, v3, v0

    .line 1037
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :cond_0
    add-int v0, v2, v1

    .line 1040
    iget-object v1, p0, Lles;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1042
    :goto_1
    iget-object v1, p0, Lles;->b:Lleu;

    if-eqz v1, :cond_1

    .line 1043
    const/4 v1, 0x2

    iget-object v2, p0, Lles;->b:Lleu;

    .line 1044
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1046
    :cond_1
    iget-object v1, p0, Lles;->c:Lleu;

    if-eqz v1, :cond_2

    .line 1047
    const/4 v1, 0x3

    iget-object v2, p0, Lles;->c:Lleu;

    .line 1048
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1050
    :cond_2
    iget-object v1, p0, Lles;->d:Llet;

    if-eqz v1, :cond_3

    .line 1051
    const/4 v1, 0x4

    iget-object v2, p0, Lles;->d:Llet;

    .line 1052
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1054
    :cond_3
    iget-object v1, p0, Lles;->e:[D

    if-eqz v1, :cond_4

    iget-object v1, p0, Lles;->e:[D

    array-length v1, v1

    if-lez v1, :cond_4

    .line 1055
    iget-object v1, p0, Lles;->e:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    .line 1056
    add-int/2addr v0, v1

    .line 1057
    iget-object v1, p0, Lles;->e:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1059
    :cond_4
    iget-object v1, p0, Lles;->f:Llep;

    if-eqz v1, :cond_5

    .line 1060
    const/4 v1, 0x6

    iget-object v2, p0, Lles;->f:Llep;

    .line 1061
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1063
    :cond_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_1
.end method
