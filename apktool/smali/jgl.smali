.class public final Ljgl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljgl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile l:[Ljgl;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljeb;

.field public f:Ljava/lang/String;

.field public g:Ljek;

.field public h:Ljgk;

.field public i:Ljava/lang/Boolean;

.field public j:[Ljgl;

.field public k:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1067
    iput-object v1, p0, Ljgl;->a:Ljava/lang/String;

    .line 1068
    iput-object v1, p0, Ljgl;->b:Ljava/lang/String;

    .line 1069
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljgl;->c:[Ljava/lang/String;

    .line 1070
    iput-object v1, p0, Ljgl;->d:Ljava/lang/String;

    .line 1071
    iput-object v1, p0, Ljgl;->e:Ljeb;

    .line 1072
    iput-object v1, p0, Ljgl;->f:Ljava/lang/String;

    .line 1073
    iput-object v1, p0, Ljgl;->g:Ljek;

    .line 1074
    iput-object v1, p0, Ljgl;->h:Ljgk;

    .line 1075
    iput-object v1, p0, Ljgl;->i:Ljava/lang/Boolean;

    .line 1076
    invoke-static {}, Ljgl;->d()[Ljgl;

    move-result-object v0

    iput-object v0, p0, Ljgl;->j:[Ljgl;

    .line 1077
    iput-object v1, p0, Ljgl;->k:Ljava/lang/Integer;

    .line 1078
    iput-object v1, p0, Ljgl;->eD:Llyd;

    .line 1079
    const/4 v0, -0x1

    iput v0, p0, Ljgl;->eE:I

    .line 64
    return-void
.end method

.method public static d()[Ljgl;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Ljgl;->l:[Ljgl;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Ljgl;->l:[Ljgl;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Ljgl;

    sput-object v0, Ljgl;->l:[Ljgl;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Ljgl;->l:[Ljgl;

    return-object v0

    .line 22
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

    .line 2202
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2203
    sparse-switch v0, :sswitch_data_0

    .line 2207
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2208
    :sswitch_0
    return-object p0

    .line 2213
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgl;->a:Ljava/lang/String;

    goto :goto_0

    .line 2217
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgl;->b:Ljava/lang/String;

    goto :goto_0

    .line 2221
    :sswitch_3
    const/16 v0, 0x1a

    .line 2222
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2223
    iget-object v0, p0, Ljgl;->c:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 2224
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2225
    if-eqz v0, :cond_1

    .line 2226
    iget-object v3, p0, Ljgl;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2228
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2229
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2230
    invoke-virtual {p1}, Llxy;->a()I

    .line 2228
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2223
    :cond_2
    iget-object v0, p0, Ljgl;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2233
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2234
    iput-object v2, p0, Ljgl;->c:[Ljava/lang/String;

    goto :goto_0

    .line 2238
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgl;->d:Ljava/lang/String;

    goto :goto_0

    .line 2242
    :sswitch_5
    iget-object v0, p0, Ljgl;->e:Ljeb;

    if-nez v0, :cond_4

    .line 2243
    new-instance v0, Ljeb;

    invoke-direct {v0}, Ljeb;-><init>()V

    iput-object v0, p0, Ljgl;->e:Ljeb;

    .line 2245
    :cond_4
    iget-object v0, p0, Ljgl;->e:Ljeb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2249
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgl;->f:Ljava/lang/String;

    goto :goto_0

    .line 2253
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljgl;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 2257
    :sswitch_8
    const/16 v0, 0x42

    .line 2258
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2259
    iget-object v0, p0, Ljgl;->j:[Ljgl;

    if-nez v0, :cond_6

    move v0, v1

    .line 2260
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgl;

    .line 2262
    if-eqz v0, :cond_5

    .line 2263
    iget-object v3, p0, Ljgl;->j:[Ljgl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2265
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2266
    new-instance v3, Ljgl;

    invoke-direct {v3}, Ljgl;-><init>()V

    aput-object v3, v2, v0

    .line 2267
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2268
    invoke-virtual {p1}, Llxy;->a()I

    .line 2265
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2259
    :cond_6
    iget-object v0, p0, Ljgl;->j:[Ljgl;

    array-length v0, v0

    goto :goto_3

    .line 2271
    :cond_7
    new-instance v3, Ljgl;

    invoke-direct {v3}, Ljgl;-><init>()V

    aput-object v3, v2, v0

    .line 2272
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2273
    iput-object v2, p0, Ljgl;->j:[Ljgl;

    goto/16 :goto_0

    .line 2277
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2278
    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    .line 2289
    :sswitch_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljgl;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2295
    :sswitch_b
    iget-object v0, p0, Ljgl;->g:Ljek;

    if-nez v0, :cond_8

    .line 2296
    new-instance v0, Ljek;

    invoke-direct {v0}, Ljek;-><init>()V

    iput-object v0, p0, Ljgl;->g:Ljek;

    .line 2298
    :cond_8
    iget-object v0, p0, Ljgl;->g:Ljek;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2302
    :sswitch_c
    iget-object v0, p0, Ljgl;->h:Ljgk;

    if-nez v0, :cond_9

    .line 2303
    new-instance v0, Ljgk;

    invoke-direct {v0}, Ljgk;-><init>()V

    iput-object v0, p0, Ljgl;->h:Ljgk;

    .line 2305
    :cond_9
    iget-object v0, p0, Ljgl;->h:Ljgk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2203
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
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
    .end sparse-switch

    .line 2278
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x3 -> :sswitch_a
        0x4 -> :sswitch_a
        0x5 -> :sswitch_a
        0x6 -> :sswitch_a
        0x64 -> :sswitch_a
        0x65 -> :sswitch_a
        0x6e -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Ljgl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iget-object v2, p0, Ljgl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Ljgl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x2

    iget-object v2, p0, Ljgl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 92
    :cond_1
    iget-object v0, p0, Ljgl;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljgl;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 93
    :goto_0
    iget-object v2, p0, Ljgl;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 94
    iget-object v2, p0, Ljgl;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 95
    if-eqz v2, :cond_2

    .line 96
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 93
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Ljgl;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 101
    const/4 v0, 0x4

    iget-object v2, p0, Ljgl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 103
    :cond_4
    iget-object v0, p0, Ljgl;->e:Ljeb;

    if-eqz v0, :cond_5

    .line 104
    const/4 v0, 0x5

    iget-object v2, p0, Ljgl;->e:Ljeb;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 106
    :cond_5
    iget-object v0, p0, Ljgl;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 107
    const/4 v0, 0x6

    iget-object v2, p0, Ljgl;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 109
    :cond_6
    iget-object v0, p0, Ljgl;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 110
    const/4 v0, 0x7

    iget-object v2, p0, Ljgl;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 112
    :cond_7
    iget-object v0, p0, Ljgl;->j:[Ljgl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljgl;->j:[Ljgl;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 113
    :goto_1
    iget-object v0, p0, Ljgl;->j:[Ljgl;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 114
    iget-object v0, p0, Ljgl;->j:[Ljgl;

    aget-object v0, v0, v1

    .line 115
    if-eqz v0, :cond_8

    .line 116
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 113
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_9
    iget-object v0, p0, Ljgl;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 121
    const/16 v0, 0x9

    iget-object v1, p0, Ljgl;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 123
    :cond_a
    iget-object v0, p0, Ljgl;->g:Ljek;

    if-eqz v0, :cond_b

    .line 124
    const/16 v0, 0xa

    iget-object v1, p0, Ljgl;->g:Ljek;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 126
    :cond_b
    iget-object v0, p0, Ljgl;->h:Ljgk;

    if-eqz v0, :cond_c

    .line 127
    const/16 v0, 0xb

    iget-object v1, p0, Ljgl;->h:Ljgk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 129
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 130
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 135
    iget-object v1, p0, Ljgl;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x1

    iget-object v3, p0, Ljgl;->a:Ljava/lang/String;

    .line 137
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_0
    iget-object v1, p0, Ljgl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 140
    const/4 v1, 0x2

    iget-object v3, p0, Ljgl;->b:Ljava/lang/String;

    .line 141
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_1
    iget-object v1, p0, Ljgl;->c:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljgl;->c:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 146
    :goto_0
    iget-object v5, p0, Ljgl;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 147
    iget-object v5, p0, Ljgl;->c:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 148
    if-eqz v5, :cond_2

    .line 149
    add-int/lit8 v4, v4, 0x1

    .line 151
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_3
    add-int/2addr v0, v3

    .line 155
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 157
    :cond_4
    iget-object v1, p0, Ljgl;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 158
    const/4 v1, 0x4

    iget-object v3, p0, Ljgl;->d:Ljava/lang/String;

    .line 159
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_5
    iget-object v1, p0, Ljgl;->e:Ljeb;

    if-eqz v1, :cond_6

    .line 162
    const/4 v1, 0x5

    iget-object v3, p0, Ljgl;->e:Ljeb;

    .line 163
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_6
    iget-object v1, p0, Ljgl;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 166
    const/4 v1, 0x6

    iget-object v3, p0, Ljgl;->f:Ljava/lang/String;

    .line 167
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_7
    iget-object v1, p0, Ljgl;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 170
    const/4 v1, 0x7

    iget-object v3, p0, Ljgl;->i:Ljava/lang/Boolean;

    .line 171
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 171
    add-int/2addr v0, v1

    .line 173
    :cond_8
    iget-object v1, p0, Ljgl;->j:[Ljgl;

    if-eqz v1, :cond_a

    iget-object v1, p0, Ljgl;->j:[Ljgl;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 174
    :goto_1
    iget-object v1, p0, Ljgl;->j:[Ljgl;

    array-length v1, v1

    if-ge v2, v1, :cond_a

    .line 175
    iget-object v1, p0, Ljgl;->j:[Ljgl;

    aget-object v1, v1, v2

    .line 176
    if-eqz v1, :cond_9

    .line 177
    const/16 v3, 0x8

    .line 178
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    :cond_a
    iget-object v1, p0, Ljgl;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 183
    const/16 v1, 0x9

    iget-object v2, p0, Ljgl;->k:Ljava/lang/Integer;

    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_b
    iget-object v1, p0, Ljgl;->g:Ljek;

    if-eqz v1, :cond_c

    .line 187
    const/16 v1, 0xa

    iget-object v2, p0, Ljgl;->g:Ljek;

    .line 188
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_c
    iget-object v1, p0, Ljgl;->h:Ljgk;

    if-eqz v1, :cond_d

    .line 191
    const/16 v1, 0xb

    iget-object v2, p0, Ljgl;->h:Ljgk;

    .line 192
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_d
    return v0
.end method
