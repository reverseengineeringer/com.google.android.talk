.class public final Ljpz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljqg;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljqa;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1517
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2522
    iput-object v1, p0, Ljpz;->a:Ljqg;

    .line 2523
    iput-object v1, p0, Ljpz;->b:Ljava/lang/String;

    .line 2524
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljpz;->c:[Ljava/lang/String;

    .line 2525
    iput-object v1, p0, Ljpz;->d:Ljqa;

    .line 2526
    iput-object v1, p0, Ljpz;->eD:Llyd;

    .line 2527
    const/4 v0, -0x1

    iput v0, p0, Ljpz;->eE:I

    .line 1519
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2591
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2592
    sparse-switch v0, :sswitch_data_0

    .line 2596
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2597
    :sswitch_0
    return-object p0

    .line 2602
    :sswitch_1
    iget-object v0, p0, Ljpz;->a:Ljqg;

    if-nez v0, :cond_1

    .line 2603
    new-instance v0, Ljqg;

    invoke-direct {v0}, Ljqg;-><init>()V

    iput-object v0, p0, Ljpz;->a:Ljqg;

    .line 2605
    :cond_1
    iget-object v0, p0, Ljpz;->a:Ljqg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2609
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljpz;->b:Ljava/lang/String;

    goto :goto_0

    .line 2613
    :sswitch_3
    const/16 v0, 0x1a

    .line 2614
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2615
    iget-object v0, p0, Ljpz;->c:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 2616
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2617
    if-eqz v0, :cond_2

    .line 2618
    iget-object v3, p0, Ljpz;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2620
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2621
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2622
    invoke-virtual {p1}, Llxy;->a()I

    .line 2620
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2615
    :cond_3
    iget-object v0, p0, Ljpz;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2625
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2626
    iput-object v2, p0, Ljpz;->c:[Ljava/lang/String;

    goto :goto_0

    .line 2630
    :sswitch_4
    iget-object v0, p0, Ljpz;->d:Ljqa;

    if-nez v0, :cond_5

    .line 2631
    new-instance v0, Ljqa;

    invoke-direct {v0}, Ljqa;-><init>()V

    iput-object v0, p0, Ljpz;->d:Ljqa;

    .line 2633
    :cond_5
    iget-object v0, p0, Ljpz;->d:Ljqa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2592
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
    .line 1534
    iget-object v0, p0, Ljpz;->a:Ljqg;

    if-eqz v0, :cond_0

    .line 1535
    const/4 v0, 0x1

    iget-object v1, p0, Ljpz;->a:Ljqg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1537
    :cond_0
    iget-object v0, p0, Ljpz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1538
    const/4 v0, 0x2

    iget-object v1, p0, Ljpz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1540
    :cond_1
    iget-object v0, p0, Ljpz;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljpz;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 1541
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljpz;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1542
    iget-object v1, p0, Ljpz;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1543
    if-eqz v1, :cond_2

    .line 1544
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1541
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    :cond_3
    iget-object v0, p0, Ljpz;->d:Ljqa;

    if-eqz v0, :cond_4

    .line 1549
    const/4 v0, 0x4

    iget-object v1, p0, Ljpz;->d:Ljqa;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1551
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1552
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1556
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1557
    iget-object v2, p0, Ljpz;->a:Ljqg;

    if-eqz v2, :cond_0

    .line 1558
    const/4 v2, 0x1

    iget-object v3, p0, Ljpz;->a:Ljqg;

    .line 1559
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1561
    :cond_0
    iget-object v2, p0, Ljpz;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1562
    const/4 v2, 0x2

    iget-object v3, p0, Ljpz;->b:Ljava/lang/String;

    .line 1563
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1565
    :cond_1
    iget-object v2, p0, Ljpz;->c:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljpz;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 1568
    :goto_0
    iget-object v4, p0, Ljpz;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 1569
    iget-object v4, p0, Ljpz;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1570
    if-eqz v4, :cond_2

    .line 1571
    add-int/lit8 v3, v3, 0x1

    .line 1573
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1568
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1576
    :cond_3
    add-int/2addr v0, v2

    .line 1577
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 1579
    :cond_4
    iget-object v1, p0, Ljpz;->d:Ljqa;

    if-eqz v1, :cond_5

    .line 1580
    const/4 v1, 0x4

    iget-object v2, p0, Ljpz;->d:Ljqa;

    .line 1581
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1583
    :cond_5
    return v0
.end method
