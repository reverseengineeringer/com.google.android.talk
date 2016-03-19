.class public final Lkjn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[Lkjo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3434
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4439
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkjn;->a:[I

    .line 4440
    invoke-static {}, Lkjo;->d()[Lkjo;

    move-result-object v0

    iput-object v0, p0, Lkjn;->b:[Lkjo;

    .line 4441
    const/4 v0, 0x0

    iput-object v0, p0, Lkjn;->eD:Llyd;

    .line 4442
    const/4 v0, -0x1

    iput v0, p0, Lkjn;->eE:I

    .line 3436
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5495
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5496
    sparse-switch v0, :sswitch_data_0

    .line 5500
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5501
    :sswitch_0
    return-object p0

    .line 5506
    :sswitch_1
    const/16 v0, 0x8

    .line 5507
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5508
    iget-object v0, p0, Lkjn;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 5509
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 5510
    if-eqz v0, :cond_1

    .line 5511
    iget-object v3, p0, Lkjn;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5513
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 5514
    invoke-virtual {p1}, Llxy;->l()I

    move-result v3

    aput v3, v2, v0

    .line 5515
    invoke-virtual {p1}, Llxy;->a()I

    .line 5513
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5508
    :cond_2
    iget-object v0, p0, Lkjn;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 5518
    :cond_3
    invoke-virtual {p1}, Llxy;->l()I

    move-result v3

    aput v3, v2, v0

    .line 5519
    iput-object v2, p0, Lkjn;->a:[I

    goto :goto_0

    .line 5523
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 5524
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 5527
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 5528
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 5529
    invoke-virtual {p1}, Llxy;->l()I

    .line 5530
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5532
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 5533
    iget-object v2, p0, Lkjn;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 5534
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 5535
    if-eqz v2, :cond_5

    .line 5536
    iget-object v4, p0, Lkjn;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5538
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 5539
    invoke-virtual {p1}, Llxy;->l()I

    move-result v4

    aput v4, v0, v2

    .line 5538
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5533
    :cond_6
    iget-object v2, p0, Lkjn;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 5541
    :cond_7
    iput-object v0, p0, Lkjn;->a:[I

    .line 5542
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 5546
    :sswitch_3
    const/16 v0, 0x12

    .line 5547
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5548
    iget-object v0, p0, Lkjn;->b:[Lkjo;

    if-nez v0, :cond_9

    move v0, v1

    .line 5549
    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [Lkjo;

    .line 5551
    if-eqz v0, :cond_8

    .line 5552
    iget-object v3, p0, Lkjn;->b:[Lkjo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5554
    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 5555
    new-instance v3, Lkjo;

    invoke-direct {v3}, Lkjo;-><init>()V

    aput-object v3, v2, v0

    .line 5556
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5557
    invoke-virtual {p1}, Llxy;->a()I

    .line 5554
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5548
    :cond_9
    iget-object v0, p0, Lkjn;->b:[Lkjo;

    array-length v0, v0

    goto :goto_6

    .line 5560
    :cond_a
    new-instance v3, Lkjo;

    invoke-direct {v3}, Lkjo;-><init>()V

    aput-object v3, v2, v0

    .line 5561
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5562
    iput-object v2, p0, Lkjn;->b:[Lkjo;

    goto/16 :goto_0

    .line 5496
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3449
    iget-object v0, p0, Lkjn;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkjn;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 3450
    :goto_0
    iget-object v2, p0, Lkjn;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3451
    const/4 v2, 0x1

    iget-object v3, p0, Lkjn;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->c(II)V

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3454
    :cond_0
    iget-object v0, p0, Lkjn;->b:[Lkjo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkjn;->b:[Lkjo;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3455
    :goto_1
    iget-object v0, p0, Lkjn;->b:[Lkjo;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 3456
    iget-object v0, p0, Lkjn;->b:[Lkjo;

    aget-object v0, v0, v1

    .line 3457
    if-eqz v0, :cond_1

    .line 3458
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 3455
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3462
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3463
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3467
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 3468
    iget-object v0, p0, Lkjn;->a:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkjn;->a:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    move v2, v1

    .line 3470
    :goto_0
    iget-object v4, p0, Lkjn;->a:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 3471
    iget-object v4, p0, Lkjn;->a:[I

    aget v4, v4, v0

    .line 4844
    invoke-static {v4}, Llxz;->h(I)I

    move-result v4

    .line 3473
    add-int/2addr v2, v4

    .line 3470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3475
    :cond_0
    add-int v0, v3, v2

    .line 3476
    iget-object v2, p0, Lkjn;->a:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 3478
    :goto_1
    iget-object v2, p0, Lkjn;->b:[Lkjo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkjn;->b:[Lkjo;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3479
    :goto_2
    iget-object v2, p0, Lkjn;->b:[Lkjo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3480
    iget-object v2, p0, Lkjn;->b:[Lkjo;

    aget-object v2, v2, v1

    .line 3481
    if-eqz v2, :cond_1

    .line 3482
    const/4 v3, 0x2

    .line 3483
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3479
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3487
    :cond_2
    return v0

    :cond_3
    move v0, v3

    goto :goto_1
.end method
