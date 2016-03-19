.class final Lzm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lzn;


# direct methods
.method public constructor <init>(Lzn;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lzm;->a:Lzn;

    .line 33
    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lwr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1218
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_6

    .line 1220
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 1221
    iget v0, v0, Lwr;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_5

    .line 1222
    if-eqz v1, :cond_1e

    move v5, v2

    .line 39
    :goto_2
    const/4 v0, -0x1

    if-eq v5, v0, :cond_1d

    .line 40
    add-int/lit8 v6, v5, 0x1

    .line 2045
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwr;

    .line 2046
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwr;

    .line 2047
    iget v2, v1, Lwr;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2161
    :pswitch_1
    const/4 v2, 0x0

    .line 2163
    iget v3, v0, Lwr;->d:I

    iget v4, v1, Lwr;->b:I

    if-ge v3, v4, :cond_1

    .line 2164
    const/4 v2, -0x1

    .line 2166
    :cond_1
    iget v3, v0, Lwr;->b:I

    iget v4, v1, Lwr;->b:I

    if-ge v3, v4, :cond_2

    .line 2167
    add-int/lit8 v2, v2, 0x1

    .line 2169
    :cond_2
    iget v3, v1, Lwr;->b:I

    iget v4, v0, Lwr;->b:I

    if-gt v3, v4, :cond_3

    .line 2170
    iget v3, v0, Lwr;->b:I

    iget v4, v1, Lwr;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Lwr;->b:I

    .line 2172
    :cond_3
    iget v3, v1, Lwr;->b:I

    iget v4, v0, Lwr;->d:I

    if-gt v3, v4, :cond_4

    .line 2173
    iget v3, v0, Lwr;->d:I

    iget v4, v1, Lwr;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Lwr;->d:I

    .line 2175
    :cond_4
    iget v3, v1, Lwr;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Lwr;->b:I

    .line 2176
    invoke-interface {p1, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2177
    invoke-interface {p1, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1226
    :cond_5
    const/4 v0, 0x1

    .line 1219
    :goto_3
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_1

    .line 1229
    :cond_6
    const/4 v0, -0x1

    move v5, v0

    goto :goto_2

    .line 2062
    :pswitch_2
    const/4 v4, 0x0

    .line 2064
    const/4 v3, 0x0

    .line 2067
    iget v2, v0, Lwr;->b:I

    iget v7, v0, Lwr;->d:I

    if-ge v2, v7, :cond_a

    .line 2068
    const/4 v2, 0x0

    .line 2069
    iget v7, v1, Lwr;->b:I

    iget v8, v0, Lwr;->b:I

    if-ne v7, v8, :cond_7

    iget v7, v1, Lwr;->d:I

    iget v8, v0, Lwr;->d:I

    iget v9, v0, Lwr;->b:I

    sub-int/2addr v8, v9

    if-ne v7, v8, :cond_7

    .line 2071
    const/4 v3, 0x1

    .line 2082
    :cond_7
    :goto_4
    iget v7, v0, Lwr;->d:I

    iget v8, v1, Lwr;->b:I

    if-ge v7, v8, :cond_b

    .line 2083
    iget v7, v1, Lwr;->b:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v1, Lwr;->b:I

    .line 2098
    :cond_8
    iget v7, v0, Lwr;->b:I

    iget v8, v1, Lwr;->b:I

    if-gt v7, v8, :cond_c

    .line 2099
    iget v7, v1, Lwr;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Lwr;->b:I

    .line 2108
    :cond_9
    :goto_5
    if-eqz v3, :cond_d

    .line 2109
    invoke-interface {p1, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2110
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2111
    iget-object v1, p0, Lzm;->a:Lzn;

    invoke-virtual {v1, v0}, Lzn;->a(Lwr;)V

    goto/16 :goto_0

    .line 2074
    :cond_a
    const/4 v2, 0x1

    .line 2075
    iget v7, v1, Lwr;->b:I

    iget v8, v0, Lwr;->d:I

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v8, :cond_7

    iget v7, v1, Lwr;->d:I

    iget v8, v0, Lwr;->b:I

    iget v9, v0, Lwr;->d:I

    sub-int/2addr v8, v9

    if-ne v7, v8, :cond_7

    .line 2077
    const/4 v3, 0x1

    goto :goto_4

    .line 2084
    :cond_b
    iget v7, v0, Lwr;->d:I

    iget v8, v1, Lwr;->b:I

    iget v9, v1, Lwr;->d:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_8

    .line 2086
    iget v2, v1, Lwr;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lwr;->d:I

    .line 2087
    const/4 v2, 0x2

    iput v2, v0, Lwr;->a:I

    .line 2088
    const/4 v2, 0x1

    iput v2, v0, Lwr;->d:I

    .line 2089
    iget v0, v1, Lwr;->d:I

    if-nez v0, :cond_0

    .line 2090
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2091
    iget-object v0, p0, Lzm;->a:Lzn;

    invoke-virtual {v0, v1}, Lzn;->a(Lwr;)V

    goto/16 :goto_0

    .line 2100
    :cond_c
    iget v7, v0, Lwr;->b:I

    iget v8, v1, Lwr;->b:I

    iget v9, v1, Lwr;->d:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_9

    .line 2101
    iget v4, v1, Lwr;->b:I

    iget v7, v1, Lwr;->d:I

    add-int/2addr v4, v7

    iget v7, v0, Lwr;->b:I

    sub-int/2addr v4, v7

    .line 2103
    iget-object v7, p0, Lzm;->a:Lzn;

    const/4 v8, 0x2

    iget v9, v0, Lwr;->b:I

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v4, v10}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v4

    .line 2104
    iget v7, v0, Lwr;->b:I

    iget v8, v1, Lwr;->b:I

    sub-int/2addr v7, v8

    iput v7, v1, Lwr;->d:I

    goto :goto_5

    .line 2116
    :cond_d
    if-eqz v2, :cond_12

    .line 2117
    if-eqz v4, :cond_f

    .line 2118
    iget v2, v0, Lwr;->b:I

    iget v3, v4, Lwr;->b:I

    if-le v2, v3, :cond_e

    .line 2119
    iget v2, v0, Lwr;->b:I

    iget v3, v4, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->b:I

    .line 2121
    :cond_e
    iget v2, v0, Lwr;->d:I

    iget v3, v4, Lwr;->b:I

    if-le v2, v3, :cond_f

    .line 2122
    iget v2, v0, Lwr;->d:I

    iget v3, v4, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->d:I

    .line 2125
    :cond_f
    iget v2, v0, Lwr;->b:I

    iget v3, v1, Lwr;->b:I

    if-le v2, v3, :cond_10

    .line 2126
    iget v2, v0, Lwr;->b:I

    iget v3, v1, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->b:I

    .line 2128
    :cond_10
    iget v2, v0, Lwr;->d:I

    iget v3, v1, Lwr;->b:I

    if-le v2, v3, :cond_11

    .line 2129
    iget v2, v0, Lwr;->d:I

    iget v3, v1, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->d:I

    .line 2148
    :cond_11
    :goto_6
    invoke-interface {p1, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2149
    iget v1, v0, Lwr;->b:I

    iget v2, v0, Lwr;->d:I

    if-eq v1, v2, :cond_16

    .line 2150
    invoke-interface {p1, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2154
    :goto_7
    if-eqz v4, :cond_0

    .line 2155
    invoke-interface {p1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2132
    :cond_12
    if-eqz v4, :cond_14

    .line 2133
    iget v2, v0, Lwr;->b:I

    iget v3, v4, Lwr;->b:I

    if-lt v2, v3, :cond_13

    .line 2134
    iget v2, v0, Lwr;->b:I

    iget v3, v4, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->b:I

    .line 2136
    :cond_13
    iget v2, v0, Lwr;->d:I

    iget v3, v4, Lwr;->b:I

    if-lt v2, v3, :cond_14

    .line 2137
    iget v2, v0, Lwr;->d:I

    iget v3, v4, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->d:I

    .line 2140
    :cond_14
    iget v2, v0, Lwr;->b:I

    iget v3, v1, Lwr;->b:I

    if-lt v2, v3, :cond_15

    .line 2141
    iget v2, v0, Lwr;->b:I

    iget v3, v1, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->b:I

    .line 2143
    :cond_15
    iget v2, v0, Lwr;->d:I

    iget v3, v1, Lwr;->b:I

    if-lt v2, v3, :cond_11

    .line 2144
    iget v2, v0, Lwr;->d:I

    iget v3, v1, Lwr;->d:I

    sub-int/2addr v2, v3

    iput v2, v0, Lwr;->d:I

    goto :goto_6

    .line 2152
    :cond_16
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 2182
    :pswitch_3
    const/4 v2, 0x0

    .line 2183
    const/4 v3, 0x0

    .line 2185
    iget v4, v0, Lwr;->d:I

    iget v7, v1, Lwr;->b:I

    if-ge v4, v7, :cond_1a

    .line 2186
    iget v4, v1, Lwr;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lwr;->b:I

    .line 2193
    :cond_17
    :goto_8
    iget v4, v0, Lwr;->b:I

    iget v7, v1, Lwr;->b:I

    if-gt v4, v7, :cond_1b

    .line 2194
    iget v4, v1, Lwr;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lwr;->b:I

    .line 2202
    :cond_18
    :goto_9
    invoke-interface {p1, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2203
    iget v0, v1, Lwr;->d:I

    if-lez v0, :cond_1c

    .line 2204
    invoke-interface {p1, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2209
    :goto_a
    if-eqz v2, :cond_19

    .line 2210
    invoke-interface {p1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2212
    :cond_19
    if-eqz v3, :cond_0

    .line 2213
    invoke-interface {p1, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2187
    :cond_1a
    iget v4, v0, Lwr;->d:I

    iget v7, v1, Lwr;->b:I

    iget v8, v1, Lwr;->d:I

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_17

    .line 2189
    iget v2, v1, Lwr;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lwr;->d:I

    .line 2190
    iget-object v2, p0, Lzm;->a:Lzn;

    const/4 v4, 0x4

    iget v7, v0, Lwr;->b:I

    const/4 v8, 0x1

    iget-object v9, v1, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {v2, v4, v7, v8, v9}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v2

    goto :goto_8

    .line 2195
    :cond_1b
    iget v4, v0, Lwr;->b:I

    iget v7, v1, Lwr;->b:I

    iget v8, v1, Lwr;->d:I

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_18

    .line 2196
    iget v3, v1, Lwr;->b:I

    iget v4, v1, Lwr;->d:I

    add-int/2addr v3, v4

    iget v4, v0, Lwr;->b:I

    sub-int v4, v3, v4

    .line 2198
    iget-object v3, p0, Lzm;->a:Lzn;

    const/4 v7, 0x4

    iget v8, v0, Lwr;->b:I

    add-int/lit8 v8, v8, 0x1

    iget-object v9, v1, Lwr;->c:Ljava/lang/Object;

    invoke-virtual {v3, v7, v8, v4, v9}, Lzn;->a(IIILjava/lang/Object;)Lwr;

    move-result-object v3

    .line 2200
    iget v7, v1, Lwr;->d:I

    sub-int v4, v7, v4

    iput v4, v1, Lwr;->d:I

    goto :goto_9

    .line 2206
    :cond_1c
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2207
    iget-object v0, p0, Lzm;->a:Lzn;

    invoke-virtual {v0, v1}, Lzn;->a(Lwr;)V

    goto :goto_a

    .line 42
    :cond_1d
    return-void

    :cond_1e
    move v0, v1

    goto/16 :goto_3

    .line 2047
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
