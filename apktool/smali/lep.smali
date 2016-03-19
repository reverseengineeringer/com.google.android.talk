.class public final Llep;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llep;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:[Lleq;

.field public d:[Ller;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 521
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1526
    iput-object v1, p0, Llep;->a:Ljava/lang/Integer;

    .line 1527
    iput-object v1, p0, Llep;->b:Ljava/lang/Integer;

    .line 1528
    invoke-static {}, Lleq;->d()[Lleq;

    move-result-object v0

    iput-object v0, p0, Llep;->c:[Lleq;

    .line 1529
    invoke-static {}, Ller;->d()[Ller;

    move-result-object v0

    iput-object v0, p0, Llep;->d:[Ller;

    .line 1530
    iput-object v1, p0, Llep;->eD:Llyd;

    .line 1531
    const/4 v0, -0x1

    iput v0, p0, Llep;->eE:I

    .line 523
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1600
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1601
    sparse-switch v0, :sswitch_data_0

    .line 1605
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    :sswitch_0
    return-object p0

    .line 1611
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1612
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1619
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llep;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1625
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llep;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1629
    :sswitch_3
    const/16 v0, 0x1a

    .line 1630
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1631
    iget-object v0, p0, Llep;->c:[Lleq;

    if-nez v0, :cond_2

    move v0, v1

    .line 1632
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lleq;

    .line 1634
    if-eqz v0, :cond_1

    .line 1635
    iget-object v3, p0, Llep;->c:[Lleq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1637
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1638
    new-instance v3, Lleq;

    invoke-direct {v3}, Lleq;-><init>()V

    aput-object v3, v2, v0

    .line 1639
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1640
    invoke-virtual {p1}, Llxy;->a()I

    .line 1637
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1631
    :cond_2
    iget-object v0, p0, Llep;->c:[Lleq;

    array-length v0, v0

    goto :goto_1

    .line 1643
    :cond_3
    new-instance v3, Lleq;

    invoke-direct {v3}, Lleq;-><init>()V

    aput-object v3, v2, v0

    .line 1644
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1645
    iput-object v2, p0, Llep;->c:[Lleq;

    goto :goto_0

    .line 1649
    :sswitch_4
    const/16 v0, 0x22

    .line 1650
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1651
    iget-object v0, p0, Llep;->d:[Ller;

    if-nez v0, :cond_5

    move v0, v1

    .line 1652
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ller;

    .line 1654
    if-eqz v0, :cond_4

    .line 1655
    iget-object v3, p0, Llep;->d:[Ller;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1657
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1658
    new-instance v3, Ller;

    invoke-direct {v3}, Ller;-><init>()V

    aput-object v3, v2, v0

    .line 1659
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1660
    invoke-virtual {p1}, Llxy;->a()I

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1651
    :cond_5
    iget-object v0, p0, Llep;->d:[Ller;

    array-length v0, v0

    goto :goto_3

    .line 1663
    :cond_6
    new-instance v3, Ller;

    invoke-direct {v3}, Ller;-><init>()V

    aput-object v3, v2, v0

    .line 1664
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1665
    iput-object v2, p0, Llep;->d:[Ller;

    goto/16 :goto_0

    .line 1601
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 1612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Llep;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 539
    const/4 v0, 0x1

    iget-object v2, p0, Llep;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 541
    :cond_0
    iget-object v0, p0, Llep;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 542
    const/4 v0, 0x2

    iget-object v2, p0, Llep;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 544
    :cond_1
    iget-object v0, p0, Llep;->c:[Lleq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llep;->c:[Lleq;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 545
    :goto_0
    iget-object v2, p0, Llep;->c:[Lleq;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 546
    iget-object v2, p0, Llep;->c:[Lleq;

    aget-object v2, v2, v0

    .line 547
    if-eqz v2, :cond_2

    .line 548
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 545
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_3
    iget-object v0, p0, Llep;->d:[Ller;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llep;->d:[Ller;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 553
    :goto_1
    iget-object v0, p0, Llep;->d:[Ller;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 554
    iget-object v0, p0, Llep;->d:[Ller;

    aget-object v0, v0, v1

    .line 555
    if-eqz v0, :cond_4

    .line 556
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 553
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 561
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 566
    iget-object v2, p0, Llep;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 567
    const/4 v2, 0x1

    iget-object v3, p0, Llep;->a:Ljava/lang/Integer;

    .line 568
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 570
    :cond_0
    iget-object v2, p0, Llep;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 571
    const/4 v2, 0x2

    iget-object v3, p0, Llep;->b:Ljava/lang/Integer;

    .line 572
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 574
    :cond_1
    iget-object v2, p0, Llep;->c:[Lleq;

    if-eqz v2, :cond_4

    iget-object v2, p0, Llep;->c:[Lleq;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 575
    :goto_0
    iget-object v3, p0, Llep;->c:[Lleq;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 576
    iget-object v3, p0, Llep;->c:[Lleq;

    aget-object v3, v3, v0

    .line 577
    if-eqz v3, :cond_2

    .line 578
    const/4 v4, 0x3

    .line 579
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 575
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 583
    :cond_4
    iget-object v2, p0, Llep;->d:[Ller;

    if-eqz v2, :cond_6

    iget-object v2, p0, Llep;->d:[Ller;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 584
    :goto_1
    iget-object v2, p0, Llep;->d:[Ller;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 585
    iget-object v2, p0, Llep;->d:[Ller;

    aget-object v2, v2, v1

    .line 586
    if-eqz v2, :cond_5

    .line 587
    const/4 v3, 0x4

    .line 588
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 584
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    :cond_6
    return v0
.end method
