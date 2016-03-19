.class public final Lkha;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkha;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkgy;

.field public b:Lkii;

.field public c:[Lkgy;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1520
    iput-object v1, p0, Lkha;->responseHeader:Lkdp;

    .line 1521
    iput-object v1, p0, Lkha;->a:Lkgy;

    .line 1522
    iput-object v1, p0, Lkha;->b:Lkii;

    .line 1523
    invoke-static {}, Lkgy;->d()[Lkgy;

    move-result-object v0

    iput-object v0, p0, Lkha;->c:[Lkgy;

    .line 1524
    iput-object v1, p0, Lkha;->eD:Llyd;

    .line 1525
    const/4 v0, -0x1

    iput v0, p0, Lkha;->eE:I

    .line 517
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1584
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1585
    sparse-switch v0, :sswitch_data_0

    .line 1589
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    :sswitch_0
    return-object p0

    .line 1595
    :sswitch_1
    iget-object v0, p0, Lkha;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 1596
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkha;->responseHeader:Lkdp;

    .line 1598
    :cond_1
    iget-object v0, p0, Lkha;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1602
    :sswitch_2
    iget-object v0, p0, Lkha;->a:Lkgy;

    if-nez v0, :cond_2

    .line 1603
    new-instance v0, Lkgy;

    invoke-direct {v0}, Lkgy;-><init>()V

    iput-object v0, p0, Lkha;->a:Lkgy;

    .line 1605
    :cond_2
    iget-object v0, p0, Lkha;->a:Lkgy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1609
    :sswitch_3
    iget-object v0, p0, Lkha;->b:Lkii;

    if-nez v0, :cond_3

    .line 1610
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkha;->b:Lkii;

    .line 1612
    :cond_3
    iget-object v0, p0, Lkha;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1616
    :sswitch_4
    const/16 v0, 0x22

    .line 1617
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1618
    iget-object v0, p0, Lkha;->c:[Lkgy;

    if-nez v0, :cond_5

    move v0, v1

    .line 1619
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgy;

    .line 1621
    if-eqz v0, :cond_4

    .line 1622
    iget-object v3, p0, Lkha;->c:[Lkgy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1624
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 1625
    new-instance v3, Lkgy;

    invoke-direct {v3}, Lkgy;-><init>()V

    aput-object v3, v2, v0

    .line 1626
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1627
    invoke-virtual {p1}, Llxy;->a()I

    .line 1624
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1618
    :cond_5
    iget-object v0, p0, Lkha;->c:[Lkgy;

    array-length v0, v0

    goto :goto_1

    .line 1630
    :cond_6
    new-instance v3, Lkgy;

    invoke-direct {v3}, Lkgy;-><init>()V

    aput-object v3, v2, v0

    .line 1631
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1632
    iput-object v2, p0, Lkha;->c:[Lkgy;

    goto :goto_0

    .line 1585
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
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lkha;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x1

    iget-object v1, p0, Lkha;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lkha;->a:Lkgy;

    if-eqz v0, :cond_1

    .line 536
    const/4 v0, 0x2

    iget-object v1, p0, Lkha;->a:Lkgy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 538
    :cond_1
    iget-object v0, p0, Lkha;->b:Lkii;

    if-eqz v0, :cond_2

    .line 539
    const/4 v0, 0x3

    iget-object v1, p0, Lkha;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 541
    :cond_2
    iget-object v0, p0, Lkha;->c:[Lkgy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkha;->c:[Lkgy;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 542
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkha;->c:[Lkgy;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 543
    iget-object v1, p0, Lkha;->c:[Lkgy;

    aget-object v1, v1, v0

    .line 544
    if-eqz v1, :cond_3

    .line 545
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 542
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 550
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 554
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 555
    iget-object v1, p0, Lkha;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 556
    const/4 v1, 0x1

    iget-object v2, p0, Lkha;->responseHeader:Lkdp;

    .line 557
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_0
    iget-object v1, p0, Lkha;->a:Lkgy;

    if-eqz v1, :cond_1

    .line 560
    const/4 v1, 0x2

    iget-object v2, p0, Lkha;->a:Lkgy;

    .line 561
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_1
    iget-object v1, p0, Lkha;->b:Lkii;

    if-eqz v1, :cond_2

    .line 564
    const/4 v1, 0x3

    iget-object v2, p0, Lkha;->b:Lkii;

    .line 565
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_2
    iget-object v1, p0, Lkha;->c:[Lkgy;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkha;->c:[Lkgy;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 568
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkha;->c:[Lkgy;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 569
    iget-object v2, p0, Lkha;->c:[Lkgy;

    aget-object v2, v2, v0

    .line 570
    if-eqz v2, :cond_3

    .line 571
    const/4 v3, 0x4

    .line 572
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 568
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 576
    :cond_5
    return v0
.end method
