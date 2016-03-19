.class public final Ljik;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljik;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Ljil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1562
    iput-object v1, p0, Ljik;->a:Ljava/lang/Integer;

    .line 1563
    invoke-static {}, Ljil;->d()[Ljil;

    move-result-object v0

    iput-object v0, p0, Ljik;->b:[Ljil;

    .line 1564
    iput-object v1, p0, Ljik;->eD:Llyd;

    .line 1565
    const/4 v0, -0x1

    iput v0, p0, Ljik;->eE:I

    .line 559
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1610
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1611
    sparse-switch v0, :sswitch_data_0

    .line 1615
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    :sswitch_0
    return-object p0

    .line 1621
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1622
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1626
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljik;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1632
    :sswitch_2
    const/16 v0, 0x12

    .line 1633
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1634
    iget-object v0, p0, Ljik;->b:[Ljil;

    if-nez v0, :cond_2

    move v0, v1

    .line 1635
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljil;

    .line 1637
    if-eqz v0, :cond_1

    .line 1638
    iget-object v3, p0, Ljik;->b:[Ljil;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1640
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1641
    new-instance v3, Ljil;

    invoke-direct {v3}, Ljil;-><init>()V

    aput-object v3, v2, v0

    .line 1642
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1643
    invoke-virtual {p1}, Llxy;->a()I

    .line 1640
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1634
    :cond_2
    iget-object v0, p0, Ljik;->b:[Ljil;

    array-length v0, v0

    goto :goto_1

    .line 1646
    :cond_3
    new-instance v3, Ljil;

    invoke-direct {v3}, Ljil;-><init>()V

    aput-object v3, v2, v0

    .line 1647
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1648
    iput-object v2, p0, Ljik;->b:[Ljil;

    goto :goto_0

    .line 1611
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Ljik;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x1

    iget-object v1, p0, Ljik;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 575
    :cond_0
    iget-object v0, p0, Ljik;->b:[Ljil;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljik;->b:[Ljil;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 576
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljik;->b:[Ljil;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 577
    iget-object v1, p0, Ljik;->b:[Ljil;

    aget-object v1, v1, v0

    .line 578
    if-eqz v1, :cond_1

    .line 579
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 576
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 584
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 588
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 589
    iget-object v1, p0, Ljik;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 590
    const/4 v1, 0x1

    iget-object v2, p0, Ljik;->a:Ljava/lang/Integer;

    .line 591
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_0
    iget-object v1, p0, Ljik;->b:[Ljil;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljik;->b:[Ljil;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 594
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljik;->b:[Ljil;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 595
    iget-object v2, p0, Ljik;->b:[Ljil;

    aget-object v2, v2, v0

    .line 596
    if-eqz v2, :cond_1

    .line 597
    const/4 v3, 0x2

    .line 598
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 594
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 602
    :cond_3
    return v0
.end method
