.class public final Lllj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lllj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Llos;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Llls;

.field public f:[Lllk;

.field public g:Ljava/lang/Integer;

.field public h:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1151
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2156
    iput-object v1, p0, Lllj;->a:Ljava/lang/String;

    .line 2157
    invoke-static {}, Llos;->d()[Llos;

    move-result-object v0

    iput-object v0, p0, Lllj;->b:[Llos;

    .line 2158
    iput-object v1, p0, Lllj;->c:Ljava/lang/Long;

    .line 2159
    iput-object v1, p0, Lllj;->d:Ljava/lang/Long;

    .line 2160
    iput-object v1, p0, Lllj;->e:Llls;

    .line 2161
    invoke-static {}, Lllk;->d()[Lllk;

    move-result-object v0

    iput-object v0, p0, Lllj;->f:[Lllk;

    .line 2162
    iput-object v1, p0, Lllj;->g:Ljava/lang/Integer;

    .line 2163
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lllj;->h:[I

    .line 2164
    iput-object v1, p0, Lllj;->eD:Llyd;

    .line 2165
    const/4 v0, -0x1

    iput v0, p0, Lllj;->eE:I

    .line 1153
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2271
    sparse-switch v0, :sswitch_data_0

    .line 2275
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2276
    :sswitch_0
    return-object p0

    .line 2281
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lllj;->a:Ljava/lang/String;

    goto :goto_0

    .line 2285
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lllj;->c:Ljava/lang/Long;

    goto :goto_0

    .line 2289
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lllj;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2293
    :sswitch_4
    const/16 v0, 0x2a

    .line 2294
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2295
    iget-object v0, p0, Lllj;->f:[Lllk;

    if-nez v0, :cond_2

    move v0, v1

    .line 2296
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lllk;

    .line 2298
    if-eqz v0, :cond_1

    .line 2299
    iget-object v3, p0, Lllj;->f:[Lllk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2301
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2302
    new-instance v3, Lllk;

    invoke-direct {v3}, Lllk;-><init>()V

    aput-object v3, v2, v0

    .line 2303
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2304
    invoke-virtual {p1}, Llxy;->a()I

    .line 2301
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2295
    :cond_2
    iget-object v0, p0, Lllj;->f:[Lllk;

    array-length v0, v0

    goto :goto_1

    .line 2307
    :cond_3
    new-instance v3, Lllk;

    invoke-direct {v3}, Lllk;-><init>()V

    aput-object v3, v2, v0

    .line 2308
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2309
    iput-object v2, p0, Lllj;->f:[Lllk;

    goto :goto_0

    .line 2313
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2314
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2317
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lllj;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 2323
    :sswitch_6
    const/16 v0, 0x3a

    .line 2324
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2325
    iget-object v0, p0, Lllj;->b:[Llos;

    if-nez v0, :cond_5

    move v0, v1

    .line 2326
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llos;

    .line 2328
    if-eqz v0, :cond_4

    .line 2329
    iget-object v3, p0, Lllj;->b:[Llos;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2331
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2332
    new-instance v3, Llos;

    invoke-direct {v3}, Llos;-><init>()V

    aput-object v3, v2, v0

    .line 2333
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2334
    invoke-virtual {p1}, Llxy;->a()I

    .line 2331
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2325
    :cond_5
    iget-object v0, p0, Lllj;->b:[Llos;

    array-length v0, v0

    goto :goto_3

    .line 2337
    :cond_6
    new-instance v3, Llos;

    invoke-direct {v3}, Llos;-><init>()V

    aput-object v3, v2, v0

    .line 2338
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2339
    iput-object v2, p0, Lllj;->b:[Llos;

    goto/16 :goto_0

    .line 2343
    :sswitch_7
    iget-object v0, p0, Lllj;->e:Llls;

    if-nez v0, :cond_7

    .line 2344
    new-instance v0, Llls;

    invoke-direct {v0}, Llls;-><init>()V

    iput-object v0, p0, Lllj;->e:Llls;

    .line 2346
    :cond_7
    iget-object v0, p0, Lllj;->e:Llls;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2350
    :sswitch_8
    const/16 v0, 0x50

    .line 2351
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2352
    iget-object v0, p0, Lllj;->h:[I

    if-nez v0, :cond_9

    move v0, v1

    .line 2353
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 2354
    if-eqz v0, :cond_8

    .line 2355
    iget-object v3, p0, Lllj;->h:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2357
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 2358
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 2359
    invoke-virtual {p1}, Llxy;->a()I

    .line 2357
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2352
    :cond_9
    iget-object v0, p0, Lllj;->h:[I

    array-length v0, v0

    goto :goto_5

    .line 2362
    :cond_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 2363
    iput-object v2, p0, Lllj;->h:[I

    goto/16 :goto_0

    .line 2367
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2368
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2371
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2372
    :goto_7
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_b

    .line 2373
    invoke-virtual {p1}, Llxy;->f()I

    .line 2374
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2376
    :cond_b
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2377
    iget-object v2, p0, Lllj;->h:[I

    if-nez v2, :cond_d

    move v2, v1

    .line 2378
    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 2379
    if-eqz v2, :cond_c

    .line 2380
    iget-object v4, p0, Lllj;->h:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2382
    :cond_c
    :goto_9
    array-length v4, v0

    if-ge v2, v4, :cond_e

    .line 2383
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 2382
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2377
    :cond_d
    iget-object v2, p0, Lllj;->h:[I

    array-length v2, v2

    goto :goto_8

    .line 2385
    :cond_e
    iput-object v0, p0, Lllj;->h:[I

    .line 2386
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2271
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x2a -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x52 -> :sswitch_9
    .end sparse-switch

    .line 2314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1172
    iget-object v0, p0, Lllj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1173
    const/4 v0, 0x1

    iget-object v2, p0, Lllj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1175
    :cond_0
    iget-object v0, p0, Lllj;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1176
    const/4 v0, 0x2

    iget-object v2, p0, Lllj;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1178
    :cond_1
    iget-object v0, p0, Lllj;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 1179
    const/4 v0, 0x3

    iget-object v2, p0, Lllj;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1181
    :cond_2
    iget-object v0, p0, Lllj;->f:[Lllk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lllj;->f:[Lllk;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 1182
    :goto_0
    iget-object v2, p0, Lllj;->f:[Lllk;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1183
    iget-object v2, p0, Lllj;->f:[Lllk;

    aget-object v2, v2, v0

    .line 1184
    if-eqz v2, :cond_3

    .line 1185
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1182
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1189
    :cond_4
    iget-object v0, p0, Lllj;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1190
    const/4 v0, 0x6

    iget-object v2, p0, Lllj;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 1192
    :cond_5
    iget-object v0, p0, Lllj;->b:[Llos;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lllj;->b:[Llos;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 1193
    :goto_1
    iget-object v2, p0, Lllj;->b:[Llos;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 1194
    iget-object v2, p0, Lllj;->b:[Llos;

    aget-object v2, v2, v0

    .line 1195
    if-eqz v2, :cond_6

    .line 1196
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1193
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1200
    :cond_7
    iget-object v0, p0, Lllj;->e:Llls;

    if-eqz v0, :cond_8

    .line 1201
    const/16 v0, 0x9

    iget-object v2, p0, Lllj;->e:Llls;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1203
    :cond_8
    iget-object v0, p0, Lllj;->h:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lllj;->h:[I

    array-length v0, v0

    if-lez v0, :cond_9

    .line 1204
    :goto_2
    iget-object v0, p0, Lllj;->h:[I

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 1205
    const/16 v0, 0xa

    iget-object v2, p0, Lllj;->h:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 1204
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1208
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1209
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1213
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1214
    iget-object v2, p0, Lllj;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1215
    const/4 v2, 0x1

    iget-object v3, p0, Lllj;->a:Ljava/lang/String;

    .line 1216
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1218
    :cond_0
    iget-object v2, p0, Lllj;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 1219
    const/4 v2, 0x2

    iget-object v3, p0, Lllj;->c:Ljava/lang/Long;

    .line 1220
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1222
    :cond_1
    iget-object v2, p0, Lllj;->d:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 1223
    const/4 v2, 0x3

    iget-object v3, p0, Lllj;->d:Ljava/lang/Long;

    .line 1224
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1226
    :cond_2
    iget-object v2, p0, Lllj;->f:[Lllk;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lllj;->f:[Lllk;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 1227
    :goto_0
    iget-object v3, p0, Lllj;->f:[Lllk;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1228
    iget-object v3, p0, Lllj;->f:[Lllk;

    aget-object v3, v3, v0

    .line 1229
    if-eqz v3, :cond_3

    .line 1230
    const/4 v4, 0x5

    .line 1231
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1227
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1235
    :cond_5
    iget-object v2, p0, Lllj;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 1236
    const/4 v2, 0x6

    iget-object v3, p0, Lllj;->g:Ljava/lang/Integer;

    .line 1237
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1239
    :cond_6
    iget-object v2, p0, Lllj;->b:[Llos;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lllj;->b:[Llos;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 1240
    :goto_1
    iget-object v3, p0, Lllj;->b:[Llos;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 1241
    iget-object v3, p0, Lllj;->b:[Llos;

    aget-object v3, v3, v0

    .line 1242
    if-eqz v3, :cond_7

    .line 1243
    const/4 v4, 0x7

    .line 1244
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1240
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v2

    .line 1248
    :cond_9
    iget-object v2, p0, Lllj;->e:Llls;

    if-eqz v2, :cond_a

    .line 1249
    const/16 v2, 0x9

    iget-object v3, p0, Lllj;->e:Llls;

    .line 1250
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1252
    :cond_a
    iget-object v2, p0, Lllj;->h:[I

    if-eqz v2, :cond_c

    iget-object v2, p0, Lllj;->h:[I

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v1

    .line 1254
    :goto_2
    iget-object v3, p0, Lllj;->h:[I

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 1255
    iget-object v3, p0, Lllj;->h:[I

    aget v3, v3, v1

    .line 1257
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1259
    :cond_b
    add-int/2addr v0, v2

    .line 1260
    iget-object v1, p0, Lllj;->h:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1262
    :cond_c
    return v0
.end method
