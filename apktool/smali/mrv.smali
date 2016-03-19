.class public final Lmrv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmrv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lluw;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:[Lmrl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1367
    invoke-static {}, Lluw;->d()[Lluw;

    move-result-object v0

    iput-object v0, p0, Lmrv;->a:[Lluw;

    .line 1368
    iput-object v1, p0, Lmrv;->b:Ljava/lang/Integer;

    .line 1369
    iput-object v1, p0, Lmrv;->c:Ljava/lang/Integer;

    .line 1370
    invoke-static {}, Lmrl;->d()[Lmrl;

    move-result-object v0

    iput-object v0, p0, Lmrv;->d:[Lmrl;

    .line 1371
    iput-object v1, p0, Lmrv;->eD:Llyd;

    .line 1372
    const/4 v0, -0x1

    iput v0, p0, Lmrv;->eE:I

    .line 364
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1441
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1442
    sparse-switch v0, :sswitch_data_0

    .line 1446
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    :sswitch_0
    return-object p0

    .line 1452
    :sswitch_1
    const/16 v0, 0xa

    .line 1453
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1454
    iget-object v0, p0, Lmrv;->a:[Lluw;

    if-nez v0, :cond_2

    move v0, v1

    .line 1455
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lluw;

    .line 1457
    if-eqz v0, :cond_1

    .line 1458
    iget-object v3, p0, Lmrv;->a:[Lluw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1460
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1461
    new-instance v3, Lluw;

    invoke-direct {v3}, Lluw;-><init>()V

    aput-object v3, v2, v0

    .line 1462
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1463
    invoke-virtual {p1}, Llxy;->a()I

    .line 1460
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1454
    :cond_2
    iget-object v0, p0, Lmrv;->a:[Lluw;

    array-length v0, v0

    goto :goto_1

    .line 1466
    :cond_3
    new-instance v3, Lluw;

    invoke-direct {v3}, Lluw;-><init>()V

    aput-object v3, v2, v0

    .line 1467
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1468
    iput-object v2, p0, Lmrv;->a:[Lluw;

    goto :goto_0

    .line 1472
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmrv;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1476
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmrv;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1480
    :sswitch_4
    const/16 v0, 0x22

    .line 1481
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1482
    iget-object v0, p0, Lmrv;->d:[Lmrl;

    if-nez v0, :cond_5

    move v0, v1

    .line 1483
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmrl;

    .line 1485
    if-eqz v0, :cond_4

    .line 1486
    iget-object v3, p0, Lmrv;->d:[Lmrl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1488
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1489
    new-instance v3, Lmrl;

    invoke-direct {v3}, Lmrl;-><init>()V

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
    iget-object v0, p0, Lmrv;->d:[Lmrl;

    array-length v0, v0

    goto :goto_3

    .line 1494
    :cond_6
    new-instance v3, Lmrl;

    invoke-direct {v3}, Lmrl;-><init>()V

    aput-object v3, v2, v0

    .line 1495
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1496
    iput-object v2, p0, Lmrv;->d:[Lmrl;

    goto/16 :goto_0

    .line 1442
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lmrv;->a:[Lluw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmrv;->a:[Lluw;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 380
    :goto_0
    iget-object v2, p0, Lmrv;->a:[Lluw;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 381
    iget-object v2, p0, Lmrv;->a:[Lluw;

    aget-object v2, v2, v0

    .line 382
    if-eqz v2, :cond_0

    .line 383
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lmrv;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 388
    const/4 v0, 0x2

    iget-object v2, p0, Lmrv;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 390
    :cond_2
    iget-object v0, p0, Lmrv;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 391
    const/4 v0, 0x3

    iget-object v2, p0, Lmrv;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 393
    :cond_3
    iget-object v0, p0, Lmrv;->d:[Lmrl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmrv;->d:[Lmrl;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 394
    :goto_1
    iget-object v0, p0, Lmrv;->d:[Lmrl;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 395
    iget-object v0, p0, Lmrv;->d:[Lmrl;

    aget-object v0, v0, v1

    .line 396
    if-eqz v0, :cond_4

    .line 397
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 394
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 402
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 407
    iget-object v2, p0, Lmrv;->a:[Lluw;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmrv;->a:[Lluw;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 408
    :goto_0
    iget-object v3, p0, Lmrv;->a:[Lluw;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 409
    iget-object v3, p0, Lmrv;->a:[Lluw;

    aget-object v3, v3, v0

    .line 410
    if-eqz v3, :cond_0

    .line 411
    const/4 v4, 0x1

    .line 412
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 408
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 416
    :cond_2
    iget-object v2, p0, Lmrv;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 417
    const/4 v2, 0x2

    iget-object v3, p0, Lmrv;->b:Ljava/lang/Integer;

    .line 418
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 420
    :cond_3
    iget-object v2, p0, Lmrv;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 421
    const/4 v2, 0x3

    iget-object v3, p0, Lmrv;->c:Ljava/lang/Integer;

    .line 422
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 424
    :cond_4
    iget-object v2, p0, Lmrv;->d:[Lmrl;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmrv;->d:[Lmrl;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 425
    :goto_1
    iget-object v2, p0, Lmrv;->d:[Lmrl;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 426
    iget-object v2, p0, Lmrv;->d:[Lmrl;

    aget-object v2, v2, v1

    .line 427
    if-eqz v2, :cond_5

    .line 428
    const/4 v3, 0x4

    .line 429
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 425
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    :cond_6
    return v0
.end method
