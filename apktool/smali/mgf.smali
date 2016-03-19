.class public final Lmgf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmgd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1526
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2531
    invoke-static {}, Lmgd;->d()[Lmgd;

    move-result-object v0

    iput-object v0, p0, Lmgf;->a:[Lmgd;

    .line 2532
    const/4 v0, 0x0

    iput-object v0, p0, Lmgf;->eD:Llyd;

    .line 2533
    const/4 v0, -0x1

    iput v0, p0, Lmgf;->eE:I

    .line 1528
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2571
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2572
    sparse-switch v0, :sswitch_data_0

    .line 2576
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2577
    :sswitch_0
    return-object p0

    .line 2582
    :sswitch_1
    const/16 v0, 0xa

    .line 2583
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2584
    iget-object v0, p0, Lmgf;->a:[Lmgd;

    if-nez v0, :cond_2

    move v0, v1

    .line 2585
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmgd;

    .line 2587
    if-eqz v0, :cond_1

    .line 2588
    iget-object v3, p0, Lmgf;->a:[Lmgd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2590
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2591
    new-instance v3, Lmgd;

    invoke-direct {v3}, Lmgd;-><init>()V

    aput-object v3, v2, v0

    .line 2592
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2593
    invoke-virtual {p1}, Llxy;->a()I

    .line 2590
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2584
    :cond_2
    iget-object v0, p0, Lmgf;->a:[Lmgd;

    array-length v0, v0

    goto :goto_1

    .line 2596
    :cond_3
    new-instance v3, Lmgd;

    invoke-direct {v3}, Lmgd;-><init>()V

    aput-object v3, v2, v0

    .line 2597
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2598
    iput-object v2, p0, Lmgf;->a:[Lmgd;

    goto :goto_0

    .line 2572
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1540
    iget-object v0, p0, Lmgf;->a:[Lmgd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmgf;->a:[Lmgd;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1541
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmgf;->a:[Lmgd;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1542
    iget-object v1, p0, Lmgf;->a:[Lmgd;

    aget-object v1, v1, v0

    .line 1543
    if-eqz v1, :cond_0

    .line 1544
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1541
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1549
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1553
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 1554
    iget-object v0, p0, Lmgf;->a:[Lmgd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmgf;->a:[Lmgd;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1555
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmgf;->a:[Lmgd;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1556
    iget-object v2, p0, Lmgf;->a:[Lmgd;

    aget-object v2, v2, v0

    .line 1557
    if-eqz v2, :cond_0

    .line 1558
    const/4 v3, 0x1

    .line 1559
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1563
    :cond_1
    return v1
.end method
