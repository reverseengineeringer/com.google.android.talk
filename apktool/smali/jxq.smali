.class public final Ljxq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcr;

.field public b:[Lkcr;

.field public c:[Lkab;

.field public d:Lkac;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36434
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37439
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Ljxq;->a:[Lkcr;

    .line 37440
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Ljxq;->b:[Lkcr;

    .line 37441
    invoke-static {}, Lkab;->d()[Lkab;

    move-result-object v0

    iput-object v0, p0, Ljxq;->c:[Lkab;

    .line 37442
    iput-object v1, p0, Ljxq;->d:Lkac;

    .line 37443
    iput-object v1, p0, Ljxq;->eD:Llyd;

    .line 37444
    const/4 v0, -0x1

    iput v0, p0, Ljxq;->eE:I

    .line 36436
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 37524
    sparse-switch v0, :sswitch_data_0

    .line 37528
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37529
    :sswitch_0
    return-object p0

    .line 37534
    :sswitch_1
    const/16 v0, 0xa

    .line 37535
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 37536
    iget-object v0, p0, Ljxq;->a:[Lkcr;

    if-nez v0, :cond_2

    move v0, v1

    .line 37537
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 37539
    if-eqz v0, :cond_1

    .line 37540
    iget-object v3, p0, Ljxq;->a:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37542
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 37543
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 37544
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 37545
    invoke-virtual {p1}, Llxy;->a()I

    .line 37542
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 37536
    :cond_2
    iget-object v0, p0, Ljxq;->a:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 37548
    :cond_3
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 37549
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 37550
    iput-object v2, p0, Ljxq;->a:[Lkcr;

    goto :goto_0

    .line 37554
    :sswitch_2
    const/16 v0, 0x12

    .line 37555
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 37556
    iget-object v0, p0, Ljxq;->b:[Lkcr;

    if-nez v0, :cond_5

    move v0, v1

    .line 37557
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 37559
    if-eqz v0, :cond_4

    .line 37560
    iget-object v3, p0, Ljxq;->b:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37562
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 37563
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 37564
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 37565
    invoke-virtual {p1}, Llxy;->a()I

    .line 37562
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 37556
    :cond_5
    iget-object v0, p0, Ljxq;->b:[Lkcr;

    array-length v0, v0

    goto :goto_3

    .line 37568
    :cond_6
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 37569
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 37570
    iput-object v2, p0, Ljxq;->b:[Lkcr;

    goto/16 :goto_0

    .line 37574
    :sswitch_3
    const/16 v0, 0x1a

    .line 37575
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 37576
    iget-object v0, p0, Ljxq;->c:[Lkab;

    if-nez v0, :cond_8

    move v0, v1

    .line 37577
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lkab;

    .line 37579
    if-eqz v0, :cond_7

    .line 37580
    iget-object v3, p0, Ljxq;->c:[Lkab;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37582
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 37583
    new-instance v3, Lkab;

    invoke-direct {v3}, Lkab;-><init>()V

    aput-object v3, v2, v0

    .line 37584
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 37585
    invoke-virtual {p1}, Llxy;->a()I

    .line 37582
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 37576
    :cond_8
    iget-object v0, p0, Ljxq;->c:[Lkab;

    array-length v0, v0

    goto :goto_5

    .line 37588
    :cond_9
    new-instance v3, Lkab;

    invoke-direct {v3}, Lkab;-><init>()V

    aput-object v3, v2, v0

    .line 37589
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 37590
    iput-object v2, p0, Ljxq;->c:[Lkab;

    goto/16 :goto_0

    .line 37594
    :sswitch_4
    iget-object v0, p0, Ljxq;->d:Lkac;

    if-nez v0, :cond_a

    .line 37595
    new-instance v0, Lkac;

    invoke-direct {v0}, Lkac;-><init>()V

    iput-object v0, p0, Ljxq;->d:Lkac;

    .line 37597
    :cond_a
    iget-object v0, p0, Ljxq;->d:Lkac;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 37524
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 36451
    iget-object v0, p0, Ljxq;->a:[Lkcr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxq;->a:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 36452
    :goto_0
    iget-object v2, p0, Ljxq;->a:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 36453
    iget-object v2, p0, Ljxq;->a:[Lkcr;

    aget-object v2, v2, v0

    .line 36454
    if-eqz v2, :cond_0

    .line 36455
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 36452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36459
    :cond_1
    iget-object v0, p0, Ljxq;->b:[Lkcr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljxq;->b:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 36460
    :goto_1
    iget-object v2, p0, Ljxq;->b:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 36461
    iget-object v2, p0, Ljxq;->b:[Lkcr;

    aget-object v2, v2, v0

    .line 36462
    if-eqz v2, :cond_2

    .line 36463
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 36460
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36467
    :cond_3
    iget-object v0, p0, Ljxq;->c:[Lkab;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljxq;->c:[Lkab;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 36468
    :goto_2
    iget-object v0, p0, Ljxq;->c:[Lkab;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 36469
    iget-object v0, p0, Ljxq;->c:[Lkab;

    aget-object v0, v0, v1

    .line 36470
    if-eqz v0, :cond_4

    .line 36471
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 36468
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36475
    :cond_5
    iget-object v0, p0, Ljxq;->d:Lkac;

    if-eqz v0, :cond_6

    .line 36476
    const/4 v0, 0x4

    iget-object v1, p0, Ljxq;->d:Lkac;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 36478
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 36479
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 36483
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 36484
    iget-object v2, p0, Ljxq;->a:[Lkcr;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljxq;->a:[Lkcr;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 36485
    :goto_0
    iget-object v3, p0, Ljxq;->a:[Lkcr;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 36486
    iget-object v3, p0, Ljxq;->a:[Lkcr;

    aget-object v3, v3, v0

    .line 36487
    if-eqz v3, :cond_0

    .line 36488
    const/4 v4, 0x1

    .line 36489
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 36485
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 36493
    :cond_2
    iget-object v2, p0, Ljxq;->b:[Lkcr;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljxq;->b:[Lkcr;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 36494
    :goto_1
    iget-object v3, p0, Ljxq;->b:[Lkcr;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 36495
    iget-object v3, p0, Ljxq;->b:[Lkcr;

    aget-object v3, v3, v0

    .line 36496
    if-eqz v3, :cond_3

    .line 36497
    const/4 v4, 0x2

    .line 36498
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 36494
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 36502
    :cond_5
    iget-object v2, p0, Ljxq;->c:[Lkab;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljxq;->c:[Lkab;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 36503
    :goto_2
    iget-object v2, p0, Ljxq;->c:[Lkab;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 36504
    iget-object v2, p0, Ljxq;->c:[Lkab;

    aget-object v2, v2, v1

    .line 36505
    if-eqz v2, :cond_6

    .line 36506
    const/4 v3, 0x3

    .line 36507
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36503
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36511
    :cond_7
    iget-object v1, p0, Ljxq;->d:Lkac;

    if-eqz v1, :cond_8

    .line 36512
    const/4 v1, 0x4

    iget-object v2, p0, Ljxq;->d:Lkac;

    .line 36513
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36515
    :cond_8
    return v0
.end method
