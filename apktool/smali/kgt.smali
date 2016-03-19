.class public final Lkgt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lkii;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Lkif;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1932
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2937
    iput-object v1, p0, Lkgt;->requestHeader:Lkdo;

    .line 2938
    iput-object v1, p0, Lkgt;->a:Ljava/lang/String;

    .line 2939
    iput-object v1, p0, Lkgt;->b:Ljava/lang/String;

    .line 2940
    iput-object v1, p0, Lkgt;->c:Lkii;

    .line 2941
    iput-object v1, p0, Lkgt;->d:Ljava/lang/String;

    .line 2942
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkgt;->e:[Ljava/lang/String;

    .line 2943
    invoke-static {}, Lkif;->d()[Lkif;

    move-result-object v0

    iput-object v0, p0, Lkgt;->f:[Lkif;

    .line 2944
    iput-object v1, p0, Lkgt;->eD:Llyd;

    .line 2945
    const/4 v0, -0x1

    iput v0, p0, Lkgt;->eE:I

    .line 1934
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3040
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3041
    sparse-switch v0, :sswitch_data_0

    .line 3045
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3046
    :sswitch_0
    return-object p0

    .line 3051
    :sswitch_1
    iget-object v0, p0, Lkgt;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 3052
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkgt;->requestHeader:Lkdo;

    .line 3054
    :cond_1
    iget-object v0, p0, Lkgt;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3058
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgt;->a:Ljava/lang/String;

    goto :goto_0

    .line 3062
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgt;->b:Ljava/lang/String;

    goto :goto_0

    .line 3066
    :sswitch_4
    iget-object v0, p0, Lkgt;->c:Lkii;

    if-nez v0, :cond_2

    .line 3067
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgt;->c:Lkii;

    .line 3069
    :cond_2
    iget-object v0, p0, Lkgt;->c:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3073
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgt;->d:Ljava/lang/String;

    goto :goto_0

    .line 3077
    :sswitch_6
    const/16 v0, 0x32

    .line 3078
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3079
    iget-object v0, p0, Lkgt;->e:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 3080
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3081
    if-eqz v0, :cond_3

    .line 3082
    iget-object v3, p0, Lkgt;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3084
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 3085
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3086
    invoke-virtual {p1}, Llxy;->a()I

    .line 3084
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3079
    :cond_4
    iget-object v0, p0, Lkgt;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3089
    :cond_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3090
    iput-object v2, p0, Lkgt;->e:[Ljava/lang/String;

    goto :goto_0

    .line 3094
    :sswitch_7
    const/16 v0, 0x3a

    .line 3095
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3096
    iget-object v0, p0, Lkgt;->f:[Lkif;

    if-nez v0, :cond_7

    move v0, v1

    .line 3097
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkif;

    .line 3099
    if-eqz v0, :cond_6

    .line 3100
    iget-object v3, p0, Lkgt;->f:[Lkif;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3102
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 3103
    new-instance v3, Lkif;

    invoke-direct {v3}, Lkif;-><init>()V

    aput-object v3, v2, v0

    .line 3104
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3105
    invoke-virtual {p1}, Llxy;->a()I

    .line 3102
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3096
    :cond_7
    iget-object v0, p0, Lkgt;->f:[Lkif;

    array-length v0, v0

    goto :goto_3

    .line 3108
    :cond_8
    new-instance v3, Lkif;

    invoke-direct {v3}, Lkif;-><init>()V

    aput-object v3, v2, v0

    .line 3109
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3110
    iput-object v2, p0, Lkgt;->f:[Lkif;

    goto/16 :goto_0

    .line 3041
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1952
    iget-object v0, p0, Lkgt;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 1953
    const/4 v0, 0x1

    iget-object v2, p0, Lkgt;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1955
    :cond_0
    iget-object v0, p0, Lkgt;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1956
    const/4 v0, 0x2

    iget-object v2, p0, Lkgt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1958
    :cond_1
    iget-object v0, p0, Lkgt;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1959
    const/4 v0, 0x3

    iget-object v2, p0, Lkgt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1961
    :cond_2
    iget-object v0, p0, Lkgt;->c:Lkii;

    if-eqz v0, :cond_3

    .line 1962
    const/4 v0, 0x4

    iget-object v2, p0, Lkgt;->c:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1964
    :cond_3
    iget-object v0, p0, Lkgt;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1965
    const/4 v0, 0x5

    iget-object v2, p0, Lkgt;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1967
    :cond_4
    iget-object v0, p0, Lkgt;->e:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkgt;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 1968
    :goto_0
    iget-object v2, p0, Lkgt;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 1969
    iget-object v2, p0, Lkgt;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1970
    if-eqz v2, :cond_5

    .line 1971
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1968
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1975
    :cond_6
    iget-object v0, p0, Lkgt;->f:[Lkif;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lkgt;->f:[Lkif;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 1976
    :goto_1
    iget-object v0, p0, Lkgt;->f:[Lkif;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 1977
    iget-object v0, p0, Lkgt;->f:[Lkif;

    aget-object v0, v0, v1

    .line 1978
    if-eqz v0, :cond_7

    .line 1979
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1976
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1983
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1984
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1988
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1989
    iget-object v1, p0, Lkgt;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 1990
    const/4 v1, 0x1

    iget-object v3, p0, Lkgt;->requestHeader:Lkdo;

    .line 1991
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1993
    :cond_0
    iget-object v1, p0, Lkgt;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1994
    const/4 v1, 0x2

    iget-object v3, p0, Lkgt;->a:Ljava/lang/String;

    .line 1995
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1997
    :cond_1
    iget-object v1, p0, Lkgt;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1998
    const/4 v1, 0x3

    iget-object v3, p0, Lkgt;->b:Ljava/lang/String;

    .line 1999
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2001
    :cond_2
    iget-object v1, p0, Lkgt;->c:Lkii;

    if-eqz v1, :cond_3

    .line 2002
    const/4 v1, 0x4

    iget-object v3, p0, Lkgt;->c:Lkii;

    .line 2003
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2005
    :cond_3
    iget-object v1, p0, Lkgt;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2006
    const/4 v1, 0x5

    iget-object v3, p0, Lkgt;->d:Ljava/lang/String;

    .line 2007
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2009
    :cond_4
    iget-object v1, p0, Lkgt;->e:[Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lkgt;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_7

    move v1, v2

    move v3, v2

    move v4, v2

    .line 2012
    :goto_0
    iget-object v5, p0, Lkgt;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 2013
    iget-object v5, p0, Lkgt;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 2014
    if-eqz v5, :cond_5

    .line 2015
    add-int/lit8 v4, v4, 0x1

    .line 2017
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 2012
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2020
    :cond_6
    add-int/2addr v0, v3

    .line 2021
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 2023
    :cond_7
    iget-object v1, p0, Lkgt;->f:[Lkif;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lkgt;->f:[Lkif;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 2024
    :goto_1
    iget-object v1, p0, Lkgt;->f:[Lkif;

    array-length v1, v1

    if-ge v2, v1, :cond_9

    .line 2025
    iget-object v1, p0, Lkgt;->f:[Lkif;

    aget-object v1, v1, v2

    .line 2026
    if-eqz v1, :cond_8

    .line 2027
    const/4 v3, 0x7

    .line 2028
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2024
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2032
    :cond_9
    return v0
.end method
