.class public final Llej;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llej;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Llej;


# instance fields
.field public a:[I

.field public b:Llel;

.field public c:Llel;

.field public d:Llek;

.field public e:[D

.field public f:Lldg;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Llyb;-><init>()V

    .line 298
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llej;->a:[I

    .line 299
    iput-object v1, p0, Llej;->b:Llel;

    .line 300
    iput-object v1, p0, Llej;->c:Llel;

    .line 301
    iput-object v1, p0, Llej;->d:Llek;

    .line 302
    sget-object v0, Llyo;->d:[D

    iput-object v0, p0, Llej;->e:[D

    .line 303
    iput-object v1, p0, Llej;->f:Lldg;

    .line 304
    iput-object v1, p0, Llej;->eD:Llyd;

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Llej;->eE:I

    .line 306
    return-void
.end method

.method public static d()[Llej;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Llej;->g:[Llej;

    if-nez v0, :cond_1

    .line 267
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    sget-object v0, Llej;->g:[Llej;

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    new-array v0, v0, [Llej;

    sput-object v0, Llej;->g:[Llej;

    .line 272
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_1
    sget-object v0, Llej;->g:[Llej;

    return-object v0

    .line 272
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

    .line 1378
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1379
    sparse-switch v0, :sswitch_data_0

    .line 1383
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    :sswitch_0
    return-object p0

    .line 1389
    :sswitch_1
    const/16 v0, 0x8

    .line 1390
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1391
    iget-object v0, p0, Llej;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 1392
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1393
    if-eqz v0, :cond_1

    .line 1394
    iget-object v3, p0, Llej;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1397
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 1398
    invoke-virtual {p1}, Llxy;->a()I

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1391
    :cond_2
    iget-object v0, p0, Llej;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 1401
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 1402
    iput-object v2, p0, Llej;->a:[I

    goto :goto_0

    .line 1406
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1407
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1410
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 1411
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 1412
    invoke-virtual {p1}, Llxy;->f()I

    .line 1413
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1415
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 1416
    iget-object v2, p0, Llej;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 1417
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 1418
    if-eqz v2, :cond_5

    .line 1419
    iget-object v4, p0, Llej;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1421
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 1422
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 1421
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1416
    :cond_6
    iget-object v2, p0, Llej;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 1424
    :cond_7
    iput-object v0, p0, Llej;->a:[I

    .line 1425
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1429
    :sswitch_3
    iget-object v0, p0, Llej;->b:Llel;

    if-nez v0, :cond_8

    .line 1430
    new-instance v0, Llel;

    invoke-direct {v0}, Llel;-><init>()V

    iput-object v0, p0, Llej;->b:Llel;

    .line 1432
    :cond_8
    iget-object v0, p0, Llej;->b:Llel;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1436
    :sswitch_4
    iget-object v0, p0, Llej;->c:Llel;

    if-nez v0, :cond_9

    .line 1437
    new-instance v0, Llel;

    invoke-direct {v0}, Llel;-><init>()V

    iput-object v0, p0, Llej;->c:Llel;

    .line 1439
    :cond_9
    iget-object v0, p0, Llej;->c:Llel;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1443
    :sswitch_5
    iget-object v0, p0, Llej;->d:Llek;

    if-nez v0, :cond_a

    .line 1444
    new-instance v0, Llek;

    invoke-direct {v0}, Llek;-><init>()V

    iput-object v0, p0, Llej;->d:Llek;

    .line 1446
    :cond_a
    iget-object v0, p0, Llej;->d:Llek;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1450
    :sswitch_6
    const/16 v0, 0x29

    .line 1451
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1452
    iget-object v0, p0, Llej;->e:[D

    if-nez v0, :cond_c

    move v0, v1

    .line 1453
    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [D

    .line 1454
    if-eqz v0, :cond_b

    .line 1455
    iget-object v3, p0, Llej;->e:[D

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1457
    :cond_b
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 1458
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1459
    invoke-virtual {p1}, Llxy;->a()I

    .line 1457
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1452
    :cond_c
    iget-object v0, p0, Llej;->e:[D

    array-length v0, v0

    goto :goto_6

    .line 1462
    :cond_d
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1463
    iput-object v2, p0, Llej;->e:[D

    goto/16 :goto_0

    .line 1467
    :sswitch_7
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1468
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1469
    div-int/lit8 v3, v0, 0x8

    .line 1470
    iget-object v0, p0, Llej;->e:[D

    if-nez v0, :cond_f

    move v0, v1

    .line 1471
    :goto_8
    add-int/2addr v3, v0

    new-array v3, v3, [D

    .line 1472
    if-eqz v0, :cond_e

    .line 1473
    iget-object v4, p0, Llej;->e:[D

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1475
    :cond_e
    :goto_9
    array-length v4, v3

    if-ge v0, v4, :cond_10

    .line 1476
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1475
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1470
    :cond_f
    iget-object v0, p0, Llej;->e:[D

    array-length v0, v0

    goto :goto_8

    .line 1478
    :cond_10
    iput-object v3, p0, Llej;->e:[D

    .line 1479
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1483
    :sswitch_8
    iget-object v0, p0, Llej;->f:Lldg;

    if-nez v0, :cond_11

    .line 1484
    new-instance v0, Lldg;

    invoke-direct {v0}, Lldg;-><init>()V

    iput-object v0, p0, Llej;->f:Lldg;

    .line 1486
    :cond_11
    iget-object v0, p0, Llej;->f:Lldg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1379
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

    .line 311
    iget-object v0, p0, Llej;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Llej;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 312
    :goto_0
    iget-object v2, p0, Llej;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 313
    const/4 v2, 0x1

    iget-object v3, p0, Llej;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Llej;->b:Llel;

    if-eqz v0, :cond_1

    .line 317
    const/4 v0, 0x2

    iget-object v2, p0, Llej;->b:Llel;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 319
    :cond_1
    iget-object v0, p0, Llej;->c:Llel;

    if-eqz v0, :cond_2

    .line 320
    const/4 v0, 0x3

    iget-object v2, p0, Llej;->c:Llel;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 322
    :cond_2
    iget-object v0, p0, Llej;->d:Llek;

    if-eqz v0, :cond_3

    .line 323
    const/4 v0, 0x4

    iget-object v2, p0, Llej;->d:Llek;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 325
    :cond_3
    iget-object v0, p0, Llej;->e:[D

    if-eqz v0, :cond_4

    iget-object v0, p0, Llej;->e:[D

    array-length v0, v0

    if-lez v0, :cond_4

    .line 326
    :goto_1
    iget-object v0, p0, Llej;->e:[D

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 327
    const/4 v0, 0x5

    iget-object v2, p0, Llej;->e:[D

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    :cond_4
    iget-object v0, p0, Llej;->f:Lldg;

    if-eqz v0, :cond_5

    .line 331
    const/4 v0, 0x6

    iget-object v1, p0, Llej;->f:Lldg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 333
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 334
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 339
    iget-object v1, p0, Llej;->a:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Llej;->a:[I

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    .line 341
    :goto_0
    iget-object v3, p0, Llej;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 342
    iget-object v3, p0, Llej;->a:[I

    aget v3, v3, v0

    .line 344
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    add-int v0, v2, v1

    .line 347
    iget-object v1, p0, Llej;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 349
    :goto_1
    iget-object v1, p0, Llej;->b:Llel;

    if-eqz v1, :cond_1

    .line 350
    const/4 v1, 0x2

    iget-object v2, p0, Llej;->b:Llel;

    .line 351
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_1
    iget-object v1, p0, Llej;->c:Llel;

    if-eqz v1, :cond_2

    .line 354
    const/4 v1, 0x3

    iget-object v2, p0, Llej;->c:Llel;

    .line 355
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_2
    iget-object v1, p0, Llej;->d:Llek;

    if-eqz v1, :cond_3

    .line 358
    const/4 v1, 0x4

    iget-object v2, p0, Llej;->d:Llek;

    .line 359
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_3
    iget-object v1, p0, Llej;->e:[D

    if-eqz v1, :cond_4

    iget-object v1, p0, Llej;->e:[D

    array-length v1, v1

    if-lez v1, :cond_4

    .line 362
    iget-object v1, p0, Llej;->e:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    .line 363
    add-int/2addr v0, v1

    .line 364
    iget-object v1, p0, Llej;->e:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 366
    :cond_4
    iget-object v1, p0, Llej;->f:Lldg;

    if-eqz v1, :cond_5

    .line 367
    const/4 v1, 0x6

    iget-object v2, p0, Llej;->f:Lldg;

    .line 368
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_1
.end method
