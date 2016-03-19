.class public final Lmjm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmjm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmmm;

.field public b:[Lmjj;

.field public c:[Lmjn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1487
    iput-object v1, p0, Lmjm;->a:Lmmm;

    .line 1488
    invoke-static {}, Lmjj;->d()[Lmjj;

    move-result-object v0

    iput-object v0, p0, Lmjm;->b:[Lmjj;

    .line 1489
    invoke-static {}, Lmjn;->d()[Lmjn;

    move-result-object v0

    iput-object v0, p0, Lmjm;->c:[Lmjn;

    .line 1490
    iput-object v1, p0, Lmjm;->eD:Llyd;

    .line 1491
    const/4 v0, -0x1

    iput v0, p0, Lmjm;->eE:I

    .line 484
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1553
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1554
    sparse-switch v0, :sswitch_data_0

    .line 1558
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1559
    :sswitch_0
    return-object p0

    .line 1564
    :sswitch_1
    iget-object v0, p0, Lmjm;->a:Lmmm;

    if-nez v0, :cond_1

    .line 1565
    new-instance v0, Lmmm;

    invoke-direct {v0}, Lmmm;-><init>()V

    iput-object v0, p0, Lmjm;->a:Lmmm;

    .line 1567
    :cond_1
    iget-object v0, p0, Lmjm;->a:Lmmm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1571
    :sswitch_2
    const/16 v0, 0x12

    .line 1572
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1573
    iget-object v0, p0, Lmjm;->b:[Lmjj;

    if-nez v0, :cond_3

    move v0, v1

    .line 1574
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjj;

    .line 1576
    if-eqz v0, :cond_2

    .line 1577
    iget-object v3, p0, Lmjm;->b:[Lmjj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1579
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1580
    new-instance v3, Lmjj;

    invoke-direct {v3}, Lmjj;-><init>()V

    aput-object v3, v2, v0

    .line 1581
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1582
    invoke-virtual {p1}, Llxy;->a()I

    .line 1579
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1573
    :cond_3
    iget-object v0, p0, Lmjm;->b:[Lmjj;

    array-length v0, v0

    goto :goto_1

    .line 1585
    :cond_4
    new-instance v3, Lmjj;

    invoke-direct {v3}, Lmjj;-><init>()V

    aput-object v3, v2, v0

    .line 1586
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1587
    iput-object v2, p0, Lmjm;->b:[Lmjj;

    goto :goto_0

    .line 1591
    :sswitch_3
    const/16 v0, 0x1a

    .line 1592
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1593
    iget-object v0, p0, Lmjm;->c:[Lmjn;

    if-nez v0, :cond_6

    move v0, v1

    .line 1594
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjn;

    .line 1596
    if-eqz v0, :cond_5

    .line 1597
    iget-object v3, p0, Lmjm;->c:[Lmjn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1599
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 1600
    new-instance v3, Lmjn;

    invoke-direct {v3}, Lmjn;-><init>()V

    aput-object v3, v2, v0

    .line 1601
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1602
    invoke-virtual {p1}, Llxy;->a()I

    .line 1599
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1593
    :cond_6
    iget-object v0, p0, Lmjm;->c:[Lmjn;

    array-length v0, v0

    goto :goto_3

    .line 1605
    :cond_7
    new-instance v3, Lmjn;

    invoke-direct {v3}, Lmjn;-><init>()V

    aput-object v3, v2, v0

    .line 1606
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1607
    iput-object v2, p0, Lmjm;->c:[Lmjn;

    goto/16 :goto_0

    .line 1554
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v0, p0, Lmjm;->a:Lmmm;

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x1

    iget-object v2, p0, Lmjm;->a:Lmmm;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lmjm;->b:[Lmjj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmjm;->b:[Lmjj;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 502
    :goto_0
    iget-object v2, p0, Lmjm;->b:[Lmjj;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 503
    iget-object v2, p0, Lmjm;->b:[Lmjj;

    aget-object v2, v2, v0

    .line 504
    if-eqz v2, :cond_1

    .line 505
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lmjm;->c:[Lmjn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmjm;->c:[Lmjn;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 510
    :goto_1
    iget-object v0, p0, Lmjm;->c:[Lmjn;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 511
    iget-object v0, p0, Lmjm;->c:[Lmjn;

    aget-object v0, v0, v1

    .line 512
    if-eqz v0, :cond_3

    .line 513
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 510
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 517
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 518
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 522
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 523
    iget-object v2, p0, Lmjm;->a:Lmmm;

    if-eqz v2, :cond_0

    .line 524
    const/4 v2, 0x1

    iget-object v3, p0, Lmjm;->a:Lmmm;

    .line 525
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 527
    :cond_0
    iget-object v2, p0, Lmjm;->b:[Lmjj;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmjm;->b:[Lmjj;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 528
    :goto_0
    iget-object v3, p0, Lmjm;->b:[Lmjj;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 529
    iget-object v3, p0, Lmjm;->b:[Lmjj;

    aget-object v3, v3, v0

    .line 530
    if-eqz v3, :cond_1

    .line 531
    const/4 v4, 0x2

    .line 532
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 528
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 536
    :cond_3
    iget-object v2, p0, Lmjm;->c:[Lmjn;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmjm;->c:[Lmjn;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 537
    :goto_1
    iget-object v2, p0, Lmjm;->c:[Lmjn;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 538
    iget-object v2, p0, Lmjm;->c:[Lmjn;

    aget-object v2, v2, v1

    .line 539
    if-eqz v2, :cond_4

    .line 540
    const/4 v3, 0x3

    .line 541
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 537
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 545
    :cond_5
    return v0
.end method
