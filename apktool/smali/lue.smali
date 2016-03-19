.class public final Llue;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llue;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lllw;

.field public b:Ljava/lang/String;

.field public c:Lluc;

.field public d:[Lluc;

.field public e:[Lluc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 509
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1514
    iput-object v1, p0, Llue;->a:Lllw;

    .line 1515
    iput-object v1, p0, Llue;->b:Ljava/lang/String;

    .line 1516
    iput-object v1, p0, Llue;->c:Lluc;

    .line 1517
    invoke-static {}, Lluc;->d()[Lluc;

    move-result-object v0

    iput-object v0, p0, Llue;->d:[Lluc;

    .line 1518
    invoke-static {}, Lluc;->d()[Lluc;

    move-result-object v0

    iput-object v0, p0, Llue;->e:[Lluc;

    .line 1519
    iput-object v1, p0, Llue;->eD:Llyd;

    .line 1520
    const/4 v0, -0x1

    iput v0, p0, Llue;->eE:I

    .line 511
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1596
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1597
    sparse-switch v0, :sswitch_data_0

    .line 1601
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    :sswitch_0
    return-object p0

    .line 1607
    :sswitch_1
    iget-object v0, p0, Llue;->a:Lllw;

    if-nez v0, :cond_1

    .line 1608
    new-instance v0, Lllw;

    invoke-direct {v0}, Lllw;-><init>()V

    iput-object v0, p0, Llue;->a:Lllw;

    .line 1610
    :cond_1
    iget-object v0, p0, Llue;->a:Lllw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1614
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llue;->b:Ljava/lang/String;

    goto :goto_0

    .line 1618
    :sswitch_3
    iget-object v0, p0, Llue;->c:Lluc;

    if-nez v0, :cond_2

    .line 1619
    new-instance v0, Lluc;

    invoke-direct {v0}, Lluc;-><init>()V

    iput-object v0, p0, Llue;->c:Lluc;

    .line 1621
    :cond_2
    iget-object v0, p0, Llue;->c:Lluc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1625
    :sswitch_4
    const/16 v0, 0x2a

    .line 1626
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1627
    iget-object v0, p0, Llue;->d:[Lluc;

    if-nez v0, :cond_4

    move v0, v1

    .line 1628
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lluc;

    .line 1630
    if-eqz v0, :cond_3

    .line 1631
    iget-object v3, p0, Llue;->d:[Lluc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1633
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1634
    new-instance v3, Lluc;

    invoke-direct {v3}, Lluc;-><init>()V

    aput-object v3, v2, v0

    .line 1635
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1636
    invoke-virtual {p1}, Llxy;->a()I

    .line 1633
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1627
    :cond_4
    iget-object v0, p0, Llue;->d:[Lluc;

    array-length v0, v0

    goto :goto_1

    .line 1639
    :cond_5
    new-instance v3, Lluc;

    invoke-direct {v3}, Lluc;-><init>()V

    aput-object v3, v2, v0

    .line 1640
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1641
    iput-object v2, p0, Llue;->d:[Lluc;

    goto :goto_0

    .line 1645
    :sswitch_5
    const/16 v0, 0x32

    .line 1646
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1647
    iget-object v0, p0, Llue;->e:[Lluc;

    if-nez v0, :cond_7

    move v0, v1

    .line 1648
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lluc;

    .line 1650
    if-eqz v0, :cond_6

    .line 1651
    iget-object v3, p0, Llue;->e:[Lluc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1653
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 1654
    new-instance v3, Lluc;

    invoke-direct {v3}, Lluc;-><init>()V

    aput-object v3, v2, v0

    .line 1655
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1656
    invoke-virtual {p1}, Llxy;->a()I

    .line 1653
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1647
    :cond_7
    iget-object v0, p0, Llue;->e:[Lluc;

    array-length v0, v0

    goto :goto_3

    .line 1659
    :cond_8
    new-instance v3, Lluc;

    invoke-direct {v3}, Lluc;-><init>()V

    aput-object v3, v2, v0

    .line 1660
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1661
    iput-object v2, p0, Llue;->e:[Lluc;

    goto/16 :goto_0

    .line 1597
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Llue;->a:Lllw;

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x1

    iget-object v2, p0, Llue;->a:Lllw;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 530
    :cond_0
    iget-object v0, p0, Llue;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 531
    const/4 v0, 0x2

    iget-object v2, p0, Llue;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 533
    :cond_1
    iget-object v0, p0, Llue;->c:Lluc;

    if-eqz v0, :cond_2

    .line 534
    const/4 v0, 0x3

    iget-object v2, p0, Llue;->c:Lluc;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 536
    :cond_2
    iget-object v0, p0, Llue;->d:[Lluc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llue;->d:[Lluc;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 537
    :goto_0
    iget-object v2, p0, Llue;->d:[Lluc;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 538
    iget-object v2, p0, Llue;->d:[Lluc;

    aget-object v2, v2, v0

    .line 539
    if-eqz v2, :cond_3

    .line 540
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 537
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_4
    iget-object v0, p0, Llue;->e:[Lluc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Llue;->e:[Lluc;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 545
    :goto_1
    iget-object v0, p0, Llue;->e:[Lluc;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 546
    iget-object v0, p0, Llue;->e:[Lluc;

    aget-object v0, v0, v1

    .line 547
    if-eqz v0, :cond_5

    .line 548
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 545
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 553
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 558
    iget-object v2, p0, Llue;->a:Lllw;

    if-eqz v2, :cond_0

    .line 559
    const/4 v2, 0x1

    iget-object v3, p0, Llue;->a:Lllw;

    .line 560
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 562
    :cond_0
    iget-object v2, p0, Llue;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 563
    const/4 v2, 0x2

    iget-object v3, p0, Llue;->b:Ljava/lang/String;

    .line 564
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 566
    :cond_1
    iget-object v2, p0, Llue;->c:Lluc;

    if-eqz v2, :cond_2

    .line 567
    const/4 v2, 0x3

    iget-object v3, p0, Llue;->c:Lluc;

    .line 568
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 570
    :cond_2
    iget-object v2, p0, Llue;->d:[Lluc;

    if-eqz v2, :cond_5

    iget-object v2, p0, Llue;->d:[Lluc;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 571
    :goto_0
    iget-object v3, p0, Llue;->d:[Lluc;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 572
    iget-object v3, p0, Llue;->d:[Lluc;

    aget-object v3, v3, v0

    .line 573
    if-eqz v3, :cond_3

    .line 574
    const/4 v4, 0x5

    .line 575
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 571
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 579
    :cond_5
    iget-object v2, p0, Llue;->e:[Lluc;

    if-eqz v2, :cond_7

    iget-object v2, p0, Llue;->e:[Lluc;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 580
    :goto_1
    iget-object v2, p0, Llue;->e:[Lluc;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 581
    iget-object v2, p0, Llue;->e:[Lluc;

    aget-object v2, v2, v1

    .line 582
    if-eqz v2, :cond_6

    .line 583
    const/4 v3, 0x6

    .line 584
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 580
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    :cond_7
    return v0
.end method
