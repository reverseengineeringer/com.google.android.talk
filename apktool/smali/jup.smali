.class public final Ljup;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljup;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljup;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[I

.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1473
    iput-object v1, p0, Ljup;->a:Ljava/lang/String;

    .line 1474
    iput-object v1, p0, Ljup;->b:Ljava/lang/String;

    .line 1475
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljup;->c:[I

    .line 1476
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Ljup;->d:[I

    .line 1477
    iput-object v1, p0, Ljup;->eD:Llyd;

    .line 1478
    const/4 v0, -0x1

    iput v0, p0, Ljup;->eE:I

    .line 470
    return-void
.end method

.method public static d()[Ljup;
    .locals 2

    .prologue
    .line 443
    sget-object v0, Ljup;->e:[Ljup;

    if-nez v0, :cond_1

    .line 444
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    sget-object v0, Ljup;->e:[Ljup;

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    new-array v0, v0, [Ljup;

    sput-object v0, Ljup;->e:[Ljup;

    .line 449
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_1
    sget-object v0, Ljup;->e:[Ljup;

    return-object v0

    .line 449
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
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1533
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1534
    sparse-switch v0, :sswitch_data_0

    .line 1538
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1539
    :sswitch_0
    return-object p0

    .line 1544
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljup;->a:Ljava/lang/String;

    goto :goto_0

    .line 1548
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljup;->b:Ljava/lang/String;

    goto :goto_0

    .line 1552
    :sswitch_3
    const/16 v0, 0x1d

    .line 1553
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1554
    iget-object v0, p0, Ljup;->c:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 1555
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1556
    if-eqz v0, :cond_1

    .line 1557
    iget-object v3, p0, Ljup;->c:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1559
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1560
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v2, v0

    .line 1561
    invoke-virtual {p1}, Llxy;->a()I

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1554
    :cond_2
    iget-object v0, p0, Ljup;->c:[I

    array-length v0, v0

    goto :goto_1

    .line 1564
    :cond_3
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v2, v0

    .line 1565
    iput-object v2, p0, Ljup;->c:[I

    goto :goto_0

    .line 1569
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1570
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1571
    div-int/lit8 v3, v0, 0x4

    .line 1572
    iget-object v0, p0, Ljup;->c:[I

    if-nez v0, :cond_5

    move v0, v1

    .line 1573
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [I

    .line 1574
    if-eqz v0, :cond_4

    .line 1575
    iget-object v4, p0, Ljup;->c:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1577
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 1578
    invoke-virtual {p1}, Llxy;->h()I

    move-result v4

    aput v4, v3, v0

    .line 1577
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1572
    :cond_5
    iget-object v0, p0, Ljup;->c:[I

    array-length v0, v0

    goto :goto_3

    .line 1580
    :cond_6
    iput-object v3, p0, Ljup;->c:[I

    .line 1581
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto :goto_0

    .line 1585
    :sswitch_5
    const/16 v0, 0x25

    .line 1586
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1587
    iget-object v0, p0, Ljup;->d:[I

    if-nez v0, :cond_8

    move v0, v1

    .line 1588
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 1589
    if-eqz v0, :cond_7

    .line 1590
    iget-object v3, p0, Ljup;->d:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1592
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 1593
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v2, v0

    .line 1594
    invoke-virtual {p1}, Llxy;->a()I

    .line 1592
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1587
    :cond_8
    iget-object v0, p0, Ljup;->d:[I

    array-length v0, v0

    goto :goto_5

    .line 1597
    :cond_9
    invoke-virtual {p1}, Llxy;->h()I

    move-result v3

    aput v3, v2, v0

    .line 1598
    iput-object v2, p0, Ljup;->d:[I

    goto/16 :goto_0

    .line 1602
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1603
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 1604
    div-int/lit8 v3, v0, 0x4

    .line 1605
    iget-object v0, p0, Ljup;->d:[I

    if-nez v0, :cond_b

    move v0, v1

    .line 1606
    :goto_7
    add-int/2addr v3, v0

    new-array v3, v3, [I

    .line 1607
    if-eqz v0, :cond_a

    .line 1608
    iget-object v4, p0, Ljup;->d:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1610
    :cond_a
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 1611
    invoke-virtual {p1}, Llxy;->h()I

    move-result v4

    aput v4, v3, v0

    .line 1610
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1605
    :cond_b
    iget-object v0, p0, Ljup;->d:[I

    array-length v0, v0

    goto :goto_7

    .line 1613
    :cond_c
    iput-object v3, p0, Ljup;->d:[I

    .line 1614
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1534
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_4
        0x1d -> :sswitch_3
        0x22 -> :sswitch_6
        0x25 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Ljup;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x1

    iget-object v2, p0, Ljup;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 488
    :cond_0
    iget-object v0, p0, Ljup;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 489
    const/4 v0, 0x2

    iget-object v2, p0, Ljup;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 491
    :cond_1
    iget-object v0, p0, Ljup;->c:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljup;->c:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 492
    :goto_0
    iget-object v2, p0, Ljup;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 493
    const/4 v2, 0x3

    iget-object v3, p0, Ljup;->c:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->b(II)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Ljup;->d:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljup;->d:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 497
    :goto_1
    iget-object v0, p0, Ljup;->d:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 498
    const/4 v0, 0x4

    iget-object v2, p0, Ljup;->d:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->b(II)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 501
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 502
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 506
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 507
    iget-object v1, p0, Ljup;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 508
    const/4 v1, 0x1

    iget-object v2, p0, Ljup;->a:Ljava/lang/String;

    .line 509
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_0
    iget-object v1, p0, Ljup;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 512
    const/4 v1, 0x2

    iget-object v2, p0, Ljup;->b:Ljava/lang/String;

    .line 513
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    :cond_1
    iget-object v1, p0, Ljup;->c:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljup;->c:[I

    array-length v1, v1

    if-lez v1, :cond_2

    .line 516
    iget-object v1, p0, Ljup;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 517
    add-int/2addr v0, v1

    .line 518
    iget-object v1, p0, Ljup;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 520
    :cond_2
    iget-object v1, p0, Ljup;->d:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljup;->d:[I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 521
    iget-object v1, p0, Ljup;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 522
    add-int/2addr v0, v1

    .line 523
    iget-object v1, p0, Ljup;->d:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 525
    :cond_3
    return v0
.end method
