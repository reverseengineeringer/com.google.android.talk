.class public final Llqj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Llqf;

.field public b:[Llqf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1417
    invoke-static {}, Llqf;->d()[Llqf;

    move-result-object v0

    iput-object v0, p0, Llqj;->a:[Llqf;

    .line 1418
    invoke-static {}, Llqf;->d()[Llqf;

    move-result-object v0

    iput-object v0, p0, Llqj;->b:[Llqf;

    .line 1419
    const/4 v0, 0x0

    iput-object v0, p0, Llqj;->eD:Llyd;

    .line 1420
    const/4 v0, -0x1

    iput v0, p0, Llqj;->eE:I

    .line 414
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1475
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1476
    sparse-switch v0, :sswitch_data_0

    .line 1480
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    :sswitch_0
    return-object p0

    .line 1486
    :sswitch_1
    const/16 v0, 0x22

    .line 1487
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1488
    iget-object v0, p0, Llqj;->a:[Llqf;

    if-nez v0, :cond_2

    move v0, v1

    .line 1489
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llqf;

    .line 1491
    if-eqz v0, :cond_1

    .line 1492
    iget-object v3, p0, Llqj;->a:[Llqf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1494
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1495
    new-instance v3, Llqf;

    invoke-direct {v3}, Llqf;-><init>()V

    aput-object v3, v2, v0

    .line 1496
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1497
    invoke-virtual {p1}, Llxy;->a()I

    .line 1494
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1488
    :cond_2
    iget-object v0, p0, Llqj;->a:[Llqf;

    array-length v0, v0

    goto :goto_1

    .line 1500
    :cond_3
    new-instance v3, Llqf;

    invoke-direct {v3}, Llqf;-><init>()V

    aput-object v3, v2, v0

    .line 1501
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1502
    iput-object v2, p0, Llqj;->a:[Llqf;

    goto :goto_0

    .line 1506
    :sswitch_2
    const/16 v0, 0x2a

    .line 1507
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1508
    iget-object v0, p0, Llqj;->b:[Llqf;

    if-nez v0, :cond_5

    move v0, v1

    .line 1509
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Llqf;

    .line 1511
    if-eqz v0, :cond_4

    .line 1512
    iget-object v3, p0, Llqj;->b:[Llqf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1514
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1515
    new-instance v3, Llqf;

    invoke-direct {v3}, Llqf;-><init>()V

    aput-object v3, v2, v0

    .line 1516
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1517
    invoke-virtual {p1}, Llxy;->a()I

    .line 1514
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1508
    :cond_5
    iget-object v0, p0, Llqj;->b:[Llqf;

    array-length v0, v0

    goto :goto_3

    .line 1520
    :cond_6
    new-instance v3, Llqf;

    invoke-direct {v3}, Llqf;-><init>()V

    aput-object v3, v2, v0

    .line 1521
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1522
    iput-object v2, p0, Llqj;->b:[Llqf;

    goto/16 :goto_0

    .line 1476
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-object v0, p0, Llqj;->a:[Llqf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llqj;->a:[Llqf;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 428
    :goto_0
    iget-object v2, p0, Llqj;->a:[Llqf;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 429
    iget-object v2, p0, Llqj;->a:[Llqf;

    aget-object v2, v2, v0

    .line 430
    if-eqz v2, :cond_0

    .line 431
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Llqj;->b:[Llqf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llqj;->b:[Llqf;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 436
    :goto_1
    iget-object v0, p0, Llqj;->b:[Llqf;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 437
    iget-object v0, p0, Llqj;->b:[Llqf;

    aget-object v0, v0, v1

    .line 438
    if-eqz v0, :cond_2

    .line 439
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 436
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 443
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 444
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 449
    iget-object v2, p0, Llqj;->a:[Llqf;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llqj;->a:[Llqf;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 450
    :goto_0
    iget-object v3, p0, Llqj;->a:[Llqf;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 451
    iget-object v3, p0, Llqj;->a:[Llqf;

    aget-object v3, v3, v0

    .line 452
    if-eqz v3, :cond_0

    .line 453
    const/4 v4, 0x4

    .line 454
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 450
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 458
    :cond_2
    iget-object v2, p0, Llqj;->b:[Llqf;

    if-eqz v2, :cond_4

    iget-object v2, p0, Llqj;->b:[Llqf;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 459
    :goto_1
    iget-object v2, p0, Llqj;->b:[Llqf;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 460
    iget-object v2, p0, Llqj;->b:[Llqf;

    aget-object v2, v2, v1

    .line 461
    if-eqz v2, :cond_3

    .line 462
    const/4 v3, 0x5

    .line 463
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 459
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    :cond_4
    return v0
.end method
