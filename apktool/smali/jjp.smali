.class public final Ljjp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljkc;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:[Ljjl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1326
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2331
    iput-object v1, p0, Ljjp;->a:Ljava/lang/Integer;

    .line 2332
    invoke-static {}, Ljkc;->d()[Ljkc;

    move-result-object v0

    iput-object v0, p0, Ljjp;->b:[Ljkc;

    .line 2333
    iput-object v1, p0, Ljjp;->c:Ljava/lang/Integer;

    .line 2334
    iput-object v1, p0, Ljjp;->d:Ljava/lang/String;

    .line 2335
    invoke-static {}, Ljjl;->d()[Ljjl;

    move-result-object v0

    iput-object v0, p0, Ljjp;->e:[Ljjl;

    .line 2336
    iput-object v1, p0, Ljjp;->eD:Llyd;

    .line 2337
    const/4 v0, -0x1

    iput v0, p0, Ljjp;->eE:I

    .line 1328
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2413
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2414
    sparse-switch v0, :sswitch_data_0

    .line 2418
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2419
    :sswitch_0
    return-object p0

    .line 2424
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2425
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2461
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjp;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2467
    :sswitch_3
    const/16 v0, 0x12

    .line 2468
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2469
    iget-object v0, p0, Ljjp;->b:[Ljkc;

    if-nez v0, :cond_2

    move v0, v1

    .line 2470
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljkc;

    .line 2472
    if-eqz v0, :cond_1

    .line 2473
    iget-object v3, p0, Ljjp;->b:[Ljkc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2475
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2476
    new-instance v3, Ljkc;

    invoke-direct {v3}, Ljkc;-><init>()V

    aput-object v3, v2, v0

    .line 2477
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2478
    invoke-virtual {p1}, Llxy;->a()I

    .line 2475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2469
    :cond_2
    iget-object v0, p0, Ljjp;->b:[Ljkc;

    array-length v0, v0

    goto :goto_1

    .line 2481
    :cond_3
    new-instance v3, Ljkc;

    invoke-direct {v3}, Ljkc;-><init>()V

    aput-object v3, v2, v0

    .line 2482
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2483
    iput-object v2, p0, Ljjp;->b:[Ljkc;

    goto :goto_0

    .line 2487
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjp;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2491
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjp;->d:Ljava/lang/String;

    goto :goto_0

    .line 2495
    :sswitch_6
    const/16 v0, 0x2a

    .line 2496
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2497
    iget-object v0, p0, Ljjp;->e:[Ljjl;

    if-nez v0, :cond_5

    move v0, v1

    .line 2498
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljjl;

    .line 2500
    if-eqz v0, :cond_4

    .line 2501
    iget-object v3, p0, Ljjp;->e:[Ljjl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2503
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2504
    new-instance v3, Ljjl;

    invoke-direct {v3}, Ljjl;-><init>()V

    aput-object v3, v2, v0

    .line 2505
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2506
    invoke-virtual {p1}, Llxy;->a()I

    .line 2503
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2497
    :cond_5
    iget-object v0, p0, Ljjp;->e:[Ljjl;

    array-length v0, v0

    goto :goto_3

    .line 2509
    :cond_6
    new-instance v3, Ljjl;

    invoke-direct {v3}, Ljjl;-><init>()V

    aput-object v3, v2, v0

    .line 2510
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2511
    iput-object v2, p0, Ljjp;->e:[Ljjl;

    goto/16 :goto_0

    .line 2414
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch

    .line 2425
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0xcf -> :sswitch_2
        0x12c -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_2
        0x259 -> :sswitch_2
        0x25a -> :sswitch_2
        0x25b -> :sswitch_2
        0x25c -> :sswitch_2
        0x25d -> :sswitch_2
        0x25e -> :sswitch_2
        0x2bc -> :sswitch_2
        0x2bd -> :sswitch_2
        0x320 -> :sswitch_2
        0x321 -> :sswitch_2
        0x322 -> :sswitch_2
        0x323 -> :sswitch_2
        0x384 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1344
    iget-object v0, p0, Ljjp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1345
    const/4 v0, 0x1

    iget-object v2, p0, Ljjp;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 1347
    :cond_0
    iget-object v0, p0, Ljjp;->b:[Ljkc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljjp;->b:[Ljkc;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1348
    :goto_0
    iget-object v2, p0, Ljjp;->b:[Ljkc;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1349
    iget-object v2, p0, Ljjp;->b:[Ljkc;

    aget-object v2, v2, v0

    .line 1350
    if-eqz v2, :cond_1

    .line 1351
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1348
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
    :cond_2
    iget-object v0, p0, Ljjp;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1356
    const/4 v0, 0x3

    iget-object v2, p0, Ljjp;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 1358
    :cond_3
    iget-object v0, p0, Ljjp;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1359
    const/4 v0, 0x4

    iget-object v2, p0, Ljjp;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 1361
    :cond_4
    iget-object v0, p0, Ljjp;->e:[Ljjl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljjp;->e:[Ljjl;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 1362
    :goto_1
    iget-object v0, p0, Ljjp;->e:[Ljjl;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 1363
    iget-object v0, p0, Ljjp;->e:[Ljjl;

    aget-object v0, v0, v1

    .line 1364
    if-eqz v0, :cond_5

    .line 1365
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1362
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1369
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1370
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1374
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1375
    iget-object v2, p0, Ljjp;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1376
    const/4 v2, 0x1

    iget-object v3, p0, Ljjp;->a:Ljava/lang/Integer;

    .line 1377
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1379
    :cond_0
    iget-object v2, p0, Ljjp;->b:[Ljkc;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljjp;->b:[Ljkc;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 1380
    :goto_0
    iget-object v3, p0, Ljjp;->b:[Ljkc;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1381
    iget-object v3, p0, Ljjp;->b:[Ljkc;

    aget-object v3, v3, v0

    .line 1382
    if-eqz v3, :cond_1

    .line 1383
    const/4 v4, 0x2

    .line 1384
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1380
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1388
    :cond_3
    iget-object v2, p0, Ljjp;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 1389
    const/4 v2, 0x3

    iget-object v3, p0, Ljjp;->c:Ljava/lang/Integer;

    .line 1390
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1392
    :cond_4
    iget-object v2, p0, Ljjp;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1393
    const/4 v2, 0x4

    iget-object v3, p0, Ljjp;->d:Ljava/lang/String;

    .line 1394
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1396
    :cond_5
    iget-object v2, p0, Ljjp;->e:[Ljjl;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljjp;->e:[Ljjl;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 1397
    :goto_1
    iget-object v2, p0, Ljjp;->e:[Ljjl;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1398
    iget-object v2, p0, Ljjp;->e:[Ljjl;

    aget-object v2, v2, v1

    .line 1399
    if-eqz v2, :cond_6

    .line 1400
    const/4 v3, 0x5

    .line 1401
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1397
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1405
    :cond_7
    return v0
.end method
