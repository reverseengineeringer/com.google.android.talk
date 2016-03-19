.class public final Lkkl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:[Lkja;

.field public c:[Lkih;

.field public d:Lkih;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1363
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2368
    iput-object v1, p0, Lkkl;->a:Lkii;

    .line 2369
    invoke-static {}, Lkja;->d()[Lkja;

    move-result-object v0

    iput-object v0, p0, Lkkl;->b:[Lkja;

    .line 2370
    invoke-static {}, Lkih;->d()[Lkih;

    move-result-object v0

    iput-object v0, p0, Lkkl;->c:[Lkih;

    .line 2371
    iput-object v1, p0, Lkkl;->d:Lkih;

    .line 2372
    iput-object v1, p0, Lkkl;->eD:Llyd;

    .line 2373
    const/4 v0, -0x1

    iput v0, p0, Lkkl;->eE:I

    .line 1365
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2442
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2443
    sparse-switch v0, :sswitch_data_0

    .line 2447
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2448
    :sswitch_0
    return-object p0

    .line 2453
    :sswitch_1
    iget-object v0, p0, Lkkl;->a:Lkii;

    if-nez v0, :cond_1

    .line 2454
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkkl;->a:Lkii;

    .line 2456
    :cond_1
    iget-object v0, p0, Lkkl;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2460
    :sswitch_2
    const/16 v0, 0x12

    .line 2461
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2462
    iget-object v0, p0, Lkkl;->b:[Lkja;

    if-nez v0, :cond_3

    move v0, v1

    .line 2463
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkja;

    .line 2465
    if-eqz v0, :cond_2

    .line 2466
    iget-object v3, p0, Lkkl;->b:[Lkja;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2468
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2469
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 2470
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2471
    invoke-virtual {p1}, Llxy;->a()I

    .line 2468
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2462
    :cond_3
    iget-object v0, p0, Lkkl;->b:[Lkja;

    array-length v0, v0

    goto :goto_1

    .line 2474
    :cond_4
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 2475
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2476
    iput-object v2, p0, Lkkl;->b:[Lkja;

    goto :goto_0

    .line 2480
    :sswitch_3
    const/16 v0, 0x1a

    .line 2481
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2482
    iget-object v0, p0, Lkkl;->c:[Lkih;

    if-nez v0, :cond_6

    move v0, v1

    .line 2483
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkih;

    .line 2485
    if-eqz v0, :cond_5

    .line 2486
    iget-object v3, p0, Lkkl;->c:[Lkih;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2488
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2489
    new-instance v3, Lkih;

    invoke-direct {v3}, Lkih;-><init>()V

    aput-object v3, v2, v0

    .line 2490
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2491
    invoke-virtual {p1}, Llxy;->a()I

    .line 2488
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2482
    :cond_6
    iget-object v0, p0, Lkkl;->c:[Lkih;

    array-length v0, v0

    goto :goto_3

    .line 2494
    :cond_7
    new-instance v3, Lkih;

    invoke-direct {v3}, Lkih;-><init>()V

    aput-object v3, v2, v0

    .line 2495
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2496
    iput-object v2, p0, Lkkl;->c:[Lkih;

    goto/16 :goto_0

    .line 2500
    :sswitch_4
    iget-object v0, p0, Lkkl;->d:Lkih;

    if-nez v0, :cond_8

    .line 2501
    new-instance v0, Lkih;

    invoke-direct {v0}, Lkih;-><init>()V

    iput-object v0, p0, Lkkl;->d:Lkih;

    .line 2503
    :cond_8
    iget-object v0, p0, Lkkl;->d:Lkih;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2443
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1380
    iget-object v0, p0, Lkkl;->a:Lkii;

    if-eqz v0, :cond_0

    .line 1381
    const/4 v0, 0x1

    iget-object v2, p0, Lkkl;->a:Lkii;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 1383
    :cond_0
    iget-object v0, p0, Lkkl;->b:[Lkja;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkkl;->b:[Lkja;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1384
    :goto_0
    iget-object v2, p0, Lkkl;->b:[Lkja;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1385
    iget-object v2, p0, Lkkl;->b:[Lkja;

    aget-object v2, v2, v0

    .line 1386
    if-eqz v2, :cond_1

    .line 1387
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 1384
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    :cond_2
    iget-object v0, p0, Lkkl;->c:[Lkih;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkkl;->c:[Lkih;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1392
    :goto_1
    iget-object v0, p0, Lkkl;->c:[Lkih;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 1393
    iget-object v0, p0, Lkkl;->c:[Lkih;

    aget-object v0, v0, v1

    .line 1394
    if-eqz v0, :cond_3

    .line 1395
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 1392
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1399
    :cond_4
    iget-object v0, p0, Lkkl;->d:Lkih;

    if-eqz v0, :cond_5

    .line 1400
    const/4 v0, 0x4

    iget-object v1, p0, Lkkl;->d:Lkih;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1402
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1403
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1407
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1408
    iget-object v2, p0, Lkkl;->a:Lkii;

    if-eqz v2, :cond_0

    .line 1409
    const/4 v2, 0x1

    iget-object v3, p0, Lkkl;->a:Lkii;

    .line 1410
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1412
    :cond_0
    iget-object v2, p0, Lkkl;->b:[Lkja;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkkl;->b:[Lkja;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 1413
    :goto_0
    iget-object v3, p0, Lkkl;->b:[Lkja;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1414
    iget-object v3, p0, Lkkl;->b:[Lkja;

    aget-object v3, v3, v0

    .line 1415
    if-eqz v3, :cond_1

    .line 1416
    const/4 v4, 0x2

    .line 1417
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1413
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1421
    :cond_3
    iget-object v2, p0, Lkkl;->c:[Lkih;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkkl;->c:[Lkih;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 1422
    :goto_1
    iget-object v2, p0, Lkkl;->c:[Lkih;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1423
    iget-object v2, p0, Lkkl;->c:[Lkih;

    aget-object v2, v2, v1

    .line 1424
    if-eqz v2, :cond_4

    .line 1425
    const/4 v3, 0x3

    .line 1426
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1422
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1430
    :cond_5
    iget-object v1, p0, Lkkl;->d:Lkih;

    if-eqz v1, :cond_6

    .line 1431
    const/4 v1, 0x4

    iget-object v2, p0, Lkkl;->d:Lkih;

    .line 1432
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1434
    :cond_6
    return v0
.end method
