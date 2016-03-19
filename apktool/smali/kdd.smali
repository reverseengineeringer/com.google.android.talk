.class public final Lkdd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljww;

.field public b:[Lkax;

.field public c:Ljava/lang/Long;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11445
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12450
    iput-object v1, p0, Lkdd;->requestHeader:Lkdo;

    .line 12451
    invoke-static {}, Ljww;->d()[Ljww;

    move-result-object v0

    iput-object v0, p0, Lkdd;->a:[Ljww;

    .line 12452
    invoke-static {}, Lkax;->d()[Lkax;

    move-result-object v0

    iput-object v0, p0, Lkdd;->b:[Lkax;

    .line 12453
    iput-object v1, p0, Lkdd;->c:Ljava/lang/Long;

    .line 12454
    iput-object v1, p0, Lkdd;->eD:Llyd;

    .line 12455
    const/4 v0, -0x1

    iput v0, p0, Lkdd;->eE:I

    .line 11447
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12525
    sparse-switch v0, :sswitch_data_0

    .line 12529
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12530
    :sswitch_0
    return-object p0

    .line 12535
    :sswitch_1
    iget-object v0, p0, Lkdd;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 12536
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdd;->requestHeader:Lkdo;

    .line 12538
    :cond_1
    iget-object v0, p0, Lkdd;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12542
    :sswitch_2
    const/16 v0, 0x12

    .line 12543
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12544
    iget-object v0, p0, Lkdd;->a:[Ljww;

    if-nez v0, :cond_3

    move v0, v1

    .line 12545
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljww;

    .line 12547
    if-eqz v0, :cond_2

    .line 12548
    iget-object v3, p0, Lkdd;->a:[Ljww;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12550
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 12551
    new-instance v3, Ljww;

    invoke-direct {v3}, Ljww;-><init>()V

    aput-object v3, v2, v0

    .line 12552
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12553
    invoke-virtual {p1}, Llxy;->a()I

    .line 12550
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12544
    :cond_3
    iget-object v0, p0, Lkdd;->a:[Ljww;

    array-length v0, v0

    goto :goto_1

    .line 12556
    :cond_4
    new-instance v3, Ljww;

    invoke-direct {v3}, Ljww;-><init>()V

    aput-object v3, v2, v0

    .line 12557
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12558
    iput-object v2, p0, Lkdd;->a:[Ljww;

    goto :goto_0

    .line 12562
    :sswitch_3
    const/16 v0, 0x1a

    .line 12563
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12564
    iget-object v0, p0, Lkdd;->b:[Lkax;

    if-nez v0, :cond_6

    move v0, v1

    .line 12565
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkax;

    .line 12567
    if-eqz v0, :cond_5

    .line 12568
    iget-object v3, p0, Lkdd;->b:[Lkax;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12570
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 12571
    new-instance v3, Lkax;

    invoke-direct {v3}, Lkax;-><init>()V

    aput-object v3, v2, v0

    .line 12572
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12573
    invoke-virtual {p1}, Llxy;->a()I

    .line 12570
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12564
    :cond_6
    iget-object v0, p0, Lkdd;->b:[Lkax;

    array-length v0, v0

    goto :goto_3

    .line 12576
    :cond_7
    new-instance v3, Lkax;

    invoke-direct {v3}, Lkax;-><init>()V

    aput-object v3, v2, v0

    .line 12577
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12578
    iput-object v2, p0, Lkdd;->b:[Lkax;

    goto/16 :goto_0

    .line 12582
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdd;->c:Ljava/lang/Long;

    goto/16 :goto_0

    .line 12525
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11462
    iget-object v0, p0, Lkdd;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 11463
    const/4 v0, 0x1

    iget-object v2, p0, Lkdd;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 11465
    :cond_0
    iget-object v0, p0, Lkdd;->a:[Ljww;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkdd;->a:[Ljww;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 11466
    :goto_0
    iget-object v2, p0, Lkdd;->a:[Ljww;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 11467
    iget-object v2, p0, Lkdd;->a:[Ljww;

    aget-object v2, v2, v0

    .line 11468
    if-eqz v2, :cond_1

    .line 11469
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 11466
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11473
    :cond_2
    iget-object v0, p0, Lkdd;->b:[Lkax;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkdd;->b:[Lkax;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 11474
    :goto_1
    iget-object v0, p0, Lkdd;->b:[Lkax;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 11475
    iget-object v0, p0, Lkdd;->b:[Lkax;

    aget-object v0, v0, v1

    .line 11476
    if-eqz v0, :cond_3

    .line 11477
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 11474
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11481
    :cond_4
    iget-object v0, p0, Lkdd;->c:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 11482
    const/4 v0, 0x4

    iget-object v1, p0, Lkdd;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 11484
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11485
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 11489
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11490
    iget-object v2, p0, Lkdd;->requestHeader:Lkdo;

    if-eqz v2, :cond_0

    .line 11491
    const/4 v2, 0x1

    iget-object v3, p0, Lkdd;->requestHeader:Lkdo;

    .line 11492
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11494
    :cond_0
    iget-object v2, p0, Lkdd;->a:[Ljww;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkdd;->a:[Ljww;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 11495
    :goto_0
    iget-object v3, p0, Lkdd;->a:[Ljww;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 11496
    iget-object v3, p0, Lkdd;->a:[Ljww;

    aget-object v3, v3, v0

    .line 11497
    if-eqz v3, :cond_1

    .line 11498
    const/4 v4, 0x2

    .line 11499
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 11503
    :cond_3
    iget-object v2, p0, Lkdd;->b:[Lkax;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkdd;->b:[Lkax;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 11504
    :goto_1
    iget-object v2, p0, Lkdd;->b:[Lkax;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 11505
    iget-object v2, p0, Lkdd;->b:[Lkax;

    aget-object v2, v2, v1

    .line 11506
    if-eqz v2, :cond_4

    .line 11507
    const/4 v3, 0x3

    .line 11508
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11504
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11512
    :cond_5
    iget-object v1, p0, Lkdd;->c:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 11513
    const/4 v1, 0x4

    iget-object v2, p0, Lkdd;->c:Ljava/lang/Long;

    .line 11514
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11516
    :cond_6
    return v0
.end method
