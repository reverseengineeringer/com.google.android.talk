.class public final Livb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1491
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Livb;->a:[I

    .line 1492
    const/4 v0, 0x0

    iput-object v0, p0, Livb;->eD:Llyd;

    .line 1493
    const/4 v0, -0x1

    iput v0, p0, Livb;->eE:I

    .line 488
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1529
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1530
    sparse-switch v0, :sswitch_data_0

    .line 1534
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1535
    :sswitch_0
    return-object p0

    .line 1540
    :sswitch_1
    const/16 v0, 0x8

    .line 1541
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1542
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1544
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1545
    if-eqz v3, :cond_1

    .line 1546
    invoke-virtual {p1}, Llxy;->a()I

    .line 1548
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1549
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1544
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1552
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1556
    :cond_2
    if-eqz v1, :cond_0

    .line 1557
    iget-object v0, p0, Livb;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 1558
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 1559
    iput-object v5, p0, Livb;->a:[I

    goto :goto_0

    .line 1557
    :cond_3
    iget-object v0, p0, Livb;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 1561
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1562
    if-eqz v0, :cond_5

    .line 1563
    iget-object v4, p0, Livb;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1565
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1566
    iput-object v3, p0, Livb;->a:[I

    goto :goto_0

    .line 1572
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1573
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1576
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1577
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 1578
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 1581
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1585
    :cond_6
    if-eqz v0, :cond_a

    .line 1586
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1587
    iget-object v1, p0, Livb;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 1588
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1589
    if-eqz v1, :cond_7

    .line 1590
    iget-object v0, p0, Livb;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1592
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 1593
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1594
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 1597
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1587
    :cond_8
    iget-object v1, p0, Livb;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 1601
    :cond_9
    iput-object v4, p0, Livb;->a:[I

    .line 1603
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1530
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch

    .line 1549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1578
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1594
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Livb;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Livb;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Livb;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 502
    const/4 v1, 0x1

    iget-object v2, p0, Livb;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 506
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 510
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 511
    iget-object v1, p0, Livb;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Livb;->a:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v0

    .line 513
    :goto_0
    iget-object v3, p0, Livb;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 514
    iget-object v3, p0, Livb;->a:[I

    aget v3, v3, v0

    .line 516
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    add-int v0, v2, v1

    .line 519
    iget-object v1, p0, Livb;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 521
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
