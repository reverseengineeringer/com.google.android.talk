.class public final Ljcv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;

.field public c:Ljcx;


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1486
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1487
    sparse-switch v0, :sswitch_data_0

    .line 1491
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    :sswitch_0
    return-object p0

    .line 1497
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1498
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1502
    :pswitch_0
    iput v0, p0, Ljcv;->a:I

    goto :goto_0

    .line 1508
    :sswitch_2
    const/16 v0, 0x12

    .line 1509
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1510
    iget-object v0, p0, Ljcv;->b:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1511
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1512
    if-eqz v0, :cond_1

    .line 1513
    iget-object v3, p0, Ljcv;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1515
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1516
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1517
    invoke-virtual {p1}, Llxy;->a()I

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1510
    :cond_2
    iget-object v0, p0, Ljcv;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1520
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1521
    iput-object v2, p0, Ljcv;->b:[Ljava/lang/String;

    goto :goto_0

    .line 1525
    :sswitch_3
    iget-object v0, p0, Ljcv;->c:Ljcx;

    if-nez v0, :cond_4

    .line 1526
    new-instance v0, Ljcx;

    invoke-direct {v0}, Ljcx;-><init>()V

    iput-object v0, p0, Ljcv;->c:Ljcx;

    .line 1528
    :cond_4
    iget-object v0, p0, Ljcv;->c:Ljcx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1487
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 1498
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
    .line 436
    iget v0, p0, Ljcv;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 437
    const/4 v0, 0x1

    iget v1, p0, Ljcv;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 439
    :cond_0
    iget-object v0, p0, Ljcv;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljcv;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 440
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljcv;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 441
    iget-object v1, p0, Ljcv;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 442
    if-eqz v1, :cond_1

    .line 443
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Ljcv;->c:Ljcx;

    if-eqz v0, :cond_3

    .line 448
    const/4 v0, 0x3

    iget-object v1, p0, Ljcv;->c:Ljcx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 450
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 451
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 456
    iget v2, p0, Ljcv;->a:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 457
    const/4 v2, 0x1

    iget v3, p0, Ljcv;->a:I

    .line 458
    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 460
    :cond_0
    iget-object v2, p0, Ljcv;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljcv;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 463
    :goto_0
    iget-object v4, p0, Ljcv;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 464
    iget-object v4, p0, Ljcv;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 465
    if-eqz v4, :cond_1

    .line 466
    add-int/lit8 v3, v3, 0x1

    .line 468
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 463
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_2
    add-int/2addr v0, v2

    .line 472
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 474
    :cond_3
    iget-object v1, p0, Ljcv;->c:Ljcx;

    if-eqz v1, :cond_4

    .line 475
    const/4 v1, 0x3

    iget-object v2, p0, Ljcv;->c:Ljcx;

    .line 476
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_4
    return v0
.end method
