.class public final Llqs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lltc;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Llse;

.field public f:[Llqt;

.field public g:I

.field public h:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-direct {p0}, Llyb;-><init>()V

    .line 314
    iput-object v1, p0, Llqs;->a:Ljava/lang/String;

    .line 315
    invoke-static {}, Lltc;->d()[Lltc;

    move-result-object v0

    iput-object v0, p0, Llqs;->b:[Lltc;

    .line 316
    iput-object v1, p0, Llqs;->c:Ljava/lang/Long;

    .line 317
    iput-object v1, p0, Llqs;->d:Ljava/lang/Long;

    .line 318
    iput-object v1, p0, Llqs;->e:Llse;

    .line 319
    invoke-static {}, Llqt;->d()[Llqt;

    move-result-object v0

    iput-object v0, p0, Llqs;->f:[Llqt;

    .line 320
    const/high16 v0, -0x80000000

    iput v0, p0, Llqs;->g:I

    .line 321
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llqs;->h:[I

    .line 322
    iput-object v1, p0, Llqs;->eD:Llyd;

    .line 323
    const/4 v0, -0x1

    iput v0, p0, Llqs;->eE:I

    .line 324
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1427
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1428
    sparse-switch v0, :sswitch_data_0

    .line 1432
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1433
    :sswitch_0
    return-object p0

    .line 1438
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llqs;->a:Ljava/lang/String;

    goto :goto_0

    .line 1442
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llqs;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1446
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llqs;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1450
    :sswitch_4
    const/16 v0, 0x2a

    .line 1451
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1452
    iget-object v0, p0, Llqs;->f:[Llqt;

    if-nez v0, :cond_2

    move v0, v1

    .line 1453
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llqt;

    .line 1455
    if-eqz v0, :cond_1

    .line 1456
    iget-object v3, p0, Llqs;->f:[Llqt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1458
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1459
    new-instance v3, Llqt;

    invoke-direct {v3}, Llqt;-><init>()V

    aput-object v3, v2, v0

    .line 1460
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1461
    invoke-virtual {p1}, Llxy;->a()I

    .line 1458
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1452
    :cond_2
    iget-object v0, p0, Llqs;->f:[Llqt;

    array-length v0, v0

    goto :goto_1

    .line 1464
    :cond_3
    new-instance v3, Llqt;

    invoke-direct {v3}, Llqt;-><init>()V

    aput-object v3, v2, v0

    .line 1465
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1466
    iput-object v2, p0, Llqs;->f:[Llqt;

    goto :goto_0

    .line 1470
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1471
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1474
    :pswitch_0
    iput v0, p0, Llqs;->g:I

    goto :goto_0

    .line 1480
    :sswitch_6
    const/16 v0, 0x3a

    .line 1481
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1482
    iget-object v0, p0, Llqs;->b:[Lltc;

    if-nez v0, :cond_5

    move v0, v1

    .line 1483
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lltc;

    .line 1485
    if-eqz v0, :cond_4

    .line 1486
    iget-object v3, p0, Llqs;->b:[Lltc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1488
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1489
    new-instance v3, Lltc;

    invoke-direct {v3}, Lltc;-><init>()V

    aput-object v3, v2, v0

    .line 1490
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1491
    invoke-virtual {p1}, Llxy;->a()I

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1482
    :cond_5
    iget-object v0, p0, Llqs;->b:[Lltc;

    array-length v0, v0

    goto :goto_3

    .line 1494
    :cond_6
    new-instance v3, Lltc;

    invoke-direct {v3}, Lltc;-><init>()V

    aput-object v3, v2, v0

    .line 1495
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1496
    iput-object v2, p0, Llqs;->b:[Lltc;

    goto/16 :goto_0

    .line 1500
    :sswitch_7
    iget-object v0, p0, Llqs;->e:Llse;

    if-nez v0, :cond_7

    .line 1501
    new-instance v0, Llse;

    invoke-direct {v0}, Llse;-><init>()V

    iput-object v0, p0, Llqs;->e:Llse;

    .line 1503
    :cond_7
    iget-object v0, p0, Llqs;->e:Llse;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1507
    :sswitch_8
    const/16 v0, 0x50

    .line 1508
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1509
    iget-object v0, p0, Llqs;->h:[I

    if-nez v0, :cond_9

    move v0, v1

    .line 1510
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1511
    if-eqz v0, :cond_8

    .line 1512
    iget-object v3, p0, Llqs;->h:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1514
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 1515
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 1516
    invoke-virtual {p1}, Llxy;->a()I

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1509
    :cond_9
    iget-object v0, p0, Llqs;->h:[I

    array-length v0, v0

    goto :goto_5

    .line 1519
    :cond_a
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 1520
    iput-object v2, p0, Llqs;->h:[I

    goto/16 :goto_0

    .line 1524
    :sswitch_9
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1525
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1528
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 1529
    :goto_7
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_b

    .line 1530
    invoke-virtual {p1}, Llxy;->f()I

    .line 1531
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1533
    :cond_b
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 1534
    iget-object v2, p0, Llqs;->h:[I

    if-nez v2, :cond_d

    move v2, v1

    .line 1535
    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 1536
    if-eqz v2, :cond_c

    .line 1537
    iget-object v4, p0, Llqs;->h:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1539
    :cond_c
    :goto_9
    array-length v4, v0

    if-ge v2, v4, :cond_e

    .line 1540
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 1539
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1534
    :cond_d
    iget-object v2, p0, Llqs;->h:[I

    array-length v2, v2

    goto :goto_8

    .line 1542
    :cond_e
    iput-object v0, p0, Llqs;->h:[I

    .line 1543
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1428
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

    .line 1471
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

    .line 329
    iget-object v0, p0, Llqs;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x1

    iget-object v2, p0, Llqs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 332
    :cond_0
    iget-object v0, p0, Llqs;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 333
    const/4 v0, 0x2

    iget-object v2, p0, Llqs;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 335
    :cond_1
    iget-object v0, p0, Llqs;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 336
    const/4 v0, 0x3

    iget-object v2, p0, Llqs;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 338
    :cond_2
    iget-object v0, p0, Llqs;->f:[Llqt;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llqs;->f:[Llqt;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 339
    :goto_0
    iget-object v2, p0, Llqs;->f:[Llqt;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 340
    iget-object v2, p0, Llqs;->f:[Llqt;

    aget-object v2, v2, v0

    .line 341
    if-eqz v2, :cond_3

    .line 342
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 339
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_4
    iget v0, p0, Llqs;->g:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_5

    .line 347
    const/4 v0, 0x6

    iget v2, p0, Llqs;->g:I

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 349
    :cond_5
    iget-object v0, p0, Llqs;->b:[Lltc;

    if-eqz v0, :cond_7

    iget-object v0, p0, Llqs;->b:[Lltc;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 350
    :goto_1
    iget-object v2, p0, Llqs;->b:[Lltc;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 351
    iget-object v2, p0, Llqs;->b:[Lltc;

    aget-object v2, v2, v0

    .line 352
    if-eqz v2, :cond_6

    .line 353
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 350
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_7
    iget-object v0, p0, Llqs;->e:Llse;

    if-eqz v0, :cond_8

    .line 358
    const/16 v0, 0x9

    iget-object v2, p0, Llqs;->e:Llse;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 360
    :cond_8
    iget-object v0, p0, Llqs;->h:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Llqs;->h:[I

    array-length v0, v0

    if-lez v0, :cond_9

    .line 361
    :goto_2
    iget-object v0, p0, Llqs;->h:[I

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 362
    const/16 v0, 0xa

    iget-object v2, p0, Llqs;->h:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 365
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 366
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 371
    iget-object v2, p0, Llqs;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 372
    const/4 v2, 0x1

    iget-object v3, p0, Llqs;->a:Ljava/lang/String;

    .line 373
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 375
    :cond_0
    iget-object v2, p0, Llqs;->c:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 376
    const/4 v2, 0x2

    iget-object v3, p0, Llqs;->c:Ljava/lang/Long;

    .line 377
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 379
    :cond_1
    iget-object v2, p0, Llqs;->d:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 380
    const/4 v2, 0x3

    iget-object v3, p0, Llqs;->d:Ljava/lang/Long;

    .line 381
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 383
    :cond_2
    iget-object v2, p0, Llqs;->f:[Llqt;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llqs;->f:[Llqt;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 384
    :goto_0
    iget-object v3, p0, Llqs;->f:[Llqt;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 385
    iget-object v3, p0, Llqs;->f:[Llqt;

    aget-object v3, v3, v0

    .line 386
    if-eqz v3, :cond_3

    .line 387
    const/4 v4, 0x5

    .line 388
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 384
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 392
    :cond_5
    iget v2, p0, Llqs;->g:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_6

    .line 393
    const/4 v2, 0x6

    iget v3, p0, Llqs;->g:I

    .line 394
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 396
    :cond_6
    iget-object v2, p0, Llqs;->b:[Lltc;

    if-eqz v2, :cond_9

    iget-object v2, p0, Llqs;->b:[Lltc;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 397
    :goto_1
    iget-object v3, p0, Llqs;->b:[Lltc;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 398
    iget-object v3, p0, Llqs;->b:[Lltc;

    aget-object v3, v3, v0

    .line 399
    if-eqz v3, :cond_7

    .line 400
    const/4 v4, 0x7

    .line 401
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 397
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v2

    .line 405
    :cond_9
    iget-object v2, p0, Llqs;->e:Llse;

    if-eqz v2, :cond_a

    .line 406
    const/16 v2, 0x9

    iget-object v3, p0, Llqs;->e:Llse;

    .line 407
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 409
    :cond_a
    iget-object v2, p0, Llqs;->h:[I

    if-eqz v2, :cond_c

    iget-object v2, p0, Llqs;->h:[I

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v1

    .line 411
    :goto_2
    iget-object v3, p0, Llqs;->h:[I

    array-length v3, v3

    if-ge v1, v3, :cond_b

    .line 412
    iget-object v3, p0, Llqs;->h:[I

    aget v3, v3, v1

    .line 414
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 416
    :cond_b
    add-int/2addr v0, v2

    .line 417
    iget-object v1, p0, Llqs;->h:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 419
    :cond_c
    return v0
.end method
