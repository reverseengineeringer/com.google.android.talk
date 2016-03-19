.class public final Lmlw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile i:[Lmlw;


# instance fields
.field public a:Lmks;

.field public b:Lmiq;

.field public c:Ljava/lang/String;

.field public d:[Lmmv;

.field public e:Ljava/lang/String;

.field public f:[Lmix;

.field public g:[Lmma;

.field public h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1243
    iput-object v1, p0, Lmlw;->a:Lmks;

    .line 1244
    iput-object v1, p0, Lmlw;->b:Lmiq;

    .line 1245
    iput-object v1, p0, Lmlw;->c:Ljava/lang/String;

    .line 1246
    invoke-static {}, Lmmv;->d()[Lmmv;

    move-result-object v0

    iput-object v0, p0, Lmlw;->d:[Lmmv;

    .line 1247
    iput-object v1, p0, Lmlw;->e:Ljava/lang/String;

    .line 1248
    invoke-static {}, Lmix;->d()[Lmix;

    move-result-object v0

    iput-object v0, p0, Lmlw;->f:[Lmix;

    .line 1249
    invoke-static {}, Lmma;->d()[Lmma;

    move-result-object v0

    iput-object v0, p0, Lmlw;->g:[Lmma;

    .line 1250
    iput-object v1, p0, Lmlw;->h:Ljava/lang/Integer;

    .line 1251
    iput-object v1, p0, Lmlw;->eD:Llyd;

    .line 1252
    const/4 v0, -0x1

    iput v0, p0, Lmlw;->eE:I

    .line 240
    return-void
.end method

.method public static d()[Lmlw;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lmlw;->i:[Lmlw;

    if-nez v0, :cond_1

    .line 202
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    sget-object v0, Lmlw;->i:[Lmlw;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    new-array v0, v0, [Lmlw;

    sput-object v0, Lmlw;->i:[Lmlw;

    .line 207
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_1
    sget-object v0, Lmlw;->i:[Lmlw;

    return-object v0

    .line 207
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

    .line 1359
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1360
    sparse-switch v0, :sswitch_data_0

    .line 1364
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    :sswitch_0
    return-object p0

    .line 1370
    :sswitch_1
    iget-object v0, p0, Lmlw;->a:Lmks;

    if-nez v0, :cond_1

    .line 1371
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmlw;->a:Lmks;

    .line 1373
    :cond_1
    iget-object v0, p0, Lmlw;->a:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1377
    :sswitch_2
    iget-object v0, p0, Lmlw;->b:Lmiq;

    if-nez v0, :cond_2

    .line 1378
    new-instance v0, Lmiq;

    invoke-direct {v0}, Lmiq;-><init>()V

    iput-object v0, p0, Lmlw;->b:Lmiq;

    .line 1380
    :cond_2
    iget-object v0, p0, Lmlw;->b:Lmiq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1384
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlw;->c:Ljava/lang/String;

    goto :goto_0

    .line 1388
    :sswitch_4
    const/16 v0, 0x22

    .line 1389
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1390
    iget-object v0, p0, Lmlw;->d:[Lmmv;

    if-nez v0, :cond_4

    move v0, v1

    .line 1391
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmmv;

    .line 1393
    if-eqz v0, :cond_3

    .line 1394
    iget-object v3, p0, Lmlw;->d:[Lmmv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1397
    new-instance v3, Lmmv;

    invoke-direct {v3}, Lmmv;-><init>()V

    aput-object v3, v2, v0

    .line 1398
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1399
    invoke-virtual {p1}, Llxy;->a()I

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1390
    :cond_4
    iget-object v0, p0, Lmlw;->d:[Lmmv;

    array-length v0, v0

    goto :goto_1

    .line 1402
    :cond_5
    new-instance v3, Lmmv;

    invoke-direct {v3}, Lmmv;-><init>()V

    aput-object v3, v2, v0

    .line 1403
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1404
    iput-object v2, p0, Lmlw;->d:[Lmmv;

    goto :goto_0

    .line 1408
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmlw;->e:Ljava/lang/String;

    goto :goto_0

    .line 1412
    :sswitch_6
    const/16 v0, 0x32

    .line 1413
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1414
    iget-object v0, p0, Lmlw;->f:[Lmix;

    if-nez v0, :cond_7

    move v0, v1

    .line 1415
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmix;

    .line 1417
    if-eqz v0, :cond_6

    .line 1418
    iget-object v3, p0, Lmlw;->f:[Lmix;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1420
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1421
    new-instance v3, Lmix;

    invoke-direct {v3}, Lmix;-><init>()V

    aput-object v3, v2, v0

    .line 1422
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1423
    invoke-virtual {p1}, Llxy;->a()I

    .line 1420
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1414
    :cond_7
    iget-object v0, p0, Lmlw;->f:[Lmix;

    array-length v0, v0

    goto :goto_3

    .line 1426
    :cond_8
    new-instance v3, Lmix;

    invoke-direct {v3}, Lmix;-><init>()V

    aput-object v3, v2, v0

    .line 1427
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1428
    iput-object v2, p0, Lmlw;->f:[Lmix;

    goto/16 :goto_0

    .line 1432
    :sswitch_7
    const/16 v0, 0x3a

    .line 1433
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1434
    iget-object v0, p0, Lmlw;->g:[Lmma;

    if-nez v0, :cond_a

    move v0, v1

    .line 1435
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lmma;

    .line 1437
    if-eqz v0, :cond_9

    .line 1438
    iget-object v3, p0, Lmlw;->g:[Lmma;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1440
    :cond_9
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    .line 1441
    new-instance v3, Lmma;

    invoke-direct {v3}, Lmma;-><init>()V

    aput-object v3, v2, v0

    .line 1442
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1443
    invoke-virtual {p1}, Llxy;->a()I

    .line 1440
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1434
    :cond_a
    iget-object v0, p0, Lmlw;->g:[Lmma;

    array-length v0, v0

    goto :goto_5

    .line 1446
    :cond_b
    new-instance v3, Lmma;

    invoke-direct {v3}, Lmma;-><init>()V

    aput-object v3, v2, v0

    .line 1447
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1448
    iput-object v2, p0, Lmlw;->g:[Lmma;

    goto/16 :goto_0

    .line 1452
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmlw;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1360
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
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lmlw;->a:Lmks;

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iget-object v2, p0, Lmlw;->a:Lmks;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lmlw;->b:Lmiq;

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, 0x2

    iget-object v2, p0, Lmlw;->b:Lmiq;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 265
    :cond_1
    iget-object v0, p0, Lmlw;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 266
    const/4 v0, 0x3

    iget-object v2, p0, Lmlw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 268
    :cond_2
    iget-object v0, p0, Lmlw;->d:[Lmmv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmlw;->d:[Lmmv;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 269
    :goto_0
    iget-object v2, p0, Lmlw;->d:[Lmmv;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 270
    iget-object v2, p0, Lmlw;->d:[Lmmv;

    aget-object v2, v2, v0

    .line 271
    if-eqz v2, :cond_3

    .line 272
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 269
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_4
    iget-object v0, p0, Lmlw;->e:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 277
    const/4 v0, 0x5

    iget-object v2, p0, Lmlw;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 279
    :cond_5
    iget-object v0, p0, Lmlw;->f:[Lmix;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmlw;->f:[Lmix;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 280
    :goto_1
    iget-object v2, p0, Lmlw;->f:[Lmix;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 281
    iget-object v2, p0, Lmlw;->f:[Lmix;

    aget-object v2, v2, v0

    .line 282
    if-eqz v2, :cond_6

    .line 283
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 280
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 287
    :cond_7
    iget-object v0, p0, Lmlw;->g:[Lmma;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmlw;->g:[Lmma;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 288
    :goto_2
    iget-object v0, p0, Lmlw;->g:[Lmma;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 289
    iget-object v0, p0, Lmlw;->g:[Lmma;

    aget-object v0, v0, v1

    .line 290
    if-eqz v0, :cond_8

    .line 291
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 288
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 295
    :cond_9
    iget-object v0, p0, Lmlw;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 296
    const/16 v0, 0x8

    iget-object v1, p0, Lmlw;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 298
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 299
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 304
    iget-object v2, p0, Lmlw;->a:Lmks;

    if-eqz v2, :cond_0

    .line 305
    const/4 v2, 0x1

    iget-object v3, p0, Lmlw;->a:Lmks;

    .line 306
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 308
    :cond_0
    iget-object v2, p0, Lmlw;->b:Lmiq;

    if-eqz v2, :cond_1

    .line 309
    const/4 v2, 0x2

    iget-object v3, p0, Lmlw;->b:Lmiq;

    .line 310
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 312
    :cond_1
    iget-object v2, p0, Lmlw;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 313
    const/4 v2, 0x3

    iget-object v3, p0, Lmlw;->c:Ljava/lang/String;

    .line 314
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 316
    :cond_2
    iget-object v2, p0, Lmlw;->d:[Lmmv;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmlw;->d:[Lmmv;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 317
    :goto_0
    iget-object v3, p0, Lmlw;->d:[Lmmv;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 318
    iget-object v3, p0, Lmlw;->d:[Lmmv;

    aget-object v3, v3, v0

    .line 319
    if-eqz v3, :cond_3

    .line 320
    const/4 v4, 0x4

    .line 321
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 317
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 325
    :cond_5
    iget-object v2, p0, Lmlw;->e:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 326
    const/4 v2, 0x5

    iget-object v3, p0, Lmlw;->e:Ljava/lang/String;

    .line 327
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 329
    :cond_6
    iget-object v2, p0, Lmlw;->f:[Lmix;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmlw;->f:[Lmix;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 330
    :goto_1
    iget-object v3, p0, Lmlw;->f:[Lmix;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 331
    iget-object v3, p0, Lmlw;->f:[Lmix;

    aget-object v3, v3, v0

    .line 332
    if-eqz v3, :cond_7

    .line 333
    const/4 v4, 0x6

    .line 334
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 330
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v2

    .line 338
    :cond_9
    iget-object v2, p0, Lmlw;->g:[Lmma;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lmlw;->g:[Lmma;

    array-length v2, v2

    if-lez v2, :cond_b

    .line 339
    :goto_2
    iget-object v2, p0, Lmlw;->g:[Lmma;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 340
    iget-object v2, p0, Lmlw;->g:[Lmma;

    aget-object v2, v2, v1

    .line 341
    if-eqz v2, :cond_a

    .line 342
    const/4 v3, 0x7

    .line 343
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 339
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    :cond_b
    iget-object v1, p0, Lmlw;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 348
    const/16 v1, 0x8

    iget-object v2, p0, Lmlw;->h:Ljava/lang/Integer;

    .line 349
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_c
    return v0
.end method
