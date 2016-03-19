.class public final Lkjv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkgd;

.field public c:[Lkif;

.field public d:Lkif;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1994
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2999
    iput-object v1, p0, Lkjv;->a:Lkii;

    .line 3000
    invoke-static {}, Lkgd;->d()[Lkgd;

    move-result-object v0

    iput-object v0, p0, Lkjv;->b:[Lkgd;

    .line 3001
    invoke-static {}, Lkif;->d()[Lkif;

    move-result-object v0

    iput-object v0, p0, Lkjv;->c:[Lkif;

    .line 3002
    iput-object v1, p0, Lkjv;->d:Lkif;

    .line 3003
    iput-object v1, p0, Lkjv;->eD:Llyd;

    .line 3004
    const/4 v0, -0x1

    iput v0, p0, Lkjv;->eE:I

    .line 1996
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3073
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3074
    sparse-switch v0, :sswitch_data_0

    .line 3078
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3079
    :sswitch_0
    return-object p0

    .line 3084
    :sswitch_1
    iget-object v0, p0, Lkjv;->a:Lkii;

    if-nez v0, :cond_1

    .line 3085
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkjv;->a:Lkii;

    .line 3087
    :cond_1
    iget-object v0, p0, Lkjv;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3091
    :sswitch_2
    const/16 v0, 0x12

    .line 3092
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3093
    iget-object v0, p0, Lkjv;->b:[Lkgd;

    if-nez v0, :cond_3

    move v0, v1

    .line 3094
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgd;

    .line 3096
    if-eqz v0, :cond_2

    .line 3097
    iget-object v3, p0, Lkjv;->b:[Lkgd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3099
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 3100
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 3101
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3102
    invoke-virtual {p1}, Llxy;->a()I

    .line 3099
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3093
    :cond_3
    iget-object v0, p0, Lkjv;->b:[Lkgd;

    array-length v0, v0

    goto :goto_1

    .line 3105
    :cond_4
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 3106
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3107
    iput-object v2, p0, Lkjv;->b:[Lkgd;

    goto :goto_0

    .line 3111
    :sswitch_3
    const/16 v0, 0x1a

    .line 3112
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3113
    iget-object v0, p0, Lkjv;->c:[Lkif;

    if-nez v0, :cond_6

    move v0, v1

    .line 3114
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkif;

    .line 3116
    if-eqz v0, :cond_5

    .line 3117
    iget-object v3, p0, Lkjv;->c:[Lkif;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3119
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 3120
    new-instance v3, Lkif;

    invoke-direct {v3}, Lkif;-><init>()V

    aput-object v3, v2, v0

    .line 3121
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3122
    invoke-virtual {p1}, Llxy;->a()I

    .line 3119
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3113
    :cond_6
    iget-object v0, p0, Lkjv;->c:[Lkif;

    array-length v0, v0

    goto :goto_3

    .line 3125
    :cond_7
    new-instance v3, Lkif;

    invoke-direct {v3}, Lkif;-><init>()V

    aput-object v3, v2, v0

    .line 3126
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3127
    iput-object v2, p0, Lkjv;->c:[Lkif;

    goto/16 :goto_0

    .line 3131
    :sswitch_4
    iget-object v0, p0, Lkjv;->d:Lkif;

    if-nez v0, :cond_8

    .line 3132
    new-instance v0, Lkif;

    invoke-direct {v0}, Lkif;-><init>()V

    iput-object v0, p0, Lkjv;->d:Lkif;

    .line 3134
    :cond_8
    iget-object v0, p0, Lkjv;->d:Lkif;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3074
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2011
    iget-object v0, p0, Lkjv;->a:Lkii;

    if-eqz v0, :cond_0

    .line 2012
    const/4 v0, 0x1

    iget-object v2, p0, Lkjv;->a:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2014
    :cond_0
    iget-object v0, p0, Lkjv;->b:[Lkgd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkjv;->b:[Lkgd;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 2015
    :goto_0
    iget-object v2, p0, Lkjv;->b:[Lkgd;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2016
    iget-object v2, p0, Lkjv;->b:[Lkgd;

    aget-object v2, v2, v0

    .line 2017
    if-eqz v2, :cond_1

    .line 2018
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2015
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2022
    :cond_2
    iget-object v0, p0, Lkjv;->c:[Lkif;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkjv;->c:[Lkif;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 2023
    :goto_1
    iget-object v0, p0, Lkjv;->c:[Lkif;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 2024
    iget-object v0, p0, Lkjv;->c:[Lkif;

    aget-object v0, v0, v1

    .line 2025
    if-eqz v0, :cond_3

    .line 2026
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 2023
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2030
    :cond_4
    iget-object v0, p0, Lkjv;->d:Lkif;

    if-eqz v0, :cond_5

    .line 2031
    const/4 v0, 0x4

    iget-object v1, p0, Lkjv;->d:Lkif;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2033
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2034
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2038
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2039
    iget-object v2, p0, Lkjv;->a:Lkii;

    if-eqz v2, :cond_0

    .line 2040
    const/4 v2, 0x1

    iget-object v3, p0, Lkjv;->a:Lkii;

    .line 2041
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2043
    :cond_0
    iget-object v2, p0, Lkjv;->b:[Lkgd;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkjv;->b:[Lkgd;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 2044
    :goto_0
    iget-object v3, p0, Lkjv;->b:[Lkgd;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 2045
    iget-object v3, p0, Lkjv;->b:[Lkgd;

    aget-object v3, v3, v0

    .line 2046
    if-eqz v3, :cond_1

    .line 2047
    const/4 v4, 0x2

    .line 2048
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2044
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2052
    :cond_3
    iget-object v2, p0, Lkjv;->c:[Lkif;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkjv;->c:[Lkif;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 2053
    :goto_1
    iget-object v2, p0, Lkjv;->c:[Lkif;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 2054
    iget-object v2, p0, Lkjv;->c:[Lkif;

    aget-object v2, v2, v1

    .line 2055
    if-eqz v2, :cond_4

    .line 2056
    const/4 v3, 0x3

    .line 2057
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2053
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2061
    :cond_5
    iget-object v1, p0, Lkjv;->d:Lkif;

    if-eqz v1, :cond_6

    .line 2062
    const/4 v1, 0x4

    iget-object v2, p0, Lkjv;->d:Lkif;

    .line 2063
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2065
    :cond_6
    return v0
.end method
