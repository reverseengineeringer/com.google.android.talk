.class public final Ljjz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjz;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Ljjz;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Integer;

.field public i:[Ljjy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2058
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3063
    iput-object v1, p0, Ljjz;->a:Ljava/lang/Integer;

    .line 3064
    iput-object v1, p0, Ljjz;->b:Ljava/lang/String;

    .line 3065
    iput-object v1, p0, Ljjz;->c:Ljava/lang/String;

    .line 3066
    iput-object v1, p0, Ljjz;->d:Ljava/lang/String;

    .line 3067
    iput-object v1, p0, Ljjz;->e:Ljava/lang/String;

    .line 3068
    iput-object v1, p0, Ljjz;->f:Ljava/lang/String;

    .line 3069
    iput-object v1, p0, Ljjz;->g:Ljava/lang/String;

    .line 3070
    iput-object v1, p0, Ljjz;->h:Ljava/lang/Integer;

    .line 3071
    invoke-static {}, Ljjy;->d()[Ljjy;

    move-result-object v0

    iput-object v0, p0, Ljjz;->i:[Ljjy;

    .line 3072
    iput-object v1, p0, Ljjz;->eD:Llyd;

    .line 3073
    const/4 v0, -0x1

    iput v0, p0, Ljjz;->eE:I

    .line 2060
    return-void
.end method

.method public static d()[Ljjz;
    .locals 2

    .prologue
    .line 2018
    sget-object v0, Ljjz;->j:[Ljjz;

    if-nez v0, :cond_1

    .line 2019
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2021
    :try_start_0
    sget-object v0, Ljjz;->j:[Ljjz;

    if-nez v0, :cond_0

    .line 2022
    const/4 v0, 0x0

    new-array v0, v0, [Ljjz;

    sput-object v0, Ljjz;->j:[Ljjz;

    .line 2024
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2026
    :cond_1
    sget-object v0, Ljjz;->j:[Ljjz;

    return-object v0

    .line 2024
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

    .line 3167
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3168
    sparse-switch v0, :sswitch_data_0

    .line 3172
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3173
    :sswitch_0
    return-object p0

    .line 3178
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3179
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3193
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3199
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjz;->b:Ljava/lang/String;

    goto :goto_0

    .line 3203
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjz;->c:Ljava/lang/String;

    goto :goto_0

    .line 3207
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjz;->d:Ljava/lang/String;

    goto :goto_0

    .line 3211
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjz;->e:Ljava/lang/String;

    goto :goto_0

    .line 3215
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjz;->f:Ljava/lang/String;

    goto :goto_0

    .line 3219
    :sswitch_7
    const/16 v0, 0x3a

    .line 3220
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3221
    iget-object v0, p0, Ljjz;->i:[Ljjy;

    if-nez v0, :cond_2

    move v0, v1

    .line 3222
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljjy;

    .line 3224
    if-eqz v0, :cond_1

    .line 3225
    iget-object v3, p0, Ljjz;->i:[Ljjy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3227
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3228
    new-instance v3, Ljjy;

    invoke-direct {v3}, Ljjy;-><init>()V

    aput-object v3, v2, v0

    .line 3229
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3230
    invoke-virtual {p1}, Llxy;->a()I

    .line 3227
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3221
    :cond_2
    iget-object v0, p0, Ljjz;->i:[Ljjy;

    array-length v0, v0

    goto :goto_1

    .line 3233
    :cond_3
    new-instance v3, Ljjy;

    invoke-direct {v3}, Ljjy;-><init>()V

    aput-object v3, v2, v0

    .line 3234
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3235
    iput-object v2, p0, Ljjz;->i:[Ljjy;

    goto :goto_0

    .line 3239
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjz;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 3243
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjz;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 3168
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 3179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2080
    iget-object v0, p0, Ljjz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2081
    const/4 v0, 0x1

    iget-object v1, p0, Ljjz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2083
    :cond_0
    iget-object v0, p0, Ljjz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2084
    const/4 v0, 0x2

    iget-object v1, p0, Ljjz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2086
    :cond_1
    iget-object v0, p0, Ljjz;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2087
    const/4 v0, 0x3

    iget-object v1, p0, Ljjz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2089
    :cond_2
    iget-object v0, p0, Ljjz;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2090
    const/4 v0, 0x4

    iget-object v1, p0, Ljjz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2092
    :cond_3
    iget-object v0, p0, Ljjz;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2093
    const/4 v0, 0x5

    iget-object v1, p0, Ljjz;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2095
    :cond_4
    iget-object v0, p0, Ljjz;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2096
    const/4 v0, 0x6

    iget-object v1, p0, Ljjz;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2098
    :cond_5
    iget-object v0, p0, Ljjz;->i:[Ljjy;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljjz;->i:[Ljjy;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 2099
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljjz;->i:[Ljjy;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 2100
    iget-object v1, p0, Ljjz;->i:[Ljjy;

    aget-object v1, v1, v0

    .line 2101
    if-eqz v1, :cond_6

    .line 2102
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2099
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2106
    :cond_7
    iget-object v0, p0, Ljjz;->g:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2107
    const/16 v0, 0x8

    iget-object v1, p0, Ljjz;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2109
    :cond_8
    iget-object v0, p0, Ljjz;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 2110
    const/16 v0, 0x9

    iget-object v1, p0, Ljjz;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2112
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2113
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2117
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2118
    iget-object v1, p0, Ljjz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2119
    const/4 v1, 0x1

    iget-object v2, p0, Ljjz;->a:Ljava/lang/Integer;

    .line 2120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2122
    :cond_0
    iget-object v1, p0, Ljjz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2123
    const/4 v1, 0x2

    iget-object v2, p0, Ljjz;->b:Ljava/lang/String;

    .line 2124
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2126
    :cond_1
    iget-object v1, p0, Ljjz;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2127
    const/4 v1, 0x3

    iget-object v2, p0, Ljjz;->c:Ljava/lang/String;

    .line 2128
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2130
    :cond_2
    iget-object v1, p0, Ljjz;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2131
    const/4 v1, 0x4

    iget-object v2, p0, Ljjz;->d:Ljava/lang/String;

    .line 2132
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2134
    :cond_3
    iget-object v1, p0, Ljjz;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2135
    const/4 v1, 0x5

    iget-object v2, p0, Ljjz;->e:Ljava/lang/String;

    .line 2136
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2138
    :cond_4
    iget-object v1, p0, Ljjz;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2139
    const/4 v1, 0x6

    iget-object v2, p0, Ljjz;->f:Ljava/lang/String;

    .line 2140
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2142
    :cond_5
    iget-object v1, p0, Ljjz;->i:[Ljjy;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ljjz;->i:[Ljjy;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 2143
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljjz;->i:[Ljjy;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 2144
    iget-object v2, p0, Ljjz;->i:[Ljjy;

    aget-object v2, v2, v0

    .line 2145
    if-eqz v2, :cond_6

    .line 2146
    const/4 v3, 0x7

    .line 2147
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2143
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 2151
    :cond_8
    iget-object v1, p0, Ljjz;->g:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2152
    const/16 v1, 0x8

    iget-object v2, p0, Ljjz;->g:Ljava/lang/String;

    .line 2153
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2155
    :cond_9
    iget-object v1, p0, Ljjz;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 2156
    const/16 v1, 0x9

    iget-object v2, p0, Ljjz;->h:Ljava/lang/Integer;

    .line 2157
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2159
    :cond_a
    return v0
.end method
