.class public final Lmkv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmmm;

.field public b:[Lmku;

.field public c:[Lmks;

.field public d:Lmks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1435
    iput-object v1, p0, Lmkv;->a:Lmmm;

    .line 1436
    invoke-static {}, Lmku;->d()[Lmku;

    move-result-object v0

    iput-object v0, p0, Lmkv;->b:[Lmku;

    .line 1437
    invoke-static {}, Lmks;->d()[Lmks;

    move-result-object v0

    iput-object v0, p0, Lmkv;->c:[Lmks;

    .line 1438
    iput-object v1, p0, Lmkv;->d:Lmks;

    .line 1439
    iput-object v1, p0, Lmkv;->eD:Llyd;

    .line 1440
    const/4 v0, -0x1

    iput v0, p0, Lmkv;->eE:I

    .line 432
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1509
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1510
    sparse-switch v0, :sswitch_data_0

    .line 1514
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1515
    :sswitch_0
    return-object p0

    .line 1520
    :sswitch_1
    iget-object v0, p0, Lmkv;->a:Lmmm;

    if-nez v0, :cond_1

    .line 1521
    new-instance v0, Lmmm;

    invoke-direct {v0}, Lmmm;-><init>()V

    iput-object v0, p0, Lmkv;->a:Lmmm;

    .line 1523
    :cond_1
    iget-object v0, p0, Lmkv;->a:Lmmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1527
    :sswitch_2
    const/16 v0, 0x12

    .line 1528
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1529
    iget-object v0, p0, Lmkv;->b:[Lmku;

    if-nez v0, :cond_3

    move v0, v1

    .line 1530
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmku;

    .line 1532
    if-eqz v0, :cond_2

    .line 1533
    iget-object v3, p0, Lmkv;->b:[Lmku;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1535
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1536
    new-instance v3, Lmku;

    invoke-direct {v3}, Lmku;-><init>()V

    aput-object v3, v2, v0

    .line 1537
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1538
    invoke-virtual {p1}, Llxy;->a()I

    .line 1535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1529
    :cond_3
    iget-object v0, p0, Lmkv;->b:[Lmku;

    array-length v0, v0

    goto :goto_1

    .line 1541
    :cond_4
    new-instance v3, Lmku;

    invoke-direct {v3}, Lmku;-><init>()V

    aput-object v3, v2, v0

    .line 1542
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1543
    iput-object v2, p0, Lmkv;->b:[Lmku;

    goto :goto_0

    .line 1547
    :sswitch_3
    iget-object v0, p0, Lmkv;->d:Lmks;

    if-nez v0, :cond_5

    .line 1548
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmkv;->d:Lmks;

    .line 1550
    :cond_5
    iget-object v0, p0, Lmkv;->d:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1554
    :sswitch_4
    const/16 v0, 0x22

    .line 1555
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1556
    iget-object v0, p0, Lmkv;->c:[Lmks;

    if-nez v0, :cond_7

    move v0, v1

    .line 1557
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmks;

    .line 1559
    if-eqz v0, :cond_6

    .line 1560
    iget-object v3, p0, Lmkv;->c:[Lmks;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1562
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1563
    new-instance v3, Lmks;

    invoke-direct {v3}, Lmks;-><init>()V

    aput-object v3, v2, v0

    .line 1564
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1565
    invoke-virtual {p1}, Llxy;->a()I

    .line 1562
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1556
    :cond_7
    iget-object v0, p0, Lmkv;->c:[Lmks;

    array-length v0, v0

    goto :goto_3

    .line 1568
    :cond_8
    new-instance v3, Lmks;

    invoke-direct {v3}, Lmks;-><init>()V

    aput-object v3, v2, v0

    .line 1569
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1570
    iput-object v2, p0, Lmkv;->c:[Lmks;

    goto/16 :goto_0

    .line 1510
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

    .line 447
    iget-object v0, p0, Lmkv;->a:Lmmm;

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    iget-object v2, p0, Lmkv;->a:Lmmm;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lmkv;->b:[Lmku;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmkv;->b:[Lmku;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 451
    :goto_0
    iget-object v2, p0, Lmkv;->b:[Lmku;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 452
    iget-object v2, p0, Lmkv;->b:[Lmku;

    aget-object v2, v2, v0

    .line 453
    if-eqz v2, :cond_1

    .line 454
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 451
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lmkv;->d:Lmks;

    if-eqz v0, :cond_3

    .line 459
    const/4 v0, 0x3

    iget-object v2, p0, Lmkv;->d:Lmks;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 461
    :cond_3
    iget-object v0, p0, Lmkv;->c:[Lmks;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmkv;->c:[Lmks;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 462
    :goto_1
    iget-object v0, p0, Lmkv;->c:[Lmks;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 463
    iget-object v0, p0, Lmkv;->c:[Lmks;

    aget-object v0, v0, v1

    .line 464
    if-eqz v0, :cond_4

    .line 465
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 462
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 470
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 475
    iget-object v2, p0, Lmkv;->a:Lmmm;

    if-eqz v2, :cond_0

    .line 476
    const/4 v2, 0x1

    iget-object v3, p0, Lmkv;->a:Lmmm;

    .line 477
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 479
    :cond_0
    iget-object v2, p0, Lmkv;->b:[Lmku;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmkv;->b:[Lmku;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 480
    :goto_0
    iget-object v3, p0, Lmkv;->b:[Lmku;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 481
    iget-object v3, p0, Lmkv;->b:[Lmku;

    aget-object v3, v3, v0

    .line 482
    if-eqz v3, :cond_1

    .line 483
    const/4 v4, 0x2

    .line 484
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 488
    :cond_3
    iget-object v2, p0, Lmkv;->d:Lmks;

    if-eqz v2, :cond_4

    .line 489
    const/4 v2, 0x3

    iget-object v3, p0, Lmkv;->d:Lmks;

    .line 490
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 492
    :cond_4
    iget-object v2, p0, Lmkv;->c:[Lmks;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmkv;->c:[Lmks;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 493
    :goto_1
    iget-object v2, p0, Lmkv;->c:[Lmks;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 494
    iget-object v2, p0, Lmkv;->c:[Lmks;

    aget-object v2, v2, v1

    .line 495
    if-eqz v2, :cond_5

    .line 496
    const/4 v3, 0x4

    .line 497
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 493
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    :cond_6
    return v0
.end method
