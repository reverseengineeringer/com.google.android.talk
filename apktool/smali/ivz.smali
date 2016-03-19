.class public final Livz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Liwa;

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11386
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12391
    invoke-static {}, Liwa;->d()[Liwa;

    move-result-object v0

    iput-object v0, p0, Livz;->a:[Liwa;

    .line 12392
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Livz;->b:[I

    .line 12393
    const/4 v0, 0x0

    iput-object v0, p0, Livz;->eD:Llyd;

    .line 12394
    const/4 v0, -0x1

    iput v0, p0, Livz;->eE:I

    .line 11388
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 12447
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12448
    sparse-switch v0, :sswitch_data_0

    .line 12452
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12453
    :sswitch_0
    return-object p0

    .line 12458
    :sswitch_1
    const/16 v0, 0xa

    .line 12459
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12460
    iget-object v0, p0, Livz;->a:[Liwa;

    if-nez v0, :cond_2

    move v0, v1

    .line 12461
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Liwa;

    .line 12463
    if-eqz v0, :cond_1

    .line 12464
    iget-object v3, p0, Livz;->a:[Liwa;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12466
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 12467
    new-instance v3, Liwa;

    invoke-direct {v3}, Liwa;-><init>()V

    aput-object v3, v2, v0

    .line 12468
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12469
    invoke-virtual {p1}, Llxy;->a()I

    .line 12466
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12460
    :cond_2
    iget-object v0, p0, Livz;->a:[Liwa;

    array-length v0, v0

    goto :goto_1

    .line 12472
    :cond_3
    new-instance v3, Liwa;

    invoke-direct {v3}, Liwa;-><init>()V

    aput-object v3, v2, v0

    .line 12473
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12474
    iput-object v2, p0, Livz;->a:[Liwa;

    goto :goto_0

    .line 12478
    :sswitch_2
    const/16 v0, 0x10

    .line 12479
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 12480
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 12482
    :goto_3
    if-ge v3, v4, :cond_5

    .line 12483
    if-eqz v3, :cond_4

    .line 12484
    invoke-virtual {p1}, Llxy;->a()I

    .line 12486
    :cond_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 12487
    packed-switch v6, :pswitch_data_0

    move v0, v2

    .line 12482
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 12494
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_4

    .line 12498
    :cond_5
    if-eqz v2, :cond_0

    .line 12499
    iget-object v0, p0, Livz;->b:[I

    if-nez v0, :cond_6

    move v0, v1

    .line 12500
    :goto_5
    if-nez v0, :cond_7

    array-length v3, v5

    if-ne v2, v3, :cond_7

    .line 12501
    iput-object v5, p0, Livz;->b:[I

    goto :goto_0

    .line 12499
    :cond_6
    iget-object v0, p0, Livz;->b:[I

    array-length v0, v0

    goto :goto_5

    .line 12503
    :cond_7
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 12504
    if-eqz v0, :cond_8

    .line 12505
    iget-object v4, p0, Livz;->b:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12507
    :cond_8
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12508
    iput-object v3, p0, Livz;->b:[I

    goto/16 :goto_0

    .line 12514
    :sswitch_3
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 12515
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 12518
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 12519
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_9

    .line 12520
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    .line 12527
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 12531
    :cond_9
    if-eqz v0, :cond_d

    .line 12532
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 12533
    iget-object v2, p0, Livz;->b:[I

    if-nez v2, :cond_b

    move v2, v1

    .line 12534
    :goto_7
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 12535
    if-eqz v2, :cond_a

    .line 12536
    iget-object v0, p0, Livz;->b:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12538
    :cond_a
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_c

    .line 12539
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 12540
    packed-switch v5, :pswitch_data_2

    goto :goto_8

    .line 12547
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_8

    .line 12533
    :cond_b
    iget-object v2, p0, Livz;->b:[I

    array-length v2, v2

    goto :goto_7

    .line 12551
    :cond_c
    iput-object v4, p0, Livz;->b:[I

    .line 12553
    :cond_d
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 12448
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 12487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 12520
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 12540
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11401
    iget-object v0, p0, Livz;->a:[Liwa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Livz;->a:[Liwa;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 11402
    :goto_0
    iget-object v2, p0, Livz;->a:[Liwa;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 11403
    iget-object v2, p0, Livz;->a:[Liwa;

    aget-object v2, v2, v0

    .line 11404
    if-eqz v2, :cond_0

    .line 11405
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 11402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11409
    :cond_1
    iget-object v0, p0, Livz;->b:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Livz;->b:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 11410
    :goto_1
    iget-object v0, p0, Livz;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 11411
    const/4 v0, 0x2

    iget-object v2, p0, Livz;->b:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 11410
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11414
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11415
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 11419
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11420
    iget-object v2, p0, Livz;->a:[Liwa;

    if-eqz v2, :cond_2

    iget-object v2, p0, Livz;->a:[Liwa;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 11421
    :goto_0
    iget-object v3, p0, Livz;->a:[Liwa;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 11422
    iget-object v3, p0, Livz;->a:[Liwa;

    aget-object v3, v3, v0

    .line 11423
    if-eqz v3, :cond_0

    .line 11424
    const/4 v4, 0x1

    .line 11425
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 11429
    :cond_2
    iget-object v2, p0, Livz;->b:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Livz;->b:[I

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    .line 11431
    :goto_1
    iget-object v3, p0, Livz;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 11432
    iget-object v3, p0, Livz;->b:[I

    aget v3, v3, v1

    .line 11434
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 11431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11436
    :cond_3
    add-int/2addr v0, v2

    .line 11437
    iget-object v1, p0, Livz;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 11439
    :cond_4
    return v0
.end method
