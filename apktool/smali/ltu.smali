.class public final Lltu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lltu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Lltw;

.field public c:[Lltv;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-direct {p0}, Llyb;-><init>()V

    .line 322
    iput-object v1, p0, Lltu;->a:Ljava/lang/Long;

    .line 323
    invoke-static {}, Lltw;->d()[Lltw;

    move-result-object v0

    iput-object v0, p0, Lltu;->b:[Lltw;

    .line 324
    invoke-static {}, Lltv;->d()[Lltv;

    move-result-object v0

    iput-object v0, p0, Lltu;->c:[Lltv;

    .line 325
    iput-object v1, p0, Lltu;->d:Ljava/lang/Integer;

    .line 326
    iput-object v1, p0, Lltu;->e:Ljava/lang/Integer;

    .line 327
    iput-object v1, p0, Lltu;->eD:Llyd;

    .line 328
    const/4 v0, -0x1

    iput v0, p0, Lltu;->eE:I

    .line 329
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1403
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1404
    sparse-switch v0, :sswitch_data_0

    .line 1408
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    :sswitch_0
    return-object p0

    .line 1414
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lltu;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1418
    :sswitch_2
    const/16 v0, 0x12

    .line 1419
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1420
    iget-object v0, p0, Lltu;->b:[Lltw;

    if-nez v0, :cond_2

    move v0, v1

    .line 1421
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lltw;

    .line 1423
    if-eqz v0, :cond_1

    .line 1424
    iget-object v3, p0, Lltu;->b:[Lltw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1426
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1427
    new-instance v3, Lltw;

    invoke-direct {v3}, Lltw;-><init>()V

    aput-object v3, v2, v0

    .line 1428
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1429
    invoke-virtual {p1}, Llxy;->a()I

    .line 1426
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1420
    :cond_2
    iget-object v0, p0, Lltu;->b:[Lltw;

    array-length v0, v0

    goto :goto_1

    .line 1432
    :cond_3
    new-instance v3, Lltw;

    invoke-direct {v3}, Lltw;-><init>()V

    aput-object v3, v2, v0

    .line 1433
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1434
    iput-object v2, p0, Lltu;->b:[Lltw;

    goto :goto_0

    .line 1438
    :sswitch_3
    const/16 v0, 0x1a

    .line 1439
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1440
    iget-object v0, p0, Lltu;->c:[Lltv;

    if-nez v0, :cond_5

    move v0, v1

    .line 1441
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lltv;

    .line 1443
    if-eqz v0, :cond_4

    .line 1444
    iget-object v3, p0, Lltu;->c:[Lltv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1446
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1447
    new-instance v3, Lltv;

    invoke-direct {v3}, Lltv;-><init>()V

    aput-object v3, v2, v0

    .line 1448
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1449
    invoke-virtual {p1}, Llxy;->a()I

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1440
    :cond_5
    iget-object v0, p0, Lltu;->c:[Lltv;

    array-length v0, v0

    goto :goto_3

    .line 1452
    :cond_6
    new-instance v3, Lltv;

    invoke-direct {v3}, Lltv;-><init>()V

    aput-object v3, v2, v0

    .line 1453
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1454
    iput-object v2, p0, Lltu;->c:[Lltv;

    goto/16 :goto_0

    .line 1458
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lltu;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1462
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lltu;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1404
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lltu;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iget-object v2, p0, Lltu;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 337
    :cond_0
    iget-object v0, p0, Lltu;->b:[Lltw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lltu;->b:[Lltw;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 338
    :goto_0
    iget-object v2, p0, Lltu;->b:[Lltw;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 339
    iget-object v2, p0, Lltu;->b:[Lltw;

    aget-object v2, v2, v0

    .line 340
    if-eqz v2, :cond_1

    .line 341
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 338
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lltu;->c:[Lltv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lltu;->c:[Lltv;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 346
    :goto_1
    iget-object v0, p0, Lltu;->c:[Lltv;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 347
    iget-object v0, p0, Lltu;->c:[Lltv;

    aget-object v0, v0, v1

    .line 348
    if-eqz v0, :cond_3

    .line 349
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 346
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    :cond_4
    iget-object v0, p0, Lltu;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 354
    const/4 v0, 0x4

    iget-object v1, p0, Lltu;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 356
    :cond_5
    iget-object v0, p0, Lltu;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 357
    const/4 v0, 0x5

    iget-object v1, p0, Lltu;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 359
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 360
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 365
    iget-object v2, p0, Lltu;->a:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 366
    const/4 v2, 0x1

    iget-object v3, p0, Lltu;->a:Ljava/lang/Long;

    .line 367
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 369
    :cond_0
    iget-object v2, p0, Lltu;->b:[Lltw;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lltu;->b:[Lltw;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 370
    :goto_0
    iget-object v3, p0, Lltu;->b:[Lltw;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 371
    iget-object v3, p0, Lltu;->b:[Lltw;

    aget-object v3, v3, v0

    .line 372
    if-eqz v3, :cond_1

    .line 373
    const/4 v4, 0x2

    .line 374
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 370
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 378
    :cond_3
    iget-object v2, p0, Lltu;->c:[Lltv;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lltu;->c:[Lltv;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 379
    :goto_1
    iget-object v2, p0, Lltu;->c:[Lltv;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 380
    iget-object v2, p0, Lltu;->c:[Lltv;

    aget-object v2, v2, v1

    .line 381
    if-eqz v2, :cond_4

    .line 382
    const/4 v3, 0x3

    .line 383
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 379
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 387
    :cond_5
    iget-object v1, p0, Lltu;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 388
    const/4 v1, 0x4

    iget-object v2, p0, Lltu;->d:Ljava/lang/Integer;

    .line 389
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_6
    iget-object v1, p0, Lltu;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 392
    const/4 v1, 0x5

    iget-object v2, p0, Lltu;->e:Ljava/lang/Integer;

    .line 393
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_7
    return v0
.end method
