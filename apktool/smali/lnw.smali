.class public final Llnw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lloi;

.field public c:Lloz;

.field public d:Llhs;

.field public e:[Llnl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1357
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2362
    iput-object v1, p0, Llnw;->a:Ljava/lang/Integer;

    .line 2363
    iput-object v1, p0, Llnw;->b:Lloi;

    .line 2364
    iput-object v1, p0, Llnw;->c:Lloz;

    .line 2365
    iput-object v1, p0, Llnw;->d:Llhs;

    .line 2366
    invoke-static {}, Llnl;->d()[Llnl;

    move-result-object v0

    iput-object v0, p0, Llnw;->e:[Llnl;

    .line 2367
    iput-object v1, p0, Llnw;->eD:Llyd;

    .line 2368
    const/4 v0, -0x1

    iput v0, p0, Llnw;->eE:I

    .line 1359
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2434
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2435
    sparse-switch v0, :sswitch_data_0

    .line 2439
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2440
    :sswitch_0
    return-object p0

    .line 2445
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2446
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2451
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llnw;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2457
    :sswitch_2
    iget-object v0, p0, Llnw;->b:Lloi;

    if-nez v0, :cond_1

    .line 2458
    new-instance v0, Lloi;

    invoke-direct {v0}, Lloi;-><init>()V

    iput-object v0, p0, Llnw;->b:Lloi;

    .line 2460
    :cond_1
    iget-object v0, p0, Llnw;->b:Lloi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2464
    :sswitch_3
    iget-object v0, p0, Llnw;->c:Lloz;

    if-nez v0, :cond_2

    .line 2465
    new-instance v0, Lloz;

    invoke-direct {v0}, Lloz;-><init>()V

    iput-object v0, p0, Llnw;->c:Lloz;

    .line 2467
    :cond_2
    iget-object v0, p0, Llnw;->c:Lloz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2471
    :sswitch_4
    iget-object v0, p0, Llnw;->d:Llhs;

    if-nez v0, :cond_3

    .line 2472
    new-instance v0, Llhs;

    invoke-direct {v0}, Llhs;-><init>()V

    iput-object v0, p0, Llnw;->d:Llhs;

    .line 2474
    :cond_3
    iget-object v0, p0, Llnw;->d:Llhs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2478
    :sswitch_5
    const/16 v0, 0x2a

    .line 2479
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2480
    iget-object v0, p0, Llnw;->e:[Llnl;

    if-nez v0, :cond_5

    move v0, v1

    .line 2481
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llnl;

    .line 2483
    if-eqz v0, :cond_4

    .line 2484
    iget-object v3, p0, Llnw;->e:[Llnl;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2486
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2487
    new-instance v3, Llnl;

    invoke-direct {v3}, Llnl;-><init>()V

    aput-object v3, v2, v0

    .line 2488
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2489
    invoke-virtual {p1}, Llxy;->a()I

    .line 2486
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2480
    :cond_5
    iget-object v0, p0, Llnw;->e:[Llnl;

    array-length v0, v0

    goto :goto_1

    .line 2492
    :cond_6
    new-instance v3, Llnl;

    invoke-direct {v3}, Llnl;-><init>()V

    aput-object v3, v2, v0

    .line 2493
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2494
    iput-object v2, p0, Llnw;->e:[Llnl;

    goto/16 :goto_0

    .line 2435
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 2446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1375
    iget-object v0, p0, Llnw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1376
    const/4 v0, 0x1

    iget-object v1, p0, Llnw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1378
    :cond_0
    iget-object v0, p0, Llnw;->b:Lloi;

    if-eqz v0, :cond_1

    .line 1379
    const/4 v0, 0x2

    iget-object v1, p0, Llnw;->b:Lloi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1381
    :cond_1
    iget-object v0, p0, Llnw;->c:Lloz;

    if-eqz v0, :cond_2

    .line 1382
    const/4 v0, 0x3

    iget-object v1, p0, Llnw;->c:Lloz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1384
    :cond_2
    iget-object v0, p0, Llnw;->d:Llhs;

    if-eqz v0, :cond_3

    .line 1385
    const/4 v0, 0x4

    iget-object v1, p0, Llnw;->d:Llhs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1387
    :cond_3
    iget-object v0, p0, Llnw;->e:[Llnl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llnw;->e:[Llnl;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 1388
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llnw;->e:[Llnl;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1389
    iget-object v1, p0, Llnw;->e:[Llnl;

    aget-object v1, v1, v0

    .line 1390
    if-eqz v1, :cond_4

    .line 1391
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1388
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1395
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1396
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1400
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1401
    iget-object v1, p0, Llnw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1402
    const/4 v1, 0x1

    iget-object v2, p0, Llnw;->a:Ljava/lang/Integer;

    .line 1403
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1405
    :cond_0
    iget-object v1, p0, Llnw;->b:Lloi;

    if-eqz v1, :cond_1

    .line 1406
    const/4 v1, 0x2

    iget-object v2, p0, Llnw;->b:Lloi;

    .line 1407
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1409
    :cond_1
    iget-object v1, p0, Llnw;->c:Lloz;

    if-eqz v1, :cond_2

    .line 1410
    const/4 v1, 0x3

    iget-object v2, p0, Llnw;->c:Lloz;

    .line 1411
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1413
    :cond_2
    iget-object v1, p0, Llnw;->d:Llhs;

    if-eqz v1, :cond_3

    .line 1414
    const/4 v1, 0x4

    iget-object v2, p0, Llnw;->d:Llhs;

    .line 1415
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1417
    :cond_3
    iget-object v1, p0, Llnw;->e:[Llnl;

    if-eqz v1, :cond_6

    iget-object v1, p0, Llnw;->e:[Llnl;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 1418
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llnw;->e:[Llnl;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 1419
    iget-object v2, p0, Llnw;->e:[Llnl;

    aget-object v2, v2, v0

    .line 1420
    if-eqz v2, :cond_4

    .line 1421
    const/4 v3, 0x5

    .line 1422
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1418
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1426
    :cond_6
    return v0
.end method
